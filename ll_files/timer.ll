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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !241 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !247, metadata !DIExpression()), !dbg !249
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !250
  %5 = load ptr, ptr %3, align 4, !dbg !251
  %6 = load ptr, ptr %4, align 4, !dbg !252
  ret void, !dbg !253
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !254 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !258, metadata !DIExpression()), !dbg !259
  %3 = load ptr, ptr %2, align 4, !dbg !260
  ret void, !dbg !261
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !262 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !267
  %3 = load i8, ptr %2, align 1, !dbg !268
  ret ptr null, !dbg !269
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !270 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !274, metadata !DIExpression()), !dbg !276
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !275, metadata !DIExpression()), !dbg !277
  %5 = load i8, ptr %3, align 1, !dbg !278
  %6 = load i32, ptr %4, align 4, !dbg !279
  ret ptr null, !dbg !280
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !287, metadata !DIExpression()), !dbg !288
  %3 = load ptr, ptr %2, align 4, !dbg !289
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !290
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !291
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !292
  ret i64 %6, !dbg !293
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !294 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !297
  %3 = load ptr, ptr %2, align 4, !dbg !298
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !299
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !300
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !301
  ret i64 %6, !dbg !302
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load ptr, ptr %2, align 4, !dbg !311
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !312
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !313
  ret i64 %5, !dbg !314
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !317, metadata !DIExpression()), !dbg !318
  %3 = load ptr, ptr %2, align 4, !dbg !319
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !320
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !321
  ret i64 %5, !dbg !322
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !323 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !329
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !328, metadata !DIExpression()), !dbg !330
  %5 = load ptr, ptr %4, align 4, !dbg !331
  %6 = load ptr, ptr %3, align 4, !dbg !332
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !333
  store ptr %5, ptr %7, align 4, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  %3 = load ptr, ptr %2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !343
  %5 = load ptr, ptr %4, align 4, !dbg !343
  ret ptr %5, !dbg !344
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !367, metadata !DIExpression()), !dbg !368
  %3 = load ptr, ptr %2, align 4, !dbg !369
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !370
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !371
  %6 = zext i1 %5 to i32, !dbg !372
  ret i32 %6, !dbg !373
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !385
  %3 = load ptr, ptr %2, align 4, !dbg !386
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !387
  %5 = load i32, ptr %4, align 4, !dbg !387
  ret i32 %5, !dbg !388
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !389 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !409
  %5 = load i32, ptr %4, align 4, !dbg !409
  %6 = load ptr, ptr %2, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !411
  %8 = load i32, ptr %7, align 4, !dbg !411
  %9 = sub i32 %5, %8, !dbg !412
  ret i32 %9, !dbg !413
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !414 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  ret i32 %5, !dbg !420
}

; Function Attrs: nounwind optsize
define hidden void @z_timer_expiration_handler(ptr noundef %0) #1 !dbg !421 {
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
  %31 = alloca i32, align 4
  %32 = alloca %struct.k_timeout_t, align 8
  %33 = alloca %struct.k_timeout_t, align 8
  %34 = alloca %struct.k_timeout_t, align 8
  %35 = alloca %struct.k_timeout_t, align 8
  %36 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !423, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #7, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %27, metadata !424, metadata !DIExpression()), !dbg !436
  %37 = load ptr, ptr %26, align 4, !dbg !437
  %38 = getelementptr inbounds i8, ptr %37, i32 0, !dbg !439
  store ptr %38, ptr %28, align 4, !dbg !440
  %39 = load ptr, ptr %28, align 4, !dbg !441
  store ptr %39, ptr %27, align 4, !dbg !436
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #7, !dbg !442
  call void @llvm.dbg.declare(metadata ptr %29, metadata !425, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #7, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %30, metadata !426, metadata !DIExpression()), !dbg !445
  store ptr @lock, ptr %23, align 4
  call void @llvm.dbg.declare(metadata ptr %23, metadata !446, metadata !DIExpression()), !dbg !453
  %40 = load ptr, ptr %23, align 4, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %22, metadata !452, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %11, metadata !463, metadata !DIExpression()), !dbg !465
  %41 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !466, !srcloc !467
  store i32 %41, ptr %11, align 4, !dbg !466
  %42 = load i32, ptr %11, align 4, !dbg !468
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !469
  store i32 %42, ptr %22, align 4, !dbg !470
  %43 = load ptr, ptr %23, align 4, !dbg !471
  store ptr %43, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !472, metadata !DIExpression()), !dbg !477
  %44 = load ptr, ptr %9, align 4, !dbg !479
  %45 = load ptr, ptr %23, align 4, !dbg !480
  store ptr %45, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !481, metadata !DIExpression()), !dbg !484
  %46 = load ptr, ptr %7, align 4, !dbg !486
  %47 = load i32, ptr %22, align 4, !dbg !487
  %48 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !488
  store i32 %47, ptr %48, align 4, !dbg !488
  %49 = load ptr, ptr %26, align 4, !dbg !489
  %50 = getelementptr inbounds %struct._timeout, ptr %49, i32 0, i32 0, !dbg !491
  %51 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %50) #6, !dbg !492
  br i1 %51, label %52, label %61, !dbg !493

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !494
  %54 = load [1 x i32], ptr %53, align 4, !dbg !494
  store [1 x i32] %54, ptr %14, align 4
  store ptr @lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !496, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata ptr %14, metadata !501, metadata !DIExpression()), !dbg !504
  %55 = load ptr, ptr %15, align 4, !dbg !505
  %56 = load i32, ptr %14, align 4, !dbg !506
  store i32 %56, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !507, metadata !DIExpression()), !dbg !512
  %57 = load i32, ptr %5, align 4, !dbg !514
  %58 = icmp ne i32 %57, 0, !dbg !516
  br i1 %58, label %59, label %60, !dbg !517

59:                                               ; preds = %52
  br label %arch_irq_unlock.exit, !dbg !518

60:                                               ; preds = %52
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !520, !srcloc !521
  br label %arch_irq_unlock.exit, !dbg !522

arch_irq_unlock.exit:                             ; preds = %59, %60
  store i32 1, ptr %31, align 4
  br label %173, !dbg !523

61:                                               ; preds = %1
  %62 = load ptr, ptr %27, align 4, !dbg !524
  %63 = getelementptr inbounds %struct.k_timer, ptr %62, i32 0, i32 4, !dbg !525
  %64 = getelementptr inbounds %struct.k_timeout_t, ptr %63, i32 0, i32 0, !dbg !526
  %65 = load i64, ptr %64, align 8, !dbg !526
  %66 = getelementptr inbounds %struct.k_timeout_t, ptr %32, i32 0, i32 0, !dbg !527
  store i64 0, ptr %66, align 8, !dbg !527
  %67 = icmp eq i64 %65, 0, !dbg !528
  br i1 %67, label %111, label %68, !dbg !529

68:                                               ; preds = %61
  %69 = load ptr, ptr %27, align 4, !dbg !530
  %70 = getelementptr inbounds %struct.k_timer, ptr %69, i32 0, i32 4, !dbg !531
  %71 = getelementptr inbounds %struct.k_timeout_t, ptr %70, i32 0, i32 0, !dbg !532
  %72 = load i64, ptr %71, align 8, !dbg !532
  %73 = getelementptr inbounds %struct.k_timeout_t, ptr %33, i32 0, i32 0, !dbg !533
  store i64 -1, ptr %73, align 8, !dbg !533
  %74 = icmp eq i64 %72, -1, !dbg !534
  br i1 %74, label %111, label %75, !dbg !535

75:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 8, ptr %34) #7, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %34, metadata !431, metadata !DIExpression()), !dbg !537
  %76 = load ptr, ptr %27, align 4, !dbg !538
  %77 = getelementptr inbounds %struct.k_timer, ptr %76, i32 0, i32 4, !dbg !539
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %34, ptr align 8 %77, i32 8, i1 false), !dbg !539
  %78 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !540
  %79 = load i64, ptr %78, align 8, !dbg !540
  %80 = sub nsw i64 %79, 1, !dbg !541
  %81 = icmp sgt i64 %80, 0, !dbg !542
  br i1 %81, label %82, label %86, !dbg !543

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !544
  %84 = load i64, ptr %83, align 8, !dbg !544
  %85 = sub nsw i64 %84, 1, !dbg !545
  br label %87, !dbg !543

86:                                               ; preds = %75
  br label %87, !dbg !543

87:                                               ; preds = %86, %82
  %88 = phi i64 [ %85, %82 ], [ 0, %86 ], !dbg !543
  %89 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !546
  store i64 %88, ptr %89, align 8, !dbg !547
  %90 = getelementptr inbounds %struct.k_timeout_t, ptr %35, i32 0, i32 0, !dbg !548
  %91 = call i64 @k_uptime_ticks() #6, !dbg !549
  %92 = add nsw i64 %91, 1, !dbg !550
  %93 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !551
  %94 = load i64, ptr %93, align 8, !dbg !551
  %95 = add nsw i64 %92, %94, !dbg !552
  %96 = icmp sgt i64 %95, 0, !dbg !553
  br i1 %96, label %97, label %103, !dbg !554

97:                                               ; preds = %87
  %98 = call i64 @k_uptime_ticks() #6, !dbg !555
  %99 = add nsw i64 %98, 1, !dbg !556
  %100 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !557
  %101 = load i64, ptr %100, align 8, !dbg !557
  %102 = add nsw i64 %99, %101, !dbg !558
  br label %104, !dbg !554

103:                                              ; preds = %87
  br label %104, !dbg !554

104:                                              ; preds = %103, %97
  %105 = phi i64 [ %102, %97 ], [ 0, %103 ], !dbg !554
  %106 = sub nsw i64 -2, %105, !dbg !559
  store i64 %106, ptr %90, align 8, !dbg !548
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %34, ptr align 8 %35, i32 8, i1 false), !dbg !560
  %107 = load ptr, ptr %27, align 4, !dbg !561
  %108 = getelementptr inbounds %struct.k_timer, ptr %107, i32 0, i32 0, !dbg !562
  %109 = getelementptr inbounds %struct.k_timeout_t, ptr %34, i32 0, i32 0, !dbg !563
  %110 = load [1 x i64], ptr %109, align 8, !dbg !563
  call void @z_add_timeout(ptr noundef %108, ptr noundef @z_timer_expiration_handler, [1 x i64] %110) #6, !dbg !563
  call void @llvm.lifetime.end.p0(i64 8, ptr %34) #7, !dbg !564
  br label %111, !dbg !565

111:                                              ; preds = %104, %68, %61
  %112 = load ptr, ptr %27, align 4, !dbg !566
  %113 = getelementptr inbounds %struct.k_timer, ptr %112, i32 0, i32 5, !dbg !567
  %114 = load i32, ptr %113, align 8, !dbg !568
  %115 = add i32 %114, 1, !dbg !568
  store i32 %115, ptr %113, align 8, !dbg !568
  %116 = load ptr, ptr %27, align 4, !dbg !569
  %117 = getelementptr inbounds %struct.k_timer, ptr %116, i32 0, i32 2, !dbg !571
  %118 = load ptr, ptr %117, align 8, !dbg !571
  %119 = icmp ne ptr %118, null, !dbg !572
  br i1 %119, label %120, label %142, !dbg !573

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !574
  %122 = load [1 x i32], ptr %121, align 4, !dbg !574
  store [1 x i32] %122, ptr %16, align 4
  store ptr @lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !496, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.declare(metadata ptr %16, metadata !501, metadata !DIExpression()), !dbg !578
  %123 = load ptr, ptr %17, align 4, !dbg !579
  %124 = load i32, ptr %16, align 4, !dbg !580
  store i32 %124, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !507, metadata !DIExpression()), !dbg !581
  %125 = load i32, ptr %4, align 4, !dbg !583
  %126 = icmp ne i32 %125, 0, !dbg !584
  br i1 %126, label %127, label %128, !dbg !585

127:                                              ; preds = %120
  br label %arch_irq_unlock.exit1, !dbg !586

128:                                              ; preds = %120
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !587, !srcloc !521
  br label %arch_irq_unlock.exit1, !dbg !588

arch_irq_unlock.exit1:                            ; preds = %127, %128
  %129 = load ptr, ptr %27, align 4, !dbg !589
  %130 = getelementptr inbounds %struct.k_timer, ptr %129, i32 0, i32 2, !dbg !590
  %131 = load ptr, ptr %130, align 8, !dbg !590
  %132 = load ptr, ptr %27, align 4, !dbg !591
  call void %131(ptr noundef %132) #6, !dbg !589
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #7, !dbg !592
  store ptr @lock, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !446, metadata !DIExpression()), !dbg !593
  %133 = load ptr, ptr %25, align 4, !dbg !595
  call void @llvm.dbg.declare(metadata ptr %24, metadata !452, metadata !DIExpression()), !dbg !596
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7, !dbg !597
  call void @llvm.dbg.declare(metadata ptr %10, metadata !463, metadata !DIExpression()), !dbg !599
  %134 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !600, !srcloc !467
  store i32 %134, ptr %10, align 4, !dbg !600
  %135 = load i32, ptr %10, align 4, !dbg !601
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7, !dbg !602
  store i32 %135, ptr %24, align 4, !dbg !603
  %136 = load ptr, ptr %25, align 4, !dbg !604
  store ptr %136, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !472, metadata !DIExpression()), !dbg !605
  %137 = load ptr, ptr %8, align 4, !dbg !607
  %138 = load ptr, ptr %25, align 4, !dbg !608
  store ptr %138, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !481, metadata !DIExpression()), !dbg !609
  %139 = load ptr, ptr %6, align 4, !dbg !611
  %140 = load i32, ptr %24, align 4, !dbg !612
  %141 = getelementptr inbounds %struct.z_spinlock_key, ptr %36, i32 0, i32 0, !dbg !592
  store i32 %140, ptr %141, align 4, !dbg !592
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %30, ptr align 4 %36, i32 4, i1 false), !dbg !592
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #7, !dbg !592
  br label %142, !dbg !613

142:                                              ; preds = %arch_irq_unlock.exit1, %111
  %143 = load ptr, ptr %27, align 4, !dbg !614
  %144 = getelementptr inbounds %struct.k_timer, ptr %143, i32 0, i32 1, !dbg !615
  %145 = call ptr @z_waitq_head(ptr noundef %144) #6, !dbg !616
  store ptr %145, ptr %29, align 4, !dbg !617
  %146 = load ptr, ptr %29, align 4, !dbg !618
  %147 = icmp eq ptr %146, null, !dbg !620
  br i1 %147, label %148, label %157, !dbg !621

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !622
  %150 = load [1 x i32], ptr %149, align 4, !dbg !622
  store [1 x i32] %150, ptr %18, align 4
  store ptr @lock, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !496, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.declare(metadata ptr %18, metadata !501, metadata !DIExpression()), !dbg !626
  %151 = load ptr, ptr %19, align 4, !dbg !627
  %152 = load i32, ptr %18, align 4, !dbg !628
  store i32 %152, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !507, metadata !DIExpression()), !dbg !629
  %153 = load i32, ptr %3, align 4, !dbg !631
  %154 = icmp ne i32 %153, 0, !dbg !632
  br i1 %154, label %155, label %156, !dbg !633

155:                                              ; preds = %148
  br label %arch_irq_unlock.exit2, !dbg !634

156:                                              ; preds = %148
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !635, !srcloc !521
  br label %arch_irq_unlock.exit2, !dbg !636

arch_irq_unlock.exit2:                            ; preds = %155, %156
  store i32 1, ptr %31, align 4
  br label %173, !dbg !637

157:                                              ; preds = %142
  %158 = load ptr, ptr %29, align 4, !dbg !638
  call void @z_unpend_thread_no_timeout(ptr noundef %158) #6, !dbg !639
  %159 = load ptr, ptr %29, align 4, !dbg !640
  store ptr %159, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !641, metadata !DIExpression()), !dbg !648
  store i32 0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !647, metadata !DIExpression()), !dbg !650
  %160 = load i32, ptr %13, align 4, !dbg !651
  %161 = load ptr, ptr %12, align 4, !dbg !652
  %162 = getelementptr inbounds %struct.k_thread, ptr %161, i32 0, i32 6, !dbg !653
  %163 = getelementptr inbounds %struct._thread_arch, ptr %162, i32 0, i32 1, !dbg !654
  store i32 %160, ptr %163, align 4, !dbg !655
  %164 = getelementptr inbounds %struct.z_spinlock_key, ptr %30, i32 0, i32 0, !dbg !656
  %165 = load [1 x i32], ptr %164, align 4, !dbg !656
  store [1 x i32] %165, ptr %20, align 4
  store ptr @lock, ptr %21, align 4
  call void @llvm.dbg.declare(metadata ptr %21, metadata !496, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.declare(metadata ptr %20, metadata !501, metadata !DIExpression()), !dbg !659
  %166 = load ptr, ptr %21, align 4, !dbg !660
  %167 = load i32, ptr %20, align 4, !dbg !661
  store i32 %167, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !507, metadata !DIExpression()), !dbg !662
  %168 = load i32, ptr %2, align 4, !dbg !664
  %169 = icmp ne i32 %168, 0, !dbg !665
  br i1 %169, label %170, label %171, !dbg !666

170:                                              ; preds = %157
  br label %arch_irq_unlock.exit3, !dbg !667

171:                                              ; preds = %157
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !668, !srcloc !521
  br label %arch_irq_unlock.exit3, !dbg !669

arch_irq_unlock.exit3:                            ; preds = %170, %171
  %172 = load ptr, ptr %29, align 4, !dbg !670
  call void @z_ready_thread(ptr noundef %172) #6, !dbg !671
  store i32 0, ptr %31, align 4, !dbg !672
  br label %173, !dbg !672

173:                                              ; preds = %arch_irq_unlock.exit3, %arch_irq_unlock.exit2, %arch_irq_unlock.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #7, !dbg !672
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #7, !dbg !672
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #7, !dbg !672
  %174 = load i32, ptr %31, align 4
  switch i32 %174, label %176 [
    i32 0, label %175
    i32 1, label %175
  ]

175:                                              ; preds = %173, %173
  ret void, !dbg !672

176:                                              ; preds = %173
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !673 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !680, metadata !DIExpression()), !dbg !681
  %3 = load ptr, ptr %2, align 4, !dbg !682
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !683
  %5 = load ptr, ptr %4, align 4, !dbg !683
  %6 = icmp ne ptr %5, null, !dbg !684
  ret i1 %6, !dbg !685
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: inlinehint nounwind optsize
define internal i64 @k_uptime_ticks() #0 !dbg !686 {
  br label %1, !dbg !690

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #7, !dbg !691, !srcloc !693
  br label %2, !dbg !694

2:                                                ; preds = %1
  %3 = call i64 @z_impl_k_uptime_ticks() #6, !dbg !695
  ret i64 %3, !dbg !696
}

; Function Attrs: optsize
declare !dbg !697 dso_local void @z_add_timeout(ptr noundef, ptr noundef, [1 x i64]) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_waitq_head(ptr noundef %0) #0 !dbg !701 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !706, metadata !DIExpression()), !dbg !707
  %3 = load ptr, ptr %2, align 4, !dbg !708
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !709
  %5 = call ptr @sys_dlist_peek_head(ptr noundef %4) #6, !dbg !710
  ret ptr %5, !dbg !711
}

; Function Attrs: optsize
declare !dbg !712 dso_local void @z_unpend_thread_no_timeout(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !716 dso_local void @z_ready_thread(ptr noundef) #5

; Function Attrs: nounwind optsize
define hidden void @k_timer_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !717 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !723, metadata !DIExpression()), !dbg !726
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !724, metadata !DIExpression()), !dbg !727
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !725, metadata !DIExpression()), !dbg !728
  %7 = load ptr, ptr %5, align 4, !dbg !729
  %8 = load ptr, ptr %4, align 4, !dbg !730
  %9 = getelementptr inbounds %struct.k_timer, ptr %8, i32 0, i32 2, !dbg !731
  store ptr %7, ptr %9, align 8, !dbg !732
  %10 = load ptr, ptr %6, align 4, !dbg !733
  %11 = load ptr, ptr %4, align 4, !dbg !734
  %12 = getelementptr inbounds %struct.k_timer, ptr %11, i32 0, i32 3, !dbg !735
  store ptr %10, ptr %12, align 4, !dbg !736
  %13 = load ptr, ptr %4, align 4, !dbg !737
  %14 = getelementptr inbounds %struct.k_timer, ptr %13, i32 0, i32 5, !dbg !738
  store i32 0, ptr %14, align 8, !dbg !739
  %15 = load ptr, ptr %4, align 4, !dbg !740
  %16 = getelementptr inbounds %struct.k_timer, ptr %15, i32 0, i32 1, !dbg !743
  call void @z_waitq_init(ptr noundef %16) #6, !dbg !744
  %17 = load ptr, ptr %4, align 4, !dbg !745
  %18 = getelementptr inbounds %struct.k_timer, ptr %17, i32 0, i32 0, !dbg !746
  call void @z_init_timeout(ptr noundef %18) #6, !dbg !747
  br label %19, !dbg !748

19:                                               ; preds = %3
  br label %20, !dbg !749

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 4, !dbg !751
  %22 = getelementptr inbounds %struct.k_timer, ptr %21, i32 0, i32 6, !dbg !752
  store ptr null, ptr %22, align 4, !dbg !753
  %23 = load ptr, ptr %4, align 4, !dbg !754
  call void @z_object_init(ptr noundef %23) #6, !dbg !755
  ret void, !dbg !756
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !757 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !761, metadata !DIExpression()), !dbg !762
  %3 = load ptr, ptr %2, align 4, !dbg !763
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !764
  call void @sys_dlist_init(ptr noundef %4) #6, !dbg !765
  ret void, !dbg !766
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_init_timeout(ptr noundef %0) #0 !dbg !767 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !769, metadata !DIExpression()), !dbg !770
  %3 = load ptr, ptr %2, align 4, !dbg !771
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !772
  call void @sys_dnode_init(ptr noundef %4) #6, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !775 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !777, metadata !DIExpression()), !dbg !778
  %3 = load ptr, ptr %2, align 4, !dbg !779
  ret void, !dbg !780
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_timer_start(ptr noundef %0, [1 x i64] %1, [1 x i64] %2) #1 !dbg !781 {
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca ptr, align 4
  %7 = alloca %struct.k_timeout_t, align 8
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0
  store [1 x i64] %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0
  store [1 x i64] %2, ptr %9, align 8
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %4, metadata !786, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.declare(metadata ptr %5, metadata !787, metadata !DIExpression()), !dbg !790
  br label %10, !dbg !791

10:                                               ; preds = %3
  br label %11, !dbg !792

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !794
  %13 = load i64, ptr %12, align 8, !dbg !794
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %7, i32 0, i32 0, !dbg !796
  store i64 -1, ptr %14, align 8, !dbg !796
  %15 = icmp eq i64 %13, -1, !dbg !797
  br i1 %15, label %16, label %17, !dbg !798

16:                                               ; preds = %11
  br label %47, !dbg !799

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !801
  %19 = load i64, ptr %18, align 8, !dbg !801
  %20 = sub nsw i64 -2, %19, !dbg !803
  %21 = icmp slt i64 %20, 0, !dbg !804
  br i1 %21, label %22, label %35, !dbg !805

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !806
  %24 = load i64, ptr %23, align 8, !dbg !806
  %25 = sub nsw i64 %24, 1, !dbg !808
  %26 = icmp sgt i64 %25, 0, !dbg !809
  br i1 %26, label %27, label %31, !dbg !810

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !811
  %29 = load i64, ptr %28, align 8, !dbg !811
  %30 = sub nsw i64 %29, 1, !dbg !812
  br label %32, !dbg !810

31:                                               ; preds = %22
  br label %32, !dbg !810

32:                                               ; preds = %31, %27
  %33 = phi i64 [ %30, %27 ], [ 0, %31 ], !dbg !810
  %34 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !813
  store i64 %33, ptr %34, align 8, !dbg !814
  br label %35, !dbg !815

35:                                               ; preds = %32, %17
  %36 = load ptr, ptr %6, align 4, !dbg !816
  %37 = getelementptr inbounds %struct.k_timer, ptr %36, i32 0, i32 0, !dbg !817
  %38 = call i32 @z_abort_timeout(ptr noundef %37) #6, !dbg !818
  %39 = load ptr, ptr %6, align 4, !dbg !819
  %40 = getelementptr inbounds %struct.k_timer, ptr %39, i32 0, i32 4, !dbg !820
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %40, ptr align 8 %5, i32 8, i1 false), !dbg !821
  %41 = load ptr, ptr %6, align 4, !dbg !822
  %42 = getelementptr inbounds %struct.k_timer, ptr %41, i32 0, i32 5, !dbg !823
  store i32 0, ptr %42, align 8, !dbg !824
  %43 = load ptr, ptr %6, align 4, !dbg !825
  %44 = getelementptr inbounds %struct.k_timer, ptr %43, i32 0, i32 0, !dbg !826
  %45 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !827
  %46 = load [1 x i64], ptr %45, align 8, !dbg !827
  call void @z_add_timeout(ptr noundef %44, ptr noundef @z_timer_expiration_handler, [1 x i64] %46) #6, !dbg !827
  br label %47, !dbg !828

47:                                               ; preds = %35, %16
  ret void, !dbg !828
}

; Function Attrs: optsize
declare !dbg !829 dso_local i32 @z_abort_timeout(ptr noundef) #5

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_timer_stop(ptr noundef %0) #1 !dbg !832 {
  %2 = alloca ptr, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !834, metadata !DIExpression()), !dbg !839
  br label %6, !dbg !840

6:                                                ; preds = %1
  br label %7, !dbg !841

7:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #7, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %3, metadata !835, metadata !DIExpression()), !dbg !844
  %8 = load ptr, ptr %2, align 4, !dbg !845
  %9 = getelementptr inbounds %struct.k_timer, ptr %8, i32 0, i32 0, !dbg !846
  %10 = call i32 @z_abort_timeout(ptr noundef %9) #6, !dbg !847
  %11 = icmp ne i32 %10, 0, !dbg !848
  %12 = zext i1 %11 to i8, !dbg !844
  store i8 %12, ptr %3, align 1, !dbg !844
  %13 = load i8, ptr %3, align 1, !dbg !849, !range !851, !noundef !225
  %14 = trunc i8 %13 to i1, !dbg !849
  br i1 %14, label %15, label %16, !dbg !852

15:                                               ; preds = %7
  store i32 1, ptr %4, align 4
  br label %35, !dbg !853

16:                                               ; preds = %7
  %17 = load ptr, ptr %2, align 4, !dbg !855
  %18 = getelementptr inbounds %struct.k_timer, ptr %17, i32 0, i32 3, !dbg !857
  %19 = load ptr, ptr %18, align 4, !dbg !857
  %20 = icmp ne ptr %19, null, !dbg !858
  br i1 %20, label %21, label %26, !dbg !859

21:                                               ; preds = %16
  %22 = load ptr, ptr %2, align 4, !dbg !860
  %23 = getelementptr inbounds %struct.k_timer, ptr %22, i32 0, i32 3, !dbg !862
  %24 = load ptr, ptr %23, align 4, !dbg !862
  %25 = load ptr, ptr %2, align 4, !dbg !863
  call void %24(ptr noundef %25) #6, !dbg !860
  br label %26, !dbg !864

26:                                               ; preds = %21, %16
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %5, metadata !836, metadata !DIExpression()), !dbg !866
  %27 = load ptr, ptr %2, align 4, !dbg !867
  %28 = getelementptr inbounds %struct.k_timer, ptr %27, i32 0, i32 1, !dbg !868
  %29 = call ptr @z_unpend1_no_timeout(ptr noundef %28) #6, !dbg !869
  store ptr %29, ptr %5, align 4, !dbg !866
  %30 = load ptr, ptr %5, align 4, !dbg !870
  %31 = icmp ne ptr %30, null, !dbg !872
  br i1 %31, label %32, label %34, !dbg !873

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4, !dbg !874
  call void @z_ready_thread(ptr noundef %33) #6, !dbg !876
  call void @z_reschedule_unlocked() #6, !dbg !877
  br label %34, !dbg !878

34:                                               ; preds = %32, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !879
  store i32 0, ptr %4, align 4, !dbg !880
  br label %35, !dbg !880

35:                                               ; preds = %34, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #7, !dbg !880
  %36 = load i32, ptr %4, align 4
  switch i32 %36, label %38 [
    i32 0, label %37
    i32 1, label %37
  ]

37:                                               ; preds = %35, %35
  ret void, !dbg !880

38:                                               ; preds = %35
  unreachable
}

; Function Attrs: optsize
declare !dbg !881 dso_local ptr @z_unpend1_no_timeout(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal void @z_reschedule_unlocked() #0 !dbg !882 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7, !dbg !885
  call void @llvm.dbg.declare(metadata ptr %1, metadata !463, metadata !DIExpression()), !dbg !887
  %2 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !888, !srcloc !467
  store i32 %2, ptr %1, align 4, !dbg !888
  %3 = load i32, ptr %1, align 4, !dbg !889
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7, !dbg !890
  call void @z_reschedule_irqlock(i32 noundef %3) #6, !dbg !891
  ret void, !dbg !892
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_timer_status_get(ptr noundef %0) #1 !dbg !893 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !897, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %11, metadata !898, metadata !DIExpression()), !dbg !902
  store ptr @lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !446, metadata !DIExpression()), !dbg !903
  %13 = load ptr, ptr %9, align 4, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %8, metadata !452, metadata !DIExpression()), !dbg !906
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %5, metadata !463, metadata !DIExpression()), !dbg !909
  %14 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !910, !srcloc !467
  store i32 %14, ptr %5, align 4, !dbg !910
  %15 = load i32, ptr %5, align 4, !dbg !911
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !912
  store i32 %15, ptr %8, align 4, !dbg !913
  %16 = load ptr, ptr %9, align 4, !dbg !914
  store ptr %16, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !472, metadata !DIExpression()), !dbg !915
  %17 = load ptr, ptr %4, align 4, !dbg !917
  %18 = load ptr, ptr %9, align 4, !dbg !918
  store ptr %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !481, metadata !DIExpression()), !dbg !919
  %19 = load ptr, ptr %3, align 4, !dbg !921
  %20 = load i32, ptr %8, align 4, !dbg !922
  %21 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !923
  store i32 %20, ptr %21, align 4, !dbg !923
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7, !dbg !924
  call void @llvm.dbg.declare(metadata ptr %12, metadata !899, metadata !DIExpression()), !dbg !925
  %22 = load ptr, ptr %10, align 4, !dbg !926
  %23 = getelementptr inbounds %struct.k_timer, ptr %22, i32 0, i32 5, !dbg !927
  %24 = load i32, ptr %23, align 8, !dbg !927
  store i32 %24, ptr %12, align 4, !dbg !925
  %25 = load ptr, ptr %10, align 4, !dbg !928
  %26 = getelementptr inbounds %struct.k_timer, ptr %25, i32 0, i32 5, !dbg !929
  store i32 0, ptr %26, align 8, !dbg !930
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !931
  %28 = load [1 x i32], ptr %27, align 4, !dbg !931
  store [1 x i32] %28, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !496, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.declare(metadata ptr %6, metadata !501, metadata !DIExpression()), !dbg !934
  %29 = load ptr, ptr %7, align 4, !dbg !935
  %30 = load i32, ptr %6, align 4, !dbg !936
  store i32 %30, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !507, metadata !DIExpression()), !dbg !937
  %31 = load i32, ptr %2, align 4, !dbg !939
  %32 = icmp ne i32 %31, 0, !dbg !940
  br i1 %32, label %33, label %34, !dbg !941

33:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !942

34:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !943, !srcloc !521
  br label %arch_irq_unlock.exit, !dbg !944

arch_irq_unlock.exit:                             ; preds = %33, %34
  %35 = load i32, ptr %12, align 4, !dbg !945
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7, !dbg !946
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7, !dbg !946
  ret i32 %35, !dbg !947
}

; Function Attrs: nounwind optsize
define hidden i32 @z_impl_k_timer_status_sync(ptr noundef %0) #1 !dbg !948 {
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
  call void @llvm.dbg.declare(metadata ptr %15, metadata !950, metadata !DIExpression()), !dbg !953
  br label %20, !dbg !954

20:                                               ; preds = %1
  br label %21, !dbg !955

21:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %16, metadata !951, metadata !DIExpression()), !dbg !958
  store ptr @lock, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !446, metadata !DIExpression()), !dbg !959
  %22 = load ptr, ptr %12, align 4, !dbg !961
  call void @llvm.dbg.declare(metadata ptr %11, metadata !452, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %8, metadata !463, metadata !DIExpression()), !dbg !965
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !966, !srcloc !467
  store i32 %23, ptr %8, align 4, !dbg !966
  %24 = load i32, ptr %8, align 4, !dbg !967
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7, !dbg !968
  store i32 %24, ptr %11, align 4, !dbg !969
  %25 = load ptr, ptr %12, align 4, !dbg !970
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !472, metadata !DIExpression()), !dbg !971
  %26 = load ptr, ptr %6, align 4, !dbg !973
  %27 = load ptr, ptr %12, align 4, !dbg !974
  store ptr %27, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !975
  %28 = load ptr, ptr %4, align 4, !dbg !977
  %29 = load i32, ptr %11, align 4, !dbg !978
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !979
  store i32 %29, ptr %30, align 4, !dbg !979
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %17, metadata !952, metadata !DIExpression()), !dbg !981
  %31 = load ptr, ptr %15, align 4, !dbg !982
  %32 = getelementptr inbounds %struct.k_timer, ptr %31, i32 0, i32 5, !dbg !983
  %33 = load i32, ptr %32, align 8, !dbg !983
  store i32 %33, ptr %17, align 4, !dbg !981
  %34 = load i32, ptr %17, align 4, !dbg !984
  %35 = icmp eq i32 %34, 0, !dbg !986
  br i1 %35, label %36, label %66, !dbg !987

36:                                               ; preds = %21
  %37 = load ptr, ptr %15, align 4, !dbg !988
  %38 = getelementptr inbounds %struct.k_timer, ptr %37, i32 0, i32 0, !dbg !991
  %39 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %38) #6, !dbg !992
  br i1 %39, label %64, label %40, !dbg !993

40:                                               ; preds = %36
  br label %41, !dbg !994

41:                                               ; preds = %40
  br label %42, !dbg !996

42:                                               ; preds = %41
  br label %43, !dbg !996

43:                                               ; preds = %42
  %44 = load ptr, ptr %15, align 4, !dbg !998
  %45 = getelementptr inbounds %struct.k_timer, ptr %44, i32 0, i32 1, !dbg !999
  %46 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !1000
  store i64 -1, ptr %46, align 8, !dbg !1000
  %47 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1001
  %48 = load [1 x i32], ptr %47, align 4, !dbg !1001
  %49 = getelementptr inbounds %struct.k_timeout_t, ptr %18, i32 0, i32 0, !dbg !1001
  %50 = load [1 x i64], ptr %49, align 8, !dbg !1001
  %51 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %48, ptr noundef %45, [1 x i64] %50) #6, !dbg !1001
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7, !dbg !1002
  store ptr @lock, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !446, metadata !DIExpression()), !dbg !1003
  %52 = load ptr, ptr %14, align 4, !dbg !1005
  call void @llvm.dbg.declare(metadata ptr %13, metadata !452, metadata !DIExpression()), !dbg !1006
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7, !dbg !1007
  call void @llvm.dbg.declare(metadata ptr %7, metadata !463, metadata !DIExpression()), !dbg !1009
  %53 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #7, !dbg !1010, !srcloc !467
  store i32 %53, ptr %7, align 4, !dbg !1010
  %54 = load i32, ptr %7, align 4, !dbg !1011
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7, !dbg !1012
  store i32 %54, ptr %13, align 4, !dbg !1013
  %55 = load ptr, ptr %14, align 4, !dbg !1014
  store ptr %55, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !472, metadata !DIExpression()), !dbg !1015
  %56 = load ptr, ptr %5, align 4, !dbg !1017
  %57 = load ptr, ptr %14, align 4, !dbg !1018
  store ptr %57, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !481, metadata !DIExpression()), !dbg !1019
  %58 = load ptr, ptr %3, align 4, !dbg !1021
  %59 = load i32, ptr %13, align 4, !dbg !1022
  %60 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1002
  store i32 %59, ptr %60, align 4, !dbg !1002
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %19, i32 4, i1 false), !dbg !1002
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7, !dbg !1002
  %61 = load ptr, ptr %15, align 4, !dbg !1023
  %62 = getelementptr inbounds %struct.k_timer, ptr %61, i32 0, i32 5, !dbg !1024
  %63 = load i32, ptr %62, align 8, !dbg !1024
  store i32 %63, ptr %17, align 4, !dbg !1025
  br label %65, !dbg !1026

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %43
  br label %67, !dbg !1027

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66, %65
  %68 = load ptr, ptr %15, align 4, !dbg !1028
  %69 = getelementptr inbounds %struct.k_timer, ptr %68, i32 0, i32 5, !dbg !1029
  store i32 0, ptr %69, align 8, !dbg !1030
  %70 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1031
  %71 = load [1 x i32], ptr %70, align 4, !dbg !1031
  store [1 x i32] %71, ptr %9, align 4
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !496, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !1034
  %72 = load ptr, ptr %10, align 4, !dbg !1035
  %73 = load i32, ptr %9, align 4, !dbg !1036
  store i32 %73, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !507, metadata !DIExpression()), !dbg !1037
  %74 = load i32, ptr %2, align 4, !dbg !1039
  %75 = icmp ne i32 %74, 0, !dbg !1040
  br i1 %75, label %76, label %77, !dbg !1041

76:                                               ; preds = %67
  br label %arch_irq_unlock.exit, !dbg !1042

77:                                               ; preds = %67
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #7, !dbg !1043, !srcloc !521
  br label %arch_irq_unlock.exit, !dbg !1044

arch_irq_unlock.exit:                             ; preds = %76, %77
  br label %78, !dbg !1045

78:                                               ; preds = %arch_irq_unlock.exit
  br label %79, !dbg !1046

79:                                               ; preds = %78
  br label %80, !dbg !1046

80:                                               ; preds = %79
  %81 = load i32, ptr %17, align 4, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7, !dbg !1049
  ret i32 %81, !dbg !1050
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !1051 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1057, metadata !DIExpression()), !dbg !1058
  %3 = load ptr, ptr %2, align 4, !dbg !1059
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1060
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4) #6, !dbg !1061
  %6 = xor i1 %5, true, !dbg !1062
  ret i1 %6, !dbg !1063
}

; Function Attrs: optsize
declare !dbg !1064 dso_local i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #5

; Function Attrs: optsize
declare !dbg !1067 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !1070 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1071 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1076, metadata !DIExpression()), !dbg !1077
  %3 = load ptr, ptr %2, align 4, !dbg !1078
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !1079
  %5 = icmp eq ptr %4, null, !dbg !1080
  ret i1 %5, !dbg !1081
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1082 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1086, metadata !DIExpression()), !dbg !1087
  %3 = load ptr, ptr %2, align 4, !dbg !1088
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1089
  %5 = load ptr, ptr %4, align 4, !dbg !1089
  ret ptr %5, !dbg !1090
}

; Function Attrs: optsize
declare !dbg !1091 dso_local i64 @z_impl_k_uptime_ticks() #5

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1092 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1097, metadata !DIExpression()), !dbg !1098
  %3 = load ptr, ptr %2, align 4, !dbg !1099
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #6, !dbg !1100
  br i1 %4, label %5, label %6, !dbg !1100

5:                                                ; preds = %1
  br label %10, !dbg !1100

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1101
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1102
  %9 = load ptr, ptr %8, align 4, !dbg !1102
  br label %10, !dbg !1100

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1100
  ret ptr %11, !dbg !1103
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1104 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1108, metadata !DIExpression()), !dbg !1109
  %3 = load ptr, ptr %2, align 4, !dbg !1110
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1111
  %5 = load ptr, ptr %4, align 4, !dbg !1111
  %6 = load ptr, ptr %2, align 4, !dbg !1112
  %7 = icmp eq ptr %5, %6, !dbg !1113
  ret i1 %7, !dbg !1114
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !1115 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1119, metadata !DIExpression()), !dbg !1120
  %3 = load ptr, ptr %2, align 4, !dbg !1121
  %4 = load ptr, ptr %2, align 4, !dbg !1122
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !1123
  store ptr %3, ptr %5, align 4, !dbg !1124
  %6 = load ptr, ptr %2, align 4, !dbg !1125
  %7 = load ptr, ptr %2, align 4, !dbg !1126
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !1127
  store ptr %6, ptr %8, align 4, !dbg !1128
  ret void, !dbg !1129
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !1130 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1134, metadata !DIExpression()), !dbg !1135
  %3 = load ptr, ptr %2, align 4, !dbg !1136
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1137
  store ptr null, ptr %4, align 4, !dbg !1138
  %5 = load ptr, ptr %2, align 4, !dbg !1139
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1140
  store ptr null, ptr %6, align 4, !dbg !1141
  ret void, !dbg !1142
}

; Function Attrs: optsize
declare !dbg !1143 dso_local void @z_reschedule_irqlock(i32 noundef) #5

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !233, line: 16, type: !223, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !232, splitDebugInlining: false, nameTableKind: None)
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
!240 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!241 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !242, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !244, !149}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "object", arg: 1, scope: !241, file: !6, line: 223, type: !244)
!248 = !DILocalVariable(name: "thread", arg: 2, scope: !241, file: !6, line: 224, type: !149)
!249 = !DILocation(line: 223, column: 61, scope: !241)
!250 = !DILocation(line: 224, column: 24, scope: !241)
!251 = !DILocation(line: 226, column: 9, scope: !241)
!252 = !DILocation(line: 227, column: 9, scope: !241)
!253 = !DILocation(line: 228, column: 1, scope: !241)
!254 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !255, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !244}
!257 = !{!258}
!258 = !DILocalVariable(name: "object", arg: 1, scope: !254, file: !6, line: 243, type: !244)
!259 = !DILocation(line: 243, column: 56, scope: !254)
!260 = !DILocation(line: 245, column: 9, scope: !254)
!261 = !DILocation(line: 246, column: 1, scope: !254)
!262 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !263, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!145, !5}
!265 = !{!266}
!266 = !DILocalVariable(name: "otype", arg: 1, scope: !262, file: !6, line: 359, type: !5)
!267 = !DILocation(line: 359, column: 58, scope: !262)
!268 = !DILocation(line: 361, column: 9, scope: !262)
!269 = !DILocation(line: 363, column: 2, scope: !262)
!270 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !271, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !273)
!271 = !DISubroutineType(types: !272)
!272 = !{!145, !5, !219}
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "otype", arg: 1, scope: !270, file: !6, line: 366, type: !5)
!275 = !DILocalVariable(name: "size", arg: 2, scope: !270, file: !6, line: 367, type: !219)
!276 = !DILocation(line: 366, column: 63, scope: !270)
!277 = !DILocation(line: 367, column: 13, scope: !270)
!278 = !DILocation(line: 369, column: 9, scope: !270)
!279 = !DILocation(line: 370, column: 9, scope: !270)
!280 = !DILocation(line: 372, column: 2, scope: !270)
!281 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !91, file: !91, line: 656, type: !282, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!282 = !DISubroutineType(types: !283)
!283 = !{!140, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!286 = !{!287}
!287 = !DILocalVariable(name: "t", arg: 1, scope: !281, file: !91, line: 657, type: !284)
!288 = !DILocation(line: 657, column: 30, scope: !281)
!289 = !DILocation(line: 659, column: 28, scope: !281)
!290 = !DILocation(line: 659, column: 31, scope: !281)
!291 = !DILocation(line: 659, column: 36, scope: !281)
!292 = !DILocation(line: 659, column: 9, scope: !281)
!293 = !DILocation(line: 659, column: 2, scope: !281)
!294 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !91, file: !91, line: 671, type: !282, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "t", arg: 1, scope: !294, file: !91, line: 672, type: !284)
!297 = !DILocation(line: 672, column: 30, scope: !294)
!298 = !DILocation(line: 674, column: 30, scope: !294)
!299 = !DILocation(line: 674, column: 33, scope: !294)
!300 = !DILocation(line: 674, column: 38, scope: !294)
!301 = !DILocation(line: 674, column: 9, scope: !294)
!302 = !DILocation(line: 674, column: 2, scope: !294)
!303 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !91, file: !91, line: 1634, type: !304, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!304 = !DISubroutineType(types: !305)
!305 = !{!140, !306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!308 = !{!309}
!309 = !DILocalVariable(name: "timer", arg: 1, scope: !303, file: !91, line: 1635, type: !306)
!310 = !DILocation(line: 1635, column: 34, scope: !303)
!311 = !DILocation(line: 1637, column: 28, scope: !303)
!312 = !DILocation(line: 1637, column: 35, scope: !303)
!313 = !DILocation(line: 1637, column: 9, scope: !303)
!314 = !DILocation(line: 1637, column: 2, scope: !303)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !91, file: !91, line: 1649, type: !304, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!316 = !{!317}
!317 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !91, line: 1650, type: !306)
!318 = !DILocation(line: 1650, column: 34, scope: !315)
!319 = !DILocation(line: 1652, column: 30, scope: !315)
!320 = !DILocation(line: 1652, column: 37, scope: !315)
!321 = !DILocation(line: 1652, column: 9, scope: !315)
!322 = !DILocation(line: 1652, column: 2, scope: !315)
!323 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !91, file: !91, line: 1689, type: !324, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !89, !145}
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !323, file: !91, line: 1689, type: !89)
!328 = !DILocalVariable(name: "user_data", arg: 2, scope: !323, file: !91, line: 1690, type: !145)
!329 = !DILocation(line: 1689, column: 65, scope: !323)
!330 = !DILocation(line: 1690, column: 19, scope: !323)
!331 = !DILocation(line: 1692, column: 21, scope: !323)
!332 = !DILocation(line: 1692, column: 2, scope: !323)
!333 = !DILocation(line: 1692, column: 9, scope: !323)
!334 = !DILocation(line: 1692, column: 19, scope: !323)
!335 = !DILocation(line: 1693, column: 1, scope: !323)
!336 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !91, file: !91, line: 1704, type: !337, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!145, !306}
!339 = !{!340}
!340 = !DILocalVariable(name: "timer", arg: 1, scope: !336, file: !91, line: 1704, type: !306)
!341 = !DILocation(line: 1704, column: 72, scope: !336)
!342 = !DILocation(line: 1706, column: 9, scope: !336)
!343 = !DILocation(line: 1706, column: 16, scope: !336)
!344 = !DILocation(line: 1706, column: 2, scope: !336)
!345 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !91, file: !91, line: 2071, type: !346, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!346 = !DISubroutineType(types: !347)
!347 = !{!148, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !91, line: 1830, size: 128, elements: !350)
!350 = !{!351, !364, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !349, file: !91, line: 1831, baseType: !352, size: 64)
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
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !353, line: 40, baseType: !142)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !353, line: 55, baseType: !357, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !91, line: 1832, baseType: !223, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !349, file: !91, line: 1833, baseType: !124, size: 64, offset: 64)
!366 = !{!367}
!367 = !DILocalVariable(name: "queue", arg: 1, scope: !345, file: !91, line: 2071, type: !348)
!368 = !DILocation(line: 2071, column: 59, scope: !345)
!369 = !DILocation(line: 2073, column: 35, scope: !345)
!370 = !DILocation(line: 2073, column: 42, scope: !345)
!371 = !DILocation(line: 2073, column: 14, scope: !345)
!372 = !DILocation(line: 2073, column: 9, scope: !345)
!373 = !DILocation(line: 2073, column: 2, scope: !345)
!374 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !91, file: !91, line: 3209, type: !375, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!375 = !DISubroutineType(types: !376)
!376 = !{!143, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !91, line: 3092, size: 128, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !91, line: 3093, baseType: !124, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !378, file: !91, line: 3094, baseType: !143, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !378, file: !91, line: 3095, baseType: !143, size: 32, offset: 96)
!383 = !{!384}
!384 = !DILocalVariable(name: "sem", arg: 1, scope: !374, file: !91, line: 3209, type: !377)
!385 = !DILocation(line: 3209, column: 65, scope: !374)
!386 = !DILocation(line: 3211, column: 9, scope: !374)
!387 = !DILocation(line: 3211, column: 14, scope: !374)
!388 = !DILocation(line: 3211, column: 2, scope: !374)
!389 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !91, file: !91, line: 4649, type: !390, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!390 = !DISubroutineType(types: !391)
!391 = !{!142, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !91, line: 4390, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !91, line: 4392, baseType: !124, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !91, line: 4394, baseType: !223, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !393, file: !91, line: 4396, baseType: !219, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !393, file: !91, line: 4398, baseType: !142, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !393, file: !91, line: 4400, baseType: !146, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !393, file: !91, line: 4402, baseType: !146, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !393, file: !91, line: 4404, baseType: !146, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !393, file: !91, line: 4406, baseType: !146, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !393, file: !91, line: 4408, baseType: !142, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !91, line: 4413, baseType: !172, size: 8, offset: 288)
!405 = !{!406}
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !389, file: !91, line: 4649, type: !392)
!407 = !DILocation(line: 4649, column: 66, scope: !389)
!408 = !DILocation(line: 4651, column: 9, scope: !389)
!409 = !DILocation(line: 4651, column: 15, scope: !389)
!410 = !DILocation(line: 4651, column: 26, scope: !389)
!411 = !DILocation(line: 4651, column: 32, scope: !389)
!412 = !DILocation(line: 4651, column: 24, scope: !389)
!413 = !DILocation(line: 4651, column: 2, scope: !389)
!414 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !91, file: !91, line: 4665, type: !390, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !414, file: !91, line: 4665, type: !392)
!417 = !DILocation(line: 4665, column: 66, scope: !414)
!418 = !DILocation(line: 4667, column: 9, scope: !414)
!419 = !DILocation(line: 4667, column: 15, scope: !414)
!420 = !DILocation(line: 4667, column: 2, scope: !414)
!421 = distinct !DISubprogram(name: "z_timer_expiration_handler", scope: !233, file: !233, line: 27, type: !116, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425, !426, !431}
!423 = !DILocalVariable(name: "t", arg: 1, scope: !421, file: !233, line: 27, type: !118)
!424 = !DILocalVariable(name: "timer", scope: !421, file: !233, line: 29, type: !89)
!425 = !DILocalVariable(name: "thread", scope: !421, file: !233, line: 30, type: !149)
!426 = !DILocalVariable(name: "key", scope: !421, file: !233, line: 31, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !224, line: 108, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !224, line: 34, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !428, file: !224, line: 35, baseType: !148, size: 32)
!431 = !DILocalVariable(name: "next", scope: !432, file: !233, line: 57, type: !135)
!432 = distinct !DILexicalBlock(scope: !433, file: !233, line: 56, column: 91)
!433 = distinct !DILexicalBlock(scope: !421, file: !233, line: 55, column: 6)
!434 = !DILocation(line: 27, column: 50, scope: !421)
!435 = !DILocation(line: 29, column: 2, scope: !421)
!436 = !DILocation(line: 29, column: 18, scope: !421)
!437 = !DILocation(line: 29, column: 61, scope: !438)
!438 = distinct !DILexicalBlock(scope: !421, file: !233, line: 29, column: 27)
!439 = !DILocation(line: 29, column: 65, scope: !438)
!440 = !DILocation(line: 29, column: 27, scope: !421)
!441 = !DILocation(line: 29, column: 114, scope: !438)
!442 = !DILocation(line: 30, column: 2, scope: !421)
!443 = !DILocation(line: 30, column: 19, scope: !421)
!444 = !DILocation(line: 31, column: 2, scope: !421)
!445 = !DILocation(line: 31, column: 19, scope: !421)
!446 = !DILocalVariable(name: "l", arg: 1, scope: !447, file: !224, line: 160, type: !450)
!447 = distinct !DISubprogram(name: "k_spin_lock", scope: !224, file: !224, line: 160, type: !448, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !451)
!448 = !DISubroutineType(types: !449)
!449 = !{!427, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!451 = !{!446, !452}
!452 = !DILocalVariable(name: "k", scope: !447, file: !224, line: 163, type: !427)
!453 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !454)
!454 = distinct !DILocation(line: 31, column: 25, scope: !421)
!455 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !454)
!456 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !454)
!457 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !464)
!458 = distinct !DISubprogram(name: "arch_irq_lock", scope: !459, file: !459, line: 42, type: !460, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!459 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!460 = !DISubroutineType(types: !461)
!461 = !{!143}
!462 = !{!463}
!463 = !DILocalVariable(name: "key", scope: !458, file: !459, line: 44, type: !143)
!464 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !454)
!465 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !464)
!466 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !464)
!467 = !{i64 66898}
!468 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !464)
!469 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !464)
!470 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !454)
!471 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !454)
!472 = !DILocalVariable(name: "l", arg: 1, scope: !473, file: !224, line: 110, type: !450)
!473 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !224, file: !224, line: 110, type: !474, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !450}
!476 = !{!472}
!477 = !DILocation(line: 110, column: 94, scope: !473, inlinedAt: !478)
!478 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !454)
!479 = !DILocation(line: 112, column: 9, scope: !473, inlinedAt: !478)
!480 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !454)
!481 = !DILocalVariable(name: "l", arg: 1, scope: !482, file: !224, line: 121, type: !450)
!482 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !224, file: !224, line: 121, type: !474, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !483)
!483 = !{!481}
!484 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !485)
!485 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !454)
!486 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !485)
!487 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !454)
!488 = !DILocation(line: 31, column: 25, scope: !421)
!489 = !DILocation(line: 46, column: 27, scope: !490)
!490 = distinct !DILexicalBlock(scope: !421, file: !233, line: 46, column: 6)
!491 = !DILocation(line: 46, column: 30, scope: !490)
!492 = !DILocation(line: 46, column: 6, scope: !490)
!493 = !DILocation(line: 46, column: 6, scope: !421)
!494 = !DILocation(line: 47, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !233, line: 46, column: 37)
!496 = !DILocalVariable(name: "l", arg: 1, scope: !497, file: !224, line: 235, type: !450)
!497 = distinct !DISubprogram(name: "k_spin_unlock", scope: !224, file: !224, line: 235, type: !498, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !450, !427}
!500 = !{!496, !501}
!501 = !DILocalVariable(name: "key", arg: 2, scope: !497, file: !224, line: 236, type: !427)
!502 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !503)
!503 = distinct !DILocation(line: 47, column: 3, scope: !495)
!504 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !503)
!505 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !503)
!506 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !503)
!507 = !DILocalVariable(name: "key", arg: 1, scope: !508, file: !459, line: 88, type: !143)
!508 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !459, file: !459, line: 88, type: !509, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !143}
!511 = !{!507}
!512 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !513)
!513 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !503)
!514 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !513)
!515 = distinct !DILexicalBlock(scope: !508, file: !459, line: 91, column: 6)
!516 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !513)
!517 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !513)
!518 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !513)
!519 = distinct !DILexicalBlock(scope: !515, file: !459, line: 91, column: 17)
!520 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !513)
!521 = !{i64 67202}
!522 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !513)
!523 = !DILocation(line: 48, column: 3, scope: !495)
!524 = !DILocation(line: 55, column: 9, scope: !433)
!525 = !DILocation(line: 55, column: 16, scope: !433)
!526 = !DILocation(line: 55, column: 24, scope: !433)
!527 = !DILocation(line: 55, column: 49, scope: !433)
!528 = !DILocation(line: 55, column: 30, scope: !433)
!529 = !DILocation(line: 55, column: 62, scope: !433)
!530 = !DILocation(line: 56, column: 9, scope: !433)
!531 = !DILocation(line: 56, column: 16, scope: !433)
!532 = !DILocation(line: 56, column: 24, scope: !433)
!533 = !DILocation(line: 56, column: 49, scope: !433)
!534 = !DILocation(line: 56, column: 30, scope: !433)
!535 = !DILocation(line: 55, column: 6, scope: !421)
!536 = !DILocation(line: 57, column: 3, scope: !432)
!537 = !DILocation(line: 57, column: 15, scope: !432)
!538 = !DILocation(line: 57, column: 22, scope: !432)
!539 = !DILocation(line: 57, column: 29, scope: !432)
!540 = !DILocation(line: 60, column: 24, scope: !432)
!541 = !DILocation(line: 60, column: 30, scope: !432)
!542 = !DILocation(line: 60, column: 35, scope: !432)
!543 = !DILocation(line: 60, column: 17, scope: !432)
!544 = !DILocation(line: 60, column: 50, scope: !432)
!545 = !DILocation(line: 60, column: 56, scope: !432)
!546 = !DILocation(line: 60, column: 8, scope: !432)
!547 = !DILocation(line: 60, column: 14, scope: !432)
!548 = !DILocation(line: 74, column: 25, scope: !432)
!549 = !DILocation(line: 74, column: 76, scope: !432)
!550 = !DILocation(line: 74, column: 93, scope: !432)
!551 = !DILocation(line: 74, column: 104, scope: !432)
!552 = !DILocation(line: 74, column: 97, scope: !432)
!553 = !DILocation(line: 74, column: 111, scope: !432)
!554 = !DILocation(line: 74, column: 74, scope: !432)
!555 = !DILocation(line: 74, column: 121, scope: !432)
!556 = !DILocation(line: 74, column: 138, scope: !432)
!557 = !DILocation(line: 74, column: 149, scope: !432)
!558 = !DILocation(line: 74, column: 142, scope: !432)
!559 = !DILocation(line: 74, column: 59, scope: !432)
!560 = !DILocation(line: 74, column: 11, scope: !432)
!561 = !DILocation(line: 76, column: 18, scope: !432)
!562 = !DILocation(line: 76, column: 25, scope: !432)
!563 = !DILocation(line: 76, column: 3, scope: !432)
!564 = !DILocation(line: 78, column: 2, scope: !433)
!565 = !DILocation(line: 78, column: 2, scope: !432)
!566 = !DILocation(line: 81, column: 2, scope: !421)
!567 = !DILocation(line: 81, column: 9, scope: !421)
!568 = !DILocation(line: 81, column: 16, scope: !421)
!569 = !DILocation(line: 84, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !421, file: !233, line: 84, column: 6)
!571 = !DILocation(line: 84, column: 13, scope: !570)
!572 = !DILocation(line: 84, column: 23, scope: !570)
!573 = !DILocation(line: 84, column: 6, scope: !421)
!574 = !DILocation(line: 86, column: 3, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !233, line: 84, column: 29)
!576 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !577)
!577 = distinct !DILocation(line: 86, column: 3, scope: !575)
!578 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !577)
!579 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !577)
!580 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !577)
!581 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !582)
!582 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !577)
!583 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !582)
!584 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !582)
!585 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !582)
!586 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !582)
!587 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !582)
!588 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !582)
!589 = !DILocation(line: 87, column: 3, scope: !575)
!590 = !DILocation(line: 87, column: 10, scope: !575)
!591 = !DILocation(line: 87, column: 20, scope: !575)
!592 = !DILocation(line: 88, column: 9, scope: !575)
!593 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !594)
!594 = distinct !DILocation(line: 88, column: 9, scope: !575)
!595 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !594)
!596 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !594)
!597 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !598)
!598 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !594)
!599 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !598)
!600 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !598)
!601 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !598)
!602 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !598)
!603 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !594)
!604 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !594)
!605 = !DILocation(line: 110, column: 94, scope: !473, inlinedAt: !606)
!606 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !594)
!607 = !DILocation(line: 112, column: 9, scope: !473, inlinedAt: !606)
!608 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !594)
!609 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !610)
!610 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !594)
!611 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !610)
!612 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !594)
!613 = !DILocation(line: 89, column: 2, scope: !575)
!614 = !DILocation(line: 96, column: 25, scope: !421)
!615 = !DILocation(line: 96, column: 32, scope: !421)
!616 = !DILocation(line: 96, column: 11, scope: !421)
!617 = !DILocation(line: 96, column: 9, scope: !421)
!618 = !DILocation(line: 98, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !421, file: !233, line: 98, column: 6)
!620 = !DILocation(line: 98, column: 13, scope: !619)
!621 = !DILocation(line: 98, column: 6, scope: !421)
!622 = !DILocation(line: 99, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !619, file: !233, line: 98, column: 19)
!624 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !625)
!625 = distinct !DILocation(line: 99, column: 3, scope: !623)
!626 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !625)
!627 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !625)
!628 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !625)
!629 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !630)
!630 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !625)
!631 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !630)
!632 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !630)
!633 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !630)
!634 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !630)
!635 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !630)
!636 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !630)
!637 = !DILocation(line: 100, column: 3, scope: !623)
!638 = !DILocation(line: 103, column: 29, scope: !421)
!639 = !DILocation(line: 103, column: 2, scope: !421)
!640 = !DILocation(line: 105, column: 31, scope: !421)
!641 = !DILocalVariable(name: "thread", arg: 1, scope: !642, file: !643, line: 59, type: !149)
!642 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !643, file: !643, line: 59, type: !644, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!643 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!644 = !DISubroutineType(types: !645)
!645 = !{null, !149, !143}
!646 = !{!641, !647}
!647 = !DILocalVariable(name: "value", arg: 2, scope: !642, file: !643, line: 59, type: !143)
!648 = !DILocation(line: 59, column: 47, scope: !642, inlinedAt: !649)
!649 = distinct !DILocation(line: 105, column: 2, scope: !421)
!650 = !DILocation(line: 59, column: 68, scope: !642, inlinedAt: !649)
!651 = !DILocation(line: 61, column: 35, scope: !642, inlinedAt: !649)
!652 = !DILocation(line: 61, column: 2, scope: !642, inlinedAt: !649)
!653 = !DILocation(line: 61, column: 10, scope: !642, inlinedAt: !649)
!654 = !DILocation(line: 61, column: 15, scope: !642, inlinedAt: !649)
!655 = !DILocation(line: 61, column: 33, scope: !642, inlinedAt: !649)
!656 = !DILocation(line: 107, column: 2, scope: !421)
!657 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !658)
!658 = distinct !DILocation(line: 107, column: 2, scope: !421)
!659 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !658)
!660 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !658)
!661 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !658)
!662 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !663)
!663 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !658)
!664 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !663)
!665 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !663)
!666 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !663)
!667 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !663)
!668 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !663)
!669 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !663)
!670 = !DILocation(line: 109, column: 17, scope: !421)
!671 = !DILocation(line: 109, column: 2, scope: !421)
!672 = !DILocation(line: 110, column: 1, scope: !421)
!673 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !99, file: !99, line: 234, type: !674, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !679)
!674 = !DISubroutineType(types: !675)
!675 = !{!676, !677}
!676 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!679 = !{!680}
!680 = !DILocalVariable(name: "node", arg: 1, scope: !673, file: !99, line: 234, type: !677)
!681 = !DILocation(line: 234, column: 60, scope: !673)
!682 = !DILocation(line: 236, column: 9, scope: !673)
!683 = !DILocation(line: 236, column: 15, scope: !673)
!684 = !DILocation(line: 236, column: 20, scope: !673)
!685 = !DILocation(line: 236, column: 2, scope: !673)
!686 = distinct !DISubprogram(name: "k_uptime_ticks", scope: !687, file: !687, line: 599, type: !688, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!687 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!688 = !DISubroutineType(types: !689)
!689 = !{!120}
!690 = !DILocation(line: 608, column: 2, scope: !686)
!691 = !DILocation(line: 608, column: 7, scope: !692)
!692 = distinct !DILexicalBlock(scope: !686, file: !687, line: 608, column: 5)
!693 = !{i64 141563}
!694 = !DILocation(line: 608, column: 47, scope: !692)
!695 = !DILocation(line: 609, column: 9, scope: !686)
!696 = !DILocation(line: 609, column: 2, scope: !686)
!697 = !DISubprogram(name: "z_add_timeout", scope: !698, file: !698, line: 30, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!698 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!699 = !DISubroutineType(types: !700)
!700 = !{null, !118, !114, !135}
!701 = distinct !DISubprogram(name: "z_waitq_head", scope: !702, file: !702, line: 52, type: !703, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!702 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!703 = !DISubroutineType(types: !704)
!704 = !{!149, !170}
!705 = !{!706}
!706 = !DILocalVariable(name: "w", arg: 1, scope: !701, file: !702, line: 52, type: !170)
!707 = !DILocation(line: 52, column: 56, scope: !701)
!708 = !DILocation(line: 54, column: 49, scope: !701)
!709 = !DILocation(line: 54, column: 52, scope: !701)
!710 = !DILocation(line: 54, column: 28, scope: !701)
!711 = !DILocation(line: 54, column: 2, scope: !701)
!712 = !DISubprogram(name: "z_unpend_thread_no_timeout", scope: !713, file: !713, line: 44, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!713 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!714 = !DISubroutineType(types: !715)
!715 = !{null, !149}
!716 = !DISubprogram(name: "z_ready_thread", scope: !713, file: !713, line: 65, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!717 = distinct !DISubprogram(name: "k_timer_init", scope: !233, file: !233, line: 113, type: !718, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !722)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !89, !720, !721}
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timer_expiry_t", file: !91, line: 1506, baseType: !130)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timer_stop_t", file: !91, line: 1522, baseType: !130)
!722 = !{!723, !724, !725}
!723 = !DILocalVariable(name: "timer", arg: 1, scope: !717, file: !233, line: 113, type: !89)
!724 = !DILocalVariable(name: "expiry_fn", arg: 2, scope: !717, file: !233, line: 114, type: !720)
!725 = !DILocalVariable(name: "stop_fn", arg: 3, scope: !717, file: !233, line: 115, type: !721)
!726 = !DILocation(line: 113, column: 35, scope: !717)
!727 = !DILocation(line: 114, column: 22, scope: !717)
!728 = !DILocation(line: 115, column: 20, scope: !717)
!729 = !DILocation(line: 117, column: 21, scope: !717)
!730 = !DILocation(line: 117, column: 2, scope: !717)
!731 = !DILocation(line: 117, column: 9, scope: !717)
!732 = !DILocation(line: 117, column: 19, scope: !717)
!733 = !DILocation(line: 118, column: 19, scope: !717)
!734 = !DILocation(line: 118, column: 2, scope: !717)
!735 = !DILocation(line: 118, column: 9, scope: !717)
!736 = !DILocation(line: 118, column: 17, scope: !717)
!737 = !DILocation(line: 119, column: 2, scope: !717)
!738 = !DILocation(line: 119, column: 9, scope: !717)
!739 = !DILocation(line: 119, column: 16, scope: !717)
!740 = !DILocation(line: 122, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !233, line: 121, column: 9)
!742 = distinct !DILexicalBlock(scope: !717, file: !233, line: 121, column: 6)
!743 = !DILocation(line: 122, column: 24, scope: !741)
!744 = !DILocation(line: 122, column: 3, scope: !741)
!745 = !DILocation(line: 125, column: 18, scope: !717)
!746 = !DILocation(line: 125, column: 25, scope: !717)
!747 = !DILocation(line: 125, column: 2, scope: !717)
!748 = !DILocation(line: 127, column: 2, scope: !717)
!749 = !DILocation(line: 127, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !717, file: !233, line: 127, column: 5)
!751 = !DILocation(line: 129, column: 2, scope: !717)
!752 = !DILocation(line: 129, column: 9, scope: !717)
!753 = !DILocation(line: 129, column: 19, scope: !717)
!754 = !DILocation(line: 131, column: 16, scope: !717)
!755 = !DILocation(line: 131, column: 2, scope: !717)
!756 = !DILocation(line: 136, column: 1, scope: !717)
!757 = distinct !DISubprogram(name: "z_waitq_init", scope: !702, file: !702, line: 47, type: !758, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!758 = !DISubroutineType(types: !759)
!759 = !{null, !170}
!760 = !{!761}
!761 = !DILocalVariable(name: "w", arg: 1, scope: !757, file: !702, line: 47, type: !170)
!762 = !DILocation(line: 47, column: 44, scope: !757)
!763 = !DILocation(line: 49, column: 18, scope: !757)
!764 = !DILocation(line: 49, column: 21, scope: !757)
!765 = !DILocation(line: 49, column: 2, scope: !757)
!766 = !DILocation(line: 50, column: 1, scope: !757)
!767 = distinct !DISubprogram(name: "z_init_timeout", scope: !698, file: !698, line: 25, type: !116, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !768)
!768 = !{!769}
!769 = !DILocalVariable(name: "to", arg: 1, scope: !767, file: !698, line: 25, type: !118)
!770 = !DILocation(line: 25, column: 52, scope: !767)
!771 = !DILocation(line: 27, column: 18, scope: !767)
!772 = !DILocation(line: 27, column: 22, scope: !767)
!773 = !DILocation(line: 27, column: 2, scope: !767)
!774 = !DILocation(line: 28, column: 1, scope: !767)
!775 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !255, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !776)
!776 = !{!777}
!777 = !DILocalVariable(name: "obj", arg: 1, scope: !775, file: !6, line: 215, type: !244)
!778 = !DILocation(line: 215, column: 46, scope: !775)
!779 = !DILocation(line: 217, column: 9, scope: !775)
!780 = !DILocation(line: 218, column: 1, scope: !775)
!781 = distinct !DISubprogram(name: "z_impl_k_timer_start", scope: !233, file: !233, line: 139, type: !782, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !784)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !89, !135, !135}
!784 = !{!785, !786, !787}
!785 = !DILocalVariable(name: "timer", arg: 1, scope: !781, file: !233, line: 139, type: !89)
!786 = !DILocalVariable(name: "duration", arg: 2, scope: !781, file: !233, line: 139, type: !135)
!787 = !DILocalVariable(name: "period", arg: 3, scope: !781, file: !233, line: 140, type: !135)
!788 = !DILocation(line: 139, column: 43, scope: !781)
!789 = !DILocation(line: 139, column: 62, scope: !781)
!790 = !DILocation(line: 140, column: 18, scope: !781)
!791 = !DILocation(line: 142, column: 2, scope: !781)
!792 = !DILocation(line: 142, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !781, file: !233, line: 142, column: 5)
!794 = !DILocation(line: 144, column: 18, scope: !795)
!795 = distinct !DILexicalBlock(scope: !781, file: !233, line: 144, column: 6)
!796 = !DILocation(line: 144, column: 43, scope: !795)
!797 = !DILocation(line: 144, column: 24, scope: !795)
!798 = !DILocation(line: 144, column: 6, scope: !781)
!799 = !DILocation(line: 145, column: 3, scope: !800)
!800 = distinct !DILexicalBlock(scope: !795, file: !233, line: 144, column: 85)
!801 = !DILocation(line: 161, column: 40, scope: !802)
!802 = distinct !DILexicalBlock(scope: !781, file: !233, line: 161, column: 6)
!803 = !DILocation(line: 161, column: 28, scope: !802)
!804 = !DILocation(line: 161, column: 48, scope: !802)
!805 = !DILocation(line: 161, column: 6, scope: !781)
!806 = !DILocation(line: 162, column: 32, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !233, line: 161, column: 53)
!808 = !DILocation(line: 162, column: 38, scope: !807)
!809 = !DILocation(line: 162, column: 43, scope: !807)
!810 = !DILocation(line: 162, column: 21, scope: !807)
!811 = !DILocation(line: 162, column: 62, scope: !807)
!812 = !DILocation(line: 162, column: 68, scope: !807)
!813 = !DILocation(line: 162, column: 12, scope: !807)
!814 = !DILocation(line: 162, column: 18, scope: !807)
!815 = !DILocation(line: 163, column: 2, scope: !807)
!816 = !DILocation(line: 165, column: 25, scope: !781)
!817 = !DILocation(line: 165, column: 32, scope: !781)
!818 = !DILocation(line: 165, column: 8, scope: !781)
!819 = !DILocation(line: 166, column: 2, scope: !781)
!820 = !DILocation(line: 166, column: 9, scope: !781)
!821 = !DILocation(line: 166, column: 18, scope: !781)
!822 = !DILocation(line: 167, column: 2, scope: !781)
!823 = !DILocation(line: 167, column: 9, scope: !781)
!824 = !DILocation(line: 167, column: 16, scope: !781)
!825 = !DILocation(line: 169, column: 17, scope: !781)
!826 = !DILocation(line: 169, column: 24, scope: !781)
!827 = !DILocation(line: 169, column: 2, scope: !781)
!828 = !DILocation(line: 171, column: 1, scope: !781)
!829 = !DISubprogram(name: "z_abort_timeout", scope: !698, file: !698, line: 33, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!830 = !DISubroutineType(types: !831)
!831 = !{!148, !118}
!832 = distinct !DISubprogram(name: "z_impl_k_timer_stop", scope: !233, file: !233, line: 184, type: !131, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "timer", arg: 1, scope: !832, file: !233, line: 184, type: !89)
!835 = !DILocalVariable(name: "inactive", scope: !832, file: !233, line: 188, type: !676)
!836 = !DILocalVariable(name: "pending_thread", scope: !837, file: !233, line: 199, type: !149)
!837 = distinct !DILexicalBlock(scope: !838, file: !233, line: 198, column: 9)
!838 = distinct !DILexicalBlock(scope: !832, file: !233, line: 198, column: 6)
!839 = !DILocation(line: 184, column: 42, scope: !832)
!840 = !DILocation(line: 186, column: 2, scope: !832)
!841 = !DILocation(line: 186, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !832, file: !233, line: 186, column: 5)
!843 = !DILocation(line: 188, column: 2, scope: !832)
!844 = !DILocation(line: 188, column: 8, scope: !832)
!845 = !DILocation(line: 188, column: 37, scope: !832)
!846 = !DILocation(line: 188, column: 44, scope: !832)
!847 = !DILocation(line: 188, column: 20, scope: !832)
!848 = !DILocation(line: 188, column: 53, scope: !832)
!849 = !DILocation(line: 190, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !832, file: !233, line: 190, column: 6)
!851 = !{i8 0, i8 2}
!852 = !DILocation(line: 190, column: 6, scope: !832)
!853 = !DILocation(line: 191, column: 3, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !233, line: 190, column: 16)
!855 = !DILocation(line: 194, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !832, file: !233, line: 194, column: 6)
!857 = !DILocation(line: 194, column: 13, scope: !856)
!858 = !DILocation(line: 194, column: 21, scope: !856)
!859 = !DILocation(line: 194, column: 6, scope: !832)
!860 = !DILocation(line: 195, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !233, line: 194, column: 27)
!862 = !DILocation(line: 195, column: 10, scope: !861)
!863 = !DILocation(line: 195, column: 18, scope: !861)
!864 = !DILocation(line: 196, column: 2, scope: !861)
!865 = !DILocation(line: 199, column: 3, scope: !837)
!866 = !DILocation(line: 199, column: 20, scope: !837)
!867 = !DILocation(line: 199, column: 59, scope: !837)
!868 = !DILocation(line: 199, column: 66, scope: !837)
!869 = !DILocation(line: 199, column: 37, scope: !837)
!870 = !DILocation(line: 201, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !837, file: !233, line: 201, column: 7)
!872 = !DILocation(line: 201, column: 22, scope: !871)
!873 = !DILocation(line: 201, column: 7, scope: !837)
!874 = !DILocation(line: 202, column: 19, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !233, line: 201, column: 28)
!876 = !DILocation(line: 202, column: 4, scope: !875)
!877 = !DILocation(line: 203, column: 4, scope: !875)
!878 = !DILocation(line: 204, column: 3, scope: !875)
!879 = !DILocation(line: 205, column: 2, scope: !838)
!880 = !DILocation(line: 206, column: 1, scope: !832)
!881 = !DISubprogram(name: "z_unpend1_no_timeout", scope: !713, file: !713, line: 45, type: !703, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!882 = distinct !DISubprogram(name: "z_reschedule_unlocked", scope: !713, file: !713, line: 75, type: !883, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!883 = !DISubroutineType(types: !884)
!884 = !{null}
!885 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !886)
!886 = distinct !DILocation(line: 77, column: 30, scope: !882)
!887 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !886)
!888 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !886)
!889 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !886)
!890 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !886)
!891 = !DILocation(line: 77, column: 9, scope: !882)
!892 = !DILocation(line: 78, column: 1, scope: !882)
!893 = distinct !DISubprogram(name: "z_impl_k_timer_status_get", scope: !233, file: !233, line: 217, type: !894, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{!142, !89}
!896 = !{!897, !898, !899}
!897 = !DILocalVariable(name: "timer", arg: 1, scope: !893, file: !233, line: 217, type: !89)
!898 = !DILocalVariable(name: "key", scope: !893, file: !233, line: 219, type: !427)
!899 = !DILocalVariable(name: "result", scope: !893, file: !233, line: 220, type: !142)
!900 = !DILocation(line: 217, column: 52, scope: !893)
!901 = !DILocation(line: 219, column: 2, scope: !893)
!902 = !DILocation(line: 219, column: 19, scope: !893)
!903 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !904)
!904 = distinct !DILocation(line: 219, column: 25, scope: !893)
!905 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !904)
!906 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !904)
!907 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !908)
!908 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !904)
!909 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !908)
!910 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !908)
!911 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !908)
!912 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !908)
!913 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !904)
!914 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !904)
!915 = !DILocation(line: 110, column: 94, scope: !473, inlinedAt: !916)
!916 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !904)
!917 = !DILocation(line: 112, column: 9, scope: !473, inlinedAt: !916)
!918 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !904)
!919 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !920)
!920 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !904)
!921 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !920)
!922 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !904)
!923 = !DILocation(line: 219, column: 25, scope: !893)
!924 = !DILocation(line: 220, column: 2, scope: !893)
!925 = !DILocation(line: 220, column: 11, scope: !893)
!926 = !DILocation(line: 220, column: 20, scope: !893)
!927 = !DILocation(line: 220, column: 27, scope: !893)
!928 = !DILocation(line: 222, column: 2, scope: !893)
!929 = !DILocation(line: 222, column: 9, scope: !893)
!930 = !DILocation(line: 222, column: 16, scope: !893)
!931 = !DILocation(line: 223, column: 2, scope: !893)
!932 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !933)
!933 = distinct !DILocation(line: 223, column: 2, scope: !893)
!934 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !933)
!935 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !933)
!936 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !933)
!937 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !938)
!938 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !933)
!939 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !938)
!940 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !938)
!941 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !938)
!942 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !938)
!943 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !938)
!944 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !938)
!945 = !DILocation(line: 225, column: 9, scope: !893)
!946 = !DILocation(line: 226, column: 1, scope: !893)
!947 = !DILocation(line: 225, column: 2, scope: !893)
!948 = distinct !DISubprogram(name: "z_impl_k_timer_status_sync", scope: !233, file: !233, line: 237, type: !894, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!949 = !{!950, !951, !952}
!950 = !DILocalVariable(name: "timer", arg: 1, scope: !948, file: !233, line: 237, type: !89)
!951 = !DILocalVariable(name: "key", scope: !948, file: !233, line: 265, type: !427)
!952 = !DILocalVariable(name: "result", scope: !948, file: !233, line: 266, type: !142)
!953 = !DILocation(line: 237, column: 53, scope: !948)
!954 = !DILocation(line: 240, column: 2, scope: !948)
!955 = !DILocation(line: 240, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !233, line: 240, column: 5)
!957 = !DILocation(line: 265, column: 2, scope: !948)
!958 = !DILocation(line: 265, column: 19, scope: !948)
!959 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !960)
!960 = distinct !DILocation(line: 265, column: 25, scope: !948)
!961 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !960)
!962 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !960)
!963 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !964)
!964 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !960)
!965 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !964)
!966 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !964)
!967 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !964)
!968 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !964)
!969 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !960)
!970 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !960)
!971 = !DILocation(line: 110, column: 94, scope: !473, inlinedAt: !972)
!972 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !960)
!973 = !DILocation(line: 112, column: 9, scope: !473, inlinedAt: !972)
!974 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !960)
!975 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !976)
!976 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !960)
!977 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !976)
!978 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !960)
!979 = !DILocation(line: 265, column: 25, scope: !948)
!980 = !DILocation(line: 266, column: 2, scope: !948)
!981 = !DILocation(line: 266, column: 11, scope: !948)
!982 = !DILocation(line: 266, column: 20, scope: !948)
!983 = !DILocation(line: 266, column: 27, scope: !948)
!984 = !DILocation(line: 268, column: 6, scope: !985)
!985 = distinct !DILexicalBlock(scope: !948, file: !233, line: 268, column: 6)
!986 = !DILocation(line: 268, column: 13, scope: !985)
!987 = !DILocation(line: 268, column: 6, scope: !948)
!988 = !DILocation(line: 269, column: 31, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !233, line: 269, column: 7)
!990 = distinct !DILexicalBlock(scope: !985, file: !233, line: 268, column: 20)
!991 = !DILocation(line: 269, column: 38, scope: !989)
!992 = !DILocation(line: 269, column: 8, scope: !989)
!993 = !DILocation(line: 269, column: 7, scope: !990)
!994 = !DILocation(line: 270, column: 4, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !233, line: 269, column: 48)
!996 = !DILocation(line: 270, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !995, file: !233, line: 270, column: 7)
!998 = !DILocation(line: 273, column: 35, scope: !995)
!999 = !DILocation(line: 273, column: 42, scope: !995)
!1000 = !DILocation(line: 273, column: 65, scope: !995)
!1001 = !DILocation(line: 273, column: 10, scope: !995)
!1002 = !DILocation(line: 276, column: 10, scope: !995)
!1003 = !DILocation(line: 160, column: 94, scope: !447, inlinedAt: !1004)
!1004 = distinct !DILocation(line: 276, column: 10, scope: !995)
!1005 = !DILocation(line: 162, column: 9, scope: !447, inlinedAt: !1004)
!1006 = !DILocation(line: 163, column: 19, scope: !447, inlinedAt: !1004)
!1007 = !DILocation(line: 44, column: 2, scope: !458, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 169, column: 10, scope: !447, inlinedAt: !1004)
!1009 = !DILocation(line: 44, column: 15, scope: !458, inlinedAt: !1008)
!1010 = !DILocation(line: 48, column: 2, scope: !458, inlinedAt: !1008)
!1011 = !DILocation(line: 80, column: 9, scope: !458, inlinedAt: !1008)
!1012 = !DILocation(line: 81, column: 1, scope: !458, inlinedAt: !1008)
!1013 = !DILocation(line: 169, column: 8, scope: !447, inlinedAt: !1004)
!1014 = !DILocation(line: 171, column: 26, scope: !447, inlinedAt: !1004)
!1015 = !DILocation(line: 110, column: 94, scope: !473, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 171, column: 2, scope: !447, inlinedAt: !1004)
!1017 = !DILocation(line: 112, column: 9, scope: !473, inlinedAt: !1016)
!1018 = !DILocation(line: 177, column: 27, scope: !447, inlinedAt: !1004)
!1019 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 177, column: 2, scope: !447, inlinedAt: !1004)
!1021 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !1020)
!1022 = !DILocation(line: 179, column: 2, scope: !447, inlinedAt: !1004)
!1023 = !DILocation(line: 277, column: 13, scope: !995)
!1024 = !DILocation(line: 277, column: 20, scope: !995)
!1025 = !DILocation(line: 277, column: 11, scope: !995)
!1026 = !DILocation(line: 278, column: 3, scope: !995)
!1027 = !DILocation(line: 281, column: 2, scope: !990)
!1028 = !DILocation(line: 285, column: 2, scope: !948)
!1029 = !DILocation(line: 285, column: 9, scope: !948)
!1030 = !DILocation(line: 285, column: 16, scope: !948)
!1031 = !DILocation(line: 286, column: 2, scope: !948)
!1032 = !DILocation(line: 235, column: 84, scope: !497, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 286, column: 2, scope: !948)
!1034 = !DILocation(line: 236, column: 23, scope: !497, inlinedAt: !1033)
!1035 = !DILocation(line: 238, column: 9, scope: !497, inlinedAt: !1033)
!1036 = !DILocation(line: 261, column: 22, scope: !497, inlinedAt: !1033)
!1037 = !DILocation(line: 88, column: 80, scope: !508, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 261, column: 2, scope: !497, inlinedAt: !1033)
!1039 = !DILocation(line: 91, column: 6, scope: !515, inlinedAt: !1038)
!1040 = !DILocation(line: 91, column: 10, scope: !515, inlinedAt: !1038)
!1041 = !DILocation(line: 91, column: 6, scope: !508, inlinedAt: !1038)
!1042 = !DILocation(line: 92, column: 3, scope: !519, inlinedAt: !1038)
!1043 = !DILocation(line: 94, column: 2, scope: !508, inlinedAt: !1038)
!1044 = !DILocation(line: 114, column: 1, scope: !508, inlinedAt: !1038)
!1045 = !DILocation(line: 291, column: 2, scope: !948)
!1046 = !DILocation(line: 291, column: 7, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !948, file: !233, line: 291, column: 5)
!1048 = !DILocation(line: 293, column: 9, scope: !948)
!1049 = !DILocation(line: 294, column: 1, scope: !948)
!1050 = !DILocation(line: 293, column: 2, scope: !948)
!1051 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !698, file: !698, line: 35, type: !1052, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!676, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1056 = !{!1057}
!1057 = !DILocalVariable(name: "to", arg: 1, scope: !1051, file: !698, line: 35, type: !1054)
!1058 = !DILocation(line: 35, column: 66, scope: !1051)
!1059 = !DILocation(line: 37, column: 31, scope: !1051)
!1060 = !DILocation(line: 37, column: 35, scope: !1051)
!1061 = !DILocation(line: 37, column: 10, scope: !1051)
!1062 = !DILocation(line: 37, column: 9, scope: !1051)
!1063 = !DILocation(line: 37, column: 2, scope: !1051)
!1064 = !DISubprogram(name: "z_pend_curr", scope: !713, file: !713, line: 46, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!148, !450, !427, !170, !135}
!1067 = !DISubprogram(name: "z_timeout_expires", scope: !91, file: !91, line: 642, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!140, !1054}
!1070 = !DISubprogram(name: "z_timeout_remaining", scope: !91, file: !91, line: 643, type: !1068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!1071 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !353, file: !353, line: 335, type: !1072, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!676, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "list", arg: 1, scope: !1071, file: !353, line: 335, type: !1074)
!1077 = !DILocation(line: 335, column: 55, scope: !1071)
!1078 = !DILocation(line: 335, column: 92, scope: !1071)
!1079 = !DILocation(line: 335, column: 71, scope: !1071)
!1080 = !DILocation(line: 335, column: 98, scope: !1071)
!1081 = !DILocation(line: 335, column: 63, scope: !1071)
!1082 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !353, file: !353, line: 255, type: !1083, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!357, !1074}
!1085 = !{!1086}
!1086 = !DILocalVariable(name: "list", arg: 1, scope: !1082, file: !353, line: 255, type: !1074)
!1087 = !DILocation(line: 255, column: 64, scope: !1082)
!1088 = !DILocation(line: 257, column: 9, scope: !1082)
!1089 = !DILocation(line: 257, column: 15, scope: !1082)
!1090 = !DILocation(line: 257, column: 2, scope: !1082)
!1091 = !DISubprogram(name: "z_impl_k_uptime_ticks", scope: !687, file: !687, line: 596, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!1092 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !99, file: !99, line: 303, type: !1093, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1096)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!231, !1095}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!1096 = !{!1097}
!1097 = !DILocalVariable(name: "list", arg: 1, scope: !1092, file: !99, line: 303, type: !1095)
!1098 = !DILocation(line: 303, column: 61, scope: !1092)
!1099 = !DILocation(line: 305, column: 28, scope: !1092)
!1100 = !DILocation(line: 305, column: 9, scope: !1092)
!1101 = !DILocation(line: 305, column: 49, scope: !1092)
!1102 = !DILocation(line: 305, column: 55, scope: !1092)
!1103 = !DILocation(line: 305, column: 2, scope: !1092)
!1104 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !99, file: !99, line: 275, type: !1105, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1107)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!676, !1095}
!1107 = !{!1108}
!1108 = !DILocalVariable(name: "list", arg: 1, scope: !1104, file: !99, line: 275, type: !1095)
!1109 = !DILocation(line: 275, column: 53, scope: !1104)
!1110 = !DILocation(line: 277, column: 9, scope: !1104)
!1111 = !DILocation(line: 277, column: 15, scope: !1104)
!1112 = !DILocation(line: 277, column: 23, scope: !1104)
!1113 = !DILocation(line: 277, column: 20, scope: !1104)
!1114 = !DILocation(line: 277, column: 2, scope: !1104)
!1115 = distinct !DISubprogram(name: "sys_dlist_init", scope: !99, file: !99, line: 203, type: !1116, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1118)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{null, !1095}
!1118 = !{!1119}
!1119 = !DILocalVariable(name: "list", arg: 1, scope: !1115, file: !99, line: 203, type: !1095)
!1120 = !DILocation(line: 203, column: 48, scope: !1115)
!1121 = !DILocation(line: 205, column: 30, scope: !1115)
!1122 = !DILocation(line: 205, column: 2, scope: !1115)
!1123 = !DILocation(line: 205, column: 8, scope: !1115)
!1124 = !DILocation(line: 205, column: 13, scope: !1115)
!1125 = !DILocation(line: 206, column: 30, scope: !1115)
!1126 = !DILocation(line: 206, column: 2, scope: !1115)
!1127 = !DILocation(line: 206, column: 8, scope: !1115)
!1128 = !DILocation(line: 206, column: 13, scope: !1115)
!1129 = !DILocation(line: 207, column: 1, scope: !1115)
!1130 = distinct !DISubprogram(name: "sys_dnode_init", scope: !99, file: !99, line: 220, type: !1131, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !231}
!1133 = !{!1134}
!1134 = !DILocalVariable(name: "node", arg: 1, scope: !1130, file: !99, line: 220, type: !231)
!1135 = !DILocation(line: 220, column: 48, scope: !1130)
!1136 = !DILocation(line: 222, column: 2, scope: !1130)
!1137 = !DILocation(line: 222, column: 8, scope: !1130)
!1138 = !DILocation(line: 222, column: 13, scope: !1130)
!1139 = !DILocation(line: 223, column: 2, scope: !1130)
!1140 = !DILocation(line: 223, column: 8, scope: !1130)
!1141 = !DILocation(line: 223, column: 13, scope: !1130)
!1142 = !DILocation(line: 224, column: 1, scope: !1130)
!1143 = !DISubprogram(name: "z_reschedule_irqlock", scope: !713, file: !713, line: 52, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !225)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{null, !142}
