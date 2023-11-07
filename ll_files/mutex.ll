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
@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !223 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !228, metadata !DIExpression()), !dbg !229
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !230, metadata !DIExpression()), !dbg !231
  %5 = load ptr, ptr %3, align 4, !dbg !232
  %6 = load ptr, ptr %4, align 4, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !235 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !238, metadata !DIExpression()), !dbg !239
  %3 = load ptr, ptr %2, align 4, !dbg !240
  ret void, !dbg !241
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !242 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load i8, ptr %2, align 1, !dbg !247
  ret ptr null, !dbg !248
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !249 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !252, metadata !DIExpression()), !dbg !253
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !255
  %5 = load i8, ptr %3, align 1, !dbg !256
  %6 = load i32, ptr %4, align 4, !dbg !257
  ret ptr null, !dbg !258
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !259 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !267
  %3 = load ptr, ptr %2, align 4, !dbg !268
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !269
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !270
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !271
  ret i64 %6, !dbg !272
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !273 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr %2, align 4, !dbg !276
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !277
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !278
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !279
  ret i64 %6, !dbg !280
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !304
  %3 = load ptr, ptr %2, align 4, !dbg !305
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !306
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !307
  ret i64 %5, !dbg !308
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load ptr, ptr %2, align 4, !dbg !312
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !313
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !314
  ret i64 %5, !dbg !315
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !316 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !319, metadata !DIExpression()), !dbg !320
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !321, metadata !DIExpression()), !dbg !322
  %5 = load ptr, ptr %4, align 4, !dbg !323
  %6 = load ptr, ptr %3, align 4, !dbg !324
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !325
  store ptr %5, ptr %7, align 4, !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !328 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !331, metadata !DIExpression()), !dbg !332
  %3 = load ptr, ptr %2, align 4, !dbg !333
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !334
  %5 = load ptr, ptr %4, align 4, !dbg !334
  ret ptr %5, !dbg !335
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !358
  %3 = load ptr, ptr %2, align 4, !dbg !359
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !360
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !361
  %6 = zext i1 %5 to i32, !dbg !362
  ret i32 %6, !dbg !363
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !364 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !373, metadata !DIExpression()), !dbg !374
  %3 = load ptr, ptr %2, align 4, !dbg !375
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !376
  %5 = load i32, ptr %4, align 4, !dbg !376
  ret i32 %5, !dbg !377
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !378 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !396, metadata !DIExpression()), !dbg !397
  %3 = load ptr, ptr %2, align 4, !dbg !398
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !399
  %5 = load i32, ptr %4, align 4, !dbg !399
  %6 = load ptr, ptr %2, align 4, !dbg !400
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !401
  %8 = load i32, ptr %7, align 4, !dbg !401
  %9 = sub i32 %5, %8, !dbg !402
  ret i32 %9, !dbg !403
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !404 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !405, metadata !DIExpression()), !dbg !406
  %3 = load ptr, ptr %2, align 4, !dbg !407
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !408
  %5 = load i32, ptr %4, align 4, !dbg !408
  ret i32 %5, !dbg !409
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_mutex_init(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 4, !dbg !422
  %4 = getelementptr inbounds %struct.k_mutex, ptr %3, i32 0, i32 1, !dbg !423
  store ptr null, ptr %4, align 4, !dbg !424
  %5 = load ptr, ptr %2, align 4, !dbg !425
  %6 = getelementptr inbounds %struct.k_mutex, ptr %5, i32 0, i32 2, !dbg !426
  store i32 0, ptr %6, align 4, !dbg !427
  %7 = load ptr, ptr %2, align 4, !dbg !428
  %8 = getelementptr inbounds %struct.k_mutex, ptr %7, i32 0, i32 0, !dbg !429
  call void @z_waitq_init(ptr noundef %8), !dbg !430
  %9 = load ptr, ptr %2, align 4, !dbg !431
  call void @z_object_init(ptr noundef %9), !dbg !432
  br label %10, !dbg !433

10:                                               ; preds = %1
  br label %11, !dbg !434

11:                                               ; preds = %10
  ret i32 0, !dbg !436
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !437 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !441, metadata !DIExpression()), !dbg !442
  %3 = load ptr, ptr %2, align 4, !dbg !443
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !444
  call void @sys_dlist_init(ptr noundef %4), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !447 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !448, metadata !DIExpression()), !dbg !449
  %3 = load ptr, ptr %2, align 4, !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_mutex_lock(ptr noundef %0, [1 x i64] %1) #0 !dbg !452 {
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
  %32 = alloca %struct.k_timeout_t, align 8
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8, align 1
  %38 = alloca i32, align 4
  %39 = alloca ptr, align 4
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca ptr, align 4
  %43 = alloca i8, align 1
  %44 = alloca i32, align 4
  %45 = alloca ptr, align 4
  %46 = alloca %struct.z_spinlock_key, align 4
  %47 = alloca ptr, align 4
  %48 = alloca i8, align 1
  %49 = alloca i32, align 4
  %50 = alloca ptr, align 4
  %51 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0
  store [1 x i64] %1, ptr %51, align 8
  store ptr %0, ptr %24, align 4
  call void @llvm.dbg.declare(metadata ptr %24, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata ptr %23, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata ptr %25, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata ptr %26, metadata !461, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata ptr %27, metadata !467, metadata !DIExpression()), !dbg !468
  store i8 0, ptr %27, align 1, !dbg !468
  br label %52, !dbg !469

52:                                               ; preds = %2
  br label %53, !dbg !470

53:                                               ; preds = %52
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !472, metadata !DIExpression()), !dbg !477
  %54 = load ptr, ptr %19, align 4, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %18, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata ptr %11, metadata !482, metadata !DIExpression()), !dbg !487
  %55 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !489, !srcloc !490
  store i32 %55, ptr %11, align 4, !dbg !489
  %56 = load i32, ptr %11, align 4, !dbg !491
  store i32 %56, ptr %18, align 4, !dbg !492
  %57 = load ptr, ptr %19, align 4, !dbg !493
  store ptr %57, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !494, metadata !DIExpression()), !dbg !498
  %58 = load ptr, ptr %9, align 4, !dbg !500
  %59 = load ptr, ptr %19, align 4, !dbg !501
  store ptr %59, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !502, metadata !DIExpression()), !dbg !504
  %60 = load ptr, ptr %7, align 4, !dbg !506
  %61 = load i32, ptr %18, align 4, !dbg !507
  %62 = getelementptr inbounds %struct.z_spinlock_key, ptr %28, i32 0, i32 0, !dbg !508
  store i32 %61, ptr %62, align 4, !dbg !508
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %28, i32 4, i1 false), !dbg !508
  %63 = load ptr, ptr %24, align 4, !dbg !509
  %64 = getelementptr inbounds %struct.k_mutex, ptr %63, i32 0, i32 2, !dbg !511
  %65 = load i32, ptr %64, align 4, !dbg !511
  %66 = icmp eq i32 %65, 0, !dbg !512
  br i1 %66, label %73, label %67, !dbg !513

67:                                               ; preds = %53
  %68 = load ptr, ptr %24, align 4, !dbg !514
  %69 = getelementptr inbounds %struct.k_mutex, ptr %68, i32 0, i32 1, !dbg !515
  %70 = load ptr, ptr %69, align 4, !dbg !515
  %71 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !516
  %72 = icmp eq ptr %70, %71, !dbg !517
  br label %73, !dbg !513

73:                                               ; preds = %67, %53
  %74 = phi i1 [ true, %53 ], [ %72, %67 ]
  %75 = xor i1 %74, true, !dbg !518
  %76 = xor i1 %75, true, !dbg !519
  %77 = zext i1 %76 to i32, !dbg !520
  %78 = icmp ne i32 %77, 0, !dbg !521
  br i1 %78, label %79, label %118, !dbg !522

79:                                               ; preds = %73
  %80 = load ptr, ptr %24, align 4, !dbg !523
  %81 = getelementptr inbounds %struct.k_mutex, ptr %80, i32 0, i32 2, !dbg !525
  %82 = load i32, ptr %81, align 4, !dbg !525
  %83 = icmp eq i32 %82, 0, !dbg !526
  br i1 %83, label %84, label %91, !dbg !527

84:                                               ; preds = %79
  %85 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !528
  %86 = getelementptr inbounds %struct.k_thread, ptr %85, i32 0, i32 0, !dbg !529
  %87 = getelementptr inbounds %struct._thread_base, ptr %86, i32 0, i32 4, !dbg !530
  %88 = getelementptr inbounds %struct.anon, ptr %87, i32 0, i32 0, !dbg !530
  %89 = load i8, ptr %88, align 2, !dbg !530
  %90 = sext i8 %89 to i32, !dbg !531
  br label %95, !dbg !527

91:                                               ; preds = %79
  %92 = load ptr, ptr %24, align 4, !dbg !532
  %93 = getelementptr inbounds %struct.k_mutex, ptr %92, i32 0, i32 3, !dbg !533
  %94 = load i32, ptr %93, align 4, !dbg !533
  br label %95, !dbg !527

95:                                               ; preds = %91, %84
  %96 = phi i32 [ %90, %84 ], [ %94, %91 ], !dbg !527
  %97 = load ptr, ptr %24, align 4, !dbg !534
  %98 = getelementptr inbounds %struct.k_mutex, ptr %97, i32 0, i32 3, !dbg !535
  store i32 %96, ptr %98, align 4, !dbg !536
  %99 = load ptr, ptr %24, align 4, !dbg !537
  %100 = getelementptr inbounds %struct.k_mutex, ptr %99, i32 0, i32 2, !dbg !538
  %101 = load i32, ptr %100, align 4, !dbg !539
  %102 = add i32 %101, 1, !dbg !539
  store i32 %102, ptr %100, align 4, !dbg !539
  %103 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !540
  %104 = load ptr, ptr %24, align 4, !dbg !541
  %105 = getelementptr inbounds %struct.k_mutex, ptr %104, i32 0, i32 1, !dbg !542
  store ptr %103, ptr %105, align 4, !dbg !543
  br label %106, !dbg !544

106:                                              ; preds = %95
  br label %107, !dbg !545

107:                                              ; preds = %106
  %108 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !549
  %109 = load [1 x i32], ptr %108, align 4, !dbg !549
  store [1 x i32] %109, ptr %12, align 4
  store ptr @lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !550, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata ptr %12, metadata !556, metadata !DIExpression()), !dbg !557
  %110 = load ptr, ptr %13, align 4, !dbg !558
  %111 = load i32, ptr %12, align 4, !dbg !559
  store i32 %111, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !560, metadata !DIExpression()), !dbg !564
  %112 = load i32, ptr %5, align 4, !dbg !566
  %113 = icmp ne i32 %112, 0, !dbg !568
  br i1 %113, label %114, label %115, !dbg !569

114:                                              ; preds = %107
  br label %arch_irq_unlock.exit, !dbg !570

115:                                              ; preds = %107
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !572, !srcloc !573
  br label %arch_irq_unlock.exit, !dbg !574

arch_irq_unlock.exit:                             ; preds = %114, %115
  br label %116, !dbg !575

116:                                              ; preds = %arch_irq_unlock.exit
  br label %117, !dbg !576

117:                                              ; preds = %116
  store i32 0, ptr %22, align 4, !dbg !578
  br label %262, !dbg !578

118:                                              ; preds = %73
  %119 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !579
  %120 = load i64, ptr %119, align 8, !dbg !579
  %121 = getelementptr inbounds %struct.k_timeout_t, ptr %32, i32 0, i32 0, !dbg !581
  store i64 0, ptr %121, align 8, !dbg !581
  %122 = icmp eq i64 %120, 0, !dbg !582
  %123 = xor i1 %122, true, !dbg !583
  %124 = xor i1 %123, true, !dbg !584
  %125 = zext i1 %124 to i32, !dbg !585
  %126 = icmp ne i32 %125, 0, !dbg !586
  br i1 %126, label %127, label %138, !dbg !587

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !588
  %129 = load [1 x i32], ptr %128, align 4, !dbg !588
  store [1 x i32] %129, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !550, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata ptr %14, metadata !556, metadata !DIExpression()), !dbg !592
  %130 = load ptr, ptr %15, align 4, !dbg !593
  %131 = load i32, ptr %14, align 4, !dbg !594
  store i32 %131, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !560, metadata !DIExpression()), !dbg !595
  %132 = load i32, ptr %4, align 4, !dbg !597
  %133 = icmp ne i32 %132, 0, !dbg !598
  br i1 %133, label %134, label %135, !dbg !599

134:                                              ; preds = %127
  br label %arch_irq_unlock.exit1, !dbg !600

135:                                              ; preds = %127
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !601, !srcloc !573
  br label %arch_irq_unlock.exit1, !dbg !602

arch_irq_unlock.exit1:                            ; preds = %134, %135
  br label %136, !dbg !603

136:                                              ; preds = %arch_irq_unlock.exit1
  br label %137, !dbg !604

137:                                              ; preds = %136
  store i32 -16, ptr %22, align 4, !dbg !606
  br label %262, !dbg !606

138:                                              ; preds = %118
  br label %139, !dbg !607

139:                                              ; preds = %138
  br label %140, !dbg !608

140:                                              ; preds = %139
  %141 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !610
  %142 = getelementptr inbounds %struct.k_thread, ptr %141, i32 0, i32 0, !dbg !611
  %143 = getelementptr inbounds %struct._thread_base, ptr %142, i32 0, i32 4, !dbg !612
  %144 = getelementptr inbounds %struct.anon, ptr %143, i32 0, i32 0, !dbg !612
  %145 = load i8, ptr %144, align 2, !dbg !612
  %146 = sext i8 %145 to i32, !dbg !613
  %147 = load ptr, ptr %24, align 4, !dbg !614
  %148 = getelementptr inbounds %struct.k_mutex, ptr %147, i32 0, i32 1, !dbg !615
  %149 = load ptr, ptr %148, align 4, !dbg !615
  %150 = getelementptr inbounds %struct.k_thread, ptr %149, i32 0, i32 0, !dbg !616
  %151 = getelementptr inbounds %struct._thread_base, ptr %150, i32 0, i32 4, !dbg !617
  %152 = getelementptr inbounds %struct.anon, ptr %151, i32 0, i32 0, !dbg !617
  %153 = load i8, ptr %152, align 2, !dbg !617
  %154 = sext i8 %153 to i32, !dbg !614
  %155 = call i32 @new_prio_for_inheritance(i32 noundef %146, i32 noundef %154), !dbg !618
  store i32 %155, ptr %25, align 4, !dbg !619
  br label %156, !dbg !620

156:                                              ; preds = %140
  br label %157, !dbg !621

157:                                              ; preds = %156
  %158 = load i32, ptr %25, align 4, !dbg !625
  %159 = load ptr, ptr %24, align 4, !dbg !627
  %160 = getelementptr inbounds %struct.k_mutex, ptr %159, i32 0, i32 1, !dbg !628
  %161 = load ptr, ptr %160, align 4, !dbg !628
  %162 = getelementptr inbounds %struct.k_thread, ptr %161, i32 0, i32 0, !dbg !629
  %163 = getelementptr inbounds %struct._thread_base, ptr %162, i32 0, i32 4, !dbg !630
  %164 = getelementptr inbounds %struct.anon, ptr %163, i32 0, i32 0, !dbg !630
  %165 = load i8, ptr %164, align 2, !dbg !630
  %166 = sext i8 %165 to i32, !dbg !627
  %167 = call zeroext i1 @z_is_prio_higher(i32 noundef %158, i32 noundef %166), !dbg !631
  br i1 %167, label %168, label %173, !dbg !632

168:                                              ; preds = %157
  %169 = load ptr, ptr %24, align 4, !dbg !633
  %170 = load i32, ptr %25, align 4, !dbg !635
  %171 = call zeroext i1 @adjust_owner_prio(ptr noundef %169, i32 noundef %170), !dbg !636
  %172 = zext i1 %171 to i8, !dbg !637
  store i8 %172, ptr %27, align 1, !dbg !637
  br label %173, !dbg !638

173:                                              ; preds = %168, %157
  call void @llvm.dbg.declare(metadata ptr %36, metadata !639, metadata !DIExpression()), !dbg !640
  %174 = load ptr, ptr %24, align 4, !dbg !641
  %175 = getelementptr inbounds %struct.k_mutex, ptr %174, i32 0, i32 0, !dbg !642
  %176 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !643
  %177 = load [1 x i32], ptr %176, align 4, !dbg !643
  %178 = getelementptr inbounds %struct.k_timeout_t, ptr %23, i32 0, i32 0, !dbg !643
  %179 = load [1 x i64], ptr %178, align 8, !dbg !643
  %180 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %177, ptr noundef %175, [1 x i64] %179), !dbg !643
  store i32 %180, ptr %36, align 4, !dbg !640
  br label %181, !dbg !644

181:                                              ; preds = %173
  br label %182, !dbg !645

182:                                              ; preds = %181
  br label %183, !dbg !649

183:                                              ; preds = %182
  br label %184, !dbg !650

184:                                              ; preds = %183
  %185 = load i32, ptr %36, align 4, !dbg !654
  %186 = icmp eq i32 %185, 0, !dbg !656
  br i1 %186, label %187, label %190, !dbg !657

187:                                              ; preds = %184
  br label %188, !dbg !658

188:                                              ; preds = %187
  br label %189, !dbg !660

189:                                              ; preds = %188
  store i32 0, ptr %22, align 4, !dbg !662
  br label %262, !dbg !662

190:                                              ; preds = %184
  br label %191, !dbg !663

191:                                              ; preds = %190
  br label %192, !dbg !664

192:                                              ; preds = %191
  store ptr @lock, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !472, metadata !DIExpression()), !dbg !668
  %193 = load ptr, ptr %21, align 4, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %20, metadata !480, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.declare(metadata ptr %10, metadata !482, metadata !DIExpression()), !dbg !672
  %194 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !674, !srcloc !490
  store i32 %194, ptr %10, align 4, !dbg !674
  %195 = load i32, ptr %10, align 4, !dbg !675
  store i32 %195, ptr %20, align 4, !dbg !676
  %196 = load ptr, ptr %21, align 4, !dbg !677
  store ptr %196, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !494, metadata !DIExpression()), !dbg !678
  %197 = load ptr, ptr %8, align 4, !dbg !680
  %198 = load ptr, ptr %21, align 4, !dbg !681
  store ptr %198, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !502, metadata !DIExpression()), !dbg !682
  %199 = load ptr, ptr %6, align 4, !dbg !684
  %200 = load i32, ptr %20, align 4, !dbg !685
  %201 = getelementptr inbounds %struct.z_spinlock_key, ptr %46, i32 0, i32 0, !dbg !686
  store i32 %200, ptr %201, align 4, !dbg !686
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %26, ptr align 4 %46, i32 4, i1 false), !dbg !686
  %202 = load ptr, ptr %24, align 4, !dbg !687
  %203 = getelementptr inbounds %struct.k_mutex, ptr %202, i32 0, i32 1, !dbg !689
  %204 = load ptr, ptr %203, align 4, !dbg !689
  %205 = icmp ne ptr %204, null, !dbg !690
  %206 = xor i1 %205, true, !dbg !691
  %207 = xor i1 %206, true, !dbg !692
  %208 = zext i1 %207 to i32, !dbg !693
  %209 = icmp ne i32 %208, 0, !dbg !694
  br i1 %209, label %210, label %244, !dbg !695

210:                                              ; preds = %192
  call void @llvm.dbg.declare(metadata ptr %47, metadata !696, metadata !DIExpression()), !dbg !698
  %211 = load ptr, ptr %24, align 4, !dbg !699
  %212 = getelementptr inbounds %struct.k_mutex, ptr %211, i32 0, i32 0, !dbg !700
  %213 = call ptr @z_waitq_head(ptr noundef %212), !dbg !701
  store ptr %213, ptr %47, align 4, !dbg !698
  %214 = load ptr, ptr %47, align 4, !dbg !702
  %215 = icmp ne ptr %214, null, !dbg !703
  br i1 %215, label %216, label %227, !dbg !704

216:                                              ; preds = %210
  %217 = load ptr, ptr %47, align 4, !dbg !705
  %218 = getelementptr inbounds %struct.k_thread, ptr %217, i32 0, i32 0, !dbg !706
  %219 = getelementptr inbounds %struct._thread_base, ptr %218, i32 0, i32 4, !dbg !707
  %220 = getelementptr inbounds %struct.anon, ptr %219, i32 0, i32 0, !dbg !707
  %221 = load i8, ptr %220, align 2, !dbg !707
  %222 = sext i8 %221 to i32, !dbg !705
  %223 = load ptr, ptr %24, align 4, !dbg !708
  %224 = getelementptr inbounds %struct.k_mutex, ptr %223, i32 0, i32 3, !dbg !709
  %225 = load i32, ptr %224, align 4, !dbg !709
  %226 = call i32 @new_prio_for_inheritance(i32 noundef %222, i32 noundef %225), !dbg !710
  br label %231, !dbg !704

227:                                              ; preds = %210
  %228 = load ptr, ptr %24, align 4, !dbg !711
  %229 = getelementptr inbounds %struct.k_mutex, ptr %228, i32 0, i32 3, !dbg !712
  %230 = load i32, ptr %229, align 4, !dbg !712
  br label %231, !dbg !704

231:                                              ; preds = %227, %216
  %232 = phi i32 [ %226, %216 ], [ %230, %227 ], !dbg !704
  store i32 %232, ptr %25, align 4, !dbg !713
  br label %233, !dbg !714

233:                                              ; preds = %231
  br label %234, !dbg !715

234:                                              ; preds = %233
  %235 = load ptr, ptr %24, align 4, !dbg !719
  %236 = load i32, ptr %25, align 4, !dbg !720
  %237 = call zeroext i1 @adjust_owner_prio(ptr noundef %235, i32 noundef %236), !dbg !721
  br i1 %237, label %241, label %238, !dbg !722

238:                                              ; preds = %234
  %239 = load i8, ptr %27, align 1, !dbg !723
  %240 = trunc i8 %239 to i1, !dbg !723
  br label %241, !dbg !722

241:                                              ; preds = %238, %234
  %242 = phi i1 [ true, %234 ], [ %240, %238 ]
  %243 = zext i1 %242 to i8, !dbg !724
  store i8 %243, ptr %27, align 1, !dbg !724
  br label %244, !dbg !725

244:                                              ; preds = %241, %192
  %245 = load i8, ptr %27, align 1, !dbg !726
  %246 = trunc i8 %245 to i1, !dbg !726
  br i1 %246, label %247, label %250, !dbg !728

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !729
  %249 = load [1 x i32], ptr %248, align 4, !dbg !729
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %249), !dbg !729
  br label %259, !dbg !731

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.z_spinlock_key, ptr %26, i32 0, i32 0, !dbg !732
  %252 = load [1 x i32], ptr %251, align 4, !dbg !732
  store [1 x i32] %252, ptr %16, align 4
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !550, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.declare(metadata ptr %16, metadata !556, metadata !DIExpression()), !dbg !736
  %253 = load ptr, ptr %17, align 4, !dbg !737
  %254 = load i32, ptr %16, align 4, !dbg !738
  store i32 %254, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !560, metadata !DIExpression()), !dbg !739
  %255 = load i32, ptr %3, align 4, !dbg !741
  %256 = icmp ne i32 %255, 0, !dbg !742
  br i1 %256, label %257, label %258, !dbg !743

257:                                              ; preds = %250
  br label %arch_irq_unlock.exit2, !dbg !744

258:                                              ; preds = %250
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !745, !srcloc !573
  br label %arch_irq_unlock.exit2, !dbg !746

arch_irq_unlock.exit2:                            ; preds = %257, %258
  br label %259

259:                                              ; preds = %arch_irq_unlock.exit2, %247
  br label %260, !dbg !747

260:                                              ; preds = %259
  br label %261, !dbg !748

261:                                              ; preds = %260
  store i32 -11, ptr %22, align 4, !dbg !750
  br label %262, !dbg !750

262:                                              ; preds = %261, %189, %137, %117
  %263 = load i32, ptr %22, align 4, !dbg !751
  ret i32 %263, !dbg !751
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @new_prio_for_inheritance(i32 noundef %0, i32 noundef %1) #0 !dbg !752 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !756, metadata !DIExpression()), !dbg !757
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata ptr %5, metadata !760, metadata !DIExpression()), !dbg !761
  %6 = load i32, ptr %3, align 4, !dbg !762
  %7 = load i32, ptr %4, align 4, !dbg !763
  %8 = call zeroext i1 @z_is_prio_higher(i32 noundef %6, i32 noundef %7), !dbg !764
  br i1 %8, label %9, label %11, !dbg !764

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4, !dbg !765
  br label %13, !dbg !764

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4, !dbg !766
  br label %13, !dbg !764

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ], !dbg !764
  store i32 %14, ptr %5, align 4, !dbg !761
  %15 = load i32, ptr %5, align 4, !dbg !767
  %16 = call i32 @z_get_new_prio_with_ceiling(i32 noundef %15), !dbg !768
  store i32 %16, ptr %5, align 4, !dbg !769
  %17 = load i32, ptr %5, align 4, !dbg !770
  ret i32 %17, !dbg !771
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_prio_higher(i32 noundef %0, i32 noundef %1) #0 !dbg !772 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !776, metadata !DIExpression()), !dbg !777
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !778, metadata !DIExpression()), !dbg !779
  %5 = load i32, ptr %3, align 4, !dbg !780
  %6 = load i32, ptr %4, align 4, !dbg !781
  %7 = call zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %5, i32 noundef %6), !dbg !782
  ret i1 %7, !dbg !783
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @adjust_owner_prio(ptr noundef %0, i32 noundef %1) #0 !dbg !784 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !789, metadata !DIExpression()), !dbg !790
  %9 = load ptr, ptr %4, align 4, !dbg !791
  %10 = getelementptr inbounds %struct.k_mutex, ptr %9, i32 0, i32 1, !dbg !793
  %11 = load ptr, ptr %10, align 4, !dbg !793
  %12 = getelementptr inbounds %struct.k_thread, ptr %11, i32 0, i32 0, !dbg !794
  %13 = getelementptr inbounds %struct._thread_base, ptr %12, i32 0, i32 4, !dbg !795
  %14 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 0, !dbg !795
  %15 = load i8, ptr %14, align 2, !dbg !795
  %16 = sext i8 %15 to i32, !dbg !791
  %17 = load i32, ptr %5, align 4, !dbg !796
  %18 = icmp ne i32 %16, %17, !dbg !797
  br i1 %18, label %19, label %27, !dbg !798

19:                                               ; preds = %2
  br label %20, !dbg !799

20:                                               ; preds = %19
  br label %21, !dbg !801

21:                                               ; preds = %20
  %22 = load ptr, ptr %4, align 4, !dbg !805
  %23 = getelementptr inbounds %struct.k_mutex, ptr %22, i32 0, i32 1, !dbg !806
  %24 = load ptr, ptr %23, align 4, !dbg !806
  %25 = load i32, ptr %5, align 4, !dbg !807
  %26 = call zeroext i1 @z_set_prio(ptr noundef %24, i32 noundef %25), !dbg !808
  store i1 %26, ptr %3, align 1, !dbg !809
  br label %28, !dbg !809

27:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !810
  br label %28, !dbg !810

28:                                               ; preds = %27, %21
  %29 = load i1, ptr %3, align 1, !dbg !811
  ret i1 %29, !dbg !811
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !812 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !815, metadata !DIExpression()), !dbg !816
  %3 = load ptr, ptr %2, align 4, !dbg !817
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !818
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4), !dbg !819
  ret ptr %5, !dbg !820
}

declare void @z_reschedule(ptr noundef, [1 x i32]) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_mutex_unlock(ptr noundef %0) #0 !dbg !821 {
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
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !822, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.declare(metadata ptr %14, metadata !824, metadata !DIExpression()), !dbg !825
  br label %22, !dbg !826

22:                                               ; preds = %1
  br label %23, !dbg !827

23:                                               ; preds = %22
  %24 = load ptr, ptr %13, align 4, !dbg !829
  %25 = getelementptr inbounds %struct.k_mutex, ptr %24, i32 0, i32 1, !dbg !831
  %26 = load ptr, ptr %25, align 4, !dbg !831
  %27 = icmp eq ptr %26, null, !dbg !832
  br i1 %27, label %28, label %31, !dbg !833

28:                                               ; preds = %23
  br label %29, !dbg !834

29:                                               ; preds = %28
  br label %30, !dbg !836

30:                                               ; preds = %29
  store i32 -5, ptr %12, align 4, !dbg !838
  br label %109, !dbg !838

31:                                               ; preds = %23
  %32 = load ptr, ptr %13, align 4, !dbg !839
  %33 = getelementptr inbounds %struct.k_mutex, ptr %32, i32 0, i32 1, !dbg !841
  %34 = load ptr, ptr %33, align 4, !dbg !841
  %35 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !842
  %36 = icmp ne ptr %34, %35, !dbg !843
  br i1 %36, label %37, label %40, !dbg !844

37:                                               ; preds = %31
  br label %38, !dbg !845

38:                                               ; preds = %37
  br label %39, !dbg !847

39:                                               ; preds = %38
  store i32 -1, ptr %12, align 4, !dbg !849
  br label %109, !dbg !849

40:                                               ; preds = %31
  br label %41, !dbg !850

41:                                               ; preds = %40
  br label %42, !dbg !851

42:                                               ; preds = %41
  %43 = load ptr, ptr %13, align 4, !dbg !855
  %44 = getelementptr inbounds %struct.k_mutex, ptr %43, i32 0, i32 2, !dbg !857
  %45 = load i32, ptr %44, align 4, !dbg !857
  %46 = icmp ugt i32 %45, 1, !dbg !858
  br i1 %46, label %47, label %52, !dbg !859

47:                                               ; preds = %42
  %48 = load ptr, ptr %13, align 4, !dbg !860
  %49 = getelementptr inbounds %struct.k_mutex, ptr %48, i32 0, i32 2, !dbg !862
  %50 = load i32, ptr %49, align 4, !dbg !863
  %51 = add i32 %50, -1, !dbg !863
  store i32 %51, ptr %49, align 4, !dbg !863
  br label %106, !dbg !864

52:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %18, metadata !865, metadata !DIExpression()), !dbg !866
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !472, metadata !DIExpression()), !dbg !867
  %53 = load ptr, ptr %11, align 4, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %10, metadata !480, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata ptr %5, metadata !482, metadata !DIExpression()), !dbg !871
  %54 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !873, !srcloc !490
  store i32 %54, ptr %5, align 4, !dbg !873
  %55 = load i32, ptr %5, align 4, !dbg !874
  store i32 %55, ptr %10, align 4, !dbg !875
  %56 = load ptr, ptr %11, align 4, !dbg !876
  store ptr %56, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !494, metadata !DIExpression()), !dbg !877
  %57 = load ptr, ptr %4, align 4, !dbg !879
  %58 = load ptr, ptr %11, align 4, !dbg !880
  store ptr %58, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !881
  %59 = load ptr, ptr %3, align 4, !dbg !883
  %60 = load i32, ptr %10, align 4, !dbg !884
  %61 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !885
  store i32 %60, ptr %61, align 4, !dbg !885
  %62 = load ptr, ptr %13, align 4, !dbg !886
  %63 = load ptr, ptr %13, align 4, !dbg !887
  %64 = getelementptr inbounds %struct.k_mutex, ptr %63, i32 0, i32 3, !dbg !888
  %65 = load i32, ptr %64, align 4, !dbg !888
  %66 = call zeroext i1 @adjust_owner_prio(ptr noundef %62, i32 noundef %65), !dbg !889
  %67 = load ptr, ptr %13, align 4, !dbg !890
  %68 = getelementptr inbounds %struct.k_mutex, ptr %67, i32 0, i32 0, !dbg !891
  %69 = call ptr @z_unpend_first_thread(ptr noundef %68), !dbg !892
  store ptr %69, ptr %14, align 4, !dbg !893
  %70 = load ptr, ptr %14, align 4, !dbg !894
  %71 = load ptr, ptr %13, align 4, !dbg !895
  %72 = getelementptr inbounds %struct.k_mutex, ptr %71, i32 0, i32 1, !dbg !896
  store ptr %70, ptr %72, align 4, !dbg !897
  br label %73, !dbg !898

73:                                               ; preds = %52
  br label %74, !dbg !899

74:                                               ; preds = %73
  %75 = load ptr, ptr %14, align 4, !dbg !903
  %76 = icmp ne ptr %75, null, !dbg !905
  br i1 %76, label %77, label %94, !dbg !906

77:                                               ; preds = %74
  %78 = load ptr, ptr %14, align 4, !dbg !907
  %79 = getelementptr inbounds %struct.k_thread, ptr %78, i32 0, i32 0, !dbg !909
  %80 = getelementptr inbounds %struct._thread_base, ptr %79, i32 0, i32 4, !dbg !910
  %81 = getelementptr inbounds %struct.anon, ptr %80, i32 0, i32 0, !dbg !910
  %82 = load i8, ptr %81, align 2, !dbg !910
  %83 = sext i8 %82 to i32, !dbg !907
  %84 = load ptr, ptr %13, align 4, !dbg !911
  %85 = getelementptr inbounds %struct.k_mutex, ptr %84, i32 0, i32 3, !dbg !912
  store i32 %83, ptr %85, align 4, !dbg !913
  %86 = load ptr, ptr %14, align 4, !dbg !914
  store ptr %86, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !915, metadata !DIExpression()), !dbg !920
  store i32 0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !922, metadata !DIExpression()), !dbg !923
  %87 = load i32, ptr %7, align 4, !dbg !924
  %88 = load ptr, ptr %6, align 4, !dbg !925
  %89 = getelementptr inbounds %struct.k_thread, ptr %88, i32 0, i32 6, !dbg !926
  %90 = getelementptr inbounds %struct._thread_arch, ptr %89, i32 0, i32 1, !dbg !927
  store i32 %87, ptr %90, align 4, !dbg !928
  %91 = load ptr, ptr %14, align 4, !dbg !929
  call void @z_ready_thread(ptr noundef %91), !dbg !930
  %92 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !931
  %93 = load [1 x i32], ptr %92, align 4, !dbg !931
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %93), !dbg !931
  br label %105, !dbg !932

94:                                               ; preds = %74
  %95 = load ptr, ptr %13, align 4, !dbg !933
  %96 = getelementptr inbounds %struct.k_mutex, ptr %95, i32 0, i32 2, !dbg !935
  store i32 0, ptr %96, align 4, !dbg !936
  %97 = getelementptr inbounds %struct.z_spinlock_key, ptr %18, i32 0, i32 0, !dbg !937
  %98 = load [1 x i32], ptr %97, align 4, !dbg !937
  store [1 x i32] %98, ptr %8, align 4
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !550, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.declare(metadata ptr %8, metadata !556, metadata !DIExpression()), !dbg !940
  %99 = load ptr, ptr %9, align 4, !dbg !941
  %100 = load i32, ptr %8, align 4, !dbg !942
  store i32 %100, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !560, metadata !DIExpression()), !dbg !943
  %101 = load i32, ptr %2, align 4, !dbg !945
  %102 = icmp ne i32 %101, 0, !dbg !946
  br i1 %102, label %103, label %104, !dbg !947

103:                                              ; preds = %94
  br label %arch_irq_unlock.exit, !dbg !948

104:                                              ; preds = %94
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !949, !srcloc !573
  br label %arch_irq_unlock.exit, !dbg !950

arch_irq_unlock.exit:                             ; preds = %103, %104
  br label %105

105:                                              ; preds = %arch_irq_unlock.exit, %77
  br label %106, !dbg !951

106:                                              ; preds = %105, %47
  call void @llvm.dbg.label(metadata !952), !dbg !953
  br label %107, !dbg !954

107:                                              ; preds = %106
  br label %108, !dbg !955

108:                                              ; preds = %107
  store i32 0, ptr %12, align 4, !dbg !957
  br label %109, !dbg !957

109:                                              ; preds = %108, %39, %30
  %110 = load i32, ptr %12, align 4, !dbg !958
  ret i32 %110, !dbg !958
}

declare ptr @z_unpend_first_thread(ptr noundef) #3

declare void @z_ready_thread(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !959 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !963, metadata !DIExpression()), !dbg !964
  %3 = load ptr, ptr %2, align 4, !dbg !965
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !966
  %5 = icmp eq ptr %4, null, !dbg !967
  ret i1 %5, !dbg !968
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !969 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !972, metadata !DIExpression()), !dbg !973
  %3 = load ptr, ptr %2, align 4, !dbg !974
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !975
  %5 = load ptr, ptr %4, align 4, !dbg !975
  ret ptr %5, !dbg !976
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !977 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !981, metadata !DIExpression()), !dbg !982
  %3 = load ptr, ptr %2, align 4, !dbg !983
  %4 = load ptr, ptr %2, align 4, !dbg !984
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !985
  store ptr %3, ptr %5, align 4, !dbg !986
  %6 = load ptr, ptr %2, align 4, !dbg !987
  %7 = load ptr, ptr %2, align 4, !dbg !988
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !989
  store ptr %6, ptr %8, align 4, !dbg !990
  ret void, !dbg !991
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_get_new_prio_with_ceiling(i32 noundef %0) #0 !dbg !992 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !995, metadata !DIExpression()), !dbg !996
  %3 = load i32, ptr %2, align 4, !dbg !997
  %4 = call zeroext i1 @z_is_under_prio_ceiling(i32 noundef %3), !dbg !998
  br i1 %4, label %5, label %7, !dbg !998

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !dbg !999
  br label %8, !dbg !998

7:                                                ; preds = %1
  br label %8, !dbg !998

8:                                                ; preds = %7, %5
  %9 = phi i32 [ %6, %5 ], [ -127, %7 ], !dbg !998
  ret i32 %9, !dbg !1000
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_under_prio_ceiling(i32 noundef %0) #0 !dbg !1001 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1004, metadata !DIExpression()), !dbg !1005
  %3 = load i32, ptr %2, align 4, !dbg !1006
  %4 = icmp sge i32 %3, -127, !dbg !1007
  ret i1 %4, !dbg !1008
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_prio1_higher_than_prio2(i32 noundef %0, i32 noundef %1) #0 !dbg !1009 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1010, metadata !DIExpression()), !dbg !1011
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1012, metadata !DIExpression()), !dbg !1013
  %5 = load i32, ptr %3, align 4, !dbg !1014
  %6 = load i32, ptr %4, align 4, !dbg !1015
  %7 = icmp slt i32 %5, %6, !dbg !1016
  ret i1 %7, !dbg !1017
}

declare zeroext i1 @z_set_prio(ptr noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1018 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1021, metadata !DIExpression()), !dbg !1022
  %3 = load ptr, ptr %2, align 4, !dbg !1023
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !1024
  br i1 %4, label %5, label %6, !dbg !1024

5:                                                ; preds = %1
  br label %10, !dbg !1024

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1025
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1026
  %9 = load ptr, ptr %8, align 4, !dbg !1026
  br label %10, !dbg !1024

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1024
  ret ptr %11, !dbg !1027
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1028 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1031, metadata !DIExpression()), !dbg !1032
  %3 = load ptr, ptr %2, align 4, !dbg !1033
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1034
  %5 = load ptr, ptr %4, align 4, !dbg !1034
  %6 = load ptr, ptr %2, align 4, !dbg !1035
  %7 = icmp eq ptr %5, %6, !dbg !1036
  ret i1 %7, !dbg !1037
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !213, line: 47, type: !204, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !212, splitDebugInlining: false, nameTableKind: None)
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
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
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
!220 = !{i32 8, !"PIC Level", i32 2}
!221 = !{i32 7, !"PIE Level", i32 2}
!222 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!223 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !224, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !226, !108}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!228 = !DILocalVariable(name: "object", arg: 1, scope: !223, file: !6, line: 223, type: !226)
!229 = !DILocation(line: 223, column: 61, scope: !223)
!230 = !DILocalVariable(name: "thread", arg: 2, scope: !223, file: !6, line: 224, type: !108)
!231 = !DILocation(line: 224, column: 24, scope: !223)
!232 = !DILocation(line: 226, column: 9, scope: !223)
!233 = !DILocation(line: 227, column: 9, scope: !223)
!234 = !DILocation(line: 228, column: 1, scope: !223)
!235 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !236, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !226}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !235, file: !6, line: 243, type: !226)
!239 = !DILocation(line: 243, column: 56, scope: !235)
!240 = !DILocation(line: 245, column: 9, scope: !235)
!241 = !DILocation(line: 246, column: 1, scope: !235)
!242 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !243, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!243 = !DISubroutineType(types: !244)
!244 = !{!90, !5}
!245 = !DILocalVariable(name: "otype", arg: 1, scope: !242, file: !6, line: 359, type: !5)
!246 = !DILocation(line: 359, column: 58, scope: !242)
!247 = !DILocation(line: 361, column: 9, scope: !242)
!248 = !DILocation(line: 363, column: 2, scope: !242)
!249 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !250, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!250 = !DISubroutineType(types: !251)
!251 = !{!90, !5, !200}
!252 = !DILocalVariable(name: "otype", arg: 1, scope: !249, file: !6, line: 366, type: !5)
!253 = !DILocation(line: 366, column: 63, scope: !249)
!254 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !6, line: 367, type: !200)
!255 = !DILocation(line: 367, column: 13, scope: !249)
!256 = !DILocation(line: 369, column: 9, scope: !249)
!257 = !DILocation(line: 370, column: 9, scope: !249)
!258 = !DILocation(line: 372, column: 2, scope: !249)
!259 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !189, file: !189, line: 656, type: !260, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !263, line: 46, baseType: !168)
!263 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!266 = !DILocalVariable(name: "t", arg: 1, scope: !259, file: !189, line: 657, type: !264)
!267 = !DILocation(line: 657, column: 30, scope: !259)
!268 = !DILocation(line: 659, column: 28, scope: !259)
!269 = !DILocation(line: 659, column: 31, scope: !259)
!270 = !DILocation(line: 659, column: 36, scope: !259)
!271 = !DILocation(line: 659, column: 9, scope: !259)
!272 = !DILocation(line: 659, column: 2, scope: !259)
!273 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !189, file: !189, line: 671, type: !260, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!274 = !DILocalVariable(name: "t", arg: 1, scope: !273, file: !189, line: 672, type: !264)
!275 = !DILocation(line: 672, column: 30, scope: !273)
!276 = !DILocation(line: 674, column: 30, scope: !273)
!277 = !DILocation(line: 674, column: 33, scope: !273)
!278 = !DILocation(line: 674, column: 38, scope: !273)
!279 = !DILocation(line: 674, column: 9, scope: !273)
!280 = !DILocation(line: 674, column: 2, scope: !273)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !189, file: !189, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!282 = !DISubroutineType(types: !283)
!283 = !{!262, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !189, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !189, line: 1445, baseType: !158, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !189, line: 1448, baseType: !130, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !189, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !189, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !189, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !263, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !263, line: 66, baseType: !262, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !189, line: 1460, baseType: !154, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !189, line: 1463, baseType: !90, size: 32, offset: 416)
!303 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !189, line: 1635, type: !284)
!304 = !DILocation(line: 1635, column: 34, scope: !281)
!305 = !DILocation(line: 1637, column: 28, scope: !281)
!306 = !DILocation(line: 1637, column: 35, scope: !281)
!307 = !DILocation(line: 1637, column: 9, scope: !281)
!308 = !DILocation(line: 1637, column: 2, scope: !281)
!309 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !189, file: !189, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !309, file: !189, line: 1650, type: !284)
!311 = !DILocation(line: 1650, column: 34, scope: !309)
!312 = !DILocation(line: 1652, column: 30, scope: !309)
!313 = !DILocation(line: 1652, column: 37, scope: !309)
!314 = !DILocation(line: 1652, column: 9, scope: !309)
!315 = !DILocation(line: 1652, column: 2, scope: !309)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !189, file: !189, line: 1689, type: !317, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !294, !90}
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !189, line: 1689, type: !294)
!320 = !DILocation(line: 1689, column: 65, scope: !316)
!321 = !DILocalVariable(name: "user_data", arg: 2, scope: !316, file: !189, line: 1690, type: !90)
!322 = !DILocation(line: 1690, column: 19, scope: !316)
!323 = !DILocation(line: 1692, column: 21, scope: !316)
!324 = !DILocation(line: 1692, column: 2, scope: !316)
!325 = !DILocation(line: 1692, column: 9, scope: !316)
!326 = !DILocation(line: 1692, column: 19, scope: !316)
!327 = !DILocation(line: 1693, column: 1, scope: !316)
!328 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !189, file: !189, line: 1704, type: !329, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!329 = !DISubroutineType(types: !330)
!330 = !{!90, !284}
!331 = !DILocalVariable(name: "timer", arg: 1, scope: !328, file: !189, line: 1704, type: !284)
!332 = !DILocation(line: 1704, column: 72, scope: !328)
!333 = !DILocation(line: 1706, column: 9, scope: !328)
!334 = !DILocation(line: 1706, column: 16, scope: !328)
!335 = !DILocation(line: 1706, column: 2, scope: !328)
!336 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !189, file: !189, line: 2071, type: !337, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!337 = !DISubroutineType(types: !338)
!338 = !{!91, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !189, line: 1830, size: 128, elements: !341)
!341 = !{!342, !355, !356}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !340, file: !189, line: 1831, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !344, line: 60, baseType: !345)
!344 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !344, line: 53, size: 64, elements: !346)
!346 = !{!347, !354}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !345, file: !344, line: 54, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !344, line: 50, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !344, line: 44, size: 32, elements: !351)
!351 = !{!352}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !350, file: !344, line: 45, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !344, line: 40, baseType: !154)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !345, file: !344, line: 55, baseType: !348, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !340, file: !189, line: 1832, baseType: !204, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !340, file: !189, line: 1833, baseType: !130, size: 64, offset: 64)
!357 = !DILocalVariable(name: "queue", arg: 1, scope: !336, file: !189, line: 2071, type: !339)
!358 = !DILocation(line: 2071, column: 59, scope: !336)
!359 = !DILocation(line: 2073, column: 35, scope: !336)
!360 = !DILocation(line: 2073, column: 42, scope: !336)
!361 = !DILocation(line: 2073, column: 14, scope: !336)
!362 = !DILocation(line: 2073, column: 9, scope: !336)
!363 = !DILocation(line: 2073, column: 2, scope: !336)
!364 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !189, file: !189, line: 3209, type: !365, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!365 = !DISubroutineType(types: !366)
!366 = !{!155, !367}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !189, line: 3092, size: 128, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !368, file: !189, line: 3093, baseType: !130, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !368, file: !189, line: 3094, baseType: !155, size: 32, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !368, file: !189, line: 3095, baseType: !155, size: 32, offset: 96)
!373 = !DILocalVariable(name: "sem", arg: 1, scope: !364, file: !189, line: 3209, type: !367)
!374 = !DILocation(line: 3209, column: 65, scope: !364)
!375 = !DILocation(line: 3211, column: 9, scope: !364)
!376 = !DILocation(line: 3211, column: 14, scope: !364)
!377 = !DILocation(line: 3211, column: 2, scope: !364)
!378 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !189, file: !189, line: 4649, type: !379, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!379 = !DISubroutineType(types: !380)
!380 = !{!154, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !189, line: 4390, size: 320, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !391, !392, !393, !394, !395}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !382, file: !189, line: 4392, baseType: !130, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !382, file: !189, line: 4394, baseType: !204, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !382, file: !189, line: 4396, baseType: !200, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !382, file: !189, line: 4398, baseType: !154, size: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !382, file: !189, line: 4400, baseType: !389, size: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 32)
!390 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !382, file: !189, line: 4402, baseType: !389, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !382, file: !189, line: 4404, baseType: !389, size: 32, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !382, file: !189, line: 4406, baseType: !389, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !382, file: !189, line: 4408, baseType: !154, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !382, file: !189, line: 4413, baseType: !137, size: 8, offset: 288)
!396 = !DILocalVariable(name: "msgq", arg: 1, scope: !378, file: !189, line: 4649, type: !381)
!397 = !DILocation(line: 4649, column: 66, scope: !378)
!398 = !DILocation(line: 4651, column: 9, scope: !378)
!399 = !DILocation(line: 4651, column: 15, scope: !378)
!400 = !DILocation(line: 4651, column: 26, scope: !378)
!401 = !DILocation(line: 4651, column: 32, scope: !378)
!402 = !DILocation(line: 4651, column: 24, scope: !378)
!403 = !DILocation(line: 4651, column: 2, scope: !378)
!404 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !189, file: !189, line: 4665, type: !379, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!405 = !DILocalVariable(name: "msgq", arg: 1, scope: !404, file: !189, line: 4665, type: !381)
!406 = !DILocation(line: 4665, column: 66, scope: !404)
!407 = !DILocation(line: 4667, column: 9, scope: !404)
!408 = !DILocation(line: 4667, column: 15, scope: !404)
!409 = !DILocation(line: 4667, column: 2, scope: !404)
!410 = distinct !DISubprogram(name: "z_impl_k_mutex_init", scope: !213, file: !213, line: 53, type: !411, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !206)
!411 = !DISubroutineType(types: !412)
!412 = !{!91, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 32)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mutex", file: !189, line: 2895, size: 160, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !414, file: !189, line: 2897, baseType: !130, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !414, file: !189, line: 2899, baseType: !108, size: 32, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !414, file: !189, line: 2902, baseType: !154, size: 32, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "owner_orig_prio", scope: !414, file: !189, line: 2905, baseType: !91, size: 32, offset: 128)
!420 = !DILocalVariable(name: "mutex", arg: 1, scope: !410, file: !213, line: 53, type: !413)
!421 = !DILocation(line: 53, column: 41, scope: !410)
!422 = !DILocation(line: 55, column: 2, scope: !410)
!423 = !DILocation(line: 55, column: 9, scope: !410)
!424 = !DILocation(line: 55, column: 15, scope: !410)
!425 = !DILocation(line: 56, column: 2, scope: !410)
!426 = !DILocation(line: 56, column: 9, scope: !410)
!427 = !DILocation(line: 56, column: 20, scope: !410)
!428 = !DILocation(line: 58, column: 16, scope: !410)
!429 = !DILocation(line: 58, column: 23, scope: !410)
!430 = !DILocation(line: 58, column: 2, scope: !410)
!431 = !DILocation(line: 60, column: 16, scope: !410)
!432 = !DILocation(line: 60, column: 2, scope: !410)
!433 = !DILocation(line: 66, column: 2, scope: !410)
!434 = !DILocation(line: 66, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !410, file: !213, line: 66, column: 5)
!436 = !DILocation(line: 68, column: 2, scope: !410)
!437 = distinct !DISubprogram(name: "z_waitq_init", scope: !438, file: !438, line: 47, type: !439, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!438 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!439 = !DISubroutineType(types: !440)
!440 = !{null, !129}
!441 = !DILocalVariable(name: "w", arg: 1, scope: !437, file: !438, line: 47, type: !129)
!442 = !DILocation(line: 47, column: 44, scope: !437)
!443 = !DILocation(line: 49, column: 18, scope: !437)
!444 = !DILocation(line: 49, column: 21, scope: !437)
!445 = !DILocation(line: 49, column: 2, scope: !437)
!446 = !DILocation(line: 50, column: 1, scope: !437)
!447 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !236, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!448 = !DILocalVariable(name: "obj", arg: 1, scope: !447, file: !6, line: 215, type: !226)
!449 = !DILocation(line: 215, column: 46, scope: !447)
!450 = !DILocation(line: 217, column: 9, scope: !447)
!451 = !DILocation(line: 218, column: 1, scope: !447)
!452 = distinct !DISubprogram(name: "z_impl_k_mutex_lock", scope: !213, file: !213, line: 103, type: !453, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !206)
!453 = !DISubroutineType(types: !454)
!454 = !{!91, !413, !297}
!455 = !DILocalVariable(name: "mutex", arg: 1, scope: !452, file: !213, line: 103, type: !413)
!456 = !DILocation(line: 103, column: 41, scope: !452)
!457 = !DILocalVariable(name: "timeout", arg: 2, scope: !452, file: !213, line: 103, type: !297)
!458 = !DILocation(line: 103, column: 60, scope: !452)
!459 = !DILocalVariable(name: "new_prio", scope: !452, file: !213, line: 105, type: !91)
!460 = !DILocation(line: 105, column: 6, scope: !452)
!461 = !DILocalVariable(name: "key", scope: !452, file: !213, line: 106, type: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !205, line: 108, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !205, line: 34, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !463, file: !205, line: 35, baseType: !91, size: 32)
!466 = !DILocation(line: 106, column: 19, scope: !452)
!467 = !DILocalVariable(name: "resched", scope: !452, file: !213, line: 107, type: !89)
!468 = !DILocation(line: 107, column: 8, scope: !452)
!469 = !DILocation(line: 111, column: 2, scope: !452)
!470 = !DILocation(line: 111, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !452, file: !213, line: 111, column: 5)
!472 = !DILocalVariable(name: "l", arg: 1, scope: !473, file: !205, line: 160, type: !476)
!473 = distinct !DISubprogram(name: "k_spin_lock", scope: !205, file: !205, line: 160, type: !474, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!474 = !DISubroutineType(types: !475)
!475 = !{!462, !476}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!477 = !DILocation(line: 160, column: 94, scope: !473, inlinedAt: !478)
!478 = distinct !DILocation(line: 113, column: 8, scope: !452)
!479 = !DILocation(line: 162, column: 9, scope: !473, inlinedAt: !478)
!480 = !DILocalVariable(name: "k", scope: !473, file: !205, line: 163, type: !462)
!481 = !DILocation(line: 163, column: 19, scope: !473, inlinedAt: !478)
!482 = !DILocalVariable(name: "key", scope: !483, file: !484, line: 44, type: !155)
!483 = distinct !DISubprogram(name: "arch_irq_lock", scope: !484, file: !484, line: 42, type: !485, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!484 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!485 = !DISubroutineType(types: !486)
!486 = !{!155}
!487 = !DILocation(line: 44, column: 15, scope: !483, inlinedAt: !488)
!488 = distinct !DILocation(line: 169, column: 10, scope: !473, inlinedAt: !478)
!489 = !DILocation(line: 48, column: 2, scope: !483, inlinedAt: !488)
!490 = !{i64 66945}
!491 = !DILocation(line: 80, column: 9, scope: !483, inlinedAt: !488)
!492 = !DILocation(line: 169, column: 8, scope: !473, inlinedAt: !478)
!493 = !DILocation(line: 171, column: 26, scope: !473, inlinedAt: !478)
!494 = !DILocalVariable(name: "l", arg: 1, scope: !495, file: !205, line: 110, type: !476)
!495 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !205, file: !205, line: 110, type: !496, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !476}
!498 = !DILocation(line: 110, column: 94, scope: !495, inlinedAt: !499)
!499 = distinct !DILocation(line: 171, column: 2, scope: !473, inlinedAt: !478)
!500 = !DILocation(line: 112, column: 9, scope: !495, inlinedAt: !499)
!501 = !DILocation(line: 177, column: 27, scope: !473, inlinedAt: !478)
!502 = !DILocalVariable(name: "l", arg: 1, scope: !503, file: !205, line: 121, type: !476)
!503 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !205, file: !205, line: 121, type: !496, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!504 = !DILocation(line: 121, column: 95, scope: !503, inlinedAt: !505)
!505 = distinct !DILocation(line: 177, column: 2, scope: !473, inlinedAt: !478)
!506 = !DILocation(line: 123, column: 9, scope: !503, inlinedAt: !505)
!507 = !DILocation(line: 179, column: 2, scope: !473, inlinedAt: !478)
!508 = !DILocation(line: 113, column: 8, scope: !452)
!509 = !DILocation(line: 115, column: 35, scope: !510)
!510 = distinct !DILexicalBlock(scope: !452, file: !213, line: 115, column: 6)
!511 = !DILocation(line: 115, column: 42, scope: !510)
!512 = !DILocation(line: 115, column: 53, scope: !510)
!513 = !DILocation(line: 115, column: 60, scope: !510)
!514 = !DILocation(line: 115, column: 64, scope: !510)
!515 = !DILocation(line: 115, column: 71, scope: !510)
!516 = !DILocation(line: 115, column: 96, scope: !510)
!517 = !DILocation(line: 115, column: 77, scope: !510)
!518 = !DILocation(line: 115, column: 32, scope: !510)
!519 = !DILocation(line: 115, column: 31, scope: !510)
!520 = !DILocation(line: 115, column: 24, scope: !510)
!521 = !DILocation(line: 115, column: 110, scope: !510)
!522 = !DILocation(line: 115, column: 6, scope: !452)
!523 = !DILocation(line: 117, column: 29, scope: !524)
!524 = distinct !DILexicalBlock(scope: !510, file: !213, line: 115, column: 118)
!525 = !DILocation(line: 117, column: 36, scope: !524)
!526 = !DILocation(line: 117, column: 47, scope: !524)
!527 = !DILocation(line: 117, column: 28, scope: !524)
!528 = !DILocation(line: 118, column: 22, scope: !524)
!529 = !DILocation(line: 118, column: 31, scope: !524)
!530 = !DILocation(line: 118, column: 36, scope: !524)
!531 = !DILocation(line: 118, column: 6, scope: !524)
!532 = !DILocation(line: 119, column: 6, scope: !524)
!533 = !DILocation(line: 119, column: 13, scope: !524)
!534 = !DILocation(line: 117, column: 3, scope: !524)
!535 = !DILocation(line: 117, column: 10, scope: !524)
!536 = !DILocation(line: 117, column: 26, scope: !524)
!537 = !DILocation(line: 121, column: 3, scope: !524)
!538 = !DILocation(line: 121, column: 10, scope: !524)
!539 = !DILocation(line: 121, column: 20, scope: !524)
!540 = !DILocation(line: 122, column: 34, scope: !524)
!541 = !DILocation(line: 122, column: 3, scope: !524)
!542 = !DILocation(line: 122, column: 10, scope: !524)
!543 = !DILocation(line: 122, column: 16, scope: !524)
!544 = !DILocation(line: 124, column: 3, scope: !524)
!545 = !DILocation(line: 124, column: 87, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !213, line: 124, column: 85)
!547 = distinct !DILexicalBlock(scope: !548, file: !213, line: 124, column: 12)
!548 = distinct !DILexicalBlock(scope: !524, file: !213, line: 124, column: 6)
!549 = !DILocation(line: 128, column: 3, scope: !524)
!550 = !DILocalVariable(name: "l", arg: 1, scope: !551, file: !205, line: 235, type: !476)
!551 = distinct !DISubprogram(name: "k_spin_unlock", scope: !205, file: !205, line: 235, type: !552, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !476, !462}
!554 = !DILocation(line: 235, column: 84, scope: !551, inlinedAt: !555)
!555 = distinct !DILocation(line: 128, column: 3, scope: !524)
!556 = !DILocalVariable(name: "key", arg: 2, scope: !551, file: !205, line: 236, type: !462)
!557 = !DILocation(line: 236, column: 23, scope: !551, inlinedAt: !555)
!558 = !DILocation(line: 238, column: 9, scope: !551, inlinedAt: !555)
!559 = !DILocation(line: 261, column: 22, scope: !551, inlinedAt: !555)
!560 = !DILocalVariable(name: "key", arg: 1, scope: !561, file: !484, line: 88, type: !155)
!561 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !484, file: !484, line: 88, type: !562, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!562 = !DISubroutineType(types: !563)
!563 = !{null, !155}
!564 = !DILocation(line: 88, column: 80, scope: !561, inlinedAt: !565)
!565 = distinct !DILocation(line: 261, column: 2, scope: !551, inlinedAt: !555)
!566 = !DILocation(line: 91, column: 6, scope: !567, inlinedAt: !565)
!567 = distinct !DILexicalBlock(scope: !561, file: !484, line: 91, column: 6)
!568 = !DILocation(line: 91, column: 10, scope: !567, inlinedAt: !565)
!569 = !DILocation(line: 91, column: 6, scope: !561, inlinedAt: !565)
!570 = !DILocation(line: 92, column: 3, scope: !571, inlinedAt: !565)
!571 = distinct !DILexicalBlock(scope: !567, file: !484, line: 91, column: 17)
!572 = !DILocation(line: 94, column: 2, scope: !561, inlinedAt: !565)
!573 = !{i64 67249}
!574 = !DILocation(line: 114, column: 1, scope: !561, inlinedAt: !565)
!575 = !DILocation(line: 130, column: 3, scope: !524)
!576 = !DILocation(line: 130, column: 8, scope: !577)
!577 = distinct !DILexicalBlock(scope: !524, file: !213, line: 130, column: 6)
!578 = !DILocation(line: 132, column: 3, scope: !524)
!579 = !DILocation(line: 135, column: 45, scope: !580)
!580 = distinct !DILexicalBlock(scope: !452, file: !213, line: 135, column: 6)
!581 = !DILocation(line: 135, column: 70, scope: !580)
!582 = !DILocation(line: 135, column: 51, scope: !580)
!583 = !DILocation(line: 135, column: 32, scope: !580)
!584 = !DILocation(line: 135, column: 31, scope: !580)
!585 = !DILocation(line: 135, column: 24, scope: !580)
!586 = !DILocation(line: 135, column: 88, scope: !580)
!587 = !DILocation(line: 135, column: 6, scope: !452)
!588 = !DILocation(line: 136, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !213, line: 135, column: 96)
!590 = !DILocation(line: 235, column: 84, scope: !551, inlinedAt: !591)
!591 = distinct !DILocation(line: 136, column: 3, scope: !589)
!592 = !DILocation(line: 236, column: 23, scope: !551, inlinedAt: !591)
!593 = !DILocation(line: 238, column: 9, scope: !551, inlinedAt: !591)
!594 = !DILocation(line: 261, column: 22, scope: !551, inlinedAt: !591)
!595 = !DILocation(line: 88, column: 80, scope: !561, inlinedAt: !596)
!596 = distinct !DILocation(line: 261, column: 2, scope: !551, inlinedAt: !591)
!597 = !DILocation(line: 91, column: 6, scope: !567, inlinedAt: !596)
!598 = !DILocation(line: 91, column: 10, scope: !567, inlinedAt: !596)
!599 = !DILocation(line: 91, column: 6, scope: !561, inlinedAt: !596)
!600 = !DILocation(line: 92, column: 3, scope: !571, inlinedAt: !596)
!601 = !DILocation(line: 94, column: 2, scope: !561, inlinedAt: !596)
!602 = !DILocation(line: 114, column: 1, scope: !561, inlinedAt: !596)
!603 = !DILocation(line: 138, column: 3, scope: !589)
!604 = !DILocation(line: 138, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !589, file: !213, line: 138, column: 6)
!606 = !DILocation(line: 140, column: 3, scope: !589)
!607 = !DILocation(line: 143, column: 2, scope: !452)
!608 = !DILocation(line: 143, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !452, file: !213, line: 143, column: 5)
!610 = !DILocation(line: 145, column: 54, scope: !452)
!611 = !DILocation(line: 145, column: 63, scope: !452)
!612 = !DILocation(line: 145, column: 68, scope: !452)
!613 = !DILocation(line: 145, column: 38, scope: !452)
!614 = !DILocation(line: 146, column: 10, scope: !452)
!615 = !DILocation(line: 146, column: 17, scope: !452)
!616 = !DILocation(line: 146, column: 24, scope: !452)
!617 = !DILocation(line: 146, column: 29, scope: !452)
!618 = !DILocation(line: 145, column: 13, scope: !452)
!619 = !DILocation(line: 145, column: 11, scope: !452)
!620 = !DILocation(line: 148, column: 2, scope: !452)
!621 = !DILocation(line: 148, column: 86, scope: !622)
!622 = distinct !DILexicalBlock(scope: !623, file: !213, line: 148, column: 84)
!623 = distinct !DILexicalBlock(scope: !624, file: !213, line: 148, column: 11)
!624 = distinct !DILexicalBlock(scope: !452, file: !213, line: 148, column: 5)
!625 = !DILocation(line: 150, column: 23, scope: !626)
!626 = distinct !DILexicalBlock(scope: !452, file: !213, line: 150, column: 6)
!627 = !DILocation(line: 150, column: 33, scope: !626)
!628 = !DILocation(line: 150, column: 40, scope: !626)
!629 = !DILocation(line: 150, column: 47, scope: !626)
!630 = !DILocation(line: 150, column: 52, scope: !626)
!631 = !DILocation(line: 150, column: 6, scope: !626)
!632 = !DILocation(line: 150, column: 6, scope: !452)
!633 = !DILocation(line: 151, column: 31, scope: !634)
!634 = distinct !DILexicalBlock(scope: !626, file: !213, line: 150, column: 59)
!635 = !DILocation(line: 151, column: 38, scope: !634)
!636 = !DILocation(line: 151, column: 13, scope: !634)
!637 = !DILocation(line: 151, column: 11, scope: !634)
!638 = !DILocation(line: 152, column: 2, scope: !634)
!639 = !DILocalVariable(name: "got_mutex", scope: !452, file: !213, line: 154, type: !91)
!640 = !DILocation(line: 154, column: 6, scope: !452)
!641 = !DILocation(line: 154, column: 43, scope: !452)
!642 = !DILocation(line: 154, column: 50, scope: !452)
!643 = !DILocation(line: 154, column: 18, scope: !452)
!644 = !DILocation(line: 156, column: 2, scope: !452)
!645 = !DILocation(line: 156, column: 86, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !213, line: 156, column: 84)
!647 = distinct !DILexicalBlock(scope: !648, file: !213, line: 156, column: 11)
!648 = distinct !DILexicalBlock(scope: !452, file: !213, line: 156, column: 5)
!649 = !DILocation(line: 158, column: 2, scope: !452)
!650 = !DILocation(line: 158, column: 86, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !213, line: 158, column: 84)
!652 = distinct !DILexicalBlock(scope: !653, file: !213, line: 158, column: 11)
!653 = distinct !DILexicalBlock(scope: !452, file: !213, line: 158, column: 5)
!654 = !DILocation(line: 161, column: 6, scope: !655)
!655 = distinct !DILexicalBlock(scope: !452, file: !213, line: 161, column: 6)
!656 = !DILocation(line: 161, column: 16, scope: !655)
!657 = !DILocation(line: 161, column: 6, scope: !452)
!658 = !DILocation(line: 162, column: 3, scope: !659)
!659 = distinct !DILexicalBlock(scope: !655, file: !213, line: 161, column: 22)
!660 = !DILocation(line: 162, column: 8, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !213, line: 162, column: 6)
!662 = !DILocation(line: 163, column: 3, scope: !659)
!663 = !DILocation(line: 168, column: 2, scope: !452)
!664 = !DILocation(line: 168, column: 86, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !213, line: 168, column: 84)
!666 = distinct !DILexicalBlock(scope: !667, file: !213, line: 168, column: 11)
!667 = distinct !DILexicalBlock(scope: !452, file: !213, line: 168, column: 5)
!668 = !DILocation(line: 160, column: 94, scope: !473, inlinedAt: !669)
!669 = distinct !DILocation(line: 170, column: 8, scope: !452)
!670 = !DILocation(line: 162, column: 9, scope: !473, inlinedAt: !669)
!671 = !DILocation(line: 163, column: 19, scope: !473, inlinedAt: !669)
!672 = !DILocation(line: 44, column: 15, scope: !483, inlinedAt: !673)
!673 = distinct !DILocation(line: 169, column: 10, scope: !473, inlinedAt: !669)
!674 = !DILocation(line: 48, column: 2, scope: !483, inlinedAt: !673)
!675 = !DILocation(line: 80, column: 9, scope: !483, inlinedAt: !673)
!676 = !DILocation(line: 169, column: 8, scope: !473, inlinedAt: !669)
!677 = !DILocation(line: 171, column: 26, scope: !473, inlinedAt: !669)
!678 = !DILocation(line: 110, column: 94, scope: !495, inlinedAt: !679)
!679 = distinct !DILocation(line: 171, column: 2, scope: !473, inlinedAt: !669)
!680 = !DILocation(line: 112, column: 9, scope: !495, inlinedAt: !679)
!681 = !DILocation(line: 177, column: 27, scope: !473, inlinedAt: !669)
!682 = !DILocation(line: 121, column: 95, scope: !503, inlinedAt: !683)
!683 = distinct !DILocation(line: 177, column: 2, scope: !473, inlinedAt: !669)
!684 = !DILocation(line: 123, column: 9, scope: !503, inlinedAt: !683)
!685 = !DILocation(line: 179, column: 2, scope: !473, inlinedAt: !669)
!686 = !DILocation(line: 170, column: 8, scope: !452)
!687 = !DILocation(line: 176, column: 34, scope: !688)
!688 = distinct !DILexicalBlock(scope: !452, file: !213, line: 176, column: 6)
!689 = !DILocation(line: 176, column: 41, scope: !688)
!690 = !DILocation(line: 176, column: 47, scope: !688)
!691 = !DILocation(line: 176, column: 32, scope: !688)
!692 = !DILocation(line: 176, column: 31, scope: !688)
!693 = !DILocation(line: 176, column: 24, scope: !688)
!694 = !DILocation(line: 176, column: 57, scope: !688)
!695 = !DILocation(line: 176, column: 6, scope: !452)
!696 = !DILocalVariable(name: "waiter", scope: !697, file: !213, line: 177, type: !108)
!697 = distinct !DILexicalBlock(scope: !688, file: !213, line: 176, column: 65)
!698 = !DILocation(line: 177, column: 20, scope: !697)
!699 = !DILocation(line: 177, column: 43, scope: !697)
!700 = !DILocation(line: 177, column: 50, scope: !697)
!701 = !DILocation(line: 177, column: 29, scope: !697)
!702 = !DILocation(line: 179, column: 15, scope: !697)
!703 = !DILocation(line: 179, column: 22, scope: !697)
!704 = !DILocation(line: 179, column: 14, scope: !697)
!705 = !DILocation(line: 180, column: 29, scope: !697)
!706 = !DILocation(line: 180, column: 37, scope: !697)
!707 = !DILocation(line: 180, column: 42, scope: !697)
!708 = !DILocation(line: 180, column: 48, scope: !697)
!709 = !DILocation(line: 180, column: 55, scope: !697)
!710 = !DILocation(line: 180, column: 4, scope: !697)
!711 = !DILocation(line: 181, column: 4, scope: !697)
!712 = !DILocation(line: 181, column: 11, scope: !697)
!713 = !DILocation(line: 179, column: 12, scope: !697)
!714 = !DILocation(line: 183, column: 3, scope: !697)
!715 = !DILocation(line: 183, column: 87, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !213, line: 183, column: 85)
!717 = distinct !DILexicalBlock(scope: !718, file: !213, line: 183, column: 12)
!718 = distinct !DILexicalBlock(scope: !697, file: !213, line: 183, column: 6)
!719 = !DILocation(line: 185, column: 31, scope: !697)
!720 = !DILocation(line: 185, column: 38, scope: !697)
!721 = !DILocation(line: 185, column: 13, scope: !697)
!722 = !DILocation(line: 185, column: 48, scope: !697)
!723 = !DILocation(line: 185, column: 51, scope: !697)
!724 = !DILocation(line: 185, column: 11, scope: !697)
!725 = !DILocation(line: 186, column: 2, scope: !697)
!726 = !DILocation(line: 188, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !452, file: !213, line: 188, column: 6)
!728 = !DILocation(line: 188, column: 6, scope: !452)
!729 = !DILocation(line: 189, column: 3, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !213, line: 188, column: 15)
!731 = !DILocation(line: 190, column: 2, scope: !730)
!732 = !DILocation(line: 191, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !727, file: !213, line: 190, column: 9)
!734 = !DILocation(line: 235, column: 84, scope: !551, inlinedAt: !735)
!735 = distinct !DILocation(line: 191, column: 3, scope: !733)
!736 = !DILocation(line: 236, column: 23, scope: !551, inlinedAt: !735)
!737 = !DILocation(line: 238, column: 9, scope: !551, inlinedAt: !735)
!738 = !DILocation(line: 261, column: 22, scope: !551, inlinedAt: !735)
!739 = !DILocation(line: 88, column: 80, scope: !561, inlinedAt: !740)
!740 = distinct !DILocation(line: 261, column: 2, scope: !551, inlinedAt: !735)
!741 = !DILocation(line: 91, column: 6, scope: !567, inlinedAt: !740)
!742 = !DILocation(line: 91, column: 10, scope: !567, inlinedAt: !740)
!743 = !DILocation(line: 91, column: 6, scope: !561, inlinedAt: !740)
!744 = !DILocation(line: 92, column: 3, scope: !571, inlinedAt: !740)
!745 = !DILocation(line: 94, column: 2, scope: !561, inlinedAt: !740)
!746 = !DILocation(line: 114, column: 1, scope: !561, inlinedAt: !740)
!747 = !DILocation(line: 194, column: 2, scope: !452)
!748 = !DILocation(line: 194, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !452, file: !213, line: 194, column: 5)
!750 = !DILocation(line: 196, column: 2, scope: !452)
!751 = !DILocation(line: 197, column: 1, scope: !452)
!752 = distinct !DISubprogram(name: "new_prio_for_inheritance", scope: !213, file: !213, line: 80, type: !753, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!753 = !DISubroutineType(types: !754)
!754 = !{!755, !755, !755}
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !138, line: 58, baseType: !91)
!756 = !DILocalVariable(name: "target", arg: 1, scope: !752, file: !213, line: 80, type: !755)
!757 = !DILocation(line: 80, column: 49, scope: !752)
!758 = !DILocalVariable(name: "limit", arg: 2, scope: !752, file: !213, line: 80, type: !755)
!759 = !DILocation(line: 80, column: 65, scope: !752)
!760 = !DILocalVariable(name: "new_prio", scope: !752, file: !213, line: 82, type: !91)
!761 = !DILocation(line: 82, column: 6, scope: !752)
!762 = !DILocation(line: 82, column: 34, scope: !752)
!763 = !DILocation(line: 82, column: 42, scope: !752)
!764 = !DILocation(line: 82, column: 17, scope: !752)
!765 = !DILocation(line: 82, column: 51, scope: !752)
!766 = !DILocation(line: 82, column: 60, scope: !752)
!767 = !DILocation(line: 84, column: 41, scope: !752)
!768 = !DILocation(line: 84, column: 13, scope: !752)
!769 = !DILocation(line: 84, column: 11, scope: !752)
!770 = !DILocation(line: 86, column: 9, scope: !752)
!771 = !DILocation(line: 86, column: 2, scope: !752)
!772 = distinct !DISubprogram(name: "z_is_prio_higher", scope: !773, file: !773, line: 213, type: !774, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!773 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!774 = !DISubroutineType(types: !775)
!775 = !{!89, !91, !91}
!776 = !DILocalVariable(name: "prio", arg: 1, scope: !772, file: !773, line: 213, type: !91)
!777 = !DILocation(line: 213, column: 42, scope: !772)
!778 = !DILocalVariable(name: "test_prio", arg: 2, scope: !772, file: !773, line: 213, type: !91)
!779 = !DILocation(line: 213, column: 52, scope: !772)
!780 = !DILocation(line: 215, column: 38, scope: !772)
!781 = !DILocation(line: 215, column: 44, scope: !772)
!782 = !DILocation(line: 215, column: 9, scope: !772)
!783 = !DILocation(line: 215, column: 2, scope: !772)
!784 = distinct !DISubprogram(name: "adjust_owner_prio", scope: !213, file: !213, line: 89, type: !785, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!785 = !DISubroutineType(types: !786)
!786 = !{!89, !413, !755}
!787 = !DILocalVariable(name: "mutex", arg: 1, scope: !784, file: !213, line: 89, type: !413)
!788 = !DILocation(line: 89, column: 48, scope: !784)
!789 = !DILocalVariable(name: "new_prio", arg: 2, scope: !784, file: !213, line: 89, type: !755)
!790 = !DILocation(line: 89, column: 63, scope: !784)
!791 = !DILocation(line: 91, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !213, line: 91, column: 6)
!793 = !DILocation(line: 91, column: 13, scope: !792)
!794 = !DILocation(line: 91, column: 20, scope: !792)
!795 = !DILocation(line: 91, column: 25, scope: !792)
!796 = !DILocation(line: 91, column: 33, scope: !792)
!797 = !DILocation(line: 91, column: 30, scope: !792)
!798 = !DILocation(line: 91, column: 6, scope: !784)
!799 = !DILocation(line: 93, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !792, file: !213, line: 91, column: 43)
!801 = !DILocation(line: 93, column: 87, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !213, line: 93, column: 85)
!803 = distinct !DILexicalBlock(scope: !804, file: !213, line: 93, column: 12)
!804 = distinct !DILexicalBlock(scope: !800, file: !213, line: 93, column: 6)
!805 = !DILocation(line: 98, column: 21, scope: !800)
!806 = !DILocation(line: 98, column: 28, scope: !800)
!807 = !DILocation(line: 98, column: 35, scope: !800)
!808 = !DILocation(line: 98, column: 10, scope: !800)
!809 = !DILocation(line: 98, column: 3, scope: !800)
!810 = !DILocation(line: 100, column: 2, scope: !784)
!811 = !DILocation(line: 101, column: 1, scope: !784)
!812 = distinct !DISubprogram(name: "z_waitq_head", scope: !438, file: !438, line: 52, type: !813, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!813 = !DISubroutineType(types: !814)
!814 = !{!108, !129}
!815 = !DILocalVariable(name: "w", arg: 1, scope: !812, file: !438, line: 52, type: !129)
!816 = !DILocation(line: 52, column: 56, scope: !812)
!817 = !DILocation(line: 54, column: 49, scope: !812)
!818 = !DILocation(line: 54, column: 52, scope: !812)
!819 = !DILocation(line: 54, column: 28, scope: !812)
!820 = !DILocation(line: 54, column: 2, scope: !812)
!821 = distinct !DISubprogram(name: "z_impl_k_mutex_unlock", scope: !213, file: !213, line: 209, type: !411, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !206)
!822 = !DILocalVariable(name: "mutex", arg: 1, scope: !821, file: !213, line: 209, type: !413)
!823 = !DILocation(line: 209, column: 43, scope: !821)
!824 = !DILocalVariable(name: "new_owner", scope: !821, file: !213, line: 211, type: !108)
!825 = !DILocation(line: 211, column: 19, scope: !821)
!826 = !DILocation(line: 215, column: 2, scope: !821)
!827 = !DILocation(line: 215, column: 7, scope: !828)
!828 = distinct !DILexicalBlock(scope: !821, file: !213, line: 215, column: 5)
!829 = !DILocation(line: 217, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !821, file: !213, line: 217, column: 6)
!831 = !DILocation(line: 217, column: 13, scope: !830)
!832 = !DILocation(line: 217, column: 19, scope: !830)
!833 = !DILocation(line: 217, column: 6, scope: !821)
!834 = !DILocation(line: 218, column: 3, scope: !835)
!835 = distinct !DILexicalBlock(scope: !830, file: !213, line: 217, column: 25)
!836 = !DILocation(line: 218, column: 8, scope: !837)
!837 = distinct !DILexicalBlock(scope: !835, file: !213, line: 218, column: 6)
!838 = !DILocation(line: 220, column: 3, scope: !835)
!839 = !DILocation(line: 225, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !821, file: !213, line: 225, column: 6)
!841 = !DILocation(line: 225, column: 13, scope: !840)
!842 = !DILocation(line: 225, column: 38, scope: !840)
!843 = !DILocation(line: 225, column: 19, scope: !840)
!844 = !DILocation(line: 225, column: 6, scope: !821)
!845 = !DILocation(line: 226, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !840, file: !213, line: 225, column: 47)
!847 = !DILocation(line: 226, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !846, file: !213, line: 226, column: 6)
!849 = !DILocation(line: 228, column: 3, scope: !846)
!850 = !DILocation(line: 239, column: 2, scope: !821)
!851 = !DILocation(line: 239, column: 86, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !213, line: 239, column: 84)
!853 = distinct !DILexicalBlock(scope: !854, file: !213, line: 239, column: 11)
!854 = distinct !DILexicalBlock(scope: !821, file: !213, line: 239, column: 5)
!855 = !DILocation(line: 245, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !821, file: !213, line: 245, column: 6)
!857 = !DILocation(line: 245, column: 13, scope: !856)
!858 = !DILocation(line: 245, column: 24, scope: !856)
!859 = !DILocation(line: 245, column: 6, scope: !821)
!860 = !DILocation(line: 246, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !213, line: 245, column: 30)
!862 = !DILocation(line: 246, column: 10, scope: !861)
!863 = !DILocation(line: 246, column: 20, scope: !861)
!864 = !DILocation(line: 247, column: 3, scope: !861)
!865 = !DILocalVariable(name: "key", scope: !821, file: !213, line: 250, type: !462)
!866 = !DILocation(line: 250, column: 19, scope: !821)
!867 = !DILocation(line: 160, column: 94, scope: !473, inlinedAt: !868)
!868 = distinct !DILocation(line: 250, column: 25, scope: !821)
!869 = !DILocation(line: 162, column: 9, scope: !473, inlinedAt: !868)
!870 = !DILocation(line: 163, column: 19, scope: !473, inlinedAt: !868)
!871 = !DILocation(line: 44, column: 15, scope: !483, inlinedAt: !872)
!872 = distinct !DILocation(line: 169, column: 10, scope: !473, inlinedAt: !868)
!873 = !DILocation(line: 48, column: 2, scope: !483, inlinedAt: !872)
!874 = !DILocation(line: 80, column: 9, scope: !483, inlinedAt: !872)
!875 = !DILocation(line: 169, column: 8, scope: !473, inlinedAt: !868)
!876 = !DILocation(line: 171, column: 26, scope: !473, inlinedAt: !868)
!877 = !DILocation(line: 110, column: 94, scope: !495, inlinedAt: !878)
!878 = distinct !DILocation(line: 171, column: 2, scope: !473, inlinedAt: !868)
!879 = !DILocation(line: 112, column: 9, scope: !495, inlinedAt: !878)
!880 = !DILocation(line: 177, column: 27, scope: !473, inlinedAt: !868)
!881 = !DILocation(line: 121, column: 95, scope: !503, inlinedAt: !882)
!882 = distinct !DILocation(line: 177, column: 2, scope: !473, inlinedAt: !868)
!883 = !DILocation(line: 123, column: 9, scope: !503, inlinedAt: !882)
!884 = !DILocation(line: 179, column: 2, scope: !473, inlinedAt: !868)
!885 = !DILocation(line: 250, column: 25, scope: !821)
!886 = !DILocation(line: 252, column: 20, scope: !821)
!887 = !DILocation(line: 252, column: 27, scope: !821)
!888 = !DILocation(line: 252, column: 34, scope: !821)
!889 = !DILocation(line: 252, column: 2, scope: !821)
!890 = !DILocation(line: 255, column: 37, scope: !821)
!891 = !DILocation(line: 255, column: 44, scope: !821)
!892 = !DILocation(line: 255, column: 14, scope: !821)
!893 = !DILocation(line: 255, column: 12, scope: !821)
!894 = !DILocation(line: 257, column: 17, scope: !821)
!895 = !DILocation(line: 257, column: 2, scope: !821)
!896 = !DILocation(line: 257, column: 9, scope: !821)
!897 = !DILocation(line: 257, column: 15, scope: !821)
!898 = !DILocation(line: 259, column: 2, scope: !821)
!899 = !DILocation(line: 259, column: 86, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !213, line: 259, column: 84)
!901 = distinct !DILexicalBlock(scope: !902, file: !213, line: 259, column: 11)
!902 = distinct !DILexicalBlock(scope: !821, file: !213, line: 259, column: 5)
!903 = !DILocation(line: 262, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !821, file: !213, line: 262, column: 6)
!905 = !DILocation(line: 262, column: 16, scope: !904)
!906 = !DILocation(line: 262, column: 6, scope: !821)
!907 = !DILocation(line: 268, column: 28, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !213, line: 262, column: 22)
!909 = !DILocation(line: 268, column: 39, scope: !908)
!910 = !DILocation(line: 268, column: 44, scope: !908)
!911 = !DILocation(line: 268, column: 3, scope: !908)
!912 = !DILocation(line: 268, column: 10, scope: !908)
!913 = !DILocation(line: 268, column: 26, scope: !908)
!914 = !DILocation(line: 269, column: 32, scope: !908)
!915 = !DILocalVariable(name: "thread", arg: 1, scope: !916, file: !917, line: 59, type: !108)
!916 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !917, file: !917, line: 59, type: !918, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!917 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!918 = !DISubroutineType(types: !919)
!919 = !{null, !108, !155}
!920 = !DILocation(line: 59, column: 47, scope: !916, inlinedAt: !921)
!921 = distinct !DILocation(line: 269, column: 3, scope: !908)
!922 = !DILocalVariable(name: "value", arg: 2, scope: !916, file: !917, line: 59, type: !155)
!923 = !DILocation(line: 59, column: 68, scope: !916, inlinedAt: !921)
!924 = !DILocation(line: 61, column: 35, scope: !916, inlinedAt: !921)
!925 = !DILocation(line: 61, column: 2, scope: !916, inlinedAt: !921)
!926 = !DILocation(line: 61, column: 10, scope: !916, inlinedAt: !921)
!927 = !DILocation(line: 61, column: 15, scope: !916, inlinedAt: !921)
!928 = !DILocation(line: 61, column: 33, scope: !916, inlinedAt: !921)
!929 = !DILocation(line: 270, column: 18, scope: !908)
!930 = !DILocation(line: 270, column: 3, scope: !908)
!931 = !DILocation(line: 271, column: 3, scope: !908)
!932 = !DILocation(line: 272, column: 2, scope: !908)
!933 = !DILocation(line: 273, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !904, file: !213, line: 272, column: 9)
!935 = !DILocation(line: 273, column: 10, scope: !934)
!936 = !DILocation(line: 273, column: 21, scope: !934)
!937 = !DILocation(line: 274, column: 3, scope: !934)
!938 = !DILocation(line: 235, column: 84, scope: !551, inlinedAt: !939)
!939 = distinct !DILocation(line: 274, column: 3, scope: !934)
!940 = !DILocation(line: 236, column: 23, scope: !551, inlinedAt: !939)
!941 = !DILocation(line: 238, column: 9, scope: !551, inlinedAt: !939)
!942 = !DILocation(line: 261, column: 22, scope: !551, inlinedAt: !939)
!943 = !DILocation(line: 88, column: 80, scope: !561, inlinedAt: !944)
!944 = distinct !DILocation(line: 261, column: 2, scope: !551, inlinedAt: !939)
!945 = !DILocation(line: 91, column: 6, scope: !567, inlinedAt: !944)
!946 = !DILocation(line: 91, column: 10, scope: !567, inlinedAt: !944)
!947 = !DILocation(line: 91, column: 6, scope: !561, inlinedAt: !944)
!948 = !DILocation(line: 92, column: 3, scope: !571, inlinedAt: !944)
!949 = !DILocation(line: 94, column: 2, scope: !561, inlinedAt: !944)
!950 = !DILocation(line: 114, column: 1, scope: !561, inlinedAt: !944)
!951 = !DILocation(line: 262, column: 19, scope: !904)
!952 = !DILabel(scope: !821, name: "k_mutex_unlock_return", file: !213, line: 278)
!953 = !DILocation(line: 278, column: 1, scope: !821)
!954 = !DILocation(line: 279, column: 2, scope: !821)
!955 = !DILocation(line: 279, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !821, file: !213, line: 279, column: 5)
!957 = !DILocation(line: 281, column: 2, scope: !821)
!958 = !DILocation(line: 282, column: 1, scope: !821)
!959 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !344, file: !344, line: 335, type: !960, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!960 = !DISubroutineType(types: !961)
!961 = !{!89, !962}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!963 = !DILocalVariable(name: "list", arg: 1, scope: !959, file: !344, line: 335, type: !962)
!964 = !DILocation(line: 335, column: 55, scope: !959)
!965 = !DILocation(line: 335, column: 92, scope: !959)
!966 = !DILocation(line: 335, column: 71, scope: !959)
!967 = !DILocation(line: 335, column: 98, scope: !959)
!968 = !DILocation(line: 335, column: 63, scope: !959)
!969 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !344, file: !344, line: 255, type: !970, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!970 = !DISubroutineType(types: !971)
!971 = !{!348, !962}
!972 = !DILocalVariable(name: "list", arg: 1, scope: !969, file: !344, line: 255, type: !962)
!973 = !DILocation(line: 255, column: 64, scope: !969)
!974 = !DILocation(line: 257, column: 9, scope: !969)
!975 = !DILocation(line: 257, column: 15, scope: !969)
!976 = !DILocation(line: 257, column: 2, scope: !969)
!977 = distinct !DISubprogram(name: "sys_dlist_init", scope: !94, file: !94, line: 203, type: !978, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!981 = !DILocalVariable(name: "list", arg: 1, scope: !977, file: !94, line: 203, type: !980)
!982 = !DILocation(line: 203, column: 48, scope: !977)
!983 = !DILocation(line: 205, column: 30, scope: !977)
!984 = !DILocation(line: 205, column: 2, scope: !977)
!985 = !DILocation(line: 205, column: 8, scope: !977)
!986 = !DILocation(line: 205, column: 13, scope: !977)
!987 = !DILocation(line: 206, column: 30, scope: !977)
!988 = !DILocation(line: 206, column: 2, scope: !977)
!989 = !DILocation(line: 206, column: 8, scope: !977)
!990 = !DILocation(line: 206, column: 13, scope: !977)
!991 = !DILocation(line: 207, column: 1, scope: !977)
!992 = distinct !DISubprogram(name: "z_get_new_prio_with_ceiling", scope: !773, file: !773, line: 188, type: !993, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!993 = !DISubroutineType(types: !994)
!994 = !{!91, !91}
!995 = !DILocalVariable(name: "prio", arg: 1, scope: !992, file: !773, line: 188, type: !91)
!996 = !DILocation(line: 188, column: 51, scope: !992)
!997 = !DILocation(line: 190, column: 33, scope: !992)
!998 = !DILocation(line: 190, column: 9, scope: !992)
!999 = !DILocation(line: 190, column: 41, scope: !992)
!1000 = !DILocation(line: 190, column: 2, scope: !992)
!1001 = distinct !DISubprogram(name: "z_is_under_prio_ceiling", scope: !773, file: !773, line: 183, type: !1002, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!89, !91}
!1004 = !DILocalVariable(name: "prio", arg: 1, scope: !1001, file: !773, line: 183, type: !91)
!1005 = !DILocation(line: 183, column: 49, scope: !1001)
!1006 = !DILocation(line: 185, column: 9, scope: !1001)
!1007 = !DILocation(line: 185, column: 14, scope: !1001)
!1008 = !DILocation(line: 185, column: 2, scope: !1001)
!1009 = distinct !DISubprogram(name: "z_is_prio1_higher_than_prio2", scope: !773, file: !773, line: 208, type: !774, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!1010 = !DILocalVariable(name: "prio1", arg: 1, scope: !1009, file: !773, line: 208, type: !91)
!1011 = !DILocation(line: 208, column: 54, scope: !1009)
!1012 = !DILocalVariable(name: "prio2", arg: 2, scope: !1009, file: !773, line: 208, type: !91)
!1013 = !DILocation(line: 208, column: 65, scope: !1009)
!1014 = !DILocation(line: 210, column: 9, scope: !1009)
!1015 = !DILocation(line: 210, column: 17, scope: !1009)
!1016 = !DILocation(line: 210, column: 15, scope: !1009)
!1017 = !DILocation(line: 210, column: 2, scope: !1009)
!1018 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !94, file: !94, line: 303, type: !1019, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!92, !980}
!1021 = !DILocalVariable(name: "list", arg: 1, scope: !1018, file: !94, line: 303, type: !980)
!1022 = !DILocation(line: 303, column: 61, scope: !1018)
!1023 = !DILocation(line: 305, column: 28, scope: !1018)
!1024 = !DILocation(line: 305, column: 9, scope: !1018)
!1025 = !DILocation(line: 305, column: 49, scope: !1018)
!1026 = !DILocation(line: 305, column: 55, scope: !1018)
!1027 = !DILocation(line: 305, column: 2, scope: !1018)
!1028 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !94, file: !94, line: 275, type: !1029, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !206)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!89, !980}
!1031 = !DILocalVariable(name: "list", arg: 1, scope: !1028, file: !94, line: 275, type: !980)
!1032 = !DILocation(line: 275, column: 53, scope: !1028)
!1033 = !DILocation(line: 277, column: 9, scope: !1028)
!1034 = !DILocation(line: 277, column: 15, scope: !1028)
!1035 = !DILocation(line: 277, column: 23, scope: !1028)
!1036 = !DILocation(line: 277, column: 20, scope: !1028)
!1037 = !DILocation(line: 277, column: 2, scope: !1028)
