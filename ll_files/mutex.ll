; ModuleID = '../bc_files/mutex.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/mutex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.z_kernel = type { [1 x %struct._cpu], %struct._ready_q }
%struct._cpu = type { i32, ptr, ptr, ptr, i8, %struct._cpu_arch }
%struct._cpu_arch = type {}
%struct._ready_q = type { ptr, %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
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
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.k_mutex = type { %struct._wait_q_t, ptr, i32, i32 }
%struct.z_spinlock_key = type { i32 }
%struct.anon = type { i8, i8 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0
@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !221 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 4, !dbg !231
  %6 = load ptr, ptr %4, align 4, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !242 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = load i8, ptr %2, align 1, !dbg !248
  ret ptr null, !dbg !249
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !254, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !257
  %5 = load i8, ptr %3, align 1, !dbg !258
  %6 = load i32, ptr %4, align 4, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !261 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = load ptr, ptr %2, align 4, !dbg !280
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !281
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !282
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !283
  ret i64 %6, !dbg !284
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !285 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !311
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !312
  ret i64 %5, !dbg !313
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !314 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !317
  %3 = load ptr, ptr %2, align 4, !dbg !318
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !319
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !320
  ret i64 %5, !dbg !321
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !322 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !326, metadata !DIExpression()), !dbg !328
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !329
  %5 = load ptr, ptr %4, align 4, !dbg !330
  %6 = load ptr, ptr %3, align 4, !dbg !331
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !332
  store ptr %5, ptr %7, align 4, !dbg !333
  ret void, !dbg !334
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !335 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !340
  %3 = load ptr, ptr %2, align 4, !dbg !341
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !342
  %5 = load ptr, ptr %4, align 4, !dbg !342
  ret ptr %5, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !366, metadata !DIExpression()), !dbg !367
  %3 = load ptr, ptr %2, align 4, !dbg !368
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !369
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !370
  %6 = zext i1 %5 to i32, !dbg !371
  ret i32 %6, !dbg !372
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !384
  %3 = load ptr, ptr %2, align 4, !dbg !385
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !386
  %5 = load i32, ptr %4, align 4, !dbg !386
  ret i32 %5, !dbg !387
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !388 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !408
  %3 = load ptr, ptr %2, align 4, !dbg !409
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !410
  %5 = load i32, ptr %4, align 4, !dbg !410
  %6 = load ptr, ptr %2, align 4, !dbg !411
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !412
  %8 = load i32, ptr %7, align 4, !dbg !412
  %9 = sub i32 %5, %8, !dbg !413
  ret i32 %9, !dbg !414
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !418
  %3 = load ptr, ptr %2, align 4, !dbg !419
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !420
  %5 = load i32, ptr %4, align 4, !dbg !420
  ret i32 %5, !dbg !421
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_mutex_init(ptr noundef %0) #1 !dbg !422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !434
  %3 = load ptr, ptr %2, align 4, !dbg !435
  %4 = getelementptr inbounds %struct.k_mutex, ptr %3, i32 0, i32 1, !dbg !436
  store ptr null, ptr %4, align 4, !dbg !437
  %5 = load ptr, ptr %2, align 4, !dbg !438
  %6 = getelementptr inbounds %struct.k_mutex, ptr %5, i32 0, i32 2, !dbg !439
  store i32 0, ptr %6, align 4, !dbg !440
  %7 = load ptr, ptr %2, align 4, !dbg !441
  %8 = getelementptr inbounds %struct.k_mutex, ptr %7, i32 0, i32 0, !dbg !442
  call void @z_waitq_init(ptr noundef %8) #7, !dbg !443
  %9 = load ptr, ptr %2, align 4, !dbg !444
  call void @z_object_init(ptr noundef %9) #7, !dbg !445
  br label %10, !dbg !446

10:                                               ; preds = %1
  br label %11, !dbg !447

11:                                               ; preds = %10
  ret i32 0, !dbg !449
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !450 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !455, metadata !DIExpression()), !dbg !456
  %3 = load ptr, ptr %2, align 4, !dbg !457
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !458
  call void @sys_dlist_init(ptr noundef %4) #7, !dbg !459
  ret void, !dbg !460
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !461 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !463, metadata !DIExpression()), !dbg !464
  %3 = load ptr, ptr %2, align 4, !dbg !465
  ret void, !dbg !466
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_mutex_lock(ptr noundef %0, [1 x i64] %1) #1 !dbg !467 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  %21 = alloca ptr, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.k_timeout_t, align 8
  %24 = alloca ptr, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.z_spinlock_key, align 4
  %27 = alloca i8, align 1
  %28 = alloca %struct.z_spinlock_key, align 4
  %29 = alloca i8, align 1
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.k_timeout_t, align 8
  %34 = alloca i8, align 1
  %35 = alloca i32, align 4
  %36 = alloca ptr, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8, align 1
  %39 = alloca i32, align 4
  %40 = alloca ptr, align 4
  %41 = alloca i8, align 1
  %42 = alloca i32, align 4
  %43 = alloca ptr, align 4
  %44 = alloca i8, align 1
  %45 = alloca i32, align 4
  %46 = alloca ptr, align 4
  %47 = alloca %struct.z_spinlock_key, align 4
  %48 = alloca ptr, align 4
  %49 = alloca i8, align 1
  %50 = alloca i32, align 4
  %51 = alloca ptr, align 4
  %52 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0
  store [1 x i64] %1, ptr %52, align 8
  store ptr %0, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !471, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata ptr %23, metadata !472, metadata !DIExpression()), !dbg !485
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %25, metadata !473, metadata !DIExpression()), !dbg !487
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8, !dbg !488
  call void @llvm.dbg.declare(metadata ptr %26, metadata !474, metadata !DIExpression()), !dbg !489
  call void @llvm.lifetime.start.p0(i64 1, ptr %27) #8, !dbg !490
  call void @llvm.dbg.declare(metadata ptr %27, metadata !479, metadata !DIExpression()), !dbg !491
  store i8 0, ptr %27, align 1, !dbg !491
  br label %53, !dbg !492

53:                                               ; preds = %2
  br label %54, !dbg !493

54:                                               ; preds = %53
  br label %55, !dbg !493

55:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8, !dbg !495
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !496, metadata !DIExpression()), !dbg !503
  %56 = load ptr, ptr %19, align 4, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %18, metadata !502, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %11, metadata !513, metadata !DIExpression()), !dbg !515
  %57 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !516, !srcloc !517
  store i32 %57, ptr %11, align 4, !dbg !516
  %58 = load i32, ptr %11, align 4, !dbg !518
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !519
  store i32 %58, ptr %18, align 4, !dbg !520
  %59 = load ptr, ptr %19, align 4, !dbg !521
  store ptr %59, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !522, metadata !DIExpression()), !dbg !527
  %60 = load ptr, ptr %9, align 4, !dbg !529
  %61 = load ptr, ptr %19, align 4, !dbg !530
  store ptr %61, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !531, metadata !DIExpression()), !dbg !534
  %62 = load ptr, ptr %7, align 4, !dbg !536
  %63 = load i32, ptr %18, align 4, !dbg !537
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %28, i32 0, i32 0, !dbg !495
  store i32 %63, ptr %64, align 4, !dbg !495
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %28, i32 4, i1 false), !dbg !495
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8, !dbg !495
  %65 = load ptr, ptr %24, align 4, !dbg !538
  %66 = getelementptr inbounds %struct.k_mutex, ptr %65, i32 0, i32 2, !dbg !540
  %67 = load i32, ptr %66, align 4, !dbg !540
  %68 = icmp eq i32 %67, 0, !dbg !541
  br i1 %68, label %75, label %69, !dbg !542

69:                                               ; preds = %55
  %70 = load ptr, ptr %24, align 4, !dbg !543
  %71 = getelementptr inbounds %struct.k_mutex, ptr %70, i32 0, i32 1, !dbg !544
  %72 = load ptr, ptr %71, align 4, !dbg !544
  %73 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !545
  %74 = icmp eq ptr %72, %73, !dbg !546
  br label %75, !dbg !542

75:                                               ; preds = %69, %55
  %76 = phi i1 [ true, %55 ], [ %74, %69 ]
  %77 = xor i1 %76, true, !dbg !547
  %78 = xor i1 %77, true, !dbg !548
  %79 = zext i1 %78 to i32, !dbg !549
  %80 = call i32 @llvm.expect.i32(i32 %79, i32 1), !dbg !550
  %81 = icmp ne i32 %80, 0, !dbg !551
  br i1 %81, label %82, label %123, !dbg !552

82:                                               ; preds = %75
  %83 = load ptr, ptr %24, align 4, !dbg !553
  %84 = getelementptr inbounds %struct.k_mutex, ptr %83, i32 0, i32 2, !dbg !555
  %85 = load i32, ptr %84, align 4, !dbg !555
  %86 = icmp eq i32 %85, 0, !dbg !556
  br i1 %86, label %87, label %94, !dbg !557

87:                                               ; preds = %82
  %88 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !558
  %89 = getelementptr inbounds %struct.k_thread, ptr %88, i32 0, i32 0, !dbg !559
  %90 = getelementptr inbounds %struct._thread_base, ptr %89, i32 0, i32 4, !dbg !560
  %91 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 0, !dbg !560
  %92 = load i8, ptr %91, align 2, !dbg !560
  %93 = sext i8 %92 to i32, !dbg !561
  br label %98, !dbg !557

94:                                               ; preds = %82
  %95 = load ptr, ptr %24, align 4, !dbg !562
  %96 = getelementptr inbounds %struct.k_mutex, ptr %95, i32 0, i32 3, !dbg !563
  %97 = load i32, ptr %96, align 4, !dbg !563
  br label %98, !dbg !557

98:                                               ; preds = %94, %87
  %99 = phi i32 [ %93, %87 ], [ %97, %94 ], !dbg !557
  %100 = load ptr, ptr %24, align 4, !dbg !564
  %101 = getelementptr inbounds %struct.k_mutex, ptr %100, i32 0, i32 3, !dbg !565
  store i32 %99, ptr %101, align 4, !dbg !566
  %102 = load ptr, ptr %24, align 4, !dbg !567
  %103 = getelementptr inbounds %struct.k_mutex, ptr %102, i32 0, i32 2, !dbg !568
  %104 = load i32, ptr %103, align 4, !dbg !569
  %105 = add i32 %104, 1, !dbg !569
  store i32 %105, ptr %103, align 4, !dbg !569
  %106 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !570
  %107 = load ptr, ptr %24, align 4, !dbg !571
  %108 = getelementptr inbounds %struct.k_mutex, ptr %107, i32 0, i32 1, !dbg !572
  store ptr %106, ptr %108, align 4, !dbg !573
  br label %109, !dbg !574

109:                                              ; preds = %98
  br label %111, !dbg !575

110:                                              ; No predecessors!
  br label %111, !dbg !579

111:                                              ; preds = %110, %109
  %112 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !580
  %113 = load [1 x i32], ptr %112, align 4, !dbg !580
  store [1 x i32] %113, ptr %12, align 4
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !581, metadata !DIExpression()), !dbg !587
  call void @llvm.dbg.declare(metadata ptr %12, metadata !586, metadata !DIExpression()), !dbg !589
  %114 = load ptr, ptr %13, align 4, !dbg !590
  %115 = load i32, ptr %12, align 4, !dbg !591
  store i32 %115, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !592, metadata !DIExpression()), !dbg !597
  %116 = load i32, ptr %5, align 4, !dbg !599
  %117 = icmp ne i32 %116, 0, !dbg !601
  br i1 %117, label %118, label %119, !dbg !602

118:                                              ; preds = %111
  br label %arch_irq_unlock.exit, !dbg !603

119:                                              ; preds = %111
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !605, !srcloc !606
  br label %arch_irq_unlock.exit, !dbg !607

arch_irq_unlock.exit:                             ; preds = %118, %119
  br label %120, !dbg !608

120:                                              ; preds = %arch_irq_unlock.exit
  br label %121, !dbg !609

121:                                              ; preds = %120
  br label %122, !dbg !609

122:                                              ; preds = %121
  store i32 0, ptr %22, align 4, !dbg !611
  store i32 1, ptr %32, align 4
  br label %279, !dbg !611

123:                                              ; preds = %75
  %124 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !612
  %125 = load i64, ptr %124, align 8, !dbg !612
  %126 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !614
  store i64 0, ptr %126, align 8, !dbg !614
  %127 = icmp eq i64 %125, 0, !dbg !615
  %128 = xor i1 %127, true, !dbg !616
  %129 = xor i1 %128, true, !dbg !617
  %130 = zext i1 %129 to i32, !dbg !618
  %131 = call i32 @llvm.expect.i32(i32 %130, i32 0), !dbg !619
  %132 = icmp ne i32 %131, 0, !dbg !620
  br i1 %132, label %133, label %145, !dbg !621

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !622
  %135 = load [1 x i32], ptr %134, align 4, !dbg !622
  store [1 x i32] %135, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !581, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata ptr %14, metadata !586, metadata !DIExpression()), !dbg !626
  %136 = load ptr, ptr %15, align 4, !dbg !627
  %137 = load i32, ptr %14, align 4, !dbg !628
  store i32 %137, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !592, metadata !DIExpression()), !dbg !629
  %138 = load i32, ptr %4, align 4, !dbg !631
  %139 = icmp ne i32 %138, 0, !dbg !632
  br i1 %139, label %140, label %141, !dbg !633

140:                                              ; preds = %133
  br label %arch_irq_unlock.exit1, !dbg !634

141:                                              ; preds = %133
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !635, !srcloc !606
  br label %arch_irq_unlock.exit1, !dbg !636

arch_irq_unlock.exit1:                            ; preds = %140, %141
  br label %142, !dbg !637

142:                                              ; preds = %arch_irq_unlock.exit1
  br label %143, !dbg !638

143:                                              ; preds = %142
  br label %144, !dbg !638

144:                                              ; preds = %143
  store i32 -16, ptr %22, align 4, !dbg !640
  store i32 1, ptr %32, align 4
  br label %279, !dbg !640

145:                                              ; preds = %123
  br label %146, !dbg !641

146:                                              ; preds = %145
  br label %147, !dbg !642

147:                                              ; preds = %146
  br label %148, !dbg !642

148:                                              ; preds = %147
  %149 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !644
  %150 = getelementptr inbounds %struct.k_thread, ptr %149, i32 0, i32 0, !dbg !645
  %151 = getelementptr inbounds %struct._thread_base, ptr %150, i32 0, i32 4, !dbg !646
  %152 = getelementptr inbounds %struct.anon, ptr %151, i32 0, i32 0, !dbg !646
  %153 = load i8, ptr %152, align 2, !dbg !646
  %154 = sext i8 %153 to i32, !dbg !647
  %155 = load ptr, ptr %24, align 4, !dbg !648
  %156 = getelementptr inbounds %struct.k_mutex, ptr %155, i32 0, i32 1, !dbg !649
  %157 = load ptr, ptr %156, align 4, !dbg !649
  %158 = getelementptr inbounds %struct.k_thread, ptr %157, i32 0, i32 0, !dbg !650
  %159 = getelementptr inbounds %struct._thread_base, ptr %158, i32 0, i32 4, !dbg !651
  %160 = getelementptr inbounds %struct.anon, ptr %159, i32 0, i32 0, !dbg !651
  %161 = load i8, ptr %160, align 2, !dbg !651
  %162 = sext i8 %161 to i32, !dbg !648
  %163 = call i32 @new_prio_for_inheritance(i32 noundef %154, i32 noundef %162) #7, !dbg !652
  store i32 %163, ptr %25, align 4, !dbg !653
  br label %164, !dbg !654

164:                                              ; preds = %148
  br label %166, !dbg !655

165:                                              ; No predecessors!
  br label %166, !dbg !659

166:                                              ; preds = %165, %164
  %167 = load i32, ptr %25, align 4, !dbg !660
  %168 = load ptr, ptr %24, align 4, !dbg !662
  %169 = getelementptr inbounds %struct.k_mutex, ptr %168, i32 0, i32 1, !dbg !663
  %170 = load ptr, ptr %169, align 4, !dbg !663
  %171 = getelementptr inbounds %struct.k_thread, ptr %170, i32 0, i32 0, !dbg !664
  %172 = getelementptr inbounds %struct._thread_base, ptr %171, i32 0, i32 4, !dbg !665
  %173 = getelementptr inbounds %struct.anon, ptr %172, i32 0, i32 0, !dbg !665
  %174 = load i8, ptr %173, align 2, !dbg !665
  %175 = sext i8 %174 to i32, !dbg !662
  %176 = call zeroext i1 @z_is_prio_higher(i32 noundef %167, i32 noundef %175) #7, !dbg !666
  br i1 %176, label %177, label %182, !dbg !667

177:                                              ; preds = %166
  %178 = load ptr, ptr %24, align 4, !dbg !668
  %179 = load i32, ptr %25, align 4, !dbg !670
  %180 = call zeroext i1 @adjust_owner_prio(ptr noundef %178, i32 noundef %179) #7, !dbg !671
  %181 = zext i1 %180 to i8, !dbg !672
  store i8 %181, ptr %27, align 1, !dbg !672
  br label %182, !dbg !673

182:                                              ; preds = %177, %166
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #8, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %37, metadata !480, metadata !DIExpression()), !dbg !675
  %183 = load ptr, ptr %24, align 4, !dbg !676
  %184 = getelementptr inbounds %struct.k_mutex, ptr %183, i32 0, i32 0, !dbg !677
  %185 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !678
  %186 = load [1 x i32], ptr %185, align 4, !dbg !678
  %187 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !678
  %188 = load [1 x i64], ptr %187, align 8, !dbg !678
  %189 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %186, ptr noundef %184, [1 x i64] %188) #7, !dbg !678
  store i32 %189, ptr %37, align 4, !dbg !675
  br label %190, !dbg !679

190:                                              ; preds = %182
  br label %192, !dbg !680

191:                                              ; No predecessors!
  br label %192, !dbg !684

192:                                              ; preds = %191, %190
  br label %193, !dbg !685

193:                                              ; preds = %192
  br label %195, !dbg !686

194:                                              ; No predecessors!
  br label %195, !dbg !690

195:                                              ; preds = %194, %193
  %196 = load i32, ptr %37, align 4, !dbg !691
  %197 = icmp eq i32 %196, 0, !dbg !693
  br i1 %197, label %198, label %202, !dbg !694

198:                                              ; preds = %195
  br label %199, !dbg !695

199:                                              ; preds = %198
  br label %200, !dbg !697

200:                                              ; preds = %199
  br label %201, !dbg !697

201:                                              ; preds = %200
  store i32 0, ptr %22, align 4, !dbg !699
  store i32 1, ptr %32, align 4
  br label %278, !dbg !699

202:                                              ; preds = %195
  br label %203, !dbg !700

203:                                              ; preds = %202
  br label %205, !dbg !701

204:                                              ; No predecessors!
  br label %205, !dbg !705

205:                                              ; preds = %204, %203
  call void @llvm.lifetime.start.p0(i64 4, ptr %47) #8, !dbg !706
  store ptr @lock, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !496, metadata !DIExpression()), !dbg !707
  %206 = load ptr, ptr %21, align 4, !dbg !709
  call void @llvm.dbg.declare(metadata ptr %20, metadata !502, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %10, metadata !513, metadata !DIExpression()), !dbg !713
  %207 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !714, !srcloc !517
  store i32 %207, ptr %10, align 4, !dbg !714
  %208 = load i32, ptr %10, align 4, !dbg !715
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !716
  store i32 %208, ptr %20, align 4, !dbg !717
  %209 = load ptr, ptr %21, align 4, !dbg !718
  store ptr %209, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !522, metadata !DIExpression()), !dbg !719
  %210 = load ptr, ptr %8, align 4, !dbg !721
  %211 = load ptr, ptr %21, align 4, !dbg !722
  store ptr %211, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !531, metadata !DIExpression()), !dbg !723
  %212 = load ptr, ptr %6, align 4, !dbg !725
  %213 = load i32, ptr %20, align 4, !dbg !726
  %214 = getelementptr inbounds %struct.z_spinlock_key, ptr %47, i32 0, i32 0, !dbg !706
  store i32 %213, ptr %214, align 4, !dbg !706
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %47, i32 4, i1 false), !dbg !706
  call void @llvm.lifetime.end.p0(i64 4, ptr %47) #8, !dbg !706
  %215 = load ptr, ptr %24, align 4, !dbg !727
  %216 = getelementptr inbounds %struct.k_mutex, ptr %215, i32 0, i32 1, !dbg !728
  %217 = load ptr, ptr %216, align 4, !dbg !728
  %218 = icmp ne ptr %217, null, !dbg !729
  %219 = xor i1 %218, true, !dbg !730
  %220 = xor i1 %219, true, !dbg !731
  %221 = zext i1 %220 to i32, !dbg !732
  %222 = call i32 @llvm.expect.i32(i32 %221, i32 1), !dbg !733
  %223 = icmp ne i32 %222, 0, !dbg !734
  br i1 %223, label %224, label %259, !dbg !735

224:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 4, ptr %48) #8, !dbg !736
  call void @llvm.dbg.declare(metadata ptr %48, metadata !481, metadata !DIExpression()), !dbg !737
  %225 = load ptr, ptr %24, align 4, !dbg !738
  %226 = getelementptr inbounds %struct.k_mutex, ptr %225, i32 0, i32 0, !dbg !739
  %227 = call ptr @z_waitq_head(ptr noundef %226) #7, !dbg !740
  store ptr %227, ptr %48, align 4, !dbg !737
  %228 = load ptr, ptr %48, align 4, !dbg !741
  %229 = icmp ne ptr %228, null, !dbg !742
  br i1 %229, label %230, label %241, !dbg !743

230:                                              ; preds = %224
  %231 = load ptr, ptr %48, align 4, !dbg !744
  %232 = getelementptr inbounds %struct.k_thread, ptr %231, i32 0, i32 0, !dbg !745
  %233 = getelementptr inbounds %struct._thread_base, ptr %232, i32 0, i32 4, !dbg !746
  %234 = getelementptr inbounds %struct.anon, ptr %233, i32 0, i32 0, !dbg !746
  %235 = load i8, ptr %234, align 2, !dbg !746
  %236 = sext i8 %235 to i32, !dbg !744
  %237 = load ptr, ptr %24, align 4, !dbg !747
  %238 = getelementptr inbounds %struct.k_mutex, ptr %237, i32 0, i32 3, !dbg !748
  %239 = load i32, ptr %238, align 4, !dbg !748
  %240 = call i32 @new_prio_for_inheritance(i32 noundef %236, i32 noundef %239) #7, !dbg !749
  br label %245, !dbg !743

241:                                              ; preds = %224
  %242 = load ptr, ptr %24, align 4, !dbg !750
  %243 = getelementptr inbounds %struct.k_mutex, ptr %242, i32 0, i32 3, !dbg !751
  %244 = load i32, ptr %243, align 4, !dbg !751
  br label %245, !dbg !743

245:                                              ; preds = %241, %230
  %246 = phi i32 [ %240, %230 ], [ %244, %241 ], !dbg !743
  store i32 %246, ptr %25, align 4, !dbg !752
  br label %247, !dbg !753

247:                                              ; preds = %245
  br label %249, !dbg !754

248:                                              ; No predecessors!
  br label %249, !dbg !758

249:                                              ; preds = %248, %247
  %250 = load ptr, ptr %24, align 4, !dbg !759
  %251 = load i32, ptr %25, align 4, !dbg !760
  %252 = call zeroext i1 @adjust_owner_prio(ptr noundef %250, i32 noundef %251) #7, !dbg !761
  br i1 %252, label %256, label %253, !dbg !762

253:                                              ; preds = %249
  %254 = load i8, ptr %27, align 1, !dbg !763, !range !764, !noundef !206
  %255 = trunc i8 %254 to i1, !dbg !763
  br label %256, !dbg !762

256:                                              ; preds = %253, %249
  %257 = phi i1 [ true, %249 ], [ %255, %253 ]
  %258 = zext i1 %257 to i8, !dbg !765
  store i8 %258, ptr %27, align 1, !dbg !765
  call void @llvm.lifetime.end.p0(i64 4, ptr %48) #8, !dbg !766
  br label %259, !dbg !767

259:                                              ; preds = %256, %205
  %260 = load i8, ptr %27, align 1, !dbg !768, !range !764, !noundef !206
  %261 = trunc i8 %260 to i1, !dbg !768
  br i1 %261, label %262, label %265, !dbg !770

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !771
  %264 = load [1 x i32], ptr %263, align 4, !dbg !771
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %264) #7, !dbg !771
  br label %274, !dbg !773

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !774
  %267 = load [1 x i32], ptr %266, align 4, !dbg !774
  store [1 x i32] %267, ptr %16, align 4
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !581, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.declare(metadata ptr %16, metadata !586, metadata !DIExpression()), !dbg !778
  %268 = load ptr, ptr %17, align 4, !dbg !779
  %269 = load i32, ptr %16, align 4, !dbg !780
  store i32 %269, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !592, metadata !DIExpression()), !dbg !781
  %270 = load i32, ptr %3, align 4, !dbg !783
  %271 = icmp ne i32 %270, 0, !dbg !784
  br i1 %271, label %272, label %273, !dbg !785

272:                                              ; preds = %265
  br label %arch_irq_unlock.exit2, !dbg !786

273:                                              ; preds = %265
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !787, !srcloc !606
  br label %arch_irq_unlock.exit2, !dbg !788

arch_irq_unlock.exit2:                            ; preds = %272, %273
  br label %274

274:                                              ; preds = %arch_irq_unlock.exit2, %262
  br label %275, !dbg !789

275:                                              ; preds = %274
  br label %276, !dbg !790

276:                                              ; preds = %275
  br label %277, !dbg !790

277:                                              ; preds = %276
  store i32 -11, ptr %22, align 4, !dbg !792
  store i32 1, ptr %32, align 4
  br label %278, !dbg !792

278:                                              ; preds = %277, %201
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #8, !dbg !793
  br label %279

279:                                              ; preds = %278, %144, %122
  call void @llvm.lifetime.end.p0(i64 1, ptr %27) #8, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8, !dbg !793
  %280 = load i32, ptr %22, align 4, !dbg !793
  ret i32 %280, !dbg !793
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #5

; Function Attrs: nounwind optsize
define internal i32 @new_prio_for_inheritance(i32 noundef %0, i32 noundef %1) #1 !dbg !794 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !799, metadata !DIExpression()), !dbg !802
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !800, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %5, metadata !801, metadata !DIExpression()), !dbg !805
  %6 = load i32, ptr %3, align 4, !dbg !806
  %7 = load i32, ptr %4, align 4, !dbg !807
  %8 = call zeroext i1 @z_is_prio_higher(i32 noundef %6, i32 noundef %7) #7, !dbg !808
  br i1 %8, label %9, label %11, !dbg !808

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4, !dbg !809
  br label %13, !dbg !808

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !dbg !810
  br label %13, !dbg !808

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ], !dbg !808
  store i32 %14, ptr %5, align 4, !dbg !805
  %15 = load i32, ptr %5, align 4, !dbg !811
  %16 = call i32 @z_get_new_prio_with_ceiling(i32 noundef %15) #7, !dbg !812
  store i32 %16, ptr %5, align 4, !dbg !813
  %17 = load i32, ptr %5, align 4, !dbg !814
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !815
  ret i32 %17, !dbg !816
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_prio_higher(i32 noundef %0, i32 noundef %1) #0 !dbg !817 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !822, metadata !DIExpression()), !dbg !824
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !823, metadata !DIExpression()), !dbg !825
  %5 = load i32, ptr %3, align 4, !dbg !826
  %6 = load i32, ptr %4, align 4, !dbg !827
  %7 = call zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %5, i32 noundef %6) #7, !dbg !828
  ret i1 %7, !dbg !829
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @adjust_owner_prio(ptr noundef %0, i32 noundef %1) #1 !dbg !830 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !834, metadata !DIExpression()), !dbg !836
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !835, metadata !DIExpression()), !dbg !837
  %9 = load ptr, ptr %4, align 4, !dbg !838
  %10 = getelementptr inbounds %struct.k_mutex, ptr %9, i32 0, i32 1, !dbg !840
  %11 = load ptr, ptr %10, align 4, !dbg !840
  %12 = getelementptr inbounds %struct.k_thread, ptr %11, i32 0, i32 0, !dbg !841
  %13 = getelementptr inbounds %struct._thread_base, ptr %12, i32 0, i32 4, !dbg !842
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 0, !dbg !842
  %15 = load i8, ptr %14, align 2, !dbg !842
  %16 = sext i8 %15 to i32, !dbg !838
  %17 = load i32, ptr %5, align 4, !dbg !843
  %18 = icmp ne i32 %16, %17, !dbg !844
  br i1 %18, label %19, label %27, !dbg !845

19:                                               ; preds = %2
  br label %20, !dbg !846

20:                                               ; preds = %19
  br label %21, !dbg !848

21:                                               ; preds = %20
  %22 = load ptr, ptr %4, align 4, !dbg !852
  %23 = getelementptr inbounds %struct.k_mutex, ptr %22, i32 0, i32 1, !dbg !853
  %24 = load ptr, ptr %23, align 4, !dbg !853
  %25 = load i32, ptr %5, align 4, !dbg !854
  %26 = call zeroext i1 @z_set_prio(ptr noundef %24, i32 noundef %25) #7, !dbg !855
  store i1 %26, ptr %3, align 1, !dbg !856
  br label %28, !dbg !856

27:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !857
  br label %28, !dbg !857

28:                                               ; preds = %27, %21
  %29 = load i1, ptr %3, align 1, !dbg !858
  ret i1 %29, !dbg !858
}

; Function Attrs: optsize
declare !dbg !859 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #6

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !862 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !866, metadata !DIExpression()), !dbg !867
  %3 = load ptr, ptr %2, align 4, !dbg !868
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !869
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4) #7, !dbg !870
  ret ptr %5, !dbg !871
}

; Function Attrs: optsize
declare !dbg !872 dso_local void @z_reschedule(ptr noundef, [1 x i32]) #6

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_mutex_unlock(ptr noundef %0) #1 !dbg !873 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !875, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %14, metadata !876, metadata !DIExpression()), !dbg !881
  br label %23, !dbg !882

23:                                               ; preds = %1
  br label %24, !dbg !883

24:                                               ; preds = %23
  br label %25, !dbg !883

25:                                               ; preds = %24
  %26 = load ptr, ptr %13, align 4, !dbg !885
  %27 = getelementptr inbounds %struct.k_mutex, ptr %26, i32 0, i32 1, !dbg !887
  %28 = load ptr, ptr %27, align 4, !dbg !887
  %29 = icmp eq ptr %28, null, !dbg !888
  br i1 %29, label %30, label %34, !dbg !889

30:                                               ; preds = %25
  br label %31, !dbg !890

31:                                               ; preds = %30
  br label %32, !dbg !892

32:                                               ; preds = %31
  br label %33, !dbg !892

33:                                               ; preds = %32
  store i32 -5, ptr %12, align 4, !dbg !894
  store i32 1, ptr %15, align 4
  br label %116, !dbg !894

34:                                               ; preds = %25
  %35 = load ptr, ptr %13, align 4, !dbg !895
  %36 = getelementptr inbounds %struct.k_mutex, ptr %35, i32 0, i32 1, !dbg !897
  %37 = load ptr, ptr %36, align 4, !dbg !897
  %38 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !898
  %39 = icmp ne ptr %37, %38, !dbg !899
  br i1 %39, label %40, label %44, !dbg !900

40:                                               ; preds = %34
  br label %41, !dbg !901

41:                                               ; preds = %40
  br label %42, !dbg !903

42:                                               ; preds = %41
  br label %43, !dbg !903

43:                                               ; preds = %42
  store i32 -1, ptr %12, align 4, !dbg !905
  store i32 1, ptr %15, align 4
  br label %116, !dbg !905

44:                                               ; preds = %34
  br label %45, !dbg !906

45:                                               ; preds = %44
  br label %47, !dbg !907

46:                                               ; No predecessors!
  br label %47, !dbg !911

47:                                               ; preds = %46, %45
  %48 = load ptr, ptr %13, align 4, !dbg !912
  %49 = getelementptr inbounds %struct.k_mutex, ptr %48, i32 0, i32 2, !dbg !914
  %50 = load i32, ptr %49, align 4, !dbg !914
  %51 = icmp ugt i32 %50, 1, !dbg !915
  br i1 %51, label %52, label %57, !dbg !916

52:                                               ; preds = %47
  %53 = load ptr, ptr %13, align 4, !dbg !917
  %54 = getelementptr inbounds %struct.k_mutex, ptr %53, i32 0, i32 2, !dbg !919
  %55 = load i32, ptr %54, align 4, !dbg !920
  %56 = add i32 %55, -1, !dbg !920
  store i32 %56, ptr %54, align 4, !dbg !920
  br label %112, !dbg !921

57:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %19, metadata !877, metadata !DIExpression()), !dbg !922
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !496, metadata !DIExpression()), !dbg !923
  %58 = load ptr, ptr %11, align 4, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %10, metadata !502, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %5, metadata !513, metadata !DIExpression()), !dbg !929
  %59 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !930, !srcloc !517
  store i32 %59, ptr %5, align 4, !dbg !930
  %60 = load i32, ptr %5, align 4, !dbg !931
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !932
  store i32 %60, ptr %10, align 4, !dbg !933
  %61 = load ptr, ptr %11, align 4, !dbg !934
  store ptr %61, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !522, metadata !DIExpression()), !dbg !935
  %62 = load ptr, ptr %4, align 4, !dbg !937
  %63 = load ptr, ptr %11, align 4, !dbg !938
  store ptr %63, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !531, metadata !DIExpression()), !dbg !939
  %64 = load ptr, ptr %3, align 4, !dbg !941
  %65 = load i32, ptr %10, align 4, !dbg !942
  %66 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !943
  store i32 %65, ptr %66, align 4, !dbg !943
  %67 = load ptr, ptr %13, align 4, !dbg !944
  %68 = load ptr, ptr %13, align 4, !dbg !945
  %69 = getelementptr inbounds %struct.k_mutex, ptr %68, i32 0, i32 3, !dbg !946
  %70 = load i32, ptr %69, align 4, !dbg !946
  %71 = call zeroext i1 @adjust_owner_prio(ptr noundef %67, i32 noundef %70) #7, !dbg !947
  %72 = load ptr, ptr %13, align 4, !dbg !948
  %73 = getelementptr inbounds %struct.k_mutex, ptr %72, i32 0, i32 0, !dbg !949
  %74 = call ptr @z_unpend_first_thread(ptr noundef %73) #7, !dbg !950
  store ptr %74, ptr %14, align 4, !dbg !951
  %75 = load ptr, ptr %14, align 4, !dbg !952
  %76 = load ptr, ptr %13, align 4, !dbg !953
  %77 = getelementptr inbounds %struct.k_mutex, ptr %76, i32 0, i32 1, !dbg !954
  store ptr %75, ptr %77, align 4, !dbg !955
  br label %78, !dbg !956

78:                                               ; preds = %57
  br label %80, !dbg !957

79:                                               ; No predecessors!
  br label %80, !dbg !961

80:                                               ; preds = %79, %78
  %81 = load ptr, ptr %14, align 4, !dbg !962
  %82 = icmp ne ptr %81, null, !dbg !964
  br i1 %82, label %83, label %100, !dbg !965

83:                                               ; preds = %80
  %84 = load ptr, ptr %14, align 4, !dbg !966
  %85 = getelementptr inbounds %struct.k_thread, ptr %84, i32 0, i32 0, !dbg !968
  %86 = getelementptr inbounds %struct._thread_base, ptr %85, i32 0, i32 4, !dbg !969
  %87 = getelementptr inbounds %struct.anon, ptr %86, i32 0, i32 0, !dbg !969
  %88 = load i8, ptr %87, align 2, !dbg !969
  %89 = sext i8 %88 to i32, !dbg !966
  %90 = load ptr, ptr %13, align 4, !dbg !970
  %91 = getelementptr inbounds %struct.k_mutex, ptr %90, i32 0, i32 3, !dbg !971
  store i32 %89, ptr %91, align 4, !dbg !972
  %92 = load ptr, ptr %14, align 4, !dbg !973
  store ptr %92, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !974, metadata !DIExpression()), !dbg !981
  store i32 0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !980, metadata !DIExpression()), !dbg !983
  %93 = load i32, ptr %7, align 4, !dbg !984
  %94 = load ptr, ptr %6, align 4, !dbg !985
  %95 = getelementptr inbounds %struct.k_thread, ptr %94, i32 0, i32 6, !dbg !986
  %96 = getelementptr inbounds %struct._thread_arch, ptr %95, i32 0, i32 1, !dbg !987
  store i32 %93, ptr %96, align 4, !dbg !988
  %97 = load ptr, ptr %14, align 4, !dbg !989
  call void @z_ready_thread(ptr noundef %97) #7, !dbg !990
  %98 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !991
  %99 = load [1 x i32], ptr %98, align 4, !dbg !991
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %99) #7, !dbg !991
  br label %111, !dbg !992

100:                                              ; preds = %80
  %101 = load ptr, ptr %13, align 4, !dbg !993
  %102 = getelementptr inbounds %struct.k_mutex, ptr %101, i32 0, i32 2, !dbg !995
  store i32 0, ptr %102, align 4, !dbg !996
  %103 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !997
  %104 = load [1 x i32], ptr %103, align 4, !dbg !997
  store [1 x i32] %104, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !581, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.declare(metadata ptr %8, metadata !586, metadata !DIExpression()), !dbg !1000
  %105 = load ptr, ptr %9, align 4, !dbg !1001
  %106 = load i32, ptr %8, align 4, !dbg !1002
  store i32 %106, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !592, metadata !DIExpression()), !dbg !1003
  %107 = load i32, ptr %2, align 4, !dbg !1005
  %108 = icmp ne i32 %107, 0, !dbg !1006
  br i1 %108, label %109, label %110, !dbg !1007

109:                                              ; preds = %100
  br label %arch_irq_unlock.exit, !dbg !1008

110:                                              ; preds = %100
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1009, !srcloc !606
  br label %arch_irq_unlock.exit, !dbg !1010

arch_irq_unlock.exit:                             ; preds = %109, %110
  br label %111

111:                                              ; preds = %arch_irq_unlock.exit, %83
  br label %112, !dbg !1011

112:                                              ; preds = %111, %52
  call void @llvm.dbg.label(metadata !878), !dbg !1012
  br label %113, !dbg !1013

113:                                              ; preds = %112
  br label %114, !dbg !1014

114:                                              ; preds = %113
  br label %115, !dbg !1014

115:                                              ; preds = %114
  store i32 0, ptr %12, align 4, !dbg !1016
  store i32 1, ptr %15, align 4
  br label %116, !dbg !1016

116:                                              ; preds = %115, %43, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1017
  %117 = load i32, ptr %12, align 4, !dbg !1017
  ret i32 %117, !dbg !1017
}

; Function Attrs: optsize
declare !dbg !1018 dso_local ptr @z_unpend_first_thread(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !1019 dso_local void @z_ready_thread(ptr noundef) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: optsize
declare !dbg !1022 dso_local i64 @z_timeout_expires(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !1027 dso_local i64 @z_timeout_remaining(ptr noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1028 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1033, metadata !DIExpression()), !dbg !1034
  %3 = load ptr, ptr %2, align 4, !dbg !1035
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !1036
  %5 = icmp eq ptr %4, null, !dbg !1037
  ret i1 %5, !dbg !1038
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1039 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1043, metadata !DIExpression()), !dbg !1044
  %3 = load ptr, ptr %2, align 4, !dbg !1045
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1046
  %5 = load ptr, ptr %4, align 4, !dbg !1046
  ret ptr %5, !dbg !1047
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1048 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1053, metadata !DIExpression()), !dbg !1054
  %3 = load ptr, ptr %2, align 4, !dbg !1055
  %4 = load ptr, ptr %2, align 4, !dbg !1056
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1057
  store ptr %3, ptr %5, align 4, !dbg !1058
  %6 = load ptr, ptr %2, align 4, !dbg !1059
  %7 = load ptr, ptr %2, align 4, !dbg !1060
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1061
  store ptr %6, ptr %8, align 4, !dbg !1062
  ret void, !dbg !1063
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_get_new_prio_with_ceiling(i32 noundef %0) #0 !dbg !1064 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1068, metadata !DIExpression()), !dbg !1069
  %3 = load i32, ptr %2, align 4, !dbg !1070
  %4 = call zeroext i1 @z_is_under_prio_ceiling(i32 noundef %3) #7, !dbg !1071
  br i1 %4, label %5, label %7, !dbg !1071

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !1072
  br label %8, !dbg !1071

7:                                                ; preds = %1
  br label %8, !dbg !1071

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ -127, %7 ], !dbg !1071
  ret i32 %9, !dbg !1073
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_under_prio_ceiling(i32 noundef %0) #0 !dbg !1074 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1078, metadata !DIExpression()), !dbg !1079
  %3 = load i32, ptr %2, align 4, !dbg !1080
  %4 = icmp sge i32 %3, -127, !dbg !1081
  ret i1 %4, !dbg !1082
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %0, i32 noundef %1) #0 !dbg !1083 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1085, metadata !DIExpression()), !dbg !1087
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1086, metadata !DIExpression()), !dbg !1088
  %5 = load i32, ptr %3, align 4, !dbg !1089
  %6 = load i32, ptr %4, align 4, !dbg !1090
  %7 = icmp slt i32 %5, %6, !dbg !1091
  ret i1 %7, !dbg !1092
}

; Function Attrs: optsize
declare !dbg !1093 dso_local zeroext i1 @z_set_prio(ptr noundef, i32 noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1096 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1100, metadata !DIExpression()), !dbg !1101
  %3 = load ptr, ptr %2, align 4, !dbg !1102
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #7, !dbg !1103
  br i1 %4, label %5, label %6, !dbg !1103

5:                                                ; preds = %1
  br label %10, !dbg !1103

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1104
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1105
  %9 = load ptr, ptr %8, align 4, !dbg !1105
  br label %10, !dbg !1103

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1103
  ret ptr %11, !dbg !1106
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1107 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1111, metadata !DIExpression()), !dbg !1112
  %3 = load ptr, ptr %2, align 4, !dbg !1113
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1114
  %5 = load ptr, ptr %4, align 4, !dbg !1114
  %6 = load ptr, ptr %2, align 4, !dbg !1115
  %7 = icmp eq ptr %5, %6, !dbg !1116
  ret i1 %7, !dbg !1117
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !213, line: 47, type: !204, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !212, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mutex.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !6, line: 29, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!9 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!10 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!11 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!12 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!13 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!14 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!15 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!16 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!17 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!18 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!19 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!20 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!21 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!22 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!23 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!24 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!25 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!87 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!88 = !{!89, !90, !91, !92, !108}
!89 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !94, line: 55, baseType: !95)
!94 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !94, line: 37, size: 64, elements: !96)
!96 = !{!97, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 38, baseType: !98, size: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 38, size: 32, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !98, file: !94, line: 39, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !94, line: 40, baseType: !101, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !95, file: !94, line: 42, baseType: !104, size: 32, offset: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !95, file: !94, line: 42, size: 32, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !104, file: !94, line: 43, baseType: !101, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !94, line: 44, baseType: !101, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !110, line: 250, size: 896, elements: !111)
!110 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!111 = !{!112, !170, !183, !184, !185, !186, !207}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !109, file: !110, line: 252, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !110, line: 58, size: 384, elements: !114)
!114 = !{!115, !128, !136, !139, !140, !153, !156, !157}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 61, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 61, size: 64, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !116, file: !110, line: 62, baseType: !93, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !116, file: !110, line: 63, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !121, line: 58, size: 64, elements: !122)
!121 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !120, file: !121, line: 60, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 32)
!126 = !{!127}
!127 = !DISubrange(count: 2)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !113, file: !110, line: 69, baseType: !129, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !131, line: 243, baseType: !132)
!131 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 241, size: 64, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !132, file: !131, line: 242, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !94, line: 51, baseType: !95)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !113, file: !110, line: 72, baseType: !137, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !138, line: 62, baseType: !7)
!138 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !113, file: !110, line: 75, baseType: !137, size: 8, offset: 104)
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 91, baseType: !141, size: 16, offset: 112)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 91, size: 16, elements: !142)
!142 = !{!143, !150}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !110, line: 92, baseType: !144, size: 16)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !141, file: !110, line: 92, size: 16, elements: !145)
!145 = !{!146, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !144, file: !110, line: 97, baseType: !147, size: 8)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !138, line: 56, baseType: !148)
!148 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !144, file: !110, line: 98, baseType: !137, size: 8, offset: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !141, file: !110, line: 101, baseType: !151, size: 16)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !138, line: 63, baseType: !152)
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !113, file: !110, line: 108, baseType: !154, size: 32, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 64, baseType: !155)
!155 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !113, file: !110, line: 132, baseType: !90, size: 32, offset: 160)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !113, file: !110, line: 136, baseType: !158, size: 192, offset: 192)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !131, line: 254, size: 192, elements: !159)
!159 = !{!160, !161, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !158, file: !131, line: 255, baseType: !93, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !158, file: !131, line: 256, baseType: !162, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !131, line: 252, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 32)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !158, file: !131, line: 259, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !138, line: 59, baseType: !169)
!169 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !109, file: !110, line: 255, baseType: !171, size: 288, offset: 384)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !172, line: 25, size: 288, elements: !173)
!172 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !171, file: !172, line: 26, baseType: !154, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !171, file: !172, line: 27, baseType: !154, size: 32, offset: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !171, file: !172, line: 28, baseType: !154, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !171, file: !172, line: 29, baseType: !154, size: 32, offset: 96)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !171, file: !172, line: 30, baseType: !154, size: 32, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !171, file: !172, line: 31, baseType: !154, size: 32, offset: 160)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !171, file: !172, line: 32, baseType: !154, size: 32, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !171, file: !172, line: 33, baseType: !154, size: 32, offset: 224)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !171, file: !172, line: 34, baseType: !154, size: 32, offset: 256)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !109, file: !110, line: 258, baseType: !90, size: 32, offset: 672)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !109, file: !110, line: 261, baseType: !130, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !109, file: !110, line: 302, baseType: !91, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !109, file: !110, line: 333, baseType: !187, size: 32, offset: 800)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !189, line: 5291, size: 160, elements: !190)
!189 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!190 = !{!191, !202, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !188, file: !189, line: 5292, baseType: !192, size: 96)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !193, line: 56, size: 96, elements: !194)
!193 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!194 = !{!195, !198, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !192, file: !193, line: 57, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !193, line: 57, flags: DIFlagFwdDecl)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !192, file: !193, line: 58, baseType: !90, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !192, file: !193, line: 59, baseType: !200, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !201, line: 46, baseType: !155)
!201 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!202 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !188, file: !189, line: 5293, baseType: !130, size: 64, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !188, file: !189, line: 5294, baseType: !204, offset: 160)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !205, line: 45, elements: !206)
!205 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!206 = !{}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !110, line: 355, baseType: !208, size: 64, offset: 832)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !172, line: 60, size: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !208, file: !172, line: 63, baseType: !154, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !208, file: !172, line: 66, baseType: !154, size: 32, offset: 32)
!212 = !{!0}
!213 = !DIFile(filename: "kernel/mutex.c", directory: "/home/sri/zephyrproject/zephyr")
!214 = !{i32 7, !"Dwarf Version", i32 4}
!215 = !{i32 2, !"Debug Info Version", i32 3}
!216 = !{i32 1, !"wchar_size", i32 4}
!217 = !{i32 1, !"static_rwdata", i32 1}
!218 = !{i32 1, !"enumsize_buildattr", i32 1}
!219 = !{i32 1, !"armlib_unavailable", i32 0}
!220 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!221 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !222, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !226)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !224, !108}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!226 = !{!227, !228}
!227 = !DILocalVariable(name: "object", arg: 1, scope: !221, file: !6, line: 223, type: !224)
!228 = !DILocalVariable(name: "thread", arg: 2, scope: !221, file: !6, line: 224, type: !108)
!229 = !DILocation(line: 223, column: 61, scope: !221)
!230 = !DILocation(line: 224, column: 24, scope: !221)
!231 = !DILocation(line: 226, column: 9, scope: !221)
!232 = !DILocation(line: 227, column: 9, scope: !221)
!233 = !DILocation(line: 228, column: 1, scope: !221)
!234 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !235, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !224}
!237 = !{!238}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !234, file: !6, line: 243, type: !224)
!239 = !DILocation(line: 243, column: 56, scope: !234)
!240 = !DILocation(line: 245, column: 9, scope: !234)
!241 = !DILocation(line: 246, column: 1, scope: !234)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{!90, !5}
!245 = !{!246}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !6, line: 359, type: !5)
!247 = !DILocation(line: 359, column: 58, scope: !242)
!248 = !DILocation(line: 361, column: 9, scope: !242)
!249 = !DILocation(line: 363, column: 2, scope: !242)
!250 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !251, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{!90, !5, !200}
!253 = !{!254, !255}
!254 = !DILocalVariable(name: "otype", arg: 1, scope: !250, file: !6, line: 366, type: !5)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !6, line: 367, type: !200)
!256 = !DILocation(line: 366, column: 63, scope: !250)
!257 = !DILocation(line: 367, column: 13, scope: !250)
!258 = !DILocation(line: 369, column: 9, scope: !250)
!259 = !DILocation(line: 370, column: 9, scope: !250)
!260 = !DILocation(line: 372, column: 2, scope: !250)
!261 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !189, file: !189, line: 656, type: !262, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !265, line: 46, baseType: !168)
!265 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!268 = !{!269}
!269 = !DILocalVariable(name: "t", arg: 1, scope: !261, file: !189, line: 657, type: !266)
!270 = !DILocation(line: 657, column: 30, scope: !261)
!271 = !DILocation(line: 659, column: 28, scope: !261)
!272 = !DILocation(line: 659, column: 31, scope: !261)
!273 = !DILocation(line: 659, column: 36, scope: !261)
!274 = !DILocation(line: 659, column: 9, scope: !261)
!275 = !DILocation(line: 659, column: 2, scope: !261)
!276 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !189, file: !189, line: 671, type: !262, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!277 = !{!278}
!278 = !DILocalVariable(name: "t", arg: 1, scope: !276, file: !189, line: 672, type: !266)
!279 = !DILocation(line: 672, column: 30, scope: !276)
!280 = !DILocation(line: 674, column: 30, scope: !276)
!281 = !DILocation(line: 674, column: 33, scope: !276)
!282 = !DILocation(line: 674, column: 38, scope: !276)
!283 = !DILocation(line: 674, column: 9, scope: !276)
!284 = !DILocation(line: 674, column: 2, scope: !276)
!285 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !189, file: !189, line: 1634, type: !286, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!286 = !DISubroutineType(types: !287)
!287 = !{!264, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !189, line: 1439, size: 448, elements: !291)
!291 = !{!292, !293, !294, !299, !300, !305, !306}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !290, file: !189, line: 1445, baseType: !158, size: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !290, file: !189, line: 1448, baseType: !130, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !290, file: !189, line: 1451, baseType: !295, size: 32, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !290, file: !189, line: 1454, baseType: !295, size: 32, offset: 288)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !290, file: !189, line: 1457, baseType: !301, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !265, line: 67, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 65, size: 64, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !302, file: !265, line: 66, baseType: !264, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !290, file: !189, line: 1460, baseType: !154, size: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !290, file: !189, line: 1463, baseType: !90, size: 32, offset: 416)
!307 = !{!308}
!308 = !DILocalVariable(name: "timer", arg: 1, scope: !285, file: !189, line: 1635, type: !288)
!309 = !DILocation(line: 1635, column: 34, scope: !285)
!310 = !DILocation(line: 1637, column: 28, scope: !285)
!311 = !DILocation(line: 1637, column: 35, scope: !285)
!312 = !DILocation(line: 1637, column: 9, scope: !285)
!313 = !DILocation(line: 1637, column: 2, scope: !285)
!314 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !189, file: !189, line: 1649, type: !286, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !315)
!315 = !{!316}
!316 = !DILocalVariable(name: "timer", arg: 1, scope: !314, file: !189, line: 1650, type: !288)
!317 = !DILocation(line: 1650, column: 34, scope: !314)
!318 = !DILocation(line: 1652, column: 30, scope: !314)
!319 = !DILocation(line: 1652, column: 37, scope: !314)
!320 = !DILocation(line: 1652, column: 9, scope: !314)
!321 = !DILocation(line: 1652, column: 2, scope: !314)
!322 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !189, file: !189, line: 1689, type: !323, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !298, !90}
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !322, file: !189, line: 1689, type: !298)
!327 = !DILocalVariable(name: "user_data", arg: 2, scope: !322, file: !189, line: 1690, type: !90)
!328 = !DILocation(line: 1689, column: 65, scope: !322)
!329 = !DILocation(line: 1690, column: 19, scope: !322)
!330 = !DILocation(line: 1692, column: 21, scope: !322)
!331 = !DILocation(line: 1692, column: 2, scope: !322)
!332 = !DILocation(line: 1692, column: 9, scope: !322)
!333 = !DILocation(line: 1692, column: 19, scope: !322)
!334 = !DILocation(line: 1693, column: 1, scope: !322)
!335 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !189, file: !189, line: 1704, type: !336, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!90, !288}
!338 = !{!339}
!339 = !DILocalVariable(name: "timer", arg: 1, scope: !335, file: !189, line: 1704, type: !288)
!340 = !DILocation(line: 1704, column: 72, scope: !335)
!341 = !DILocation(line: 1706, column: 9, scope: !335)
!342 = !DILocation(line: 1706, column: 16, scope: !335)
!343 = !DILocation(line: 1706, column: 2, scope: !335)
!344 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !189, file: !189, line: 2071, type: !345, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!345 = !DISubroutineType(types: !346)
!346 = !{!91, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !189, line: 1830, size: 128, elements: !349)
!349 = !{!350, !363, !364}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !348, file: !189, line: 1831, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !352, line: 60, baseType: !353)
!352 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !352, line: 53, size: 64, elements: !354)
!354 = !{!355, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !353, file: !352, line: 54, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !352, line: 50, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !352, line: 44, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !358, file: !352, line: 45, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !352, line: 40, baseType: !154)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !353, file: !352, line: 55, baseType: !356, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !348, file: !189, line: 1832, baseType: !204, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !348, file: !189, line: 1833, baseType: !130, size: 64, offset: 64)
!365 = !{!366}
!366 = !DILocalVariable(name: "queue", arg: 1, scope: !344, file: !189, line: 2071, type: !347)
!367 = !DILocation(line: 2071, column: 59, scope: !344)
!368 = !DILocation(line: 2073, column: 35, scope: !344)
!369 = !DILocation(line: 2073, column: 42, scope: !344)
!370 = !DILocation(line: 2073, column: 14, scope: !344)
!371 = !DILocation(line: 2073, column: 9, scope: !344)
!372 = !DILocation(line: 2073, column: 2, scope: !344)
!373 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !189, file: !189, line: 3209, type: !374, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !382)
!374 = !DISubroutineType(types: !375)
!375 = !{!155, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !189, line: 3092, size: 128, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !189, line: 3093, baseType: !130, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !189, line: 3094, baseType: !155, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !377, file: !189, line: 3095, baseType: !155, size: 32, offset: 96)
!382 = !{!383}
!383 = !DILocalVariable(name: "sem", arg: 1, scope: !373, file: !189, line: 3209, type: !376)
!384 = !DILocation(line: 3209, column: 65, scope: !373)
!385 = !DILocation(line: 3211, column: 9, scope: !373)
!386 = !DILocation(line: 3211, column: 14, scope: !373)
!387 = !DILocation(line: 3211, column: 2, scope: !373)
!388 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !189, file: !189, line: 4649, type: !389, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!389 = !DISubroutineType(types: !390)
!390 = !{!154, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 32)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !189, line: 4390, size: 320, elements: !393)
!393 = !{!394, !395, !396, !397, !398, !401, !402, !403, !404, !405}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !392, file: !189, line: 4392, baseType: !130, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !392, file: !189, line: 4394, baseType: !204, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !392, file: !189, line: 4396, baseType: !200, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !392, file: !189, line: 4398, baseType: !154, size: 32, offset: 96)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !392, file: !189, line: 4400, baseType: !399, size: 32, offset: 128)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 32)
!400 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !392, file: !189, line: 4402, baseType: !399, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !392, file: !189, line: 4404, baseType: !399, size: 32, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !392, file: !189, line: 4406, baseType: !399, size: 32, offset: 224)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !392, file: !189, line: 4408, baseType: !154, size: 32, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !392, file: !189, line: 4413, baseType: !137, size: 8, offset: 288)
!406 = !{!407}
!407 = !DILocalVariable(name: "msgq", arg: 1, scope: !388, file: !189, line: 4649, type: !391)
!408 = !DILocation(line: 4649, column: 66, scope: !388)
!409 = !DILocation(line: 4651, column: 9, scope: !388)
!410 = !DILocation(line: 4651, column: 15, scope: !388)
!411 = !DILocation(line: 4651, column: 26, scope: !388)
!412 = !DILocation(line: 4651, column: 32, scope: !388)
!413 = !DILocation(line: 4651, column: 24, scope: !388)
!414 = !DILocation(line: 4651, column: 2, scope: !388)
!415 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !189, file: !189, line: 4665, type: !389, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!416 = !{!417}
!417 = !DILocalVariable(name: "msgq", arg: 1, scope: !415, file: !189, line: 4665, type: !391)
!418 = !DILocation(line: 4665, column: 66, scope: !415)
!419 = !DILocation(line: 4667, column: 9, scope: !415)
!420 = !DILocation(line: 4667, column: 15, scope: !415)
!421 = !DILocation(line: 4667, column: 2, scope: !415)
!422 = distinct !DISubprogram(name: "z_impl_k_mutex_init", scope: !213, file: !213, line: 53, type: !423, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!423 = !DISubroutineType(types: !424)
!424 = !{!91, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mutex", file: !189, line: 2895, size: 160, elements: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !426, file: !189, line: 2897, baseType: !130, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !426, file: !189, line: 2899, baseType: !108, size: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !426, file: !189, line: 2902, baseType: !154, size: 32, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner_orig_prio", scope: !426, file: !189, line: 2905, baseType: !91, size: 32, offset: 128)
!432 = !{!433}
!433 = !DILocalVariable(name: "mutex", arg: 1, scope: !422, file: !213, line: 53, type: !425)
!434 = !DILocation(line: 53, column: 41, scope: !422)
!435 = !DILocation(line: 55, column: 2, scope: !422)
!436 = !DILocation(line: 55, column: 9, scope: !422)
!437 = !DILocation(line: 55, column: 15, scope: !422)
!438 = !DILocation(line: 56, column: 2, scope: !422)
!439 = !DILocation(line: 56, column: 9, scope: !422)
!440 = !DILocation(line: 56, column: 20, scope: !422)
!441 = !DILocation(line: 58, column: 16, scope: !422)
!442 = !DILocation(line: 58, column: 23, scope: !422)
!443 = !DILocation(line: 58, column: 2, scope: !422)
!444 = !DILocation(line: 60, column: 16, scope: !422)
!445 = !DILocation(line: 60, column: 2, scope: !422)
!446 = !DILocation(line: 66, column: 2, scope: !422)
!447 = !DILocation(line: 66, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !422, file: !213, line: 66, column: 5)
!449 = !DILocation(line: 68, column: 2, scope: !422)
!450 = distinct !DISubprogram(name: "z_waitq_init", scope: !451, file: !451, line: 47, type: !452, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !454)
!451 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!452 = !DISubroutineType(types: !453)
!453 = !{null, !129}
!454 = !{!455}
!455 = !DILocalVariable(name: "w", arg: 1, scope: !450, file: !451, line: 47, type: !129)
!456 = !DILocation(line: 47, column: 44, scope: !450)
!457 = !DILocation(line: 49, column: 18, scope: !450)
!458 = !DILocation(line: 49, column: 21, scope: !450)
!459 = !DILocation(line: 49, column: 2, scope: !450)
!460 = !DILocation(line: 50, column: 1, scope: !450)
!461 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !235, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!462 = !{!463}
!463 = !DILocalVariable(name: "obj", arg: 1, scope: !461, file: !6, line: 215, type: !224)
!464 = !DILocation(line: 215, column: 46, scope: !461)
!465 = !DILocation(line: 217, column: 9, scope: !461)
!466 = !DILocation(line: 218, column: 1, scope: !461)
!467 = distinct !DISubprogram(name: "z_impl_k_mutex_lock", scope: !213, file: !213, line: 103, type: !468, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !470)
!468 = !DISubroutineType(types: !469)
!469 = !{!91, !425, !301}
!470 = !{!471, !472, !473, !474, !479, !480, !481}
!471 = !DILocalVariable(name: "mutex", arg: 1, scope: !467, file: !213, line: 103, type: !425)
!472 = !DILocalVariable(name: "timeout", arg: 2, scope: !467, file: !213, line: 103, type: !301)
!473 = !DILocalVariable(name: "new_prio", scope: !467, file: !213, line: 105, type: !91)
!474 = !DILocalVariable(name: "key", scope: !467, file: !213, line: 106, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !205, line: 108, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !205, line: 34, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !476, file: !205, line: 35, baseType: !91, size: 32)
!479 = !DILocalVariable(name: "resched", scope: !467, file: !213, line: 107, type: !89)
!480 = !DILocalVariable(name: "got_mutex", scope: !467, file: !213, line: 154, type: !91)
!481 = !DILocalVariable(name: "waiter", scope: !482, file: !213, line: 177, type: !108)
!482 = distinct !DILexicalBlock(scope: !483, file: !213, line: 176, column: 65)
!483 = distinct !DILexicalBlock(scope: !467, file: !213, line: 176, column: 6)
!484 = !DILocation(line: 103, column: 41, scope: !467)
!485 = !DILocation(line: 103, column: 60, scope: !467)
!486 = !DILocation(line: 105, column: 2, scope: !467)
!487 = !DILocation(line: 105, column: 6, scope: !467)
!488 = !DILocation(line: 106, column: 2, scope: !467)
!489 = !DILocation(line: 106, column: 19, scope: !467)
!490 = !DILocation(line: 107, column: 2, scope: !467)
!491 = !DILocation(line: 107, column: 8, scope: !467)
!492 = !DILocation(line: 111, column: 2, scope: !467)
!493 = !DILocation(line: 111, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !467, file: !213, line: 111, column: 5)
!495 = !DILocation(line: 113, column: 8, scope: !467)
!496 = !DILocalVariable(name: "l", arg: 1, scope: !497, file: !205, line: 160, type: !500)
!497 = distinct !DISubprogram(name: "k_spin_lock", scope: !205, file: !205, line: 160, type: !498, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!498 = !DISubroutineType(types: !499)
!499 = !{!475, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!501 = !{!496, !502}
!502 = !DILocalVariable(name: "k", scope: !497, file: !205, line: 163, type: !475)
!503 = !DILocation(line: 160, column: 94, scope: !497, inlinedAt: !504)
!504 = distinct !DILocation(line: 113, column: 8, scope: !467)
!505 = !DILocation(line: 162, column: 9, scope: !497, inlinedAt: !504)
!506 = !DILocation(line: 163, column: 19, scope: !497, inlinedAt: !504)
!507 = !DILocation(line: 44, column: 2, scope: !508, inlinedAt: !514)
!508 = distinct !DISubprogram(name: "arch_irq_lock", scope: !509, file: !509, line: 42, type: !510, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!509 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!510 = !DISubroutineType(types: !511)
!511 = !{!155}
!512 = !{!513}
!513 = !DILocalVariable(name: "key", scope: !508, file: !509, line: 44, type: !155)
!514 = distinct !DILocation(line: 169, column: 10, scope: !497, inlinedAt: !504)
!515 = !DILocation(line: 44, column: 15, scope: !508, inlinedAt: !514)
!516 = !DILocation(line: 48, column: 2, scope: !508, inlinedAt: !514)
!517 = !{i64 66945}
!518 = !DILocation(line: 80, column: 9, scope: !508, inlinedAt: !514)
!519 = !DILocation(line: 81, column: 1, scope: !508, inlinedAt: !514)
!520 = !DILocation(line: 169, column: 8, scope: !497, inlinedAt: !504)
!521 = !DILocation(line: 171, column: 26, scope: !497, inlinedAt: !504)
!522 = !DILocalVariable(name: "l", arg: 1, scope: !523, file: !205, line: 110, type: !500)
!523 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !205, file: !205, line: 110, type: !524, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !500}
!526 = !{!522}
!527 = !DILocation(line: 110, column: 94, scope: !523, inlinedAt: !528)
!528 = distinct !DILocation(line: 171, column: 2, scope: !497, inlinedAt: !504)
!529 = !DILocation(line: 112, column: 9, scope: !523, inlinedAt: !528)
!530 = !DILocation(line: 177, column: 27, scope: !497, inlinedAt: !504)
!531 = !DILocalVariable(name: "l", arg: 1, scope: !532, file: !205, line: 121, type: !500)
!532 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !205, file: !205, line: 121, type: !524, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!531}
!534 = !DILocation(line: 121, column: 95, scope: !532, inlinedAt: !535)
!535 = distinct !DILocation(line: 177, column: 2, scope: !497, inlinedAt: !504)
!536 = !DILocation(line: 123, column: 9, scope: !532, inlinedAt: !535)
!537 = !DILocation(line: 179, column: 2, scope: !497, inlinedAt: !504)
!538 = !DILocation(line: 115, column: 35, scope: !539)
!539 = distinct !DILexicalBlock(scope: !467, file: !213, line: 115, column: 6)
!540 = !DILocation(line: 115, column: 42, scope: !539)
!541 = !DILocation(line: 115, column: 53, scope: !539)
!542 = !DILocation(line: 115, column: 60, scope: !539)
!543 = !DILocation(line: 115, column: 64, scope: !539)
!544 = !DILocation(line: 115, column: 71, scope: !539)
!545 = !DILocation(line: 115, column: 96, scope: !539)
!546 = !DILocation(line: 115, column: 77, scope: !539)
!547 = !DILocation(line: 115, column: 32, scope: !539)
!548 = !DILocation(line: 115, column: 31, scope: !539)
!549 = !DILocation(line: 115, column: 24, scope: !539)
!550 = !DILocation(line: 115, column: 7, scope: !539)
!551 = !DILocation(line: 115, column: 110, scope: !539)
!552 = !DILocation(line: 115, column: 6, scope: !467)
!553 = !DILocation(line: 117, column: 29, scope: !554)
!554 = distinct !DILexicalBlock(scope: !539, file: !213, line: 115, column: 118)
!555 = !DILocation(line: 117, column: 36, scope: !554)
!556 = !DILocation(line: 117, column: 47, scope: !554)
!557 = !DILocation(line: 117, column: 28, scope: !554)
!558 = !DILocation(line: 118, column: 22, scope: !554)
!559 = !DILocation(line: 118, column: 31, scope: !554)
!560 = !DILocation(line: 118, column: 36, scope: !554)
!561 = !DILocation(line: 118, column: 6, scope: !554)
!562 = !DILocation(line: 119, column: 6, scope: !554)
!563 = !DILocation(line: 119, column: 13, scope: !554)
!564 = !DILocation(line: 117, column: 3, scope: !554)
!565 = !DILocation(line: 117, column: 10, scope: !554)
!566 = !DILocation(line: 117, column: 26, scope: !554)
!567 = !DILocation(line: 121, column: 3, scope: !554)
!568 = !DILocation(line: 121, column: 10, scope: !554)
!569 = !DILocation(line: 121, column: 20, scope: !554)
!570 = !DILocation(line: 122, column: 34, scope: !554)
!571 = !DILocation(line: 122, column: 3, scope: !554)
!572 = !DILocation(line: 122, column: 10, scope: !554)
!573 = !DILocation(line: 122, column: 16, scope: !554)
!574 = !DILocation(line: 124, column: 3, scope: !554)
!575 = !DILocation(line: 124, column: 89, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !213, line: 124, column: 87)
!577 = distinct !DILexicalBlock(scope: !578, file: !213, line: 124, column: 12)
!578 = distinct !DILexicalBlock(scope: !554, file: !213, line: 124, column: 6)
!579 = !DILocation(line: 124, column: 481, scope: !578)
!580 = !DILocation(line: 128, column: 3, scope: !554)
!581 = !DILocalVariable(name: "l", arg: 1, scope: !582, file: !205, line: 235, type: !500)
!582 = distinct !DISubprogram(name: "k_spin_unlock", scope: !205, file: !205, line: 235, type: !583, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !500, !475}
!585 = !{!581, !586}
!586 = !DILocalVariable(name: "key", arg: 2, scope: !582, file: !205, line: 236, type: !475)
!587 = !DILocation(line: 235, column: 84, scope: !582, inlinedAt: !588)
!588 = distinct !DILocation(line: 128, column: 3, scope: !554)
!589 = !DILocation(line: 236, column: 23, scope: !582, inlinedAt: !588)
!590 = !DILocation(line: 238, column: 9, scope: !582, inlinedAt: !588)
!591 = !DILocation(line: 261, column: 22, scope: !582, inlinedAt: !588)
!592 = !DILocalVariable(name: "key", arg: 1, scope: !593, file: !509, line: 88, type: !155)
!593 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !509, file: !509, line: 88, type: !594, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{null, !155}
!596 = !{!592}
!597 = !DILocation(line: 88, column: 80, scope: !593, inlinedAt: !598)
!598 = distinct !DILocation(line: 261, column: 2, scope: !582, inlinedAt: !588)
!599 = !DILocation(line: 91, column: 6, scope: !600, inlinedAt: !598)
!600 = distinct !DILexicalBlock(scope: !593, file: !509, line: 91, column: 6)
!601 = !DILocation(line: 91, column: 10, scope: !600, inlinedAt: !598)
!602 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !598)
!603 = !DILocation(line: 92, column: 3, scope: !604, inlinedAt: !598)
!604 = distinct !DILexicalBlock(scope: !600, file: !509, line: 91, column: 17)
!605 = !DILocation(line: 94, column: 2, scope: !593, inlinedAt: !598)
!606 = !{i64 67249}
!607 = !DILocation(line: 114, column: 1, scope: !593, inlinedAt: !598)
!608 = !DILocation(line: 130, column: 3, scope: !554)
!609 = !DILocation(line: 130, column: 8, scope: !610)
!610 = distinct !DILexicalBlock(scope: !554, file: !213, line: 130, column: 6)
!611 = !DILocation(line: 132, column: 3, scope: !554)
!612 = !DILocation(line: 135, column: 45, scope: !613)
!613 = distinct !DILexicalBlock(scope: !467, file: !213, line: 135, column: 6)
!614 = !DILocation(line: 135, column: 70, scope: !613)
!615 = !DILocation(line: 135, column: 51, scope: !613)
!616 = !DILocation(line: 135, column: 32, scope: !613)
!617 = !DILocation(line: 135, column: 31, scope: !613)
!618 = !DILocation(line: 135, column: 24, scope: !613)
!619 = !DILocation(line: 135, column: 7, scope: !613)
!620 = !DILocation(line: 135, column: 88, scope: !613)
!621 = !DILocation(line: 135, column: 6, scope: !467)
!622 = !DILocation(line: 136, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !613, file: !213, line: 135, column: 96)
!624 = !DILocation(line: 235, column: 84, scope: !582, inlinedAt: !625)
!625 = distinct !DILocation(line: 136, column: 3, scope: !623)
!626 = !DILocation(line: 236, column: 23, scope: !582, inlinedAt: !625)
!627 = !DILocation(line: 238, column: 9, scope: !582, inlinedAt: !625)
!628 = !DILocation(line: 261, column: 22, scope: !582, inlinedAt: !625)
!629 = !DILocation(line: 88, column: 80, scope: !593, inlinedAt: !630)
!630 = distinct !DILocation(line: 261, column: 2, scope: !582, inlinedAt: !625)
!631 = !DILocation(line: 91, column: 6, scope: !600, inlinedAt: !630)
!632 = !DILocation(line: 91, column: 10, scope: !600, inlinedAt: !630)
!633 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !630)
!634 = !DILocation(line: 92, column: 3, scope: !604, inlinedAt: !630)
!635 = !DILocation(line: 94, column: 2, scope: !593, inlinedAt: !630)
!636 = !DILocation(line: 114, column: 1, scope: !593, inlinedAt: !630)
!637 = !DILocation(line: 138, column: 3, scope: !623)
!638 = !DILocation(line: 138, column: 8, scope: !639)
!639 = distinct !DILexicalBlock(scope: !623, file: !213, line: 138, column: 6)
!640 = !DILocation(line: 140, column: 3, scope: !623)
!641 = !DILocation(line: 143, column: 2, scope: !467)
!642 = !DILocation(line: 143, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !467, file: !213, line: 143, column: 5)
!644 = !DILocation(line: 145, column: 54, scope: !467)
!645 = !DILocation(line: 145, column: 63, scope: !467)
!646 = !DILocation(line: 145, column: 68, scope: !467)
!647 = !DILocation(line: 145, column: 38, scope: !467)
!648 = !DILocation(line: 146, column: 10, scope: !467)
!649 = !DILocation(line: 146, column: 17, scope: !467)
!650 = !DILocation(line: 146, column: 24, scope: !467)
!651 = !DILocation(line: 146, column: 29, scope: !467)
!652 = !DILocation(line: 145, column: 13, scope: !467)
!653 = !DILocation(line: 145, column: 11, scope: !467)
!654 = !DILocation(line: 148, column: 2, scope: !467)
!655 = !DILocation(line: 148, column: 88, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !213, line: 148, column: 86)
!657 = distinct !DILexicalBlock(scope: !658, file: !213, line: 148, column: 11)
!658 = distinct !DILexicalBlock(scope: !467, file: !213, line: 148, column: 5)
!659 = !DILocation(line: 148, column: 399, scope: !658)
!660 = !DILocation(line: 150, column: 23, scope: !661)
!661 = distinct !DILexicalBlock(scope: !467, file: !213, line: 150, column: 6)
!662 = !DILocation(line: 150, column: 33, scope: !661)
!663 = !DILocation(line: 150, column: 40, scope: !661)
!664 = !DILocation(line: 150, column: 47, scope: !661)
!665 = !DILocation(line: 150, column: 52, scope: !661)
!666 = !DILocation(line: 150, column: 6, scope: !661)
!667 = !DILocation(line: 150, column: 6, scope: !467)
!668 = !DILocation(line: 151, column: 31, scope: !669)
!669 = distinct !DILexicalBlock(scope: !661, file: !213, line: 150, column: 59)
!670 = !DILocation(line: 151, column: 38, scope: !669)
!671 = !DILocation(line: 151, column: 13, scope: !669)
!672 = !DILocation(line: 151, column: 11, scope: !669)
!673 = !DILocation(line: 152, column: 2, scope: !669)
!674 = !DILocation(line: 154, column: 2, scope: !467)
!675 = !DILocation(line: 154, column: 6, scope: !467)
!676 = !DILocation(line: 154, column: 43, scope: !467)
!677 = !DILocation(line: 154, column: 50, scope: !467)
!678 = !DILocation(line: 154, column: 18, scope: !467)
!679 = !DILocation(line: 156, column: 2, scope: !467)
!680 = !DILocation(line: 156, column: 88, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !213, line: 156, column: 86)
!682 = distinct !DILexicalBlock(scope: !683, file: !213, line: 156, column: 11)
!683 = distinct !DILexicalBlock(scope: !467, file: !213, line: 156, column: 5)
!684 = !DILocation(line: 156, column: 412, scope: !683)
!685 = !DILocation(line: 158, column: 2, scope: !467)
!686 = !DILocation(line: 158, column: 88, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !213, line: 158, column: 86)
!688 = distinct !DILexicalBlock(scope: !689, file: !213, line: 158, column: 11)
!689 = distinct !DILexicalBlock(scope: !467, file: !213, line: 158, column: 5)
!690 = !DILocation(line: 158, column: 443, scope: !689)
!691 = !DILocation(line: 161, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !467, file: !213, line: 161, column: 6)
!693 = !DILocation(line: 161, column: 16, scope: !692)
!694 = !DILocation(line: 161, column: 6, scope: !467)
!695 = !DILocation(line: 162, column: 3, scope: !696)
!696 = distinct !DILexicalBlock(scope: !692, file: !213, line: 161, column: 22)
!697 = !DILocation(line: 162, column: 8, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !213, line: 162, column: 6)
!699 = !DILocation(line: 163, column: 3, scope: !696)
!700 = !DILocation(line: 168, column: 2, scope: !467)
!701 = !DILocation(line: 168, column: 88, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !213, line: 168, column: 86)
!703 = distinct !DILexicalBlock(scope: !704, file: !213, line: 168, column: 11)
!704 = distinct !DILexicalBlock(scope: !467, file: !213, line: 168, column: 5)
!705 = !DILocation(line: 168, column: 417, scope: !704)
!706 = !DILocation(line: 170, column: 8, scope: !467)
!707 = !DILocation(line: 160, column: 94, scope: !497, inlinedAt: !708)
!708 = distinct !DILocation(line: 170, column: 8, scope: !467)
!709 = !DILocation(line: 162, column: 9, scope: !497, inlinedAt: !708)
!710 = !DILocation(line: 163, column: 19, scope: !497, inlinedAt: !708)
!711 = !DILocation(line: 44, column: 2, scope: !508, inlinedAt: !712)
!712 = distinct !DILocation(line: 169, column: 10, scope: !497, inlinedAt: !708)
!713 = !DILocation(line: 44, column: 15, scope: !508, inlinedAt: !712)
!714 = !DILocation(line: 48, column: 2, scope: !508, inlinedAt: !712)
!715 = !DILocation(line: 80, column: 9, scope: !508, inlinedAt: !712)
!716 = !DILocation(line: 81, column: 1, scope: !508, inlinedAt: !712)
!717 = !DILocation(line: 169, column: 8, scope: !497, inlinedAt: !708)
!718 = !DILocation(line: 171, column: 26, scope: !497, inlinedAt: !708)
!719 = !DILocation(line: 110, column: 94, scope: !523, inlinedAt: !720)
!720 = distinct !DILocation(line: 171, column: 2, scope: !497, inlinedAt: !708)
!721 = !DILocation(line: 112, column: 9, scope: !523, inlinedAt: !720)
!722 = !DILocation(line: 177, column: 27, scope: !497, inlinedAt: !708)
!723 = !DILocation(line: 121, column: 95, scope: !532, inlinedAt: !724)
!724 = distinct !DILocation(line: 177, column: 2, scope: !497, inlinedAt: !708)
!725 = !DILocation(line: 123, column: 9, scope: !532, inlinedAt: !724)
!726 = !DILocation(line: 179, column: 2, scope: !497, inlinedAt: !708)
!727 = !DILocation(line: 176, column: 34, scope: !483)
!728 = !DILocation(line: 176, column: 41, scope: !483)
!729 = !DILocation(line: 176, column: 47, scope: !483)
!730 = !DILocation(line: 176, column: 32, scope: !483)
!731 = !DILocation(line: 176, column: 31, scope: !483)
!732 = !DILocation(line: 176, column: 24, scope: !483)
!733 = !DILocation(line: 176, column: 7, scope: !483)
!734 = !DILocation(line: 176, column: 57, scope: !483)
!735 = !DILocation(line: 176, column: 6, scope: !467)
!736 = !DILocation(line: 177, column: 3, scope: !482)
!737 = !DILocation(line: 177, column: 20, scope: !482)
!738 = !DILocation(line: 177, column: 43, scope: !482)
!739 = !DILocation(line: 177, column: 50, scope: !482)
!740 = !DILocation(line: 177, column: 29, scope: !482)
!741 = !DILocation(line: 179, column: 15, scope: !482)
!742 = !DILocation(line: 179, column: 22, scope: !482)
!743 = !DILocation(line: 179, column: 14, scope: !482)
!744 = !DILocation(line: 180, column: 29, scope: !482)
!745 = !DILocation(line: 180, column: 37, scope: !482)
!746 = !DILocation(line: 180, column: 42, scope: !482)
!747 = !DILocation(line: 180, column: 48, scope: !482)
!748 = !DILocation(line: 180, column: 55, scope: !482)
!749 = !DILocation(line: 180, column: 4, scope: !482)
!750 = !DILocation(line: 181, column: 4, scope: !482)
!751 = !DILocation(line: 181, column: 11, scope: !482)
!752 = !DILocation(line: 179, column: 12, scope: !482)
!753 = !DILocation(line: 183, column: 3, scope: !482)
!754 = !DILocation(line: 183, column: 89, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !213, line: 183, column: 87)
!756 = distinct !DILexicalBlock(scope: !757, file: !213, line: 183, column: 12)
!757 = distinct !DILexicalBlock(scope: !482, file: !213, line: 183, column: 6)
!758 = !DILocation(line: 183, column: 402, scope: !757)
!759 = !DILocation(line: 185, column: 31, scope: !482)
!760 = !DILocation(line: 185, column: 38, scope: !482)
!761 = !DILocation(line: 185, column: 13, scope: !482)
!762 = !DILocation(line: 185, column: 48, scope: !482)
!763 = !DILocation(line: 185, column: 51, scope: !482)
!764 = !{i8 0, i8 2}
!765 = !DILocation(line: 185, column: 11, scope: !482)
!766 = !DILocation(line: 186, column: 2, scope: !483)
!767 = !DILocation(line: 186, column: 2, scope: !482)
!768 = !DILocation(line: 188, column: 6, scope: !769)
!769 = distinct !DILexicalBlock(scope: !467, file: !213, line: 188, column: 6)
!770 = !DILocation(line: 188, column: 6, scope: !467)
!771 = !DILocation(line: 189, column: 3, scope: !772)
!772 = distinct !DILexicalBlock(scope: !769, file: !213, line: 188, column: 15)
!773 = !DILocation(line: 190, column: 2, scope: !772)
!774 = !DILocation(line: 191, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !213, line: 190, column: 9)
!776 = !DILocation(line: 235, column: 84, scope: !582, inlinedAt: !777)
!777 = distinct !DILocation(line: 191, column: 3, scope: !775)
!778 = !DILocation(line: 236, column: 23, scope: !582, inlinedAt: !777)
!779 = !DILocation(line: 238, column: 9, scope: !582, inlinedAt: !777)
!780 = !DILocation(line: 261, column: 22, scope: !582, inlinedAt: !777)
!781 = !DILocation(line: 88, column: 80, scope: !593, inlinedAt: !782)
!782 = distinct !DILocation(line: 261, column: 2, scope: !582, inlinedAt: !777)
!783 = !DILocation(line: 91, column: 6, scope: !600, inlinedAt: !782)
!784 = !DILocation(line: 91, column: 10, scope: !600, inlinedAt: !782)
!785 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !782)
!786 = !DILocation(line: 92, column: 3, scope: !604, inlinedAt: !782)
!787 = !DILocation(line: 94, column: 2, scope: !593, inlinedAt: !782)
!788 = !DILocation(line: 114, column: 1, scope: !593, inlinedAt: !782)
!789 = !DILocation(line: 194, column: 2, scope: !467)
!790 = !DILocation(line: 194, column: 7, scope: !791)
!791 = distinct !DILexicalBlock(scope: !467, file: !213, line: 194, column: 5)
!792 = !DILocation(line: 196, column: 2, scope: !467)
!793 = !DILocation(line: 197, column: 1, scope: !467)
!794 = distinct !DISubprogram(name: "new_prio_for_inheritance", scope: !213, file: !213, line: 80, type: !795, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !798)
!795 = !DISubroutineType(types: !796)
!796 = !{!797, !797, !797}
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 58, baseType: !91)
!798 = !{!799, !800, !801}
!799 = !DILocalVariable(name: "target", arg: 1, scope: !794, file: !213, line: 80, type: !797)
!800 = !DILocalVariable(name: "limit", arg: 2, scope: !794, file: !213, line: 80, type: !797)
!801 = !DILocalVariable(name: "new_prio", scope: !794, file: !213, line: 82, type: !91)
!802 = !DILocation(line: 80, column: 49, scope: !794)
!803 = !DILocation(line: 80, column: 65, scope: !794)
!804 = !DILocation(line: 82, column: 2, scope: !794)
!805 = !DILocation(line: 82, column: 6, scope: !794)
!806 = !DILocation(line: 82, column: 34, scope: !794)
!807 = !DILocation(line: 82, column: 42, scope: !794)
!808 = !DILocation(line: 82, column: 17, scope: !794)
!809 = !DILocation(line: 82, column: 51, scope: !794)
!810 = !DILocation(line: 82, column: 60, scope: !794)
!811 = !DILocation(line: 84, column: 41, scope: !794)
!812 = !DILocation(line: 84, column: 13, scope: !794)
!813 = !DILocation(line: 84, column: 11, scope: !794)
!814 = !DILocation(line: 86, column: 9, scope: !794)
!815 = !DILocation(line: 87, column: 1, scope: !794)
!816 = !DILocation(line: 86, column: 2, scope: !794)
!817 = distinct !DISubprogram(name: "z_is_prio_higher", scope: !818, file: !818, line: 213, type: !819, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !821)
!818 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!819 = !DISubroutineType(types: !820)
!820 = !{!89, !91, !91}
!821 = !{!822, !823}
!822 = !DILocalVariable(name: "prio", arg: 1, scope: !817, file: !818, line: 213, type: !91)
!823 = !DILocalVariable(name: "test_prio", arg: 2, scope: !817, file: !818, line: 213, type: !91)
!824 = !DILocation(line: 213, column: 42, scope: !817)
!825 = !DILocation(line: 213, column: 52, scope: !817)
!826 = !DILocation(line: 215, column: 38, scope: !817)
!827 = !DILocation(line: 215, column: 44, scope: !817)
!828 = !DILocation(line: 215, column: 9, scope: !817)
!829 = !DILocation(line: 215, column: 2, scope: !817)
!830 = distinct !DISubprogram(name: "adjust_owner_prio", scope: !213, file: !213, line: 89, type: !831, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!89, !425, !797}
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "mutex", arg: 1, scope: !830, file: !213, line: 89, type: !425)
!835 = !DILocalVariable(name: "new_prio", arg: 2, scope: !830, file: !213, line: 89, type: !797)
!836 = !DILocation(line: 89, column: 48, scope: !830)
!837 = !DILocation(line: 89, column: 63, scope: !830)
!838 = !DILocation(line: 91, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !830, file: !213, line: 91, column: 6)
!840 = !DILocation(line: 91, column: 13, scope: !839)
!841 = !DILocation(line: 91, column: 20, scope: !839)
!842 = !DILocation(line: 91, column: 25, scope: !839)
!843 = !DILocation(line: 91, column: 33, scope: !839)
!844 = !DILocation(line: 91, column: 30, scope: !839)
!845 = !DILocation(line: 91, column: 6, scope: !830)
!846 = !DILocation(line: 93, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !839, file: !213, line: 91, column: 43)
!848 = !DILocation(line: 93, column: 89, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !213, line: 93, column: 87)
!850 = distinct !DILexicalBlock(scope: !851, file: !213, line: 93, column: 12)
!851 = distinct !DILexicalBlock(scope: !847, file: !213, line: 93, column: 6)
!852 = !DILocation(line: 98, column: 21, scope: !847)
!853 = !DILocation(line: 98, column: 28, scope: !847)
!854 = !DILocation(line: 98, column: 35, scope: !847)
!855 = !DILocation(line: 98, column: 10, scope: !847)
!856 = !DILocation(line: 98, column: 3, scope: !847)
!857 = !DILocation(line: 100, column: 2, scope: !830)
!858 = !DILocation(line: 101, column: 1, scope: !830)
!859 = !DISubprogram(name: "z_pend_curr", scope: !818, file: !818, line: 46, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!860 = !DISubroutineType(types: !861)
!861 = !{!91, !500, !475, !129, !301}
!862 = distinct !DISubprogram(name: "z_waitq_head", scope: !451, file: !451, line: 52, type: !863, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{!108, !129}
!865 = !{!866}
!866 = !DILocalVariable(name: "w", arg: 1, scope: !862, file: !451, line: 52, type: !129)
!867 = !DILocation(line: 52, column: 56, scope: !862)
!868 = !DILocation(line: 54, column: 49, scope: !862)
!869 = !DILocation(line: 54, column: 52, scope: !862)
!870 = !DILocation(line: 54, column: 28, scope: !862)
!871 = !DILocation(line: 54, column: 2, scope: !862)
!872 = !DISubprogram(name: "z_reschedule", scope: !818, file: !818, line: 51, type: !583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!873 = distinct !DISubprogram(name: "z_impl_k_mutex_unlock", scope: !213, file: !213, line: 209, type: !423, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !874)
!874 = !{!875, !876, !877, !878}
!875 = !DILocalVariable(name: "mutex", arg: 1, scope: !873, file: !213, line: 209, type: !425)
!876 = !DILocalVariable(name: "new_owner", scope: !873, file: !213, line: 211, type: !108)
!877 = !DILocalVariable(name: "key", scope: !873, file: !213, line: 250, type: !475)
!878 = !DILabel(scope: !873, name: "k_mutex_unlock_return", file: !213, line: 278)
!879 = !DILocation(line: 209, column: 43, scope: !873)
!880 = !DILocation(line: 211, column: 2, scope: !873)
!881 = !DILocation(line: 211, column: 19, scope: !873)
!882 = !DILocation(line: 215, column: 2, scope: !873)
!883 = !DILocation(line: 215, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !873, file: !213, line: 215, column: 5)
!885 = !DILocation(line: 217, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !873, file: !213, line: 217, column: 6)
!887 = !DILocation(line: 217, column: 13, scope: !886)
!888 = !DILocation(line: 217, column: 19, scope: !886)
!889 = !DILocation(line: 217, column: 6, scope: !873)
!890 = !DILocation(line: 218, column: 3, scope: !891)
!891 = distinct !DILexicalBlock(scope: !886, file: !213, line: 217, column: 25)
!892 = !DILocation(line: 218, column: 8, scope: !893)
!893 = distinct !DILexicalBlock(scope: !891, file: !213, line: 218, column: 6)
!894 = !DILocation(line: 220, column: 3, scope: !891)
!895 = !DILocation(line: 225, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !873, file: !213, line: 225, column: 6)
!897 = !DILocation(line: 225, column: 13, scope: !896)
!898 = !DILocation(line: 225, column: 38, scope: !896)
!899 = !DILocation(line: 225, column: 19, scope: !896)
!900 = !DILocation(line: 225, column: 6, scope: !873)
!901 = !DILocation(line: 226, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !896, file: !213, line: 225, column: 47)
!903 = !DILocation(line: 226, column: 8, scope: !904)
!904 = distinct !DILexicalBlock(scope: !902, file: !213, line: 226, column: 6)
!905 = !DILocation(line: 228, column: 3, scope: !902)
!906 = !DILocation(line: 239, column: 2, scope: !873)
!907 = !DILocation(line: 239, column: 88, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !213, line: 239, column: 86)
!909 = distinct !DILexicalBlock(scope: !910, file: !213, line: 239, column: 11)
!910 = distinct !DILexicalBlock(scope: !873, file: !213, line: 239, column: 5)
!911 = !DILocation(line: 239, column: 412, scope: !910)
!912 = !DILocation(line: 245, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !873, file: !213, line: 245, column: 6)
!914 = !DILocation(line: 245, column: 13, scope: !913)
!915 = !DILocation(line: 245, column: 24, scope: !913)
!916 = !DILocation(line: 245, column: 6, scope: !873)
!917 = !DILocation(line: 246, column: 3, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !213, line: 245, column: 30)
!919 = !DILocation(line: 246, column: 10, scope: !918)
!920 = !DILocation(line: 246, column: 20, scope: !918)
!921 = !DILocation(line: 247, column: 3, scope: !918)
!922 = !DILocation(line: 250, column: 19, scope: !873)
!923 = !DILocation(line: 160, column: 94, scope: !497, inlinedAt: !924)
!924 = distinct !DILocation(line: 250, column: 25, scope: !873)
!925 = !DILocation(line: 162, column: 9, scope: !497, inlinedAt: !924)
!926 = !DILocation(line: 163, column: 19, scope: !497, inlinedAt: !924)
!927 = !DILocation(line: 44, column: 2, scope: !508, inlinedAt: !928)
!928 = distinct !DILocation(line: 169, column: 10, scope: !497, inlinedAt: !924)
!929 = !DILocation(line: 44, column: 15, scope: !508, inlinedAt: !928)
!930 = !DILocation(line: 48, column: 2, scope: !508, inlinedAt: !928)
!931 = !DILocation(line: 80, column: 9, scope: !508, inlinedAt: !928)
!932 = !DILocation(line: 81, column: 1, scope: !508, inlinedAt: !928)
!933 = !DILocation(line: 169, column: 8, scope: !497, inlinedAt: !924)
!934 = !DILocation(line: 171, column: 26, scope: !497, inlinedAt: !924)
!935 = !DILocation(line: 110, column: 94, scope: !523, inlinedAt: !936)
!936 = distinct !DILocation(line: 171, column: 2, scope: !497, inlinedAt: !924)
!937 = !DILocation(line: 112, column: 9, scope: !523, inlinedAt: !936)
!938 = !DILocation(line: 177, column: 27, scope: !497, inlinedAt: !924)
!939 = !DILocation(line: 121, column: 95, scope: !532, inlinedAt: !940)
!940 = distinct !DILocation(line: 177, column: 2, scope: !497, inlinedAt: !924)
!941 = !DILocation(line: 123, column: 9, scope: !532, inlinedAt: !940)
!942 = !DILocation(line: 179, column: 2, scope: !497, inlinedAt: !924)
!943 = !DILocation(line: 250, column: 25, scope: !873)
!944 = !DILocation(line: 252, column: 20, scope: !873)
!945 = !DILocation(line: 252, column: 27, scope: !873)
!946 = !DILocation(line: 252, column: 34, scope: !873)
!947 = !DILocation(line: 252, column: 2, scope: !873)
!948 = !DILocation(line: 255, column: 37, scope: !873)
!949 = !DILocation(line: 255, column: 44, scope: !873)
!950 = !DILocation(line: 255, column: 14, scope: !873)
!951 = !DILocation(line: 255, column: 12, scope: !873)
!952 = !DILocation(line: 257, column: 17, scope: !873)
!953 = !DILocation(line: 257, column: 2, scope: !873)
!954 = !DILocation(line: 257, column: 9, scope: !873)
!955 = !DILocation(line: 257, column: 15, scope: !873)
!956 = !DILocation(line: 259, column: 2, scope: !873)
!957 = !DILocation(line: 259, column: 88, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !213, line: 259, column: 86)
!959 = distinct !DILexicalBlock(scope: !960, file: !213, line: 259, column: 11)
!960 = distinct !DILexicalBlock(scope: !873, file: !213, line: 259, column: 5)
!961 = !DILocation(line: 259, column: 459, scope: !960)
!962 = !DILocation(line: 262, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !873, file: !213, line: 262, column: 6)
!964 = !DILocation(line: 262, column: 16, scope: !963)
!965 = !DILocation(line: 262, column: 6, scope: !873)
!966 = !DILocation(line: 268, column: 28, scope: !967)
!967 = distinct !DILexicalBlock(scope: !963, file: !213, line: 262, column: 22)
!968 = !DILocation(line: 268, column: 39, scope: !967)
!969 = !DILocation(line: 268, column: 44, scope: !967)
!970 = !DILocation(line: 268, column: 3, scope: !967)
!971 = !DILocation(line: 268, column: 10, scope: !967)
!972 = !DILocation(line: 268, column: 26, scope: !967)
!973 = !DILocation(line: 269, column: 32, scope: !967)
!974 = !DILocalVariable(name: "thread", arg: 1, scope: !975, file: !976, line: 59, type: !108)
!975 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !976, file: !976, line: 59, type: !977, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!976 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!977 = !DISubroutineType(types: !978)
!978 = !{null, !108, !155}
!979 = !{!974, !980}
!980 = !DILocalVariable(name: "value", arg: 2, scope: !975, file: !976, line: 59, type: !155)
!981 = !DILocation(line: 59, column: 47, scope: !975, inlinedAt: !982)
!982 = distinct !DILocation(line: 269, column: 3, scope: !967)
!983 = !DILocation(line: 59, column: 68, scope: !975, inlinedAt: !982)
!984 = !DILocation(line: 61, column: 35, scope: !975, inlinedAt: !982)
!985 = !DILocation(line: 61, column: 2, scope: !975, inlinedAt: !982)
!986 = !DILocation(line: 61, column: 10, scope: !975, inlinedAt: !982)
!987 = !DILocation(line: 61, column: 15, scope: !975, inlinedAt: !982)
!988 = !DILocation(line: 61, column: 33, scope: !975, inlinedAt: !982)
!989 = !DILocation(line: 270, column: 18, scope: !967)
!990 = !DILocation(line: 270, column: 3, scope: !967)
!991 = !DILocation(line: 271, column: 3, scope: !967)
!992 = !DILocation(line: 272, column: 2, scope: !967)
!993 = !DILocation(line: 273, column: 3, scope: !994)
!994 = distinct !DILexicalBlock(scope: !963, file: !213, line: 272, column: 9)
!995 = !DILocation(line: 273, column: 10, scope: !994)
!996 = !DILocation(line: 273, column: 21, scope: !994)
!997 = !DILocation(line: 274, column: 3, scope: !994)
!998 = !DILocation(line: 235, column: 84, scope: !582, inlinedAt: !999)
!999 = distinct !DILocation(line: 274, column: 3, scope: !994)
!1000 = !DILocation(line: 236, column: 23, scope: !582, inlinedAt: !999)
!1001 = !DILocation(line: 238, column: 9, scope: !582, inlinedAt: !999)
!1002 = !DILocation(line: 261, column: 22, scope: !582, inlinedAt: !999)
!1003 = !DILocation(line: 88, column: 80, scope: !593, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 261, column: 2, scope: !582, inlinedAt: !999)
!1005 = !DILocation(line: 91, column: 6, scope: !600, inlinedAt: !1004)
!1006 = !DILocation(line: 91, column: 10, scope: !600, inlinedAt: !1004)
!1007 = !DILocation(line: 91, column: 6, scope: !593, inlinedAt: !1004)
!1008 = !DILocation(line: 92, column: 3, scope: !604, inlinedAt: !1004)
!1009 = !DILocation(line: 94, column: 2, scope: !593, inlinedAt: !1004)
!1010 = !DILocation(line: 114, column: 1, scope: !593, inlinedAt: !1004)
!1011 = !DILocation(line: 262, column: 19, scope: !963)
!1012 = !DILocation(line: 278, column: 1, scope: !873)
!1013 = !DILocation(line: 279, column: 2, scope: !873)
!1014 = !DILocation(line: 279, column: 7, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !873, file: !213, line: 279, column: 5)
!1016 = !DILocation(line: 281, column: 2, scope: !873)
!1017 = !DILocation(line: 282, column: 1, scope: !873)
!1018 = !DISubprogram(name: "z_unpend_first_thread", scope: !818, file: !818, line: 53, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!1019 = !DISubprogram(name: "z_ready_thread", scope: !818, file: !818, line: 65, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !108}
!1022 = !DISubprogram(name: "z_timeout_expires", scope: !189, file: !189, line: 642, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!264, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!1027 = !DISubprogram(name: "z_timeout_remaining", scope: !189, file: !189, line: 643, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!1028 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !352, file: !352, line: 335, type: !1029, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1032)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!89, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "list", arg: 1, scope: !1028, file: !352, line: 335, type: !1031)
!1034 = !DILocation(line: 335, column: 55, scope: !1028)
!1035 = !DILocation(line: 335, column: 92, scope: !1028)
!1036 = !DILocation(line: 335, column: 71, scope: !1028)
!1037 = !DILocation(line: 335, column: 98, scope: !1028)
!1038 = !DILocation(line: 335, column: 63, scope: !1028)
!1039 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !352, file: !352, line: 255, type: !1040, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!356, !1031}
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "list", arg: 1, scope: !1039, file: !352, line: 255, type: !1031)
!1044 = !DILocation(line: 255, column: 64, scope: !1039)
!1045 = !DILocation(line: 257, column: 9, scope: !1039)
!1046 = !DILocation(line: 257, column: 15, scope: !1039)
!1047 = !DILocation(line: 257, column: 2, scope: !1039)
!1048 = distinct !DISubprogram(name: "sys_dlist_init", scope: !94, file: !94, line: 203, type: !1049, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1052)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!1052 = !{!1053}
!1053 = !DILocalVariable(name: "list", arg: 1, scope: !1048, file: !94, line: 203, type: !1051)
!1054 = !DILocation(line: 203, column: 48, scope: !1048)
!1055 = !DILocation(line: 205, column: 30, scope: !1048)
!1056 = !DILocation(line: 205, column: 2, scope: !1048)
!1057 = !DILocation(line: 205, column: 8, scope: !1048)
!1058 = !DILocation(line: 205, column: 13, scope: !1048)
!1059 = !DILocation(line: 206, column: 30, scope: !1048)
!1060 = !DILocation(line: 206, column: 2, scope: !1048)
!1061 = !DILocation(line: 206, column: 8, scope: !1048)
!1062 = !DILocation(line: 206, column: 13, scope: !1048)
!1063 = !DILocation(line: 207, column: 1, scope: !1048)
!1064 = distinct !DISubprogram(name: "z_get_new_prio_with_ceiling", scope: !818, file: !818, line: 188, type: !1065, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!91, !91}
!1067 = !{!1068}
!1068 = !DILocalVariable(name: "prio", arg: 1, scope: !1064, file: !818, line: 188, type: !91)
!1069 = !DILocation(line: 188, column: 51, scope: !1064)
!1070 = !DILocation(line: 190, column: 33, scope: !1064)
!1071 = !DILocation(line: 190, column: 9, scope: !1064)
!1072 = !DILocation(line: 190, column: 41, scope: !1064)
!1073 = !DILocation(line: 190, column: 2, scope: !1064)
!1074 = distinct !DISubprogram(name: "z_is_under_prio_ceiling", scope: !818, file: !818, line: 183, type: !1075, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!89, !91}
!1077 = !{!1078}
!1078 = !DILocalVariable(name: "prio", arg: 1, scope: !1074, file: !818, line: 183, type: !91)
!1079 = !DILocation(line: 183, column: 49, scope: !1074)
!1080 = !DILocation(line: 185, column: 9, scope: !1074)
!1081 = !DILocation(line: 185, column: 14, scope: !1074)
!1082 = !DILocation(line: 185, column: 2, scope: !1074)
!1083 = distinct !DISubprogram(name: "z_is_prio1_higher_than_prio2", scope: !818, file: !818, line: 208, type: !819, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1084)
!1084 = !{!1085, !1086}
!1085 = !DILocalVariable(name: "prio1", arg: 1, scope: !1083, file: !818, line: 208, type: !91)
!1086 = !DILocalVariable(name: "prio2", arg: 2, scope: !1083, file: !818, line: 208, type: !91)
!1087 = !DILocation(line: 208, column: 54, scope: !1083)
!1088 = !DILocation(line: 208, column: 65, scope: !1083)
!1089 = !DILocation(line: 210, column: 9, scope: !1083)
!1090 = !DILocation(line: 210, column: 17, scope: !1083)
!1091 = !DILocation(line: 210, column: 15, scope: !1083)
!1092 = !DILocation(line: 210, column: 2, scope: !1083)
!1093 = !DISubprogram(name: "z_set_prio", scope: !818, file: !818, line: 57, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !206)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!89, !108, !91}
!1096 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !94, file: !94, line: 303, type: !1097, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!92, !1051}
!1099 = !{!1100}
!1100 = !DILocalVariable(name: "list", arg: 1, scope: !1096, file: !94, line: 303, type: !1051)
!1101 = !DILocation(line: 303, column: 61, scope: !1096)
!1102 = !DILocation(line: 305, column: 28, scope: !1096)
!1103 = !DILocation(line: 305, column: 9, scope: !1096)
!1104 = !DILocation(line: 305, column: 49, scope: !1096)
!1105 = !DILocation(line: 305, column: 55, scope: !1096)
!1106 = !DILocation(line: 305, column: 2, scope: !1096)
!1107 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !94, file: !94, line: 275, type: !1108, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!89, !1051}
!1110 = !{!1111}
!1111 = !DILocalVariable(name: "list", arg: 1, scope: !1107, file: !94, line: 275, type: !1051)
!1112 = !DILocation(line: 275, column: 53, scope: !1107)
!1113 = !DILocation(line: 277, column: 9, scope: !1107)
!1114 = !DILocation(line: 277, column: 15, scope: !1107)
!1115 = !DILocation(line: 277, column: 23, scope: !1107)
!1116 = !DILocation(line: 277, column: 20, scope: !1107)
!1117 = !DILocation(line: 277, column: 2, scope: !1107)
