; ModuleID = '../bc_files/timer.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/timer.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
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
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !243 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !248, metadata !DIExpression()), !dbg !249
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !251
  %5 = load ptr, ptr %3, align 4, !dbg !252
  %6 = load ptr, ptr %4, align 4, !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !255 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !258, metadata !DIExpression()), !dbg !259
  %3 = load ptr, ptr %2, align 4, !dbg !260
  ret void, !dbg !261
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !262 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load i8, ptr %2, align 1, !dbg !267
  ret ptr null, !dbg !268
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !269 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !272, metadata !DIExpression()), !dbg !273
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !274, metadata !DIExpression()), !dbg !275
  %5 = load i8, ptr %3, align 1, !dbg !276
  %6 = load i32, ptr %4, align 4, !dbg !277
  ret ptr null, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !284, metadata !DIExpression()), !dbg !285
  %3 = load ptr, ptr %2, align 4, !dbg !286
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !287
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !288
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !289
  ret i64 %6, !dbg !290
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !291 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !293
  %3 = load ptr, ptr %2, align 4, !dbg !294
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !295
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !296
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !297
  ret i64 %6, !dbg !298
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !299 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  %3 = load ptr, ptr %2, align 4, !dbg !313
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !314
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !315
  ret i64 %5, !dbg !316
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !317 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !321
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !323
  %5 = load ptr, ptr %4, align 4, !dbg !324
  %6 = load ptr, ptr %3, align 4, !dbg !325
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !326
  store ptr %5, ptr %7, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !329 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load ptr, ptr %2, align 4, !dbg !334
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !335
  %5 = load ptr, ptr %4, align 4, !dbg !335
  ret ptr %5, !dbg !336
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  %3 = load ptr, ptr %2, align 4, !dbg !360
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !361
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !362
  %6 = zext i1 %5 to i32, !dbg !363
  ret i32 %6, !dbg !364
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !365 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !375
  %3 = load ptr, ptr %2, align 4, !dbg !376
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !377
  %5 = load i32, ptr %4, align 4, !dbg !377
  ret i32 %5, !dbg !378
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !379 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !398
  %5 = load i32, ptr %4, align 4, !dbg !398
  %6 = load ptr, ptr %2, align 4, !dbg !399
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !400
  %8 = load i32, ptr %7, align 4, !dbg !400
  %9 = sub i32 %5, %8, !dbg !401
  ret i32 %9, !dbg !402
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !403 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !404, metadata !DIExpression()), !dbg !405
  %3 = load ptr, ptr %2, align 4, !dbg !406
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !407
  %5 = load i32, ptr %4, align 4, !dbg !407
  ret i32 %5, !dbg !408
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_timer_expiration_handler(ptr noundef %0) #0 !dbg !409 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca ptr, align 4
  %18 = alloca %struct.z_spinlock_key, align 4
  %19 = alloca ptr, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  %21 = alloca ptr, align 4
  %22 = alloca %struct.z_spinlock_key, align 4
  %23 = alloca ptr, align 4
  %24 = alloca %struct.z_spinlock_key, align 4
  %25 = alloca ptr, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca ptr, align 4
  %29 = alloca ptr, align 4
  %30 = alloca %struct.z_spinlock_key, align 4
  %31 = alloca %struct.k_timeout_t, align 8
  %32 = alloca %struct.k_timeout_t, align 8
  %33 = alloca %struct.k_timeout_t, align 8
  %34 = alloca %struct.k_timeout_t, align 8
  %35 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata ptr %27, metadata !412, metadata !DIExpression()), !dbg !413
  %36 = load ptr, ptr %26, align 4, !dbg !414
  %37 = getelementptr inbounds i8, ptr %36, i32 0, !dbg !416
  store ptr %37, ptr %28, align 4, !dbg !417
  %38 = load ptr, ptr %28, align 4, !dbg !418
  store ptr %38, ptr %27, align 4, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %29, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata ptr %30, metadata !421, metadata !DIExpression()), !dbg !426
  store ptr @lock, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !427, metadata !DIExpression()), !dbg !432
  %39 = load ptr, ptr %23, align 4, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %22, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata ptr %11, metadata !437, metadata !DIExpression()), !dbg !442
  %40 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !444, !srcloc !445
  store i32 %40, ptr %11, align 4, !dbg !444
  %41 = load i32, ptr %11, align 4, !dbg !446
  store i32 %41, ptr %22, align 4, !dbg !447
  %42 = load ptr, ptr %23, align 4, !dbg !448
  store ptr %42, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !449, metadata !DIExpression()), !dbg !453
  %43 = load ptr, ptr %9, align 4, !dbg !455
  %44 = load ptr, ptr %23, align 4, !dbg !456
  store ptr %44, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !457, metadata !DIExpression()), !dbg !459
  %45 = load ptr, ptr %7, align 4, !dbg !461
  %46 = load i32, ptr %22, align 4, !dbg !462
  %47 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !463
  store i32 %46, ptr %47, align 4, !dbg !463
  %48 = load ptr, ptr %26, align 4, !dbg !464
  %49 = getelementptr inbounds %struct._timeout, ptr %48, i32 0, i32 0, !dbg !466
  %50 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %49), !dbg !467
  br i1 %50, label %51, label %60, !dbg !468

51:                                               ; preds = %1
  %52 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !469
  %53 = load [1 x i32], ptr %52, align 4, !dbg !469
  store [1 x i32] %53, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !471, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata ptr %14, metadata !477, metadata !DIExpression()), !dbg !478
  %54 = load ptr, ptr %15, align 4, !dbg !479
  %55 = load i32, ptr %14, align 4, !dbg !480
  store i32 %55, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !481, metadata !DIExpression()), !dbg !485
  %56 = load i32, ptr %5, align 4, !dbg !487
  %57 = icmp ne i32 %56, 0, !dbg !489
  br i1 %57, label %58, label %59, !dbg !490

58:                                               ; preds = %51
  br label %arch_irq_unlock.exit, !dbg !491

59:                                               ; preds = %51
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !493, !srcloc !494
  br label %arch_irq_unlock.exit, !dbg !495

arch_irq_unlock.exit:                             ; preds = %58, %59
  br label %172, !dbg !496

60:                                               ; preds = %1
  %61 = load ptr, ptr %27, align 4, !dbg !497
  %62 = getelementptr inbounds %struct.k_timer, ptr %61, i32 0, i32 4, !dbg !499
  %63 = getelementptr inbounds %struct.k_timeout_t, ptr %62, i32 0, i32 0, !dbg !500
  %64 = load i64, ptr %63, align 8, !dbg !500
  %65 = getelementptr inbounds %struct.k_timeout_t, ptr %31, i32 0, i32 0, !dbg !501
  store i64 0, ptr %65, align 8, !dbg !501
  %66 = icmp eq i64 %64, 0, !dbg !502
  br i1 %66, label %110, label %67, !dbg !503

67:                                               ; preds = %60
  %68 = load ptr, ptr %27, align 4, !dbg !504
  %69 = getelementptr inbounds %struct.k_timer, ptr %68, i32 0, i32 4, !dbg !505
  %70 = getelementptr inbounds %struct.k_timeout_t, ptr %69, i32 0, i32 0, !dbg !506
  %71 = load i64, ptr %70, align 8, !dbg !506
  %72 = getelementptr inbounds %struct.k_timeout_t, ptr %32, i32 0, i32 0, !dbg !507
  store i64 -1, ptr %72, align 8, !dbg !507
  %73 = icmp eq i64 %71, -1, !dbg !508
  br i1 %73, label %110, label %74, !dbg !509

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata ptr %33, metadata !510, metadata !DIExpression()), !dbg !512
  %75 = load ptr, ptr %27, align 4, !dbg !513
  %76 = getelementptr inbounds %struct.k_timer, ptr %75, i32 0, i32 4, !dbg !514
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %33, ptr align 8 %76, i32 8, i1 false), !dbg !514
  %77 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !515
  %78 = load i64, ptr %77, align 8, !dbg !515
  %79 = sub nsw i64 %78, 1, !dbg !516
  %80 = icmp sgt i64 %79, 0, !dbg !517
  br i1 %80, label %81, label %85, !dbg !518

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !519
  %83 = load i64, ptr %82, align 8, !dbg !519
  %84 = sub nsw i64 %83, 1, !dbg !520
  br label %86, !dbg !518

85:                                               ; preds = %74
  br label %86, !dbg !518

86:                                               ; preds = %85, %81
  %87 = phi i64 [ %84, %81 ], [ 0, %85 ], !dbg !518
  %88 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !521
  store i64 %87, ptr %88, align 8, !dbg !522
  %89 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !523
  %90 = call i64 @k_uptime_ticks(), !dbg !524
  %91 = add nsw i64 %90, 1, !dbg !525
  %92 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !526
  %93 = load i64, ptr %92, align 8, !dbg !526
  %94 = add nsw i64 %91, %93, !dbg !527
  %95 = icmp sgt i64 %94, 0, !dbg !528
  br i1 %95, label %96, label %102, !dbg !529

96:                                               ; preds = %86
  %97 = call i64 @k_uptime_ticks(), !dbg !530
  %98 = add nsw i64 %97, 1, !dbg !531
  %99 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !532
  %100 = load i64, ptr %99, align 8, !dbg !532
  %101 = add nsw i64 %98, %100, !dbg !533
  br label %103, !dbg !529

102:                                              ; preds = %86
  br label %103, !dbg !529

103:                                              ; preds = %102, %96
  %104 = phi i64 [ %101, %96 ], [ 0, %102 ], !dbg !529
  %105 = sub nsw i64 -2, %104, !dbg !534
  store i64 %105, ptr %89, align 8, !dbg !523
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %33, ptr align 8 %34, i32 8, i1 false), !dbg !535
  %106 = load ptr, ptr %27, align 4, !dbg !536
  %107 = getelementptr inbounds %struct.k_timer, ptr %106, i32 0, i32 0, !dbg !537
  %108 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !538
  %109 = load [1 x i64], ptr %108, align 8, !dbg !538
  call void @z_add_timeout(ptr noundef %107, ptr noundef @z_timer_expiration_handler, [1 x i64] %109), !dbg !538
  br label %110, !dbg !539

110:                                              ; preds = %103, %67, %60
  %111 = load ptr, ptr %27, align 4, !dbg !540
  %112 = getelementptr inbounds %struct.k_timer, ptr %111, i32 0, i32 5, !dbg !541
  %113 = load i32, ptr %112, align 8, !dbg !542
  %114 = add i32 %113, 1, !dbg !542
  store i32 %114, ptr %112, align 8, !dbg !542
  %115 = load ptr, ptr %27, align 4, !dbg !543
  %116 = getelementptr inbounds %struct.k_timer, ptr %115, i32 0, i32 2, !dbg !545
  %117 = load ptr, ptr %116, align 8, !dbg !545
  %118 = icmp ne ptr %117, null, !dbg !546
  br i1 %118, label %119, label %141, !dbg !547

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !548
  %121 = load [1 x i32], ptr %120, align 4, !dbg !548
  store [1 x i32] %121, ptr %16, align 4
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !471, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata ptr %16, metadata !477, metadata !DIExpression()), !dbg !552
  %122 = load ptr, ptr %17, align 4, !dbg !553
  %123 = load i32, ptr %16, align 4, !dbg !554
  store i32 %123, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !555
  %124 = load i32, ptr %4, align 4, !dbg !557
  %125 = icmp ne i32 %124, 0, !dbg !558
  br i1 %125, label %126, label %127, !dbg !559

126:                                              ; preds = %119
  br label %arch_irq_unlock.exit1, !dbg !560

127:                                              ; preds = %119
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !561, !srcloc !494
  br label %arch_irq_unlock.exit1, !dbg !562

arch_irq_unlock.exit1:                            ; preds = %126, %127
  %128 = load ptr, ptr %27, align 4, !dbg !563
  %129 = getelementptr inbounds %struct.k_timer, ptr %128, i32 0, i32 2, !dbg !564
  %130 = load ptr, ptr %129, align 8, !dbg !564
  %131 = load ptr, ptr %27, align 4, !dbg !565
  call void %130(ptr noundef %131), !dbg !563
  store ptr @lock, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !427, metadata !DIExpression()), !dbg !566
  %132 = load ptr, ptr %25, align 4, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %24, metadata !435, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata ptr %10, metadata !437, metadata !DIExpression()), !dbg !570
  %133 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !572, !srcloc !445
  store i32 %133, ptr %10, align 4, !dbg !572
  %134 = load i32, ptr %10, align 4, !dbg !573
  store i32 %134, ptr %24, align 4, !dbg !574
  %135 = load ptr, ptr %25, align 4, !dbg !575
  store ptr %135, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !449, metadata !DIExpression()), !dbg !576
  %136 = load ptr, ptr %8, align 4, !dbg !578
  %137 = load ptr, ptr %25, align 4, !dbg !579
  store ptr %137, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !457, metadata !DIExpression()), !dbg !580
  %138 = load ptr, ptr %6, align 4, !dbg !582
  %139 = load i32, ptr %24, align 4, !dbg !583
  %140 = getelementptr inbounds %struct.z_spinlock_key, ptr %35, i32 0, i32 0, !dbg !584
  store i32 %139, ptr %140, align 4, !dbg !584
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %30, ptr align 4 %35, i32 4, i1 false), !dbg !584
  br label %141, !dbg !585

141:                                              ; preds = %arch_irq_unlock.exit1, %110
  %142 = load ptr, ptr %27, align 4, !dbg !586
  %143 = getelementptr inbounds %struct.k_timer, ptr %142, i32 0, i32 1, !dbg !587
  %144 = call ptr @z_waitq_head(ptr noundef %143), !dbg !588
  store ptr %144, ptr %29, align 4, !dbg !589
  %145 = load ptr, ptr %29, align 4, !dbg !590
  %146 = icmp eq ptr %145, null, !dbg !592
  br i1 %146, label %147, label %156, !dbg !593

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !594
  %149 = load [1 x i32], ptr %148, align 4, !dbg !594
  store [1 x i32] %149, ptr %18, align 4
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !471, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.declare(metadata ptr %18, metadata !477, metadata !DIExpression()), !dbg !598
  %150 = load ptr, ptr %19, align 4, !dbg !599
  %151 = load i32, ptr %18, align 4, !dbg !600
  store i32 %151, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !481, metadata !DIExpression()), !dbg !601
  %152 = load i32, ptr %3, align 4, !dbg !603
  %153 = icmp ne i32 %152, 0, !dbg !604
  br i1 %153, label %154, label %155, !dbg !605

154:                                              ; preds = %147
  br label %arch_irq_unlock.exit2, !dbg !606

155:                                              ; preds = %147
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !607, !srcloc !494
  br label %arch_irq_unlock.exit2, !dbg !608

arch_irq_unlock.exit2:                            ; preds = %154, %155
  br label %172, !dbg !609

156:                                              ; preds = %141
  %157 = load ptr, ptr %29, align 4, !dbg !610
  call void @z_unpend_thread_no_timeout(ptr noundef %157), !dbg !611
  %158 = load ptr, ptr %29, align 4, !dbg !612
  store ptr %158, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !613, metadata !DIExpression()), !dbg !618
  store i32 0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !620, metadata !DIExpression()), !dbg !621
  %159 = load i32, ptr %13, align 4, !dbg !622
  %160 = load ptr, ptr %12, align 4, !dbg !623
  %161 = getelementptr inbounds %struct.k_thread, ptr %160, i32 0, i32 6, !dbg !624
  %162 = getelementptr inbounds %struct._thread_arch, ptr %161, i32 0, i32 1, !dbg !625
  store i32 %159, ptr %162, align 4, !dbg !626
  %163 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !627
  %164 = load [1 x i32], ptr %163, align 4, !dbg !627
  store [1 x i32] %164, ptr %20, align 4
  store ptr @lock, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !471, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata ptr %20, metadata !477, metadata !DIExpression()), !dbg !630
  %165 = load ptr, ptr %21, align 4, !dbg !631
  %166 = load i32, ptr %20, align 4, !dbg !632
  store i32 %166, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !633
  %167 = load i32, ptr %2, align 4, !dbg !635
  %168 = icmp ne i32 %167, 0, !dbg !636
  br i1 %168, label %169, label %170, !dbg !637

169:                                              ; preds = %156
  br label %arch_irq_unlock.exit3, !dbg !638

170:                                              ; preds = %156
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !639, !srcloc !494
  br label %arch_irq_unlock.exit3, !dbg !640

arch_irq_unlock.exit3:                            ; preds = %169, %170
  %171 = load ptr, ptr %29, align 4, !dbg !641
  call void @z_ready_thread(ptr noundef %171), !dbg !642
  br label %172, !dbg !643

172:                                              ; preds = %arch_irq_unlock.exit3, %arch_irq_unlock.exit2, %arch_irq_unlock.exit
  ret void, !dbg !643
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !644 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !650, metadata !DIExpression()), !dbg !651
  %3 = load ptr, ptr %2, align 4, !dbg !652
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !653
  %5 = load ptr, ptr %4, align 4, !dbg !653
  %6 = icmp ne ptr %5, null, !dbg !654
  ret i1 %6, !dbg !655
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal i64 @k_uptime_ticks() #0 !dbg !656 {
  br label %1, !dbg !660

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #4, !dbg !661, !srcloc !663
  br label %2, !dbg !664

2:                                                ; preds = %1
  %3 = call i64 @z_impl_k_uptime_ticks(), !dbg !665
  ret i64 %3, !dbg !666
}

declare void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #3

; Function Attrs: noinline nounwind optnone
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !667 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !671, metadata !DIExpression()), !dbg !672
  %3 = load ptr, ptr %2, align 4, !dbg !673
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !674
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4), !dbg !675
  ret ptr %5, !dbg !676
}

declare void @z_unpend_thread_no_timeout(ptr noundef) #3

declare void @z_ready_thread(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define hidden void @k_timer_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !677 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !682, metadata !DIExpression()), !dbg !683
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !684, metadata !DIExpression()), !dbg !685
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !686, metadata !DIExpression()), !dbg !687
  %7 = load ptr, ptr %5, align 4, !dbg !688
  %8 = load ptr, ptr %4, align 4, !dbg !689
  %9 = getelementptr inbounds %struct.k_timer, ptr %8, i32 0, i32 2, !dbg !690
  store ptr %7, ptr %9, align 8, !dbg !691
  %10 = load ptr, ptr %6, align 4, !dbg !692
  %11 = load ptr, ptr %4, align 4, !dbg !693
  %12 = getelementptr inbounds %struct.k_timer, ptr %11, i32 0, i32 3, !dbg !694
  store ptr %10, ptr %12, align 4, !dbg !695
  %13 = load ptr, ptr %4, align 4, !dbg !696
  %14 = getelementptr inbounds %struct.k_timer, ptr %13, i32 0, i32 5, !dbg !697
  store i32 0, ptr %14, align 8, !dbg !698
  %15 = load ptr, ptr %4, align 4, !dbg !699
  %16 = getelementptr inbounds %struct.k_timer, ptr %15, i32 0, i32 1, !dbg !702
  call void @z_waitq_init(ptr noundef %16), !dbg !703
  %17 = load ptr, ptr %4, align 4, !dbg !704
  %18 = getelementptr inbounds %struct.k_timer, ptr %17, i32 0, i32 0, !dbg !705
  call void @z_init_timeout(ptr noundef %18), !dbg !706
  br label %19, !dbg !707

19:                                               ; preds = %3
  br label %20, !dbg !708

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 4, !dbg !710
  %22 = getelementptr inbounds %struct.k_timer, ptr %21, i32 0, i32 6, !dbg !711
  store ptr null, ptr %22, align 4, !dbg !712
  %23 = load ptr, ptr %4, align 4, !dbg !713
  call void @z_object_init(ptr noundef %23), !dbg !714
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !716 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !719, metadata !DIExpression()), !dbg !720
  %3 = load ptr, ptr %2, align 4, !dbg !721
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !722
  call void @sys_dlist_init(ptr noundef %4), !dbg !723
  ret void, !dbg !724
}

; Function Attrs: noinline nounwind optnone
define internal void @z_init_timeout(ptr noundef %0) #0 !dbg !725 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !727, metadata !DIExpression()), !dbg !728
  %3 = load ptr, ptr %2, align 4, !dbg !729
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !730
  call void @sys_dnode_init(ptr noundef %4), !dbg !731
  ret void, !dbg !732
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !733 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !734, metadata !DIExpression()), !dbg !735
  %3 = load ptr, ptr %2, align 4, !dbg !736
  ret void, !dbg !737
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_timer_start(ptr noundef %0, [1 x i64] %1, [1 x i64] %2) #0 !dbg !738 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.k_timeout_t, align 8
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0
  store [1 x i64] %2, ptr %9, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !741, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.declare(metadata ptr %4, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata ptr %5, metadata !745, metadata !DIExpression()), !dbg !746
  br label %10, !dbg !747

10:                                               ; preds = %3
  br label %11, !dbg !748

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !750
  %13 = load i64, ptr %12, align 8, !dbg !750
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %7, i32 0, i32 0, !dbg !752
  store i64 -1, ptr %14, align 8, !dbg !752
  %15 = icmp eq i64 %13, -1, !dbg !753
  br i1 %15, label %16, label %17, !dbg !754

16:                                               ; preds = %11
  br label %47, !dbg !755

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !757
  %19 = load i64, ptr %18, align 8, !dbg !757
  %20 = sub nsw i64 -2, %19, !dbg !759
  %21 = icmp slt i64 %20, 0, !dbg !760
  br i1 %21, label %22, label %35, !dbg !761

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !762
  %24 = load i64, ptr %23, align 8, !dbg !762
  %25 = sub nsw i64 %24, 1, !dbg !764
  %26 = icmp sgt i64 %25, 0, !dbg !765
  br i1 %26, label %27, label %31, !dbg !766

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !767
  %29 = load i64, ptr %28, align 8, !dbg !767
  %30 = sub nsw i64 %29, 1, !dbg !768
  br label %32, !dbg !766

31:                                               ; preds = %22
  br label %32, !dbg !766

32:                                               ; preds = %31, %27
  %33 = phi i64 [ %30, %27 ], [ 0, %31 ], !dbg !766
  %34 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !769
  store i64 %33, ptr %34, align 8, !dbg !770
  br label %35, !dbg !771

35:                                               ; preds = %32, %17
  %36 = load ptr, ptr %6, align 4, !dbg !772
  %37 = getelementptr inbounds %struct.k_timer, ptr %36, i32 0, i32 0, !dbg !773
  %38 = call i32 @z_abort_timeout(ptr noundef %37), !dbg !774
  %39 = load ptr, ptr %6, align 4, !dbg !775
  %40 = getelementptr inbounds %struct.k_timer, ptr %39, i32 0, i32 4, !dbg !776
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %40, ptr align 8 %5, i32 8, i1 false), !dbg !777
  %41 = load ptr, ptr %6, align 4, !dbg !778
  %42 = getelementptr inbounds %struct.k_timer, ptr %41, i32 0, i32 5, !dbg !779
  store i32 0, ptr %42, align 8, !dbg !780
  %43 = load ptr, ptr %6, align 4, !dbg !781
  %44 = getelementptr inbounds %struct.k_timer, ptr %43, i32 0, i32 0, !dbg !782
  %45 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !783
  %46 = load [1 x i64], ptr %45, align 8, !dbg !783
  call void @z_add_timeout(ptr noundef %44, ptr noundef @z_timer_expiration_handler, [1 x i64] %46), !dbg !783
  br label %47, !dbg !784

47:                                               ; preds = %35, %16
  ret void, !dbg !784
}

declare i32 @z_abort_timeout(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_timer_stop(ptr noundef %0) #0 !dbg !785 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !786, metadata !DIExpression()), !dbg !787
  br label %5, !dbg !788

5:                                                ; preds = %1
  br label %6, !dbg !789

6:                                                ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %3, metadata !791, metadata !DIExpression()), !dbg !792
  %7 = load ptr, ptr %2, align 4, !dbg !793
  %8 = getelementptr inbounds %struct.k_timer, ptr %7, i32 0, i32 0, !dbg !794
  %9 = call i32 @z_abort_timeout(ptr noundef %8), !dbg !795
  %10 = icmp ne i32 %9, 0, !dbg !796
  %11 = zext i1 %10 to i8, !dbg !792
  store i8 %11, ptr %3, align 1, !dbg !792
  %12 = load i8, ptr %3, align 1, !dbg !797
  %13 = trunc i8 %12 to i1, !dbg !797
  br i1 %13, label %14, label %15, !dbg !799

14:                                               ; preds = %6
  br label %33, !dbg !800

15:                                               ; preds = %6
  %16 = load ptr, ptr %2, align 4, !dbg !802
  %17 = getelementptr inbounds %struct.k_timer, ptr %16, i32 0, i32 3, !dbg !804
  %18 = load ptr, ptr %17, align 4, !dbg !804
  %19 = icmp ne ptr %18, null, !dbg !805
  br i1 %19, label %20, label %25, !dbg !806

20:                                               ; preds = %15
  %21 = load ptr, ptr %2, align 4, !dbg !807
  %22 = getelementptr inbounds %struct.k_timer, ptr %21, i32 0, i32 3, !dbg !809
  %23 = load ptr, ptr %22, align 4, !dbg !809
  %24 = load ptr, ptr %2, align 4, !dbg !810
  call void %23(ptr noundef %24), !dbg !807
  br label %25, !dbg !811

25:                                               ; preds = %20, %15
  call void @llvm.dbg.declare(metadata ptr %4, metadata !812, metadata !DIExpression()), !dbg !815
  %26 = load ptr, ptr %2, align 4, !dbg !816
  %27 = getelementptr inbounds %struct.k_timer, ptr %26, i32 0, i32 1, !dbg !817
  %28 = call ptr @z_unpend1_no_timeout(ptr noundef %27), !dbg !818
  store ptr %28, ptr %4, align 4, !dbg !815
  %29 = load ptr, ptr %4, align 4, !dbg !819
  %30 = icmp ne ptr %29, null, !dbg !821
  br i1 %30, label %31, label %33, !dbg !822

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4, !dbg !823
  call void @z_ready_thread(ptr noundef %32), !dbg !825
  call void @z_reschedule_unlocked(), !dbg !826
  br label %33, !dbg !827

33:                                               ; preds = %14, %31, %25
  ret void, !dbg !828
}

declare ptr @z_unpend1_no_timeout(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal void @z_reschedule_unlocked() #0 !dbg !829 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !437, metadata !DIExpression()), !dbg !833
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !835, !srcloc !445
  store i32 %2, ptr %1, align 4, !dbg !835
  %3 = load i32, ptr %1, align 4, !dbg !836
  call void @z_reschedule_irqlock(i32 noundef %3), !dbg !837
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_timer_status_get(ptr noundef %0) #0 !dbg !839 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !842, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.declare(metadata ptr %11, metadata !844, metadata !DIExpression()), !dbg !845
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !427, metadata !DIExpression()), !dbg !846
  %13 = load ptr, ptr %9, align 4, !dbg !848
  call void @llvm.dbg.declare(metadata ptr %8, metadata !435, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.declare(metadata ptr %5, metadata !437, metadata !DIExpression()), !dbg !850
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !852, !srcloc !445
  store i32 %14, ptr %5, align 4, !dbg !852
  %15 = load i32, ptr %5, align 4, !dbg !853
  store i32 %15, ptr %8, align 4, !dbg !854
  %16 = load ptr, ptr %9, align 4, !dbg !855
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !449, metadata !DIExpression()), !dbg !856
  %17 = load ptr, ptr %4, align 4, !dbg !858
  %18 = load ptr, ptr %9, align 4, !dbg !859
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !457, metadata !DIExpression()), !dbg !860
  %19 = load ptr, ptr %3, align 4, !dbg !862
  %20 = load i32, ptr %8, align 4, !dbg !863
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !864
  store i32 %20, ptr %21, align 4, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %12, metadata !865, metadata !DIExpression()), !dbg !866
  %22 = load ptr, ptr %10, align 4, !dbg !867
  %23 = getelementptr inbounds %struct.k_timer, ptr %22, i32 0, i32 5, !dbg !868
  %24 = load i32, ptr %23, align 8, !dbg !868
  store i32 %24, ptr %12, align 4, !dbg !866
  %25 = load ptr, ptr %10, align 4, !dbg !869
  %26 = getelementptr inbounds %struct.k_timer, ptr %25, i32 0, i32 5, !dbg !870
  store i32 0, ptr %26, align 8, !dbg !871
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !872
  %28 = load [1 x i32], ptr %27, align 4, !dbg !872
  store [1 x i32] %28, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata ptr %6, metadata !477, metadata !DIExpression()), !dbg !875
  %29 = load ptr, ptr %7, align 4, !dbg !876
  %30 = load i32, ptr %6, align 4, !dbg !877
  store i32 %30, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !878
  %31 = load i32, ptr %2, align 4, !dbg !880
  %32 = icmp ne i32 %31, 0, !dbg !881
  br i1 %32, label %33, label %34, !dbg !882

33:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !883

34:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !884, !srcloc !494
  br label %arch_irq_unlock.exit, !dbg !885

arch_irq_unlock.exit:                             ; preds = %33, %34
  %35 = load i32, ptr %12, align 4, !dbg !886
  ret i32 %35, !dbg !887
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_timer_status_sync(ptr noundef %0) #0 !dbg !888 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.k_timeout_t, align 8
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !889, metadata !DIExpression()), !dbg !890
  br label %20, !dbg !891

20:                                               ; preds = %1
  br label %21, !dbg !892

21:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %16, metadata !894, metadata !DIExpression()), !dbg !895
  store ptr @lock, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !427, metadata !DIExpression()), !dbg !896
  %22 = load ptr, ptr %12, align 4, !dbg !898
  call void @llvm.dbg.declare(metadata ptr %11, metadata !435, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.declare(metadata ptr %8, metadata !437, metadata !DIExpression()), !dbg !900
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !902, !srcloc !445
  store i32 %23, ptr %8, align 4, !dbg !902
  %24 = load i32, ptr %8, align 4, !dbg !903
  store i32 %24, ptr %11, align 4, !dbg !904
  %25 = load ptr, ptr %12, align 4, !dbg !905
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !449, metadata !DIExpression()), !dbg !906
  %26 = load ptr, ptr %6, align 4, !dbg !908
  %27 = load ptr, ptr %12, align 4, !dbg !909
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !457, metadata !DIExpression()), !dbg !910
  %28 = load ptr, ptr %4, align 4, !dbg !912
  %29 = load i32, ptr %11, align 4, !dbg !913
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !914
  store i32 %29, ptr %30, align 4, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %17, metadata !915, metadata !DIExpression()), !dbg !916
  %31 = load ptr, ptr %15, align 4, !dbg !917
  %32 = getelementptr inbounds %struct.k_timer, ptr %31, i32 0, i32 5, !dbg !918
  %33 = load i32, ptr %32, align 8, !dbg !918
  store i32 %33, ptr %17, align 4, !dbg !916
  %34 = load i32, ptr %17, align 4, !dbg !919
  %35 = icmp eq i32 %34, 0, !dbg !921
  br i1 %35, label %36, label %65, !dbg !922

36:                                               ; preds = %21
  %37 = load ptr, ptr %15, align 4, !dbg !923
  %38 = getelementptr inbounds %struct.k_timer, ptr %37, i32 0, i32 0, !dbg !926
  %39 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %38), !dbg !927
  br i1 %39, label %63, label %40, !dbg !928

40:                                               ; preds = %36
  br label %41, !dbg !929

41:                                               ; preds = %40
  br label %42, !dbg !931

42:                                               ; preds = %41
  %43 = load ptr, ptr %15, align 4, !dbg !933
  %44 = getelementptr inbounds %struct.k_timer, ptr %43, i32 0, i32 1, !dbg !934
  %45 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !935
  store i64 -1, ptr %45, align 8, !dbg !935
  %46 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !936
  %47 = load [1 x i32], ptr %46, align 4, !dbg !936
  %48 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !936
  %49 = load [1 x i64], ptr %48, align 8, !dbg !936
  %50 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %47, ptr noundef %44, [1 x i64] %49), !dbg !936
  store ptr @lock, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !427, metadata !DIExpression()), !dbg !937
  %51 = load ptr, ptr %14, align 4, !dbg !939
  call void @llvm.dbg.declare(metadata ptr %13, metadata !435, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.declare(metadata ptr %7, metadata !437, metadata !DIExpression()), !dbg !941
  %52 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !943, !srcloc !445
  store i32 %52, ptr %7, align 4, !dbg !943
  %53 = load i32, ptr %7, align 4, !dbg !944
  store i32 %53, ptr %13, align 4, !dbg !945
  %54 = load ptr, ptr %14, align 4, !dbg !946
  store ptr %54, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !449, metadata !DIExpression()), !dbg !947
  %55 = load ptr, ptr %5, align 4, !dbg !949
  %56 = load ptr, ptr %14, align 4, !dbg !950
  store ptr %56, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !457, metadata !DIExpression()), !dbg !951
  %57 = load ptr, ptr %3, align 4, !dbg !953
  %58 = load i32, ptr %13, align 4, !dbg !954
  %59 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !955
  store i32 %58, ptr %59, align 4, !dbg !955
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %19, i32 4, i1 false), !dbg !955
  %60 = load ptr, ptr %15, align 4, !dbg !956
  %61 = getelementptr inbounds %struct.k_timer, ptr %60, i32 0, i32 5, !dbg !957
  %62 = load i32, ptr %61, align 8, !dbg !957
  store i32 %62, ptr %17, align 4, !dbg !958
  br label %64, !dbg !959

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %42
  br label %66, !dbg !960

65:                                               ; preds = %21
  br label %66

66:                                               ; preds = %65, %64
  %67 = load ptr, ptr %15, align 4, !dbg !961
  %68 = getelementptr inbounds %struct.k_timer, ptr %67, i32 0, i32 5, !dbg !962
  store i32 0, ptr %68, align 8, !dbg !963
  %69 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !964
  %70 = load [1 x i32], ptr %69, align 4, !dbg !964
  store [1 x i32] %70, ptr %9, align 4
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !471, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.declare(metadata ptr %9, metadata !477, metadata !DIExpression()), !dbg !967
  %71 = load ptr, ptr %10, align 4, !dbg !968
  %72 = load i32, ptr %9, align 4, !dbg !969
  store i32 %72, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !970
  %73 = load i32, ptr %2, align 4, !dbg !972
  %74 = icmp ne i32 %73, 0, !dbg !973
  br i1 %74, label %75, label %76, !dbg !974

75:                                               ; preds = %66
  br label %arch_irq_unlock.exit, !dbg !975

76:                                               ; preds = %66
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !976, !srcloc !494
  br label %arch_irq_unlock.exit, !dbg !977

arch_irq_unlock.exit:                             ; preds = %75, %76
  br label %77, !dbg !978

77:                                               ; preds = %arch_irq_unlock.exit
  br label %78, !dbg !979

78:                                               ; preds = %77
  %79 = load i32, ptr %17, align 4, !dbg !981
  ret i32 %79, !dbg !982
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !983 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !988, metadata !DIExpression()), !dbg !989
  %3 = load ptr, ptr %2, align 4, !dbg !990
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !991
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4), !dbg !992
  %6 = xor i1 %5, true, !dbg !993
  ret i1 %6, !dbg !994
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #3

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !995 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !999, metadata !DIExpression()), !dbg !1000
  %3 = load ptr, ptr %2, align 4, !dbg !1001
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1002
  %5 = icmp eq ptr %4, null, !dbg !1003
  ret i1 %5, !dbg !1004
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1005 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1008, metadata !DIExpression()), !dbg !1009
  %3 = load ptr, ptr %2, align 4, !dbg !1010
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1011
  %5 = load ptr, ptr %4, align 4, !dbg !1011
  ret ptr %5, !dbg !1012
}

declare i64 @z_impl_k_uptime_ticks() #3

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1013 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1017, metadata !DIExpression()), !dbg !1018
  %3 = load ptr, ptr %2, align 4, !dbg !1019
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3), !dbg !1020
  br i1 %4, label %5, label %6, !dbg !1020

5:                                                ; preds = %1
  br label %10, !dbg !1020

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1021
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1022
  %9 = load ptr, ptr %8, align 4, !dbg !1022
  br label %10, !dbg !1020

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1020
  ret ptr %11, !dbg !1023
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1024 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1027, metadata !DIExpression()), !dbg !1028
  %3 = load ptr, ptr %2, align 4, !dbg !1029
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1030
  %5 = load ptr, ptr %4, align 4, !dbg !1030
  %6 = load ptr, ptr %2, align 4, !dbg !1031
  %7 = icmp eq ptr %5, %6, !dbg !1032
  ret i1 %7, !dbg !1033
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1034 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1037, metadata !DIExpression()), !dbg !1038
  %3 = load ptr, ptr %2, align 4, !dbg !1039
  %4 = load ptr, ptr %2, align 4, !dbg !1040
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1041
  store ptr %3, ptr %5, align 4, !dbg !1042
  %6 = load ptr, ptr %2, align 4, !dbg !1043
  %7 = load ptr, ptr %2, align 4, !dbg !1044
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1045
  store ptr %6, ptr %8, align 4, !dbg !1046
  ret void, !dbg !1047
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !1048 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1051, metadata !DIExpression()), !dbg !1052
  %3 = load ptr, ptr %2, align 4, !dbg !1053
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1054
  store ptr null, ptr %4, align 4, !dbg !1055
  %5 = load ptr, ptr %2, align 4, !dbg !1056
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1057
  store ptr null, ptr %6, align 4, !dbg !1058
  ret void, !dbg !1059
}

declare void @z_reschedule_irqlock(i32 noundef) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !233, line: 16, type: !223, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !232, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "timer.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !146, !140, !145, !148, !149, !231}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !91, line: 1439, size: 448, elements: !92)
!91 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!92 = !{!93, !123, !129, !133, !134, !141, !144}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !90, file: !91, line: 1445, baseType: !94, size: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !95, line: 254, size: 192, elements: !96)
!95 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!96 = !{!97, !113, !119}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !94, file: !95, line: 255, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !99, line: 55, baseType: !100)
!99 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !99, line: 37, size: 64, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 38, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 38, size: 32, elements: !104)
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !103, file: !99, line: 39, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !99, line: 40, baseType: !106, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 42, baseType: !109, size: 32, offset: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 42, size: 32, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !109, file: !99, line: 43, baseType: !106, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !109, file: !99, line: 44, baseType: !106, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !94, file: !95, line: 256, baseType: !114, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !95, line: 252, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !94, file: !95, line: 259, baseType: !120, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !121, line: 59, baseType: !122)
!121 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!122 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !90, file: !91, line: 1448, baseType: !124, size: 64, offset: 192)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !95, line: 243, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 241, size: 64, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !125, file: !95, line: 242, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !99, line: 51, baseType: !100)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !90, file: !91, line: 1451, baseType: !130, size: 32, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !89}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !90, file: !91, line: 1454, baseType: !130, size: 32, offset: 288)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !90, file: !91, line: 1457, baseType: !135, size: 64, offset: 320)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !136, line: 67, baseType: !137)
!136 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 65, size: 64, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !137, file: !136, line: 66, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !136, line: 46, baseType: !120)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !90, file: !91, line: 1460, baseType: !142, size: 32, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !121, line: 64, baseType: !143)
!143 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !90, file: !91, line: 1463, baseType: !145, size: 32, offset: 416)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!148 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !151, line: 250, size: 896, elements: !152)
!151 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!152 = !{!153, !190, !203, !204, !205, !206, !226}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !150, file: !151, line: 252, baseType: !154, size: 384)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !151, line: 58, size: 384, elements: !155)
!155 = !{!156, !169, !171, !173, !174, !187, !188, !189}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 61, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 61, size: 64, elements: !158)
!158 = !{!159, !160}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !157, file: !151, line: 62, baseType: !98, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !157, file: !151, line: 63, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !162, line: 58, size: 64, elements: !163)
!162 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !161, file: !162, line: 60, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !167)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 32)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !154, file: !151, line: 69, baseType: !170, size: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !154, file: !151, line: 72, baseType: !172, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !121, line: 62, baseType: !7)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !154, file: !151, line: 75, baseType: !172, size: 8, offset: 104)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !151, line: 91, baseType: !175, size: 16, offset: 112)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !151, line: 91, size: 16, elements: !176)
!176 = !{!177, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !151, line: 92, baseType: !178, size: 16)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !151, line: 92, size: 16, elements: !179)
!179 = !{!180, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !178, file: !151, line: 97, baseType: !181, size: 8)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !121, line: 56, baseType: !182)
!182 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !178, file: !151, line: 98, baseType: !172, size: 8, offset: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !175, file: !151, line: 101, baseType: !185, size: 16)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !121, line: 63, baseType: !186)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !154, file: !151, line: 108, baseType: !142, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !154, file: !151, line: 132, baseType: !145, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !154, file: !151, line: 136, baseType: !94, size: 192, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !150, file: !151, line: 255, baseType: !191, size: 288, offset: 384)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !192, line: 25, size: 288, elements: !193)
!192 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !191, file: !192, line: 26, baseType: !142, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !191, file: !192, line: 27, baseType: !142, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !191, file: !192, line: 28, baseType: !142, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !191, file: !192, line: 29, baseType: !142, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !191, file: !192, line: 30, baseType: !142, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !191, file: !192, line: 31, baseType: !142, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !191, file: !192, line: 32, baseType: !142, size: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !191, file: !192, line: 33, baseType: !142, size: 32, offset: 224)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !191, file: !192, line: 34, baseType: !142, size: 32, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !150, file: !151, line: 258, baseType: !145, size: 32, offset: 672)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !150, file: !151, line: 261, baseType: !124, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !150, file: !151, line: 302, baseType: !148, size: 32, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !150, file: !151, line: 333, baseType: !207, size: 32, offset: 800)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !91, line: 5291, size: 160, elements: !209)
!209 = !{!210, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !208, file: !91, line: 5292, baseType: !211, size: 96)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !212, line: 56, size: 96, elements: !213)
!212 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!213 = !{!214, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !211, file: !212, line: 57, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !212, line: 57, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !211, file: !212, line: 58, baseType: !145, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !211, file: !212, line: 59, baseType: !219, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 46, baseType: !143)
!220 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !208, file: !91, line: 5293, baseType: !124, size: 64, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !208, file: !91, line: 5294, baseType: !223, offset: 160)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !224, line: 45, elements: !225)
!224 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !{}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !150, file: !151, line: 355, baseType: !227, size: 64, offset: 832)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !192, line: 60, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !227, file: !192, line: 63, baseType: !142, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !227, file: !192, line: 66, baseType: !142, size: 32, offset: 32)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!232 = !{!0}
!233 = !DIFile(filename: "kernel/timer.c", directory: "/home/sri/zephyrproject/zephyr")
!234 = !{i32 7, !"Dwarf Version", i32 4}
!235 = !{i32 2, !"Debug Info Version", i32 3}
!236 = !{i32 1, !"wchar_size", i32 4}
!237 = !{i32 1, !"static_rwdata", i32 1}
!238 = !{i32 1, !"enumsize_buildattr", i32 1}
!239 = !{i32 1, !"armlib_unavailable", i32 0}
!240 = !{i32 8, !"PIC Level", i32 2}
!241 = !{i32 7, !"PIE Level", i32 2}
!242 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!243 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !244, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !246, !149}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!248 = !DILocalVariable(name: "object", arg: 1, scope: !243, file: !6, line: 223, type: !246)
!249 = !DILocation(line: 223, column: 61, scope: !243)
!250 = !DILocalVariable(name: "thread", arg: 2, scope: !243, file: !6, line: 224, type: !149)
!251 = !DILocation(line: 224, column: 24, scope: !243)
!252 = !DILocation(line: 226, column: 9, scope: !243)
!253 = !DILocation(line: 227, column: 9, scope: !243)
!254 = !DILocation(line: 228, column: 1, scope: !243)
!255 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !256, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !246}
!258 = !DILocalVariable(name: "object", arg: 1, scope: !255, file: !6, line: 243, type: !246)
!259 = !DILocation(line: 243, column: 56, scope: !255)
!260 = !DILocation(line: 245, column: 9, scope: !255)
!261 = !DILocation(line: 246, column: 1, scope: !255)
!262 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !263, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!263 = !DISubroutineType(types: !264)
!264 = !{!145, !5}
!265 = !DILocalVariable(name: "otype", arg: 1, scope: !262, file: !6, line: 359, type: !5)
!266 = !DILocation(line: 359, column: 58, scope: !262)
!267 = !DILocation(line: 361, column: 9, scope: !262)
!268 = !DILocation(line: 363, column: 2, scope: !262)
!269 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !270, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!270 = !DISubroutineType(types: !271)
!271 = !{!145, !5, !219}
!272 = !DILocalVariable(name: "otype", arg: 1, scope: !269, file: !6, line: 366, type: !5)
!273 = !DILocation(line: 366, column: 63, scope: !269)
!274 = !DILocalVariable(name: "size", arg: 2, scope: !269, file: !6, line: 367, type: !219)
!275 = !DILocation(line: 367, column: 13, scope: !269)
!276 = !DILocation(line: 369, column: 9, scope: !269)
!277 = !DILocation(line: 370, column: 9, scope: !269)
!278 = !DILocation(line: 372, column: 2, scope: !269)
!279 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !91, file: !91, line: 656, type: !280, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!280 = !DISubroutineType(types: !281)
!281 = !{!140, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!284 = !DILocalVariable(name: "t", arg: 1, scope: !279, file: !91, line: 657, type: !282)
!285 = !DILocation(line: 657, column: 30, scope: !279)
!286 = !DILocation(line: 659, column: 28, scope: !279)
!287 = !DILocation(line: 659, column: 31, scope: !279)
!288 = !DILocation(line: 659, column: 36, scope: !279)
!289 = !DILocation(line: 659, column: 9, scope: !279)
!290 = !DILocation(line: 659, column: 2, scope: !279)
!291 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !91, file: !91, line: 671, type: !280, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!292 = !DILocalVariable(name: "t", arg: 1, scope: !291, file: !91, line: 672, type: !282)
!293 = !DILocation(line: 672, column: 30, scope: !291)
!294 = !DILocation(line: 674, column: 30, scope: !291)
!295 = !DILocation(line: 674, column: 33, scope: !291)
!296 = !DILocation(line: 674, column: 38, scope: !291)
!297 = !DILocation(line: 674, column: 9, scope: !291)
!298 = !DILocation(line: 674, column: 2, scope: !291)
!299 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !91, file: !91, line: 1634, type: !300, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!300 = !DISubroutineType(types: !301)
!301 = !{!140, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !299, file: !91, line: 1635, type: !302)
!305 = !DILocation(line: 1635, column: 34, scope: !299)
!306 = !DILocation(line: 1637, column: 28, scope: !299)
!307 = !DILocation(line: 1637, column: 35, scope: !299)
!308 = !DILocation(line: 1637, column: 9, scope: !299)
!309 = !DILocation(line: 1637, column: 2, scope: !299)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !91, file: !91, line: 1649, type: !300, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!311 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !91, line: 1650, type: !302)
!312 = !DILocation(line: 1650, column: 34, scope: !310)
!313 = !DILocation(line: 1652, column: 30, scope: !310)
!314 = !DILocation(line: 1652, column: 37, scope: !310)
!315 = !DILocation(line: 1652, column: 9, scope: !310)
!316 = !DILocation(line: 1652, column: 2, scope: !310)
!317 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !91, file: !91, line: 1689, type: !318, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !89, !145}
!320 = !DILocalVariable(name: "timer", arg: 1, scope: !317, file: !91, line: 1689, type: !89)
!321 = !DILocation(line: 1689, column: 65, scope: !317)
!322 = !DILocalVariable(name: "user_data", arg: 2, scope: !317, file: !91, line: 1690, type: !145)
!323 = !DILocation(line: 1690, column: 19, scope: !317)
!324 = !DILocation(line: 1692, column: 21, scope: !317)
!325 = !DILocation(line: 1692, column: 2, scope: !317)
!326 = !DILocation(line: 1692, column: 9, scope: !317)
!327 = !DILocation(line: 1692, column: 19, scope: !317)
!328 = !DILocation(line: 1693, column: 1, scope: !317)
!329 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !91, file: !91, line: 1704, type: !330, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!330 = !DISubroutineType(types: !331)
!331 = !{!145, !302}
!332 = !DILocalVariable(name: "timer", arg: 1, scope: !329, file: !91, line: 1704, type: !302)
!333 = !DILocation(line: 1704, column: 72, scope: !329)
!334 = !DILocation(line: 1706, column: 9, scope: !329)
!335 = !DILocation(line: 1706, column: 16, scope: !329)
!336 = !DILocation(line: 1706, column: 2, scope: !329)
!337 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !91, file: !91, line: 2071, type: !338, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!338 = !DISubroutineType(types: !339)
!339 = !{!148, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !91, line: 1830, size: 128, elements: !342)
!342 = !{!343, !356, !357}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !341, file: !91, line: 1831, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !345, line: 60, baseType: !346)
!345 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !345, line: 53, size: 64, elements: !347)
!347 = !{!348, !355}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !346, file: !345, line: 54, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !345, line: 50, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !345, line: 44, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !351, file: !345, line: 45, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !345, line: 40, baseType: !142)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !346, file: !345, line: 55, baseType: !349, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !91, line: 1832, baseType: !223, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !341, file: !91, line: 1833, baseType: !124, size: 64, offset: 64)
!358 = !DILocalVariable(name: "queue", arg: 1, scope: !337, file: !91, line: 2071, type: !340)
!359 = !DILocation(line: 2071, column: 59, scope: !337)
!360 = !DILocation(line: 2073, column: 35, scope: !337)
!361 = !DILocation(line: 2073, column: 42, scope: !337)
!362 = !DILocation(line: 2073, column: 14, scope: !337)
!363 = !DILocation(line: 2073, column: 9, scope: !337)
!364 = !DILocation(line: 2073, column: 2, scope: !337)
!365 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !91, file: !91, line: 3209, type: !366, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!366 = !DISubroutineType(types: !367)
!367 = !{!143, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !91, line: 3092, size: 128, elements: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !369, file: !91, line: 3093, baseType: !124, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !369, file: !91, line: 3094, baseType: !143, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !369, file: !91, line: 3095, baseType: !143, size: 32, offset: 96)
!374 = !DILocalVariable(name: "sem", arg: 1, scope: !365, file: !91, line: 3209, type: !368)
!375 = !DILocation(line: 3209, column: 65, scope: !365)
!376 = !DILocation(line: 3211, column: 9, scope: !365)
!377 = !DILocation(line: 3211, column: 14, scope: !365)
!378 = !DILocation(line: 3211, column: 2, scope: !365)
!379 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !91, file: !91, line: 4649, type: !380, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!380 = !DISubroutineType(types: !381)
!381 = !{!142, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !91, line: 4390, size: 320, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !383, file: !91, line: 4392, baseType: !124, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !91, line: 4394, baseType: !223, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !383, file: !91, line: 4396, baseType: !219, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !383, file: !91, line: 4398, baseType: !142, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !383, file: !91, line: 4400, baseType: !146, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !383, file: !91, line: 4402, baseType: !146, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !383, file: !91, line: 4404, baseType: !146, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !383, file: !91, line: 4406, baseType: !146, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !383, file: !91, line: 4408, baseType: !142, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !91, line: 4413, baseType: !172, size: 8, offset: 288)
!395 = !DILocalVariable(name: "msgq", arg: 1, scope: !379, file: !91, line: 4649, type: !382)
!396 = !DILocation(line: 4649, column: 66, scope: !379)
!397 = !DILocation(line: 4651, column: 9, scope: !379)
!398 = !DILocation(line: 4651, column: 15, scope: !379)
!399 = !DILocation(line: 4651, column: 26, scope: !379)
!400 = !DILocation(line: 4651, column: 32, scope: !379)
!401 = !DILocation(line: 4651, column: 24, scope: !379)
!402 = !DILocation(line: 4651, column: 2, scope: !379)
!403 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !91, file: !91, line: 4665, type: !380, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!404 = !DILocalVariable(name: "msgq", arg: 1, scope: !403, file: !91, line: 4665, type: !382)
!405 = !DILocation(line: 4665, column: 66, scope: !403)
!406 = !DILocation(line: 4667, column: 9, scope: !403)
!407 = !DILocation(line: 4667, column: 15, scope: !403)
!408 = !DILocation(line: 4667, column: 2, scope: !403)
!409 = distinct !DISubprogram(name: "z_timer_expiration_handler", scope: !233, file: !233, line: 27, type: !116, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!410 = !DILocalVariable(name: "t", arg: 1, scope: !409, file: !233, line: 27, type: !118)
!411 = !DILocation(line: 27, column: 50, scope: !409)
!412 = !DILocalVariable(name: "timer", scope: !409, file: !233, line: 29, type: !89)
!413 = !DILocation(line: 29, column: 18, scope: !409)
!414 = !DILocation(line: 29, column: 61, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !233, line: 29, column: 27)
!416 = !DILocation(line: 29, column: 65, scope: !415)
!417 = !DILocation(line: 29, column: 27, scope: !409)
!418 = !DILocation(line: 29, column: 114, scope: !415)
!419 = !DILocalVariable(name: "thread", scope: !409, file: !233, line: 30, type: !149)
!420 = !DILocation(line: 30, column: 19, scope: !409)
!421 = !DILocalVariable(name: "key", scope: !409, file: !233, line: 31, type: !422)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !224, line: 108, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !224, line: 34, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !423, file: !224, line: 35, baseType: !148, size: 32)
!426 = !DILocation(line: 31, column: 19, scope: !409)
!427 = !DILocalVariable(name: "l", arg: 1, scope: !428, file: !224, line: 160, type: !431)
!428 = distinct !DISubprogram(name: "k_spin_lock", scope: !224, file: !224, line: 160, type: !429, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!429 = !DISubroutineType(types: !430)
!430 = !{!422, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!432 = !DILocation(line: 160, column: 94, scope: !428, inlinedAt: !433)
!433 = distinct !DILocation(line: 31, column: 25, scope: !409)
!434 = !DILocation(line: 162, column: 9, scope: !428, inlinedAt: !433)
!435 = !DILocalVariable(name: "k", scope: !428, file: !224, line: 163, type: !422)
!436 = !DILocation(line: 163, column: 19, scope: !428, inlinedAt: !433)
!437 = !DILocalVariable(name: "key", scope: !438, file: !439, line: 44, type: !143)
!438 = distinct !DISubprogram(name: "arch_irq_lock", scope: !439, file: !439, line: 42, type: !440, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!439 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!440 = !DISubroutineType(types: !441)
!441 = !{!143}
!442 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !443)
!443 = distinct !DILocation(line: 169, column: 10, scope: !428, inlinedAt: !433)
!444 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !443)
!445 = !{i64 66898}
!446 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !443)
!447 = !DILocation(line: 169, column: 8, scope: !428, inlinedAt: !433)
!448 = !DILocation(line: 171, column: 26, scope: !428, inlinedAt: !433)
!449 = !DILocalVariable(name: "l", arg: 1, scope: !450, file: !224, line: 110, type: !431)
!450 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !224, file: !224, line: 110, type: !451, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !431}
!453 = !DILocation(line: 110, column: 94, scope: !450, inlinedAt: !454)
!454 = distinct !DILocation(line: 171, column: 2, scope: !428, inlinedAt: !433)
!455 = !DILocation(line: 112, column: 9, scope: !450, inlinedAt: !454)
!456 = !DILocation(line: 177, column: 27, scope: !428, inlinedAt: !433)
!457 = !DILocalVariable(name: "l", arg: 1, scope: !458, file: !224, line: 121, type: !431)
!458 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !224, file: !224, line: 121, type: !451, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!459 = !DILocation(line: 121, column: 95, scope: !458, inlinedAt: !460)
!460 = distinct !DILocation(line: 177, column: 2, scope: !428, inlinedAt: !433)
!461 = !DILocation(line: 123, column: 9, scope: !458, inlinedAt: !460)
!462 = !DILocation(line: 179, column: 2, scope: !428, inlinedAt: !433)
!463 = !DILocation(line: 31, column: 25, scope: !409)
!464 = !DILocation(line: 46, column: 27, scope: !465)
!465 = distinct !DILexicalBlock(scope: !409, file: !233, line: 46, column: 6)
!466 = !DILocation(line: 46, column: 30, scope: !465)
!467 = !DILocation(line: 46, column: 6, scope: !465)
!468 = !DILocation(line: 46, column: 6, scope: !409)
!469 = !DILocation(line: 47, column: 3, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !233, line: 46, column: 37)
!471 = !DILocalVariable(name: "l", arg: 1, scope: !472, file: !224, line: 235, type: !431)
!472 = distinct !DISubprogram(name: "k_spin_unlock", scope: !224, file: !224, line: 235, type: !473, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !431, !422}
!475 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !476)
!476 = distinct !DILocation(line: 47, column: 3, scope: !470)
!477 = !DILocalVariable(name: "key", arg: 2, scope: !472, file: !224, line: 236, type: !422)
!478 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !476)
!479 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !476)
!480 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !476)
!481 = !DILocalVariable(name: "key", arg: 1, scope: !482, file: !439, line: 88, type: !143)
!482 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !439, file: !439, line: 88, type: !483, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !143}
!485 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !486)
!486 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !476)
!487 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !486)
!488 = distinct !DILexicalBlock(scope: !482, file: !439, line: 91, column: 6)
!489 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !486)
!490 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !486)
!491 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !486)
!492 = distinct !DILexicalBlock(scope: !488, file: !439, line: 91, column: 17)
!493 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !486)
!494 = !{i64 67202}
!495 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !486)
!496 = !DILocation(line: 48, column: 3, scope: !470)
!497 = !DILocation(line: 55, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !409, file: !233, line: 55, column: 6)
!499 = !DILocation(line: 55, column: 16, scope: !498)
!500 = !DILocation(line: 55, column: 24, scope: !498)
!501 = !DILocation(line: 55, column: 49, scope: !498)
!502 = !DILocation(line: 55, column: 30, scope: !498)
!503 = !DILocation(line: 55, column: 62, scope: !498)
!504 = !DILocation(line: 56, column: 9, scope: !498)
!505 = !DILocation(line: 56, column: 16, scope: !498)
!506 = !DILocation(line: 56, column: 24, scope: !498)
!507 = !DILocation(line: 56, column: 49, scope: !498)
!508 = !DILocation(line: 56, column: 30, scope: !498)
!509 = !DILocation(line: 55, column: 6, scope: !409)
!510 = !DILocalVariable(name: "next", scope: !511, file: !233, line: 57, type: !135)
!511 = distinct !DILexicalBlock(scope: !498, file: !233, line: 56, column: 91)
!512 = !DILocation(line: 57, column: 15, scope: !511)
!513 = !DILocation(line: 57, column: 22, scope: !511)
!514 = !DILocation(line: 57, column: 29, scope: !511)
!515 = !DILocation(line: 60, column: 24, scope: !511)
!516 = !DILocation(line: 60, column: 30, scope: !511)
!517 = !DILocation(line: 60, column: 35, scope: !511)
!518 = !DILocation(line: 60, column: 17, scope: !511)
!519 = !DILocation(line: 60, column: 50, scope: !511)
!520 = !DILocation(line: 60, column: 56, scope: !511)
!521 = !DILocation(line: 60, column: 8, scope: !511)
!522 = !DILocation(line: 60, column: 14, scope: !511)
!523 = !DILocation(line: 74, column: 25, scope: !511)
!524 = !DILocation(line: 74, column: 76, scope: !511)
!525 = !DILocation(line: 74, column: 93, scope: !511)
!526 = !DILocation(line: 74, column: 104, scope: !511)
!527 = !DILocation(line: 74, column: 97, scope: !511)
!528 = !DILocation(line: 74, column: 111, scope: !511)
!529 = !DILocation(line: 74, column: 74, scope: !511)
!530 = !DILocation(line: 74, column: 121, scope: !511)
!531 = !DILocation(line: 74, column: 138, scope: !511)
!532 = !DILocation(line: 74, column: 149, scope: !511)
!533 = !DILocation(line: 74, column: 142, scope: !511)
!534 = !DILocation(line: 74, column: 59, scope: !511)
!535 = !DILocation(line: 74, column: 11, scope: !511)
!536 = !DILocation(line: 76, column: 18, scope: !511)
!537 = !DILocation(line: 76, column: 25, scope: !511)
!538 = !DILocation(line: 76, column: 3, scope: !511)
!539 = !DILocation(line: 78, column: 2, scope: !511)
!540 = !DILocation(line: 81, column: 2, scope: !409)
!541 = !DILocation(line: 81, column: 9, scope: !409)
!542 = !DILocation(line: 81, column: 16, scope: !409)
!543 = !DILocation(line: 84, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !409, file: !233, line: 84, column: 6)
!545 = !DILocation(line: 84, column: 13, scope: !544)
!546 = !DILocation(line: 84, column: 23, scope: !544)
!547 = !DILocation(line: 84, column: 6, scope: !409)
!548 = !DILocation(line: 86, column: 3, scope: !549)
!549 = distinct !DILexicalBlock(scope: !544, file: !233, line: 84, column: 29)
!550 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !551)
!551 = distinct !DILocation(line: 86, column: 3, scope: !549)
!552 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !551)
!553 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !551)
!554 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !551)
!555 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !556)
!556 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !551)
!557 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !556)
!558 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !556)
!559 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !556)
!560 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !556)
!561 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !556)
!562 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !556)
!563 = !DILocation(line: 87, column: 3, scope: !549)
!564 = !DILocation(line: 87, column: 10, scope: !549)
!565 = !DILocation(line: 87, column: 20, scope: !549)
!566 = !DILocation(line: 160, column: 94, scope: !428, inlinedAt: !567)
!567 = distinct !DILocation(line: 88, column: 9, scope: !549)
!568 = !DILocation(line: 162, column: 9, scope: !428, inlinedAt: !567)
!569 = !DILocation(line: 163, column: 19, scope: !428, inlinedAt: !567)
!570 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !571)
!571 = distinct !DILocation(line: 169, column: 10, scope: !428, inlinedAt: !567)
!572 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !571)
!573 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !571)
!574 = !DILocation(line: 169, column: 8, scope: !428, inlinedAt: !567)
!575 = !DILocation(line: 171, column: 26, scope: !428, inlinedAt: !567)
!576 = !DILocation(line: 110, column: 94, scope: !450, inlinedAt: !577)
!577 = distinct !DILocation(line: 171, column: 2, scope: !428, inlinedAt: !567)
!578 = !DILocation(line: 112, column: 9, scope: !450, inlinedAt: !577)
!579 = !DILocation(line: 177, column: 27, scope: !428, inlinedAt: !567)
!580 = !DILocation(line: 121, column: 95, scope: !458, inlinedAt: !581)
!581 = distinct !DILocation(line: 177, column: 2, scope: !428, inlinedAt: !567)
!582 = !DILocation(line: 123, column: 9, scope: !458, inlinedAt: !581)
!583 = !DILocation(line: 179, column: 2, scope: !428, inlinedAt: !567)
!584 = !DILocation(line: 88, column: 9, scope: !549)
!585 = !DILocation(line: 89, column: 2, scope: !549)
!586 = !DILocation(line: 96, column: 25, scope: !409)
!587 = !DILocation(line: 96, column: 32, scope: !409)
!588 = !DILocation(line: 96, column: 11, scope: !409)
!589 = !DILocation(line: 96, column: 9, scope: !409)
!590 = !DILocation(line: 98, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !409, file: !233, line: 98, column: 6)
!592 = !DILocation(line: 98, column: 13, scope: !591)
!593 = !DILocation(line: 98, column: 6, scope: !409)
!594 = !DILocation(line: 99, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !233, line: 98, column: 19)
!596 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !597)
!597 = distinct !DILocation(line: 99, column: 3, scope: !595)
!598 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !597)
!599 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !597)
!600 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !597)
!601 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !602)
!602 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !597)
!603 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !602)
!604 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !602)
!605 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !602)
!606 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !602)
!607 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !602)
!608 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !602)
!609 = !DILocation(line: 100, column: 3, scope: !595)
!610 = !DILocation(line: 103, column: 29, scope: !409)
!611 = !DILocation(line: 103, column: 2, scope: !409)
!612 = !DILocation(line: 105, column: 31, scope: !409)
!613 = !DILocalVariable(name: "thread", arg: 1, scope: !614, file: !615, line: 59, type: !149)
!614 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !615, file: !615, line: 59, type: !616, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!615 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!616 = !DISubroutineType(types: !617)
!617 = !{null, !149, !143}
!618 = !DILocation(line: 59, column: 47, scope: !614, inlinedAt: !619)
!619 = distinct !DILocation(line: 105, column: 2, scope: !409)
!620 = !DILocalVariable(name: "value", arg: 2, scope: !614, file: !615, line: 59, type: !143)
!621 = !DILocation(line: 59, column: 68, scope: !614, inlinedAt: !619)
!622 = !DILocation(line: 61, column: 35, scope: !614, inlinedAt: !619)
!623 = !DILocation(line: 61, column: 2, scope: !614, inlinedAt: !619)
!624 = !DILocation(line: 61, column: 10, scope: !614, inlinedAt: !619)
!625 = !DILocation(line: 61, column: 15, scope: !614, inlinedAt: !619)
!626 = !DILocation(line: 61, column: 33, scope: !614, inlinedAt: !619)
!627 = !DILocation(line: 107, column: 2, scope: !409)
!628 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !629)
!629 = distinct !DILocation(line: 107, column: 2, scope: !409)
!630 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !629)
!631 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !629)
!632 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !629)
!633 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !634)
!634 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !629)
!635 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !634)
!636 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !634)
!637 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !634)
!638 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !634)
!639 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !634)
!640 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !634)
!641 = !DILocation(line: 109, column: 17, scope: !409)
!642 = !DILocation(line: 109, column: 2, scope: !409)
!643 = !DILocation(line: 110, column: 1, scope: !409)
!644 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !99, file: !99, line: 234, type: !645, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!645 = !DISubroutineType(types: !646)
!646 = !{!647, !648}
!647 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!650 = !DILocalVariable(name: "node", arg: 1, scope: !644, file: !99, line: 234, type: !648)
!651 = !DILocation(line: 234, column: 60, scope: !644)
!652 = !DILocation(line: 236, column: 9, scope: !644)
!653 = !DILocation(line: 236, column: 15, scope: !644)
!654 = !DILocation(line: 236, column: 20, scope: !644)
!655 = !DILocation(line: 236, column: 2, scope: !644)
!656 = distinct !DISubprogram(name: "k_uptime_ticks", scope: !657, file: !657, line: 599, type: !658, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!657 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!658 = !DISubroutineType(types: !659)
!659 = !{!120}
!660 = !DILocation(line: 608, column: 2, scope: !656)
!661 = !DILocation(line: 608, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !656, file: !657, line: 608, column: 5)
!663 = !{i64 141563}
!664 = !DILocation(line: 608, column: 47, scope: !662)
!665 = !DILocation(line: 609, column: 9, scope: !656)
!666 = !DILocation(line: 609, column: 2, scope: !656)
!667 = distinct !DISubprogram(name: "z_waitq_head", scope: !668, file: !668, line: 52, type: !669, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!668 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!669 = !DISubroutineType(types: !670)
!670 = !{!149, !170}
!671 = !DILocalVariable(name: "w", arg: 1, scope: !667, file: !668, line: 52, type: !170)
!672 = !DILocation(line: 52, column: 56, scope: !667)
!673 = !DILocation(line: 54, column: 49, scope: !667)
!674 = !DILocation(line: 54, column: 52, scope: !667)
!675 = !DILocation(line: 54, column: 28, scope: !667)
!676 = !DILocation(line: 54, column: 2, scope: !667)
!677 = distinct !DISubprogram(name: "k_timer_init", scope: !233, file: !233, line: 113, type: !678, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !89, !680, !681}
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timer_expiry_t", file: !91, line: 1506, baseType: !130)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timer_stop_t", file: !91, line: 1522, baseType: !130)
!682 = !DILocalVariable(name: "timer", arg: 1, scope: !677, file: !233, line: 113, type: !89)
!683 = !DILocation(line: 113, column: 35, scope: !677)
!684 = !DILocalVariable(name: "expiry_fn", arg: 2, scope: !677, file: !233, line: 114, type: !680)
!685 = !DILocation(line: 114, column: 22, scope: !677)
!686 = !DILocalVariable(name: "stop_fn", arg: 3, scope: !677, file: !233, line: 115, type: !681)
!687 = !DILocation(line: 115, column: 20, scope: !677)
!688 = !DILocation(line: 117, column: 21, scope: !677)
!689 = !DILocation(line: 117, column: 2, scope: !677)
!690 = !DILocation(line: 117, column: 9, scope: !677)
!691 = !DILocation(line: 117, column: 19, scope: !677)
!692 = !DILocation(line: 118, column: 19, scope: !677)
!693 = !DILocation(line: 118, column: 2, scope: !677)
!694 = !DILocation(line: 118, column: 9, scope: !677)
!695 = !DILocation(line: 118, column: 17, scope: !677)
!696 = !DILocation(line: 119, column: 2, scope: !677)
!697 = !DILocation(line: 119, column: 9, scope: !677)
!698 = !DILocation(line: 119, column: 16, scope: !677)
!699 = !DILocation(line: 122, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !233, line: 121, column: 9)
!701 = distinct !DILexicalBlock(scope: !677, file: !233, line: 121, column: 6)
!702 = !DILocation(line: 122, column: 24, scope: !700)
!703 = !DILocation(line: 122, column: 3, scope: !700)
!704 = !DILocation(line: 125, column: 18, scope: !677)
!705 = !DILocation(line: 125, column: 25, scope: !677)
!706 = !DILocation(line: 125, column: 2, scope: !677)
!707 = !DILocation(line: 127, column: 2, scope: !677)
!708 = !DILocation(line: 127, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !677, file: !233, line: 127, column: 5)
!710 = !DILocation(line: 129, column: 2, scope: !677)
!711 = !DILocation(line: 129, column: 9, scope: !677)
!712 = !DILocation(line: 129, column: 19, scope: !677)
!713 = !DILocation(line: 131, column: 16, scope: !677)
!714 = !DILocation(line: 131, column: 2, scope: !677)
!715 = !DILocation(line: 136, column: 1, scope: !677)
!716 = distinct !DISubprogram(name: "z_waitq_init", scope: !668, file: !668, line: 47, type: !717, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !170}
!719 = !DILocalVariable(name: "w", arg: 1, scope: !716, file: !668, line: 47, type: !170)
!720 = !DILocation(line: 47, column: 44, scope: !716)
!721 = !DILocation(line: 49, column: 18, scope: !716)
!722 = !DILocation(line: 49, column: 21, scope: !716)
!723 = !DILocation(line: 49, column: 2, scope: !716)
!724 = !DILocation(line: 50, column: 1, scope: !716)
!725 = distinct !DISubprogram(name: "z_init_timeout", scope: !726, file: !726, line: 25, type: !116, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!726 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!727 = !DILocalVariable(name: "to", arg: 1, scope: !725, file: !726, line: 25, type: !118)
!728 = !DILocation(line: 25, column: 52, scope: !725)
!729 = !DILocation(line: 27, column: 18, scope: !725)
!730 = !DILocation(line: 27, column: 22, scope: !725)
!731 = !DILocation(line: 27, column: 2, scope: !725)
!732 = !DILocation(line: 28, column: 1, scope: !725)
!733 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !256, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!734 = !DILocalVariable(name: "obj", arg: 1, scope: !733, file: !6, line: 215, type: !246)
!735 = !DILocation(line: 215, column: 46, scope: !733)
!736 = !DILocation(line: 217, column: 9, scope: !733)
!737 = !DILocation(line: 218, column: 1, scope: !733)
!738 = distinct !DISubprogram(name: "z_impl_k_timer_start", scope: !233, file: !233, line: 139, type: !739, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !89, !135, !135}
!741 = !DILocalVariable(name: "timer", arg: 1, scope: !738, file: !233, line: 139, type: !89)
!742 = !DILocation(line: 139, column: 43, scope: !738)
!743 = !DILocalVariable(name: "duration", arg: 2, scope: !738, file: !233, line: 139, type: !135)
!744 = !DILocation(line: 139, column: 62, scope: !738)
!745 = !DILocalVariable(name: "period", arg: 3, scope: !738, file: !233, line: 140, type: !135)
!746 = !DILocation(line: 140, column: 18, scope: !738)
!747 = !DILocation(line: 142, column: 2, scope: !738)
!748 = !DILocation(line: 142, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !738, file: !233, line: 142, column: 5)
!750 = !DILocation(line: 144, column: 18, scope: !751)
!751 = distinct !DILexicalBlock(scope: !738, file: !233, line: 144, column: 6)
!752 = !DILocation(line: 144, column: 43, scope: !751)
!753 = !DILocation(line: 144, column: 24, scope: !751)
!754 = !DILocation(line: 144, column: 6, scope: !738)
!755 = !DILocation(line: 145, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !751, file: !233, line: 144, column: 85)
!757 = !DILocation(line: 161, column: 40, scope: !758)
!758 = distinct !DILexicalBlock(scope: !738, file: !233, line: 161, column: 6)
!759 = !DILocation(line: 161, column: 28, scope: !758)
!760 = !DILocation(line: 161, column: 48, scope: !758)
!761 = !DILocation(line: 161, column: 6, scope: !738)
!762 = !DILocation(line: 162, column: 32, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !233, line: 161, column: 53)
!764 = !DILocation(line: 162, column: 38, scope: !763)
!765 = !DILocation(line: 162, column: 43, scope: !763)
!766 = !DILocation(line: 162, column: 21, scope: !763)
!767 = !DILocation(line: 162, column: 62, scope: !763)
!768 = !DILocation(line: 162, column: 68, scope: !763)
!769 = !DILocation(line: 162, column: 12, scope: !763)
!770 = !DILocation(line: 162, column: 18, scope: !763)
!771 = !DILocation(line: 163, column: 2, scope: !763)
!772 = !DILocation(line: 165, column: 25, scope: !738)
!773 = !DILocation(line: 165, column: 32, scope: !738)
!774 = !DILocation(line: 165, column: 8, scope: !738)
!775 = !DILocation(line: 166, column: 2, scope: !738)
!776 = !DILocation(line: 166, column: 9, scope: !738)
!777 = !DILocation(line: 166, column: 18, scope: !738)
!778 = !DILocation(line: 167, column: 2, scope: !738)
!779 = !DILocation(line: 167, column: 9, scope: !738)
!780 = !DILocation(line: 167, column: 16, scope: !738)
!781 = !DILocation(line: 169, column: 17, scope: !738)
!782 = !DILocation(line: 169, column: 24, scope: !738)
!783 = !DILocation(line: 169, column: 2, scope: !738)
!784 = !DILocation(line: 171, column: 1, scope: !738)
!785 = distinct !DISubprogram(name: "z_impl_k_timer_stop", scope: !233, file: !233, line: 184, type: !131, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!786 = !DILocalVariable(name: "timer", arg: 1, scope: !785, file: !233, line: 184, type: !89)
!787 = !DILocation(line: 184, column: 42, scope: !785)
!788 = !DILocation(line: 186, column: 2, scope: !785)
!789 = !DILocation(line: 186, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !785, file: !233, line: 186, column: 5)
!791 = !DILocalVariable(name: "inactive", scope: !785, file: !233, line: 188, type: !647)
!792 = !DILocation(line: 188, column: 8, scope: !785)
!793 = !DILocation(line: 188, column: 37, scope: !785)
!794 = !DILocation(line: 188, column: 44, scope: !785)
!795 = !DILocation(line: 188, column: 20, scope: !785)
!796 = !DILocation(line: 188, column: 53, scope: !785)
!797 = !DILocation(line: 190, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !785, file: !233, line: 190, column: 6)
!799 = !DILocation(line: 190, column: 6, scope: !785)
!800 = !DILocation(line: 191, column: 3, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !233, line: 190, column: 16)
!802 = !DILocation(line: 194, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !785, file: !233, line: 194, column: 6)
!804 = !DILocation(line: 194, column: 13, scope: !803)
!805 = !DILocation(line: 194, column: 21, scope: !803)
!806 = !DILocation(line: 194, column: 6, scope: !785)
!807 = !DILocation(line: 195, column: 3, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !233, line: 194, column: 27)
!809 = !DILocation(line: 195, column: 10, scope: !808)
!810 = !DILocation(line: 195, column: 18, scope: !808)
!811 = !DILocation(line: 196, column: 2, scope: !808)
!812 = !DILocalVariable(name: "pending_thread", scope: !813, file: !233, line: 199, type: !149)
!813 = distinct !DILexicalBlock(scope: !814, file: !233, line: 198, column: 9)
!814 = distinct !DILexicalBlock(scope: !785, file: !233, line: 198, column: 6)
!815 = !DILocation(line: 199, column: 20, scope: !813)
!816 = !DILocation(line: 199, column: 59, scope: !813)
!817 = !DILocation(line: 199, column: 66, scope: !813)
!818 = !DILocation(line: 199, column: 37, scope: !813)
!819 = !DILocation(line: 201, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !813, file: !233, line: 201, column: 7)
!821 = !DILocation(line: 201, column: 22, scope: !820)
!822 = !DILocation(line: 201, column: 7, scope: !813)
!823 = !DILocation(line: 202, column: 19, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !233, line: 201, column: 28)
!825 = !DILocation(line: 202, column: 4, scope: !824)
!826 = !DILocation(line: 203, column: 4, scope: !824)
!827 = !DILocation(line: 204, column: 3, scope: !824)
!828 = !DILocation(line: 206, column: 1, scope: !785)
!829 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !830, file: !830, line: 75, type: !831, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!830 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!831 = !DISubroutineType(types: !832)
!832 = !{null}
!833 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !834)
!834 = distinct !DILocation(line: 77, column: 30, scope: !829)
!835 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !834)
!836 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !834)
!837 = !DILocation(line: 77, column: 9, scope: !829)
!838 = !DILocation(line: 78, column: 1, scope: !829)
!839 = distinct !DISubprogram(name: "z_impl_k_timer_status_get", scope: !233, file: !233, line: 217, type: !840, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!840 = !DISubroutineType(types: !841)
!841 = !{!142, !89}
!842 = !DILocalVariable(name: "timer", arg: 1, scope: !839, file: !233, line: 217, type: !89)
!843 = !DILocation(line: 217, column: 52, scope: !839)
!844 = !DILocalVariable(name: "key", scope: !839, file: !233, line: 219, type: !422)
!845 = !DILocation(line: 219, column: 19, scope: !839)
!846 = !DILocation(line: 160, column: 94, scope: !428, inlinedAt: !847)
!847 = distinct !DILocation(line: 219, column: 25, scope: !839)
!848 = !DILocation(line: 162, column: 9, scope: !428, inlinedAt: !847)
!849 = !DILocation(line: 163, column: 19, scope: !428, inlinedAt: !847)
!850 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !851)
!851 = distinct !DILocation(line: 169, column: 10, scope: !428, inlinedAt: !847)
!852 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !851)
!853 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !851)
!854 = !DILocation(line: 169, column: 8, scope: !428, inlinedAt: !847)
!855 = !DILocation(line: 171, column: 26, scope: !428, inlinedAt: !847)
!856 = !DILocation(line: 110, column: 94, scope: !450, inlinedAt: !857)
!857 = distinct !DILocation(line: 171, column: 2, scope: !428, inlinedAt: !847)
!858 = !DILocation(line: 112, column: 9, scope: !450, inlinedAt: !857)
!859 = !DILocation(line: 177, column: 27, scope: !428, inlinedAt: !847)
!860 = !DILocation(line: 121, column: 95, scope: !458, inlinedAt: !861)
!861 = distinct !DILocation(line: 177, column: 2, scope: !428, inlinedAt: !847)
!862 = !DILocation(line: 123, column: 9, scope: !458, inlinedAt: !861)
!863 = !DILocation(line: 179, column: 2, scope: !428, inlinedAt: !847)
!864 = !DILocation(line: 219, column: 25, scope: !839)
!865 = !DILocalVariable(name: "result", scope: !839, file: !233, line: 220, type: !142)
!866 = !DILocation(line: 220, column: 11, scope: !839)
!867 = !DILocation(line: 220, column: 20, scope: !839)
!868 = !DILocation(line: 220, column: 27, scope: !839)
!869 = !DILocation(line: 222, column: 2, scope: !839)
!870 = !DILocation(line: 222, column: 9, scope: !839)
!871 = !DILocation(line: 222, column: 16, scope: !839)
!872 = !DILocation(line: 223, column: 2, scope: !839)
!873 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !874)
!874 = distinct !DILocation(line: 223, column: 2, scope: !839)
!875 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !874)
!876 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !874)
!877 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !874)
!878 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !879)
!879 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !874)
!880 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !879)
!881 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !879)
!882 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !879)
!883 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !879)
!884 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !879)
!885 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !879)
!886 = !DILocation(line: 225, column: 9, scope: !839)
!887 = !DILocation(line: 225, column: 2, scope: !839)
!888 = distinct !DISubprogram(name: "z_impl_k_timer_status_sync", scope: !233, file: !233, line: 237, type: !840, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !225)
!889 = !DILocalVariable(name: "timer", arg: 1, scope: !888, file: !233, line: 237, type: !89)
!890 = !DILocation(line: 237, column: 53, scope: !888)
!891 = !DILocation(line: 240, column: 2, scope: !888)
!892 = !DILocation(line: 240, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !888, file: !233, line: 240, column: 5)
!894 = !DILocalVariable(name: "key", scope: !888, file: !233, line: 265, type: !422)
!895 = !DILocation(line: 265, column: 19, scope: !888)
!896 = !DILocation(line: 160, column: 94, scope: !428, inlinedAt: !897)
!897 = distinct !DILocation(line: 265, column: 25, scope: !888)
!898 = !DILocation(line: 162, column: 9, scope: !428, inlinedAt: !897)
!899 = !DILocation(line: 163, column: 19, scope: !428, inlinedAt: !897)
!900 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !901)
!901 = distinct !DILocation(line: 169, column: 10, scope: !428, inlinedAt: !897)
!902 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !901)
!903 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !901)
!904 = !DILocation(line: 169, column: 8, scope: !428, inlinedAt: !897)
!905 = !DILocation(line: 171, column: 26, scope: !428, inlinedAt: !897)
!906 = !DILocation(line: 110, column: 94, scope: !450, inlinedAt: !907)
!907 = distinct !DILocation(line: 171, column: 2, scope: !428, inlinedAt: !897)
!908 = !DILocation(line: 112, column: 9, scope: !450, inlinedAt: !907)
!909 = !DILocation(line: 177, column: 27, scope: !428, inlinedAt: !897)
!910 = !DILocation(line: 121, column: 95, scope: !458, inlinedAt: !911)
!911 = distinct !DILocation(line: 177, column: 2, scope: !428, inlinedAt: !897)
!912 = !DILocation(line: 123, column: 9, scope: !458, inlinedAt: !911)
!913 = !DILocation(line: 179, column: 2, scope: !428, inlinedAt: !897)
!914 = !DILocation(line: 265, column: 25, scope: !888)
!915 = !DILocalVariable(name: "result", scope: !888, file: !233, line: 266, type: !142)
!916 = !DILocation(line: 266, column: 11, scope: !888)
!917 = !DILocation(line: 266, column: 20, scope: !888)
!918 = !DILocation(line: 266, column: 27, scope: !888)
!919 = !DILocation(line: 268, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !888, file: !233, line: 268, column: 6)
!921 = !DILocation(line: 268, column: 13, scope: !920)
!922 = !DILocation(line: 268, column: 6, scope: !888)
!923 = !DILocation(line: 269, column: 31, scope: !924)
!924 = distinct !DILexicalBlock(scope: !925, file: !233, line: 269, column: 7)
!925 = distinct !DILexicalBlock(scope: !920, file: !233, line: 268, column: 20)
!926 = !DILocation(line: 269, column: 38, scope: !924)
!927 = !DILocation(line: 269, column: 8, scope: !924)
!928 = !DILocation(line: 269, column: 7, scope: !925)
!929 = !DILocation(line: 270, column: 4, scope: !930)
!930 = distinct !DILexicalBlock(scope: !924, file: !233, line: 269, column: 48)
!931 = !DILocation(line: 270, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !930, file: !233, line: 270, column: 7)
!933 = !DILocation(line: 273, column: 35, scope: !930)
!934 = !DILocation(line: 273, column: 42, scope: !930)
!935 = !DILocation(line: 273, column: 65, scope: !930)
!936 = !DILocation(line: 273, column: 10, scope: !930)
!937 = !DILocation(line: 160, column: 94, scope: !428, inlinedAt: !938)
!938 = distinct !DILocation(line: 276, column: 10, scope: !930)
!939 = !DILocation(line: 162, column: 9, scope: !428, inlinedAt: !938)
!940 = !DILocation(line: 163, column: 19, scope: !428, inlinedAt: !938)
!941 = !DILocation(line: 44, column: 15, scope: !438, inlinedAt: !942)
!942 = distinct !DILocation(line: 169, column: 10, scope: !428, inlinedAt: !938)
!943 = !DILocation(line: 48, column: 2, scope: !438, inlinedAt: !942)
!944 = !DILocation(line: 80, column: 9, scope: !438, inlinedAt: !942)
!945 = !DILocation(line: 169, column: 8, scope: !428, inlinedAt: !938)
!946 = !DILocation(line: 171, column: 26, scope: !428, inlinedAt: !938)
!947 = !DILocation(line: 110, column: 94, scope: !450, inlinedAt: !948)
!948 = distinct !DILocation(line: 171, column: 2, scope: !428, inlinedAt: !938)
!949 = !DILocation(line: 112, column: 9, scope: !450, inlinedAt: !948)
!950 = !DILocation(line: 177, column: 27, scope: !428, inlinedAt: !938)
!951 = !DILocation(line: 121, column: 95, scope: !458, inlinedAt: !952)
!952 = distinct !DILocation(line: 177, column: 2, scope: !428, inlinedAt: !938)
!953 = !DILocation(line: 123, column: 9, scope: !458, inlinedAt: !952)
!954 = !DILocation(line: 179, column: 2, scope: !428, inlinedAt: !938)
!955 = !DILocation(line: 276, column: 10, scope: !930)
!956 = !DILocation(line: 277, column: 13, scope: !930)
!957 = !DILocation(line: 277, column: 20, scope: !930)
!958 = !DILocation(line: 277, column: 11, scope: !930)
!959 = !DILocation(line: 278, column: 3, scope: !930)
!960 = !DILocation(line: 281, column: 2, scope: !925)
!961 = !DILocation(line: 285, column: 2, scope: !888)
!962 = !DILocation(line: 285, column: 9, scope: !888)
!963 = !DILocation(line: 285, column: 16, scope: !888)
!964 = !DILocation(line: 286, column: 2, scope: !888)
!965 = !DILocation(line: 235, column: 84, scope: !472, inlinedAt: !966)
!966 = distinct !DILocation(line: 286, column: 2, scope: !888)
!967 = !DILocation(line: 236, column: 23, scope: !472, inlinedAt: !966)
!968 = !DILocation(line: 238, column: 9, scope: !472, inlinedAt: !966)
!969 = !DILocation(line: 261, column: 22, scope: !472, inlinedAt: !966)
!970 = !DILocation(line: 88, column: 80, scope: !482, inlinedAt: !971)
!971 = distinct !DILocation(line: 261, column: 2, scope: !472, inlinedAt: !966)
!972 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !971)
!973 = !DILocation(line: 91, column: 10, scope: !488, inlinedAt: !971)
!974 = !DILocation(line: 91, column: 6, scope: !482, inlinedAt: !971)
!975 = !DILocation(line: 92, column: 3, scope: !492, inlinedAt: !971)
!976 = !DILocation(line: 94, column: 2, scope: !482, inlinedAt: !971)
!977 = !DILocation(line: 114, column: 1, scope: !482, inlinedAt: !971)
!978 = !DILocation(line: 291, column: 2, scope: !888)
!979 = !DILocation(line: 291, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !888, file: !233, line: 291, column: 5)
!981 = !DILocation(line: 293, column: 9, scope: !888)
!982 = !DILocation(line: 293, column: 2, scope: !888)
!983 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !726, file: !726, line: 35, type: !984, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!984 = !DISubroutineType(types: !985)
!985 = !{!647, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!988 = !DILocalVariable(name: "to", arg: 1, scope: !983, file: !726, line: 35, type: !986)
!989 = !DILocation(line: 35, column: 66, scope: !983)
!990 = !DILocation(line: 37, column: 31, scope: !983)
!991 = !DILocation(line: 37, column: 35, scope: !983)
!992 = !DILocation(line: 37, column: 10, scope: !983)
!993 = !DILocation(line: 37, column: 9, scope: !983)
!994 = !DILocation(line: 37, column: 2, scope: !983)
!995 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !345, file: !345, line: 335, type: !996, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!996 = !DISubroutineType(types: !997)
!997 = !{!647, !998}
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!999 = !DILocalVariable(name: "list", arg: 1, scope: !995, file: !345, line: 335, type: !998)
!1000 = !DILocation(line: 335, column: 55, scope: !995)
!1001 = !DILocation(line: 335, column: 92, scope: !995)
!1002 = !DILocation(line: 335, column: 71, scope: !995)
!1003 = !DILocation(line: 335, column: 98, scope: !995)
!1004 = !DILocation(line: 335, column: 63, scope: !995)
!1005 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !345, file: !345, line: 255, type: !1006, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!349, !998}
!1008 = !DILocalVariable(name: "list", arg: 1, scope: !1005, file: !345, line: 255, type: !998)
!1009 = !DILocation(line: 255, column: 64, scope: !1005)
!1010 = !DILocation(line: 257, column: 9, scope: !1005)
!1011 = !DILocation(line: 257, column: 15, scope: !1005)
!1012 = !DILocation(line: 257, column: 2, scope: !1005)
!1013 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !99, file: !99, line: 303, type: !1014, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!231, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!1017 = !DILocalVariable(name: "list", arg: 1, scope: !1013, file: !99, line: 303, type: !1016)
!1018 = !DILocation(line: 303, column: 61, scope: !1013)
!1019 = !DILocation(line: 305, column: 28, scope: !1013)
!1020 = !DILocation(line: 305, column: 9, scope: !1013)
!1021 = !DILocation(line: 305, column: 49, scope: !1013)
!1022 = !DILocation(line: 305, column: 55, scope: !1013)
!1023 = !DILocation(line: 305, column: 2, scope: !1013)
!1024 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !99, file: !99, line: 275, type: !1025, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!647, !1016}
!1027 = !DILocalVariable(name: "list", arg: 1, scope: !1024, file: !99, line: 275, type: !1016)
!1028 = !DILocation(line: 275, column: 53, scope: !1024)
!1029 = !DILocation(line: 277, column: 9, scope: !1024)
!1030 = !DILocation(line: 277, column: 15, scope: !1024)
!1031 = !DILocation(line: 277, column: 23, scope: !1024)
!1032 = !DILocation(line: 277, column: 20, scope: !1024)
!1033 = !DILocation(line: 277, column: 2, scope: !1024)
!1034 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !1035, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{null, !1016}
!1037 = !DILocalVariable(name: "list", arg: 1, scope: !1034, file: !99, line: 203, type: !1016)
!1038 = !DILocation(line: 203, column: 48, scope: !1034)
!1039 = !DILocation(line: 205, column: 30, scope: !1034)
!1040 = !DILocation(line: 205, column: 2, scope: !1034)
!1041 = !DILocation(line: 205, column: 8, scope: !1034)
!1042 = !DILocation(line: 205, column: 13, scope: !1034)
!1043 = !DILocation(line: 206, column: 30, scope: !1034)
!1044 = !DILocation(line: 206, column: 2, scope: !1034)
!1045 = !DILocation(line: 206, column: 8, scope: !1034)
!1046 = !DILocation(line: 206, column: 13, scope: !1034)
!1047 = !DILocation(line: 207, column: 1, scope: !1034)
!1048 = distinct !DISubprogram(name: "sys_dnode_init", scope: !99, file: !99, line: 220, type: !1049, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !225)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !231}
!1051 = !DILocalVariable(name: "node", arg: 1, scope: !1048, file: !99, line: 220, type: !231)
!1052 = !DILocation(line: 220, column: 48, scope: !1048)
!1053 = !DILocation(line: 222, column: 2, scope: !1048)
!1054 = !DILocation(line: 222, column: 8, scope: !1048)
!1055 = !DILocation(line: 222, column: 13, scope: !1048)
!1056 = !DILocation(line: 223, column: 2, scope: !1048)
!1057 = !DILocation(line: 223, column: 8, scope: !1048)
!1058 = !DILocation(line: 223, column: 13, scope: !1048)
!1059 = !DILocation(line: 224, column: 1, scope: !1048)
