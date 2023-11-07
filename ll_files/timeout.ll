; ModuleID = '../bc_files/timeout.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/timeout.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
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
%struct.z_spinlock_key = type { i32 }
%struct.k_timepoint_t = type { i64 }

@timeout_lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0
@curr_tick = internal global i64 0, align 8, !dbg !128
@timeout_list = internal global %struct._dnode { %union.anon.0 { ptr @timeout_list }, %union.anon.1 { ptr @timeout_list } }, align 4, !dbg !135
@announce_remaining = internal global i32 0, align 4, !dbg !133

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !150 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !239, metadata !DIExpression()), !dbg !240
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !241, metadata !DIExpression()), !dbg !242
  %5 = load ptr, ptr %3, align 4, !dbg !243
  %6 = load ptr, ptr %4, align 4, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !246 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load ptr, ptr %2, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !253 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load i8, ptr %2, align 1, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !260 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !263, metadata !DIExpression()), !dbg !264
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !265, metadata !DIExpression()), !dbg !266
  %5 = load i8, ptr %3, align 1, !dbg !267
  %6 = load i32, ptr %4, align 4, !dbg !268
  ret ptr null, !dbg !269
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !270 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !275, metadata !DIExpression()), !dbg !276
  %3 = load ptr, ptr %2, align 4, !dbg !277
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !278
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !279
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !280
  ret i64 %6, !dbg !281
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !282 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !283, metadata !DIExpression()), !dbg !284
  %3 = load ptr, ptr %2, align 4, !dbg !285
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !286
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !287
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !288
  ret i64 %6, !dbg !289
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !290 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 4, !dbg !314
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !315
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !316
  ret i64 %5, !dbg !317
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !318 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !322
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !323
  ret i64 %5, !dbg !324
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !325 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !328, metadata !DIExpression()), !dbg !329
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !330, metadata !DIExpression()), !dbg !331
  %5 = load ptr, ptr %4, align 4, !dbg !332
  %6 = load ptr, ptr %3, align 4, !dbg !333
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !334
  store ptr %5, ptr %7, align 4, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  %3 = load ptr, ptr %2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !343
  %5 = load ptr, ptr %4, align 4, !dbg !343
  ret ptr %5, !dbg !344
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !366, metadata !DIExpression()), !dbg !367
  %3 = load ptr, ptr %2, align 4, !dbg !368
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !369
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !370
  %6 = zext i1 %5 to i32, !dbg !371
  ret i32 %6, !dbg !372
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !385
  %5 = load i32, ptr %4, align 4, !dbg !385
  ret i32 %5, !dbg !386
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !387 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !406
  %5 = load i32, ptr %4, align 4, !dbg !406
  %6 = load ptr, ptr %2, align 4, !dbg !407
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !408
  %8 = load i32, ptr %7, align 4, !dbg !408
  %9 = sub i32 %5, %8, !dbg !409
  ret i32 %9, !dbg !410
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = load ptr, ptr %2, align 4, !dbg !414
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !415
  %5 = load i32, ptr %4, align 4, !dbg !415
  ret i32 %5, !dbg !416
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_add_timeout(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !417 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.k_timeout_t, align 8
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca ptr, align 4
  %19 = alloca i64, align 8
  %20 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0
  store [1 x i64] %2, ptr %20, align 8
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !420, metadata !DIExpression()), !dbg !421
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata ptr %12, metadata !424, metadata !DIExpression()), !dbg !425
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !426
  %22 = load i64, ptr %21, align 8, !dbg !426
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !428
  store i64 -1, ptr %23, align 8, !dbg !428
  %24 = icmp eq i64 %22, -1, !dbg !429
  br i1 %24, label %25, label %26, !dbg !430

25:                                               ; preds = %3
  br label %132, !dbg !431

26:                                               ; preds = %3
  %27 = load ptr, ptr %14, align 4, !dbg !433
  %28 = load ptr, ptr %13, align 4, !dbg !434
  %29 = getelementptr inbounds %struct._timeout, ptr %28, i32 0, i32 1, !dbg !435
  store ptr %27, ptr %29, align 8, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %16, metadata !437, metadata !DIExpression()), !dbg !443
  call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 4, i1 false), !dbg !443
  call void @llvm.dbg.declare(metadata ptr %17, metadata !444, metadata !DIExpression()), !dbg !445
  store ptr @timeout_lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !446, metadata !DIExpression()), !dbg !451
  %30 = load ptr, ptr %11, align 4, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %10, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata ptr %7, metadata !456, metadata !DIExpression()), !dbg !461
  %31 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !463, !srcloc !464
  store i32 %31, ptr %7, align 4, !dbg !463
  %32 = load i32, ptr %7, align 4, !dbg !465
  store i32 %32, ptr %10, align 4, !dbg !466
  %33 = load ptr, ptr %11, align 4, !dbg !467
  store ptr %33, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !468, metadata !DIExpression()), !dbg !472
  %34 = load ptr, ptr %6, align 4, !dbg !474
  %35 = load ptr, ptr %11, align 4, !dbg !475
  store ptr %35, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !476, metadata !DIExpression()), !dbg !478
  %36 = load ptr, ptr %5, align 4, !dbg !480
  %37 = load i32, ptr %10, align 4, !dbg !481
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !482
  store i32 %37, ptr %38, align 4, !dbg !482
  br label %39, !dbg !483

39:                                               ; preds = %arch_irq_unlock.exit, %26
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !484
  %41 = load i32, ptr %40, align 4, !dbg !484
  %42 = icmp ne i32 %41, 0, !dbg !486
  %43 = xor i1 %42, true, !dbg !486
  br i1 %43, label %44, label %132, !dbg !487

44:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %18, metadata !488, metadata !DIExpression()), !dbg !490
  %45 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !491
  %46 = load i64, ptr %45, align 8, !dbg !491
  %47 = sub nsw i64 -2, %46, !dbg !493
  %48 = icmp sge i64 %47, 0, !dbg !494
  br i1 %48, label %49, label %64, !dbg !495

49:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %19, metadata !496, metadata !DIExpression()), !dbg !498
  %50 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !499
  %51 = load i64, ptr %50, align 8, !dbg !499
  %52 = sub nsw i64 -2, %51, !dbg !500
  %53 = load i64, ptr @curr_tick, align 8, !dbg !501
  %54 = sub i64 %52, %53, !dbg !502
  store i64 %54, ptr %19, align 8, !dbg !498
  %55 = load i64, ptr %19, align 8, !dbg !503
  %56 = icmp sgt i64 1, %55, !dbg !504
  br i1 %56, label %57, label %58, !dbg !505

57:                                               ; preds = %49
  br label %60, !dbg !505

58:                                               ; preds = %49
  %59 = load i64, ptr %19, align 8, !dbg !506
  br label %60, !dbg !505

60:                                               ; preds = %58, %57
  %61 = phi i64 [ 1, %57 ], [ %59, %58 ], !dbg !505
  %62 = load ptr, ptr %13, align 4, !dbg !507
  %63 = getelementptr inbounds %struct._timeout, ptr %62, i32 0, i32 2, !dbg !508
  store i64 %61, ptr %63, align 8, !dbg !509
  br label %73, !dbg !510

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !511
  %66 = load i64, ptr %65, align 8, !dbg !511
  %67 = add nsw i64 %66, 1, !dbg !513
  %68 = call i32 @elapsed(), !dbg !514
  %69 = sext i32 %68 to i64, !dbg !514
  %70 = add nsw i64 %67, %69, !dbg !515
  %71 = load ptr, ptr %13, align 4, !dbg !516
  %72 = getelementptr inbounds %struct._timeout, ptr %71, i32 0, i32 2, !dbg !517
  store i64 %70, ptr %72, align 8, !dbg !518
  br label %73

73:                                               ; preds = %64, %60
  %74 = call ptr @first(), !dbg !519
  store ptr %74, ptr %18, align 4, !dbg !521
  br label %75, !dbg !522

75:                                               ; preds = %106, %73
  %76 = load ptr, ptr %18, align 4, !dbg !523
  %77 = icmp ne ptr %76, null, !dbg !525
  br i1 %77, label %78, label %109, !dbg !526

78:                                               ; preds = %75
  %79 = load ptr, ptr %18, align 4, !dbg !527
  %80 = getelementptr inbounds %struct._timeout, ptr %79, i32 0, i32 2, !dbg !530
  %81 = load i64, ptr %80, align 8, !dbg !530
  %82 = load ptr, ptr %13, align 4, !dbg !531
  %83 = getelementptr inbounds %struct._timeout, ptr %82, i32 0, i32 2, !dbg !532
  %84 = load i64, ptr %83, align 8, !dbg !532
  %85 = icmp sgt i64 %81, %84, !dbg !533
  br i1 %85, label %86, label %98, !dbg !534

86:                                               ; preds = %78
  %87 = load ptr, ptr %13, align 4, !dbg !535
  %88 = getelementptr inbounds %struct._timeout, ptr %87, i32 0, i32 2, !dbg !537
  %89 = load i64, ptr %88, align 8, !dbg !537
  %90 = load ptr, ptr %18, align 4, !dbg !538
  %91 = getelementptr inbounds %struct._timeout, ptr %90, i32 0, i32 2, !dbg !539
  %92 = load i64, ptr %91, align 8, !dbg !540
  %93 = sub nsw i64 %92, %89, !dbg !540
  store i64 %93, ptr %91, align 8, !dbg !540
  %94 = load ptr, ptr %18, align 4, !dbg !541
  %95 = getelementptr inbounds %struct._timeout, ptr %94, i32 0, i32 0, !dbg !542
  %96 = load ptr, ptr %13, align 4, !dbg !543
  %97 = getelementptr inbounds %struct._timeout, ptr %96, i32 0, i32 0, !dbg !544
  call void @sys_dlist_insert(ptr noundef %95, ptr noundef %97), !dbg !545
  br label %109, !dbg !546

98:                                               ; preds = %78
  %99 = load ptr, ptr %18, align 4, !dbg !547
  %100 = getelementptr inbounds %struct._timeout, ptr %99, i32 0, i32 2, !dbg !548
  %101 = load i64, ptr %100, align 8, !dbg !548
  %102 = load ptr, ptr %13, align 4, !dbg !549
  %103 = getelementptr inbounds %struct._timeout, ptr %102, i32 0, i32 2, !dbg !550
  %104 = load i64, ptr %103, align 8, !dbg !551
  %105 = sub nsw i64 %104, %101, !dbg !551
  store i64 %105, ptr %103, align 8, !dbg !551
  br label %106, !dbg !552

106:                                              ; preds = %98
  %107 = load ptr, ptr %18, align 4, !dbg !553
  %108 = call ptr @next(ptr noundef %107), !dbg !554
  store ptr %108, ptr %18, align 4, !dbg !555
  br label %75, !dbg !556, !llvm.loop !557

109:                                              ; preds = %86, %75
  %110 = load ptr, ptr %18, align 4, !dbg !559
  %111 = icmp eq ptr %110, null, !dbg !561
  br i1 %111, label %112, label %115, !dbg !562

112:                                              ; preds = %109
  %113 = load ptr, ptr %13, align 4, !dbg !563
  %114 = getelementptr inbounds %struct._timeout, ptr %113, i32 0, i32 0, !dbg !565
  call void @sys_dlist_append(ptr noundef @timeout_list, ptr noundef %114), !dbg !566
  br label %115, !dbg !567

115:                                              ; preds = %112, %109
  %116 = load ptr, ptr %13, align 4, !dbg !568
  %117 = call ptr @first(), !dbg !570
  %118 = icmp eq ptr %116, %117, !dbg !571
  br i1 %118, label %119, label %121, !dbg !572

119:                                              ; preds = %115
  %120 = call i32 @next_timeout(), !dbg !573
  call void @sys_clock_set_timeout(i32 noundef %120, i1 noundef zeroext false), !dbg !575
  br label %121, !dbg !576

121:                                              ; preds = %119, %115
  br label %122, !dbg !577

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !578
  %124 = load [1 x i32], ptr %123, align 4, !dbg !578
  store [1 x i32] %124, ptr %8, align 4
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !579, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata ptr %8, metadata !585, metadata !DIExpression()), !dbg !586
  %125 = load ptr, ptr %9, align 4, !dbg !587
  %126 = load i32, ptr %8, align 4, !dbg !588
  store i32 %126, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !589, metadata !DIExpression()), !dbg !593
  %127 = load i32, ptr %4, align 4, !dbg !595
  %128 = icmp ne i32 %127, 0, !dbg !597
  br i1 %128, label %129, label %130, !dbg !598

129:                                              ; preds = %122
  br label %arch_irq_unlock.exit, !dbg !599

130:                                              ; preds = %122
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !601, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !603

arch_irq_unlock.exit:                             ; preds = %129, %130
  %131 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !604
  store i32 1, ptr %131, align 4, !dbg !605
  br label %39, !dbg !606, !llvm.loop !607

132:                                              ; preds = %25, %39
  ret void, !dbg !609
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @elapsed() #0 !dbg !610 {
  %1 = load i32, ptr @announce_remaining, align 4, !dbg !613
  %2 = icmp eq i32 %1, 0, !dbg !614
  br i1 %2, label %3, label %5, !dbg !613

3:                                                ; preds = %0
  %4 = call i32 @sys_clock_elapsed(), !dbg !615
  br label %6, !dbg !613

5:                                                ; preds = %0
  br label %6, !dbg !613

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ 0, %5 ], !dbg !613
  ret i32 %7, !dbg !616
}

; Function Attrs: noinline nounwind optnone
define internal ptr @first() #0 !dbg !617 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !620, metadata !DIExpression()), !dbg !622
  %3 = call ptr @sys_dlist_peek_head(ptr noundef @timeout_list), !dbg !623
  store ptr %3, ptr %1, align 4, !dbg !622
  %4 = load ptr, ptr %1, align 4, !dbg !624
  %5 = icmp eq ptr %4, null, !dbg !625
  br i1 %5, label %6, label %7, !dbg !624

6:                                                ; preds = %0
  br label %11, !dbg !624

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 4, !dbg !626
  %9 = getelementptr inbounds i8, ptr %8, i32 0, !dbg !628
  store ptr %9, ptr %2, align 4, !dbg !629
  %10 = load ptr, ptr %2, align 4, !dbg !630
  br label %11, !dbg !624

11:                                               ; preds = %7, %6
  %12 = phi ptr [ null, %6 ], [ %10, %7 ], !dbg !624
  ret ptr %12, !dbg !631
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !632 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !635, metadata !DIExpression()), !dbg !636
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !637, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata ptr %5, metadata !639, metadata !DIExpression()), !dbg !641
  %6 = load ptr, ptr %3, align 4, !dbg !642
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !643
  %8 = load ptr, ptr %7, align 4, !dbg !643
  store ptr %8, ptr %5, align 4, !dbg !641
  %9 = load ptr, ptr %5, align 4, !dbg !644
  %10 = load ptr, ptr %4, align 4, !dbg !645
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 1, !dbg !646
  store ptr %9, ptr %11, align 4, !dbg !647
  %12 = load ptr, ptr %3, align 4, !dbg !648
  %13 = load ptr, ptr %4, align 4, !dbg !649
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 0, !dbg !650
  store ptr %12, ptr %14, align 4, !dbg !651
  %15 = load ptr, ptr %4, align 4, !dbg !652
  %16 = load ptr, ptr %5, align 4, !dbg !653
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !654
  store ptr %15, ptr %17, align 4, !dbg !655
  %18 = load ptr, ptr %4, align 4, !dbg !656
  %19 = load ptr, ptr %3, align 4, !dbg !657
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !658
  store ptr %18, ptr %20, align 4, !dbg !659
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone
define internal ptr @next(ptr noundef %0) #0 !dbg !661 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !664, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.declare(metadata ptr %3, metadata !666, metadata !DIExpression()), !dbg !667
  %5 = load ptr, ptr %2, align 4, !dbg !668
  %6 = getelementptr inbounds %struct._timeout, ptr %5, i32 0, i32 0, !dbg !669
  %7 = call ptr @sys_dlist_peek_next(ptr noundef @timeout_list, ptr noundef %6), !dbg !670
  store ptr %7, ptr %3, align 4, !dbg !667
  %8 = load ptr, ptr %3, align 4, !dbg !671
  %9 = icmp eq ptr %8, null, !dbg !672
  br i1 %9, label %10, label %11, !dbg !671

10:                                               ; preds = %1
  br label %15, !dbg !671

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !673
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !675
  store ptr %13, ptr %4, align 4, !dbg !676
  %14 = load ptr, ptr %4, align 4, !dbg !677
  br label %15, !dbg !671

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !671
  ret ptr %16, !dbg !678
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !679 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !683, metadata !DIExpression()), !dbg !684
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata ptr %5, metadata !687, metadata !DIExpression()), !dbg !688
  %6 = load ptr, ptr %3, align 4, !dbg !689
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !690
  %8 = load ptr, ptr %7, align 4, !dbg !690
  store ptr %8, ptr %5, align 4, !dbg !688
  %9 = load ptr, ptr %3, align 4, !dbg !691
  %10 = load ptr, ptr %4, align 4, !dbg !692
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 0, !dbg !693
  store ptr %9, ptr %11, align 4, !dbg !694
  %12 = load ptr, ptr %5, align 4, !dbg !695
  %13 = load ptr, ptr %4, align 4, !dbg !696
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 1, !dbg !697
  store ptr %12, ptr %14, align 4, !dbg !698
  %15 = load ptr, ptr %4, align 4, !dbg !699
  %16 = load ptr, ptr %5, align 4, !dbg !700
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !701
  store ptr %15, ptr %17, align 4, !dbg !702
  %18 = load ptr, ptr %4, align 4, !dbg !703
  %19 = load ptr, ptr %3, align 4, !dbg !704
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !705
  store ptr %18, ptr %20, align 4, !dbg !706
  ret void, !dbg !707
}

declare void @sys_clock_set_timeout(i32 noundef, i1 noundef zeroext) #3

; Function Attrs: noinline nounwind optnone
define internal i32 @next_timeout() #0 !dbg !708 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !709, metadata !DIExpression()), !dbg !710
  %4 = call ptr @first(), !dbg !711
  store ptr %4, ptr %1, align 4, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %2, metadata !712, metadata !DIExpression()), !dbg !713
  %5 = call i32 @elapsed(), !dbg !714
  store i32 %5, ptr %2, align 4, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %3, metadata !715, metadata !DIExpression()), !dbg !716
  %6 = load ptr, ptr %1, align 4, !dbg !717
  %7 = icmp eq ptr %6, null, !dbg !719
  br i1 %7, label %16, label %8, !dbg !720

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 4, !dbg !721
  %10 = getelementptr inbounds %struct._timeout, ptr %9, i32 0, i32 2, !dbg !722
  %11 = load i64, ptr %10, align 8, !dbg !722
  %12 = load i32, ptr %2, align 4, !dbg !723
  %13 = sext i32 %12 to i64, !dbg !723
  %14 = sub nsw i64 %11, %13, !dbg !724
  %15 = icmp sgt i64 %14, 2147483647, !dbg !725
  br i1 %15, label %16, label %17, !dbg !726

16:                                               ; preds = %8, %0
  store i32 2147483647, ptr %3, align 4, !dbg !727
  br label %36, !dbg !729

17:                                               ; preds = %8
  %18 = load ptr, ptr %1, align 4, !dbg !730
  %19 = getelementptr inbounds %struct._timeout, ptr %18, i32 0, i32 2, !dbg !732
  %20 = load i64, ptr %19, align 8, !dbg !732
  %21 = load i32, ptr %2, align 4, !dbg !733
  %22 = sext i32 %21 to i64, !dbg !733
  %23 = sub nsw i64 %20, %22, !dbg !734
  %24 = icmp sgt i64 0, %23, !dbg !735
  br i1 %24, label %25, label %26, !dbg !736

25:                                               ; preds = %17
  br label %33, !dbg !736

26:                                               ; preds = %17
  %27 = load ptr, ptr %1, align 4, !dbg !737
  %28 = getelementptr inbounds %struct._timeout, ptr %27, i32 0, i32 2, !dbg !738
  %29 = load i64, ptr %28, align 8, !dbg !738
  %30 = load i32, ptr %2, align 4, !dbg !739
  %31 = sext i32 %30 to i64, !dbg !739
  %32 = sub nsw i64 %29, %31, !dbg !740
  br label %33, !dbg !736

33:                                               ; preds = %26, %25
  %34 = phi i64 [ 0, %25 ], [ %32, %26 ], !dbg !736
  %35 = trunc i64 %34 to i32, !dbg !741
  store i32 %35, ptr %3, align 4, !dbg !742
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, ptr %3, align 4, !dbg !743
  ret i32 %37, !dbg !744
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_abort_timeout(ptr noundef %0) #0 !dbg !745 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !748, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata ptr %11, metadata !750, metadata !DIExpression()), !dbg !751
  store i32 -5, ptr %11, align 4, !dbg !751
  call void @llvm.dbg.declare(metadata ptr %12, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !754
  call void @llvm.dbg.declare(metadata ptr %13, metadata !755, metadata !DIExpression()), !dbg !756
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !446, metadata !DIExpression()), !dbg !757
  %14 = load ptr, ptr %9, align 4, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %8, metadata !454, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.declare(metadata ptr %5, metadata !456, metadata !DIExpression()), !dbg !761
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !763, !srcloc !464
  store i32 %15, ptr %5, align 4, !dbg !763
  %16 = load i32, ptr %5, align 4, !dbg !764
  store i32 %16, ptr %8, align 4, !dbg !765
  %17 = load ptr, ptr %9, align 4, !dbg !766
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !468, metadata !DIExpression()), !dbg !767
  %18 = load ptr, ptr %4, align 4, !dbg !769
  %19 = load ptr, ptr %9, align 4, !dbg !770
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !476, metadata !DIExpression()), !dbg !771
  %20 = load ptr, ptr %3, align 4, !dbg !773
  %21 = load i32, ptr %8, align 4, !dbg !774
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !775
  store i32 %21, ptr %22, align 4, !dbg !775
  br label %23, !dbg !776

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !777
  %25 = load i32, ptr %24, align 4, !dbg !777
  %26 = icmp ne i32 %25, 0, !dbg !779
  %27 = xor i1 %26, true, !dbg !779
  br i1 %27, label %28, label %45, !dbg !780

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4, !dbg !781
  %30 = getelementptr inbounds %struct._timeout, ptr %29, i32 0, i32 0, !dbg !784
  %31 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %30), !dbg !785
  br i1 %31, label %32, label %34, !dbg !786

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 4, !dbg !787
  call void @remove_timeout(ptr noundef %33), !dbg !789
  store i32 0, ptr %11, align 4, !dbg !790
  br label %34, !dbg !791

34:                                               ; preds = %32, %28
  br label %35, !dbg !792

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !793
  %37 = load [1 x i32], ptr %36, align 4, !dbg !793
  store [1 x i32] %37, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.declare(metadata ptr %6, metadata !585, metadata !DIExpression()), !dbg !796
  %38 = load ptr, ptr %7, align 4, !dbg !797
  %39 = load i32, ptr %6, align 4, !dbg !798
  store i32 %39, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !589, metadata !DIExpression()), !dbg !799
  %40 = load i32, ptr %2, align 4, !dbg !801
  %41 = icmp ne i32 %40, 0, !dbg !802
  br i1 %41, label %42, label %43, !dbg !803

42:                                               ; preds = %35
  br label %arch_irq_unlock.exit, !dbg !804

43:                                               ; preds = %35
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !805, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !806

arch_irq_unlock.exit:                             ; preds = %42, %43
  %44 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !807
  store i32 1, ptr %44, align 4, !dbg !808
  br label %23, !dbg !809, !llvm.loop !810

45:                                               ; preds = %23
  %46 = load i32, ptr %11, align 4, !dbg !812
  ret i32 %46, !dbg !813
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !814 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !820, metadata !DIExpression()), !dbg !821
  %3 = load ptr, ptr %2, align 4, !dbg !822
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !823
  %5 = load ptr, ptr %4, align 4, !dbg !823
  %6 = icmp ne ptr %5, null, !dbg !824
  ret i1 %6, !dbg !825
}

; Function Attrs: noinline nounwind optnone
define internal void @remove_timeout(ptr noundef %0) #0 !dbg !826 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !827, metadata !DIExpression()), !dbg !828
  %3 = load ptr, ptr %2, align 4, !dbg !829
  %4 = call ptr @next(ptr noundef %3), !dbg !831
  %5 = icmp ne ptr %4, null, !dbg !832
  br i1 %5, label %6, label %15, !dbg !833

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !834
  %8 = getelementptr inbounds %struct._timeout, ptr %7, i32 0, i32 2, !dbg !836
  %9 = load i64, ptr %8, align 8, !dbg !836
  %10 = load ptr, ptr %2, align 4, !dbg !837
  %11 = call ptr @next(ptr noundef %10), !dbg !838
  %12 = getelementptr inbounds %struct._timeout, ptr %11, i32 0, i32 2, !dbg !839
  %13 = load i64, ptr %12, align 8, !dbg !840
  %14 = add nsw i64 %13, %9, !dbg !840
  store i64 %14, ptr %12, align 8, !dbg !840
  br label %15, !dbg !841

15:                                               ; preds = %6, %1
  %16 = load ptr, ptr %2, align 4, !dbg !842
  %17 = getelementptr inbounds %struct._timeout, ptr %16, i32 0, i32 0, !dbg !843
  call void @sys_dlist_remove(ptr noundef %17), !dbg !844
  ret void, !dbg !845
}

; Function Attrs: noinline nounwind optnone
define hidden i64 @z_timeout_remaining(ptr noundef %0) #0 !dbg !846 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !851, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.declare(metadata ptr %11, metadata !853, metadata !DIExpression()), !dbg !854
  store i64 0, ptr %11, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %12, metadata !855, metadata !DIExpression()), !dbg !857
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !857
  call void @llvm.dbg.declare(metadata ptr %13, metadata !858, metadata !DIExpression()), !dbg !859
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !446, metadata !DIExpression()), !dbg !860
  %14 = load ptr, ptr %9, align 4, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %8, metadata !454, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.declare(metadata ptr %5, metadata !456, metadata !DIExpression()), !dbg !864
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !866, !srcloc !464
  store i32 %15, ptr %5, align 4, !dbg !866
  %16 = load i32, ptr %5, align 4, !dbg !867
  store i32 %16, ptr %8, align 4, !dbg !868
  %17 = load ptr, ptr %9, align 4, !dbg !869
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !468, metadata !DIExpression()), !dbg !870
  %18 = load ptr, ptr %4, align 4, !dbg !872
  %19 = load ptr, ptr %9, align 4, !dbg !873
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !476, metadata !DIExpression()), !dbg !874
  %20 = load ptr, ptr %3, align 4, !dbg !876
  %21 = load i32, ptr %8, align 4, !dbg !877
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !878
  store i32 %21, ptr %22, align 4, !dbg !878
  br label %23, !dbg !879

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !880
  %25 = load i32, ptr %24, align 4, !dbg !880
  %26 = icmp ne i32 %25, 0, !dbg !882
  %27 = xor i1 %26, true, !dbg !882
  br i1 %27, label %28, label %41, !dbg !883

28:                                               ; preds = %23
  %29 = load ptr, ptr %10, align 4, !dbg !884
  %30 = call i64 @timeout_rem(ptr noundef %29), !dbg !886
  store i64 %30, ptr %11, align 8, !dbg !887
  br label %31, !dbg !888

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !889
  %33 = load [1 x i32], ptr %32, align 4, !dbg !889
  store [1 x i32] %33, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.declare(metadata ptr %6, metadata !585, metadata !DIExpression()), !dbg !892
  %34 = load ptr, ptr %7, align 4, !dbg !893
  %35 = load i32, ptr %6, align 4, !dbg !894
  store i32 %35, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !589, metadata !DIExpression()), !dbg !895
  %36 = load i32, ptr %2, align 4, !dbg !897
  %37 = icmp ne i32 %36, 0, !dbg !898
  br i1 %37, label %38, label %39, !dbg !899

38:                                               ; preds = %31
  br label %arch_irq_unlock.exit, !dbg !900

39:                                               ; preds = %31
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !901, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !902

arch_irq_unlock.exit:                             ; preds = %38, %39
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !903
  store i32 1, ptr %40, align 4, !dbg !904
  br label %23, !dbg !905, !llvm.loop !906

41:                                               ; preds = %23
  %42 = load i64, ptr %11, align 8, !dbg !908
  ret i64 %42, !dbg !909
}

; Function Attrs: noinline nounwind optnone
define internal i64 @timeout_rem(ptr noundef %0) #0 !dbg !910 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !911, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.declare(metadata ptr %4, metadata !913, metadata !DIExpression()), !dbg !914
  store i64 0, ptr %4, align 8, !dbg !914
  %6 = load ptr, ptr %3, align 4, !dbg !915
  %7 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %6), !dbg !917
  br i1 %7, label %8, label %9, !dbg !918

8:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !919
  br label %33, !dbg !919

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !921, metadata !DIExpression()), !dbg !923
  %10 = call ptr @first(), !dbg !924
  store ptr %10, ptr %5, align 4, !dbg !923
  br label %11, !dbg !925

11:                                               ; preds = %25, %9
  %12 = load ptr, ptr %5, align 4, !dbg !926
  %13 = icmp ne ptr %12, null, !dbg !928
  br i1 %13, label %14, label %28, !dbg !929

14:                                               ; preds = %11
  %15 = load ptr, ptr %5, align 4, !dbg !930
  %16 = getelementptr inbounds %struct._timeout, ptr %15, i32 0, i32 2, !dbg !932
  %17 = load i64, ptr %16, align 8, !dbg !932
  %18 = load i64, ptr %4, align 8, !dbg !933
  %19 = add nsw i64 %18, %17, !dbg !933
  store i64 %19, ptr %4, align 8, !dbg !933
  %20 = load ptr, ptr %3, align 4, !dbg !934
  %21 = load ptr, ptr %5, align 4, !dbg !936
  %22 = icmp eq ptr %20, %21, !dbg !937
  br i1 %22, label %23, label %24, !dbg !938

23:                                               ; preds = %14
  br label %28, !dbg !939

24:                                               ; preds = %14
  br label %25, !dbg !941

25:                                               ; preds = %24
  %26 = load ptr, ptr %5, align 4, !dbg !942
  %27 = call ptr @next(ptr noundef %26), !dbg !943
  store ptr %27, ptr %5, align 4, !dbg !944
  br label %11, !dbg !945, !llvm.loop !946

28:                                               ; preds = %23, %11
  %29 = load i64, ptr %4, align 8, !dbg !948
  %30 = call i32 @elapsed(), !dbg !949
  %31 = sext i32 %30 to i64, !dbg !949
  %32 = sub nsw i64 %29, %31, !dbg !950
  store i64 %32, ptr %2, align 8, !dbg !951
  br label %33, !dbg !951

33:                                               ; preds = %28, %8
  %34 = load i64, ptr %2, align 8, !dbg !952
  ret i64 %34, !dbg !952
}

; Function Attrs: noinline nounwind optnone
define hidden i64 @z_timeout_expires(ptr noundef %0) #0 !dbg !953 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata ptr %11, metadata !956, metadata !DIExpression()), !dbg !957
  store i64 0, ptr %11, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %12, metadata !958, metadata !DIExpression()), !dbg !960
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !960
  call void @llvm.dbg.declare(metadata ptr %13, metadata !961, metadata !DIExpression()), !dbg !962
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !446, metadata !DIExpression()), !dbg !963
  %14 = load ptr, ptr %9, align 4, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %8, metadata !454, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata ptr %5, metadata !456, metadata !DIExpression()), !dbg !967
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !969, !srcloc !464
  store i32 %15, ptr %5, align 4, !dbg !969
  %16 = load i32, ptr %5, align 4, !dbg !970
  store i32 %16, ptr %8, align 4, !dbg !971
  %17 = load ptr, ptr %9, align 4, !dbg !972
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !468, metadata !DIExpression()), !dbg !973
  %18 = load ptr, ptr %4, align 4, !dbg !975
  %19 = load ptr, ptr %9, align 4, !dbg !976
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !476, metadata !DIExpression()), !dbg !977
  %20 = load ptr, ptr %3, align 4, !dbg !979
  %21 = load i32, ptr %8, align 4, !dbg !980
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !981
  store i32 %21, ptr %22, align 4, !dbg !981
  br label %23, !dbg !982

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !983
  %25 = load i32, ptr %24, align 4, !dbg !983
  %26 = icmp ne i32 %25, 0, !dbg !985
  %27 = xor i1 %26, true, !dbg !985
  br i1 %27, label %28, label %43, !dbg !986

28:                                               ; preds = %23
  %29 = load i64, ptr @curr_tick, align 8, !dbg !987
  %30 = load ptr, ptr %10, align 4, !dbg !989
  %31 = call i64 @timeout_rem(ptr noundef %30), !dbg !990
  %32 = add i64 %29, %31, !dbg !991
  store i64 %32, ptr %11, align 8, !dbg !992
  br label %33, !dbg !993

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !994
  %35 = load [1 x i32], ptr %34, align 4, !dbg !994
  store [1 x i32] %35, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !579, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.declare(metadata ptr %6, metadata !585, metadata !DIExpression()), !dbg !997
  %36 = load ptr, ptr %7, align 4, !dbg !998
  %37 = load i32, ptr %6, align 4, !dbg !999
  store i32 %37, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !589, metadata !DIExpression()), !dbg !1000
  %38 = load i32, ptr %2, align 4, !dbg !1002
  %39 = icmp ne i32 %38, 0, !dbg !1003
  br i1 %39, label %40, label %41, !dbg !1004

40:                                               ; preds = %33
  br label %arch_irq_unlock.exit, !dbg !1005

41:                                               ; preds = %33
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1006, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !1007

arch_irq_unlock.exit:                             ; preds = %40, %41
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1008
  store i32 1, ptr %42, align 4, !dbg !1009
  br label %23, !dbg !1010, !llvm.loop !1011

43:                                               ; preds = %23
  %44 = load i64, ptr %11, align 8, !dbg !1013
  ret i64 %44, !dbg !1014
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_get_next_timeout_expiry() #0 !dbg !1015 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i32 -1, ptr %9, align 4, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1018, metadata !DIExpression()), !dbg !1020
  call void @llvm.memset.p0.i32(ptr align 4 %10, i8 0, i32 4, i1 false), !dbg !1020
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1021, metadata !DIExpression()), !dbg !1022
  store ptr @timeout_lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !446, metadata !DIExpression()), !dbg !1023
  %12 = load ptr, ptr %8, align 4, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %7, metadata !454, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %4, metadata !456, metadata !DIExpression()), !dbg !1027
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1029, !srcloc !464
  store i32 %13, ptr %4, align 4, !dbg !1029
  %14 = load i32, ptr %4, align 4, !dbg !1030
  store i32 %14, ptr %7, align 4, !dbg !1031
  %15 = load ptr, ptr %8, align 4, !dbg !1032
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !468, metadata !DIExpression()), !dbg !1033
  %16 = load ptr, ptr %3, align 4, !dbg !1035
  %17 = load ptr, ptr %8, align 4, !dbg !1036
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !1037
  %18 = load ptr, ptr %2, align 4, !dbg !1039
  %19 = load i32, ptr %7, align 4, !dbg !1040
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1041
  store i32 %19, ptr %20, align 4, !dbg !1041
  br label %21, !dbg !1042

21:                                               ; preds = %arch_irq_unlock.exit, %0
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1043
  %23 = load i32, ptr %22, align 4, !dbg !1043
  %24 = icmp ne i32 %23, 0, !dbg !1045
  %25 = xor i1 %24, true, !dbg !1045
  br i1 %25, label %26, label %38, !dbg !1046

26:                                               ; preds = %21
  %27 = call i32 @next_timeout(), !dbg !1047
  store i32 %27, ptr %9, align 4, !dbg !1049
  br label %28, !dbg !1050

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1051
  %30 = load [1 x i32], ptr %29, align 4, !dbg !1051
  store [1 x i32] %30, ptr %5, align 4
  store ptr @timeout_lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !1052
  call void @llvm.dbg.declare(metadata ptr %5, metadata !585, metadata !DIExpression()), !dbg !1054
  %31 = load ptr, ptr %6, align 4, !dbg !1055
  %32 = load i32, ptr %5, align 4, !dbg !1056
  store i32 %32, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !589, metadata !DIExpression()), !dbg !1057
  %33 = load i32, ptr %1, align 4, !dbg !1059
  %34 = icmp ne i32 %33, 0, !dbg !1060
  br i1 %34, label %35, label %36, !dbg !1061

35:                                               ; preds = %28
  br label %arch_irq_unlock.exit, !dbg !1062

36:                                               ; preds = %28
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1063, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !1064

arch_irq_unlock.exit:                             ; preds = %35, %36
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1065
  store i32 1, ptr %37, align 4, !dbg !1066
  br label %21, !dbg !1067, !llvm.loop !1068

38:                                               ; preds = %21
  %39 = load i32, ptr %9, align 4, !dbg !1070
  ret i32 %39, !dbg !1071
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_clock_announce(i32 noundef %0) #0 !dbg !1072 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca ptr, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  %20 = alloca ptr, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.z_spinlock_key, align 4
  store i32 %0, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1075, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1077, metadata !DIExpression()), !dbg !1078
  store ptr @timeout_lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !446, metadata !DIExpression()), !dbg !1079
  %23 = load ptr, ptr %15, align 4, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %14, metadata !454, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %9, metadata !456, metadata !DIExpression()), !dbg !1083
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1085, !srcloc !464
  store i32 %24, ptr %9, align 4, !dbg !1085
  %25 = load i32, ptr %9, align 4, !dbg !1086
  store i32 %25, ptr %14, align 4, !dbg !1087
  %26 = load ptr, ptr %15, align 4, !dbg !1088
  store ptr %26, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !468, metadata !DIExpression()), !dbg !1089
  %27 = load ptr, ptr %7, align 4, !dbg !1091
  %28 = load ptr, ptr %15, align 4, !dbg !1092
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !476, metadata !DIExpression()), !dbg !1093
  %29 = load ptr, ptr %5, align 4, !dbg !1095
  %30 = load i32, ptr %14, align 4, !dbg !1096
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1097
  store i32 %30, ptr %31, align 4, !dbg !1097
  %32 = load i32, ptr %18, align 4, !dbg !1098
  store i32 %32, ptr @announce_remaining, align 4, !dbg !1099
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1100, metadata !DIExpression()), !dbg !1101
  %33 = call ptr @first(), !dbg !1102
  store ptr %33, ptr %20, align 4, !dbg !1104
  br label %34, !dbg !1105

34:                                               ; preds = %82, %1
  %35 = load ptr, ptr %20, align 4, !dbg !1106
  %36 = icmp ne ptr %35, null, !dbg !1108
  br i1 %36, label %37, label %44, !dbg !1109

37:                                               ; preds = %34
  %38 = load ptr, ptr %20, align 4, !dbg !1110
  %39 = getelementptr inbounds %struct._timeout, ptr %38, i32 0, i32 2, !dbg !1111
  %40 = load i64, ptr %39, align 8, !dbg !1111
  %41 = load i32, ptr @announce_remaining, align 4, !dbg !1112
  %42 = sext i32 %41 to i64, !dbg !1112
  %43 = icmp sle i64 %40, %42, !dbg !1113
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi i1 [ false, %34 ], [ %43, %37 ], !dbg !1114
  br i1 %45, label %46, label %84, !dbg !1115

46:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1116, metadata !DIExpression()), !dbg !1118
  %47 = load ptr, ptr %20, align 4, !dbg !1119
  %48 = getelementptr inbounds %struct._timeout, ptr %47, i32 0, i32 2, !dbg !1120
  %49 = load i64, ptr %48, align 8, !dbg !1120
  %50 = trunc i64 %49 to i32, !dbg !1119
  store i32 %50, ptr %21, align 4, !dbg !1118
  %51 = load i32, ptr %21, align 4, !dbg !1121
  %52 = sext i32 %51 to i64, !dbg !1121
  %53 = load i64, ptr @curr_tick, align 8, !dbg !1122
  %54 = add i64 %53, %52, !dbg !1122
  store i64 %54, ptr @curr_tick, align 8, !dbg !1122
  %55 = load ptr, ptr %20, align 4, !dbg !1123
  %56 = getelementptr inbounds %struct._timeout, ptr %55, i32 0, i32 2, !dbg !1124
  store i64 0, ptr %56, align 8, !dbg !1125
  %57 = load ptr, ptr %20, align 4, !dbg !1126
  call void @remove_timeout(ptr noundef %57), !dbg !1127
  %58 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1128
  %59 = load [1 x i32], ptr %58, align 4, !dbg !1128
  store [1 x i32] %59, ptr %10, align 4
  store ptr @timeout_lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !579, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %10, metadata !585, metadata !DIExpression()), !dbg !1131
  %60 = load ptr, ptr %11, align 4, !dbg !1132
  %61 = load i32, ptr %10, align 4, !dbg !1133
  store i32 %61, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !589, metadata !DIExpression()), !dbg !1134
  %62 = load i32, ptr %3, align 4, !dbg !1136
  %63 = icmp ne i32 %62, 0, !dbg !1137
  br i1 %63, label %64, label %65, !dbg !1138

64:                                               ; preds = %46
  br label %arch_irq_unlock.exit, !dbg !1139

65:                                               ; preds = %46
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1140, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !1141

arch_irq_unlock.exit:                             ; preds = %64, %65
  %66 = load ptr, ptr %20, align 4, !dbg !1142
  %67 = getelementptr inbounds %struct._timeout, ptr %66, i32 0, i32 1, !dbg !1143
  %68 = load ptr, ptr %67, align 8, !dbg !1143
  %69 = load ptr, ptr %20, align 4, !dbg !1144
  call void %68(ptr noundef %69), !dbg !1142
  store ptr @timeout_lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !446, metadata !DIExpression()), !dbg !1145
  %70 = load ptr, ptr %17, align 4, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %16, metadata !454, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %8, metadata !456, metadata !DIExpression()), !dbg !1149
  %71 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1151, !srcloc !464
  store i32 %71, ptr %8, align 4, !dbg !1151
  %72 = load i32, ptr %8, align 4, !dbg !1152
  store i32 %72, ptr %16, align 4, !dbg !1153
  %73 = load ptr, ptr %17, align 4, !dbg !1154
  store ptr %73, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !468, metadata !DIExpression()), !dbg !1155
  %74 = load ptr, ptr %6, align 4, !dbg !1157
  %75 = load ptr, ptr %17, align 4, !dbg !1158
  store ptr %75, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !476, metadata !DIExpression()), !dbg !1159
  %76 = load ptr, ptr %4, align 4, !dbg !1161
  %77 = load i32, ptr %16, align 4, !dbg !1162
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !1163
  store i32 %77, ptr %78, align 4, !dbg !1163
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %22, i32 4, i1 false), !dbg !1163
  %79 = load i32, ptr %21, align 4, !dbg !1164
  %80 = load i32, ptr @announce_remaining, align 4, !dbg !1165
  %81 = sub nsw i32 %80, %79, !dbg !1165
  store i32 %81, ptr @announce_remaining, align 4, !dbg !1165
  br label %82, !dbg !1166

82:                                               ; preds = %arch_irq_unlock.exit
  %83 = call ptr @first(), !dbg !1167
  store ptr %83, ptr %20, align 4, !dbg !1168
  br label %34, !dbg !1169, !llvm.loop !1170

84:                                               ; preds = %44
  %85 = load ptr, ptr %20, align 4, !dbg !1172
  %86 = icmp ne ptr %85, null, !dbg !1174
  br i1 %86, label %87, label %94, !dbg !1175

87:                                               ; preds = %84
  %88 = load i32, ptr @announce_remaining, align 4, !dbg !1176
  %89 = sext i32 %88 to i64, !dbg !1176
  %90 = load ptr, ptr %20, align 4, !dbg !1178
  %91 = getelementptr inbounds %struct._timeout, ptr %90, i32 0, i32 2, !dbg !1179
  %92 = load i64, ptr %91, align 8, !dbg !1180
  %93 = sub nsw i64 %92, %89, !dbg !1180
  store i64 %93, ptr %91, align 8, !dbg !1180
  br label %94, !dbg !1181

94:                                               ; preds = %87, %84
  %95 = load i32, ptr @announce_remaining, align 4, !dbg !1182
  %96 = sext i32 %95 to i64, !dbg !1182
  %97 = load i64, ptr @curr_tick, align 8, !dbg !1183
  %98 = add i64 %97, %96, !dbg !1183
  store i64 %98, ptr @curr_tick, align 8, !dbg !1183
  store i32 0, ptr @announce_remaining, align 4, !dbg !1184
  %99 = call i32 @next_timeout(), !dbg !1185
  call void @sys_clock_set_timeout(i32 noundef %99, i1 noundef zeroext false), !dbg !1186
  %100 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1187
  %101 = load [1 x i32], ptr %100, align 4, !dbg !1187
  store [1 x i32] %101, ptr %12, align 4
  store ptr @timeout_lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !579, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %12, metadata !585, metadata !DIExpression()), !dbg !1190
  %102 = load ptr, ptr %13, align 4, !dbg !1191
  %103 = load i32, ptr %12, align 4, !dbg !1192
  store i32 %103, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !589, metadata !DIExpression()), !dbg !1193
  %104 = load i32, ptr %2, align 4, !dbg !1195
  %105 = icmp ne i32 %104, 0, !dbg !1196
  br i1 %105, label %106, label %107, !dbg !1197

106:                                              ; preds = %94
  br label %arch_irq_unlock.exit1, !dbg !1198

107:                                              ; preds = %94
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1199, !srcloc !602
  br label %arch_irq_unlock.exit1, !dbg !1200

arch_irq_unlock.exit1:                            ; preds = %106, %107
  call void @z_time_slice(), !dbg !1201
  ret void, !dbg !1202
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

declare void @z_time_slice() #3

; Function Attrs: noinline nounwind optnone
define hidden i64 @sys_clock_tick_get() #0 !dbg !1203 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1206, metadata !DIExpression()), !dbg !1207
  store i64 0, ptr %9, align 8, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1208, metadata !DIExpression()), !dbg !1210
  call void @llvm.memset.p0.i32(ptr align 4 %10, i8 0, i32 4, i1 false), !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1211, metadata !DIExpression()), !dbg !1212
  store ptr @timeout_lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !446, metadata !DIExpression()), !dbg !1213
  %12 = load ptr, ptr %8, align 4, !dbg !1215
  call void @llvm.dbg.declare(metadata ptr %7, metadata !454, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %4, metadata !456, metadata !DIExpression()), !dbg !1217
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !1219, !srcloc !464
  store i32 %13, ptr %4, align 4, !dbg !1219
  %14 = load i32, ptr %4, align 4, !dbg !1220
  store i32 %14, ptr %7, align 4, !dbg !1221
  %15 = load ptr, ptr %8, align 4, !dbg !1222
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !468, metadata !DIExpression()), !dbg !1223
  %16 = load ptr, ptr %3, align 4, !dbg !1225
  %17 = load ptr, ptr %8, align 4, !dbg !1226
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !1227
  %18 = load ptr, ptr %2, align 4, !dbg !1229
  %19 = load i32, ptr %7, align 4, !dbg !1230
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1231
  store i32 %19, ptr %20, align 4, !dbg !1231
  br label %21, !dbg !1232

21:                                               ; preds = %arch_irq_unlock.exit, %0
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1233
  %23 = load i32, ptr %22, align 4, !dbg !1233
  %24 = icmp ne i32 %23, 0, !dbg !1235
  %25 = xor i1 %24, true, !dbg !1235
  br i1 %25, label %26, label %41, !dbg !1236

26:                                               ; preds = %21
  %27 = load i64, ptr @curr_tick, align 8, !dbg !1237
  %28 = call i32 @elapsed(), !dbg !1239
  %29 = sext i32 %28 to i64, !dbg !1239
  %30 = add i64 %27, %29, !dbg !1240
  store i64 %30, ptr %9, align 8, !dbg !1241
  br label %31, !dbg !1242

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1243
  %33 = load [1 x i32], ptr %32, align 4, !dbg !1243
  store [1 x i32] %33, ptr %5, align 4
  store ptr @timeout_lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !579, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %5, metadata !585, metadata !DIExpression()), !dbg !1246
  %34 = load ptr, ptr %6, align 4, !dbg !1247
  %35 = load i32, ptr %5, align 4, !dbg !1248
  store i32 %35, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !589, metadata !DIExpression()), !dbg !1249
  %36 = load i32, ptr %1, align 4, !dbg !1251
  %37 = icmp ne i32 %36, 0, !dbg !1252
  br i1 %37, label %38, label %39, !dbg !1253

38:                                               ; preds = %31
  br label %arch_irq_unlock.exit, !dbg !1254

39:                                               ; preds = %31
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !1255, !srcloc !602
  br label %arch_irq_unlock.exit, !dbg !1256

arch_irq_unlock.exit:                             ; preds = %38, %39
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1257
  store i32 1, ptr %40, align 4, !dbg !1258
  br label %21, !dbg !1259, !llvm.loop !1260

41:                                               ; preds = %21
  %42 = load i64, ptr %9, align 8, !dbg !1262
  ret i64 %42, !dbg !1263
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_clock_tick_get_32() #0 !dbg !1264 {
  %1 = call i64 @sys_clock_tick_get(), !dbg !1267
  %2 = trunc i64 %1 to i32, !dbg !1268
  ret i32 %2, !dbg !1269
}

; Function Attrs: noinline nounwind optnone
define hidden i64 @z_impl_k_uptime_ticks() #0 !dbg !1270 {
  %1 = call i64 @sys_clock_tick_get(), !dbg !1271
  ret i64 %1, !dbg !1272
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_timepoint_calc(ptr noalias sret(%struct.k_timepoint_t) align 8 %0, [1 x i64] %1) #0 !dbg !1273 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1280, metadata !DIExpression()), !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %0, metadata !1282, metadata !DIExpression()), !dbg !1283
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1284
  %9 = load i64, ptr %8, align 8, !dbg !1284
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1286
  store i64 -1, ptr %10, align 8, !dbg !1286
  %11 = icmp eq i64 %9, -1, !dbg !1287
  br i1 %11, label %12, label %14, !dbg !1288

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1289
  store i64 -1, ptr %13, align 8, !dbg !1291
  br label %44, !dbg !1292

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1293
  %16 = load i64, ptr %15, align 8, !dbg !1293
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1295
  store i64 0, ptr %17, align 8, !dbg !1295
  %18 = icmp eq i64 %16, 0, !dbg !1296
  br i1 %18, label %19, label %21, !dbg !1297

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1298
  store i64 0, ptr %20, align 8, !dbg !1300
  br label %43, !dbg !1301

21:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1302, metadata !DIExpression()), !dbg !1304
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1305
  %23 = load i64, ptr %22, align 8, !dbg !1305
  store i64 %23, ptr %6, align 8, !dbg !1304
  %24 = load i64, ptr %6, align 8, !dbg !1306
  %25 = sub nsw i64 -2, %24, !dbg !1308
  %26 = icmp sge i64 %25, 0, !dbg !1309
  br i1 %26, label %27, label %31, !dbg !1310

27:                                               ; preds = %21
  %28 = load i64, ptr %6, align 8, !dbg !1311
  %29 = sub nsw i64 -2, %28, !dbg !1313
  %30 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1314
  store i64 %29, ptr %30, align 8, !dbg !1315
  br label %42, !dbg !1316

31:                                               ; preds = %21
  %32 = call i64 @sys_clock_tick_get(), !dbg !1317
  %33 = load i64, ptr %6, align 8, !dbg !1319
  %34 = icmp sgt i64 1, %33, !dbg !1320
  br i1 %34, label %35, label %36, !dbg !1321

35:                                               ; preds = %31
  br label %38, !dbg !1321

36:                                               ; preds = %31
  %37 = load i64, ptr %6, align 8, !dbg !1322
  br label %38, !dbg !1321

38:                                               ; preds = %36, %35
  %39 = phi i64 [ 1, %35 ], [ %37, %36 ], !dbg !1321
  %40 = add nsw i64 %32, %39, !dbg !1323
  %41 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1324
  store i64 %40, ptr %41, align 8, !dbg !1325
  br label %42

42:                                               ; preds = %38, %27
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %12
  ret void, !dbg !1326
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_timepoint_timeout(ptr noalias sret(%struct.k_timeout_t) align 8 %0, [1 x i64] %1) #0 !dbg !1327 {
  %3 = alloca %struct.k_timepoint_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1330, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1332, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1335
  %7 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1336
  %8 = load i64, ptr %7, align 8, !dbg !1336
  %9 = icmp eq i64 %8, -1, !dbg !1338
  br i1 %9, label %10, label %12, !dbg !1339

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1340
  store i64 -1, ptr %11, align 8, !dbg !1340
  br label %34, !dbg !1342

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1343
  %14 = load i64, ptr %13, align 8, !dbg !1343
  %15 = icmp eq i64 %14, 0, !dbg !1345
  br i1 %15, label %16, label %18, !dbg !1346

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1347
  store i64 0, ptr %17, align 8, !dbg !1347
  br label %34, !dbg !1349

18:                                               ; preds = %12
  %19 = call i64 @sys_clock_tick_get(), !dbg !1350
  store i64 %19, ptr %4, align 8, !dbg !1351
  %20 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1352
  %21 = load i64, ptr %20, align 8, !dbg !1352
  %22 = load i64, ptr %4, align 8, !dbg !1353
  %23 = icmp ugt i64 %21, %22, !dbg !1354
  br i1 %23, label %24, label %29, !dbg !1355

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1356
  %26 = load i64, ptr %25, align 8, !dbg !1356
  %27 = load i64, ptr %4, align 8, !dbg !1357
  %28 = sub i64 %26, %27, !dbg !1358
  br label %30, !dbg !1355

29:                                               ; preds = %18
  br label %30, !dbg !1355

30:                                               ; preds = %29, %24
  %31 = phi i64 [ %28, %24 ], [ 0, %29 ], !dbg !1355
  store i64 %31, ptr %5, align 8, !dbg !1359
  %32 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1360
  %33 = load i64, ptr %5, align 8, !dbg !1361
  store i64 %33, ptr %32, align 8, !dbg !1360
  br label %34, !dbg !1362

34:                                               ; preds = %30, %16, %10
  ret void, !dbg !1363
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1364 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1368, metadata !DIExpression()), !dbg !1369
  %3 = load ptr, ptr %2, align 4, !dbg !1370
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1371
  %5 = icmp eq ptr %4, null, !dbg !1372
  ret i1 %5, !dbg !1373
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1377, metadata !DIExpression()), !dbg !1378
  %3 = load ptr, ptr %2, align 4, !dbg !1379
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1380
  %5 = load ptr, ptr %4, align 4, !dbg !1380
  ret ptr %5, !dbg !1381
}

declare i32 @sys_clock_elapsed() #3

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1386
  %3 = load ptr, ptr %2, align 4, !dbg !1387
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !1388
  br i1 %4, label %5, label %6, !dbg !1388

5:                                                ; preds = %1
  br label %10, !dbg !1388

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1389
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1390
  %9 = load ptr, ptr %8, align 4, !dbg !1390
  br label %10, !dbg !1388

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1388
  ret ptr %11, !dbg !1391
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1392 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1395, metadata !DIExpression()), !dbg !1396
  %3 = load ptr, ptr %2, align 4, !dbg !1397
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1398
  %5 = load ptr, ptr %4, align 4, !dbg !1398
  %6 = load ptr, ptr %2, align 4, !dbg !1399
  %7 = icmp eq ptr %5, %6, !dbg !1400
  ret i1 %7, !dbg !1401
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1402 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1405, metadata !DIExpression()), !dbg !1406
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1407, metadata !DIExpression()), !dbg !1408
  %5 = load ptr, ptr %4, align 4, !dbg !1409
  %6 = icmp ne ptr %5, null, !dbg !1410
  br i1 %6, label %7, label %11, !dbg !1411

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1412
  %9 = load ptr, ptr %4, align 4, !dbg !1413
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9), !dbg !1414
  br label %12, !dbg !1411

11:                                               ; preds = %2
  br label %12, !dbg !1411

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !1411
  ret ptr %13, !dbg !1415
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1416 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1417, metadata !DIExpression()), !dbg !1418
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1419, metadata !DIExpression()), !dbg !1420
  %5 = load ptr, ptr %4, align 4, !dbg !1421
  %6 = load ptr, ptr %3, align 4, !dbg !1422
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !1423
  %8 = load ptr, ptr %7, align 4, !dbg !1423
  %9 = icmp eq ptr %5, %8, !dbg !1424
  br i1 %9, label %10, label %11, !dbg !1425

10:                                               ; preds = %2
  br label %15, !dbg !1425

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !1426
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1427
  %14 = load ptr, ptr %13, align 4, !dbg !1427
  br label %15, !dbg !1425

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !1425
  ret ptr %16, !dbg !1428
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_remove(ptr noundef %0) #0 !dbg !1429 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1432, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1434, metadata !DIExpression()), !dbg !1435
  %5 = load ptr, ptr %2, align 4, !dbg !1436
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1437
  %7 = load ptr, ptr %6, align 4, !dbg !1437
  store ptr %7, ptr %3, align 4, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1438, metadata !DIExpression()), !dbg !1439
  %8 = load ptr, ptr %2, align 4, !dbg !1440
  %9 = getelementptr inbounds %struct._dnode, ptr %8, i32 0, i32 0, !dbg !1441
  %10 = load ptr, ptr %9, align 4, !dbg !1441
  store ptr %10, ptr %4, align 4, !dbg !1439
  %11 = load ptr, ptr %4, align 4, !dbg !1442
  %12 = load ptr, ptr %3, align 4, !dbg !1443
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1444
  store ptr %11, ptr %13, align 4, !dbg !1445
  %14 = load ptr, ptr %3, align 4, !dbg !1446
  %15 = load ptr, ptr %4, align 4, !dbg !1447
  %16 = getelementptr inbounds %struct._dnode, ptr %15, i32 0, i32 1, !dbg !1448
  store ptr %14, ptr %16, align 4, !dbg !1449
  %17 = load ptr, ptr %2, align 4, !dbg !1450
  call void @sys_dnode_init(ptr noundef %17), !dbg !1451
  ret void, !dbg !1452
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !1453 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1454, metadata !DIExpression()), !dbg !1455
  %3 = load ptr, ptr %2, align 4, !dbg !1456
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1457
  store ptr null, ptr %4, align 4, !dbg !1458
  %5 = load ptr, ptr %2, align 4, !dbg !1459
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1460
  store ptr null, ptr %6, align 4, !dbg !1461
  ret void, !dbg !1462
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !1463 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1467, metadata !DIExpression()), !dbg !1468
  %3 = load ptr, ptr %2, align 4, !dbg !1469
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1470
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4), !dbg !1471
  %6 = xor i1 %5, true, !dbg !1472
  ret i1 %6, !dbg !1473
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "timeout_lock", scope: !2, file: !130, line: 19, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !127, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "timeout.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !94, !96, !98, !95, !99, !125, !91}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !92, line: 59, baseType: !93)
!92 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!93 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !92, line: 58, baseType: !95)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 64, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !101, line: 254, size: 192, elements: !102)
!101 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!102 = !{!103, !119, !124}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !100, file: !101, line: 255, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !105, line: 55, baseType: !106)
!105 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !105, line: 37, size: 64, elements: !107)
!107 = !{!108, !114}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !105, line: 38, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !105, line: 38, size: 32, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !109, file: !105, line: 39, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !109, file: !105, line: 40, baseType: !112, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !105, line: 42, baseType: !115, size: 32, offset: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !105, line: 42, size: 32, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !115, file: !105, line: 43, baseType: !112, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !115, file: !105, line: 44, baseType: !112, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !100, file: !101, line: 256, baseType: !120, size: 32, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !101, line: 252, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !99}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !100, file: !101, line: 259, baseType: !91, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!127 = !{!128, !0, !133, !135}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "curr_tick", scope: !2, file: !130, line: 15, type: !131, isLocal: true, isDefinition: true)
!130 = !DIFile(filename: "kernel/timeout.c", directory: "/home/sri/zephyrproject/zephyr")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !92, line: 65, baseType: !132)
!132 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "announce_remaining", scope: !2, file: !130, line: 25, type: !95, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "timeout_list", scope: !2, file: !130, line: 17, type: !137, isLocal: true, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !105, line: 51, baseType: !106)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !139, line: 45, elements: !140)
!139 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = !{}
!141 = !{i32 7, !"Dwarf Version", i32 4}
!142 = !{i32 2, !"Debug Info Version", i32 3}
!143 = !{i32 1, !"wchar_size", i32 4}
!144 = !{i32 1, !"static_rwdata", i32 1}
!145 = !{i32 1, !"enumsize_buildattr", i32 1}
!146 = !{i32 1, !"armlib_unavailable", i32 0}
!147 = !{i32 8, !"PIC Level", i32 2}
!148 = !{i32 7, !"PIE Level", i32 2}
!149 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!150 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !151, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !153, !155}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !157, line: 250, size: 896, elements: !158)
!157 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!158 = !{!159, !200, !213, !214, !215, !216, !234}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !156, file: !157, line: 252, baseType: !160, size: 384)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !157, line: 58, size: 384, elements: !161)
!161 = !{!162, !175, !181, !183, !184, !197, !198, !199}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !157, line: 61, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !157, line: 61, size: 64, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !163, file: !157, line: 62, baseType: !104, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !163, file: !157, line: 63, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !168, line: 58, size: 64, elements: !169)
!168 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !167, file: !168, line: 60, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!173 = !{!174}
!174 = !DISubrange(count: 2)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !160, file: !157, line: 69, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !101, line: 243, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 241, size: 64, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !178, file: !101, line: 242, baseType: !137, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !160, file: !157, line: 72, baseType: !182, size: 8, offset: 96)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 62, baseType: !7)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !160, file: !157, line: 75, baseType: !182, size: 8, offset: 104)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !157, line: 91, baseType: !185, size: 16, offset: 112)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !157, line: 91, size: 16, elements: !186)
!186 = !{!187, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !157, line: 92, baseType: !188, size: 16)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !157, line: 92, size: 16, elements: !189)
!189 = !{!190, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !188, file: !157, line: 97, baseType: !191, size: 8)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !92, line: 56, baseType: !192)
!192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !188, file: !157, line: 98, baseType: !182, size: 8, offset: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !185, file: !157, line: 101, baseType: !195, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 63, baseType: !196)
!196 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !160, file: !157, line: 108, baseType: !96, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !160, file: !157, line: 132, baseType: !98, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !160, file: !157, line: 136, baseType: !100, size: 192, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !156, file: !157, line: 255, baseType: !201, size: 288, offset: 384)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !202, line: 25, size: 288, elements: !203)
!202 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !201, file: !202, line: 26, baseType: !96, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !201, file: !202, line: 27, baseType: !96, size: 32, offset: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !201, file: !202, line: 28, baseType: !96, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !201, file: !202, line: 29, baseType: !96, size: 32, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !201, file: !202, line: 30, baseType: !96, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !201, file: !202, line: 31, baseType: !96, size: 32, offset: 160)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !201, file: !202, line: 32, baseType: !96, size: 32, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !201, file: !202, line: 33, baseType: !96, size: 32, offset: 224)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !201, file: !202, line: 34, baseType: !96, size: 32, offset: 256)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !156, file: !157, line: 258, baseType: !98, size: 32, offset: 672)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !156, file: !157, line: 261, baseType: !177, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !156, file: !157, line: 302, baseType: !95, size: 32, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !156, file: !157, line: 333, baseType: !217, size: 32, offset: 800)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !219, line: 5291, size: 160, elements: !220)
!219 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!220 = !{!221, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !218, file: !219, line: 5292, baseType: !222, size: 96)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !223, line: 56, size: 96, elements: !224)
!223 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !222, file: !223, line: 57, baseType: !226, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 32)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !223, line: 57, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !222, file: !223, line: 58, baseType: !98, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !222, file: !223, line: 59, baseType: !230, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 46, baseType: !97)
!231 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !218, file: !219, line: 5293, baseType: !177, size: 64, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !218, file: !219, line: 5294, baseType: !138, offset: 160)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !156, file: !157, line: 355, baseType: !235, size: 64, offset: 832)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !202, line: 60, size: 64, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !235, file: !202, line: 63, baseType: !96, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !235, file: !202, line: 66, baseType: !96, size: 32, offset: 32)
!239 = !DILocalVariable(name: "object", arg: 1, scope: !150, file: !6, line: 223, type: !153)
!240 = !DILocation(line: 223, column: 61, scope: !150)
!241 = !DILocalVariable(name: "thread", arg: 2, scope: !150, file: !6, line: 224, type: !155)
!242 = !DILocation(line: 224, column: 24, scope: !150)
!243 = !DILocation(line: 226, column: 9, scope: !150)
!244 = !DILocation(line: 227, column: 9, scope: !150)
!245 = !DILocation(line: 228, column: 1, scope: !150)
!246 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !247, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !153}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !246, file: !6, line: 243, type: !153)
!250 = !DILocation(line: 243, column: 56, scope: !246)
!251 = !DILocation(line: 245, column: 9, scope: !246)
!252 = !DILocation(line: 246, column: 1, scope: !246)
!253 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !254, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!254 = !DISubroutineType(types: !255)
!255 = !{!98, !5}
!256 = !DILocalVariable(name: "otype", arg: 1, scope: !253, file: !6, line: 359, type: !5)
!257 = !DILocation(line: 359, column: 58, scope: !253)
!258 = !DILocation(line: 361, column: 9, scope: !253)
!259 = !DILocation(line: 363, column: 2, scope: !253)
!260 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !261, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!261 = !DISubroutineType(types: !262)
!262 = !{!98, !5, !230}
!263 = !DILocalVariable(name: "otype", arg: 1, scope: !260, file: !6, line: 366, type: !5)
!264 = !DILocation(line: 366, column: 63, scope: !260)
!265 = !DILocalVariable(name: "size", arg: 2, scope: !260, file: !6, line: 367, type: !230)
!266 = !DILocation(line: 367, column: 13, scope: !260)
!267 = !DILocation(line: 369, column: 9, scope: !260)
!268 = !DILocation(line: 370, column: 9, scope: !260)
!269 = !DILocation(line: 372, column: 2, scope: !260)
!270 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !219, file: !219, line: 656, type: !271, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!271 = !DISubroutineType(types: !272)
!272 = !{!89, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!275 = !DILocalVariable(name: "t", arg: 1, scope: !270, file: !219, line: 657, type: !273)
!276 = !DILocation(line: 657, column: 30, scope: !270)
!277 = !DILocation(line: 659, column: 28, scope: !270)
!278 = !DILocation(line: 659, column: 31, scope: !270)
!279 = !DILocation(line: 659, column: 36, scope: !270)
!280 = !DILocation(line: 659, column: 9, scope: !270)
!281 = !DILocation(line: 659, column: 2, scope: !270)
!282 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !219, file: !219, line: 671, type: !271, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!283 = !DILocalVariable(name: "t", arg: 1, scope: !282, file: !219, line: 672, type: !273)
!284 = !DILocation(line: 672, column: 30, scope: !282)
!285 = !DILocation(line: 674, column: 30, scope: !282)
!286 = !DILocation(line: 674, column: 33, scope: !282)
!287 = !DILocation(line: 674, column: 38, scope: !282)
!288 = !DILocation(line: 674, column: 9, scope: !282)
!289 = !DILocation(line: 674, column: 2, scope: !282)
!290 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !219, file: !219, line: 1634, type: !291, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!291 = !DISubroutineType(types: !292)
!292 = !{!89, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !219, line: 1439, size: 448, elements: !296)
!296 = !{!297, !298, !299, !304, !305, !310, !311}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !295, file: !219, line: 1445, baseType: !100, size: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !295, file: !219, line: 1448, baseType: !177, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !295, file: !219, line: 1451, baseType: !300, size: 32, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !295, file: !219, line: 1454, baseType: !300, size: 32, offset: 288)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !295, file: !219, line: 1457, baseType: !306, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !90, line: 67, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 65, size: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !307, file: !90, line: 66, baseType: !89, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !295, file: !219, line: 1460, baseType: !96, size: 32, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !295, file: !219, line: 1463, baseType: !98, size: 32, offset: 416)
!312 = !DILocalVariable(name: "timer", arg: 1, scope: !290, file: !219, line: 1635, type: !293)
!313 = !DILocation(line: 1635, column: 34, scope: !290)
!314 = !DILocation(line: 1637, column: 28, scope: !290)
!315 = !DILocation(line: 1637, column: 35, scope: !290)
!316 = !DILocation(line: 1637, column: 9, scope: !290)
!317 = !DILocation(line: 1637, column: 2, scope: !290)
!318 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !219, file: !219, line: 1649, type: !291, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !318, file: !219, line: 1650, type: !293)
!320 = !DILocation(line: 1650, column: 34, scope: !318)
!321 = !DILocation(line: 1652, column: 30, scope: !318)
!322 = !DILocation(line: 1652, column: 37, scope: !318)
!323 = !DILocation(line: 1652, column: 9, scope: !318)
!324 = !DILocation(line: 1652, column: 2, scope: !318)
!325 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !219, file: !219, line: 1689, type: !326, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !303, !98}
!328 = !DILocalVariable(name: "timer", arg: 1, scope: !325, file: !219, line: 1689, type: !303)
!329 = !DILocation(line: 1689, column: 65, scope: !325)
!330 = !DILocalVariable(name: "user_data", arg: 2, scope: !325, file: !219, line: 1690, type: !98)
!331 = !DILocation(line: 1690, column: 19, scope: !325)
!332 = !DILocation(line: 1692, column: 21, scope: !325)
!333 = !DILocation(line: 1692, column: 2, scope: !325)
!334 = !DILocation(line: 1692, column: 9, scope: !325)
!335 = !DILocation(line: 1692, column: 19, scope: !325)
!336 = !DILocation(line: 1693, column: 1, scope: !325)
!337 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !219, file: !219, line: 1704, type: !338, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!338 = !DISubroutineType(types: !339)
!339 = !{!98, !293}
!340 = !DILocalVariable(name: "timer", arg: 1, scope: !337, file: !219, line: 1704, type: !293)
!341 = !DILocation(line: 1704, column: 72, scope: !337)
!342 = !DILocation(line: 1706, column: 9, scope: !337)
!343 = !DILocation(line: 1706, column: 16, scope: !337)
!344 = !DILocation(line: 1706, column: 2, scope: !337)
!345 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !219, file: !219, line: 2071, type: !346, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!346 = !DISubroutineType(types: !347)
!347 = !{!95, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !219, line: 1830, size: 128, elements: !350)
!350 = !{!351, !364, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !349, file: !219, line: 1831, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !353, line: 60, baseType: !354)
!353 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !353, line: 53, size: 64, elements: !355)
!355 = !{!356, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !354, file: !353, line: 54, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !353, line: 50, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !353, line: 44, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !359, file: !353, line: 45, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !353, line: 40, baseType: !96)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !353, line: 55, baseType: !357, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !219, line: 1832, baseType: !138, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !349, file: !219, line: 1833, baseType: !177, size: 64, offset: 64)
!366 = !DILocalVariable(name: "queue", arg: 1, scope: !345, file: !219, line: 2071, type: !348)
!367 = !DILocation(line: 2071, column: 59, scope: !345)
!368 = !DILocation(line: 2073, column: 35, scope: !345)
!369 = !DILocation(line: 2073, column: 42, scope: !345)
!370 = !DILocation(line: 2073, column: 14, scope: !345)
!371 = !DILocation(line: 2073, column: 9, scope: !345)
!372 = !DILocation(line: 2073, column: 2, scope: !345)
!373 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !219, file: !219, line: 3209, type: !374, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!374 = !DISubroutineType(types: !375)
!375 = !{!97, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !219, line: 3092, size: 128, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !219, line: 3093, baseType: !177, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !219, line: 3094, baseType: !97, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !377, file: !219, line: 3095, baseType: !97, size: 32, offset: 96)
!382 = !DILocalVariable(name: "sem", arg: 1, scope: !373, file: !219, line: 3209, type: !376)
!383 = !DILocation(line: 3209, column: 65, scope: !373)
!384 = !DILocation(line: 3211, column: 9, scope: !373)
!385 = !DILocation(line: 3211, column: 14, scope: !373)
!386 = !DILocation(line: 3211, column: 2, scope: !373)
!387 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !219, file: !219, line: 4649, type: !388, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!388 = !DISubroutineType(types: !389)
!389 = !{!96, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !219, line: 4390, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !391, file: !219, line: 4392, baseType: !177, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !219, line: 4394, baseType: !138, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !391, file: !219, line: 4396, baseType: !230, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !391, file: !219, line: 4398, baseType: !96, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !391, file: !219, line: 4400, baseType: !125, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !391, file: !219, line: 4402, baseType: !125, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !391, file: !219, line: 4404, baseType: !125, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !391, file: !219, line: 4406, baseType: !125, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !391, file: !219, line: 4408, baseType: !96, size: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !219, line: 4413, baseType: !182, size: 8, offset: 288)
!403 = !DILocalVariable(name: "msgq", arg: 1, scope: !387, file: !219, line: 4649, type: !390)
!404 = !DILocation(line: 4649, column: 66, scope: !387)
!405 = !DILocation(line: 4651, column: 9, scope: !387)
!406 = !DILocation(line: 4651, column: 15, scope: !387)
!407 = !DILocation(line: 4651, column: 26, scope: !387)
!408 = !DILocation(line: 4651, column: 32, scope: !387)
!409 = !DILocation(line: 4651, column: 24, scope: !387)
!410 = !DILocation(line: 4651, column: 2, scope: !387)
!411 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !219, file: !219, line: 4665, type: !388, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!412 = !DILocalVariable(name: "msgq", arg: 1, scope: !411, file: !219, line: 4665, type: !390)
!413 = !DILocation(line: 4665, column: 66, scope: !411)
!414 = !DILocation(line: 4667, column: 9, scope: !411)
!415 = !DILocation(line: 4667, column: 15, scope: !411)
!416 = !DILocation(line: 4667, column: 2, scope: !411)
!417 = distinct !DISubprogram(name: "z_add_timeout", scope: !130, file: !130, line: 99, type: !418, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !99, !120, !306}
!420 = !DILocalVariable(name: "to", arg: 1, scope: !417, file: !130, line: 99, type: !99)
!421 = !DILocation(line: 99, column: 37, scope: !417)
!422 = !DILocalVariable(name: "fn", arg: 2, scope: !417, file: !130, line: 99, type: !120)
!423 = !DILocation(line: 99, column: 57, scope: !417)
!424 = !DILocalVariable(name: "timeout", arg: 3, scope: !417, file: !130, line: 100, type: !306)
!425 = !DILocation(line: 100, column: 18, scope: !417)
!426 = !DILocation(line: 102, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !417, file: !130, line: 102, column: 6)
!428 = !DILocation(line: 102, column: 42, scope: !427)
!429 = !DILocation(line: 102, column: 23, scope: !427)
!430 = !DILocation(line: 102, column: 6, scope: !417)
!431 = !DILocation(line: 103, column: 3, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !130, line: 102, column: 84)
!433 = !DILocation(line: 111, column: 11, scope: !417)
!434 = !DILocation(line: 111, column: 2, scope: !417)
!435 = !DILocation(line: 111, column: 6, scope: !417)
!436 = !DILocation(line: 111, column: 9, scope: !417)
!437 = !DILocalVariable(name: "__i", scope: !438, file: !130, line: 113, type: !439)
!438 = distinct !DILexicalBlock(scope: !417, file: !130, line: 113, column: 2)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !139, line: 108, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !139, line: 34, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !440, file: !139, line: 35, baseType: !95, size: 32)
!443 = !DILocation(line: 113, column: 24, scope: !438)
!444 = !DILocalVariable(name: "__key", scope: !438, file: !130, line: 113, type: !439)
!445 = !DILocation(line: 113, column: 34, scope: !438)
!446 = !DILocalVariable(name: "l", arg: 1, scope: !447, file: !139, line: 160, type: !450)
!447 = distinct !DISubprogram(name: "k_spin_lock", scope: !139, file: !139, line: 160, type: !448, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!448 = !DISubroutineType(types: !449)
!449 = !{!439, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!451 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !452)
!452 = distinct !DILocation(line: 113, column: 42, scope: !438)
!453 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !452)
!454 = !DILocalVariable(name: "k", scope: !447, file: !139, line: 163, type: !439)
!455 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !452)
!456 = !DILocalVariable(name: "key", scope: !457, file: !458, line: 44, type: !97)
!457 = distinct !DISubprogram(name: "arch_irq_lock", scope: !458, file: !458, line: 42, type: !459, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!458 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!459 = !DISubroutineType(types: !460)
!460 = !{!97}
!461 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !462)
!462 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !452)
!463 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !462)
!464 = !{i64 66902}
!465 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !462)
!466 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !452)
!467 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !452)
!468 = !DILocalVariable(name: "l", arg: 1, scope: !469, file: !139, line: 110, type: !450)
!469 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !139, file: !139, line: 110, type: !470, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !450}
!472 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !473)
!473 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !452)
!474 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !473)
!475 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !452)
!476 = !DILocalVariable(name: "l", arg: 1, scope: !477, file: !139, line: 121, type: !450)
!477 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !139, file: !139, line: 121, type: !470, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!478 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !479)
!479 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !452)
!480 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !479)
!481 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !452)
!482 = !DILocation(line: 113, column: 42, scope: !438)
!483 = !DILocation(line: 113, column: 7, scope: !438)
!484 = !DILocation(line: 113, column: 75, scope: !485)
!485 = distinct !DILexicalBlock(scope: !438, file: !130, line: 113, column: 2)
!486 = !DILocation(line: 113, column: 70, scope: !485)
!487 = !DILocation(line: 113, column: 2, scope: !438)
!488 = !DILocalVariable(name: "t", scope: !489, file: !130, line: 114, type: !99)
!489 = distinct !DILexicalBlock(scope: !485, file: !130, line: 113, column: 130)
!490 = !DILocation(line: 114, column: 20, scope: !489)
!491 = !DILocation(line: 117, column: 40, scope: !492)
!492 = distinct !DILexicalBlock(scope: !489, file: !130, line: 116, column: 7)
!493 = !DILocation(line: 117, column: 29, scope: !492)
!494 = !DILocation(line: 117, column: 48, scope: !492)
!495 = !DILocation(line: 116, column: 7, scope: !489)
!496 = !DILocalVariable(name: "ticks", scope: !497, file: !130, line: 118, type: !89)
!497 = distinct !DILexicalBlock(scope: !492, file: !130, line: 117, column: 54)
!498 = !DILocation(line: 118, column: 14, scope: !497)
!499 = !DILocation(line: 118, column: 55, scope: !497)
!500 = !DILocation(line: 118, column: 44, scope: !497)
!501 = !DILocation(line: 118, column: 65, scope: !497)
!502 = !DILocation(line: 118, column: 63, scope: !497)
!503 = !DILocation(line: 120, column: 26, scope: !497)
!504 = !DILocation(line: 120, column: 23, scope: !497)
!505 = !DILocation(line: 120, column: 18, scope: !497)
!506 = !DILocation(line: 120, column: 43, scope: !497)
!507 = !DILocation(line: 120, column: 4, scope: !497)
!508 = !DILocation(line: 120, column: 8, scope: !497)
!509 = !DILocation(line: 120, column: 15, scope: !497)
!510 = !DILocation(line: 121, column: 3, scope: !497)
!511 = !DILocation(line: 122, column: 25, scope: !512)
!512 = distinct !DILexicalBlock(scope: !492, file: !130, line: 121, column: 10)
!513 = !DILocation(line: 122, column: 31, scope: !512)
!514 = !DILocation(line: 122, column: 37, scope: !512)
!515 = !DILocation(line: 122, column: 35, scope: !512)
!516 = !DILocation(line: 122, column: 4, scope: !512)
!517 = !DILocation(line: 122, column: 8, scope: !512)
!518 = !DILocation(line: 122, column: 15, scope: !512)
!519 = !DILocation(line: 125, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !489, file: !130, line: 125, column: 3)
!521 = !DILocation(line: 125, column: 10, scope: !520)
!522 = !DILocation(line: 125, column: 8, scope: !520)
!523 = !DILocation(line: 125, column: 21, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !130, line: 125, column: 3)
!525 = !DILocation(line: 125, column: 23, scope: !524)
!526 = !DILocation(line: 125, column: 3, scope: !520)
!527 = !DILocation(line: 126, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !130, line: 126, column: 8)
!529 = distinct !DILexicalBlock(scope: !524, file: !130, line: 125, column: 42)
!530 = !DILocation(line: 126, column: 11, scope: !528)
!531 = !DILocation(line: 126, column: 20, scope: !528)
!532 = !DILocation(line: 126, column: 24, scope: !528)
!533 = !DILocation(line: 126, column: 18, scope: !528)
!534 = !DILocation(line: 126, column: 8, scope: !529)
!535 = !DILocation(line: 127, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !528, file: !130, line: 126, column: 32)
!537 = !DILocation(line: 127, column: 22, scope: !536)
!538 = !DILocation(line: 127, column: 5, scope: !536)
!539 = !DILocation(line: 127, column: 8, scope: !536)
!540 = !DILocation(line: 127, column: 15, scope: !536)
!541 = !DILocation(line: 128, column: 23, scope: !536)
!542 = !DILocation(line: 128, column: 26, scope: !536)
!543 = !DILocation(line: 128, column: 33, scope: !536)
!544 = !DILocation(line: 128, column: 37, scope: !536)
!545 = !DILocation(line: 128, column: 5, scope: !536)
!546 = !DILocation(line: 129, column: 5, scope: !536)
!547 = !DILocation(line: 131, column: 18, scope: !529)
!548 = !DILocation(line: 131, column: 21, scope: !529)
!549 = !DILocation(line: 131, column: 4, scope: !529)
!550 = !DILocation(line: 131, column: 8, scope: !529)
!551 = !DILocation(line: 131, column: 15, scope: !529)
!552 = !DILocation(line: 132, column: 3, scope: !529)
!553 = !DILocation(line: 125, column: 38, scope: !524)
!554 = !DILocation(line: 125, column: 33, scope: !524)
!555 = !DILocation(line: 125, column: 31, scope: !524)
!556 = !DILocation(line: 125, column: 3, scope: !524)
!557 = distinct !{!557, !526, !558}
!558 = !DILocation(line: 132, column: 3, scope: !520)
!559 = !DILocation(line: 134, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !489, file: !130, line: 134, column: 7)
!561 = !DILocation(line: 134, column: 9, scope: !560)
!562 = !DILocation(line: 134, column: 7, scope: !489)
!563 = !DILocation(line: 135, column: 37, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !130, line: 134, column: 15)
!565 = !DILocation(line: 135, column: 41, scope: !564)
!566 = !DILocation(line: 135, column: 4, scope: !564)
!567 = !DILocation(line: 136, column: 3, scope: !564)
!568 = !DILocation(line: 138, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !489, file: !130, line: 138, column: 7)
!570 = !DILocation(line: 138, column: 13, scope: !569)
!571 = !DILocation(line: 138, column: 10, scope: !569)
!572 = !DILocation(line: 138, column: 7, scope: !489)
!573 = !DILocation(line: 139, column: 26, scope: !574)
!574 = distinct !DILexicalBlock(scope: !569, file: !130, line: 138, column: 22)
!575 = !DILocation(line: 139, column: 4, scope: !574)
!576 = !DILocation(line: 140, column: 3, scope: !574)
!577 = !DILocation(line: 141, column: 2, scope: !489)
!578 = !DILocation(line: 113, column: 80, scope: !485)
!579 = !DILocalVariable(name: "l", arg: 1, scope: !580, file: !139, line: 235, type: !450)
!580 = distinct !DISubprogram(name: "k_spin_unlock", scope: !139, file: !139, line: 235, type: !581, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !450, !439}
!583 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !584)
!584 = distinct !DILocation(line: 113, column: 80, scope: !485)
!585 = !DILocalVariable(name: "key", arg: 2, scope: !580, file: !139, line: 236, type: !439)
!586 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !584)
!587 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !584)
!588 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !584)
!589 = !DILocalVariable(name: "key", arg: 1, scope: !590, file: !458, line: 88, type: !97)
!590 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !458, file: !458, line: 88, type: !591, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !97}
!593 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !594)
!594 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !584)
!595 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !594)
!596 = distinct !DILexicalBlock(scope: !590, file: !458, line: 91, column: 6)
!597 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !594)
!598 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !594)
!599 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !594)
!600 = distinct !DILexicalBlock(scope: !596, file: !458, line: 91, column: 17)
!601 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !594)
!602 = !{i64 67206}
!603 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !594)
!604 = !DILocation(line: 113, column: 121, scope: !485)
!605 = !DILocation(line: 113, column: 125, scope: !485)
!606 = !DILocation(line: 113, column: 2, scope: !485)
!607 = distinct !{!607, !487, !608}
!608 = !DILocation(line: 141, column: 2, scope: !438)
!609 = !DILocation(line: 142, column: 1, scope: !417)
!610 = distinct !DISubprogram(name: "elapsed", scope: !130, file: !130, line: 62, type: !611, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!611 = !DISubroutineType(types: !612)
!612 = !{!94}
!613 = !DILocation(line: 80, column: 9, scope: !610)
!614 = !DILocation(line: 80, column: 28, scope: !610)
!615 = !DILocation(line: 80, column: 35, scope: !610)
!616 = !DILocation(line: 80, column: 2, scope: !610)
!617 = distinct !DISubprogram(name: "first", scope: !130, file: !130, line: 39, type: !618, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!618 = !DISubroutineType(types: !619)
!619 = !{!99}
!620 = !DILocalVariable(name: "t", scope: !617, file: !130, line: 41, type: !621)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!622 = !DILocation(line: 41, column: 15, scope: !617)
!623 = !DILocation(line: 41, column: 19, scope: !617)
!624 = !DILocation(line: 43, column: 9, scope: !617)
!625 = !DILocation(line: 43, column: 11, scope: !617)
!626 = !DILocation(line: 43, column: 58, scope: !627)
!627 = distinct !DILexicalBlock(scope: !617, file: !130, line: 43, column: 23)
!628 = !DILocation(line: 43, column: 62, scope: !627)
!629 = !DILocation(line: 43, column: 23, scope: !617)
!630 = !DILocation(line: 43, column: 109, scope: !627)
!631 = !DILocation(line: 43, column: 2, scope: !617)
!632 = distinct !DISubprogram(name: "sys_dlist_insert", scope: !105, file: !105, line: 452, type: !633, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !621, !621}
!635 = !DILocalVariable(name: "successor", arg: 1, scope: !632, file: !105, line: 452, type: !621)
!636 = !DILocation(line: 452, column: 50, scope: !632)
!637 = !DILocalVariable(name: "node", arg: 2, scope: !632, file: !105, line: 452, type: !621)
!638 = !DILocation(line: 452, column: 74, scope: !632)
!639 = !DILocalVariable(name: "prev", scope: !632, file: !105, line: 454, type: !640)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!641 = !DILocation(line: 454, column: 21, scope: !632)
!642 = !DILocation(line: 454, column: 28, scope: !632)
!643 = !DILocation(line: 454, column: 39, scope: !632)
!644 = !DILocation(line: 456, column: 15, scope: !632)
!645 = !DILocation(line: 456, column: 2, scope: !632)
!646 = !DILocation(line: 456, column: 8, scope: !632)
!647 = !DILocation(line: 456, column: 13, scope: !632)
!648 = !DILocation(line: 457, column: 15, scope: !632)
!649 = !DILocation(line: 457, column: 2, scope: !632)
!650 = !DILocation(line: 457, column: 8, scope: !632)
!651 = !DILocation(line: 457, column: 13, scope: !632)
!652 = !DILocation(line: 458, column: 15, scope: !632)
!653 = !DILocation(line: 458, column: 2, scope: !632)
!654 = !DILocation(line: 458, column: 8, scope: !632)
!655 = !DILocation(line: 458, column: 13, scope: !632)
!656 = !DILocation(line: 459, column: 20, scope: !632)
!657 = !DILocation(line: 459, column: 2, scope: !632)
!658 = !DILocation(line: 459, column: 13, scope: !632)
!659 = !DILocation(line: 459, column: 18, scope: !632)
!660 = !DILocation(line: 460, column: 1, scope: !632)
!661 = distinct !DISubprogram(name: "next", scope: !130, file: !130, line: 46, type: !662, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!662 = !DISubroutineType(types: !663)
!663 = !{!99, !99}
!664 = !DILocalVariable(name: "t", arg: 1, scope: !661, file: !130, line: 46, type: !99)
!665 = !DILocation(line: 46, column: 47, scope: !661)
!666 = !DILocalVariable(name: "n", scope: !661, file: !130, line: 48, type: !621)
!667 = !DILocation(line: 48, column: 15, scope: !661)
!668 = !DILocation(line: 48, column: 55, scope: !661)
!669 = !DILocation(line: 48, column: 58, scope: !661)
!670 = !DILocation(line: 48, column: 19, scope: !661)
!671 = !DILocation(line: 50, column: 9, scope: !661)
!672 = !DILocation(line: 50, column: 11, scope: !661)
!673 = !DILocation(line: 50, column: 58, scope: !674)
!674 = distinct !DILexicalBlock(scope: !661, file: !130, line: 50, column: 23)
!675 = !DILocation(line: 50, column: 62, scope: !674)
!676 = !DILocation(line: 50, column: 23, scope: !661)
!677 = !DILocation(line: 50, column: 109, scope: !674)
!678 = !DILocation(line: 50, column: 2, scope: !661)
!679 = distinct !DISubprogram(name: "sys_dlist_append", scope: !105, file: !105, line: 413, type: !680, scopeLine: 414, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !682, !621}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!683 = !DILocalVariable(name: "list", arg: 1, scope: !679, file: !105, line: 413, type: !682)
!684 = !DILocation(line: 413, column: 50, scope: !679)
!685 = !DILocalVariable(name: "node", arg: 2, scope: !679, file: !105, line: 413, type: !621)
!686 = !DILocation(line: 413, column: 69, scope: !679)
!687 = !DILocalVariable(name: "tail", scope: !679, file: !105, line: 415, type: !640)
!688 = !DILocation(line: 415, column: 21, scope: !679)
!689 = !DILocation(line: 415, column: 28, scope: !679)
!690 = !DILocation(line: 415, column: 34, scope: !679)
!691 = !DILocation(line: 417, column: 15, scope: !679)
!692 = !DILocation(line: 417, column: 2, scope: !679)
!693 = !DILocation(line: 417, column: 8, scope: !679)
!694 = !DILocation(line: 417, column: 13, scope: !679)
!695 = !DILocation(line: 418, column: 15, scope: !679)
!696 = !DILocation(line: 418, column: 2, scope: !679)
!697 = !DILocation(line: 418, column: 8, scope: !679)
!698 = !DILocation(line: 418, column: 13, scope: !679)
!699 = !DILocation(line: 420, column: 15, scope: !679)
!700 = !DILocation(line: 420, column: 2, scope: !679)
!701 = !DILocation(line: 420, column: 8, scope: !679)
!702 = !DILocation(line: 420, column: 13, scope: !679)
!703 = !DILocation(line: 421, column: 15, scope: !679)
!704 = !DILocation(line: 421, column: 2, scope: !679)
!705 = !DILocation(line: 421, column: 8, scope: !679)
!706 = !DILocation(line: 421, column: 13, scope: !679)
!707 = !DILocation(line: 422, column: 1, scope: !679)
!708 = distinct !DISubprogram(name: "next_timeout", scope: !130, file: !130, line: 83, type: !611, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!709 = !DILocalVariable(name: "to", scope: !708, file: !130, line: 85, type: !99)
!710 = !DILocation(line: 85, column: 19, scope: !708)
!711 = !DILocation(line: 85, column: 24, scope: !708)
!712 = !DILocalVariable(name: "ticks_elapsed", scope: !708, file: !130, line: 86, type: !94)
!713 = !DILocation(line: 86, column: 10, scope: !708)
!714 = !DILocation(line: 86, column: 26, scope: !708)
!715 = !DILocalVariable(name: "ret", scope: !708, file: !130, line: 87, type: !94)
!716 = !DILocation(line: 87, column: 10, scope: !708)
!717 = !DILocation(line: 89, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !708, file: !130, line: 89, column: 6)
!719 = !DILocation(line: 89, column: 10, scope: !718)
!720 = !DILocation(line: 89, column: 16, scope: !718)
!721 = !DILocation(line: 90, column: 17, scope: !718)
!722 = !DILocation(line: 90, column: 21, scope: !718)
!723 = !DILocation(line: 90, column: 30, scope: !718)
!724 = !DILocation(line: 90, column: 28, scope: !718)
!725 = !DILocation(line: 90, column: 45, scope: !718)
!726 = !DILocation(line: 89, column: 6, scope: !708)
!727 = !DILocation(line: 91, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !718, file: !130, line: 90, column: 69)
!729 = !DILocation(line: 92, column: 2, scope: !728)
!730 = !DILocation(line: 93, column: 18, scope: !731)
!731 = distinct !DILexicalBlock(scope: !718, file: !130, line: 92, column: 9)
!732 = !DILocation(line: 93, column: 22, scope: !731)
!733 = !DILocation(line: 93, column: 31, scope: !731)
!734 = !DILocation(line: 93, column: 29, scope: !731)
!735 = !DILocation(line: 93, column: 15, scope: !731)
!736 = !DILocation(line: 93, column: 10, scope: !731)
!737 = !DILocation(line: 93, column: 56, scope: !731)
!738 = !DILocation(line: 93, column: 60, scope: !731)
!739 = !DILocation(line: 93, column: 69, scope: !731)
!740 = !DILocation(line: 93, column: 67, scope: !731)
!741 = !DILocation(line: 93, column: 9, scope: !731)
!742 = !DILocation(line: 93, column: 7, scope: !731)
!743 = !DILocation(line: 96, column: 9, scope: !708)
!744 = !DILocation(line: 96, column: 2, scope: !708)
!745 = distinct !DISubprogram(name: "z_abort_timeout", scope: !130, file: !130, line: 144, type: !746, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!746 = !DISubroutineType(types: !747)
!747 = !{!95, !99}
!748 = !DILocalVariable(name: "to", arg: 1, scope: !745, file: !130, line: 144, type: !99)
!749 = !DILocation(line: 144, column: 38, scope: !745)
!750 = !DILocalVariable(name: "ret", scope: !745, file: !130, line: 146, type: !95)
!751 = !DILocation(line: 146, column: 6, scope: !745)
!752 = !DILocalVariable(name: "__i", scope: !753, file: !130, line: 148, type: !439)
!753 = distinct !DILexicalBlock(scope: !745, file: !130, line: 148, column: 2)
!754 = !DILocation(line: 148, column: 24, scope: !753)
!755 = !DILocalVariable(name: "__key", scope: !753, file: !130, line: 148, type: !439)
!756 = !DILocation(line: 148, column: 34, scope: !753)
!757 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !758)
!758 = distinct !DILocation(line: 148, column: 42, scope: !753)
!759 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !758)
!760 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !758)
!761 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !762)
!762 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !758)
!763 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !762)
!764 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !762)
!765 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !758)
!766 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !758)
!767 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !768)
!768 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !758)
!769 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !768)
!770 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !758)
!771 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !772)
!772 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !758)
!773 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !772)
!774 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !758)
!775 = !DILocation(line: 148, column: 42, scope: !753)
!776 = !DILocation(line: 148, column: 7, scope: !753)
!777 = !DILocation(line: 148, column: 75, scope: !778)
!778 = distinct !DILexicalBlock(scope: !753, file: !130, line: 148, column: 2)
!779 = !DILocation(line: 148, column: 70, scope: !778)
!780 = !DILocation(line: 148, column: 2, scope: !753)
!781 = !DILocation(line: 149, column: 28, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !130, line: 149, column: 7)
!783 = distinct !DILexicalBlock(scope: !778, file: !130, line: 148, column: 130)
!784 = !DILocation(line: 149, column: 32, scope: !782)
!785 = !DILocation(line: 149, column: 7, scope: !782)
!786 = !DILocation(line: 149, column: 7, scope: !783)
!787 = !DILocation(line: 150, column: 19, scope: !788)
!788 = distinct !DILexicalBlock(scope: !782, file: !130, line: 149, column: 39)
!789 = !DILocation(line: 150, column: 4, scope: !788)
!790 = !DILocation(line: 151, column: 8, scope: !788)
!791 = !DILocation(line: 152, column: 3, scope: !788)
!792 = !DILocation(line: 153, column: 2, scope: !783)
!793 = !DILocation(line: 148, column: 80, scope: !778)
!794 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !795)
!795 = distinct !DILocation(line: 148, column: 80, scope: !778)
!796 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !795)
!797 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !795)
!798 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !795)
!799 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !800)
!800 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !795)
!801 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !800)
!802 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !800)
!803 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !800)
!804 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !800)
!805 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !800)
!806 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !800)
!807 = !DILocation(line: 148, column: 121, scope: !778)
!808 = !DILocation(line: 148, column: 125, scope: !778)
!809 = !DILocation(line: 148, column: 2, scope: !778)
!810 = distinct !{!810, !780, !811}
!811 = !DILocation(line: 153, column: 2, scope: !753)
!812 = !DILocation(line: 155, column: 9, scope: !745)
!813 = !DILocation(line: 155, column: 2, scope: !745)
!814 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !105, file: !105, line: 234, type: !815, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!815 = !DISubroutineType(types: !816)
!816 = !{!817, !818}
!817 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!820 = !DILocalVariable(name: "node", arg: 1, scope: !814, file: !105, line: 234, type: !818)
!821 = !DILocation(line: 234, column: 60, scope: !814)
!822 = !DILocation(line: 236, column: 9, scope: !814)
!823 = !DILocation(line: 236, column: 15, scope: !814)
!824 = !DILocation(line: 236, column: 20, scope: !814)
!825 = !DILocation(line: 236, column: 2, scope: !814)
!826 = distinct !DISubprogram(name: "remove_timeout", scope: !130, file: !130, line: 53, type: !122, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!827 = !DILocalVariable(name: "t", arg: 1, scope: !826, file: !130, line: 53, type: !99)
!828 = !DILocation(line: 53, column: 45, scope: !826)
!829 = !DILocation(line: 55, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !130, line: 55, column: 6)
!831 = !DILocation(line: 55, column: 6, scope: !830)
!832 = !DILocation(line: 55, column: 14, scope: !830)
!833 = !DILocation(line: 55, column: 6, scope: !826)
!834 = !DILocation(line: 56, column: 22, scope: !835)
!835 = distinct !DILexicalBlock(scope: !830, file: !130, line: 55, column: 20)
!836 = !DILocation(line: 56, column: 25, scope: !835)
!837 = !DILocation(line: 56, column: 8, scope: !835)
!838 = !DILocation(line: 56, column: 3, scope: !835)
!839 = !DILocation(line: 56, column: 12, scope: !835)
!840 = !DILocation(line: 56, column: 19, scope: !835)
!841 = !DILocation(line: 57, column: 2, scope: !835)
!842 = !DILocation(line: 59, column: 20, scope: !826)
!843 = !DILocation(line: 59, column: 23, scope: !826)
!844 = !DILocation(line: 59, column: 2, scope: !826)
!845 = !DILocation(line: 60, column: 1, scope: !826)
!846 = distinct !DISubprogram(name: "z_timeout_remaining", scope: !130, file: !130, line: 177, type: !847, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!847 = !DISubroutineType(types: !848)
!848 = !{!89, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!851 = !DILocalVariable(name: "timeout", arg: 1, scope: !846, file: !130, line: 177, type: !849)
!852 = !DILocation(line: 177, column: 54, scope: !846)
!853 = !DILocalVariable(name: "ticks", scope: !846, file: !130, line: 179, type: !89)
!854 = !DILocation(line: 179, column: 12, scope: !846)
!855 = !DILocalVariable(name: "__i", scope: !856, file: !130, line: 181, type: !439)
!856 = distinct !DILexicalBlock(scope: !846, file: !130, line: 181, column: 2)
!857 = !DILocation(line: 181, column: 24, scope: !856)
!858 = !DILocalVariable(name: "__key", scope: !856, file: !130, line: 181, type: !439)
!859 = !DILocation(line: 181, column: 34, scope: !856)
!860 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !861)
!861 = distinct !DILocation(line: 181, column: 42, scope: !856)
!862 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !861)
!863 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !861)
!864 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !865)
!865 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !861)
!866 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !865)
!867 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !865)
!868 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !861)
!869 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !861)
!870 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !871)
!871 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !861)
!872 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !871)
!873 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !861)
!874 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !875)
!875 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !861)
!876 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !875)
!877 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !861)
!878 = !DILocation(line: 181, column: 42, scope: !856)
!879 = !DILocation(line: 181, column: 7, scope: !856)
!880 = !DILocation(line: 181, column: 75, scope: !881)
!881 = distinct !DILexicalBlock(scope: !856, file: !130, line: 181, column: 2)
!882 = !DILocation(line: 181, column: 70, scope: !881)
!883 = !DILocation(line: 181, column: 2, scope: !856)
!884 = !DILocation(line: 182, column: 23, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !130, line: 181, column: 130)
!886 = !DILocation(line: 182, column: 11, scope: !885)
!887 = !DILocation(line: 182, column: 9, scope: !885)
!888 = !DILocation(line: 183, column: 2, scope: !885)
!889 = !DILocation(line: 181, column: 80, scope: !881)
!890 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !891)
!891 = distinct !DILocation(line: 181, column: 80, scope: !881)
!892 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !891)
!893 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !891)
!894 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !891)
!895 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !896)
!896 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !891)
!897 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !896)
!898 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !896)
!899 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !896)
!900 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !896)
!901 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !896)
!902 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !896)
!903 = !DILocation(line: 181, column: 121, scope: !881)
!904 = !DILocation(line: 181, column: 125, scope: !881)
!905 = !DILocation(line: 181, column: 2, scope: !881)
!906 = distinct !{!906, !883, !907}
!907 = !DILocation(line: 183, column: 2, scope: !856)
!908 = !DILocation(line: 185, column: 9, scope: !846)
!909 = !DILocation(line: 185, column: 2, scope: !846)
!910 = distinct !DISubprogram(name: "timeout_rem", scope: !130, file: !130, line: 159, type: !847, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!911 = !DILocalVariable(name: "timeout", arg: 1, scope: !910, file: !130, line: 159, type: !849)
!912 = !DILocation(line: 159, column: 53, scope: !910)
!913 = !DILocalVariable(name: "ticks", scope: !910, file: !130, line: 161, type: !89)
!914 = !DILocation(line: 161, column: 12, scope: !910)
!915 = !DILocation(line: 163, column: 28, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !130, line: 163, column: 6)
!917 = !DILocation(line: 163, column: 6, scope: !916)
!918 = !DILocation(line: 163, column: 6, scope: !910)
!919 = !DILocation(line: 164, column: 3, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !130, line: 163, column: 38)
!921 = !DILocalVariable(name: "t", scope: !922, file: !130, line: 167, type: !99)
!922 = distinct !DILexicalBlock(scope: !910, file: !130, line: 167, column: 2)
!923 = !DILocation(line: 167, column: 24, scope: !922)
!924 = !DILocation(line: 167, column: 28, scope: !922)
!925 = !DILocation(line: 167, column: 7, scope: !922)
!926 = !DILocation(line: 167, column: 37, scope: !927)
!927 = distinct !DILexicalBlock(scope: !922, file: !130, line: 167, column: 2)
!928 = !DILocation(line: 167, column: 39, scope: !927)
!929 = !DILocation(line: 167, column: 2, scope: !922)
!930 = !DILocation(line: 168, column: 12, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !130, line: 167, column: 58)
!932 = !DILocation(line: 168, column: 15, scope: !931)
!933 = !DILocation(line: 168, column: 9, scope: !931)
!934 = !DILocation(line: 169, column: 7, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !130, line: 169, column: 7)
!936 = !DILocation(line: 169, column: 18, scope: !935)
!937 = !DILocation(line: 169, column: 15, scope: !935)
!938 = !DILocation(line: 169, column: 7, scope: !931)
!939 = !DILocation(line: 170, column: 4, scope: !940)
!940 = distinct !DILexicalBlock(scope: !935, file: !130, line: 169, column: 21)
!941 = !DILocation(line: 172, column: 2, scope: !931)
!942 = !DILocation(line: 167, column: 54, scope: !927)
!943 = !DILocation(line: 167, column: 49, scope: !927)
!944 = !DILocation(line: 167, column: 47, scope: !927)
!945 = !DILocation(line: 167, column: 2, scope: !927)
!946 = distinct !{!946, !929, !947}
!947 = !DILocation(line: 172, column: 2, scope: !922)
!948 = !DILocation(line: 174, column: 9, scope: !910)
!949 = !DILocation(line: 174, column: 17, scope: !910)
!950 = !DILocation(line: 174, column: 15, scope: !910)
!951 = !DILocation(line: 174, column: 2, scope: !910)
!952 = !DILocation(line: 175, column: 1, scope: !910)
!953 = distinct !DISubprogram(name: "z_timeout_expires", scope: !130, file: !130, line: 188, type: !847, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!954 = !DILocalVariable(name: "timeout", arg: 1, scope: !953, file: !130, line: 188, type: !849)
!955 = !DILocation(line: 188, column: 52, scope: !953)
!956 = !DILocalVariable(name: "ticks", scope: !953, file: !130, line: 190, type: !89)
!957 = !DILocation(line: 190, column: 12, scope: !953)
!958 = !DILocalVariable(name: "__i", scope: !959, file: !130, line: 192, type: !439)
!959 = distinct !DILexicalBlock(scope: !953, file: !130, line: 192, column: 2)
!960 = !DILocation(line: 192, column: 24, scope: !959)
!961 = !DILocalVariable(name: "__key", scope: !959, file: !130, line: 192, type: !439)
!962 = !DILocation(line: 192, column: 34, scope: !959)
!963 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !964)
!964 = distinct !DILocation(line: 192, column: 42, scope: !959)
!965 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !964)
!966 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !964)
!967 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !968)
!968 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !964)
!969 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !968)
!970 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !968)
!971 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !964)
!972 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !964)
!973 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !974)
!974 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !964)
!975 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !974)
!976 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !964)
!977 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !978)
!978 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !964)
!979 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !978)
!980 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !964)
!981 = !DILocation(line: 192, column: 42, scope: !959)
!982 = !DILocation(line: 192, column: 7, scope: !959)
!983 = !DILocation(line: 192, column: 75, scope: !984)
!984 = distinct !DILexicalBlock(scope: !959, file: !130, line: 192, column: 2)
!985 = !DILocation(line: 192, column: 70, scope: !984)
!986 = !DILocation(line: 192, column: 2, scope: !959)
!987 = !DILocation(line: 193, column: 11, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !130, line: 192, column: 130)
!989 = !DILocation(line: 193, column: 35, scope: !988)
!990 = !DILocation(line: 193, column: 23, scope: !988)
!991 = !DILocation(line: 193, column: 21, scope: !988)
!992 = !DILocation(line: 193, column: 9, scope: !988)
!993 = !DILocation(line: 194, column: 2, scope: !988)
!994 = !DILocation(line: 192, column: 80, scope: !984)
!995 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !996)
!996 = distinct !DILocation(line: 192, column: 80, scope: !984)
!997 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !996)
!998 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !996)
!999 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !996)
!1000 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !1001)
!1001 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !996)
!1002 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !1001)
!1003 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !1001)
!1004 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !1001)
!1005 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !1001)
!1006 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !1001)
!1007 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !1001)
!1008 = !DILocation(line: 192, column: 121, scope: !984)
!1009 = !DILocation(line: 192, column: 125, scope: !984)
!1010 = !DILocation(line: 192, column: 2, scope: !984)
!1011 = distinct !{!1011, !986, !1012}
!1012 = !DILocation(line: 194, column: 2, scope: !959)
!1013 = !DILocation(line: 196, column: 9, scope: !953)
!1014 = !DILocation(line: 196, column: 2, scope: !953)
!1015 = distinct !DISubprogram(name: "z_get_next_timeout_expiry", scope: !130, file: !130, line: 199, type: !611, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1016 = !DILocalVariable(name: "ret", scope: !1015, file: !130, line: 201, type: !94)
!1017 = !DILocation(line: 201, column: 10, scope: !1015)
!1018 = !DILocalVariable(name: "__i", scope: !1019, file: !130, line: 203, type: !439)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !130, line: 203, column: 2)
!1020 = !DILocation(line: 203, column: 24, scope: !1019)
!1021 = !DILocalVariable(name: "__key", scope: !1019, file: !130, line: 203, type: !439)
!1022 = !DILocation(line: 203, column: 34, scope: !1019)
!1023 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 203, column: 42, scope: !1019)
!1025 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !1024)
!1026 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !1024)
!1027 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !1024)
!1029 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !1028)
!1030 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !1028)
!1031 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !1024)
!1032 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !1024)
!1033 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !1024)
!1035 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !1034)
!1036 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !1024)
!1037 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !1024)
!1039 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !1038)
!1040 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !1024)
!1041 = !DILocation(line: 203, column: 42, scope: !1019)
!1042 = !DILocation(line: 203, column: 7, scope: !1019)
!1043 = !DILocation(line: 203, column: 75, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1019, file: !130, line: 203, column: 2)
!1045 = !DILocation(line: 203, column: 70, scope: !1044)
!1046 = !DILocation(line: 203, column: 2, scope: !1019)
!1047 = !DILocation(line: 204, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1044, file: !130, line: 203, column: 130)
!1049 = !DILocation(line: 204, column: 7, scope: !1048)
!1050 = !DILocation(line: 205, column: 2, scope: !1048)
!1051 = !DILocation(line: 203, column: 80, scope: !1044)
!1052 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !1053)
!1053 = distinct !DILocation(line: 203, column: 80, scope: !1044)
!1054 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !1053)
!1055 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !1053)
!1056 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !1053)
!1057 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !1058)
!1058 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !1053)
!1059 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !1058)
!1060 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !1058)
!1061 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !1058)
!1062 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !1058)
!1063 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !1058)
!1064 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !1058)
!1065 = !DILocation(line: 203, column: 121, scope: !1044)
!1066 = !DILocation(line: 203, column: 125, scope: !1044)
!1067 = !DILocation(line: 203, column: 2, scope: !1044)
!1068 = distinct !{!1068, !1046, !1069}
!1069 = !DILocation(line: 205, column: 2, scope: !1019)
!1070 = !DILocation(line: 206, column: 9, scope: !1015)
!1071 = !DILocation(line: 206, column: 2, scope: !1015)
!1072 = distinct !DISubprogram(name: "sys_clock_announce", scope: !130, file: !130, line: 209, type: !1073, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{null, !94}
!1075 = !DILocalVariable(name: "ticks", arg: 1, scope: !1072, file: !130, line: 209, type: !94)
!1076 = !DILocation(line: 209, column: 33, scope: !1072)
!1077 = !DILocalVariable(name: "key", scope: !1072, file: !130, line: 211, type: !439)
!1078 = !DILocation(line: 211, column: 19, scope: !1072)
!1079 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !1080)
!1080 = distinct !DILocation(line: 211, column: 25, scope: !1072)
!1081 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !1080)
!1082 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !1080)
!1083 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !1080)
!1085 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !1084)
!1086 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !1084)
!1087 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !1080)
!1088 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !1080)
!1089 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !1080)
!1091 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !1090)
!1092 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !1080)
!1093 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !1080)
!1095 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !1094)
!1096 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !1080)
!1097 = !DILocation(line: 211, column: 25, scope: !1072)
!1098 = !DILocation(line: 225, column: 23, scope: !1072)
!1099 = !DILocation(line: 225, column: 21, scope: !1072)
!1100 = !DILocalVariable(name: "t", scope: !1072, file: !130, line: 227, type: !99)
!1101 = !DILocation(line: 227, column: 19, scope: !1072)
!1102 = !DILocation(line: 229, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1072, file: !130, line: 229, column: 2)
!1104 = !DILocation(line: 229, column: 9, scope: !1103)
!1105 = !DILocation(line: 229, column: 7, scope: !1103)
!1106 = !DILocation(line: 230, column: 8, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !130, line: 229, column: 2)
!1108 = !DILocation(line: 230, column: 10, scope: !1107)
!1109 = !DILocation(line: 230, column: 16, scope: !1107)
!1110 = !DILocation(line: 230, column: 20, scope: !1107)
!1111 = !DILocation(line: 230, column: 23, scope: !1107)
!1112 = !DILocation(line: 230, column: 33, scope: !1107)
!1113 = !DILocation(line: 230, column: 30, scope: !1107)
!1114 = !DILocation(line: 0, scope: !1107)
!1115 = !DILocation(line: 229, column: 2, scope: !1103)
!1116 = !DILocalVariable(name: "dt", scope: !1117, file: !130, line: 232, type: !95)
!1117 = distinct !DILexicalBlock(scope: !1107, file: !130, line: 231, column: 20)
!1118 = !DILocation(line: 232, column: 7, scope: !1117)
!1119 = !DILocation(line: 232, column: 12, scope: !1117)
!1120 = !DILocation(line: 232, column: 15, scope: !1117)
!1121 = !DILocation(line: 234, column: 16, scope: !1117)
!1122 = !DILocation(line: 234, column: 13, scope: !1117)
!1123 = !DILocation(line: 235, column: 3, scope: !1117)
!1124 = !DILocation(line: 235, column: 6, scope: !1117)
!1125 = !DILocation(line: 235, column: 13, scope: !1117)
!1126 = !DILocation(line: 236, column: 18, scope: !1117)
!1127 = !DILocation(line: 236, column: 3, scope: !1117)
!1128 = !DILocation(line: 238, column: 3, scope: !1117)
!1129 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 238, column: 3, scope: !1117)
!1131 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !1130)
!1132 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !1130)
!1133 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !1130)
!1134 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !1130)
!1136 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !1135)
!1137 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !1135)
!1138 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !1135)
!1139 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !1135)
!1140 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !1135)
!1141 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !1135)
!1142 = !DILocation(line: 239, column: 3, scope: !1117)
!1143 = !DILocation(line: 239, column: 6, scope: !1117)
!1144 = !DILocation(line: 239, column: 9, scope: !1117)
!1145 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 240, column: 9, scope: !1117)
!1147 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !1146)
!1148 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !1146)
!1149 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !1150)
!1150 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !1146)
!1151 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !1150)
!1152 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !1150)
!1153 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !1146)
!1154 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !1146)
!1155 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !1146)
!1157 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !1156)
!1158 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !1146)
!1159 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !1146)
!1161 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !1160)
!1162 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !1146)
!1163 = !DILocation(line: 240, column: 9, scope: !1117)
!1164 = !DILocation(line: 241, column: 25, scope: !1117)
!1165 = !DILocation(line: 241, column: 22, scope: !1117)
!1166 = !DILocation(line: 242, column: 2, scope: !1117)
!1167 = !DILocation(line: 231, column: 11, scope: !1107)
!1168 = !DILocation(line: 231, column: 9, scope: !1107)
!1169 = !DILocation(line: 229, column: 2, scope: !1107)
!1170 = distinct !{!1170, !1115, !1171}
!1171 = !DILocation(line: 242, column: 2, scope: !1103)
!1172 = !DILocation(line: 244, column: 6, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1072, file: !130, line: 244, column: 6)
!1174 = !DILocation(line: 244, column: 8, scope: !1173)
!1175 = !DILocation(line: 244, column: 6, scope: !1072)
!1176 = !DILocation(line: 245, column: 16, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !130, line: 244, column: 14)
!1178 = !DILocation(line: 245, column: 3, scope: !1177)
!1179 = !DILocation(line: 245, column: 6, scope: !1177)
!1180 = !DILocation(line: 245, column: 13, scope: !1177)
!1181 = !DILocation(line: 246, column: 2, scope: !1177)
!1182 = !DILocation(line: 248, column: 15, scope: !1072)
!1183 = !DILocation(line: 248, column: 12, scope: !1072)
!1184 = !DILocation(line: 249, column: 21, scope: !1072)
!1185 = !DILocation(line: 251, column: 24, scope: !1072)
!1186 = !DILocation(line: 251, column: 2, scope: !1072)
!1187 = !DILocation(line: 253, column: 2, scope: !1072)
!1188 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 253, column: 2, scope: !1072)
!1190 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !1189)
!1191 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !1189)
!1192 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !1189)
!1193 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !1189)
!1195 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !1194)
!1196 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !1194)
!1197 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !1194)
!1198 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !1194)
!1199 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !1194)
!1200 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !1194)
!1201 = !DILocation(line: 256, column: 2, scope: !1072)
!1202 = !DILocation(line: 258, column: 1, scope: !1072)
!1203 = distinct !DISubprogram(name: "sys_clock_tick_get", scope: !130, file: !130, line: 260, type: !1204, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!91}
!1206 = !DILocalVariable(name: "t", scope: !1203, file: !130, line: 262, type: !131)
!1207 = !DILocation(line: 262, column: 11, scope: !1203)
!1208 = !DILocalVariable(name: "__i", scope: !1209, file: !130, line: 264, type: !439)
!1209 = distinct !DILexicalBlock(scope: !1203, file: !130, line: 264, column: 2)
!1210 = !DILocation(line: 264, column: 24, scope: !1209)
!1211 = !DILocalVariable(name: "__key", scope: !1209, file: !130, line: 264, type: !439)
!1212 = !DILocation(line: 264, column: 34, scope: !1209)
!1213 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 264, column: 42, scope: !1209)
!1215 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !1214)
!1216 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !1214)
!1217 = !DILocation(line: 44, column: 15, scope: !457, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !1214)
!1219 = !DILocation(line: 48, column: 2, scope: !457, inlinedAt: !1218)
!1220 = !DILocation(line: 80, column: 9, scope: !457, inlinedAt: !1218)
!1221 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !1214)
!1222 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !1214)
!1223 = !DILocation(line: 110, column: 94, scope: !469, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !1214)
!1225 = !DILocation(line: 112, column: 9, scope: !469, inlinedAt: !1224)
!1226 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !1214)
!1227 = !DILocation(line: 121, column: 95, scope: !477, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !1214)
!1229 = !DILocation(line: 123, column: 9, scope: !477, inlinedAt: !1228)
!1230 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !1214)
!1231 = !DILocation(line: 264, column: 42, scope: !1209)
!1232 = !DILocation(line: 264, column: 7, scope: !1209)
!1233 = !DILocation(line: 264, column: 75, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1209, file: !130, line: 264, column: 2)
!1235 = !DILocation(line: 264, column: 70, scope: !1234)
!1236 = !DILocation(line: 264, column: 2, scope: !1209)
!1237 = !DILocation(line: 265, column: 7, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !130, line: 264, column: 130)
!1239 = !DILocation(line: 265, column: 19, scope: !1238)
!1240 = !DILocation(line: 265, column: 17, scope: !1238)
!1241 = !DILocation(line: 265, column: 5, scope: !1238)
!1242 = !DILocation(line: 266, column: 2, scope: !1238)
!1243 = !DILocation(line: 264, column: 80, scope: !1234)
!1244 = !DILocation(line: 235, column: 84, scope: !580, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 264, column: 80, scope: !1234)
!1246 = !DILocation(line: 236, column: 23, scope: !580, inlinedAt: !1245)
!1247 = !DILocation(line: 238, column: 9, scope: !580, inlinedAt: !1245)
!1248 = !DILocation(line: 261, column: 22, scope: !580, inlinedAt: !1245)
!1249 = !DILocation(line: 88, column: 80, scope: !590, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 261, column: 2, scope: !580, inlinedAt: !1245)
!1251 = !DILocation(line: 91, column: 6, scope: !596, inlinedAt: !1250)
!1252 = !DILocation(line: 91, column: 10, scope: !596, inlinedAt: !1250)
!1253 = !DILocation(line: 91, column: 6, scope: !590, inlinedAt: !1250)
!1254 = !DILocation(line: 92, column: 3, scope: !600, inlinedAt: !1250)
!1255 = !DILocation(line: 94, column: 2, scope: !590, inlinedAt: !1250)
!1256 = !DILocation(line: 114, column: 1, scope: !590, inlinedAt: !1250)
!1257 = !DILocation(line: 264, column: 121, scope: !1234)
!1258 = !DILocation(line: 264, column: 125, scope: !1234)
!1259 = !DILocation(line: 264, column: 2, scope: !1234)
!1260 = distinct !{!1260, !1236, !1261}
!1261 = !DILocation(line: 266, column: 2, scope: !1209)
!1262 = !DILocation(line: 267, column: 9, scope: !1203)
!1263 = !DILocation(line: 267, column: 2, scope: !1203)
!1264 = distinct !DISubprogram(name: "sys_clock_tick_get_32", scope: !130, file: !130, line: 270, type: !1265, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!96}
!1267 = !DILocation(line: 273, column: 19, scope: !1264)
!1268 = !DILocation(line: 273, column: 9, scope: !1264)
!1269 = !DILocation(line: 273, column: 2, scope: !1264)
!1270 = distinct !DISubprogram(name: "z_impl_k_uptime_ticks", scope: !130, file: !130, line: 279, type: !1204, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1271 = !DILocation(line: 281, column: 9, scope: !1270)
!1272 = !DILocation(line: 281, column: 2, scope: !1270)
!1273 = distinct !DISubprogram(name: "sys_timepoint_calc", scope: !130, file: !130, line: 292, type: !1274, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!1276, !306}
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timepoint_t", file: !90, line: 219, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 219, size: 64, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !1277, file: !90, line: 219, baseType: !131, size: 64)
!1280 = !DILocalVariable(name: "timeout", arg: 1, scope: !1273, file: !130, line: 292, type: !306)
!1281 = !DILocation(line: 292, column: 46, scope: !1273)
!1282 = !DILocalVariable(name: "timepoint", scope: !1273, file: !130, line: 294, type: !1276)
!1283 = !DILocation(line: 294, column: 16, scope: !1273)
!1284 = !DILocation(line: 296, column: 17, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1273, file: !130, line: 296, column: 6)
!1286 = !DILocation(line: 296, column: 42, scope: !1285)
!1287 = !DILocation(line: 296, column: 23, scope: !1285)
!1288 = !DILocation(line: 296, column: 6, scope: !1273)
!1289 = !DILocation(line: 297, column: 13, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !130, line: 296, column: 84)
!1291 = !DILocation(line: 297, column: 18, scope: !1290)
!1292 = !DILocation(line: 298, column: 2, scope: !1290)
!1293 = !DILocation(line: 298, column: 24, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !130, line: 298, column: 13)
!1295 = !DILocation(line: 298, column: 49, scope: !1294)
!1296 = !DILocation(line: 298, column: 30, scope: !1294)
!1297 = !DILocation(line: 298, column: 13, scope: !1285)
!1298 = !DILocation(line: 299, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !130, line: 298, column: 63)
!1300 = !DILocation(line: 299, column: 18, scope: !1299)
!1301 = !DILocation(line: 300, column: 2, scope: !1299)
!1302 = !DILocalVariable(name: "dt", scope: !1303, file: !130, line: 301, type: !89)
!1303 = distinct !DILexicalBlock(scope: !1294, file: !130, line: 300, column: 9)
!1304 = !DILocation(line: 301, column: 13, scope: !1303)
!1305 = !DILocation(line: 301, column: 26, scope: !1303)
!1306 = !DILocation(line: 303, column: 37, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !130, line: 303, column: 7)
!1308 = !DILocation(line: 303, column: 34, scope: !1307)
!1309 = !DILocation(line: 303, column: 42, scope: !1307)
!1310 = !DILocation(line: 303, column: 7, scope: !1303)
!1311 = !DILocation(line: 304, column: 46, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !130, line: 303, column: 48)
!1313 = !DILocation(line: 304, column: 43, scope: !1312)
!1314 = !DILocation(line: 304, column: 14, scope: !1312)
!1315 = !DILocation(line: 304, column: 19, scope: !1312)
!1316 = !DILocation(line: 305, column: 3, scope: !1312)
!1317 = !DILocation(line: 306, column: 21, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1307, file: !130, line: 305, column: 10)
!1319 = !DILocation(line: 306, column: 53, scope: !1318)
!1320 = !DILocation(line: 306, column: 50, scope: !1318)
!1321 = !DILocation(line: 306, column: 45, scope: !1318)
!1322 = !DILocation(line: 306, column: 67, scope: !1318)
!1323 = !DILocation(line: 306, column: 42, scope: !1318)
!1324 = !DILocation(line: 306, column: 14, scope: !1318)
!1325 = !DILocation(line: 306, column: 19, scope: !1318)
!1326 = !DILocation(line: 310, column: 2, scope: !1273)
!1327 = distinct !DISubprogram(name: "sys_timepoint_timeout", scope: !130, file: !130, line: 313, type: !1328, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!306, !1276}
!1330 = !DILocalVariable(name: "timepoint", arg: 1, scope: !1327, file: !130, line: 313, type: !1276)
!1331 = !DILocation(line: 313, column: 49, scope: !1327)
!1332 = !DILocalVariable(name: "now", scope: !1327, file: !130, line: 315, type: !131)
!1333 = !DILocation(line: 315, column: 11, scope: !1327)
!1334 = !DILocalVariable(name: "remaining", scope: !1327, file: !130, line: 315, type: !131)
!1335 = !DILocation(line: 315, column: 16, scope: !1327)
!1336 = !DILocation(line: 317, column: 16, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1327, file: !130, line: 317, column: 6)
!1338 = !DILocation(line: 317, column: 21, scope: !1337)
!1339 = !DILocation(line: 317, column: 6, scope: !1327)
!1340 = !DILocation(line: 318, column: 25, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !130, line: 317, column: 51)
!1342 = !DILocation(line: 318, column: 3, scope: !1341)
!1343 = !DILocation(line: 320, column: 16, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1327, file: !130, line: 320, column: 6)
!1345 = !DILocation(line: 320, column: 21, scope: !1344)
!1346 = !DILocation(line: 320, column: 6, scope: !1327)
!1347 = !DILocation(line: 321, column: 25, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !130, line: 320, column: 27)
!1349 = !DILocation(line: 321, column: 3, scope: !1348)
!1350 = !DILocation(line: 324, column: 8, scope: !1327)
!1351 = !DILocation(line: 324, column: 6, scope: !1327)
!1352 = !DILocation(line: 325, column: 25, scope: !1327)
!1353 = !DILocation(line: 325, column: 32, scope: !1327)
!1354 = !DILocation(line: 325, column: 30, scope: !1327)
!1355 = !DILocation(line: 325, column: 14, scope: !1327)
!1356 = !DILocation(line: 325, column: 50, scope: !1327)
!1357 = !DILocation(line: 325, column: 57, scope: !1327)
!1358 = !DILocation(line: 325, column: 55, scope: !1327)
!1359 = !DILocation(line: 325, column: 12, scope: !1327)
!1360 = !DILocation(line: 326, column: 24, scope: !1327)
!1361 = !DILocation(line: 326, column: 36, scope: !1327)
!1362 = !DILocation(line: 326, column: 2, scope: !1327)
!1363 = !DILocation(line: 327, column: 1, scope: !1327)
!1364 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !353, file: !353, line: 335, type: !1365, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!817, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!1368 = !DILocalVariable(name: "list", arg: 1, scope: !1364, file: !353, line: 335, type: !1367)
!1369 = !DILocation(line: 335, column: 55, scope: !1364)
!1370 = !DILocation(line: 335, column: 92, scope: !1364)
!1371 = !DILocation(line: 335, column: 71, scope: !1364)
!1372 = !DILocation(line: 335, column: 98, scope: !1364)
!1373 = !DILocation(line: 335, column: 63, scope: !1364)
!1374 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !353, file: !353, line: 255, type: !1375, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!357, !1367}
!1377 = !DILocalVariable(name: "list", arg: 1, scope: !1374, file: !353, line: 255, type: !1367)
!1378 = !DILocation(line: 255, column: 64, scope: !1374)
!1379 = !DILocation(line: 257, column: 9, scope: !1374)
!1380 = !DILocation(line: 257, column: 15, scope: !1374)
!1381 = !DILocation(line: 257, column: 2, scope: !1374)
!1382 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !105, file: !105, line: 303, type: !1383, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{!621, !682}
!1385 = !DILocalVariable(name: "list", arg: 1, scope: !1382, file: !105, line: 303, type: !682)
!1386 = !DILocation(line: 303, column: 61, scope: !1382)
!1387 = !DILocation(line: 305, column: 28, scope: !1382)
!1388 = !DILocation(line: 305, column: 9, scope: !1382)
!1389 = !DILocation(line: 305, column: 49, scope: !1382)
!1390 = !DILocation(line: 305, column: 55, scope: !1382)
!1391 = !DILocation(line: 305, column: 2, scope: !1382)
!1392 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !105, file: !105, line: 275, type: !1393, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!817, !682}
!1395 = !DILocalVariable(name: "list", arg: 1, scope: !1392, file: !105, line: 275, type: !682)
!1396 = !DILocation(line: 275, column: 53, scope: !1392)
!1397 = !DILocation(line: 277, column: 9, scope: !1392)
!1398 = !DILocation(line: 277, column: 15, scope: !1392)
!1399 = !DILocation(line: 277, column: 23, scope: !1392)
!1400 = !DILocation(line: 277, column: 20, scope: !1392)
!1401 = !DILocation(line: 277, column: 2, scope: !1392)
!1402 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !105, file: !105, line: 350, type: !1403, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!621, !682, !621}
!1405 = !DILocalVariable(name: "list", arg: 1, scope: !1402, file: !105, line: 350, type: !682)
!1406 = !DILocation(line: 350, column: 61, scope: !1402)
!1407 = !DILocalVariable(name: "node", arg: 2, scope: !1402, file: !105, line: 351, type: !621)
!1408 = !DILocation(line: 351, column: 26, scope: !1402)
!1409 = !DILocation(line: 353, column: 10, scope: !1402)
!1410 = !DILocation(line: 353, column: 15, scope: !1402)
!1411 = !DILocation(line: 353, column: 9, scope: !1402)
!1412 = !DILocation(line: 353, column: 61, scope: !1402)
!1413 = !DILocation(line: 353, column: 67, scope: !1402)
!1414 = !DILocation(line: 353, column: 32, scope: !1402)
!1415 = !DILocation(line: 353, column: 2, scope: !1402)
!1416 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !105, file: !105, line: 334, type: !1403, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1417 = !DILocalVariable(name: "list", arg: 1, scope: !1416, file: !105, line: 334, type: !682)
!1418 = !DILocation(line: 334, column: 70, scope: !1416)
!1419 = !DILocalVariable(name: "node", arg: 2, scope: !1416, file: !105, line: 335, type: !621)
!1420 = !DILocation(line: 335, column: 21, scope: !1416)
!1421 = !DILocation(line: 337, column: 10, scope: !1416)
!1422 = !DILocation(line: 337, column: 18, scope: !1416)
!1423 = !DILocation(line: 337, column: 24, scope: !1416)
!1424 = !DILocation(line: 337, column: 15, scope: !1416)
!1425 = !DILocation(line: 337, column: 9, scope: !1416)
!1426 = !DILocation(line: 337, column: 45, scope: !1416)
!1427 = !DILocation(line: 337, column: 51, scope: !1416)
!1428 = !DILocation(line: 337, column: 2, scope: !1416)
!1429 = distinct !DISubprogram(name: "sys_dlist_remove", scope: !105, file: !105, line: 505, type: !1430, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !621}
!1432 = !DILocalVariable(name: "node", arg: 1, scope: !1429, file: !105, line: 505, type: !621)
!1433 = !DILocation(line: 505, column: 50, scope: !1429)
!1434 = !DILocalVariable(name: "prev", scope: !1429, file: !105, line: 507, type: !640)
!1435 = !DILocation(line: 507, column: 21, scope: !1429)
!1436 = !DILocation(line: 507, column: 28, scope: !1429)
!1437 = !DILocation(line: 507, column: 34, scope: !1429)
!1438 = !DILocalVariable(name: "next", scope: !1429, file: !105, line: 508, type: !640)
!1439 = !DILocation(line: 508, column: 21, scope: !1429)
!1440 = !DILocation(line: 508, column: 28, scope: !1429)
!1441 = !DILocation(line: 508, column: 34, scope: !1429)
!1442 = !DILocation(line: 510, column: 15, scope: !1429)
!1443 = !DILocation(line: 510, column: 2, scope: !1429)
!1444 = !DILocation(line: 510, column: 8, scope: !1429)
!1445 = !DILocation(line: 510, column: 13, scope: !1429)
!1446 = !DILocation(line: 511, column: 15, scope: !1429)
!1447 = !DILocation(line: 511, column: 2, scope: !1429)
!1448 = !DILocation(line: 511, column: 8, scope: !1429)
!1449 = !DILocation(line: 511, column: 13, scope: !1429)
!1450 = !DILocation(line: 512, column: 17, scope: !1429)
!1451 = !DILocation(line: 512, column: 2, scope: !1429)
!1452 = !DILocation(line: 513, column: 1, scope: !1429)
!1453 = distinct !DISubprogram(name: "sys_dnode_init", scope: !105, file: !105, line: 220, type: !1430, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1454 = !DILocalVariable(name: "node", arg: 1, scope: !1453, file: !105, line: 220, type: !621)
!1455 = !DILocation(line: 220, column: 48, scope: !1453)
!1456 = !DILocation(line: 222, column: 2, scope: !1453)
!1457 = !DILocation(line: 222, column: 8, scope: !1453)
!1458 = !DILocation(line: 222, column: 13, scope: !1453)
!1459 = !DILocation(line: 223, column: 2, scope: !1453)
!1460 = !DILocation(line: 223, column: 8, scope: !1453)
!1461 = !DILocation(line: 223, column: 13, scope: !1453)
!1462 = !DILocation(line: 224, column: 1, scope: !1453)
!1463 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !1464, file: !1464, line: 35, type: !1465, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !140)
!1464 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!817, !849}
!1467 = !DILocalVariable(name: "to", arg: 1, scope: !1463, file: !1464, line: 35, type: !849)
!1468 = !DILocation(line: 35, column: 66, scope: !1463)
!1469 = !DILocation(line: 37, column: 31, scope: !1463)
!1470 = !DILocation(line: 37, column: 35, scope: !1463)
!1471 = !DILocation(line: 37, column: 10, scope: !1463)
!1472 = !DILocation(line: 37, column: 9, scope: !1463)
!1473 = !DILocation(line: 37, column: 2, scope: !1463)
