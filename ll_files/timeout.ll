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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !148 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !238, metadata !DIExpression()), !dbg !240
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !239, metadata !DIExpression()), !dbg !241
  %5 = load ptr, ptr %3, align 4, !dbg !242
  %6 = load ptr, ptr %4, align 4, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !245 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load ptr, ptr %2, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !253 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load i8, ptr %2, align 1, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !261 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !265, metadata !DIExpression()), !dbg !267
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !266, metadata !DIExpression()), !dbg !268
  %5 = load i8, ptr %3, align 1, !dbg !269
  %6 = load i32, ptr %4, align 4, !dbg !270
  ret ptr null, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !278, metadata !DIExpression()), !dbg !279
  %3 = load ptr, ptr %2, align 4, !dbg !280
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !281
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !282
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !283
  ret i64 %6, !dbg !284
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !285 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !287, metadata !DIExpression()), !dbg !288
  %3 = load ptr, ptr %2, align 4, !dbg !289
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !290
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !291
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !292
  ret i64 %6, !dbg !293
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !294 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !317, metadata !DIExpression()), !dbg !318
  %3 = load ptr, ptr %2, align 4, !dbg !319
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !320
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !321
  ret i64 %5, !dbg !322
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !323 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !326
  %3 = load ptr, ptr %2, align 4, !dbg !327
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !328
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !329
  ret i64 %5, !dbg !330
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !331 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !335, metadata !DIExpression()), !dbg !337
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !336, metadata !DIExpression()), !dbg !338
  %5 = load ptr, ptr %4, align 4, !dbg !339
  %6 = load ptr, ptr %3, align 4, !dbg !340
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !341
  store ptr %5, ptr %7, align 4, !dbg !342
  ret void, !dbg !343
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !344 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !348, metadata !DIExpression()), !dbg !349
  %3 = load ptr, ptr %2, align 4, !dbg !350
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !351
  %5 = load ptr, ptr %4, align 4, !dbg !351
  ret ptr %5, !dbg !352
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !353 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !375, metadata !DIExpression()), !dbg !376
  %3 = load ptr, ptr %2, align 4, !dbg !377
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !378
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !379
  %6 = zext i1 %5 to i32, !dbg !380
  ret i32 %6, !dbg !381
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !382 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = load ptr, ptr %2, align 4, !dbg !394
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !395
  %5 = load i32, ptr %4, align 4, !dbg !395
  ret i32 %5, !dbg !396
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !397 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load ptr, ptr %2, align 4, !dbg !416
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !417
  %5 = load i32, ptr %4, align 4, !dbg !417
  %6 = load ptr, ptr %2, align 4, !dbg !418
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !419
  %8 = load i32, ptr %7, align 4, !dbg !419
  %9 = sub i32 %5, %8, !dbg !420
  ret i32 %9, !dbg !421
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !424, metadata !DIExpression()), !dbg !425
  %3 = load ptr, ptr %2, align 4, !dbg !426
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !427
  %5 = load i32, ptr %4, align 4, !dbg !427
  ret i32 %5, !dbg !428
}

; Function Attrs: nounwind optsize
define hidden void @z_add_timeout(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #1 !dbg !429 {
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
  call void @llvm.dbg.declare(metadata ptr %13, metadata !433, metadata !DIExpression()), !dbg !449
  store ptr %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !434, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata ptr %12, metadata !435, metadata !DIExpression()), !dbg !451
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !452
  %22 = load i64, ptr %21, align 8, !dbg !452
  %23 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !454
  store i64 -1, ptr %23, align 8, !dbg !454
  %24 = icmp eq i64 %22, -1, !dbg !455
  br i1 %24, label %25, label %26, !dbg !456

25:                                               ; preds = %3
  br label %133, !dbg !457

26:                                               ; preds = %3
  %27 = load ptr, ptr %14, align 4, !dbg !459
  %28 = load ptr, ptr %13, align 4, !dbg !460
  %29 = getelementptr inbounds %struct._timeout, ptr %28, i32 0, i32 1, !dbg !461
  store ptr %27, ptr %29, align 8, !dbg !462
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %16, metadata !436, metadata !DIExpression()), !dbg !464
  call void @llvm.memset.p0.i32(ptr align 4 %16, i8 0, i32 4, i1 false), !dbg !464
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %17, metadata !442, metadata !DIExpression()), !dbg !465
  store ptr @timeout_lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !466, metadata !DIExpression()), !dbg !473
  %30 = load ptr, ptr %11, align 4, !dbg !475
  call void @llvm.dbg.declare(metadata ptr %10, metadata !472, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %7, metadata !483, metadata !DIExpression()), !dbg !485
  %31 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !486, !srcloc !487
  store i32 %31, ptr %7, align 4, !dbg !486
  %32 = load i32, ptr %7, align 4, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !489
  store i32 %32, ptr %10, align 4, !dbg !490
  %33 = load ptr, ptr %11, align 4, !dbg !491
  store ptr %33, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !492, metadata !DIExpression()), !dbg !497
  %34 = load ptr, ptr %6, align 4, !dbg !499
  %35 = load ptr, ptr %11, align 4, !dbg !500
  store ptr %35, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !501, metadata !DIExpression()), !dbg !504
  %36 = load ptr, ptr %5, align 4, !dbg !506
  %37 = load i32, ptr %10, align 4, !dbg !507
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !508
  store i32 %37, ptr %38, align 4, !dbg !508
  br label %39, !dbg !463

39:                                               ; preds = %arch_irq_unlock.exit, %26
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !509
  %41 = load i32, ptr %40, align 4, !dbg !509
  %42 = icmp ne i32 %41, 0, !dbg !510
  %43 = xor i1 %42, true, !dbg !510
  br i1 %43, label %45, label %44, !dbg !511

44:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8, !dbg !512
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8, !dbg !512
  br label %133

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %18, metadata !443, metadata !DIExpression()), !dbg !514
  %46 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !515
  %47 = load i64, ptr %46, align 8, !dbg !515
  %48 = sub nsw i64 -2, %47, !dbg !516
  %49 = icmp sge i64 %48, 0, !dbg !517
  br i1 %49, label %50, label %65, !dbg !518

50:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %19, metadata !446, metadata !DIExpression()), !dbg !520
  %51 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !521
  %52 = load i64, ptr %51, align 8, !dbg !521
  %53 = sub nsw i64 -2, %52, !dbg !522
  %54 = load i64, ptr @curr_tick, align 8, !dbg !523
  %55 = sub i64 %53, %54, !dbg !524
  store i64 %55, ptr %19, align 8, !dbg !520
  %56 = load i64, ptr %19, align 8, !dbg !525
  %57 = icmp sgt i64 1, %56, !dbg !526
  br i1 %57, label %58, label %59, !dbg !527

58:                                               ; preds = %50
  br label %61, !dbg !527

59:                                               ; preds = %50
  %60 = load i64, ptr %19, align 8, !dbg !528
  br label %61, !dbg !527

61:                                               ; preds = %59, %58
  %62 = phi i64 [ 1, %58 ], [ %60, %59 ], !dbg !527
  %63 = load ptr, ptr %13, align 4, !dbg !529
  %64 = getelementptr inbounds %struct._timeout, ptr %63, i32 0, i32 2, !dbg !530
  store i64 %62, ptr %64, align 8, !dbg !531
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8, !dbg !532
  br label %74, !dbg !533

65:                                               ; preds = %45
  %66 = getelementptr inbounds %struct.k_timeout_t, ptr %12, i32 0, i32 0, !dbg !534
  %67 = load i64, ptr %66, align 8, !dbg !534
  %68 = add nsw i64 %67, 1, !dbg !536
  %69 = call i32 @elapsed() #7, !dbg !537
  %70 = sext i32 %69 to i64, !dbg !537
  %71 = add nsw i64 %68, %70, !dbg !538
  %72 = load ptr, ptr %13, align 4, !dbg !539
  %73 = getelementptr inbounds %struct._timeout, ptr %72, i32 0, i32 2, !dbg !540
  store i64 %71, ptr %73, align 8, !dbg !541
  br label %74

74:                                               ; preds = %65, %61
  %75 = call ptr @first() #7, !dbg !542
  store ptr %75, ptr %18, align 4, !dbg !544
  br label %76, !dbg !545

76:                                               ; preds = %107, %74
  %77 = load ptr, ptr %18, align 4, !dbg !546
  %78 = icmp ne ptr %77, null, !dbg !548
  br i1 %78, label %79, label %110, !dbg !549

79:                                               ; preds = %76
  %80 = load ptr, ptr %18, align 4, !dbg !550
  %81 = getelementptr inbounds %struct._timeout, ptr %80, i32 0, i32 2, !dbg !553
  %82 = load i64, ptr %81, align 8, !dbg !553
  %83 = load ptr, ptr %13, align 4, !dbg !554
  %84 = getelementptr inbounds %struct._timeout, ptr %83, i32 0, i32 2, !dbg !555
  %85 = load i64, ptr %84, align 8, !dbg !555
  %86 = icmp sgt i64 %82, %85, !dbg !556
  br i1 %86, label %87, label %99, !dbg !557

87:                                               ; preds = %79
  %88 = load ptr, ptr %13, align 4, !dbg !558
  %89 = getelementptr inbounds %struct._timeout, ptr %88, i32 0, i32 2, !dbg !560
  %90 = load i64, ptr %89, align 8, !dbg !560
  %91 = load ptr, ptr %18, align 4, !dbg !561
  %92 = getelementptr inbounds %struct._timeout, ptr %91, i32 0, i32 2, !dbg !562
  %93 = load i64, ptr %92, align 8, !dbg !563
  %94 = sub nsw i64 %93, %90, !dbg !563
  store i64 %94, ptr %92, align 8, !dbg !563
  %95 = load ptr, ptr %18, align 4, !dbg !564
  %96 = getelementptr inbounds %struct._timeout, ptr %95, i32 0, i32 0, !dbg !565
  %97 = load ptr, ptr %13, align 4, !dbg !566
  %98 = getelementptr inbounds %struct._timeout, ptr %97, i32 0, i32 0, !dbg !567
  call void @sys_dlist_insert(ptr noundef %96, ptr noundef %98) #7, !dbg !568
  br label %110, !dbg !569

99:                                               ; preds = %79
  %100 = load ptr, ptr %18, align 4, !dbg !570
  %101 = getelementptr inbounds %struct._timeout, ptr %100, i32 0, i32 2, !dbg !571
  %102 = load i64, ptr %101, align 8, !dbg !571
  %103 = load ptr, ptr %13, align 4, !dbg !572
  %104 = getelementptr inbounds %struct._timeout, ptr %103, i32 0, i32 2, !dbg !573
  %105 = load i64, ptr %104, align 8, !dbg !574
  %106 = sub nsw i64 %105, %102, !dbg !574
  store i64 %106, ptr %104, align 8, !dbg !574
  br label %107, !dbg !575

107:                                              ; preds = %99
  %108 = load ptr, ptr %18, align 4, !dbg !576
  %109 = call ptr @next(ptr noundef %108) #7, !dbg !577
  store ptr %109, ptr %18, align 4, !dbg !578
  br label %76, !dbg !579, !llvm.loop !580

110:                                              ; preds = %87, %76
  %111 = load ptr, ptr %18, align 4, !dbg !582
  %112 = icmp eq ptr %111, null, !dbg !584
  br i1 %112, label %113, label %116, !dbg !585

113:                                              ; preds = %110
  %114 = load ptr, ptr %13, align 4, !dbg !586
  %115 = getelementptr inbounds %struct._timeout, ptr %114, i32 0, i32 0, !dbg !588
  call void @sys_dlist_append(ptr noundef @timeout_list, ptr noundef %115) #7, !dbg !589
  br label %116, !dbg !590

116:                                              ; preds = %113, %110
  %117 = load ptr, ptr %13, align 4, !dbg !591
  %118 = call ptr @first() #7, !dbg !593
  %119 = icmp eq ptr %117, %118, !dbg !594
  br i1 %119, label %120, label %122, !dbg !595

120:                                              ; preds = %116
  %121 = call i32 @next_timeout() #7, !dbg !596
  call void @sys_clock_set_timeout(i32 noundef %121, i1 noundef zeroext false) #7, !dbg !598
  br label %122, !dbg !599

122:                                              ; preds = %120, %116
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8, !dbg !600
  br label %123, !dbg !601

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !602
  %125 = load [1 x i32], ptr %124, align 4, !dbg !602
  store [1 x i32] %125, ptr %8, align 4
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !603, metadata !DIExpression()), !dbg !609
  call void @llvm.dbg.declare(metadata ptr %8, metadata !608, metadata !DIExpression()), !dbg !611
  %126 = load ptr, ptr %9, align 4, !dbg !612
  %127 = load i32, ptr %8, align 4, !dbg !613
  store i32 %127, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !614, metadata !DIExpression()), !dbg !619
  %128 = load i32, ptr %4, align 4, !dbg !621
  %129 = icmp ne i32 %128, 0, !dbg !623
  br i1 %129, label %130, label %131, !dbg !624

130:                                              ; preds = %123
  br label %arch_irq_unlock.exit, !dbg !625

131:                                              ; preds = %123
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !627, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !629

arch_irq_unlock.exit:                             ; preds = %130, %131
  %132 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !630
  store i32 1, ptr %132, align 4, !dbg !631
  br label %39, !dbg !512, !llvm.loop !632

133:                                              ; preds = %25, %44
  ret void, !dbg !634
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @elapsed() #1 !dbg !635 {
  %1 = load i32, ptr @announce_remaining, align 4, !dbg !638
  %2 = icmp eq i32 %1, 0, !dbg !639
  br i1 %2, label %3, label %5, !dbg !638

3:                                                ; preds = %0
  %4 = call i32 @sys_clock_elapsed() #7, !dbg !640
  br label %6, !dbg !638

5:                                                ; preds = %0
  br label %6, !dbg !638

6:                                                ; preds = %5, %3
  %7 = phi i32 [ %4, %3 ], [ 0, %5 ], !dbg !638
  ret i32 %7, !dbg !641
}

; Function Attrs: nounwind optsize
define internal ptr @first() #1 !dbg !642 {
  %1 = alloca ptr, align 4
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %1, metadata !646, metadata !DIExpression()), !dbg !649
  %3 = call ptr @sys_dlist_peek_head(ptr noundef @timeout_list) #7, !dbg !650
  store ptr %3, ptr %1, align 4, !dbg !649
  %4 = load ptr, ptr %1, align 4, !dbg !651
  %5 = icmp eq ptr %4, null, !dbg !652
  br i1 %5, label %6, label %7, !dbg !651

6:                                                ; preds = %0
  br label %11, !dbg !651

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 4, !dbg !653
  %9 = getelementptr inbounds i8, ptr %8, i32 0, !dbg !655
  store ptr %9, ptr %2, align 4, !dbg !656
  %10 = load ptr, ptr %2, align 4, !dbg !657
  br label %11, !dbg !651

11:                                               ; preds = %7, %6
  %12 = phi ptr [ null, %6 ], [ %10, %7 ], !dbg !651
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !658
  ret ptr %12, !dbg !659
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_insert(ptr noundef %0, ptr noundef %1) #0 !dbg !660 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !664, metadata !DIExpression()), !dbg !668
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !665, metadata !DIExpression()), !dbg !669
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %5, metadata !666, metadata !DIExpression()), !dbg !671
  %6 = load ptr, ptr %3, align 4, !dbg !672
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !673
  %8 = load ptr, ptr %7, align 4, !dbg !673
  store ptr %8, ptr %5, align 4, !dbg !671
  %9 = load ptr, ptr %5, align 4, !dbg !674
  %10 = load ptr, ptr %4, align 4, !dbg !675
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 1, !dbg !676
  store ptr %9, ptr %11, align 4, !dbg !677
  %12 = load ptr, ptr %3, align 4, !dbg !678
  %13 = load ptr, ptr %4, align 4, !dbg !679
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 0, !dbg !680
  store ptr %12, ptr %14, align 4, !dbg !681
  %15 = load ptr, ptr %4, align 4, !dbg !682
  %16 = load ptr, ptr %5, align 4, !dbg !683
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !684
  store ptr %15, ptr %17, align 4, !dbg !685
  %18 = load ptr, ptr %4, align 4, !dbg !686
  %19 = load ptr, ptr %3, align 4, !dbg !687
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !688
  store ptr %18, ptr %20, align 4, !dbg !689
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !690
  ret void, !dbg !690
}

; Function Attrs: nounwind optsize
define internal ptr @next(ptr noundef %0) #1 !dbg !691 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !695, metadata !DIExpression()), !dbg !697
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !698
  call void @llvm.dbg.declare(metadata ptr %3, metadata !696, metadata !DIExpression()), !dbg !699
  %5 = load ptr, ptr %2, align 4, !dbg !700
  %6 = getelementptr inbounds %struct._timeout, ptr %5, i32 0, i32 0, !dbg !701
  %7 = call ptr @sys_dlist_peek_next(ptr noundef @timeout_list, ptr noundef %6) #7, !dbg !702
  store ptr %7, ptr %3, align 4, !dbg !699
  %8 = load ptr, ptr %3, align 4, !dbg !703
  %9 = icmp eq ptr %8, null, !dbg !704
  br i1 %9, label %10, label %11, !dbg !703

10:                                               ; preds = %1
  br label %15, !dbg !703

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !705
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !707
  store ptr %13, ptr %4, align 4, !dbg !708
  %14 = load ptr, ptr %4, align 4, !dbg !709
  br label %15, !dbg !703

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !703
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !710
  ret ptr %16, !dbg !711
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_append(ptr noundef %0, ptr noundef %1) #0 !dbg !712 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !717, metadata !DIExpression()), !dbg !720
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !718, metadata !DIExpression()), !dbg !721
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %5, metadata !719, metadata !DIExpression()), !dbg !723
  %6 = load ptr, ptr %3, align 4, !dbg !724
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !725
  %8 = load ptr, ptr %7, align 4, !dbg !725
  store ptr %8, ptr %5, align 4, !dbg !723
  %9 = load ptr, ptr %3, align 4, !dbg !726
  %10 = load ptr, ptr %4, align 4, !dbg !727
  %11 = getelementptr inbounds %struct._dnode, ptr %10, i32 0, i32 0, !dbg !728
  store ptr %9, ptr %11, align 4, !dbg !729
  %12 = load ptr, ptr %5, align 4, !dbg !730
  %13 = load ptr, ptr %4, align 4, !dbg !731
  %14 = getelementptr inbounds %struct._dnode, ptr %13, i32 0, i32 1, !dbg !732
  store ptr %12, ptr %14, align 4, !dbg !733
  %15 = load ptr, ptr %4, align 4, !dbg !734
  %16 = load ptr, ptr %5, align 4, !dbg !735
  %17 = getelementptr inbounds %struct._dnode, ptr %16, i32 0, i32 0, !dbg !736
  store ptr %15, ptr %17, align 4, !dbg !737
  %18 = load ptr, ptr %4, align 4, !dbg !738
  %19 = load ptr, ptr %3, align 4, !dbg !739
  %20 = getelementptr inbounds %struct._dnode, ptr %19, i32 0, i32 1, !dbg !740
  store ptr %18, ptr %20, align 4, !dbg !741
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !742
  ret void, !dbg !742
}

; Function Attrs: optsize
declare !dbg !743 dso_local void @sys_clock_set_timeout(i32 noundef, i1 noundef zeroext) #5

; Function Attrs: nounwind optsize
define internal i32 @next_timeout() #1 !dbg !748 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %1, metadata !750, metadata !DIExpression()), !dbg !754
  %4 = call ptr @first() #7, !dbg !755
  store ptr %4, ptr %1, align 4, !dbg !754
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8, !dbg !756
  call void @llvm.dbg.declare(metadata ptr %2, metadata !751, metadata !DIExpression()), !dbg !757
  %5 = call i32 @elapsed() #7, !dbg !758
  store i32 %5, ptr %2, align 4, !dbg !757
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %3, metadata !752, metadata !DIExpression()), !dbg !760
  %6 = load ptr, ptr %1, align 4, !dbg !761
  %7 = icmp eq ptr %6, null, !dbg !763
  br i1 %7, label %16, label %8, !dbg !764

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 4, !dbg !765
  %10 = getelementptr inbounds %struct._timeout, ptr %9, i32 0, i32 2, !dbg !766
  %11 = load i64, ptr %10, align 8, !dbg !766
  %12 = load i32, ptr %2, align 4, !dbg !767
  %13 = sext i32 %12 to i64, !dbg !767
  %14 = sub nsw i64 %11, %13, !dbg !768
  %15 = icmp sgt i64 %14, 2147483647, !dbg !769
  br i1 %15, label %16, label %17, !dbg !770

16:                                               ; preds = %8, %0
  store i32 2147483647, ptr %3, align 4, !dbg !771
  br label %36, !dbg !773

17:                                               ; preds = %8
  %18 = load ptr, ptr %1, align 4, !dbg !774
  %19 = getelementptr inbounds %struct._timeout, ptr %18, i32 0, i32 2, !dbg !776
  %20 = load i64, ptr %19, align 8, !dbg !776
  %21 = load i32, ptr %2, align 4, !dbg !777
  %22 = sext i32 %21 to i64, !dbg !777
  %23 = sub nsw i64 %20, %22, !dbg !778
  %24 = icmp sgt i64 0, %23, !dbg !779
  br i1 %24, label %25, label %26, !dbg !780

25:                                               ; preds = %17
  br label %33, !dbg !780

26:                                               ; preds = %17
  %27 = load ptr, ptr %1, align 4, !dbg !781
  %28 = getelementptr inbounds %struct._timeout, ptr %27, i32 0, i32 2, !dbg !782
  %29 = load i64, ptr %28, align 8, !dbg !782
  %30 = load i32, ptr %2, align 4, !dbg !783
  %31 = sext i32 %30 to i64, !dbg !783
  %32 = sub nsw i64 %29, %31, !dbg !784
  br label %33, !dbg !780

33:                                               ; preds = %26, %25
  %34 = phi i64 [ 0, %25 ], [ %32, %26 ], !dbg !780
  %35 = trunc i64 %34 to i32, !dbg !785
  store i32 %35, ptr %3, align 4, !dbg !786
  br label %36

36:                                               ; preds = %33, %16
  %37 = load i32, ptr %3, align 4, !dbg !787
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !788
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8, !dbg !788
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !788
  ret i32 %37, !dbg !789
}

; Function Attrs: nounwind optsize
define hidden i32 @z_abort_timeout(ptr noundef %0) #1 !dbg !790 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !794, metadata !DIExpression()), !dbg !799
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !800
  call void @llvm.dbg.declare(metadata ptr %11, metadata !795, metadata !DIExpression()), !dbg !801
  store i32 -5, ptr %11, align 4, !dbg !801
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %12, metadata !796, metadata !DIExpression()), !dbg !803
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !803
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %13, metadata !798, metadata !DIExpression()), !dbg !804
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !466, metadata !DIExpression()), !dbg !805
  %14 = load ptr, ptr %9, align 4, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %8, metadata !472, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !809
  call void @llvm.dbg.declare(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !811
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !812, !srcloc !487
  store i32 %15, ptr %5, align 4, !dbg !812
  %16 = load i32, ptr %5, align 4, !dbg !813
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !814
  store i32 %16, ptr %8, align 4, !dbg !815
  %17 = load ptr, ptr %9, align 4, !dbg !816
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !817
  %18 = load ptr, ptr %4, align 4, !dbg !819
  %19 = load ptr, ptr %9, align 4, !dbg !820
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !821
  %20 = load ptr, ptr %3, align 4, !dbg !823
  %21 = load i32, ptr %8, align 4, !dbg !824
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !825
  store i32 %21, ptr %22, align 4, !dbg !825
  br label %23, !dbg !802

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !826
  %25 = load i32, ptr %24, align 4, !dbg !826
  %26 = icmp ne i32 %25, 0, !dbg !828
  %27 = xor i1 %26, true, !dbg !828
  br i1 %27, label %29, label %28, !dbg !829

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !830
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !830
  br label %46

29:                                               ; preds = %23
  %30 = load ptr, ptr %10, align 4, !dbg !831
  %31 = getelementptr inbounds %struct._timeout, ptr %30, i32 0, i32 0, !dbg !834
  %32 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %31) #7, !dbg !835
  br i1 %32, label %33, label %35, !dbg !836

33:                                               ; preds = %29
  %34 = load ptr, ptr %10, align 4, !dbg !837
  call void @remove_timeout(ptr noundef %34) #7, !dbg !839
  store i32 0, ptr %11, align 4, !dbg !840
  br label %35, !dbg !841

35:                                               ; preds = %33, %29
  br label %36, !dbg !842

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !843
  %38 = load [1 x i32], ptr %37, align 4, !dbg !843
  store [1 x i32] %38, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !603, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata ptr %6, metadata !608, metadata !DIExpression()), !dbg !846
  %39 = load ptr, ptr %7, align 4, !dbg !847
  %40 = load i32, ptr %6, align 4, !dbg !848
  store i32 %40, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !849
  %41 = load i32, ptr %2, align 4, !dbg !851
  %42 = icmp ne i32 %41, 0, !dbg !852
  br i1 %42, label %43, label %44, !dbg !853

43:                                               ; preds = %36
  br label %arch_irq_unlock.exit, !dbg !854

44:                                               ; preds = %36
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !855, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !856

arch_irq_unlock.exit:                             ; preds = %43, %44
  %45 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !857
  store i32 1, ptr %45, align 4, !dbg !858
  br label %23, !dbg !830, !llvm.loop !859

46:                                               ; preds = %28
  %47 = load i32, ptr %11, align 4, !dbg !861
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !862
  ret i32 %47, !dbg !863
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dnode_is_linked(ptr noundef %0) #0 !dbg !864 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !870, metadata !DIExpression()), !dbg !871
  %3 = load ptr, ptr %2, align 4, !dbg !872
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !873
  %5 = load ptr, ptr %4, align 4, !dbg !873
  %6 = icmp ne ptr %5, null, !dbg !874
  ret i1 %6, !dbg !875
}

; Function Attrs: nounwind optsize
define internal void @remove_timeout(ptr noundef %0) #1 !dbg !876 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !878, metadata !DIExpression()), !dbg !879
  %3 = load ptr, ptr %2, align 4, !dbg !880
  %4 = call ptr @next(ptr noundef %3) #7, !dbg !882
  %5 = icmp ne ptr %4, null, !dbg !883
  br i1 %5, label %6, label %15, !dbg !884

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !885
  %8 = getelementptr inbounds %struct._timeout, ptr %7, i32 0, i32 2, !dbg !887
  %9 = load i64, ptr %8, align 8, !dbg !887
  %10 = load ptr, ptr %2, align 4, !dbg !888
  %11 = call ptr @next(ptr noundef %10) #7, !dbg !889
  %12 = getelementptr inbounds %struct._timeout, ptr %11, i32 0, i32 2, !dbg !890
  %13 = load i64, ptr %12, align 8, !dbg !891
  %14 = add nsw i64 %13, %9, !dbg !891
  store i64 %14, ptr %12, align 8, !dbg !891
  br label %15, !dbg !892

15:                                               ; preds = %6, %1
  %16 = load ptr, ptr %2, align 4, !dbg !893
  %17 = getelementptr inbounds %struct._timeout, ptr %16, i32 0, i32 0, !dbg !894
  call void @sys_dlist_remove(ptr noundef %17) #7, !dbg !895
  ret void, !dbg !896
}

; Function Attrs: nounwind optsize
define hidden i64 @z_timeout_remaining(ptr noundef %0) #1 !dbg !897 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !903, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %11, metadata !904, metadata !DIExpression()), !dbg !910
  store i64 0, ptr %11, align 8, !dbg !910
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %12, metadata !905, metadata !DIExpression()), !dbg !912
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !911
  call void @llvm.dbg.declare(metadata ptr %13, metadata !907, metadata !DIExpression()), !dbg !913
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !466, metadata !DIExpression()), !dbg !914
  %14 = load ptr, ptr %9, align 4, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %8, metadata !472, metadata !DIExpression()), !dbg !917
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !918
  call void @llvm.dbg.declare(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !920
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !921, !srcloc !487
  store i32 %15, ptr %5, align 4, !dbg !921
  %16 = load i32, ptr %5, align 4, !dbg !922
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !923
  store i32 %16, ptr %8, align 4, !dbg !924
  %17 = load ptr, ptr %9, align 4, !dbg !925
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !926
  %18 = load ptr, ptr %4, align 4, !dbg !928
  %19 = load ptr, ptr %9, align 4, !dbg !929
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !930
  %20 = load ptr, ptr %3, align 4, !dbg !932
  %21 = load i32, ptr %8, align 4, !dbg !933
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !934
  store i32 %21, ptr %22, align 4, !dbg !934
  br label %23, !dbg !911

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !935
  %25 = load i32, ptr %24, align 4, !dbg !935
  %26 = icmp ne i32 %25, 0, !dbg !937
  %27 = xor i1 %26, true, !dbg !937
  br i1 %27, label %29, label %28, !dbg !938

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !939
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !939
  br label %42

29:                                               ; preds = %23
  %30 = load ptr, ptr %10, align 4, !dbg !940
  %31 = call i64 @timeout_rem(ptr noundef %30) #7, !dbg !942
  store i64 %31, ptr %11, align 8, !dbg !943
  br label %32, !dbg !944

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !945
  %34 = load [1 x i32], ptr %33, align 4, !dbg !945
  store [1 x i32] %34, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !603, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.declare(metadata ptr %6, metadata !608, metadata !DIExpression()), !dbg !948
  %35 = load ptr, ptr %7, align 4, !dbg !949
  %36 = load i32, ptr %6, align 4, !dbg !950
  store i32 %36, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !951
  %37 = load i32, ptr %2, align 4, !dbg !953
  %38 = icmp ne i32 %37, 0, !dbg !954
  br i1 %38, label %39, label %40, !dbg !955

39:                                               ; preds = %32
  br label %arch_irq_unlock.exit, !dbg !956

40:                                               ; preds = %32
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !957, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !958

arch_irq_unlock.exit:                             ; preds = %39, %40
  %41 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !959
  store i32 1, ptr %41, align 4, !dbg !960
  br label %23, !dbg !939, !llvm.loop !961

42:                                               ; preds = %28
  %43 = load i64, ptr %11, align 8, !dbg !963
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8, !dbg !964
  ret i64 %43, !dbg !965
}

; Function Attrs: nounwind optsize
define internal i64 @timeout_rem(ptr noundef %0) #1 !dbg !966 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !968, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8, !dbg !973
  call void @llvm.dbg.declare(metadata ptr %4, metadata !969, metadata !DIExpression()), !dbg !974
  store i64 0, ptr %4, align 8, !dbg !974
  %7 = load ptr, ptr %3, align 4, !dbg !975
  %8 = call zeroext i1 @z_is_inactive_timeout(ptr noundef %7) #7, !dbg !977
  br i1 %8, label %9, label %10, !dbg !978

9:                                                ; preds = %1
  store i64 0, ptr %2, align 8, !dbg !979
  store i32 1, ptr %5, align 4
  br label %36, !dbg !979

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !981
  call void @llvm.dbg.declare(metadata ptr %6, metadata !970, metadata !DIExpression()), !dbg !982
  %11 = call ptr @first() #7, !dbg !983
  store ptr %11, ptr %6, align 4, !dbg !982
  br label %12, !dbg !981

12:                                               ; preds = %27, %10
  %13 = load ptr, ptr %6, align 4, !dbg !984
  %14 = icmp ne ptr %13, null, !dbg !986
  br i1 %14, label %16, label %15, !dbg !987

15:                                               ; preds = %12
  store i32 2, ptr %5, align 4
  br label %30, !dbg !987

16:                                               ; preds = %12
  %17 = load ptr, ptr %6, align 4, !dbg !988
  %18 = getelementptr inbounds %struct._timeout, ptr %17, i32 0, i32 2, !dbg !990
  %19 = load i64, ptr %18, align 8, !dbg !990
  %20 = load i64, ptr %4, align 8, !dbg !991
  %21 = add nsw i64 %20, %19, !dbg !991
  store i64 %21, ptr %4, align 8, !dbg !991
  %22 = load ptr, ptr %3, align 4, !dbg !992
  %23 = load ptr, ptr %6, align 4, !dbg !994
  %24 = icmp eq ptr %22, %23, !dbg !995
  br i1 %24, label %25, label %26, !dbg !996

25:                                               ; preds = %16
  store i32 2, ptr %5, align 4
  br label %30, !dbg !997

26:                                               ; preds = %16
  br label %27, !dbg !999

27:                                               ; preds = %26
  %28 = load ptr, ptr %6, align 4, !dbg !1000
  %29 = call ptr @next(ptr noundef %28) #7, !dbg !1001
  store ptr %29, ptr %6, align 4, !dbg !1002
  br label %12, !dbg !1003, !llvm.loop !1004

30:                                               ; preds = %25, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1003
  br label %31

31:                                               ; preds = %30
  %32 = load i64, ptr %4, align 8, !dbg !1006
  %33 = call i32 @elapsed() #7, !dbg !1007
  %34 = sext i32 %33 to i64, !dbg !1007
  %35 = sub nsw i64 %32, %34, !dbg !1008
  store i64 %35, ptr %2, align 8, !dbg !1009
  store i32 1, ptr %5, align 4
  br label %36, !dbg !1009

36:                                               ; preds = %31, %9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8, !dbg !1010
  %37 = load i64, ptr %2, align 8, !dbg !1010
  ret i64 %37, !dbg !1010
}

; Function Attrs: nounwind optsize
define hidden i64 @z_timeout_expires(ptr noundef %0) #1 !dbg !1011 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1013, metadata !DIExpression()), !dbg !1018
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1014, metadata !DIExpression()), !dbg !1020
  store i64 0, ptr %11, align 8, !dbg !1020
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1015, metadata !DIExpression()), !dbg !1022
  call void @llvm.memset.p0.i32(ptr align 4 %12, i8 0, i32 4, i1 false), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1017, metadata !DIExpression()), !dbg !1023
  store ptr @timeout_lock, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !466, metadata !DIExpression()), !dbg !1024
  %14 = load ptr, ptr %9, align 4, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %8, metadata !472, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1028
  call void @llvm.dbg.declare(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !1030
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1031, !srcloc !487
  store i32 %15, ptr %5, align 4, !dbg !1031
  %16 = load i32, ptr %5, align 4, !dbg !1032
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1033
  store i32 %16, ptr %8, align 4, !dbg !1034
  %17 = load ptr, ptr %9, align 4, !dbg !1035
  store ptr %17, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !1036
  %18 = load ptr, ptr %4, align 4, !dbg !1038
  %19 = load ptr, ptr %9, align 4, !dbg !1039
  store ptr %19, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !1040
  %20 = load ptr, ptr %3, align 4, !dbg !1042
  %21 = load i32, ptr %8, align 4, !dbg !1043
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1044
  store i32 %21, ptr %22, align 4, !dbg !1044
  br label %23, !dbg !1021

23:                                               ; preds = %arch_irq_unlock.exit, %1
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1045
  %25 = load i32, ptr %24, align 4, !dbg !1045
  %26 = icmp ne i32 %25, 0, !dbg !1047
  %27 = xor i1 %26, true, !dbg !1047
  br i1 %27, label %29, label %28, !dbg !1048

28:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1049
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1049
  br label %44

29:                                               ; preds = %23
  %30 = load i64, ptr @curr_tick, align 8, !dbg !1050
  %31 = load ptr, ptr %10, align 4, !dbg !1052
  %32 = call i64 @timeout_rem(ptr noundef %31) #7, !dbg !1053
  %33 = add i64 %30, %32, !dbg !1054
  store i64 %33, ptr %11, align 8, !dbg !1055
  br label %34, !dbg !1056

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !1057
  %36 = load [1 x i32], ptr %35, align 4, !dbg !1057
  store [1 x i32] %36, ptr %6, align 4
  store ptr @timeout_lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !603, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %6, metadata !608, metadata !DIExpression()), !dbg !1060
  %37 = load ptr, ptr %7, align 4, !dbg !1061
  %38 = load i32, ptr %6, align 4, !dbg !1062
  store i32 %38, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !1063
  %39 = load i32, ptr %2, align 4, !dbg !1065
  %40 = icmp ne i32 %39, 0, !dbg !1066
  br i1 %40, label %41, label %42, !dbg !1067

41:                                               ; preds = %34
  br label %arch_irq_unlock.exit, !dbg !1068

42:                                               ; preds = %34
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1069, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !1070

arch_irq_unlock.exit:                             ; preds = %41, %42
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !1071
  store i32 1, ptr %43, align 4, !dbg !1072
  br label %23, !dbg !1049, !llvm.loop !1073

44:                                               ; preds = %28
  %45 = load i64, ptr %11, align 8, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8, !dbg !1076
  ret i64 %45, !dbg !1077
}

; Function Attrs: nounwind optsize
define hidden i32 @z_get_next_timeout_expiry() #1 !dbg !1078 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !1084
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1080, metadata !DIExpression()), !dbg !1085
  store i32 -1, ptr %9, align 4, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1081, metadata !DIExpression()), !dbg !1087
  call void @llvm.memset.p0.i32(ptr align 4 %10, i8 0, i32 4, i1 false), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1086
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1083, metadata !DIExpression()), !dbg !1088
  store ptr @timeout_lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !466, metadata !DIExpression()), !dbg !1089
  %12 = load ptr, ptr %8, align 4, !dbg !1091
  call void @llvm.dbg.declare(metadata ptr %7, metadata !472, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !1095
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1096, !srcloc !487
  store i32 %13, ptr %4, align 4, !dbg !1096
  %14 = load i32, ptr %4, align 4, !dbg !1097
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1098
  store i32 %14, ptr %7, align 4, !dbg !1099
  %15 = load ptr, ptr %8, align 4, !dbg !1100
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !492, metadata !DIExpression()), !dbg !1101
  %16 = load ptr, ptr %3, align 4, !dbg !1103
  %17 = load ptr, ptr %8, align 4, !dbg !1104
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !501, metadata !DIExpression()), !dbg !1105
  %18 = load ptr, ptr %2, align 4, !dbg !1107
  %19 = load i32, ptr %7, align 4, !dbg !1108
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1109
  store i32 %19, ptr %20, align 4, !dbg !1109
  br label %21, !dbg !1086

21:                                               ; preds = %arch_irq_unlock.exit, %0
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1110
  %23 = load i32, ptr %22, align 4, !dbg !1110
  %24 = icmp ne i32 %23, 0, !dbg !1112
  %25 = xor i1 %24, true, !dbg !1112
  br i1 %25, label %27, label %26, !dbg !1113

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !1114
  br label %39

27:                                               ; preds = %21
  %28 = call i32 @next_timeout() #7, !dbg !1115
  store i32 %28, ptr %9, align 4, !dbg !1117
  br label %29, !dbg !1118

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1119
  %31 = load [1 x i32], ptr %30, align 4, !dbg !1119
  store [1 x i32] %31, ptr %5, align 4
  store ptr @timeout_lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !603, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %5, metadata !608, metadata !DIExpression()), !dbg !1122
  %32 = load ptr, ptr %6, align 4, !dbg !1123
  %33 = load i32, ptr %5, align 4, !dbg !1124
  store i32 %33, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !614, metadata !DIExpression()), !dbg !1125
  %34 = load i32, ptr %1, align 4, !dbg !1127
  %35 = icmp ne i32 %34, 0, !dbg !1128
  br i1 %35, label %36, label %37, !dbg !1129

36:                                               ; preds = %29
  br label %arch_irq_unlock.exit, !dbg !1130

37:                                               ; preds = %29
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1131, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !1132

arch_irq_unlock.exit:                             ; preds = %36, %37
  %38 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1133
  store i32 1, ptr %38, align 4, !dbg !1134
  br label %21, !dbg !1114, !llvm.loop !1135

39:                                               ; preds = %26
  %40 = load i32, ptr %9, align 4, !dbg !1137
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !1138
  ret i32 %40, !dbg !1139
}

; Function Attrs: nounwind optsize
define hidden void @sys_clock_announce(i32 noundef %0) #1 !dbg !1140 {
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
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1144, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1145, metadata !DIExpression()), !dbg !1153
  store ptr @timeout_lock, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !466, metadata !DIExpression()), !dbg !1154
  %23 = load ptr, ptr %15, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %14, metadata !472, metadata !DIExpression()), !dbg !1157
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %9, metadata !483, metadata !DIExpression()), !dbg !1160
  %24 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1161, !srcloc !487
  store i32 %24, ptr %9, align 4, !dbg !1161
  %25 = load i32, ptr %9, align 4, !dbg !1162
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !1163
  store i32 %25, ptr %14, align 4, !dbg !1164
  %26 = load ptr, ptr %15, align 4, !dbg !1165
  store ptr %26, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !492, metadata !DIExpression()), !dbg !1166
  %27 = load ptr, ptr %7, align 4, !dbg !1168
  %28 = load ptr, ptr %15, align 4, !dbg !1169
  store ptr %28, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !501, metadata !DIExpression()), !dbg !1170
  %29 = load ptr, ptr %5, align 4, !dbg !1172
  %30 = load i32, ptr %14, align 4, !dbg !1173
  %31 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1174
  store i32 %30, ptr %31, align 4, !dbg !1174
  %32 = load i32, ptr %18, align 4, !dbg !1175
  store i32 %32, ptr @announce_remaining, align 4, !dbg !1176
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1146, metadata !DIExpression()), !dbg !1178
  %33 = call ptr @first() #7, !dbg !1179
  store ptr %33, ptr %20, align 4, !dbg !1180
  br label %34, !dbg !1181

34:                                               ; preds = %82, %1
  %35 = load ptr, ptr %20, align 4, !dbg !1182
  %36 = icmp ne ptr %35, null, !dbg !1183
  br i1 %36, label %37, label %44, !dbg !1184

37:                                               ; preds = %34
  %38 = load ptr, ptr %20, align 4, !dbg !1185
  %39 = getelementptr inbounds %struct._timeout, ptr %38, i32 0, i32 2, !dbg !1186
  %40 = load i64, ptr %39, align 8, !dbg !1186
  %41 = load i32, ptr @announce_remaining, align 4, !dbg !1187
  %42 = sext i32 %41 to i64, !dbg !1187
  %43 = icmp sle i64 %40, %42, !dbg !1188
  br label %44

44:                                               ; preds = %37, %34
  %45 = phi i1 [ false, %34 ], [ %43, %37 ], !dbg !1189
  br i1 %45, label %46, label %84, !dbg !1190

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1147, metadata !DIExpression()), !dbg !1192
  %47 = load ptr, ptr %20, align 4, !dbg !1193
  %48 = getelementptr inbounds %struct._timeout, ptr %47, i32 0, i32 2, !dbg !1194
  %49 = load i64, ptr %48, align 8, !dbg !1194
  %50 = trunc i64 %49 to i32, !dbg !1193
  store i32 %50, ptr %21, align 4, !dbg !1192
  %51 = load i32, ptr %21, align 4, !dbg !1195
  %52 = sext i32 %51 to i64, !dbg !1195
  %53 = load i64, ptr @curr_tick, align 8, !dbg !1196
  %54 = add i64 %53, %52, !dbg !1196
  store i64 %54, ptr @curr_tick, align 8, !dbg !1196
  %55 = load ptr, ptr %20, align 4, !dbg !1197
  %56 = getelementptr inbounds %struct._timeout, ptr %55, i32 0, i32 2, !dbg !1198
  store i64 0, ptr %56, align 8, !dbg !1199
  %57 = load ptr, ptr %20, align 4, !dbg !1200
  call void @remove_timeout(ptr noundef %57) #7, !dbg !1201
  %58 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1202
  %59 = load [1 x i32], ptr %58, align 4, !dbg !1202
  store [1 x i32] %59, ptr %10, align 4
  store ptr @timeout_lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !603, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %10, metadata !608, metadata !DIExpression()), !dbg !1205
  %60 = load ptr, ptr %11, align 4, !dbg !1206
  %61 = load i32, ptr %10, align 4, !dbg !1207
  store i32 %61, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !614, metadata !DIExpression()), !dbg !1208
  %62 = load i32, ptr %3, align 4, !dbg !1210
  %63 = icmp ne i32 %62, 0, !dbg !1211
  br i1 %63, label %64, label %65, !dbg !1212

64:                                               ; preds = %46
  br label %arch_irq_unlock.exit, !dbg !1213

65:                                               ; preds = %46
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1214, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !1215

arch_irq_unlock.exit:                             ; preds = %64, %65
  %66 = load ptr, ptr %20, align 4, !dbg !1216
  %67 = getelementptr inbounds %struct._timeout, ptr %66, i32 0, i32 1, !dbg !1217
  %68 = load ptr, ptr %67, align 8, !dbg !1217
  %69 = load ptr, ptr %20, align 4, !dbg !1218
  call void %68(ptr noundef %69) #7, !dbg !1216
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8, !dbg !1219
  store ptr @timeout_lock, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !466, metadata !DIExpression()), !dbg !1220
  %70 = load ptr, ptr %17, align 4, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %16, metadata !472, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %8, metadata !483, metadata !DIExpression()), !dbg !1226
  %71 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1227, !srcloc !487
  store i32 %71, ptr %8, align 4, !dbg !1227
  %72 = load i32, ptr %8, align 4, !dbg !1228
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !1229
  store i32 %72, ptr %16, align 4, !dbg !1230
  %73 = load ptr, ptr %17, align 4, !dbg !1231
  store ptr %73, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !492, metadata !DIExpression()), !dbg !1232
  %74 = load ptr, ptr %6, align 4, !dbg !1234
  %75 = load ptr, ptr %17, align 4, !dbg !1235
  store ptr %75, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !501, metadata !DIExpression()), !dbg !1236
  %76 = load ptr, ptr %4, align 4, !dbg !1238
  %77 = load i32, ptr %16, align 4, !dbg !1239
  %78 = getelementptr inbounds %struct.z_spinlock_key, ptr %22, i32 0, i32 0, !dbg !1219
  store i32 %77, ptr %78, align 4, !dbg !1219
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %19, ptr align 4 %22, i32 4, i1 false), !dbg !1219
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8, !dbg !1219
  %79 = load i32, ptr %21, align 4, !dbg !1240
  %80 = load i32, ptr @announce_remaining, align 4, !dbg !1241
  %81 = sub nsw i32 %80, %79, !dbg !1241
  store i32 %81, ptr @announce_remaining, align 4, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !1242
  br label %82, !dbg !1243

82:                                               ; preds = %arch_irq_unlock.exit
  %83 = call ptr @first() #7, !dbg !1244
  store ptr %83, ptr %20, align 4, !dbg !1245
  br label %34, !dbg !1246, !llvm.loop !1247

84:                                               ; preds = %44
  %85 = load ptr, ptr %20, align 4, !dbg !1249
  %86 = icmp ne ptr %85, null, !dbg !1251
  br i1 %86, label %87, label %94, !dbg !1252

87:                                               ; preds = %84
  %88 = load i32, ptr @announce_remaining, align 4, !dbg !1253
  %89 = sext i32 %88 to i64, !dbg !1253
  %90 = load ptr, ptr %20, align 4, !dbg !1255
  %91 = getelementptr inbounds %struct._timeout, ptr %90, i32 0, i32 2, !dbg !1256
  %92 = load i64, ptr %91, align 8, !dbg !1257
  %93 = sub nsw i64 %92, %89, !dbg !1257
  store i64 %93, ptr %91, align 8, !dbg !1257
  br label %94, !dbg !1258

94:                                               ; preds = %87, %84
  %95 = load i32, ptr @announce_remaining, align 4, !dbg !1259
  %96 = sext i32 %95 to i64, !dbg !1259
  %97 = load i64, ptr @curr_tick, align 8, !dbg !1260
  %98 = add i64 %97, %96, !dbg !1260
  store i64 %98, ptr @curr_tick, align 8, !dbg !1260
  store i32 0, ptr @announce_remaining, align 4, !dbg !1261
  %99 = call i32 @next_timeout() #7, !dbg !1262
  call void @sys_clock_set_timeout(i32 noundef %99, i1 noundef zeroext false) #7, !dbg !1263
  %100 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1264
  %101 = load [1 x i32], ptr %100, align 4, !dbg !1264
  store [1 x i32] %101, ptr %12, align 4
  store ptr @timeout_lock, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !603, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %12, metadata !608, metadata !DIExpression()), !dbg !1267
  %102 = load ptr, ptr %13, align 4, !dbg !1268
  %103 = load i32, ptr %12, align 4, !dbg !1269
  store i32 %103, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !1270
  %104 = load i32, ptr %2, align 4, !dbg !1272
  %105 = icmp ne i32 %104, 0, !dbg !1273
  br i1 %105, label %106, label %107, !dbg !1274

106:                                              ; preds = %94
  br label %arch_irq_unlock.exit1, !dbg !1275

107:                                              ; preds = %94
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1276, !srcloc !628
  br label %arch_irq_unlock.exit1, !dbg !1277

arch_irq_unlock.exit1:                            ; preds = %106, %107
  call void @z_time_slice() #7, !dbg !1278
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8, !dbg !1279
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8, !dbg !1279
  ret void, !dbg !1279
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: optsize
declare !dbg !1280 dso_local void @z_time_slice() #5

; Function Attrs: nounwind optsize
define hidden i64 @sys_clock_tick_get() #1 !dbg !1284 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8, !dbg !1292
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1288, metadata !DIExpression()), !dbg !1293
  store i64 0, ptr %9, align 8, !dbg !1293
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1289, metadata !DIExpression()), !dbg !1295
  call void @llvm.memset.p0.i32(ptr align 4 %10, i8 0, i32 4, i1 false), !dbg !1295
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1291, metadata !DIExpression()), !dbg !1296
  store ptr @timeout_lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !466, metadata !DIExpression()), !dbg !1297
  %12 = load ptr, ptr %8, align 4, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %7, metadata !472, metadata !DIExpression()), !dbg !1300
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %4, metadata !483, metadata !DIExpression()), !dbg !1303
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #8, !dbg !1304, !srcloc !487
  store i32 %13, ptr %4, align 4, !dbg !1304
  %14 = load i32, ptr %4, align 4, !dbg !1305
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1306
  store i32 %14, ptr %7, align 4, !dbg !1307
  %15 = load ptr, ptr %8, align 4, !dbg !1308
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !492, metadata !DIExpression()), !dbg !1309
  %16 = load ptr, ptr %3, align 4, !dbg !1311
  %17 = load ptr, ptr %8, align 4, !dbg !1312
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !501, metadata !DIExpression()), !dbg !1313
  %18 = load ptr, ptr %2, align 4, !dbg !1315
  %19 = load i32, ptr %7, align 4, !dbg !1316
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1317
  store i32 %19, ptr %20, align 4, !dbg !1317
  br label %21, !dbg !1294

21:                                               ; preds = %arch_irq_unlock.exit, %0
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1318
  %23 = load i32, ptr %22, align 4, !dbg !1318
  %24 = icmp ne i32 %23, 0, !dbg !1320
  %25 = xor i1 %24, true, !dbg !1320
  br i1 %25, label %27, label %26, !dbg !1321

26:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1322
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !1322
  br label %42

27:                                               ; preds = %21
  %28 = load i64, ptr @curr_tick, align 8, !dbg !1323
  %29 = call i32 @elapsed() #7, !dbg !1325
  %30 = sext i32 %29 to i64, !dbg !1325
  %31 = add i64 %28, %30, !dbg !1326
  store i64 %31, ptr %9, align 8, !dbg !1327
  br label %32, !dbg !1328

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !1329
  %34 = load [1 x i32], ptr %33, align 4, !dbg !1329
  store [1 x i32] %34, ptr %5, align 4
  store ptr @timeout_lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !603, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %5, metadata !608, metadata !DIExpression()), !dbg !1332
  %35 = load ptr, ptr %6, align 4, !dbg !1333
  %36 = load i32, ptr %5, align 4, !dbg !1334
  store i32 %36, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !614, metadata !DIExpression()), !dbg !1335
  %37 = load i32, ptr %1, align 4, !dbg !1337
  %38 = icmp ne i32 %37, 0, !dbg !1338
  br i1 %38, label %39, label %40, !dbg !1339

39:                                               ; preds = %32
  br label %arch_irq_unlock.exit, !dbg !1340

40:                                               ; preds = %32
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #8, !dbg !1341, !srcloc !628
  br label %arch_irq_unlock.exit, !dbg !1342

arch_irq_unlock.exit:                             ; preds = %39, %40
  %41 = getelementptr inbounds %struct.z_spinlock_key, ptr %10, i32 0, i32 0, !dbg !1343
  store i32 1, ptr %41, align 4, !dbg !1344
  br label %21, !dbg !1322, !llvm.loop !1345

42:                                               ; preds = %26
  %43 = load i64, ptr %9, align 8, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8, !dbg !1348
  ret i64 %43, !dbg !1349
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_clock_tick_get_32() #1 !dbg !1350 {
  %1 = call i64 @sys_clock_tick_get() #7, !dbg !1353
  %2 = trunc i64 %1 to i32, !dbg !1354
  ret i32 %2, !dbg !1355
}

; Function Attrs: nounwind optsize
define hidden i64 @z_impl_k_uptime_ticks() #1 !dbg !1356 {
  %1 = call i64 @sys_clock_tick_get() #7, !dbg !1357
  ret i64 %1, !dbg !1358
}

; Function Attrs: nounwind optsize
define hidden void @sys_timepoint_calc(ptr noalias sret(%struct.k_timepoint_t) align 8 %0, [1 x i64] %1) #1 !dbg !1359 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca %struct.k_timeout_t, align 8
  %5 = alloca %struct.k_timeout_t, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1367, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %0, metadata !1368, metadata !DIExpression()), !dbg !1374
  %8 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1375
  %9 = load i64, ptr %8, align 8, !dbg !1375
  %10 = getelementptr inbounds %struct.k_timeout_t, ptr %4, i32 0, i32 0, !dbg !1376
  store i64 -1, ptr %10, align 8, !dbg !1376
  %11 = icmp eq i64 %9, -1, !dbg !1377
  br i1 %11, label %12, label %14, !dbg !1378

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1379
  store i64 -1, ptr %13, align 8, !dbg !1381
  br label %44, !dbg !1382

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1383
  %16 = load i64, ptr %15, align 8, !dbg !1383
  %17 = getelementptr inbounds %struct.k_timeout_t, ptr %5, i32 0, i32 0, !dbg !1384
  store i64 0, ptr %17, align 8, !dbg !1384
  %18 = icmp eq i64 %16, 0, !dbg !1385
  br i1 %18, label %19, label %21, !dbg !1386

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1387
  store i64 0, ptr %20, align 8, !dbg !1389
  br label %43, !dbg !1390

21:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8, !dbg !1391
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1369, metadata !DIExpression()), !dbg !1392
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !1393
  %23 = load i64, ptr %22, align 8, !dbg !1393
  store i64 %23, ptr %6, align 8, !dbg !1392
  %24 = load i64, ptr %6, align 8, !dbg !1394
  %25 = sub nsw i64 -2, %24, !dbg !1396
  %26 = icmp sge i64 %25, 0, !dbg !1397
  br i1 %26, label %27, label %31, !dbg !1398

27:                                               ; preds = %21
  %28 = load i64, ptr %6, align 8, !dbg !1399
  %29 = sub nsw i64 -2, %28, !dbg !1401
  %30 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1402
  store i64 %29, ptr %30, align 8, !dbg !1403
  br label %42, !dbg !1404

31:                                               ; preds = %21
  %32 = call i64 @sys_clock_tick_get() #7, !dbg !1405
  %33 = load i64, ptr %6, align 8, !dbg !1407
  %34 = icmp sgt i64 1, %33, !dbg !1408
  br i1 %34, label %35, label %36, !dbg !1409

35:                                               ; preds = %31
  br label %38, !dbg !1409

36:                                               ; preds = %31
  %37 = load i64, ptr %6, align 8, !dbg !1410
  br label %38, !dbg !1409

38:                                               ; preds = %36, %35
  %39 = phi i64 [ 1, %35 ], [ %37, %36 ], !dbg !1409
  %40 = add nsw i64 %32, %39, !dbg !1411
  %41 = getelementptr inbounds %struct.k_timepoint_t, ptr %0, i32 0, i32 0, !dbg !1412
  store i64 %40, ptr %41, align 8, !dbg !1413
  br label %42

42:                                               ; preds = %38, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8, !dbg !1414
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43, %12
  ret void, !dbg !1415
}

; Function Attrs: nounwind optsize
define hidden void @sys_timepoint_timeout(ptr noalias sret(%struct.k_timeout_t) align 8 %0, [1 x i64] %1) #1 !dbg !1416 {
  %3 = alloca %struct.k_timepoint_t, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1420, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1421, metadata !DIExpression()), !dbg !1425
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #8, !dbg !1424
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1422, metadata !DIExpression()), !dbg !1426
  %8 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1427
  %9 = load i64, ptr %8, align 8, !dbg !1427
  %10 = icmp eq i64 %9, -1, !dbg !1429
  br i1 %10, label %11, label %13, !dbg !1430

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1431
  store i64 -1, ptr %12, align 8, !dbg !1431
  store i32 1, ptr %6, align 4
  br label %35, !dbg !1433

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1434
  %15 = load i64, ptr %14, align 8, !dbg !1434
  %16 = icmp eq i64 %15, 0, !dbg !1436
  br i1 %16, label %17, label %19, !dbg !1437

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1438
  store i64 0, ptr %18, align 8, !dbg !1438
  store i32 1, ptr %6, align 4
  br label %35, !dbg !1440

19:                                               ; preds = %13
  %20 = call i64 @sys_clock_tick_get() #7, !dbg !1441
  store i64 %20, ptr %4, align 8, !dbg !1442
  %21 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1443
  %22 = load i64, ptr %21, align 8, !dbg !1443
  %23 = load i64, ptr %4, align 8, !dbg !1444
  %24 = icmp ugt i64 %22, %23, !dbg !1445
  br i1 %24, label %25, label %30, !dbg !1446

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.k_timepoint_t, ptr %3, i32 0, i32 0, !dbg !1447
  %27 = load i64, ptr %26, align 8, !dbg !1447
  %28 = load i64, ptr %4, align 8, !dbg !1448
  %29 = sub i64 %27, %28, !dbg !1449
  br label %31, !dbg !1446

30:                                               ; preds = %19
  br label %31, !dbg !1446

31:                                               ; preds = %30, %25
  %32 = phi i64 [ %29, %25 ], [ 0, %30 ], !dbg !1446
  store i64 %32, ptr %5, align 8, !dbg !1450
  %33 = getelementptr inbounds %struct.k_timeout_t, ptr %0, i32 0, i32 0, !dbg !1451
  %34 = load i64, ptr %5, align 8, !dbg !1452
  store i64 %34, ptr %33, align 8, !dbg !1451
  store i32 1, ptr %6, align 4
  br label %35, !dbg !1453

35:                                               ; preds = %31, %17, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #8, !dbg !1454
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8, !dbg !1454
  ret void, !dbg !1454
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1455 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1460, metadata !DIExpression()), !dbg !1461
  %3 = load ptr, ptr %2, align 4, !dbg !1462
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !1463
  %5 = icmp eq ptr %4, null, !dbg !1464
  ret i1 %5, !dbg !1465
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1466 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1470, metadata !DIExpression()), !dbg !1471
  %3 = load ptr, ptr %2, align 4, !dbg !1472
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1473
  %5 = load ptr, ptr %4, align 4, !dbg !1473
  ret ptr %5, !dbg !1474
}

; Function Attrs: optsize
declare !dbg !1475 dso_local i32 @sys_clock_elapsed() #5

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_head(ptr noundef %0) #0 !dbg !1476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1480, metadata !DIExpression()), !dbg !1481
  %3 = load ptr, ptr %2, align 4, !dbg !1482
  %4 = call zeroext i1 @sys_dlist_is_empty(ptr noundef %3) #7, !dbg !1483
  br i1 %4, label %5, label %6, !dbg !1483

5:                                                ; preds = %1
  br label %10, !dbg !1483

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !1484
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 0, !dbg !1485
  %9 = load ptr, ptr %8, align 4, !dbg !1485
  br label %10, !dbg !1483

10:                                               ; preds = %6, %5
  %11 = phi ptr [ null, %5 ], [ %9, %6 ], !dbg !1483
  ret ptr %11, !dbg !1486
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_dlist_is_empty(ptr noundef %0) #0 !dbg !1487 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1491, metadata !DIExpression()), !dbg !1492
  %3 = load ptr, ptr %2, align 4, !dbg !1493
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1494
  %5 = load ptr, ptr %4, align 4, !dbg !1494
  %6 = load ptr, ptr %2, align 4, !dbg !1495
  %7 = icmp eq ptr %5, %6, !dbg !1496
  ret i1 %7, !dbg !1497
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1498 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1502, metadata !DIExpression()), !dbg !1504
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !1505
  %5 = load ptr, ptr %4, align 4, !dbg !1506
  %6 = icmp ne ptr %5, null, !dbg !1507
  br i1 %6, label %7, label %11, !dbg !1508

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1509
  %9 = load ptr, ptr %4, align 4, !dbg !1510
  %10 = call ptr @sys_dlist_peek_next_no_check(ptr noundef %8, ptr noundef %9) #7, !dbg !1511
  br label %12, !dbg !1508

11:                                               ; preds = %2
  br label %12, !dbg !1508

12:                                               ; preds = %11, %7
  %13 = phi ptr [ %10, %7 ], [ null, %11 ], !dbg !1508
  ret ptr %13, !dbg !1512
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_dlist_peek_next_no_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1513 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1515, metadata !DIExpression()), !dbg !1517
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1516, metadata !DIExpression()), !dbg !1518
  %5 = load ptr, ptr %4, align 4, !dbg !1519
  %6 = load ptr, ptr %3, align 4, !dbg !1520
  %7 = getelementptr inbounds %struct._dnode, ptr %6, i32 0, i32 1, !dbg !1521
  %8 = load ptr, ptr %7, align 4, !dbg !1521
  %9 = icmp eq ptr %5, %8, !dbg !1522
  br i1 %9, label %10, label %11, !dbg !1523

10:                                               ; preds = %2
  br label %15, !dbg !1523

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 4, !dbg !1524
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1525
  %14 = load ptr, ptr %13, align 4, !dbg !1525
  br label %15, !dbg !1523

15:                                               ; preds = %11, %10
  %16 = phi ptr [ null, %10 ], [ %14, %11 ], !dbg !1523
  ret ptr %16, !dbg !1526
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dlist_remove(ptr noundef %0) #0 !dbg !1527 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !1534
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1532, metadata !DIExpression()), !dbg !1536
  %5 = load ptr, ptr %2, align 4, !dbg !1537
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1538
  %7 = load ptr, ptr %6, align 4, !dbg !1538
  store ptr %7, ptr %3, align 4, !dbg !1536
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !1540
  %8 = load ptr, ptr %2, align 4, !dbg !1541
  %9 = getelementptr inbounds %struct._dnode, ptr %8, i32 0, i32 0, !dbg !1542
  %10 = load ptr, ptr %9, align 4, !dbg !1542
  store ptr %10, ptr %4, align 4, !dbg !1540
  %11 = load ptr, ptr %4, align 4, !dbg !1543
  %12 = load ptr, ptr %3, align 4, !dbg !1544
  %13 = getelementptr inbounds %struct._dnode, ptr %12, i32 0, i32 0, !dbg !1545
  store ptr %11, ptr %13, align 4, !dbg !1546
  %14 = load ptr, ptr %3, align 4, !dbg !1547
  %15 = load ptr, ptr %4, align 4, !dbg !1548
  %16 = getelementptr inbounds %struct._dnode, ptr %15, i32 0, i32 1, !dbg !1549
  store ptr %14, ptr %16, align 4, !dbg !1550
  %17 = load ptr, ptr %2, align 4, !dbg !1551
  call void @sys_dnode_init(ptr noundef %17) #7, !dbg !1552
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1553
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1553
  ret void, !dbg !1553
}

; Function Attrs: inlinehint nounwind optsize
define internal void @sys_dnode_init(ptr noundef %0) #0 !dbg !1554 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1556, metadata !DIExpression()), !dbg !1557
  %3 = load ptr, ptr %2, align 4, !dbg !1558
  %4 = getelementptr inbounds %struct._dnode, ptr %3, i32 0, i32 0, !dbg !1559
  store ptr null, ptr %4, align 4, !dbg !1560
  %5 = load ptr, ptr %2, align 4, !dbg !1561
  %6 = getelementptr inbounds %struct._dnode, ptr %5, i32 0, i32 1, !dbg !1562
  store ptr null, ptr %6, align 4, !dbg !1563
  ret void, !dbg !1564
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_is_inactive_timeout(ptr noundef %0) #0 !dbg !1565 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1570, metadata !DIExpression()), !dbg !1571
  %3 = load ptr, ptr %2, align 4, !dbg !1572
  %4 = getelementptr inbounds %struct._timeout, ptr %3, i32 0, i32 0, !dbg !1573
  %5 = call zeroext i1 @sys_dnode_is_linked(ptr noundef %4) #7, !dbg !1574
  %6 = xor i1 %5, true, !dbg !1575
  ret i1 %6, !dbg !1576
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "timeout_lock", scope: !2, file: !130, line: 19, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !127, splitDebugInlining: false, nameTableKind: None)
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
!147 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!148 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !149, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !151, !153}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !155, line: 250, size: 896, elements: !156)
!155 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!156 = !{!157, !198, !211, !212, !213, !214, !232}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !154, file: !155, line: 252, baseType: !158, size: 384)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !155, line: 58, size: 384, elements: !159)
!159 = !{!160, !173, !179, !181, !182, !195, !196, !197}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !155, line: 61, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !155, line: 61, size: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !161, file: !155, line: 62, baseType: !104, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !161, file: !155, line: 63, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !166, line: 58, size: 64, elements: !167)
!166 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !165, file: !166, line: 60, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !171)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!171 = !{!172}
!172 = !DISubrange(count: 2)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !158, file: !155, line: 69, baseType: !174, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !101, line: 243, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !101, line: 241, size: 64, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !176, file: !101, line: 242, baseType: !137, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !158, file: !155, line: 72, baseType: !180, size: 8, offset: 96)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 62, baseType: !7)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !158, file: !155, line: 75, baseType: !180, size: 8, offset: 104)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !155, line: 91, baseType: !183, size: 16, offset: 112)
!183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !155, line: 91, size: 16, elements: !184)
!184 = !{!185, !192}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !155, line: 92, baseType: !186, size: 16)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !183, file: !155, line: 92, size: 16, elements: !187)
!187 = !{!188, !191}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !186, file: !155, line: 97, baseType: !189, size: 8)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !92, line: 56, baseType: !190)
!190 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !186, file: !155, line: 98, baseType: !180, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !183, file: !155, line: 101, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 63, baseType: !194)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !158, file: !155, line: 108, baseType: !96, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !158, file: !155, line: 132, baseType: !98, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !158, file: !155, line: 136, baseType: !100, size: 192, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !154, file: !155, line: 255, baseType: !199, size: 288, offset: 384)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !200, line: 25, size: 288, elements: !201)
!200 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!201 = !{!202, !203, !204, !205, !206, !207, !208, !209, !210}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !199, file: !200, line: 26, baseType: !96, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !199, file: !200, line: 27, baseType: !96, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !199, file: !200, line: 28, baseType: !96, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !199, file: !200, line: 29, baseType: !96, size: 32, offset: 96)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !199, file: !200, line: 30, baseType: !96, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !199, file: !200, line: 31, baseType: !96, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !199, file: !200, line: 32, baseType: !96, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !199, file: !200, line: 33, baseType: !96, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !199, file: !200, line: 34, baseType: !96, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !154, file: !155, line: 258, baseType: !98, size: 32, offset: 672)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !154, file: !155, line: 261, baseType: !175, size: 64, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !154, file: !155, line: 302, baseType: !95, size: 32, offset: 768)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !154, file: !155, line: 333, baseType: !215, size: 32, offset: 800)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !217, line: 5291, size: 160, elements: !218)
!217 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!218 = !{!219, !230, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !216, file: !217, line: 5292, baseType: !220, size: 96)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !221, line: 56, size: 96, elements: !222)
!221 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!222 = !{!223, !226, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !220, file: !221, line: 57, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 32)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !221, line: 57, flags: DIFlagFwdDecl)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !220, file: !221, line: 58, baseType: !98, size: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !220, file: !221, line: 59, baseType: !228, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !229, line: 46, baseType: !97)
!229 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!230 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !216, file: !217, line: 5293, baseType: !175, size: 64, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !216, file: !217, line: 5294, baseType: !138, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !154, file: !155, line: 355, baseType: !233, size: 64, offset: 832)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !200, line: 60, size: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !233, file: !200, line: 63, baseType: !96, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !233, file: !200, line: 66, baseType: !96, size: 32, offset: 32)
!237 = !{!238, !239}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !148, file: !6, line: 223, type: !151)
!239 = !DILocalVariable(name: "thread", arg: 2, scope: !148, file: !6, line: 224, type: !153)
!240 = !DILocation(line: 223, column: 61, scope: !148)
!241 = !DILocation(line: 224, column: 24, scope: !148)
!242 = !DILocation(line: 226, column: 9, scope: !148)
!243 = !DILocation(line: 227, column: 9, scope: !148)
!244 = !DILocation(line: 228, column: 1, scope: !148)
!245 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !246, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !151}
!248 = !{!249}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !245, file: !6, line: 243, type: !151)
!250 = !DILocation(line: 243, column: 56, scope: !245)
!251 = !DILocation(line: 245, column: 9, scope: !245)
!252 = !DILocation(line: 246, column: 1, scope: !245)
!253 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !254, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!98, !5}
!256 = !{!257}
!257 = !DILocalVariable(name: "otype", arg: 1, scope: !253, file: !6, line: 359, type: !5)
!258 = !DILocation(line: 359, column: 58, scope: !253)
!259 = !DILocation(line: 361, column: 9, scope: !253)
!260 = !DILocation(line: 363, column: 2, scope: !253)
!261 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !262, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!98, !5, !228}
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "otype", arg: 1, scope: !261, file: !6, line: 366, type: !5)
!266 = !DILocalVariable(name: "size", arg: 2, scope: !261, file: !6, line: 367, type: !228)
!267 = !DILocation(line: 366, column: 63, scope: !261)
!268 = !DILocation(line: 367, column: 13, scope: !261)
!269 = !DILocation(line: 369, column: 9, scope: !261)
!270 = !DILocation(line: 370, column: 9, scope: !261)
!271 = !DILocation(line: 372, column: 2, scope: !261)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !217, file: !217, line: 656, type: !273, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !277)
!273 = !DISubroutineType(types: !274)
!274 = !{!89, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!277 = !{!278}
!278 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !217, line: 657, type: !275)
!279 = !DILocation(line: 657, column: 30, scope: !272)
!280 = !DILocation(line: 659, column: 28, scope: !272)
!281 = !DILocation(line: 659, column: 31, scope: !272)
!282 = !DILocation(line: 659, column: 36, scope: !272)
!283 = !DILocation(line: 659, column: 9, scope: !272)
!284 = !DILocation(line: 659, column: 2, scope: !272)
!285 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !217, file: !217, line: 671, type: !273, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!286 = !{!287}
!287 = !DILocalVariable(name: "t", arg: 1, scope: !285, file: !217, line: 672, type: !275)
!288 = !DILocation(line: 672, column: 30, scope: !285)
!289 = !DILocation(line: 674, column: 30, scope: !285)
!290 = !DILocation(line: 674, column: 33, scope: !285)
!291 = !DILocation(line: 674, column: 38, scope: !285)
!292 = !DILocation(line: 674, column: 9, scope: !285)
!293 = !DILocation(line: 674, column: 2, scope: !285)
!294 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !217, file: !217, line: 1634, type: !295, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!295 = !DISubroutineType(types: !296)
!296 = !{!89, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !217, line: 1439, size: 448, elements: !300)
!300 = !{!301, !302, !303, !308, !309, !314, !315}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !299, file: !217, line: 1445, baseType: !100, size: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !299, file: !217, line: 1448, baseType: !175, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !299, file: !217, line: 1451, baseType: !304, size: 32, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !299, file: !217, line: 1454, baseType: !304, size: 32, offset: 288)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !299, file: !217, line: 1457, baseType: !310, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !90, line: 67, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 65, size: 64, elements: !312)
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !311, file: !90, line: 66, baseType: !89, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !299, file: !217, line: 1460, baseType: !96, size: 32, offset: 384)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !299, file: !217, line: 1463, baseType: !98, size: 32, offset: 416)
!316 = !{!317}
!317 = !DILocalVariable(name: "timer", arg: 1, scope: !294, file: !217, line: 1635, type: !297)
!318 = !DILocation(line: 1635, column: 34, scope: !294)
!319 = !DILocation(line: 1637, column: 28, scope: !294)
!320 = !DILocation(line: 1637, column: 35, scope: !294)
!321 = !DILocation(line: 1637, column: 9, scope: !294)
!322 = !DILocation(line: 1637, column: 2, scope: !294)
!323 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !217, file: !217, line: 1649, type: !295, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!324 = !{!325}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !323, file: !217, line: 1650, type: !297)
!326 = !DILocation(line: 1650, column: 34, scope: !323)
!327 = !DILocation(line: 1652, column: 30, scope: !323)
!328 = !DILocation(line: 1652, column: 37, scope: !323)
!329 = !DILocation(line: 1652, column: 9, scope: !323)
!330 = !DILocation(line: 1652, column: 2, scope: !323)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !217, file: !217, line: 1689, type: !332, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !307, !98}
!334 = !{!335, !336}
!335 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !217, line: 1689, type: !307)
!336 = !DILocalVariable(name: "user_data", arg: 2, scope: !331, file: !217, line: 1690, type: !98)
!337 = !DILocation(line: 1689, column: 65, scope: !331)
!338 = !DILocation(line: 1690, column: 19, scope: !331)
!339 = !DILocation(line: 1692, column: 21, scope: !331)
!340 = !DILocation(line: 1692, column: 2, scope: !331)
!341 = !DILocation(line: 1692, column: 9, scope: !331)
!342 = !DILocation(line: 1692, column: 19, scope: !331)
!343 = !DILocation(line: 1693, column: 1, scope: !331)
!344 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !217, file: !217, line: 1704, type: !345, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!98, !297}
!347 = !{!348}
!348 = !DILocalVariable(name: "timer", arg: 1, scope: !344, file: !217, line: 1704, type: !297)
!349 = !DILocation(line: 1704, column: 72, scope: !344)
!350 = !DILocation(line: 1706, column: 9, scope: !344)
!351 = !DILocation(line: 1706, column: 16, scope: !344)
!352 = !DILocation(line: 1706, column: 2, scope: !344)
!353 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !217, file: !217, line: 2071, type: !354, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!354 = !DISubroutineType(types: !355)
!355 = !{!95, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !217, line: 1830, size: 128, elements: !358)
!358 = !{!359, !372, !373}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !357, file: !217, line: 1831, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !361, line: 60, baseType: !362)
!361 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !361, line: 53, size: 64, elements: !363)
!363 = !{!364, !371}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !362, file: !361, line: 54, baseType: !365, size: 32)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !361, line: 50, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !361, line: 44, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !367, file: !361, line: 45, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !361, line: 40, baseType: !96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !362, file: !361, line: 55, baseType: !365, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !357, file: !217, line: 1832, baseType: !138, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !357, file: !217, line: 1833, baseType: !175, size: 64, offset: 64)
!374 = !{!375}
!375 = !DILocalVariable(name: "queue", arg: 1, scope: !353, file: !217, line: 2071, type: !356)
!376 = !DILocation(line: 2071, column: 59, scope: !353)
!377 = !DILocation(line: 2073, column: 35, scope: !353)
!378 = !DILocation(line: 2073, column: 42, scope: !353)
!379 = !DILocation(line: 2073, column: 14, scope: !353)
!380 = !DILocation(line: 2073, column: 9, scope: !353)
!381 = !DILocation(line: 2073, column: 2, scope: !353)
!382 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !217, file: !217, line: 3209, type: !383, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!383 = !DISubroutineType(types: !384)
!384 = !{!97, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !217, line: 3092, size: 128, elements: !387)
!387 = !{!388, !389, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !386, file: !217, line: 3093, baseType: !175, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !386, file: !217, line: 3094, baseType: !97, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !386, file: !217, line: 3095, baseType: !97, size: 32, offset: 96)
!391 = !{!392}
!392 = !DILocalVariable(name: "sem", arg: 1, scope: !382, file: !217, line: 3209, type: !385)
!393 = !DILocation(line: 3209, column: 65, scope: !382)
!394 = !DILocation(line: 3211, column: 9, scope: !382)
!395 = !DILocation(line: 3211, column: 14, scope: !382)
!396 = !DILocation(line: 3211, column: 2, scope: !382)
!397 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !217, file: !217, line: 4649, type: !398, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!398 = !DISubroutineType(types: !399)
!399 = !{!96, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !217, line: 4390, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !401, file: !217, line: 4392, baseType: !175, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !401, file: !217, line: 4394, baseType: !138, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !401, file: !217, line: 4396, baseType: !228, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !401, file: !217, line: 4398, baseType: !96, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !401, file: !217, line: 4400, baseType: !125, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !401, file: !217, line: 4402, baseType: !125, size: 32, offset: 160)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !401, file: !217, line: 4404, baseType: !125, size: 32, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !401, file: !217, line: 4406, baseType: !125, size: 32, offset: 224)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !401, file: !217, line: 4408, baseType: !96, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !217, line: 4413, baseType: !180, size: 8, offset: 288)
!413 = !{!414}
!414 = !DILocalVariable(name: "msgq", arg: 1, scope: !397, file: !217, line: 4649, type: !400)
!415 = !DILocation(line: 4649, column: 66, scope: !397)
!416 = !DILocation(line: 4651, column: 9, scope: !397)
!417 = !DILocation(line: 4651, column: 15, scope: !397)
!418 = !DILocation(line: 4651, column: 26, scope: !397)
!419 = !DILocation(line: 4651, column: 32, scope: !397)
!420 = !DILocation(line: 4651, column: 24, scope: !397)
!421 = !DILocation(line: 4651, column: 2, scope: !397)
!422 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !217, file: !217, line: 4665, type: !398, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!423 = !{!424}
!424 = !DILocalVariable(name: "msgq", arg: 1, scope: !422, file: !217, line: 4665, type: !400)
!425 = !DILocation(line: 4665, column: 66, scope: !422)
!426 = !DILocation(line: 4667, column: 9, scope: !422)
!427 = !DILocation(line: 4667, column: 15, scope: !422)
!428 = !DILocation(line: 4667, column: 2, scope: !422)
!429 = distinct !DISubprogram(name: "z_add_timeout", scope: !130, file: !130, line: 99, type: !430, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !99, !120, !310}
!432 = !{!433, !434, !435, !436, !442, !443, !446}
!433 = !DILocalVariable(name: "to", arg: 1, scope: !429, file: !130, line: 99, type: !99)
!434 = !DILocalVariable(name: "fn", arg: 2, scope: !429, file: !130, line: 99, type: !120)
!435 = !DILocalVariable(name: "timeout", arg: 3, scope: !429, file: !130, line: 100, type: !310)
!436 = !DILocalVariable(name: "__i", scope: !437, file: !130, line: 113, type: !438)
!437 = distinct !DILexicalBlock(scope: !429, file: !130, line: 113, column: 2)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !139, line: 108, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !139, line: 34, size: 32, elements: !440)
!440 = !{!441}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !439, file: !139, line: 35, baseType: !95, size: 32)
!442 = !DILocalVariable(name: "__key", scope: !437, file: !130, line: 113, type: !438)
!443 = !DILocalVariable(name: "t", scope: !444, file: !130, line: 114, type: !99)
!444 = distinct !DILexicalBlock(scope: !445, file: !130, line: 113, column: 130)
!445 = distinct !DILexicalBlock(scope: !437, file: !130, line: 113, column: 2)
!446 = !DILocalVariable(name: "ticks", scope: !447, file: !130, line: 118, type: !89)
!447 = distinct !DILexicalBlock(scope: !448, file: !130, line: 117, column: 54)
!448 = distinct !DILexicalBlock(scope: !444, file: !130, line: 116, column: 7)
!449 = !DILocation(line: 99, column: 37, scope: !429)
!450 = !DILocation(line: 99, column: 57, scope: !429)
!451 = !DILocation(line: 100, column: 18, scope: !429)
!452 = !DILocation(line: 102, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !429, file: !130, line: 102, column: 6)
!454 = !DILocation(line: 102, column: 42, scope: !453)
!455 = !DILocation(line: 102, column: 23, scope: !453)
!456 = !DILocation(line: 102, column: 6, scope: !429)
!457 = !DILocation(line: 103, column: 3, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !130, line: 102, column: 84)
!459 = !DILocation(line: 111, column: 11, scope: !429)
!460 = !DILocation(line: 111, column: 2, scope: !429)
!461 = !DILocation(line: 111, column: 6, scope: !429)
!462 = !DILocation(line: 111, column: 9, scope: !429)
!463 = !DILocation(line: 113, column: 7, scope: !437)
!464 = !DILocation(line: 113, column: 24, scope: !437)
!465 = !DILocation(line: 113, column: 34, scope: !437)
!466 = !DILocalVariable(name: "l", arg: 1, scope: !467, file: !139, line: 160, type: !470)
!467 = distinct !DISubprogram(name: "k_spin_lock", scope: !139, file: !139, line: 160, type: !468, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !471)
!468 = !DISubroutineType(types: !469)
!469 = !{!438, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!471 = !{!466, !472}
!472 = !DILocalVariable(name: "k", scope: !467, file: !139, line: 163, type: !438)
!473 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !474)
!474 = distinct !DILocation(line: 113, column: 42, scope: !437)
!475 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !474)
!476 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !474)
!477 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !484)
!478 = distinct !DISubprogram(name: "arch_irq_lock", scope: !479, file: !479, line: 42, type: !480, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!479 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!480 = !DISubroutineType(types: !481)
!481 = !{!97}
!482 = !{!483}
!483 = !DILocalVariable(name: "key", scope: !478, file: !479, line: 44, type: !97)
!484 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !474)
!485 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !484)
!486 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !484)
!487 = !{i64 66902}
!488 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !484)
!489 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !484)
!490 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !474)
!491 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !474)
!492 = !DILocalVariable(name: "l", arg: 1, scope: !493, file: !139, line: 110, type: !470)
!493 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !139, file: !139, line: 110, type: !494, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !470}
!496 = !{!492}
!497 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !498)
!498 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !474)
!499 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !498)
!500 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !474)
!501 = !DILocalVariable(name: "l", arg: 1, scope: !502, file: !139, line: 121, type: !470)
!502 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !139, file: !139, line: 121, type: !494, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!503 = !{!501}
!504 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !505)
!505 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !474)
!506 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !505)
!507 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !474)
!508 = !DILocation(line: 113, column: 42, scope: !437)
!509 = !DILocation(line: 113, column: 75, scope: !445)
!510 = !DILocation(line: 113, column: 70, scope: !445)
!511 = !DILocation(line: 113, column: 2, scope: !437)
!512 = !DILocation(line: 113, column: 2, scope: !445)
!513 = !DILocation(line: 114, column: 3, scope: !444)
!514 = !DILocation(line: 114, column: 20, scope: !444)
!515 = !DILocation(line: 117, column: 40, scope: !448)
!516 = !DILocation(line: 117, column: 29, scope: !448)
!517 = !DILocation(line: 117, column: 48, scope: !448)
!518 = !DILocation(line: 116, column: 7, scope: !444)
!519 = !DILocation(line: 118, column: 4, scope: !447)
!520 = !DILocation(line: 118, column: 14, scope: !447)
!521 = !DILocation(line: 118, column: 55, scope: !447)
!522 = !DILocation(line: 118, column: 44, scope: !447)
!523 = !DILocation(line: 118, column: 65, scope: !447)
!524 = !DILocation(line: 118, column: 63, scope: !447)
!525 = !DILocation(line: 120, column: 26, scope: !447)
!526 = !DILocation(line: 120, column: 23, scope: !447)
!527 = !DILocation(line: 120, column: 18, scope: !447)
!528 = !DILocation(line: 120, column: 43, scope: !447)
!529 = !DILocation(line: 120, column: 4, scope: !447)
!530 = !DILocation(line: 120, column: 8, scope: !447)
!531 = !DILocation(line: 120, column: 15, scope: !447)
!532 = !DILocation(line: 121, column: 3, scope: !448)
!533 = !DILocation(line: 121, column: 3, scope: !447)
!534 = !DILocation(line: 122, column: 25, scope: !535)
!535 = distinct !DILexicalBlock(scope: !448, file: !130, line: 121, column: 10)
!536 = !DILocation(line: 122, column: 31, scope: !535)
!537 = !DILocation(line: 122, column: 37, scope: !535)
!538 = !DILocation(line: 122, column: 35, scope: !535)
!539 = !DILocation(line: 122, column: 4, scope: !535)
!540 = !DILocation(line: 122, column: 8, scope: !535)
!541 = !DILocation(line: 122, column: 15, scope: !535)
!542 = !DILocation(line: 125, column: 12, scope: !543)
!543 = distinct !DILexicalBlock(scope: !444, file: !130, line: 125, column: 3)
!544 = !DILocation(line: 125, column: 10, scope: !543)
!545 = !DILocation(line: 125, column: 8, scope: !543)
!546 = !DILocation(line: 125, column: 21, scope: !547)
!547 = distinct !DILexicalBlock(scope: !543, file: !130, line: 125, column: 3)
!548 = !DILocation(line: 125, column: 23, scope: !547)
!549 = !DILocation(line: 125, column: 3, scope: !543)
!550 = !DILocation(line: 126, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !130, line: 126, column: 8)
!552 = distinct !DILexicalBlock(scope: !547, file: !130, line: 125, column: 42)
!553 = !DILocation(line: 126, column: 11, scope: !551)
!554 = !DILocation(line: 126, column: 20, scope: !551)
!555 = !DILocation(line: 126, column: 24, scope: !551)
!556 = !DILocation(line: 126, column: 18, scope: !551)
!557 = !DILocation(line: 126, column: 8, scope: !552)
!558 = !DILocation(line: 127, column: 18, scope: !559)
!559 = distinct !DILexicalBlock(scope: !551, file: !130, line: 126, column: 32)
!560 = !DILocation(line: 127, column: 22, scope: !559)
!561 = !DILocation(line: 127, column: 5, scope: !559)
!562 = !DILocation(line: 127, column: 8, scope: !559)
!563 = !DILocation(line: 127, column: 15, scope: !559)
!564 = !DILocation(line: 128, column: 23, scope: !559)
!565 = !DILocation(line: 128, column: 26, scope: !559)
!566 = !DILocation(line: 128, column: 33, scope: !559)
!567 = !DILocation(line: 128, column: 37, scope: !559)
!568 = !DILocation(line: 128, column: 5, scope: !559)
!569 = !DILocation(line: 129, column: 5, scope: !559)
!570 = !DILocation(line: 131, column: 18, scope: !552)
!571 = !DILocation(line: 131, column: 21, scope: !552)
!572 = !DILocation(line: 131, column: 4, scope: !552)
!573 = !DILocation(line: 131, column: 8, scope: !552)
!574 = !DILocation(line: 131, column: 15, scope: !552)
!575 = !DILocation(line: 132, column: 3, scope: !552)
!576 = !DILocation(line: 125, column: 38, scope: !547)
!577 = !DILocation(line: 125, column: 33, scope: !547)
!578 = !DILocation(line: 125, column: 31, scope: !547)
!579 = !DILocation(line: 125, column: 3, scope: !547)
!580 = distinct !{!580, !549, !581}
!581 = !DILocation(line: 132, column: 3, scope: !543)
!582 = !DILocation(line: 134, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !444, file: !130, line: 134, column: 7)
!584 = !DILocation(line: 134, column: 9, scope: !583)
!585 = !DILocation(line: 134, column: 7, scope: !444)
!586 = !DILocation(line: 135, column: 37, scope: !587)
!587 = distinct !DILexicalBlock(scope: !583, file: !130, line: 134, column: 15)
!588 = !DILocation(line: 135, column: 41, scope: !587)
!589 = !DILocation(line: 135, column: 4, scope: !587)
!590 = !DILocation(line: 136, column: 3, scope: !587)
!591 = !DILocation(line: 138, column: 7, scope: !592)
!592 = distinct !DILexicalBlock(scope: !444, file: !130, line: 138, column: 7)
!593 = !DILocation(line: 138, column: 13, scope: !592)
!594 = !DILocation(line: 138, column: 10, scope: !592)
!595 = !DILocation(line: 138, column: 7, scope: !444)
!596 = !DILocation(line: 139, column: 26, scope: !597)
!597 = distinct !DILexicalBlock(scope: !592, file: !130, line: 138, column: 22)
!598 = !DILocation(line: 139, column: 4, scope: !597)
!599 = !DILocation(line: 140, column: 3, scope: !597)
!600 = !DILocation(line: 141, column: 2, scope: !445)
!601 = !DILocation(line: 141, column: 2, scope: !444)
!602 = !DILocation(line: 113, column: 80, scope: !445)
!603 = !DILocalVariable(name: "l", arg: 1, scope: !604, file: !139, line: 235, type: !470)
!604 = distinct !DISubprogram(name: "k_spin_unlock", scope: !139, file: !139, line: 235, type: !605, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !470, !438}
!607 = !{!603, !608}
!608 = !DILocalVariable(name: "key", arg: 2, scope: !604, file: !139, line: 236, type: !438)
!609 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !610)
!610 = distinct !DILocation(line: 113, column: 80, scope: !445)
!611 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !610)
!612 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !610)
!613 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !610)
!614 = !DILocalVariable(name: "key", arg: 1, scope: !615, file: !479, line: 88, type: !97)
!615 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !479, file: !479, line: 88, type: !616, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !97}
!618 = !{!614}
!619 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !620)
!620 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !610)
!621 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !620)
!622 = distinct !DILexicalBlock(scope: !615, file: !479, line: 91, column: 6)
!623 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !620)
!624 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !620)
!625 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !620)
!626 = distinct !DILexicalBlock(scope: !622, file: !479, line: 91, column: 17)
!627 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !620)
!628 = !{i64 67206}
!629 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !620)
!630 = !DILocation(line: 113, column: 121, scope: !445)
!631 = !DILocation(line: 113, column: 125, scope: !445)
!632 = distinct !{!632, !511, !633}
!633 = !DILocation(line: 141, column: 2, scope: !437)
!634 = !DILocation(line: 142, column: 1, scope: !429)
!635 = distinct !DISubprogram(name: "elapsed", scope: !130, file: !130, line: 62, type: !636, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!636 = !DISubroutineType(types: !637)
!637 = !{!94}
!638 = !DILocation(line: 80, column: 9, scope: !635)
!639 = !DILocation(line: 80, column: 28, scope: !635)
!640 = !DILocation(line: 80, column: 35, scope: !635)
!641 = !DILocation(line: 80, column: 2, scope: !635)
!642 = distinct !DISubprogram(name: "first", scope: !130, file: !130, line: 39, type: !643, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{!99}
!645 = !{!646}
!646 = !DILocalVariable(name: "t", scope: !642, file: !130, line: 41, type: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!648 = !DILocation(line: 41, column: 2, scope: !642)
!649 = !DILocation(line: 41, column: 15, scope: !642)
!650 = !DILocation(line: 41, column: 19, scope: !642)
!651 = !DILocation(line: 43, column: 9, scope: !642)
!652 = !DILocation(line: 43, column: 11, scope: !642)
!653 = !DILocation(line: 43, column: 58, scope: !654)
!654 = distinct !DILexicalBlock(scope: !642, file: !130, line: 43, column: 23)
!655 = !DILocation(line: 43, column: 62, scope: !654)
!656 = !DILocation(line: 43, column: 23, scope: !642)
!657 = !DILocation(line: 43, column: 109, scope: !654)
!658 = !DILocation(line: 44, column: 1, scope: !642)
!659 = !DILocation(line: 43, column: 2, scope: !642)
!660 = distinct !DISubprogram(name: "sys_dlist_insert", scope: !105, file: !105, line: 452, type: !661, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !663)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !647, !647}
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "successor", arg: 1, scope: !660, file: !105, line: 452, type: !647)
!665 = !DILocalVariable(name: "node", arg: 2, scope: !660, file: !105, line: 452, type: !647)
!666 = !DILocalVariable(name: "prev", scope: !660, file: !105, line: 454, type: !667)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!668 = !DILocation(line: 452, column: 50, scope: !660)
!669 = !DILocation(line: 452, column: 74, scope: !660)
!670 = !DILocation(line: 454, column: 2, scope: !660)
!671 = !DILocation(line: 454, column: 21, scope: !660)
!672 = !DILocation(line: 454, column: 28, scope: !660)
!673 = !DILocation(line: 454, column: 39, scope: !660)
!674 = !DILocation(line: 456, column: 15, scope: !660)
!675 = !DILocation(line: 456, column: 2, scope: !660)
!676 = !DILocation(line: 456, column: 8, scope: !660)
!677 = !DILocation(line: 456, column: 13, scope: !660)
!678 = !DILocation(line: 457, column: 15, scope: !660)
!679 = !DILocation(line: 457, column: 2, scope: !660)
!680 = !DILocation(line: 457, column: 8, scope: !660)
!681 = !DILocation(line: 457, column: 13, scope: !660)
!682 = !DILocation(line: 458, column: 15, scope: !660)
!683 = !DILocation(line: 458, column: 2, scope: !660)
!684 = !DILocation(line: 458, column: 8, scope: !660)
!685 = !DILocation(line: 458, column: 13, scope: !660)
!686 = !DILocation(line: 459, column: 20, scope: !660)
!687 = !DILocation(line: 459, column: 2, scope: !660)
!688 = !DILocation(line: 459, column: 13, scope: !660)
!689 = !DILocation(line: 459, column: 18, scope: !660)
!690 = !DILocation(line: 460, column: 1, scope: !660)
!691 = distinct !DISubprogram(name: "next", scope: !130, file: !130, line: 46, type: !692, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!99, !99}
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "t", arg: 1, scope: !691, file: !130, line: 46, type: !99)
!696 = !DILocalVariable(name: "n", scope: !691, file: !130, line: 48, type: !647)
!697 = !DILocation(line: 46, column: 47, scope: !691)
!698 = !DILocation(line: 48, column: 2, scope: !691)
!699 = !DILocation(line: 48, column: 15, scope: !691)
!700 = !DILocation(line: 48, column: 55, scope: !691)
!701 = !DILocation(line: 48, column: 58, scope: !691)
!702 = !DILocation(line: 48, column: 19, scope: !691)
!703 = !DILocation(line: 50, column: 9, scope: !691)
!704 = !DILocation(line: 50, column: 11, scope: !691)
!705 = !DILocation(line: 50, column: 58, scope: !706)
!706 = distinct !DILexicalBlock(scope: !691, file: !130, line: 50, column: 23)
!707 = !DILocation(line: 50, column: 62, scope: !706)
!708 = !DILocation(line: 50, column: 23, scope: !691)
!709 = !DILocation(line: 50, column: 109, scope: !706)
!710 = !DILocation(line: 51, column: 1, scope: !691)
!711 = !DILocation(line: 50, column: 2, scope: !691)
!712 = distinct !DISubprogram(name: "sys_dlist_append", scope: !105, file: !105, line: 413, type: !713, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !715, !647}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!716 = !{!717, !718, !719}
!717 = !DILocalVariable(name: "list", arg: 1, scope: !712, file: !105, line: 413, type: !715)
!718 = !DILocalVariable(name: "node", arg: 2, scope: !712, file: !105, line: 413, type: !647)
!719 = !DILocalVariable(name: "tail", scope: !712, file: !105, line: 415, type: !667)
!720 = !DILocation(line: 413, column: 50, scope: !712)
!721 = !DILocation(line: 413, column: 69, scope: !712)
!722 = !DILocation(line: 415, column: 2, scope: !712)
!723 = !DILocation(line: 415, column: 21, scope: !712)
!724 = !DILocation(line: 415, column: 28, scope: !712)
!725 = !DILocation(line: 415, column: 34, scope: !712)
!726 = !DILocation(line: 417, column: 15, scope: !712)
!727 = !DILocation(line: 417, column: 2, scope: !712)
!728 = !DILocation(line: 417, column: 8, scope: !712)
!729 = !DILocation(line: 417, column: 13, scope: !712)
!730 = !DILocation(line: 418, column: 15, scope: !712)
!731 = !DILocation(line: 418, column: 2, scope: !712)
!732 = !DILocation(line: 418, column: 8, scope: !712)
!733 = !DILocation(line: 418, column: 13, scope: !712)
!734 = !DILocation(line: 420, column: 15, scope: !712)
!735 = !DILocation(line: 420, column: 2, scope: !712)
!736 = !DILocation(line: 420, column: 8, scope: !712)
!737 = !DILocation(line: 420, column: 13, scope: !712)
!738 = !DILocation(line: 421, column: 15, scope: !712)
!739 = !DILocation(line: 421, column: 2, scope: !712)
!740 = !DILocation(line: 421, column: 8, scope: !712)
!741 = !DILocation(line: 421, column: 13, scope: !712)
!742 = !DILocation(line: 422, column: 1, scope: !712)
!743 = !DISubprogram(name: "sys_clock_set_timeout", scope: !744, file: !744, line: 73, type: !745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !140)
!744 = !DIFile(filename: "include/zephyr/drivers/timer/system_timer.h", directory: "/home/sri/zephyrproject/zephyr")
!745 = !DISubroutineType(types: !746)
!746 = !{null, !94, !747}
!747 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!748 = distinct !DISubprogram(name: "next_timeout", scope: !130, file: !130, line: 83, type: !636, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !749)
!749 = !{!750, !751, !752}
!750 = !DILocalVariable(name: "to", scope: !748, file: !130, line: 85, type: !99)
!751 = !DILocalVariable(name: "ticks_elapsed", scope: !748, file: !130, line: 86, type: !94)
!752 = !DILocalVariable(name: "ret", scope: !748, file: !130, line: 87, type: !94)
!753 = !DILocation(line: 85, column: 2, scope: !748)
!754 = !DILocation(line: 85, column: 19, scope: !748)
!755 = !DILocation(line: 85, column: 24, scope: !748)
!756 = !DILocation(line: 86, column: 2, scope: !748)
!757 = !DILocation(line: 86, column: 10, scope: !748)
!758 = !DILocation(line: 86, column: 26, scope: !748)
!759 = !DILocation(line: 87, column: 2, scope: !748)
!760 = !DILocation(line: 87, column: 10, scope: !748)
!761 = !DILocation(line: 89, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !748, file: !130, line: 89, column: 6)
!763 = !DILocation(line: 89, column: 10, scope: !762)
!764 = !DILocation(line: 89, column: 16, scope: !762)
!765 = !DILocation(line: 90, column: 17, scope: !762)
!766 = !DILocation(line: 90, column: 21, scope: !762)
!767 = !DILocation(line: 90, column: 30, scope: !762)
!768 = !DILocation(line: 90, column: 28, scope: !762)
!769 = !DILocation(line: 90, column: 45, scope: !762)
!770 = !DILocation(line: 89, column: 6, scope: !748)
!771 = !DILocation(line: 91, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !762, file: !130, line: 90, column: 69)
!773 = !DILocation(line: 92, column: 2, scope: !772)
!774 = !DILocation(line: 93, column: 18, scope: !775)
!775 = distinct !DILexicalBlock(scope: !762, file: !130, line: 92, column: 9)
!776 = !DILocation(line: 93, column: 22, scope: !775)
!777 = !DILocation(line: 93, column: 31, scope: !775)
!778 = !DILocation(line: 93, column: 29, scope: !775)
!779 = !DILocation(line: 93, column: 15, scope: !775)
!780 = !DILocation(line: 93, column: 10, scope: !775)
!781 = !DILocation(line: 93, column: 56, scope: !775)
!782 = !DILocation(line: 93, column: 60, scope: !775)
!783 = !DILocation(line: 93, column: 69, scope: !775)
!784 = !DILocation(line: 93, column: 67, scope: !775)
!785 = !DILocation(line: 93, column: 9, scope: !775)
!786 = !DILocation(line: 93, column: 7, scope: !775)
!787 = !DILocation(line: 96, column: 9, scope: !748)
!788 = !DILocation(line: 97, column: 1, scope: !748)
!789 = !DILocation(line: 96, column: 2, scope: !748)
!790 = distinct !DISubprogram(name: "z_abort_timeout", scope: !130, file: !130, line: 144, type: !791, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !793)
!791 = !DISubroutineType(types: !792)
!792 = !{!95, !99}
!793 = !{!794, !795, !796, !798}
!794 = !DILocalVariable(name: "to", arg: 1, scope: !790, file: !130, line: 144, type: !99)
!795 = !DILocalVariable(name: "ret", scope: !790, file: !130, line: 146, type: !95)
!796 = !DILocalVariable(name: "__i", scope: !797, file: !130, line: 148, type: !438)
!797 = distinct !DILexicalBlock(scope: !790, file: !130, line: 148, column: 2)
!798 = !DILocalVariable(name: "__key", scope: !797, file: !130, line: 148, type: !438)
!799 = !DILocation(line: 144, column: 38, scope: !790)
!800 = !DILocation(line: 146, column: 2, scope: !790)
!801 = !DILocation(line: 146, column: 6, scope: !790)
!802 = !DILocation(line: 148, column: 7, scope: !797)
!803 = !DILocation(line: 148, column: 24, scope: !797)
!804 = !DILocation(line: 148, column: 34, scope: !797)
!805 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !806)
!806 = distinct !DILocation(line: 148, column: 42, scope: !797)
!807 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !806)
!808 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !806)
!809 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !810)
!810 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !806)
!811 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !810)
!812 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !810)
!813 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !810)
!814 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !810)
!815 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !806)
!816 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !806)
!817 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !818)
!818 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !806)
!819 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !818)
!820 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !806)
!821 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !822)
!822 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !806)
!823 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !822)
!824 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !806)
!825 = !DILocation(line: 148, column: 42, scope: !797)
!826 = !DILocation(line: 148, column: 75, scope: !827)
!827 = distinct !DILexicalBlock(scope: !797, file: !130, line: 148, column: 2)
!828 = !DILocation(line: 148, column: 70, scope: !827)
!829 = !DILocation(line: 148, column: 2, scope: !797)
!830 = !DILocation(line: 148, column: 2, scope: !827)
!831 = !DILocation(line: 149, column: 28, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !130, line: 149, column: 7)
!833 = distinct !DILexicalBlock(scope: !827, file: !130, line: 148, column: 130)
!834 = !DILocation(line: 149, column: 32, scope: !832)
!835 = !DILocation(line: 149, column: 7, scope: !832)
!836 = !DILocation(line: 149, column: 7, scope: !833)
!837 = !DILocation(line: 150, column: 19, scope: !838)
!838 = distinct !DILexicalBlock(scope: !832, file: !130, line: 149, column: 39)
!839 = !DILocation(line: 150, column: 4, scope: !838)
!840 = !DILocation(line: 151, column: 8, scope: !838)
!841 = !DILocation(line: 152, column: 3, scope: !838)
!842 = !DILocation(line: 153, column: 2, scope: !833)
!843 = !DILocation(line: 148, column: 80, scope: !827)
!844 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !845)
!845 = distinct !DILocation(line: 148, column: 80, scope: !827)
!846 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !845)
!847 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !845)
!848 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !845)
!849 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !850)
!850 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !845)
!851 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !850)
!852 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !850)
!853 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !850)
!854 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !850)
!855 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !850)
!856 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !850)
!857 = !DILocation(line: 148, column: 121, scope: !827)
!858 = !DILocation(line: 148, column: 125, scope: !827)
!859 = distinct !{!859, !829, !860}
!860 = !DILocation(line: 153, column: 2, scope: !797)
!861 = !DILocation(line: 155, column: 9, scope: !790)
!862 = !DILocation(line: 156, column: 1, scope: !790)
!863 = !DILocation(line: 155, column: 2, scope: !790)
!864 = distinct !DISubprogram(name: "sys_dnode_is_linked", scope: !105, file: !105, line: 234, type: !865, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !869)
!865 = !DISubroutineType(types: !866)
!866 = !{!747, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!869 = !{!870}
!870 = !DILocalVariable(name: "node", arg: 1, scope: !864, file: !105, line: 234, type: !867)
!871 = !DILocation(line: 234, column: 60, scope: !864)
!872 = !DILocation(line: 236, column: 9, scope: !864)
!873 = !DILocation(line: 236, column: 15, scope: !864)
!874 = !DILocation(line: 236, column: 20, scope: !864)
!875 = !DILocation(line: 236, column: 2, scope: !864)
!876 = distinct !DISubprogram(name: "remove_timeout", scope: !130, file: !130, line: 53, type: !122, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !877)
!877 = !{!878}
!878 = !DILocalVariable(name: "t", arg: 1, scope: !876, file: !130, line: 53, type: !99)
!879 = !DILocation(line: 53, column: 45, scope: !876)
!880 = !DILocation(line: 55, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !130, line: 55, column: 6)
!882 = !DILocation(line: 55, column: 6, scope: !881)
!883 = !DILocation(line: 55, column: 14, scope: !881)
!884 = !DILocation(line: 55, column: 6, scope: !876)
!885 = !DILocation(line: 56, column: 22, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !130, line: 55, column: 20)
!887 = !DILocation(line: 56, column: 25, scope: !886)
!888 = !DILocation(line: 56, column: 8, scope: !886)
!889 = !DILocation(line: 56, column: 3, scope: !886)
!890 = !DILocation(line: 56, column: 12, scope: !886)
!891 = !DILocation(line: 56, column: 19, scope: !886)
!892 = !DILocation(line: 57, column: 2, scope: !886)
!893 = !DILocation(line: 59, column: 20, scope: !876)
!894 = !DILocation(line: 59, column: 23, scope: !876)
!895 = !DILocation(line: 59, column: 2, scope: !876)
!896 = !DILocation(line: 60, column: 1, scope: !876)
!897 = distinct !DISubprogram(name: "z_timeout_remaining", scope: !130, file: !130, line: 177, type: !898, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!898 = !DISubroutineType(types: !899)
!899 = !{!89, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!902 = !{!903, !904, !905, !907}
!903 = !DILocalVariable(name: "timeout", arg: 1, scope: !897, file: !130, line: 177, type: !900)
!904 = !DILocalVariable(name: "ticks", scope: !897, file: !130, line: 179, type: !89)
!905 = !DILocalVariable(name: "__i", scope: !906, file: !130, line: 181, type: !438)
!906 = distinct !DILexicalBlock(scope: !897, file: !130, line: 181, column: 2)
!907 = !DILocalVariable(name: "__key", scope: !906, file: !130, line: 181, type: !438)
!908 = !DILocation(line: 177, column: 54, scope: !897)
!909 = !DILocation(line: 179, column: 2, scope: !897)
!910 = !DILocation(line: 179, column: 12, scope: !897)
!911 = !DILocation(line: 181, column: 7, scope: !906)
!912 = !DILocation(line: 181, column: 24, scope: !906)
!913 = !DILocation(line: 181, column: 34, scope: !906)
!914 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !915)
!915 = distinct !DILocation(line: 181, column: 42, scope: !906)
!916 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !915)
!917 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !915)
!918 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !919)
!919 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !915)
!920 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !919)
!921 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !919)
!922 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !919)
!923 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !919)
!924 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !915)
!925 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !915)
!926 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !927)
!927 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !915)
!928 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !927)
!929 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !915)
!930 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !931)
!931 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !915)
!932 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !931)
!933 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !915)
!934 = !DILocation(line: 181, column: 42, scope: !906)
!935 = !DILocation(line: 181, column: 75, scope: !936)
!936 = distinct !DILexicalBlock(scope: !906, file: !130, line: 181, column: 2)
!937 = !DILocation(line: 181, column: 70, scope: !936)
!938 = !DILocation(line: 181, column: 2, scope: !906)
!939 = !DILocation(line: 181, column: 2, scope: !936)
!940 = !DILocation(line: 182, column: 23, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !130, line: 181, column: 130)
!942 = !DILocation(line: 182, column: 11, scope: !941)
!943 = !DILocation(line: 182, column: 9, scope: !941)
!944 = !DILocation(line: 183, column: 2, scope: !941)
!945 = !DILocation(line: 181, column: 80, scope: !936)
!946 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !947)
!947 = distinct !DILocation(line: 181, column: 80, scope: !936)
!948 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !947)
!949 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !947)
!950 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !947)
!951 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !952)
!952 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !947)
!953 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !952)
!954 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !952)
!955 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !952)
!956 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !952)
!957 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !952)
!958 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !952)
!959 = !DILocation(line: 181, column: 121, scope: !936)
!960 = !DILocation(line: 181, column: 125, scope: !936)
!961 = distinct !{!961, !938, !962}
!962 = !DILocation(line: 183, column: 2, scope: !906)
!963 = !DILocation(line: 185, column: 9, scope: !897)
!964 = !DILocation(line: 186, column: 1, scope: !897)
!965 = !DILocation(line: 185, column: 2, scope: !897)
!966 = distinct !DISubprogram(name: "timeout_rem", scope: !130, file: !130, line: 159, type: !898, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !967)
!967 = !{!968, !969, !970}
!968 = !DILocalVariable(name: "timeout", arg: 1, scope: !966, file: !130, line: 159, type: !900)
!969 = !DILocalVariable(name: "ticks", scope: !966, file: !130, line: 161, type: !89)
!970 = !DILocalVariable(name: "t", scope: !971, file: !130, line: 167, type: !99)
!971 = distinct !DILexicalBlock(scope: !966, file: !130, line: 167, column: 2)
!972 = !DILocation(line: 159, column: 53, scope: !966)
!973 = !DILocation(line: 161, column: 2, scope: !966)
!974 = !DILocation(line: 161, column: 12, scope: !966)
!975 = !DILocation(line: 163, column: 28, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !130, line: 163, column: 6)
!977 = !DILocation(line: 163, column: 6, scope: !976)
!978 = !DILocation(line: 163, column: 6, scope: !966)
!979 = !DILocation(line: 164, column: 3, scope: !980)
!980 = distinct !DILexicalBlock(scope: !976, file: !130, line: 163, column: 38)
!981 = !DILocation(line: 167, column: 7, scope: !971)
!982 = !DILocation(line: 167, column: 24, scope: !971)
!983 = !DILocation(line: 167, column: 28, scope: !971)
!984 = !DILocation(line: 167, column: 37, scope: !985)
!985 = distinct !DILexicalBlock(scope: !971, file: !130, line: 167, column: 2)
!986 = !DILocation(line: 167, column: 39, scope: !985)
!987 = !DILocation(line: 167, column: 2, scope: !971)
!988 = !DILocation(line: 168, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !130, line: 167, column: 58)
!990 = !DILocation(line: 168, column: 15, scope: !989)
!991 = !DILocation(line: 168, column: 9, scope: !989)
!992 = !DILocation(line: 169, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !989, file: !130, line: 169, column: 7)
!994 = !DILocation(line: 169, column: 18, scope: !993)
!995 = !DILocation(line: 169, column: 15, scope: !993)
!996 = !DILocation(line: 169, column: 7, scope: !989)
!997 = !DILocation(line: 170, column: 4, scope: !998)
!998 = distinct !DILexicalBlock(scope: !993, file: !130, line: 169, column: 21)
!999 = !DILocation(line: 172, column: 2, scope: !989)
!1000 = !DILocation(line: 167, column: 54, scope: !985)
!1001 = !DILocation(line: 167, column: 49, scope: !985)
!1002 = !DILocation(line: 167, column: 47, scope: !985)
!1003 = !DILocation(line: 167, column: 2, scope: !985)
!1004 = distinct !{!1004, !987, !1005}
!1005 = !DILocation(line: 172, column: 2, scope: !971)
!1006 = !DILocation(line: 174, column: 9, scope: !966)
!1007 = !DILocation(line: 174, column: 17, scope: !966)
!1008 = !DILocation(line: 174, column: 15, scope: !966)
!1009 = !DILocation(line: 174, column: 2, scope: !966)
!1010 = !DILocation(line: 175, column: 1, scope: !966)
!1011 = distinct !DISubprogram(name: "z_timeout_expires", scope: !130, file: !130, line: 188, type: !898, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1012)
!1012 = !{!1013, !1014, !1015, !1017}
!1013 = !DILocalVariable(name: "timeout", arg: 1, scope: !1011, file: !130, line: 188, type: !900)
!1014 = !DILocalVariable(name: "ticks", scope: !1011, file: !130, line: 190, type: !89)
!1015 = !DILocalVariable(name: "__i", scope: !1016, file: !130, line: 192, type: !438)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !130, line: 192, column: 2)
!1017 = !DILocalVariable(name: "__key", scope: !1016, file: !130, line: 192, type: !438)
!1018 = !DILocation(line: 188, column: 52, scope: !1011)
!1019 = !DILocation(line: 190, column: 2, scope: !1011)
!1020 = !DILocation(line: 190, column: 12, scope: !1011)
!1021 = !DILocation(line: 192, column: 7, scope: !1016)
!1022 = !DILocation(line: 192, column: 24, scope: !1016)
!1023 = !DILocation(line: 192, column: 34, scope: !1016)
!1024 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 192, column: 42, scope: !1016)
!1026 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !1025)
!1027 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !1025)
!1028 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !1025)
!1030 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !1029)
!1031 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !1029)
!1032 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !1029)
!1033 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !1029)
!1034 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !1025)
!1035 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !1025)
!1036 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !1025)
!1038 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !1037)
!1039 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !1025)
!1040 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !1025)
!1042 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !1041)
!1043 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !1025)
!1044 = !DILocation(line: 192, column: 42, scope: !1016)
!1045 = !DILocation(line: 192, column: 75, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1016, file: !130, line: 192, column: 2)
!1047 = !DILocation(line: 192, column: 70, scope: !1046)
!1048 = !DILocation(line: 192, column: 2, scope: !1016)
!1049 = !DILocation(line: 192, column: 2, scope: !1046)
!1050 = !DILocation(line: 193, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !130, line: 192, column: 130)
!1052 = !DILocation(line: 193, column: 35, scope: !1051)
!1053 = !DILocation(line: 193, column: 23, scope: !1051)
!1054 = !DILocation(line: 193, column: 21, scope: !1051)
!1055 = !DILocation(line: 193, column: 9, scope: !1051)
!1056 = !DILocation(line: 194, column: 2, scope: !1051)
!1057 = !DILocation(line: 192, column: 80, scope: !1046)
!1058 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !1059)
!1059 = distinct !DILocation(line: 192, column: 80, scope: !1046)
!1060 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !1059)
!1061 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !1059)
!1062 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !1059)
!1063 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !1064)
!1064 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !1059)
!1065 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !1064)
!1066 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !1064)
!1067 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !1064)
!1068 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !1064)
!1069 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !1064)
!1070 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !1064)
!1071 = !DILocation(line: 192, column: 121, scope: !1046)
!1072 = !DILocation(line: 192, column: 125, scope: !1046)
!1073 = distinct !{!1073, !1048, !1074}
!1074 = !DILocation(line: 194, column: 2, scope: !1016)
!1075 = !DILocation(line: 196, column: 9, scope: !1011)
!1076 = !DILocation(line: 197, column: 1, scope: !1011)
!1077 = !DILocation(line: 196, column: 2, scope: !1011)
!1078 = distinct !DISubprogram(name: "z_get_next_timeout_expiry", scope: !130, file: !130, line: 199, type: !636, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1080, !1081, !1083}
!1080 = !DILocalVariable(name: "ret", scope: !1078, file: !130, line: 201, type: !94)
!1081 = !DILocalVariable(name: "__i", scope: !1082, file: !130, line: 203, type: !438)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !130, line: 203, column: 2)
!1083 = !DILocalVariable(name: "__key", scope: !1082, file: !130, line: 203, type: !438)
!1084 = !DILocation(line: 201, column: 2, scope: !1078)
!1085 = !DILocation(line: 201, column: 10, scope: !1078)
!1086 = !DILocation(line: 203, column: 7, scope: !1082)
!1087 = !DILocation(line: 203, column: 24, scope: !1082)
!1088 = !DILocation(line: 203, column: 34, scope: !1082)
!1089 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !1090)
!1090 = distinct !DILocation(line: 203, column: 42, scope: !1082)
!1091 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !1090)
!1092 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !1090)
!1093 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !1090)
!1095 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !1094)
!1096 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !1094)
!1097 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !1094)
!1098 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !1094)
!1099 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !1090)
!1100 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !1090)
!1101 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !1090)
!1103 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !1102)
!1104 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !1090)
!1105 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !1090)
!1107 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !1106)
!1108 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !1090)
!1109 = !DILocation(line: 203, column: 42, scope: !1082)
!1110 = !DILocation(line: 203, column: 75, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1082, file: !130, line: 203, column: 2)
!1112 = !DILocation(line: 203, column: 70, scope: !1111)
!1113 = !DILocation(line: 203, column: 2, scope: !1082)
!1114 = !DILocation(line: 203, column: 2, scope: !1111)
!1115 = !DILocation(line: 204, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !130, line: 203, column: 130)
!1117 = !DILocation(line: 204, column: 7, scope: !1116)
!1118 = !DILocation(line: 205, column: 2, scope: !1116)
!1119 = !DILocation(line: 203, column: 80, scope: !1111)
!1120 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 203, column: 80, scope: !1111)
!1122 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !1121)
!1123 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !1121)
!1124 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !1121)
!1125 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !1121)
!1127 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !1126)
!1128 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !1126)
!1129 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !1126)
!1130 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !1126)
!1131 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !1126)
!1132 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !1126)
!1133 = !DILocation(line: 203, column: 121, scope: !1111)
!1134 = !DILocation(line: 203, column: 125, scope: !1111)
!1135 = distinct !{!1135, !1113, !1136}
!1136 = !DILocation(line: 205, column: 2, scope: !1082)
!1137 = !DILocation(line: 206, column: 9, scope: !1078)
!1138 = !DILocation(line: 207, column: 1, scope: !1078)
!1139 = !DILocation(line: 206, column: 2, scope: !1078)
!1140 = distinct !DISubprogram(name: "sys_clock_announce", scope: !130, file: !130, line: 209, type: !1141, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !94}
!1143 = !{!1144, !1145, !1146, !1147}
!1144 = !DILocalVariable(name: "ticks", arg: 1, scope: !1140, file: !130, line: 209, type: !94)
!1145 = !DILocalVariable(name: "key", scope: !1140, file: !130, line: 211, type: !438)
!1146 = !DILocalVariable(name: "t", scope: !1140, file: !130, line: 227, type: !99)
!1147 = !DILocalVariable(name: "dt", scope: !1148, file: !130, line: 232, type: !95)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !130, line: 231, column: 20)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !130, line: 229, column: 2)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !130, line: 229, column: 2)
!1151 = !DILocation(line: 209, column: 33, scope: !1140)
!1152 = !DILocation(line: 211, column: 2, scope: !1140)
!1153 = !DILocation(line: 211, column: 19, scope: !1140)
!1154 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 211, column: 25, scope: !1140)
!1156 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !1155)
!1157 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !1155)
!1158 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !1155)
!1160 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !1159)
!1161 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !1159)
!1162 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !1159)
!1163 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !1159)
!1164 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !1155)
!1165 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !1155)
!1166 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !1155)
!1168 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !1167)
!1169 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !1155)
!1170 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !1155)
!1172 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !1171)
!1173 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !1155)
!1174 = !DILocation(line: 211, column: 25, scope: !1140)
!1175 = !DILocation(line: 225, column: 23, scope: !1140)
!1176 = !DILocation(line: 225, column: 21, scope: !1140)
!1177 = !DILocation(line: 227, column: 2, scope: !1140)
!1178 = !DILocation(line: 227, column: 19, scope: !1140)
!1179 = !DILocation(line: 229, column: 11, scope: !1150)
!1180 = !DILocation(line: 229, column: 9, scope: !1150)
!1181 = !DILocation(line: 229, column: 7, scope: !1150)
!1182 = !DILocation(line: 230, column: 8, scope: !1149)
!1183 = !DILocation(line: 230, column: 10, scope: !1149)
!1184 = !DILocation(line: 230, column: 16, scope: !1149)
!1185 = !DILocation(line: 230, column: 20, scope: !1149)
!1186 = !DILocation(line: 230, column: 23, scope: !1149)
!1187 = !DILocation(line: 230, column: 33, scope: !1149)
!1188 = !DILocation(line: 230, column: 30, scope: !1149)
!1189 = !DILocation(line: 0, scope: !1149)
!1190 = !DILocation(line: 229, column: 2, scope: !1150)
!1191 = !DILocation(line: 232, column: 3, scope: !1148)
!1192 = !DILocation(line: 232, column: 7, scope: !1148)
!1193 = !DILocation(line: 232, column: 12, scope: !1148)
!1194 = !DILocation(line: 232, column: 15, scope: !1148)
!1195 = !DILocation(line: 234, column: 16, scope: !1148)
!1196 = !DILocation(line: 234, column: 13, scope: !1148)
!1197 = !DILocation(line: 235, column: 3, scope: !1148)
!1198 = !DILocation(line: 235, column: 6, scope: !1148)
!1199 = !DILocation(line: 235, column: 13, scope: !1148)
!1200 = !DILocation(line: 236, column: 18, scope: !1148)
!1201 = !DILocation(line: 236, column: 3, scope: !1148)
!1202 = !DILocation(line: 238, column: 3, scope: !1148)
!1203 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 238, column: 3, scope: !1148)
!1205 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !1204)
!1206 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !1204)
!1207 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !1204)
!1208 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !1204)
!1210 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !1209)
!1211 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !1209)
!1212 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !1209)
!1213 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !1209)
!1214 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !1209)
!1215 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !1209)
!1216 = !DILocation(line: 239, column: 3, scope: !1148)
!1217 = !DILocation(line: 239, column: 6, scope: !1148)
!1218 = !DILocation(line: 239, column: 9, scope: !1148)
!1219 = !DILocation(line: 240, column: 9, scope: !1148)
!1220 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !1221)
!1221 = distinct !DILocation(line: 240, column: 9, scope: !1148)
!1222 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !1221)
!1223 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !1221)
!1224 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !1221)
!1226 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !1225)
!1227 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !1225)
!1228 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !1225)
!1229 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !1225)
!1230 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !1221)
!1231 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !1221)
!1232 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !1233)
!1233 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !1221)
!1234 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !1233)
!1235 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !1221)
!1236 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !1221)
!1238 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !1237)
!1239 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !1221)
!1240 = !DILocation(line: 241, column: 25, scope: !1148)
!1241 = !DILocation(line: 241, column: 22, scope: !1148)
!1242 = !DILocation(line: 242, column: 2, scope: !1149)
!1243 = !DILocation(line: 242, column: 2, scope: !1148)
!1244 = !DILocation(line: 231, column: 11, scope: !1149)
!1245 = !DILocation(line: 231, column: 9, scope: !1149)
!1246 = !DILocation(line: 229, column: 2, scope: !1149)
!1247 = distinct !{!1247, !1190, !1248}
!1248 = !DILocation(line: 242, column: 2, scope: !1150)
!1249 = !DILocation(line: 244, column: 6, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1140, file: !130, line: 244, column: 6)
!1251 = !DILocation(line: 244, column: 8, scope: !1250)
!1252 = !DILocation(line: 244, column: 6, scope: !1140)
!1253 = !DILocation(line: 245, column: 16, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !130, line: 244, column: 14)
!1255 = !DILocation(line: 245, column: 3, scope: !1254)
!1256 = !DILocation(line: 245, column: 6, scope: !1254)
!1257 = !DILocation(line: 245, column: 13, scope: !1254)
!1258 = !DILocation(line: 246, column: 2, scope: !1254)
!1259 = !DILocation(line: 248, column: 15, scope: !1140)
!1260 = !DILocation(line: 248, column: 12, scope: !1140)
!1261 = !DILocation(line: 249, column: 21, scope: !1140)
!1262 = !DILocation(line: 251, column: 24, scope: !1140)
!1263 = !DILocation(line: 251, column: 2, scope: !1140)
!1264 = !DILocation(line: 253, column: 2, scope: !1140)
!1265 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 253, column: 2, scope: !1140)
!1267 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !1266)
!1268 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !1266)
!1269 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !1266)
!1270 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !1266)
!1272 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !1271)
!1273 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !1271)
!1274 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !1271)
!1275 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !1271)
!1276 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !1271)
!1277 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !1271)
!1278 = !DILocation(line: 256, column: 2, scope: !1140)
!1279 = !DILocation(line: 258, column: 1, scope: !1140)
!1280 = !DISubprogram(name: "z_time_slice", scope: !1281, file: !1281, line: 60, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !140)
!1281 = !DIFile(filename: "kernel/include/ksched.h", directory: "/home/sri/zephyrproject/zephyr")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null}
!1284 = distinct !DISubprogram(name: "sys_clock_tick_get", scope: !130, file: !130, line: 260, type: !1285, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!91}
!1287 = !{!1288, !1289, !1291}
!1288 = !DILocalVariable(name: "t", scope: !1284, file: !130, line: 262, type: !131)
!1289 = !DILocalVariable(name: "__i", scope: !1290, file: !130, line: 264, type: !438)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !130, line: 264, column: 2)
!1291 = !DILocalVariable(name: "__key", scope: !1290, file: !130, line: 264, type: !438)
!1292 = !DILocation(line: 262, column: 2, scope: !1284)
!1293 = !DILocation(line: 262, column: 11, scope: !1284)
!1294 = !DILocation(line: 264, column: 7, scope: !1290)
!1295 = !DILocation(line: 264, column: 24, scope: !1290)
!1296 = !DILocation(line: 264, column: 34, scope: !1290)
!1297 = !DILocation(line: 160, column: 94, scope: !467, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 264, column: 42, scope: !1290)
!1299 = !DILocation(line: 162, column: 9, scope: !467, inlinedAt: !1298)
!1300 = !DILocation(line: 163, column: 19, scope: !467, inlinedAt: !1298)
!1301 = !DILocation(line: 44, column: 2, scope: !478, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 169, column: 10, scope: !467, inlinedAt: !1298)
!1303 = !DILocation(line: 44, column: 15, scope: !478, inlinedAt: !1302)
!1304 = !DILocation(line: 48, column: 2, scope: !478, inlinedAt: !1302)
!1305 = !DILocation(line: 80, column: 9, scope: !478, inlinedAt: !1302)
!1306 = !DILocation(line: 81, column: 1, scope: !478, inlinedAt: !1302)
!1307 = !DILocation(line: 169, column: 8, scope: !467, inlinedAt: !1298)
!1308 = !DILocation(line: 171, column: 26, scope: !467, inlinedAt: !1298)
!1309 = !DILocation(line: 110, column: 94, scope: !493, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 171, column: 2, scope: !467, inlinedAt: !1298)
!1311 = !DILocation(line: 112, column: 9, scope: !493, inlinedAt: !1310)
!1312 = !DILocation(line: 177, column: 27, scope: !467, inlinedAt: !1298)
!1313 = !DILocation(line: 121, column: 95, scope: !502, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 177, column: 2, scope: !467, inlinedAt: !1298)
!1315 = !DILocation(line: 123, column: 9, scope: !502, inlinedAt: !1314)
!1316 = !DILocation(line: 179, column: 2, scope: !467, inlinedAt: !1298)
!1317 = !DILocation(line: 264, column: 42, scope: !1290)
!1318 = !DILocation(line: 264, column: 75, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1290, file: !130, line: 264, column: 2)
!1320 = !DILocation(line: 264, column: 70, scope: !1319)
!1321 = !DILocation(line: 264, column: 2, scope: !1290)
!1322 = !DILocation(line: 264, column: 2, scope: !1319)
!1323 = !DILocation(line: 265, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !130, line: 264, column: 130)
!1325 = !DILocation(line: 265, column: 19, scope: !1324)
!1326 = !DILocation(line: 265, column: 17, scope: !1324)
!1327 = !DILocation(line: 265, column: 5, scope: !1324)
!1328 = !DILocation(line: 266, column: 2, scope: !1324)
!1329 = !DILocation(line: 264, column: 80, scope: !1319)
!1330 = !DILocation(line: 235, column: 84, scope: !604, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 264, column: 80, scope: !1319)
!1332 = !DILocation(line: 236, column: 23, scope: !604, inlinedAt: !1331)
!1333 = !DILocation(line: 238, column: 9, scope: !604, inlinedAt: !1331)
!1334 = !DILocation(line: 261, column: 22, scope: !604, inlinedAt: !1331)
!1335 = !DILocation(line: 88, column: 80, scope: !615, inlinedAt: !1336)
!1336 = distinct !DILocation(line: 261, column: 2, scope: !604, inlinedAt: !1331)
!1337 = !DILocation(line: 91, column: 6, scope: !622, inlinedAt: !1336)
!1338 = !DILocation(line: 91, column: 10, scope: !622, inlinedAt: !1336)
!1339 = !DILocation(line: 91, column: 6, scope: !615, inlinedAt: !1336)
!1340 = !DILocation(line: 92, column: 3, scope: !626, inlinedAt: !1336)
!1341 = !DILocation(line: 94, column: 2, scope: !615, inlinedAt: !1336)
!1342 = !DILocation(line: 114, column: 1, scope: !615, inlinedAt: !1336)
!1343 = !DILocation(line: 264, column: 121, scope: !1319)
!1344 = !DILocation(line: 264, column: 125, scope: !1319)
!1345 = distinct !{!1345, !1321, !1346}
!1346 = !DILocation(line: 266, column: 2, scope: !1290)
!1347 = !DILocation(line: 267, column: 9, scope: !1284)
!1348 = !DILocation(line: 268, column: 1, scope: !1284)
!1349 = !DILocation(line: 267, column: 2, scope: !1284)
!1350 = distinct !DISubprogram(name: "sys_clock_tick_get_32", scope: !130, file: !130, line: 270, type: !1351, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!96}
!1353 = !DILocation(line: 273, column: 19, scope: !1350)
!1354 = !DILocation(line: 273, column: 9, scope: !1350)
!1355 = !DILocation(line: 273, column: 2, scope: !1350)
!1356 = distinct !DISubprogram(name: "z_impl_k_uptime_ticks", scope: !130, file: !130, line: 279, type: !1285, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!1357 = !DILocation(line: 281, column: 9, scope: !1356)
!1358 = !DILocation(line: 281, column: 2, scope: !1356)
!1359 = distinct !DISubprogram(name: "sys_timepoint_calc", scope: !130, file: !130, line: 292, type: !1360, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1366)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!1362, !310}
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timepoint_t", file: !90, line: 219, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 219, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tick", scope: !1363, file: !90, line: 219, baseType: !131, size: 64)
!1366 = !{!1367, !1368, !1369}
!1367 = !DILocalVariable(name: "timeout", arg: 1, scope: !1359, file: !130, line: 292, type: !310)
!1368 = !DILocalVariable(name: "timepoint", scope: !1359, file: !130, line: 294, type: !1362)
!1369 = !DILocalVariable(name: "dt", scope: !1370, file: !130, line: 301, type: !89)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !130, line: 300, column: 9)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !130, line: 298, column: 13)
!1372 = distinct !DILexicalBlock(scope: !1359, file: !130, line: 296, column: 6)
!1373 = !DILocation(line: 292, column: 46, scope: !1359)
!1374 = !DILocation(line: 294, column: 16, scope: !1359)
!1375 = !DILocation(line: 296, column: 17, scope: !1372)
!1376 = !DILocation(line: 296, column: 42, scope: !1372)
!1377 = !DILocation(line: 296, column: 23, scope: !1372)
!1378 = !DILocation(line: 296, column: 6, scope: !1359)
!1379 = !DILocation(line: 297, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1372, file: !130, line: 296, column: 84)
!1381 = !DILocation(line: 297, column: 18, scope: !1380)
!1382 = !DILocation(line: 298, column: 2, scope: !1380)
!1383 = !DILocation(line: 298, column: 24, scope: !1371)
!1384 = !DILocation(line: 298, column: 49, scope: !1371)
!1385 = !DILocation(line: 298, column: 30, scope: !1371)
!1386 = !DILocation(line: 298, column: 13, scope: !1372)
!1387 = !DILocation(line: 299, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1371, file: !130, line: 298, column: 63)
!1389 = !DILocation(line: 299, column: 18, scope: !1388)
!1390 = !DILocation(line: 300, column: 2, scope: !1388)
!1391 = !DILocation(line: 301, column: 3, scope: !1370)
!1392 = !DILocation(line: 301, column: 13, scope: !1370)
!1393 = !DILocation(line: 301, column: 26, scope: !1370)
!1394 = !DILocation(line: 303, column: 37, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1370, file: !130, line: 303, column: 7)
!1396 = !DILocation(line: 303, column: 34, scope: !1395)
!1397 = !DILocation(line: 303, column: 42, scope: !1395)
!1398 = !DILocation(line: 303, column: 7, scope: !1370)
!1399 = !DILocation(line: 304, column: 46, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !130, line: 303, column: 48)
!1401 = !DILocation(line: 304, column: 43, scope: !1400)
!1402 = !DILocation(line: 304, column: 14, scope: !1400)
!1403 = !DILocation(line: 304, column: 19, scope: !1400)
!1404 = !DILocation(line: 305, column: 3, scope: !1400)
!1405 = !DILocation(line: 306, column: 21, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1395, file: !130, line: 305, column: 10)
!1407 = !DILocation(line: 306, column: 53, scope: !1406)
!1408 = !DILocation(line: 306, column: 50, scope: !1406)
!1409 = !DILocation(line: 306, column: 45, scope: !1406)
!1410 = !DILocation(line: 306, column: 67, scope: !1406)
!1411 = !DILocation(line: 306, column: 42, scope: !1406)
!1412 = !DILocation(line: 306, column: 14, scope: !1406)
!1413 = !DILocation(line: 306, column: 19, scope: !1406)
!1414 = !DILocation(line: 308, column: 2, scope: !1371)
!1415 = !DILocation(line: 310, column: 2, scope: !1359)
!1416 = distinct !DISubprogram(name: "sys_timepoint_timeout", scope: !130, file: !130, line: 313, type: !1417, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!310, !1362}
!1419 = !{!1420, !1421, !1422}
!1420 = !DILocalVariable(name: "timepoint", arg: 1, scope: !1416, file: !130, line: 313, type: !1362)
!1421 = !DILocalVariable(name: "now", scope: !1416, file: !130, line: 315, type: !131)
!1422 = !DILocalVariable(name: "remaining", scope: !1416, file: !130, line: 315, type: !131)
!1423 = !DILocation(line: 313, column: 49, scope: !1416)
!1424 = !DILocation(line: 315, column: 2, scope: !1416)
!1425 = !DILocation(line: 315, column: 11, scope: !1416)
!1426 = !DILocation(line: 315, column: 16, scope: !1416)
!1427 = !DILocation(line: 317, column: 16, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1416, file: !130, line: 317, column: 6)
!1429 = !DILocation(line: 317, column: 21, scope: !1428)
!1430 = !DILocation(line: 317, column: 6, scope: !1416)
!1431 = !DILocation(line: 318, column: 25, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !130, line: 317, column: 51)
!1433 = !DILocation(line: 318, column: 3, scope: !1432)
!1434 = !DILocation(line: 320, column: 16, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1416, file: !130, line: 320, column: 6)
!1436 = !DILocation(line: 320, column: 21, scope: !1435)
!1437 = !DILocation(line: 320, column: 6, scope: !1416)
!1438 = !DILocation(line: 321, column: 25, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !130, line: 320, column: 27)
!1440 = !DILocation(line: 321, column: 3, scope: !1439)
!1441 = !DILocation(line: 324, column: 8, scope: !1416)
!1442 = !DILocation(line: 324, column: 6, scope: !1416)
!1443 = !DILocation(line: 325, column: 25, scope: !1416)
!1444 = !DILocation(line: 325, column: 32, scope: !1416)
!1445 = !DILocation(line: 325, column: 30, scope: !1416)
!1446 = !DILocation(line: 325, column: 14, scope: !1416)
!1447 = !DILocation(line: 325, column: 50, scope: !1416)
!1448 = !DILocation(line: 325, column: 57, scope: !1416)
!1449 = !DILocation(line: 325, column: 55, scope: !1416)
!1450 = !DILocation(line: 325, column: 12, scope: !1416)
!1451 = !DILocation(line: 326, column: 24, scope: !1416)
!1452 = !DILocation(line: 326, column: 36, scope: !1416)
!1453 = !DILocation(line: 326, column: 2, scope: !1416)
!1454 = !DILocation(line: 327, column: 1, scope: !1416)
!1455 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !361, file: !361, line: 335, type: !1456, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1459)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!747, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!1459 = !{!1460}
!1460 = !DILocalVariable(name: "list", arg: 1, scope: !1455, file: !361, line: 335, type: !1458)
!1461 = !DILocation(line: 335, column: 55, scope: !1455)
!1462 = !DILocation(line: 335, column: 92, scope: !1455)
!1463 = !DILocation(line: 335, column: 71, scope: !1455)
!1464 = !DILocation(line: 335, column: 98, scope: !1455)
!1465 = !DILocation(line: 335, column: 63, scope: !1455)
!1466 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !361, file: !361, line: 255, type: !1467, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!365, !1458}
!1469 = !{!1470}
!1470 = !DILocalVariable(name: "list", arg: 1, scope: !1466, file: !361, line: 255, type: !1458)
!1471 = !DILocation(line: 255, column: 64, scope: !1466)
!1472 = !DILocation(line: 257, column: 9, scope: !1466)
!1473 = !DILocation(line: 257, column: 15, scope: !1466)
!1474 = !DILocation(line: 257, column: 2, scope: !1466)
!1475 = !DISubprogram(name: "sys_clock_elapsed", scope: !744, file: !744, line: 110, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !140)
!1476 = distinct !DISubprogram(name: "sys_dlist_peek_head", scope: !105, file: !105, line: 303, type: !1477, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!647, !715}
!1479 = !{!1480}
!1480 = !DILocalVariable(name: "list", arg: 1, scope: !1476, file: !105, line: 303, type: !715)
!1481 = !DILocation(line: 303, column: 61, scope: !1476)
!1482 = !DILocation(line: 305, column: 28, scope: !1476)
!1483 = !DILocation(line: 305, column: 9, scope: !1476)
!1484 = !DILocation(line: 305, column: 49, scope: !1476)
!1485 = !DILocation(line: 305, column: 55, scope: !1476)
!1486 = !DILocation(line: 305, column: 2, scope: !1476)
!1487 = distinct !DISubprogram(name: "sys_dlist_is_empty", scope: !105, file: !105, line: 275, type: !1488, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1490)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!747, !715}
!1490 = !{!1491}
!1491 = !DILocalVariable(name: "list", arg: 1, scope: !1487, file: !105, line: 275, type: !715)
!1492 = !DILocation(line: 275, column: 53, scope: !1487)
!1493 = !DILocation(line: 277, column: 9, scope: !1487)
!1494 = !DILocation(line: 277, column: 15, scope: !1487)
!1495 = !DILocation(line: 277, column: 23, scope: !1487)
!1496 = !DILocation(line: 277, column: 20, scope: !1487)
!1497 = !DILocation(line: 277, column: 2, scope: !1487)
!1498 = distinct !DISubprogram(name: "sys_dlist_peek_next", scope: !105, file: !105, line: 350, type: !1499, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1501)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!647, !715, !647}
!1501 = !{!1502, !1503}
!1502 = !DILocalVariable(name: "list", arg: 1, scope: !1498, file: !105, line: 350, type: !715)
!1503 = !DILocalVariable(name: "node", arg: 2, scope: !1498, file: !105, line: 351, type: !647)
!1504 = !DILocation(line: 350, column: 61, scope: !1498)
!1505 = !DILocation(line: 351, column: 26, scope: !1498)
!1506 = !DILocation(line: 353, column: 10, scope: !1498)
!1507 = !DILocation(line: 353, column: 15, scope: !1498)
!1508 = !DILocation(line: 353, column: 9, scope: !1498)
!1509 = !DILocation(line: 353, column: 61, scope: !1498)
!1510 = !DILocation(line: 353, column: 67, scope: !1498)
!1511 = !DILocation(line: 353, column: 32, scope: !1498)
!1512 = !DILocation(line: 353, column: 2, scope: !1498)
!1513 = distinct !DISubprogram(name: "sys_dlist_peek_next_no_check", scope: !105, file: !105, line: 334, type: !1499, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1514)
!1514 = !{!1515, !1516}
!1515 = !DILocalVariable(name: "list", arg: 1, scope: !1513, file: !105, line: 334, type: !715)
!1516 = !DILocalVariable(name: "node", arg: 2, scope: !1513, file: !105, line: 335, type: !647)
!1517 = !DILocation(line: 334, column: 70, scope: !1513)
!1518 = !DILocation(line: 335, column: 21, scope: !1513)
!1519 = !DILocation(line: 337, column: 10, scope: !1513)
!1520 = !DILocation(line: 337, column: 18, scope: !1513)
!1521 = !DILocation(line: 337, column: 24, scope: !1513)
!1522 = !DILocation(line: 337, column: 15, scope: !1513)
!1523 = !DILocation(line: 337, column: 9, scope: !1513)
!1524 = !DILocation(line: 337, column: 45, scope: !1513)
!1525 = !DILocation(line: 337, column: 51, scope: !1513)
!1526 = !DILocation(line: 337, column: 2, scope: !1513)
!1527 = distinct !DISubprogram(name: "sys_dlist_remove", scope: !105, file: !105, line: 505, type: !1528, scopeLine: 506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !647}
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "node", arg: 1, scope: !1527, file: !105, line: 505, type: !647)
!1532 = !DILocalVariable(name: "prev", scope: !1527, file: !105, line: 507, type: !667)
!1533 = !DILocalVariable(name: "next", scope: !1527, file: !105, line: 508, type: !667)
!1534 = !DILocation(line: 505, column: 50, scope: !1527)
!1535 = !DILocation(line: 507, column: 2, scope: !1527)
!1536 = !DILocation(line: 507, column: 21, scope: !1527)
!1537 = !DILocation(line: 507, column: 28, scope: !1527)
!1538 = !DILocation(line: 507, column: 34, scope: !1527)
!1539 = !DILocation(line: 508, column: 2, scope: !1527)
!1540 = !DILocation(line: 508, column: 21, scope: !1527)
!1541 = !DILocation(line: 508, column: 28, scope: !1527)
!1542 = !DILocation(line: 508, column: 34, scope: !1527)
!1543 = !DILocation(line: 510, column: 15, scope: !1527)
!1544 = !DILocation(line: 510, column: 2, scope: !1527)
!1545 = !DILocation(line: 510, column: 8, scope: !1527)
!1546 = !DILocation(line: 510, column: 13, scope: !1527)
!1547 = !DILocation(line: 511, column: 15, scope: !1527)
!1548 = !DILocation(line: 511, column: 2, scope: !1527)
!1549 = !DILocation(line: 511, column: 8, scope: !1527)
!1550 = !DILocation(line: 511, column: 13, scope: !1527)
!1551 = !DILocation(line: 512, column: 17, scope: !1527)
!1552 = !DILocation(line: 512, column: 2, scope: !1527)
!1553 = !DILocation(line: 513, column: 1, scope: !1527)
!1554 = distinct !DISubprogram(name: "sys_dnode_init", scope: !105, file: !105, line: 220, type: !1528, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1555)
!1555 = !{!1556}
!1556 = !DILocalVariable(name: "node", arg: 1, scope: !1554, file: !105, line: 220, type: !647)
!1557 = !DILocation(line: 220, column: 48, scope: !1554)
!1558 = !DILocation(line: 222, column: 2, scope: !1554)
!1559 = !DILocation(line: 222, column: 8, scope: !1554)
!1560 = !DILocation(line: 222, column: 13, scope: !1554)
!1561 = !DILocation(line: 223, column: 2, scope: !1554)
!1562 = !DILocation(line: 223, column: 8, scope: !1554)
!1563 = !DILocation(line: 223, column: 13, scope: !1554)
!1564 = !DILocation(line: 224, column: 1, scope: !1554)
!1565 = distinct !DISubprogram(name: "z_is_inactive_timeout", scope: !1566, file: !1566, line: 35, type: !1567, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1569)
!1566 = !DIFile(filename: "kernel/include/timeout_q.h", directory: "/home/sri/zephyrproject/zephyr")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!747, !900}
!1569 = !{!1570}
!1570 = !DILocalVariable(name: "to", arg: 1, scope: !1565, file: !1566, line: 35, type: !900)
!1571 = !DILocation(line: 35, column: 66, scope: !1565)
!1572 = !DILocation(line: 37, column: 31, scope: !1565)
!1573 = !DILocation(line: 37, column: 35, scope: !1565)
!1574 = !DILocation(line: 37, column: 10, scope: !1565)
!1575 = !DILocation(line: 37, column: 9, scope: !1565)
!1576 = !DILocation(line: 37, column: 2, scope: !1565)
