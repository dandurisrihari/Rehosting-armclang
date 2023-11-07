; ModuleID = '../bc_files/heap-validate.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/heap-validate.c"
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
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.sys_heap = type { ptr, ptr, i32 }
%struct.z_heap = type { [2 x i32], i32, i32, [0 x %struct.z_heap_bucket] }
%struct.z_heap_bucket = type { i32 }
%struct.chunk_unit_t = type { [8 x i8] }
%struct.z_heap_stress_rec = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.z_heap_stress_result = type { i32, i32, i32, i64 }
%struct.z_heap_stress_block = type { ptr, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Heap at %p contains %d units in %d buckets\0A\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [187 x i8] c"  bucket#    min units        total      largest      largest\0A             threshold       chunks      (units)      (bytes)\0A  -----------------------------------------------------------\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"%9d %12d %12d %12d %12zd\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [14 x i8] c"\0AChunk dump:\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [46 x i8] c"chunk %4d: [%c] size=%-4d left=%-4d right=%d\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [72 x i8] c"\0A%zd free bytes, %zd allocated bytes, overhead = %zd bytes (%zd.%zd%%)\0A\00", align 1, !dbg !27
@rand32.state = internal global i64 123456789, align 8, !dbg !32

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !161 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !294, metadata !DIExpression()), !dbg !295
  %5 = load ptr, ptr %3, align 4, !dbg !296
  %6 = load ptr, ptr %4, align 4, !dbg !297
  ret void, !dbg !298
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !299 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !306 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load i8, ptr %2, align 1, !dbg !311
  ret ptr null, !dbg !312
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !313 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !316, metadata !DIExpression()), !dbg !317
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !318, metadata !DIExpression()), !dbg !319
  %5 = load i8, ptr %3, align 1, !dbg !320
  %6 = load i32, ptr %4, align 4, !dbg !321
  ret ptr null, !dbg !322
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !323 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 4, !dbg !332
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !333
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !334
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !335
  ret i64 %6, !dbg !336
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !341
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !342
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !343
  ret i64 %6, !dbg !344
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !367, metadata !DIExpression()), !dbg !368
  %3 = load ptr, ptr %2, align 4, !dbg !369
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !370
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !371
  ret i64 %5, !dbg !372
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !375
  %3 = load ptr, ptr %2, align 4, !dbg !376
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !377
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !378
  ret i64 %5, !dbg !379
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !380 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !385, metadata !DIExpression()), !dbg !386
  %5 = load ptr, ptr %4, align 4, !dbg !387
  %6 = load ptr, ptr %3, align 4, !dbg !388
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !389
  store ptr %5, ptr %7, align 4, !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !392 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !395, metadata !DIExpression()), !dbg !396
  %3 = load ptr, ptr %2, align 4, !dbg !397
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !398
  %5 = load ptr, ptr %4, align 4, !dbg !398
  ret ptr %5, !dbg !399
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !400 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !422
  %3 = load ptr, ptr %2, align 4, !dbg !423
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !424
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !425
  %6 = zext i1 %5 to i32, !dbg !426
  ret i32 %6, !dbg !427
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !428 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !437, metadata !DIExpression()), !dbg !438
  %3 = load ptr, ptr %2, align 4, !dbg !439
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !440
  %5 = load i32, ptr %4, align 4, !dbg !440
  ret i32 %5, !dbg !441
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !442 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !459, metadata !DIExpression()), !dbg !460
  %3 = load ptr, ptr %2, align 4, !dbg !461
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !462
  %5 = load i32, ptr %4, align 4, !dbg !462
  %6 = load ptr, ptr %2, align 4, !dbg !463
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !464
  %8 = load i32, ptr %7, align 4, !dbg !464
  %9 = sub i32 %5, %8, !dbg !465
  ret i32 %9, !dbg !466
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !467 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !468, metadata !DIExpression()), !dbg !469
  %3 = load ptr, ptr %2, align 4, !dbg !470
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !471
  %5 = load i32, ptr %4, align 4, !dbg !471
  ret i32 %5, !dbg !472
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @sys_heap_validate(ptr noundef %0) #0 !dbg !473 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata ptr %4, metadata !480, metadata !DIExpression()), !dbg !481
  %15 = load ptr, ptr %3, align 4, !dbg !482
  %16 = getelementptr inbounds %struct.sys_heap, ptr %15, i32 0, i32 0, !dbg !483
  %17 = load ptr, ptr %16, align 4, !dbg !483
  store ptr %17, ptr %4, align 4, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %5, metadata !484, metadata !DIExpression()), !dbg !485
  %18 = load ptr, ptr %4, align 4, !dbg !486
  %19 = call i32 @right_chunk(ptr noundef %18, i32 noundef 0), !dbg !488
  store i32 %19, ptr %5, align 4, !dbg !489
  br label %20, !dbg !490

20:                                               ; preds = %32, %1
  %21 = load i32, ptr %5, align 4, !dbg !491
  %22 = load ptr, ptr %4, align 4, !dbg !493
  %23 = getelementptr inbounds %struct.z_heap, ptr %22, i32 0, i32 1, !dbg !494
  %24 = load i32, ptr %23, align 4, !dbg !494
  %25 = icmp ult i32 %21, %24, !dbg !495
  br i1 %25, label %26, label %36, !dbg !496

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 4, !dbg !497
  %28 = load i32, ptr %5, align 4, !dbg !500
  %29 = call zeroext i1 @valid_chunk(ptr noundef %27, i32 noundef %28), !dbg !501
  br i1 %29, label %31, label %30, !dbg !502

30:                                               ; preds = %26
  store i1 false, ptr %2, align 1, !dbg !503
  br label %238, !dbg !503

31:                                               ; preds = %26
  br label %32, !dbg !505

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 4, !dbg !506
  %34 = load i32, ptr %5, align 4, !dbg !507
  %35 = call i32 @right_chunk(ptr noundef %33, i32 noundef %34), !dbg !508
  store i32 %35, ptr %5, align 4, !dbg !509
  br label %20, !dbg !510, !llvm.loop !511

36:                                               ; preds = %20
  %37 = load i32, ptr %5, align 4, !dbg !513
  %38 = load ptr, ptr %4, align 4, !dbg !515
  %39 = getelementptr inbounds %struct.z_heap, ptr %38, i32 0, i32 1, !dbg !516
  %40 = load i32, ptr %39, align 4, !dbg !516
  %41 = icmp ne i32 %37, %40, !dbg !517
  br i1 %41, label %42, label %43, !dbg !518

42:                                               ; preds = %36
  store i1 false, ptr %2, align 1, !dbg !519
  br label %238, !dbg !519

43:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %6, metadata !521, metadata !DIExpression()), !dbg !523
  store i32 0, ptr %6, align 4, !dbg !523
  br label %44, !dbg !524

44:                                               ; preds = %123, %43
  %45 = load i32, ptr %6, align 4, !dbg !525
  %46 = load ptr, ptr %4, align 4, !dbg !527
  %47 = load ptr, ptr %4, align 4, !dbg !528
  %48 = getelementptr inbounds %struct.z_heap, ptr %47, i32 0, i32 1, !dbg !529
  %49 = load i32, ptr %48, align 4, !dbg !529
  %50 = call i32 @bucket_idx(ptr noundef %46, i32 noundef %49), !dbg !530
  %51 = icmp sle i32 %45, %50, !dbg !531
  br i1 %51, label %52, label %126, !dbg !532

52:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %7, metadata !533, metadata !DIExpression()), !dbg !535
  %53 = load ptr, ptr %4, align 4, !dbg !536
  %54 = getelementptr inbounds %struct.z_heap, ptr %53, i32 0, i32 3, !dbg !537
  %55 = load i32, ptr %6, align 4, !dbg !538
  %56 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %54, i32 0, i32 %55, !dbg !536
  %57 = getelementptr inbounds %struct.z_heap_bucket, ptr %56, i32 0, i32 0, !dbg !539
  %58 = load i32, ptr %57, align 4, !dbg !539
  store i32 %58, ptr %7, align 4, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %8, metadata !540, metadata !DIExpression()), !dbg !541
  store i32 0, ptr %8, align 4, !dbg !541
  %59 = load ptr, ptr %4, align 4, !dbg !542
  %60 = load i32, ptr %6, align 4, !dbg !543
  call void @check_nexts(ptr noundef %59, i32 noundef %60), !dbg !544
  %61 = load i32, ptr %7, align 4, !dbg !545
  store i32 %61, ptr %5, align 4, !dbg !547
  br label %62, !dbg !548

62:                                               ; preds = %84, %52
  %63 = load i32, ptr %5, align 4, !dbg !549
  %64 = icmp ne i32 %63, 0, !dbg !551
  br i1 %64, label %65, label %74, !dbg !552

65:                                               ; preds = %62
  %66 = load i32, ptr %8, align 4, !dbg !553
  %67 = icmp eq i32 %66, 0, !dbg !554
  br i1 %67, label %72, label %68, !dbg !555

68:                                               ; preds = %65
  %69 = load i32, ptr %5, align 4, !dbg !556
  %70 = load i32, ptr %7, align 4, !dbg !557
  %71 = icmp ne i32 %69, %70, !dbg !558
  br label %72, !dbg !555

72:                                               ; preds = %68, %65
  %73 = phi i1 [ true, %65 ], [ %71, %68 ]
  br label %74

74:                                               ; preds = %72, %62
  %75 = phi i1 [ false, %62 ], [ %73, %72 ], !dbg !559
  br i1 %75, label %76, label %90, !dbg !560

76:                                               ; preds = %74
  %77 = load ptr, ptr %4, align 4, !dbg !561
  %78 = load i32, ptr %5, align 4, !dbg !564
  %79 = call zeroext i1 @valid_chunk(ptr noundef %77, i32 noundef %78), !dbg !565
  br i1 %79, label %81, label %80, !dbg !566

80:                                               ; preds = %76
  store i1 false, ptr %2, align 1, !dbg !567
  br label %238, !dbg !567

81:                                               ; preds = %76
  %82 = load ptr, ptr %4, align 4, !dbg !569
  %83 = load i32, ptr %5, align 4, !dbg !570
  call void @set_chunk_used(ptr noundef %82, i32 noundef %83, i1 noundef zeroext true), !dbg !571
  br label %84, !dbg !572

84:                                               ; preds = %81
  %85 = load i32, ptr %8, align 4, !dbg !573
  %86 = add i32 %85, 1, !dbg !573
  store i32 %86, ptr %8, align 4, !dbg !573
  %87 = load ptr, ptr %4, align 4, !dbg !574
  %88 = load i32, ptr %5, align 4, !dbg !575
  %89 = call i32 @next_free_chunk(ptr noundef %87, i32 noundef %88), !dbg !576
  store i32 %89, ptr %5, align 4, !dbg !577
  br label %62, !dbg !578, !llvm.loop !579

90:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata ptr %9, metadata !581, metadata !DIExpression()), !dbg !582
  %91 = load ptr, ptr %4, align 4, !dbg !583
  %92 = getelementptr inbounds %struct.z_heap, ptr %91, i32 0, i32 2, !dbg !584
  %93 = load i32, ptr %92, align 4, !dbg !584
  %94 = load i32, ptr %6, align 4, !dbg !585
  %95 = shl i32 1, %94, !dbg !586
  %96 = and i32 %93, %95, !dbg !587
  %97 = icmp eq i32 %96, 0, !dbg !588
  %98 = zext i1 %97 to i8, !dbg !582
  store i8 %98, ptr %9, align 1, !dbg !582
  call void @llvm.dbg.declare(metadata ptr %10, metadata !589, metadata !DIExpression()), !dbg !590
  %99 = load i32, ptr %8, align 4, !dbg !591
  %100 = icmp eq i32 %99, 0, !dbg !592
  %101 = zext i1 %100 to i8, !dbg !590
  store i8 %101, ptr %10, align 1, !dbg !590
  %102 = load i8, ptr %9, align 1, !dbg !593
  %103 = trunc i8 %102 to i1, !dbg !593
  %104 = zext i1 %103 to i32, !dbg !593
  %105 = load i8, ptr %10, align 1, !dbg !595
  %106 = trunc i8 %105 to i1, !dbg !595
  %107 = zext i1 %106 to i32, !dbg !595
  %108 = icmp ne i32 %104, %107, !dbg !596
  br i1 %108, label %109, label %110, !dbg !597

109:                                              ; preds = %90
  store i1 false, ptr %2, align 1, !dbg !598
  br label %238, !dbg !598

110:                                              ; preds = %90
  %111 = load i8, ptr %9, align 1, !dbg !600
  %112 = trunc i8 %111 to i1, !dbg !600
  br i1 %112, label %113, label %122, !dbg !602

113:                                              ; preds = %110
  %114 = load ptr, ptr %4, align 4, !dbg !603
  %115 = getelementptr inbounds %struct.z_heap, ptr %114, i32 0, i32 3, !dbg !604
  %116 = load i32, ptr %6, align 4, !dbg !605
  %117 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %115, i32 0, i32 %116, !dbg !603
  %118 = getelementptr inbounds %struct.z_heap_bucket, ptr %117, i32 0, i32 0, !dbg !606
  %119 = load i32, ptr %118, align 4, !dbg !606
  %120 = icmp ne i32 %119, 0, !dbg !607
  br i1 %120, label %121, label %122, !dbg !608

121:                                              ; preds = %113
  store i1 false, ptr %2, align 1, !dbg !609
  br label %238, !dbg !609

122:                                              ; preds = %113, %110
  br label %123, !dbg !611

123:                                              ; preds = %122
  %124 = load i32, ptr %6, align 4, !dbg !612
  %125 = add nsw i32 %124, 1, !dbg !612
  store i32 %125, ptr %6, align 4, !dbg !612
  br label %44, !dbg !613, !llvm.loop !614

126:                                              ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %11, metadata !616, metadata !DIExpression()), !dbg !617
  store i32 0, ptr %11, align 4, !dbg !617
  %127 = load ptr, ptr %4, align 4, !dbg !618
  %128 = call i32 @right_chunk(ptr noundef %127, i32 noundef 0), !dbg !620
  store i32 %128, ptr %5, align 4, !dbg !621
  br label %129, !dbg !622

129:                                              ; preds = %158, %126
  %130 = load i32, ptr %5, align 4, !dbg !623
  %131 = load ptr, ptr %4, align 4, !dbg !625
  %132 = getelementptr inbounds %struct.z_heap, ptr %131, i32 0, i32 1, !dbg !626
  %133 = load i32, ptr %132, align 4, !dbg !626
  %134 = icmp ult i32 %130, %133, !dbg !627
  br i1 %134, label %135, label %162, !dbg !628

135:                                              ; preds = %129
  %136 = load ptr, ptr %4, align 4, !dbg !629
  %137 = load i32, ptr %5, align 4, !dbg !632
  %138 = call zeroext i1 @chunk_used(ptr noundef %136, i32 noundef %137), !dbg !633
  br i1 %138, label %144, label %139, !dbg !634

139:                                              ; preds = %135
  %140 = load ptr, ptr %4, align 4, !dbg !635
  %141 = load i32, ptr %5, align 4, !dbg !636
  %142 = call zeroext i1 @solo_free_header(ptr noundef %140, i32 noundef %141), !dbg !637
  br i1 %142, label %144, label %143, !dbg !638

143:                                              ; preds = %139
  store i1 false, ptr %2, align 1, !dbg !639
  br label %238, !dbg !639

144:                                              ; preds = %139, %135
  %145 = load ptr, ptr %4, align 4, !dbg !641
  %146 = load i32, ptr %5, align 4, !dbg !643
  %147 = call i32 @left_chunk(ptr noundef %145, i32 noundef %146), !dbg !644
  %148 = load i32, ptr %11, align 4, !dbg !645
  %149 = icmp ne i32 %147, %148, !dbg !646
  br i1 %149, label %150, label %151, !dbg !647

150:                                              ; preds = %144
  store i1 false, ptr %2, align 1, !dbg !648
  br label %238, !dbg !648

151:                                              ; preds = %144
  %152 = load i32, ptr %5, align 4, !dbg !650
  store i32 %152, ptr %11, align 4, !dbg !651
  %153 = load ptr, ptr %4, align 4, !dbg !652
  %154 = load i32, ptr %5, align 4, !dbg !653
  %155 = load ptr, ptr %4, align 4, !dbg !654
  %156 = load i32, ptr %5, align 4, !dbg !655
  %157 = call zeroext i1 @solo_free_header(ptr noundef %155, i32 noundef %156), !dbg !656
  call void @set_chunk_used(ptr noundef %153, i32 noundef %154, i1 noundef zeroext %157), !dbg !657
  br label %158, !dbg !658

158:                                              ; preds = %151
  %159 = load ptr, ptr %4, align 4, !dbg !659
  %160 = load i32, ptr %5, align 4, !dbg !660
  %161 = call i32 @right_chunk(ptr noundef %159, i32 noundef %160), !dbg !661
  store i32 %161, ptr %5, align 4, !dbg !662
  br label %129, !dbg !663, !llvm.loop !664

162:                                              ; preds = %129
  %163 = load i32, ptr %5, align 4, !dbg !666
  %164 = load ptr, ptr %4, align 4, !dbg !668
  %165 = getelementptr inbounds %struct.z_heap, ptr %164, i32 0, i32 1, !dbg !669
  %166 = load i32, ptr %165, align 4, !dbg !669
  %167 = icmp ne i32 %163, %166, !dbg !670
  br i1 %167, label %168, label %169, !dbg !671

168:                                              ; preds = %162
  store i1 false, ptr %2, align 1, !dbg !672
  br label %238, !dbg !672

169:                                              ; preds = %162
  call void @llvm.dbg.declare(metadata ptr %12, metadata !674, metadata !DIExpression()), !dbg !676
  store i32 0, ptr %12, align 4, !dbg !676
  br label %170, !dbg !677

170:                                              ; preds = %214, %169
  %171 = load i32, ptr %12, align 4, !dbg !678
  %172 = load ptr, ptr %4, align 4, !dbg !680
  %173 = load ptr, ptr %4, align 4, !dbg !681
  %174 = getelementptr inbounds %struct.z_heap, ptr %173, i32 0, i32 1, !dbg !682
  %175 = load i32, ptr %174, align 4, !dbg !682
  %176 = call i32 @bucket_idx(ptr noundef %172, i32 noundef %175), !dbg !683
  %177 = icmp sle i32 %171, %176, !dbg !684
  br i1 %177, label %178, label %217, !dbg !685

178:                                              ; preds = %170
  call void @llvm.dbg.declare(metadata ptr %13, metadata !686, metadata !DIExpression()), !dbg !688
  %179 = load ptr, ptr %4, align 4, !dbg !689
  %180 = getelementptr inbounds %struct.z_heap, ptr %179, i32 0, i32 3, !dbg !690
  %181 = load i32, ptr %12, align 4, !dbg !691
  %182 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %180, i32 0, i32 %181, !dbg !689
  %183 = getelementptr inbounds %struct.z_heap_bucket, ptr %182, i32 0, i32 0, !dbg !692
  %184 = load i32, ptr %183, align 4, !dbg !692
  store i32 %184, ptr %13, align 4, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %14, metadata !693, metadata !DIExpression()), !dbg !694
  store i32 0, ptr %14, align 4, !dbg !694
  %185 = load i32, ptr %13, align 4, !dbg !695
  %186 = icmp eq i32 %185, 0, !dbg !697
  br i1 %186, label %187, label %188, !dbg !698

187:                                              ; preds = %178
  br label %214, !dbg !699

188:                                              ; preds = %178
  %189 = load i32, ptr %13, align 4, !dbg !701
  store i32 %189, ptr %5, align 4, !dbg !703
  br label %190, !dbg !704

190:                                              ; preds = %207, %188
  %191 = load i32, ptr %14, align 4, !dbg !705
  %192 = icmp eq i32 %191, 0, !dbg !707
  br i1 %192, label %197, label %193, !dbg !708

193:                                              ; preds = %190
  %194 = load i32, ptr %5, align 4, !dbg !709
  %195 = load i32, ptr %13, align 4, !dbg !710
  %196 = icmp ne i32 %194, %195, !dbg !711
  br label %197, !dbg !708

197:                                              ; preds = %193, %190
  %198 = phi i1 [ true, %190 ], [ %196, %193 ]
  br i1 %198, label %199, label %213, !dbg !712

199:                                              ; preds = %197
  %200 = load ptr, ptr %4, align 4, !dbg !713
  %201 = load i32, ptr %5, align 4, !dbg !716
  %202 = call zeroext i1 @chunk_used(ptr noundef %200, i32 noundef %201), !dbg !717
  br i1 %202, label %203, label %204, !dbg !718

203:                                              ; preds = %199
  store i1 false, ptr %2, align 1, !dbg !719
  br label %238, !dbg !719

204:                                              ; preds = %199
  %205 = load ptr, ptr %4, align 4, !dbg !721
  %206 = load i32, ptr %5, align 4, !dbg !722
  call void @set_chunk_used(ptr noundef %205, i32 noundef %206, i1 noundef zeroext true), !dbg !723
  br label %207, !dbg !724

207:                                              ; preds = %204
  %208 = load i32, ptr %14, align 4, !dbg !725
  %209 = add nsw i32 %208, 1, !dbg !725
  store i32 %209, ptr %14, align 4, !dbg !725
  %210 = load ptr, ptr %4, align 4, !dbg !726
  %211 = load i32, ptr %5, align 4, !dbg !727
  %212 = call i32 @next_free_chunk(ptr noundef %210, i32 noundef %211), !dbg !728
  store i32 %212, ptr %5, align 4, !dbg !729
  br label %190, !dbg !730, !llvm.loop !731

213:                                              ; preds = %197
  br label %214, !dbg !733

214:                                              ; preds = %213, %187
  %215 = load i32, ptr %12, align 4, !dbg !734
  %216 = add nsw i32 %215, 1, !dbg !734
  store i32 %216, ptr %12, align 4, !dbg !734
  br label %170, !dbg !735, !llvm.loop !736

217:                                              ; preds = %170
  %218 = load ptr, ptr %4, align 4, !dbg !738
  %219 = call i32 @right_chunk(ptr noundef %218, i32 noundef 0), !dbg !740
  store i32 %219, ptr %5, align 4, !dbg !741
  br label %220, !dbg !742

220:                                              ; preds = %233, %217
  %221 = load i32, ptr %5, align 4, !dbg !743
  %222 = load ptr, ptr %4, align 4, !dbg !745
  %223 = getelementptr inbounds %struct.z_heap, ptr %222, i32 0, i32 1, !dbg !746
  %224 = load i32, ptr %223, align 4, !dbg !746
  %225 = icmp ult i32 %221, %224, !dbg !747
  br i1 %225, label %226, label %237, !dbg !748

226:                                              ; preds = %220
  %227 = load ptr, ptr %4, align 4, !dbg !749
  %228 = load i32, ptr %5, align 4, !dbg !751
  %229 = load ptr, ptr %4, align 4, !dbg !752
  %230 = load i32, ptr %5, align 4, !dbg !753
  %231 = call zeroext i1 @chunk_used(ptr noundef %229, i32 noundef %230), !dbg !754
  %232 = xor i1 %231, true, !dbg !755
  call void @set_chunk_used(ptr noundef %227, i32 noundef %228, i1 noundef zeroext %232), !dbg !756
  br label %233, !dbg !757

233:                                              ; preds = %226
  %234 = load ptr, ptr %4, align 4, !dbg !758
  %235 = load i32, ptr %5, align 4, !dbg !759
  %236 = call i32 @right_chunk(ptr noundef %234, i32 noundef %235), !dbg !760
  store i32 %236, ptr %5, align 4, !dbg !761
  br label %220, !dbg !762, !llvm.loop !763

237:                                              ; preds = %220
  store i1 true, ptr %2, align 1, !dbg !765
  br label %238, !dbg !765

238:                                              ; preds = %237, %203, %168, %150, %143, %121, %109, %80, %42, %30
  %239 = load i1, ptr %2, align 1, !dbg !766
  ret i1 %239, !dbg !766
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @right_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !767 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !770, metadata !DIExpression()), !dbg !771
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !772, metadata !DIExpression()), !dbg !773
  %5 = load i32, ptr %4, align 4, !dbg !774
  %6 = load ptr, ptr %3, align 4, !dbg !775
  %7 = load i32, ptr %4, align 4, !dbg !776
  %8 = call i32 @chunk_size(ptr noundef %6, i32 noundef %7), !dbg !777
  %9 = add i32 %5, %8, !dbg !778
  ret i32 %9, !dbg !779
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @valid_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !780 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !783, metadata !DIExpression()), !dbg !784
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !785, metadata !DIExpression()), !dbg !786
  br label %6, !dbg !787

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4, !dbg !788
  %8 = load i32, ptr %5, align 4, !dbg !791
  %9 = call i32 @chunk_size(ptr noundef %7, i32 noundef %8), !dbg !792
  %10 = icmp ugt i32 %9, 0, !dbg !793
  br i1 %10, label %12, label %11, !dbg !794

11:                                               ; preds = %6
  store i1 false, ptr %3, align 1, !dbg !795
  br label %110, !dbg !795

12:                                               ; preds = %6
  br label %13, !dbg !797

13:                                               ; preds = %12
  br label %14, !dbg !798

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !799
  %16 = load ptr, ptr %4, align 4, !dbg !802
  %17 = load i32, ptr %5, align 4, !dbg !803
  %18 = call i32 @chunk_size(ptr noundef %16, i32 noundef %17), !dbg !804
  %19 = add i32 %15, %18, !dbg !805
  %20 = load ptr, ptr %4, align 4, !dbg !806
  %21 = getelementptr inbounds %struct.z_heap, ptr %20, i32 0, i32 1, !dbg !807
  %22 = load i32, ptr %21, align 4, !dbg !807
  %23 = icmp ule i32 %19, %22, !dbg !808
  br i1 %23, label %25, label %24, !dbg !809

24:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !810
  br label %110, !dbg !810

25:                                               ; preds = %14
  br label %26, !dbg !812

26:                                               ; preds = %25
  br label %27, !dbg !813

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 4, !dbg !814
  %29 = load i32, ptr %5, align 4, !dbg !817
  %30 = call zeroext i1 @in_bounds(ptr noundef %28, i32 noundef %29), !dbg !818
  br i1 %30, label %32, label %31, !dbg !819

31:                                               ; preds = %27
  store i1 false, ptr %3, align 1, !dbg !820
  br label %110, !dbg !820

32:                                               ; preds = %27
  br label %33, !dbg !822

33:                                               ; preds = %32
  br label %34, !dbg !823

34:                                               ; preds = %33
  %35 = load ptr, ptr %4, align 4, !dbg !824
  %36 = load ptr, ptr %4, align 4, !dbg !827
  %37 = load i32, ptr %5, align 4, !dbg !828
  %38 = call i32 @left_chunk(ptr noundef %36, i32 noundef %37), !dbg !829
  %39 = call i32 @right_chunk(ptr noundef %35, i32 noundef %38), !dbg !830
  %40 = load i32, ptr %5, align 4, !dbg !831
  %41 = icmp eq i32 %39, %40, !dbg !832
  br i1 %41, label %43, label %42, !dbg !833

42:                                               ; preds = %34
  store i1 false, ptr %3, align 1, !dbg !834
  br label %110, !dbg !834

43:                                               ; preds = %34
  br label %44, !dbg !836

44:                                               ; preds = %43
  br label %45, !dbg !837

45:                                               ; preds = %44
  %46 = load ptr, ptr %4, align 4, !dbg !838
  %47 = load ptr, ptr %4, align 4, !dbg !841
  %48 = load i32, ptr %5, align 4, !dbg !842
  %49 = call i32 @right_chunk(ptr noundef %47, i32 noundef %48), !dbg !843
  %50 = call i32 @left_chunk(ptr noundef %46, i32 noundef %49), !dbg !844
  %51 = load i32, ptr %5, align 4, !dbg !845
  %52 = icmp eq i32 %50, %51, !dbg !846
  br i1 %52, label %54, label %53, !dbg !847

53:                                               ; preds = %45
  store i1 false, ptr %3, align 1, !dbg !848
  br label %110, !dbg !848

54:                                               ; preds = %45
  br label %55, !dbg !850

55:                                               ; preds = %54
  %56 = load ptr, ptr %4, align 4, !dbg !851
  %57 = load i32, ptr %5, align 4, !dbg !853
  %58 = call zeroext i1 @chunk_used(ptr noundef %56, i32 noundef %57), !dbg !854
  br i1 %58, label %59, label %67, !dbg !855

59:                                               ; preds = %55
  br label %60, !dbg !856

60:                                               ; preds = %59
  %61 = load ptr, ptr %4, align 4, !dbg !858
  %62 = load i32, ptr %5, align 4, !dbg !861
  %63 = call zeroext i1 @solo_free_header(ptr noundef %61, i32 noundef %62), !dbg !862
  br i1 %63, label %64, label %65, !dbg !863

64:                                               ; preds = %60
  store i1 false, ptr %3, align 1, !dbg !864
  br label %110, !dbg !864

65:                                               ; preds = %60
  br label %66, !dbg !866

66:                                               ; preds = %65
  br label %109, !dbg !867

67:                                               ; preds = %55
  br label %68, !dbg !868

68:                                               ; preds = %67
  %69 = load ptr, ptr %4, align 4, !dbg !870
  %70 = load ptr, ptr %4, align 4, !dbg !873
  %71 = load i32, ptr %5, align 4, !dbg !874
  %72 = call i32 @left_chunk(ptr noundef %70, i32 noundef %71), !dbg !875
  %73 = call zeroext i1 @chunk_used(ptr noundef %69, i32 noundef %72), !dbg !876
  br i1 %73, label %75, label %74, !dbg !877

74:                                               ; preds = %68
  store i1 false, ptr %3, align 1, !dbg !878
  br label %110, !dbg !878

75:                                               ; preds = %68
  br label %76, !dbg !880

76:                                               ; preds = %75
  br label %77, !dbg !881

77:                                               ; preds = %76
  %78 = load ptr, ptr %4, align 4, !dbg !882
  %79 = load ptr, ptr %4, align 4, !dbg !885
  %80 = load i32, ptr %5, align 4, !dbg !886
  %81 = call i32 @right_chunk(ptr noundef %79, i32 noundef %80), !dbg !887
  %82 = call zeroext i1 @chunk_used(ptr noundef %78, i32 noundef %81), !dbg !888
  br i1 %82, label %84, label %83, !dbg !889

83:                                               ; preds = %77
  store i1 false, ptr %3, align 1, !dbg !890
  br label %110, !dbg !890

84:                                               ; preds = %77
  br label %85, !dbg !892

85:                                               ; preds = %84
  %86 = load ptr, ptr %4, align 4, !dbg !893
  %87 = load i32, ptr %5, align 4, !dbg !895
  %88 = call zeroext i1 @solo_free_header(ptr noundef %86, i32 noundef %87), !dbg !896
  br i1 %88, label %108, label %89, !dbg !897

89:                                               ; preds = %85
  br label %90, !dbg !898

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 4, !dbg !900
  %92 = load ptr, ptr %4, align 4, !dbg !903
  %93 = load i32, ptr %5, align 4, !dbg !904
  %94 = call i32 @prev_free_chunk(ptr noundef %92, i32 noundef %93), !dbg !905
  %95 = call zeroext i1 @in_bounds(ptr noundef %91, i32 noundef %94), !dbg !906
  br i1 %95, label %97, label %96, !dbg !907

96:                                               ; preds = %90
  store i1 false, ptr %3, align 1, !dbg !908
  br label %110, !dbg !908

97:                                               ; preds = %90
  br label %98, !dbg !910

98:                                               ; preds = %97
  br label %99, !dbg !911

99:                                               ; preds = %98
  %100 = load ptr, ptr %4, align 4, !dbg !912
  %101 = load ptr, ptr %4, align 4, !dbg !915
  %102 = load i32, ptr %5, align 4, !dbg !916
  %103 = call i32 @next_free_chunk(ptr noundef %101, i32 noundef %102), !dbg !917
  %104 = call zeroext i1 @in_bounds(ptr noundef %100, i32 noundef %103), !dbg !918
  br i1 %104, label %106, label %105, !dbg !919

105:                                              ; preds = %99
  store i1 false, ptr %3, align 1, !dbg !920
  br label %110, !dbg !920

106:                                              ; preds = %99
  br label %107, !dbg !922

107:                                              ; preds = %106
  br label %108, !dbg !923

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %66
  store i1 true, ptr %3, align 1, !dbg !924
  br label %110, !dbg !924

110:                                              ; preds = %109, %105, %96, %83, %74, %64, %53, %42, %31, %24, %11
  %111 = load i1, ptr %3, align 1, !dbg !925
  ret i1 %111, !dbg !925
}

; Function Attrs: noinline nounwind optnone
define internal i32 @bucket_idx(ptr noundef %0, i32 noundef %1) #0 !dbg !926 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !930, metadata !DIExpression()), !dbg !931
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !932, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.declare(metadata ptr %5, metadata !934, metadata !DIExpression()), !dbg !935
  %6 = load i32, ptr %4, align 4, !dbg !936
  %7 = load ptr, ptr %3, align 4, !dbg !937
  %8 = call i32 @min_chunk_size(ptr noundef %7), !dbg !938
  %9 = sub i32 %6, %8, !dbg !939
  %10 = add i32 %9, 1, !dbg !940
  store i32 %10, ptr %5, align 4, !dbg !935
  %11 = load i32, ptr %5, align 4, !dbg !941
  %12 = call i32 @llvm.ctlz.i32(i32 %11, i1 false), !dbg !942
  %13 = sub nsw i32 31, %12, !dbg !943
  ret i32 %13, !dbg !944
}

; Function Attrs: noinline nounwind optnone
define internal void @check_nexts(ptr noundef %0, i32 noundef %1) #0 !dbg !945 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !948, metadata !DIExpression()), !dbg !949
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !950, metadata !DIExpression()), !dbg !951
  call void @llvm.dbg.declare(metadata ptr %5, metadata !952, metadata !DIExpression()), !dbg !954
  %9 = load ptr, ptr %3, align 4, !dbg !955
  %10 = getelementptr inbounds %struct.z_heap, ptr %9, i32 0, i32 3, !dbg !956
  %11 = load i32, ptr %4, align 4, !dbg !957
  %12 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %10, i32 0, i32 %11, !dbg !955
  store ptr %12, ptr %5, align 4, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %6, metadata !958, metadata !DIExpression()), !dbg !959
  %13 = load ptr, ptr %3, align 4, !dbg !960
  %14 = getelementptr inbounds %struct.z_heap, ptr %13, i32 0, i32 2, !dbg !961
  %15 = load i32, ptr %14, align 4, !dbg !961
  %16 = load i32, ptr %4, align 4, !dbg !962
  %17 = shl i32 1, %16, !dbg !963
  %18 = and i32 %15, %17, !dbg !964
  %19 = icmp eq i32 %18, 0, !dbg !965
  %20 = zext i1 %19 to i8, !dbg !959
  store i8 %20, ptr %6, align 1, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %7, metadata !966, metadata !DIExpression()), !dbg !967
  %21 = load ptr, ptr %5, align 4, !dbg !968
  %22 = getelementptr inbounds %struct.z_heap_bucket, ptr %21, i32 0, i32 0, !dbg !969
  %23 = load i32, ptr %22, align 4, !dbg !969
  %24 = icmp eq i32 %23, 0, !dbg !970
  %25 = zext i1 %24 to i8, !dbg !967
  store i8 %25, ptr %7, align 1, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %8, metadata !971, metadata !DIExpression()), !dbg !972
  %26 = load i8, ptr %6, align 1, !dbg !973
  %27 = trunc i8 %26 to i1, !dbg !973
  %28 = zext i1 %27 to i32, !dbg !973
  %29 = load i8, ptr %7, align 1, !dbg !974
  %30 = trunc i8 %29 to i1, !dbg !974
  %31 = zext i1 %30 to i32, !dbg !974
  %32 = icmp eq i32 %28, %31, !dbg !975
  %33 = zext i1 %32 to i8, !dbg !972
  store i8 %33, ptr %8, align 1, !dbg !972
  %34 = load i8, ptr %8, align 1, !dbg !976
  %35 = trunc i8 %34 to i1, !dbg !976
  %36 = load ptr, ptr %5, align 4, !dbg !977
  %37 = getelementptr inbounds %struct.z_heap_bucket, ptr %36, i32 0, i32 0, !dbg !979
  %38 = load i32, ptr %37, align 4, !dbg !979
  %39 = icmp ne i32 %38, 0, !dbg !980
  br i1 %39, label %40, label %41, !dbg !981

40:                                               ; preds = %2
  br label %41, !dbg !982

41:                                               ; preds = %40, %2
  ret void, !dbg !984
}

; Function Attrs: noinline nounwind optnone
define internal void @set_chunk_used(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 !dbg !985 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !988, metadata !DIExpression()), !dbg !989
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !990, metadata !DIExpression()), !dbg !991
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !992, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %7, metadata !994, metadata !DIExpression()), !dbg !995
  %10 = load ptr, ptr %4, align 4, !dbg !996
  %11 = call ptr @chunk_buf(ptr noundef %10), !dbg !997
  store ptr %11, ptr %7, align 4, !dbg !995
  call void @llvm.dbg.declare(metadata ptr %8, metadata !998, metadata !DIExpression()), !dbg !999
  %12 = load ptr, ptr %7, align 4, !dbg !1000
  %13 = load i32, ptr %5, align 4, !dbg !1001
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !1000
  store ptr %14, ptr %8, align 4, !dbg !999
  %15 = load ptr, ptr %4, align 4, !dbg !1002
  %16 = call zeroext i1 @big_heap(ptr noundef %15), !dbg !1004
  br i1 %16, label %17, label %31, !dbg !1005

17:                                               ; preds = %3
  %18 = load i8, ptr %6, align 1, !dbg !1006
  %19 = trunc i8 %18 to i1, !dbg !1006
  br i1 %19, label %20, label %25, !dbg !1009

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 4, !dbg !1010
  %22 = getelementptr inbounds i32, ptr %21, i32 1, !dbg !1012
  %23 = load i32, ptr %22, align 4, !dbg !1013
  %24 = or i32 %23, 1, !dbg !1013
  store i32 %24, ptr %22, align 4, !dbg !1013
  br label %30, !dbg !1014

25:                                               ; preds = %17
  %26 = load ptr, ptr %8, align 4, !dbg !1015
  %27 = getelementptr inbounds i32, ptr %26, i32 1, !dbg !1017
  %28 = load i32, ptr %27, align 4, !dbg !1018
  %29 = and i32 %28, -2, !dbg !1018
  store i32 %29, ptr %27, align 4, !dbg !1018
  br label %30

30:                                               ; preds = %25, %20
  br label %49, !dbg !1019

31:                                               ; preds = %3
  %32 = load i8, ptr %6, align 1, !dbg !1020
  %33 = trunc i8 %32 to i1, !dbg !1020
  br i1 %33, label %34, label %41, !dbg !1023

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 4, !dbg !1024
  %36 = getelementptr inbounds i16, ptr %35, i32 1, !dbg !1026
  %37 = load i16, ptr %36, align 2, !dbg !1027
  %38 = zext i16 %37 to i32, !dbg !1027
  %39 = or i32 %38, 1, !dbg !1027
  %40 = trunc i32 %39 to i16, !dbg !1027
  store i16 %40, ptr %36, align 2, !dbg !1027
  br label %48, !dbg !1028

41:                                               ; preds = %31
  %42 = load ptr, ptr %8, align 4, !dbg !1029
  %43 = getelementptr inbounds i16, ptr %42, i32 1, !dbg !1031
  %44 = load i16, ptr %43, align 2, !dbg !1032
  %45 = zext i16 %44 to i32, !dbg !1032
  %46 = and i32 %45, -2, !dbg !1032
  %47 = trunc i32 %46 to i16, !dbg !1032
  store i16 %47, ptr %43, align 2, !dbg !1032
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %30
  ret void, !dbg !1033
}

; Function Attrs: noinline nounwind optnone
define internal i32 @next_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1034 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1035, metadata !DIExpression()), !dbg !1036
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1037, metadata !DIExpression()), !dbg !1038
  %5 = load ptr, ptr %3, align 4, !dbg !1039
  %6 = load i32, ptr %4, align 4, !dbg !1040
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 3), !dbg !1041
  ret i32 %7, !dbg !1042
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @chunk_used(ptr noundef %0, i32 noundef %1) #0 !dbg !1043 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1044, metadata !DIExpression()), !dbg !1045
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1046, metadata !DIExpression()), !dbg !1047
  %5 = load ptr, ptr %3, align 4, !dbg !1048
  %6 = load i32, ptr %4, align 4, !dbg !1049
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1), !dbg !1050
  %8 = and i32 %7, 1, !dbg !1051
  %9 = icmp ne i32 %8, 0, !dbg !1050
  ret i1 %9, !dbg !1052
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @solo_free_header(ptr noundef %0, i32 noundef %1) #0 !dbg !1053 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1054, metadata !DIExpression()), !dbg !1055
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1056, metadata !DIExpression()), !dbg !1057
  %5 = load ptr, ptr %3, align 4, !dbg !1058
  %6 = call zeroext i1 @big_heap(ptr noundef %5), !dbg !1059
  br i1 %6, label %7, label %12, !dbg !1060

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1061
  %9 = load i32, ptr %4, align 4, !dbg !1062
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9), !dbg !1063
  %11 = icmp eq i32 %10, 1, !dbg !1064
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ], !dbg !1065
  ret i1 %13, !dbg !1066
}

; Function Attrs: noinline nounwind optnone
define internal i32 @left_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1067 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1068, metadata !DIExpression()), !dbg !1069
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1070, metadata !DIExpression()), !dbg !1071
  %5 = load i32, ptr %4, align 4, !dbg !1072
  %6 = load ptr, ptr %3, align 4, !dbg !1073
  %7 = load i32, ptr %4, align 4, !dbg !1074
  %8 = call i32 @chunk_field(ptr noundef %6, i32 noundef %7, i8 noundef zeroext 0), !dbg !1075
  %9 = sub i32 %5, %8, !dbg !1076
  ret i32 %9, !dbg !1077
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_heap_stress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #0 !dbg !1078 {
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 4
  %19 = alloca %struct.z_heap_stress_rec, align 4
  %20 = alloca %struct.z_heap_stress_result, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 4
  %24 = alloca i32, align 4
  %25 = alloca ptr, align 4
  %26 = alloca i32, align 4
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1094, metadata !DIExpression()), !dbg !1095
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1096, metadata !DIExpression()), !dbg !1097
  store ptr %2, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1098, metadata !DIExpression()), !dbg !1099
  store i32 %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1100, metadata !DIExpression()), !dbg !1101
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1102, metadata !DIExpression()), !dbg !1103
  store ptr %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1104, metadata !DIExpression()), !dbg !1105
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1106, metadata !DIExpression()), !dbg !1107
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1108, metadata !DIExpression()), !dbg !1109
  store ptr %8, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1110, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1112, metadata !DIExpression()), !dbg !1129
  %27 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 0, !dbg !1130
  %28 = load ptr, ptr %10, align 4, !dbg !1131
  store ptr %28, ptr %27, align 4, !dbg !1130
  %29 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 1, !dbg !1130
  %30 = load ptr, ptr %11, align 4, !dbg !1132
  store ptr %30, ptr %29, align 4, !dbg !1130
  %31 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1130
  %32 = load ptr, ptr %12, align 4, !dbg !1133
  store ptr %32, ptr %31, align 4, !dbg !1130
  %33 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 3, !dbg !1130
  %34 = load i32, ptr %13, align 4, !dbg !1134
  store i32 %34, ptr %33, align 4, !dbg !1130
  %35 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1130
  %36 = load ptr, ptr %15, align 4, !dbg !1135
  store ptr %36, ptr %35, align 4, !dbg !1130
  %37 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 5, !dbg !1130
  %38 = load i32, ptr %16, align 4, !dbg !1136
  %39 = udiv i32 %38, 8, !dbg !1137
  store i32 %39, ptr %37, align 4, !dbg !1130
  %40 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1130
  store i32 0, ptr %40, align 4, !dbg !1130
  %41 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1130
  store i32 0, ptr %41, align 4, !dbg !1130
  %42 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 8, !dbg !1130
  %43 = load i32, ptr %17, align 4, !dbg !1138
  store i32 %43, ptr %42, align 4, !dbg !1130
  %44 = load ptr, ptr %18, align 4, !dbg !1139
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 24, i1 false), !dbg !1140
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %44, ptr align 8 %20, i32 24, i1 false), !dbg !1140
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1141, metadata !DIExpression()), !dbg !1143
  store i32 0, ptr %21, align 4, !dbg !1143
  br label %45, !dbg !1144

45:                                               ; preds = %140, %9
  %46 = load i32, ptr %21, align 4, !dbg !1145
  %47 = load i32, ptr %14, align 4, !dbg !1147
  %48 = icmp ult i32 %46, %47, !dbg !1148
  br i1 %48, label %49, label %143, !dbg !1149

49:                                               ; preds = %45
  %50 = call zeroext i1 @rand_alloc_choice(ptr noundef %19), !dbg !1150
  br i1 %50, label %51, label %92, !dbg !1153

51:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1154, metadata !DIExpression()), !dbg !1156
  %52 = call i32 @rand_alloc_size(ptr noundef %19), !dbg !1157
  store i32 %52, ptr %22, align 4, !dbg !1156
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1158, metadata !DIExpression()), !dbg !1159
  %53 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 0, !dbg !1160
  %54 = load ptr, ptr %53, align 4, !dbg !1160
  %55 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1161
  %56 = load ptr, ptr %55, align 4, !dbg !1161
  %57 = load i32, ptr %22, align 4, !dbg !1162
  %58 = call ptr %54(ptr noundef %56, i32 noundef %57), !dbg !1163
  store ptr %58, ptr %23, align 4, !dbg !1159
  %59 = load ptr, ptr %18, align 4, !dbg !1164
  %60 = getelementptr inbounds %struct.z_heap_stress_result, ptr %59, i32 0, i32 0, !dbg !1165
  %61 = load i32, ptr %60, align 8, !dbg !1166
  %62 = add i32 %61, 1, !dbg !1166
  store i32 %62, ptr %60, align 8, !dbg !1166
  %63 = load ptr, ptr %23, align 4, !dbg !1167
  %64 = icmp ne ptr %63, null, !dbg !1169
  br i1 %64, label %65, label %91, !dbg !1170

65:                                               ; preds = %51
  %66 = load ptr, ptr %18, align 4, !dbg !1171
  %67 = getelementptr inbounds %struct.z_heap_stress_result, ptr %66, i32 0, i32 1, !dbg !1173
  %68 = load i32, ptr %67, align 4, !dbg !1174
  %69 = add i32 %68, 1, !dbg !1174
  store i32 %69, ptr %67, align 4, !dbg !1174
  %70 = load ptr, ptr %23, align 4, !dbg !1175
  %71 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1176
  %72 = load ptr, ptr %71, align 4, !dbg !1176
  %73 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1177
  %74 = load i32, ptr %73, align 4, !dbg !1177
  %75 = getelementptr inbounds %struct.z_heap_stress_block, ptr %72, i32 %74, !dbg !1178
  %76 = getelementptr inbounds %struct.z_heap_stress_block, ptr %75, i32 0, i32 0, !dbg !1179
  store ptr %70, ptr %76, align 4, !dbg !1180
  %77 = load i32, ptr %22, align 4, !dbg !1181
  %78 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1182
  %79 = load ptr, ptr %78, align 4, !dbg !1182
  %80 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1183
  %81 = load i32, ptr %80, align 4, !dbg !1183
  %82 = getelementptr inbounds %struct.z_heap_stress_block, ptr %79, i32 %81, !dbg !1184
  %83 = getelementptr inbounds %struct.z_heap_stress_block, ptr %82, i32 0, i32 1, !dbg !1185
  store i32 %77, ptr %83, align 4, !dbg !1186
  %84 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1187
  %85 = load i32, ptr %84, align 4, !dbg !1188
  %86 = add i32 %85, 1, !dbg !1188
  store i32 %86, ptr %84, align 4, !dbg !1188
  %87 = load i32, ptr %22, align 4, !dbg !1189
  %88 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1190
  %89 = load i32, ptr %88, align 4, !dbg !1191
  %90 = add i32 %89, %87, !dbg !1191
  store i32 %90, ptr %88, align 4, !dbg !1191
  br label %91, !dbg !1192

91:                                               ; preds = %65, %51
  br label %132, !dbg !1193

92:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1194, metadata !DIExpression()), !dbg !1196
  %93 = call i32 @rand_free_choice(ptr noundef %19), !dbg !1197
  store i32 %93, ptr %24, align 4, !dbg !1196
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1198, metadata !DIExpression()), !dbg !1199
  %94 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1200
  %95 = load ptr, ptr %94, align 4, !dbg !1200
  %96 = load i32, ptr %24, align 4, !dbg !1201
  %97 = getelementptr inbounds %struct.z_heap_stress_block, ptr %95, i32 %96, !dbg !1202
  %98 = getelementptr inbounds %struct.z_heap_stress_block, ptr %97, i32 0, i32 0, !dbg !1203
  %99 = load ptr, ptr %98, align 4, !dbg !1203
  store ptr %99, ptr %25, align 4, !dbg !1199
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1204, metadata !DIExpression()), !dbg !1205
  %100 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1206
  %101 = load ptr, ptr %100, align 4, !dbg !1206
  %102 = load i32, ptr %24, align 4, !dbg !1207
  %103 = getelementptr inbounds %struct.z_heap_stress_block, ptr %101, i32 %102, !dbg !1208
  %104 = getelementptr inbounds %struct.z_heap_stress_block, ptr %103, i32 0, i32 1, !dbg !1209
  %105 = load i32, ptr %104, align 4, !dbg !1209
  store i32 %105, ptr %26, align 4, !dbg !1205
  %106 = load ptr, ptr %18, align 4, !dbg !1210
  %107 = getelementptr inbounds %struct.z_heap_stress_result, ptr %106, i32 0, i32 2, !dbg !1211
  %108 = load i32, ptr %107, align 8, !dbg !1212
  %109 = add i32 %108, 1, !dbg !1212
  store i32 %109, ptr %107, align 8, !dbg !1212
  %110 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1213
  %111 = load ptr, ptr %110, align 4, !dbg !1213
  %112 = load i32, ptr %24, align 4, !dbg !1214
  %113 = getelementptr inbounds %struct.z_heap_stress_block, ptr %111, i32 %112, !dbg !1215
  %114 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1216
  %115 = load ptr, ptr %114, align 4, !dbg !1216
  %116 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1217
  %117 = load i32, ptr %116, align 4, !dbg !1217
  %118 = sub i32 %117, 1, !dbg !1218
  %119 = getelementptr inbounds %struct.z_heap_stress_block, ptr %115, i32 %118, !dbg !1219
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %113, ptr align 4 %119, i32 8, i1 false), !dbg !1219
  %120 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1220
  %121 = load i32, ptr %120, align 4, !dbg !1221
  %122 = add i32 %121, -1, !dbg !1221
  store i32 %122, ptr %120, align 4, !dbg !1221
  %123 = load i32, ptr %26, align 4, !dbg !1222
  %124 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1223
  %125 = load i32, ptr %124, align 4, !dbg !1224
  %126 = sub i32 %125, %123, !dbg !1224
  store i32 %126, ptr %124, align 4, !dbg !1224
  %127 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 1, !dbg !1225
  %128 = load ptr, ptr %127, align 4, !dbg !1225
  %129 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1226
  %130 = load ptr, ptr %129, align 4, !dbg !1226
  %131 = load ptr, ptr %25, align 4, !dbg !1227
  call void %128(ptr noundef %130, ptr noundef %131), !dbg !1228
  br label %132

132:                                              ; preds = %92, %91
  %133 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1229
  %134 = load i32, ptr %133, align 4, !dbg !1229
  %135 = zext i32 %134 to i64, !dbg !1230
  %136 = load ptr, ptr %18, align 4, !dbg !1231
  %137 = getelementptr inbounds %struct.z_heap_stress_result, ptr %136, i32 0, i32 3, !dbg !1232
  %138 = load i64, ptr %137, align 8, !dbg !1233
  %139 = add i64 %138, %135, !dbg !1233
  store i64 %139, ptr %137, align 8, !dbg !1233
  br label %140, !dbg !1234

140:                                              ; preds = %132
  %141 = load i32, ptr %21, align 4, !dbg !1235
  %142 = add i32 %141, 1, !dbg !1235
  store i32 %142, ptr %21, align 4, !dbg !1235
  br label %45, !dbg !1236, !llvm.loop !1237

143:                                              ; preds = %45
  ret void, !dbg !1239
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @rand_alloc_choice(ptr noundef %0) #0 !dbg !1240 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1244, metadata !DIExpression()), !dbg !1245
  %7 = load ptr, ptr %3, align 4, !dbg !1246
  %8 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %7, i32 0, i32 6, !dbg !1248
  %9 = load i32, ptr %8, align 4, !dbg !1248
  %10 = icmp eq i32 %9, 0, !dbg !1249
  br i1 %10, label %11, label %12, !dbg !1250

11:                                               ; preds = %1
  store i1 true, ptr %2, align 1, !dbg !1251
  br label %55, !dbg !1251

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1253
  %14 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %13, i32 0, i32 6, !dbg !1255
  %15 = load i32, ptr %14, align 4, !dbg !1255
  %16 = load ptr, ptr %3, align 4, !dbg !1256
  %17 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %16, i32 0, i32 5, !dbg !1257
  %18 = load i32, ptr %17, align 4, !dbg !1257
  %19 = icmp uge i32 %15, %18, !dbg !1258
  br i1 %19, label %20, label %21, !dbg !1259

20:                                               ; preds = %12
  store i1 false, ptr %2, align 1, !dbg !1260
  br label %55, !dbg !1260

21:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1262, metadata !DIExpression()), !dbg !1264
  %22 = load ptr, ptr %3, align 4, !dbg !1265
  %23 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %22, i32 0, i32 7, !dbg !1266
  %24 = load i32, ptr %23, align 4, !dbg !1266
  %25 = mul i32 100, %24, !dbg !1267
  %26 = load ptr, ptr %3, align 4, !dbg !1268
  %27 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %26, i32 0, i32 3, !dbg !1269
  %28 = load i32, ptr %27, align 4, !dbg !1269
  %29 = udiv i32 %25, %28, !dbg !1270
  store i32 %29, ptr %4, align 4, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1271, metadata !DIExpression()), !dbg !1272
  %30 = load ptr, ptr %3, align 4, !dbg !1273
  %31 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %30, i32 0, i32 8, !dbg !1274
  %32 = load i32, ptr %31, align 4, !dbg !1274
  %33 = icmp ne i32 %32, 0, !dbg !1273
  br i1 %33, label %34, label %38, !dbg !1273

34:                                               ; preds = %21
  %35 = load ptr, ptr %3, align 4, !dbg !1275
  %36 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %35, i32 0, i32 8, !dbg !1276
  %37 = load i32, ptr %36, align 4, !dbg !1276
  br label %39, !dbg !1273

38:                                               ; preds = %21
  br label %39, !dbg !1273

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 1, %38 ], !dbg !1273
  store i32 %40, ptr %5, align 4, !dbg !1272
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 -1, ptr %6, align 4, !dbg !1278
  %41 = load i32, ptr %4, align 4, !dbg !1279
  %42 = load ptr, ptr %3, align 4, !dbg !1281
  %43 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %42, i32 0, i32 8, !dbg !1282
  %44 = load i32, ptr %43, align 4, !dbg !1282
  %45 = icmp ult i32 %41, %44, !dbg !1283
  br i1 %45, label %46, label %51, !dbg !1284

46:                                               ; preds = %39
  %47 = load i32, ptr %4, align 4, !dbg !1285
  %48 = load i32, ptr %5, align 4, !dbg !1287
  %49 = udiv i32 -2147483648, %48, !dbg !1288
  %50 = mul i32 %47, %49, !dbg !1289
  store i32 %50, ptr %6, align 4, !dbg !1290
  br label %51, !dbg !1291

51:                                               ; preds = %46, %39
  %52 = call i32 @rand32(), !dbg !1292
  %53 = load i32, ptr %6, align 4, !dbg !1293
  %54 = icmp ugt i32 %52, %53, !dbg !1294
  store i1 %54, ptr %2, align 1, !dbg !1295
  br label %55, !dbg !1295

55:                                               ; preds = %51, %20, %11
  %56 = load i1, ptr %2, align 1, !dbg !1296
  ret i1 %56, !dbg !1296
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rand_alloc_size(ptr noundef %0) #0 !dbg !1297 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1300, metadata !DIExpression()), !dbg !1301
  %4 = load ptr, ptr %2, align 4, !dbg !1302
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1303, metadata !DIExpression()), !dbg !1304
  %5 = call i32 @rand32(), !dbg !1305
  %6 = call i32 @llvm.ctlz.i32(i32 %5, i1 false), !dbg !1306
  %7 = add nsw i32 4, %6, !dbg !1307
  store i32 %7, ptr %3, align 4, !dbg !1304
  %8 = call i32 @rand32(), !dbg !1308
  %9 = load i32, ptr %3, align 4, !dbg !1309
  %10 = shl i32 1, %9, !dbg !1310
  %11 = sub i32 %10, 1, !dbg !1311
  %12 = and i32 %8, %11, !dbg !1312
  ret i32 %12, !dbg !1313
}

; Function Attrs: noinline nounwind optnone
define internal i32 @rand_free_choice(ptr noundef %0) #0 !dbg !1314 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1315, metadata !DIExpression()), !dbg !1316
  %3 = call i32 @rand32(), !dbg !1317
  %4 = load ptr, ptr %2, align 4, !dbg !1318
  %5 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %4, i32 0, i32 6, !dbg !1319
  %6 = load i32, ptr %5, align 4, !dbg !1319
  %7 = urem i32 %3, %6, !dbg !1320
  ret i32 %7, !dbg !1321
}

; Function Attrs: noinline nounwind optnone
define hidden void @heap_print_info(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !1322 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1325, metadata !DIExpression()), !dbg !1326
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1327, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1329, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1331, metadata !DIExpression()), !dbg !1332
  %17 = load ptr, ptr %3, align 4, !dbg !1333
  %18 = load ptr, ptr %3, align 4, !dbg !1334
  %19 = getelementptr inbounds %struct.z_heap, ptr %18, i32 0, i32 1, !dbg !1335
  %20 = load i32, ptr %19, align 4, !dbg !1335
  %21 = call i32 @bucket_idx(ptr noundef %17, i32 noundef %20), !dbg !1336
  %22 = add nsw i32 %21, 1, !dbg !1337
  store i32 %22, ptr %6, align 4, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1338, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1340, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1344, metadata !DIExpression()), !dbg !1345
  %23 = load ptr, ptr %3, align 4, !dbg !1346
  %24 = call ptr @chunk_buf(ptr noundef %23), !dbg !1347
  %25 = load ptr, ptr %3, align 4, !dbg !1348
  %26 = getelementptr inbounds %struct.z_heap, ptr %25, i32 0, i32 1, !dbg !1349
  %27 = load i32, ptr %26, align 4, !dbg !1349
  %28 = load i32, ptr %6, align 4, !dbg !1350
  call void (ptr, ...) @printk(ptr noundef @.str, ptr noundef %24, i32 noundef %27, i32 noundef %28), !dbg !1351
  call void (ptr, ...) @printk(ptr noundef @.str.1), !dbg !1352
  store i32 0, ptr %5, align 4, !dbg !1353
  br label %29, !dbg !1355

29:                                               ; preds = %85, %2
  %30 = load i32, ptr %5, align 4, !dbg !1356
  %31 = load i32, ptr %6, align 4, !dbg !1358
  %32 = icmp slt i32 %30, %31, !dbg !1359
  br i1 %32, label %33, label %88, !dbg !1360

33:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1361, metadata !DIExpression()), !dbg !1363
  %34 = load ptr, ptr %3, align 4, !dbg !1364
  %35 = getelementptr inbounds %struct.z_heap, ptr %34, i32 0, i32 3, !dbg !1365
  %36 = load i32, ptr %5, align 4, !dbg !1366
  %37 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %35, i32 0, i32 %36, !dbg !1364
  %38 = getelementptr inbounds %struct.z_heap_bucket, ptr %37, i32 0, i32 0, !dbg !1367
  %39 = load i32, ptr %38, align 4, !dbg !1367
  store i32 %39, ptr %11, align 4, !dbg !1363
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1368, metadata !DIExpression()), !dbg !1369
  store i32 0, ptr %12, align 4, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1370, metadata !DIExpression()), !dbg !1371
  store i32 0, ptr %13, align 4, !dbg !1371
  %40 = load i32, ptr %11, align 4, !dbg !1372
  %41 = icmp ne i32 %40, 0, !dbg !1372
  br i1 %41, label %42, label %68, !dbg !1374

42:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1375, metadata !DIExpression()), !dbg !1377
  %43 = load i32, ptr %11, align 4, !dbg !1378
  store i32 %43, ptr %14, align 4, !dbg !1377
  br label %44, !dbg !1379

44:                                               ; preds = %63, %42
  %45 = load i32, ptr %13, align 4, !dbg !1380
  %46 = add nsw i32 %45, 1, !dbg !1380
  store i32 %46, ptr %13, align 4, !dbg !1380
  %47 = load i32, ptr %12, align 4, !dbg !1382
  %48 = load ptr, ptr %3, align 4, !dbg !1383
  %49 = load i32, ptr %14, align 4, !dbg !1384
  %50 = call i32 @chunk_size(ptr noundef %48, i32 noundef %49), !dbg !1385
  %51 = icmp ugt i32 %47, %50, !dbg !1386
  br i1 %51, label %52, label %54, !dbg !1387

52:                                               ; preds = %44
  %53 = load i32, ptr %12, align 4, !dbg !1388
  br label %58, !dbg !1387

54:                                               ; preds = %44
  %55 = load ptr, ptr %3, align 4, !dbg !1389
  %56 = load i32, ptr %14, align 4, !dbg !1390
  %57 = call i32 @chunk_size(ptr noundef %55, i32 noundef %56), !dbg !1391
  br label %58, !dbg !1387

58:                                               ; preds = %54, %52
  %59 = phi i32 [ %53, %52 ], [ %57, %54 ], !dbg !1387
  store i32 %59, ptr %12, align 4, !dbg !1392
  %60 = load ptr, ptr %3, align 4, !dbg !1393
  %61 = load i32, ptr %14, align 4, !dbg !1394
  %62 = call i32 @next_free_chunk(ptr noundef %60, i32 noundef %61), !dbg !1395
  store i32 %62, ptr %14, align 4, !dbg !1396
  br label %63, !dbg !1397

63:                                               ; preds = %58
  %64 = load i32, ptr %14, align 4, !dbg !1398
  %65 = load i32, ptr %11, align 4, !dbg !1399
  %66 = icmp ne i32 %64, %65, !dbg !1400
  br i1 %66, label %44, label %67, !dbg !1397, !llvm.loop !1401

67:                                               ; preds = %63
  br label %68, !dbg !1403

68:                                               ; preds = %67, %33
  %69 = load i32, ptr %13, align 4, !dbg !1404
  %70 = icmp ne i32 %69, 0, !dbg !1404
  br i1 %70, label %71, label %84, !dbg !1406

71:                                               ; preds = %68
  %72 = load i32, ptr %5, align 4, !dbg !1407
  %73 = load i32, ptr %5, align 4, !dbg !1409
  %74 = shl i32 1, %73, !dbg !1410
  %75 = sub nsw i32 %74, 1, !dbg !1411
  %76 = load ptr, ptr %3, align 4, !dbg !1412
  %77 = call i32 @min_chunk_size(ptr noundef %76), !dbg !1413
  %78 = add i32 %75, %77, !dbg !1414
  %79 = load i32, ptr %13, align 4, !dbg !1415
  %80 = load i32, ptr %12, align 4, !dbg !1416
  %81 = load ptr, ptr %3, align 4, !dbg !1417
  %82 = load i32, ptr %12, align 4, !dbg !1418
  %83 = call i32 @chunksz_to_bytes(ptr noundef %81, i32 noundef %82), !dbg !1419
  call void (ptr, ...) @printk(ptr noundef @.str.2, i32 noundef %72, i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %83), !dbg !1420
  br label %84, !dbg !1421

84:                                               ; preds = %71, %68
  br label %85, !dbg !1422

85:                                               ; preds = %84
  %86 = load i32, ptr %5, align 4, !dbg !1423
  %87 = add nsw i32 %86, 1, !dbg !1423
  store i32 %87, ptr %5, align 4, !dbg !1423
  br label %29, !dbg !1424, !llvm.loop !1425

88:                                               ; preds = %29
  %89 = load i8, ptr %4, align 1, !dbg !1427
  %90 = trunc i8 %89 to i1, !dbg !1427
  br i1 %90, label %91, label %127, !dbg !1429

91:                                               ; preds = %88
  call void (ptr, ...) @printk(ptr noundef @.str.3), !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1432, metadata !DIExpression()), !dbg !1434
  store i32 0, ptr %15, align 4, !dbg !1434
  br label %92, !dbg !1435

92:                                               ; preds = %122, %91
  %93 = load i32, ptr %15, align 4, !dbg !1436
  %94 = load ptr, ptr %3, align 4, !dbg !1439
  %95 = load i32, ptr %15, align 4, !dbg !1440
  %96 = call zeroext i1 @chunk_used(ptr noundef %94, i32 noundef %95), !dbg !1441
  br i1 %96, label %97, label %98, !dbg !1441

97:                                               ; preds = %92
  br label %104, !dbg !1441

98:                                               ; preds = %92
  %99 = load ptr, ptr %3, align 4, !dbg !1442
  %100 = load i32, ptr %15, align 4, !dbg !1443
  %101 = call zeroext i1 @solo_free_header(ptr noundef %99, i32 noundef %100), !dbg !1444
  %102 = zext i1 %101 to i64, !dbg !1444
  %103 = select i1 %101, i32 46, i32 45, !dbg !1444
  br label %104, !dbg !1441

104:                                              ; preds = %98, %97
  %105 = phi i32 [ 42, %97 ], [ %103, %98 ], !dbg !1441
  %106 = load ptr, ptr %3, align 4, !dbg !1445
  %107 = load i32, ptr %15, align 4, !dbg !1446
  %108 = call i32 @chunk_size(ptr noundef %106, i32 noundef %107), !dbg !1447
  %109 = load ptr, ptr %3, align 4, !dbg !1448
  %110 = load i32, ptr %15, align 4, !dbg !1449
  %111 = call i32 @left_chunk(ptr noundef %109, i32 noundef %110), !dbg !1450
  %112 = load ptr, ptr %3, align 4, !dbg !1451
  %113 = load i32, ptr %15, align 4, !dbg !1452
  %114 = call i32 @right_chunk(ptr noundef %112, i32 noundef %113), !dbg !1453
  call void (ptr, ...) @printk(ptr noundef @.str.4, i32 noundef %93, i32 noundef %105, i32 noundef %108, i32 noundef %111, i32 noundef %114), !dbg !1454
  %115 = load i32, ptr %15, align 4, !dbg !1455
  %116 = load ptr, ptr %3, align 4, !dbg !1457
  %117 = getelementptr inbounds %struct.z_heap, ptr %116, i32 0, i32 1, !dbg !1458
  %118 = load i32, ptr %117, align 4, !dbg !1458
  %119 = icmp eq i32 %115, %118, !dbg !1459
  br i1 %119, label %120, label %121, !dbg !1460

120:                                              ; preds = %104
  br label %126, !dbg !1461

121:                                              ; preds = %104
  br label %122, !dbg !1463

122:                                              ; preds = %121
  %123 = load ptr, ptr %3, align 4, !dbg !1464
  %124 = load i32, ptr %15, align 4, !dbg !1465
  %125 = call i32 @right_chunk(ptr noundef %123, i32 noundef %124), !dbg !1466
  store i32 %125, ptr %15, align 4, !dbg !1467
  br label %92, !dbg !1468, !llvm.loop !1469

126:                                              ; preds = %120
  br label %127, !dbg !1472

127:                                              ; preds = %126, %88
  %128 = load ptr, ptr %3, align 4, !dbg !1473
  call void @get_alloc_info(ptr noundef %128, ptr noundef %8, ptr noundef %7), !dbg !1474
  %129 = load ptr, ptr %3, align 4, !dbg !1475
  %130 = getelementptr inbounds %struct.z_heap, ptr %129, i32 0, i32 1, !dbg !1476
  %131 = load i32, ptr %130, align 4, !dbg !1476
  %132 = mul i32 %131, 8, !dbg !1477
  %133 = load ptr, ptr %3, align 4, !dbg !1478
  %134 = call i32 @chunk_header_bytes(ptr noundef %133), !dbg !1479
  %135 = add i32 %132, %134, !dbg !1480
  store i32 %135, ptr %9, align 4, !dbg !1481
  %136 = load i32, ptr %9, align 4, !dbg !1482
  %137 = load i32, ptr %7, align 4, !dbg !1483
  %138 = sub i32 %136, %137, !dbg !1484
  %139 = load i32, ptr %8, align 4, !dbg !1485
  %140 = sub i32 %138, %139, !dbg !1486
  store i32 %140, ptr %10, align 4, !dbg !1487
  %141 = load i32, ptr %7, align 4, !dbg !1488
  %142 = load i32, ptr %8, align 4, !dbg !1489
  %143 = load i32, ptr %10, align 4, !dbg !1490
  %144 = load i32, ptr %10, align 4, !dbg !1491
  %145 = mul i32 1000, %144, !dbg !1492
  %146 = load i32, ptr %9, align 4, !dbg !1493
  %147 = udiv i32 %146, 2, !dbg !1494
  %148 = add i32 %145, %147, !dbg !1495
  %149 = load i32, ptr %9, align 4, !dbg !1496
  %150 = udiv i32 %148, %149, !dbg !1497
  %151 = udiv i32 %150, 10, !dbg !1498
  %152 = load i32, ptr %10, align 4, !dbg !1499
  %153 = mul i32 1000, %152, !dbg !1500
  %154 = load i32, ptr %9, align 4, !dbg !1501
  %155 = udiv i32 %154, 2, !dbg !1502
  %156 = add i32 %153, %155, !dbg !1503
  %157 = load i32, ptr %9, align 4, !dbg !1504
  %158 = udiv i32 %156, %157, !dbg !1505
  %159 = urem i32 %158, 10, !dbg !1506
  call void (ptr, ...) @printk(ptr noundef @.str.5, i32 noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef %151, i32 noundef %159), !dbg !1507
  ret void, !dbg !1508
}

declare void @printk(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone
define internal ptr @chunk_buf(ptr noundef %0) #0 !dbg !1509 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1512, metadata !DIExpression()), !dbg !1513
  %3 = load ptr, ptr %2, align 4, !dbg !1514
  ret ptr %3, !dbg !1515
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_size(ptr noundef %0, i32 noundef %1) #0 !dbg !1516 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1519, metadata !DIExpression()), !dbg !1520
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1521, metadata !DIExpression()), !dbg !1522
  %5 = load ptr, ptr %3, align 4, !dbg !1523
  %6 = load i32, ptr %4, align 4, !dbg !1524
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1), !dbg !1525
  %8 = lshr i32 %7, 1, !dbg !1526
  ret i32 %8, !dbg !1527
}

; Function Attrs: noinline nounwind optnone
define internal i32 @min_chunk_size(ptr noundef %0) #0 !dbg !1528 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !1532
  %3 = load ptr, ptr %2, align 4, !dbg !1533
  %4 = call i32 @bytes_to_chunksz(ptr noundef %3, i32 noundef 1), !dbg !1534
  ret i32 %4, !dbg !1535
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunksz_to_bytes(ptr noundef %0, i32 noundef %1) #0 !dbg !1536 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1541, metadata !DIExpression()), !dbg !1542
  %5 = load i32, ptr %4, align 4, !dbg !1543
  %6 = mul i32 %5, 8, !dbg !1544
  %7 = load ptr, ptr %3, align 4, !dbg !1545
  %8 = call i32 @chunk_header_bytes(ptr noundef %7), !dbg !1546
  %9 = sub i32 %6, %8, !dbg !1547
  ret i32 %9, !dbg !1548
}

; Function Attrs: noinline nounwind optnone
define internal void @get_alloc_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1549 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1553, metadata !DIExpression()), !dbg !1554
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1555, metadata !DIExpression()), !dbg !1556
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1559, metadata !DIExpression()), !dbg !1560
  %8 = load ptr, ptr %5, align 4, !dbg !1561
  store i32 0, ptr %8, align 4, !dbg !1562
  %9 = load ptr, ptr %6, align 4, !dbg !1563
  store i32 0, ptr %9, align 4, !dbg !1564
  %10 = load ptr, ptr %4, align 4, !dbg !1565
  %11 = call i32 @right_chunk(ptr noundef %10, i32 noundef 0), !dbg !1567
  store i32 %11, ptr %7, align 4, !dbg !1568
  br label %12, !dbg !1569

12:                                               ; preds = %46, %3
  %13 = load i32, ptr %7, align 4, !dbg !1570
  %14 = load ptr, ptr %4, align 4, !dbg !1572
  %15 = getelementptr inbounds %struct.z_heap, ptr %14, i32 0, i32 1, !dbg !1573
  %16 = load i32, ptr %15, align 4, !dbg !1573
  %17 = icmp ult i32 %13, %16, !dbg !1574
  br i1 %17, label %18, label %50, !dbg !1575

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 4, !dbg !1576
  %20 = load i32, ptr %7, align 4, !dbg !1579
  %21 = call zeroext i1 @chunk_used(ptr noundef %19, i32 noundef %20), !dbg !1580
  br i1 %21, label %22, label %31, !dbg !1581

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4, !dbg !1582
  %24 = load ptr, ptr %4, align 4, !dbg !1584
  %25 = load i32, ptr %7, align 4, !dbg !1585
  %26 = call i32 @chunk_size(ptr noundef %24, i32 noundef %25), !dbg !1586
  %27 = call i32 @chunksz_to_bytes(ptr noundef %23, i32 noundef %26), !dbg !1587
  %28 = load ptr, ptr %5, align 4, !dbg !1588
  %29 = load i32, ptr %28, align 4, !dbg !1589
  %30 = add i32 %29, %27, !dbg !1589
  store i32 %30, ptr %28, align 4, !dbg !1589
  br label %45, !dbg !1590

31:                                               ; preds = %18
  %32 = load ptr, ptr %4, align 4, !dbg !1591
  %33 = load i32, ptr %7, align 4, !dbg !1593
  %34 = call zeroext i1 @solo_free_header(ptr noundef %32, i32 noundef %33), !dbg !1594
  br i1 %34, label %44, label %35, !dbg !1595

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 4, !dbg !1596
  %37 = load ptr, ptr %4, align 4, !dbg !1598
  %38 = load i32, ptr %7, align 4, !dbg !1599
  %39 = call i32 @chunk_size(ptr noundef %37, i32 noundef %38), !dbg !1600
  %40 = call i32 @chunksz_to_bytes(ptr noundef %36, i32 noundef %39), !dbg !1601
  %41 = load ptr, ptr %6, align 4, !dbg !1602
  %42 = load i32, ptr %41, align 4, !dbg !1603
  %43 = add i32 %42, %40, !dbg !1603
  store i32 %43, ptr %41, align 4, !dbg !1603
  br label %44, !dbg !1604

44:                                               ; preds = %35, %31
  br label %45

45:                                               ; preds = %44, %22
  br label %46, !dbg !1605

46:                                               ; preds = %45
  %47 = load ptr, ptr %4, align 4, !dbg !1606
  %48 = load i32, ptr %7, align 4, !dbg !1607
  %49 = call i32 @right_chunk(ptr noundef %47, i32 noundef %48), !dbg !1608
  store i32 %49, ptr %7, align 4, !dbg !1609
  br label %12, !dbg !1610, !llvm.loop !1611

50:                                               ; preds = %12
  ret void, !dbg !1613
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_header_bytes(ptr noundef %0) #0 !dbg !1614 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1617, metadata !DIExpression()), !dbg !1618
  %3 = load ptr, ptr %2, align 4, !dbg !1619
  %4 = call zeroext i1 @big_heap(ptr noundef %3), !dbg !1620
  %5 = zext i1 %4 to i64, !dbg !1620
  %6 = select i1 %4, i32 8, i32 4, !dbg !1620
  ret i32 %6, !dbg !1621
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_heap_print_info(ptr noundef %0, i1 noundef zeroext %1) #0 !dbg !1622 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1625, metadata !DIExpression()), !dbg !1626
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1627, metadata !DIExpression()), !dbg !1628
  %6 = load ptr, ptr %3, align 4, !dbg !1629
  %7 = getelementptr inbounds %struct.sys_heap, ptr %6, i32 0, i32 0, !dbg !1630
  %8 = load ptr, ptr %7, align 4, !dbg !1630
  %9 = load i8, ptr %4, align 1, !dbg !1631
  %10 = trunc i8 %9 to i1, !dbg !1631
  call void @heap_print_info(ptr noundef %8, i1 noundef zeroext %10), !dbg !1632
  ret void, !dbg !1633
}

declare i64 @z_timeout_expires(ptr noundef) #4

declare i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1634 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1638, metadata !DIExpression()), !dbg !1639
  %3 = load ptr, ptr %2, align 4, !dbg !1640
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1641
  %5 = icmp eq ptr %4, null, !dbg !1642
  ret i1 %5, !dbg !1643
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1644 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1647, metadata !DIExpression()), !dbg !1648
  %3 = load ptr, ptr %2, align 4, !dbg !1649
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1650
  %5 = load ptr, ptr %4, align 4, !dbg !1650
  ret ptr %5, !dbg !1651
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @in_bounds(ptr noundef %0, i32 noundef %1) #0 !dbg !1652 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1653, metadata !DIExpression()), !dbg !1654
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1655, metadata !DIExpression()), !dbg !1656
  br label %6, !dbg !1657

6:                                                ; preds = %2
  %7 = load i32, ptr %5, align 4, !dbg !1658
  %8 = load ptr, ptr %4, align 4, !dbg !1661
  %9 = call i32 @right_chunk(ptr noundef %8, i32 noundef 0), !dbg !1662
  %10 = icmp uge i32 %7, %9, !dbg !1663
  br i1 %10, label %12, label %11, !dbg !1664

11:                                               ; preds = %6
  store i1 false, ptr %3, align 1, !dbg !1665
  br label %34, !dbg !1665

12:                                               ; preds = %6
  br label %13, !dbg !1667

13:                                               ; preds = %12
  br label %14, !dbg !1668

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !1669
  %16 = load ptr, ptr %4, align 4, !dbg !1672
  %17 = getelementptr inbounds %struct.z_heap, ptr %16, i32 0, i32 1, !dbg !1673
  %18 = load i32, ptr %17, align 4, !dbg !1673
  %19 = icmp ult i32 %15, %18, !dbg !1674
  br i1 %19, label %21, label %20, !dbg !1675

20:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !1676
  br label %34, !dbg !1676

21:                                               ; preds = %14
  br label %22, !dbg !1678

22:                                               ; preds = %21
  br label %23, !dbg !1679

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 4, !dbg !1680
  %25 = load i32, ptr %5, align 4, !dbg !1683
  %26 = call i32 @chunk_size(ptr noundef %24, i32 noundef %25), !dbg !1684
  %27 = load ptr, ptr %4, align 4, !dbg !1685
  %28 = getelementptr inbounds %struct.z_heap, ptr %27, i32 0, i32 1, !dbg !1686
  %29 = load i32, ptr %28, align 4, !dbg !1686
  %30 = icmp ult i32 %26, %29, !dbg !1687
  br i1 %30, label %32, label %31, !dbg !1688

31:                                               ; preds = %23
  store i1 false, ptr %3, align 1, !dbg !1689
  br label %34, !dbg !1689

32:                                               ; preds = %23
  br label %33, !dbg !1691

33:                                               ; preds = %32
  store i1 true, ptr %3, align 1, !dbg !1692
  br label %34, !dbg !1692

34:                                               ; preds = %33, %31, %20, %11
  %35 = load i1, ptr %3, align 1, !dbg !1693
  ret i1 %35, !dbg !1693
}

; Function Attrs: noinline nounwind optnone
define internal i32 @prev_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1694 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1695, metadata !DIExpression()), !dbg !1696
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1697, metadata !DIExpression()), !dbg !1698
  %5 = load ptr, ptr %3, align 4, !dbg !1699
  %6 = load i32, ptr %4, align 4, !dbg !1700
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 2), !dbg !1701
  ret i32 %7, !dbg !1702
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunk_field(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 !dbg !1703 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1708, metadata !DIExpression()), !dbg !1709
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1710, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1712, metadata !DIExpression()), !dbg !1713
  %10 = load ptr, ptr %5, align 4, !dbg !1714
  %11 = call ptr @chunk_buf(ptr noundef %10), !dbg !1715
  store ptr %11, ptr %8, align 4, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1716, metadata !DIExpression()), !dbg !1717
  %12 = load ptr, ptr %8, align 4, !dbg !1718
  %13 = load i32, ptr %6, align 4, !dbg !1719
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !1718
  store ptr %14, ptr %9, align 4, !dbg !1717
  %15 = load ptr, ptr %5, align 4, !dbg !1720
  %16 = call zeroext i1 @big_heap(ptr noundef %15), !dbg !1722
  br i1 %16, label %17, label %23, !dbg !1723

17:                                               ; preds = %3
  %18 = load ptr, ptr %9, align 4, !dbg !1724
  %19 = load i8, ptr %7, align 1, !dbg !1726
  %20 = zext i8 %19 to i32, !dbg !1727
  %21 = getelementptr inbounds i32, ptr %18, i32 %20, !dbg !1727
  %22 = load i32, ptr %21, align 4, !dbg !1727
  store i32 %22, ptr %4, align 4, !dbg !1728
  br label %30, !dbg !1728

23:                                               ; preds = %3
  %24 = load ptr, ptr %9, align 4, !dbg !1729
  %25 = load i8, ptr %7, align 1, !dbg !1731
  %26 = zext i8 %25 to i32, !dbg !1732
  %27 = getelementptr inbounds i16, ptr %24, i32 %26, !dbg !1732
  %28 = load i16, ptr %27, align 2, !dbg !1732
  %29 = zext i16 %28 to i32, !dbg !1732
  store i32 %29, ptr %4, align 4, !dbg !1733
  br label %30, !dbg !1733

30:                                               ; preds = %23, %17
  %31 = load i32, ptr %4, align 4, !dbg !1734
  ret i32 %31, !dbg !1734
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @big_heap(ptr noundef %0) #0 !dbg !1735 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1738, metadata !DIExpression()), !dbg !1739
  %3 = load ptr, ptr %2, align 4, !dbg !1740
  %4 = getelementptr inbounds %struct.z_heap, ptr %3, i32 0, i32 1, !dbg !1741
  %5 = load i32, ptr %4, align 4, !dbg !1741
  %6 = call zeroext i1 @big_heap_chunks(i32 noundef %5), !dbg !1742
  ret i1 %6, !dbg !1743
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @big_heap_chunks(i32 noundef %0) #0 !dbg !1744 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1747, metadata !DIExpression()), !dbg !1748
  ret i1 false, !dbg !1749
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @rand32() #0 !dbg !34 {
  %1 = load i64, ptr @rand32.state, align 8, !dbg !1752
  %2 = mul i64 %1, 2862933555777941757, !dbg !1753
  %3 = add i64 %2, 3037000493, !dbg !1754
  store i64 %3, ptr @rand32.state, align 8, !dbg !1755
  %4 = load i64, ptr @rand32.state, align 8, !dbg !1756
  %5 = lshr i64 %4, 32, !dbg !1757
  %6 = trunc i64 %5 to i32, !dbg !1758
  ret i32 %6, !dbg !1759
}

; Function Attrs: noinline nounwind optnone
define internal i32 @bytes_to_chunksz(ptr noundef %0, i32 noundef %1) #0 !dbg !1760 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1763, metadata !DIExpression()), !dbg !1764
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1765, metadata !DIExpression()), !dbg !1766
  %5 = load ptr, ptr %3, align 4, !dbg !1767
  %6 = call i32 @chunk_header_bytes(ptr noundef %5), !dbg !1768
  %7 = load i32, ptr %4, align 4, !dbg !1769
  %8 = add i32 %6, %7, !dbg !1770
  %9 = call i32 @chunksz(i32 noundef %8), !dbg !1771
  ret i32 %9, !dbg !1772
}

; Function Attrs: noinline nounwind optnone
define internal i32 @chunksz(i32 noundef %0) #0 !dbg !1773 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1776, metadata !DIExpression()), !dbg !1777
  %3 = load i32, ptr %2, align 4, !dbg !1778
  %4 = add i32 %3, 8, !dbg !1779
  %5 = sub i32 %4, 1, !dbg !1780
  %6 = udiv i32 %5, 8, !dbg !1781
  ret i32 %6, !dbg !1782
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!40}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/os/heap-validate.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 359, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1496, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 187)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 376, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 26)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 14)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 46)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 403, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 72)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "state", scope: !34, file: !2, line: 227, type: !150, isLocal: true, isDefinition: true)
!34 = distinct !DISubprogram(name: "rand32", scope: !2, file: !2, line: 225, type: !35, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 64, baseType: !39)
!38 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !42, retainedTypes: !133, globals: !148, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "heap-validate.c", directory: "/home/sri/zephyrproject/zephyr/build")
!42 = !{!43, !126}
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !44, line: 29, baseType: !45, size: 8, elements: !46)
!44 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!47 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!48 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!49 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!50 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!51 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!52 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!53 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!54 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!55 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!56 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!57 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!58 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!59 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!60 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!61 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!62 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!63 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!102 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!103 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!104 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!105 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!106 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!107 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!108 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!109 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!110 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!111 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!112 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!113 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!114 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!115 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!116 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!117 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!118 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!119 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!120 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!121 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!122 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!123 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!124 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!125 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chunk_fields", file: !127, line: 54, baseType: !45, size: 8, elements: !128)
!127 = !DIFile(filename: "lib/os/heap.h", directory: "/home/sri/zephyrproject/zephyr")
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "LEFT_SIZE", value: 0)
!130 = !DIEnumerator(name: "SIZE_AND_USED", value: 1)
!131 = !DIEnumerator(name: "FREE_PREV", value: 2)
!132 = !DIEnumerator(name: "FREE_NEXT", value: 3)
!133 = !{!134, !135, !136, !137, !37, !140}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 63, baseType: !139)
!139 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunk_unit_t", file: !127, line: 58, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !127, line: 58, size: 64, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !142, file: !127, line: 58, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 8)
!148 = !{!0, !7, !12, !17, !22, !27, !32}
!149 = !{}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !38, line: 65, baseType: !151)
!151 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!152 = !{i32 7, !"Dwarf Version", i32 4}
!153 = !{i32 2, !"Debug Info Version", i32 3}
!154 = !{i32 1, !"wchar_size", i32 4}
!155 = !{i32 1, !"static_rwdata", i32 1}
!156 = !{i32 1, !"enumsize_buildattr", i32 1}
!157 = !{i32 1, !"armlib_unavailable", i32 0}
!158 = !{i32 8, !"PIC Level", i32 2}
!159 = !{i32 7, !"PIE Level", i32 2}
!160 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!161 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !44, file: !44, line: 223, type: !162, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164, !166}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !168, line: 250, size: 896, elements: !169)
!168 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!169 = !{!170, !238, !251, !252, !253, !254, !287}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !167, file: !168, line: 252, baseType: !171, size: 384)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !168, line: 58, size: 384, elements: !172)
!172 = !{!173, !201, !209, !211, !212, !223, !224, !225}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !168, line: 61, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !168, line: 61, size: 64, elements: !175)
!175 = !{!176, !192}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !174, file: !168, line: 62, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !178, line: 55, baseType: !179)
!178 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !178, line: 37, size: 64, elements: !180)
!180 = !{!181, !187}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 38, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 38, size: 32, elements: !183)
!183 = !{!184, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !182, file: !178, line: 39, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !178, line: 40, baseType: !185, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 42, baseType: !188, size: 32, offset: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 42, size: 32, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !188, file: !178, line: 43, baseType: !185, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !188, file: !178, line: 44, baseType: !185, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !174, file: !168, line: 63, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !194, line: 58, size: 64, elements: !195)
!194 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !193, file: !194, line: 60, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 64, elements: !199)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!199 = !{!200}
!200 = !DISubrange(count: 2)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !171, file: !168, line: 69, baseType: !202, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !204, line: 243, baseType: !205)
!204 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !204, line: 241, size: 64, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !205, file: !204, line: 242, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !178, line: 51, baseType: !179)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !171, file: !168, line: 72, baseType: !210, size: 8, offset: 96)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 62, baseType: !45)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !171, file: !168, line: 75, baseType: !210, size: 8, offset: 104)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !168, line: 91, baseType: !213, size: 16, offset: 112)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !168, line: 91, size: 16, elements: !214)
!214 = !{!215, !222}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !168, line: 92, baseType: !216, size: 16)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !213, file: !168, line: 92, size: 16, elements: !217)
!217 = !{!218, !221}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !216, file: !168, line: 97, baseType: !219, size: 8)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !38, line: 56, baseType: !220)
!220 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !216, file: !168, line: 98, baseType: !210, size: 8, offset: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !213, file: !168, line: 101, baseType: !138, size: 16)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !171, file: !168, line: 108, baseType: !37, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !171, file: !168, line: 132, baseType: !134, size: 32, offset: 160)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !171, file: !168, line: 136, baseType: !226, size: 192, offset: 192)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !204, line: 254, size: 192, elements: !227)
!227 = !{!228, !229, !235}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !226, file: !204, line: 255, baseType: !177, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !226, file: !204, line: 256, baseType: !230, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !204, line: 252, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !226, file: !204, line: 259, baseType: !236, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !38, line: 59, baseType: !237)
!237 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !167, file: !168, line: 255, baseType: !239, size: 288, offset: 384)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !240, line: 25, size: 288, elements: !241)
!240 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !239, file: !240, line: 26, baseType: !37, size: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !239, file: !240, line: 27, baseType: !37, size: 32, offset: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !239, file: !240, line: 28, baseType: !37, size: 32, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !239, file: !240, line: 29, baseType: !37, size: 32, offset: 96)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !239, file: !240, line: 30, baseType: !37, size: 32, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !239, file: !240, line: 31, baseType: !37, size: 32, offset: 160)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !239, file: !240, line: 32, baseType: !37, size: 32, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !239, file: !240, line: 33, baseType: !37, size: 32, offset: 224)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !239, file: !240, line: 34, baseType: !37, size: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !167, file: !168, line: 258, baseType: !134, size: 32, offset: 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !167, file: !168, line: 261, baseType: !203, size: 64, offset: 704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !167, file: !168, line: 302, baseType: !135, size: 32, offset: 768)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !167, file: !168, line: 333, baseType: !255, size: 32, offset: 800)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !257, line: 5291, size: 160, elements: !258)
!257 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!258 = !{!259, !283, !284}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !256, file: !257, line: 5292, baseType: !260, size: 96)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !261, line: 56, size: 96, elements: !262)
!261 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!262 = !{!263, !279, !280}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !260, file: !261, line: 57, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 32)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !127, line: 68, size: 128, elements: !266)
!266 = !{!267, !270, !271, !272}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "chunk0_hdr", scope: !265, file: !127, line: 69, baseType: !268, size: 64)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 64, elements: !199)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunkid_t", file: !127, line: 61, baseType: !37)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "end_chunk", scope: !265, file: !127, line: 70, baseType: !269, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "avail_buckets", scope: !265, file: !127, line: 71, baseType: !37, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !265, file: !127, line: 77, baseType: !273, offset: 128)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, elements: !277)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_bucket", file: !127, line: 64, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !127, line: 65, baseType: !269, size: 32)
!277 = !{!278}
!278 = !DISubrange(count: 0)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !260, file: !261, line: 58, baseType: !134, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !260, file: !261, line: 59, baseType: !281, size: 32, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !282, line: 46, baseType: !39)
!282 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !256, file: !257, line: 5293, baseType: !203, size: 64, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !256, file: !257, line: 5294, baseType: !285, offset: 160)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !286, line: 45, elements: !149)
!286 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !167, file: !168, line: 355, baseType: !288, size: 64, offset: 832)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !240, line: 60, size: 64, elements: !289)
!289 = !{!290, !291}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !288, file: !240, line: 63, baseType: !37, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !288, file: !240, line: 66, baseType: !37, size: 32, offset: 32)
!292 = !DILocalVariable(name: "object", arg: 1, scope: !161, file: !44, line: 223, type: !164)
!293 = !DILocation(line: 223, column: 61, scope: !161)
!294 = !DILocalVariable(name: "thread", arg: 2, scope: !161, file: !44, line: 224, type: !166)
!295 = !DILocation(line: 224, column: 24, scope: !161)
!296 = !DILocation(line: 226, column: 9, scope: !161)
!297 = !DILocation(line: 227, column: 9, scope: !161)
!298 = !DILocation(line: 228, column: 1, scope: !161)
!299 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !44, file: !44, line: 243, type: !300, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !164}
!302 = !DILocalVariable(name: "object", arg: 1, scope: !299, file: !44, line: 243, type: !164)
!303 = !DILocation(line: 243, column: 56, scope: !299)
!304 = !DILocation(line: 245, column: 9, scope: !299)
!305 = !DILocation(line: 246, column: 1, scope: !299)
!306 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !44, file: !44, line: 359, type: !307, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!307 = !DISubroutineType(types: !308)
!308 = !{!134, !43}
!309 = !DILocalVariable(name: "otype", arg: 1, scope: !306, file: !44, line: 359, type: !43)
!310 = !DILocation(line: 359, column: 58, scope: !306)
!311 = !DILocation(line: 361, column: 9, scope: !306)
!312 = !DILocation(line: 363, column: 2, scope: !306)
!313 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !44, file: !44, line: 366, type: !314, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!314 = !DISubroutineType(types: !315)
!315 = !{!134, !43, !281}
!316 = !DILocalVariable(name: "otype", arg: 1, scope: !313, file: !44, line: 366, type: !43)
!317 = !DILocation(line: 366, column: 63, scope: !313)
!318 = !DILocalVariable(name: "size", arg: 2, scope: !313, file: !44, line: 367, type: !281)
!319 = !DILocation(line: 367, column: 13, scope: !313)
!320 = !DILocation(line: 369, column: 9, scope: !313)
!321 = !DILocation(line: 370, column: 9, scope: !313)
!322 = !DILocation(line: 372, column: 2, scope: !313)
!323 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !257, file: !257, line: 656, type: !324, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !327, line: 46, baseType: !236)
!327 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!330 = !DILocalVariable(name: "t", arg: 1, scope: !323, file: !257, line: 657, type: !328)
!331 = !DILocation(line: 657, column: 30, scope: !323)
!332 = !DILocation(line: 659, column: 28, scope: !323)
!333 = !DILocation(line: 659, column: 31, scope: !323)
!334 = !DILocation(line: 659, column: 36, scope: !323)
!335 = !DILocation(line: 659, column: 9, scope: !323)
!336 = !DILocation(line: 659, column: 2, scope: !323)
!337 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !257, file: !257, line: 671, type: !324, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!338 = !DILocalVariable(name: "t", arg: 1, scope: !337, file: !257, line: 672, type: !328)
!339 = !DILocation(line: 672, column: 30, scope: !337)
!340 = !DILocation(line: 674, column: 30, scope: !337)
!341 = !DILocation(line: 674, column: 33, scope: !337)
!342 = !DILocation(line: 674, column: 38, scope: !337)
!343 = !DILocation(line: 674, column: 9, scope: !337)
!344 = !DILocation(line: 674, column: 2, scope: !337)
!345 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !257, file: !257, line: 1634, type: !346, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!346 = !DISubroutineType(types: !347)
!347 = !{!326, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !257, line: 1439, size: 448, elements: !351)
!351 = !{!352, !353, !354, !359, !360, !365, !366}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !350, file: !257, line: 1445, baseType: !226, size: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !350, file: !257, line: 1448, baseType: !203, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !350, file: !257, line: 1451, baseType: !355, size: 32, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !350, file: !257, line: 1454, baseType: !355, size: 32, offset: 288)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !350, file: !257, line: 1457, baseType: !361, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !327, line: 67, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !327, line: 65, size: 64, elements: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !362, file: !327, line: 66, baseType: !326, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !350, file: !257, line: 1460, baseType: !37, size: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !350, file: !257, line: 1463, baseType: !134, size: 32, offset: 416)
!367 = !DILocalVariable(name: "timer", arg: 1, scope: !345, file: !257, line: 1635, type: !348)
!368 = !DILocation(line: 1635, column: 34, scope: !345)
!369 = !DILocation(line: 1637, column: 28, scope: !345)
!370 = !DILocation(line: 1637, column: 35, scope: !345)
!371 = !DILocation(line: 1637, column: 9, scope: !345)
!372 = !DILocation(line: 1637, column: 2, scope: !345)
!373 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !257, file: !257, line: 1649, type: !346, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!374 = !DILocalVariable(name: "timer", arg: 1, scope: !373, file: !257, line: 1650, type: !348)
!375 = !DILocation(line: 1650, column: 34, scope: !373)
!376 = !DILocation(line: 1652, column: 30, scope: !373)
!377 = !DILocation(line: 1652, column: 37, scope: !373)
!378 = !DILocation(line: 1652, column: 9, scope: !373)
!379 = !DILocation(line: 1652, column: 2, scope: !373)
!380 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !257, file: !257, line: 1689, type: !381, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !358, !134}
!383 = !DILocalVariable(name: "timer", arg: 1, scope: !380, file: !257, line: 1689, type: !358)
!384 = !DILocation(line: 1689, column: 65, scope: !380)
!385 = !DILocalVariable(name: "user_data", arg: 2, scope: !380, file: !257, line: 1690, type: !134)
!386 = !DILocation(line: 1690, column: 19, scope: !380)
!387 = !DILocation(line: 1692, column: 21, scope: !380)
!388 = !DILocation(line: 1692, column: 2, scope: !380)
!389 = !DILocation(line: 1692, column: 9, scope: !380)
!390 = !DILocation(line: 1692, column: 19, scope: !380)
!391 = !DILocation(line: 1693, column: 1, scope: !380)
!392 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !257, file: !257, line: 1704, type: !393, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!393 = !DISubroutineType(types: !394)
!394 = !{!134, !348}
!395 = !DILocalVariable(name: "timer", arg: 1, scope: !392, file: !257, line: 1704, type: !348)
!396 = !DILocation(line: 1704, column: 72, scope: !392)
!397 = !DILocation(line: 1706, column: 9, scope: !392)
!398 = !DILocation(line: 1706, column: 16, scope: !392)
!399 = !DILocation(line: 1706, column: 2, scope: !392)
!400 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !257, file: !257, line: 2071, type: !401, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!401 = !DISubroutineType(types: !402)
!402 = !{!135, !403}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 32)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !257, line: 1830, size: 128, elements: !405)
!405 = !{!406, !419, !420}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !404, file: !257, line: 1831, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !408, line: 60, baseType: !409)
!408 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !408, line: 53, size: 64, elements: !410)
!410 = !{!411, !418}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !409, file: !408, line: 54, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !408, line: 50, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !408, line: 44, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !414, file: !408, line: 45, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !408, line: 40, baseType: !37)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !409, file: !408, line: 55, baseType: !412, size: 32, offset: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !404, file: !257, line: 1832, baseType: !285, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !404, file: !257, line: 1833, baseType: !203, size: 64, offset: 64)
!421 = !DILocalVariable(name: "queue", arg: 1, scope: !400, file: !257, line: 2071, type: !403)
!422 = !DILocation(line: 2071, column: 59, scope: !400)
!423 = !DILocation(line: 2073, column: 35, scope: !400)
!424 = !DILocation(line: 2073, column: 42, scope: !400)
!425 = !DILocation(line: 2073, column: 14, scope: !400)
!426 = !DILocation(line: 2073, column: 9, scope: !400)
!427 = !DILocation(line: 2073, column: 2, scope: !400)
!428 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !257, file: !257, line: 3209, type: !429, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!429 = !DISubroutineType(types: !430)
!430 = !{!39, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !257, line: 3092, size: 128, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !432, file: !257, line: 3093, baseType: !203, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !432, file: !257, line: 3094, baseType: !39, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !432, file: !257, line: 3095, baseType: !39, size: 32, offset: 96)
!437 = !DILocalVariable(name: "sem", arg: 1, scope: !428, file: !257, line: 3209, type: !431)
!438 = !DILocation(line: 3209, column: 65, scope: !428)
!439 = !DILocation(line: 3211, column: 9, scope: !428)
!440 = !DILocation(line: 3211, column: 14, scope: !428)
!441 = !DILocation(line: 3211, column: 2, scope: !428)
!442 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !257, file: !257, line: 4649, type: !443, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!443 = !DISubroutineType(types: !444)
!444 = !{!37, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !257, line: 4390, size: 320, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !454, !455, !456, !457, !458}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !446, file: !257, line: 4392, baseType: !203, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !446, file: !257, line: 4394, baseType: !285, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !446, file: !257, line: 4396, baseType: !281, size: 32, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !446, file: !257, line: 4398, baseType: !37, size: 32, offset: 96)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !446, file: !257, line: 4400, baseType: !453, size: 32, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !446, file: !257, line: 4402, baseType: !453, size: 32, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !446, file: !257, line: 4404, baseType: !453, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !446, file: !257, line: 4406, baseType: !453, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !446, file: !257, line: 4408, baseType: !37, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !257, line: 4413, baseType: !210, size: 8, offset: 288)
!459 = !DILocalVariable(name: "msgq", arg: 1, scope: !442, file: !257, line: 4649, type: !445)
!460 = !DILocation(line: 4649, column: 66, scope: !442)
!461 = !DILocation(line: 4651, column: 9, scope: !442)
!462 = !DILocation(line: 4651, column: 15, scope: !442)
!463 = !DILocation(line: 4651, column: 26, scope: !442)
!464 = !DILocation(line: 4651, column: 32, scope: !442)
!465 = !DILocation(line: 4651, column: 24, scope: !442)
!466 = !DILocation(line: 4651, column: 2, scope: !442)
!467 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !257, file: !257, line: 4665, type: !443, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!468 = !DILocalVariable(name: "msgq", arg: 1, scope: !467, file: !257, line: 4665, type: !445)
!469 = !DILocation(line: 4665, column: 66, scope: !467)
!470 = !DILocation(line: 4667, column: 9, scope: !467)
!471 = !DILocation(line: 4667, column: 15, scope: !467)
!472 = !DILocation(line: 4667, column: 2, scope: !467)
!473 = distinct !DISubprogram(name: "sys_heap_validate", scope: !2, file: !2, line: 88, type: !474, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !149)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !477}
!476 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!478 = !DILocalVariable(name: "heap", arg: 1, scope: !473, file: !2, line: 88, type: !477)
!479 = !DILocation(line: 88, column: 42, scope: !473)
!480 = !DILocalVariable(name: "h", scope: !473, file: !2, line: 90, type: !264)
!481 = !DILocation(line: 90, column: 17, scope: !473)
!482 = !DILocation(line: 90, column: 21, scope: !473)
!483 = !DILocation(line: 90, column: 27, scope: !473)
!484 = !DILocalVariable(name: "c", scope: !473, file: !2, line: 91, type: !269)
!485 = !DILocation(line: 91, column: 12, scope: !473)
!486 = !DILocation(line: 96, column: 23, scope: !487)
!487 = distinct !DILexicalBlock(scope: !473, file: !2, line: 96, column: 2)
!488 = !DILocation(line: 96, column: 11, scope: !487)
!489 = !DILocation(line: 96, column: 9, scope: !487)
!490 = !DILocation(line: 96, column: 7, scope: !487)
!491 = !DILocation(line: 96, column: 30, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !2, line: 96, column: 2)
!493 = !DILocation(line: 96, column: 34, scope: !492)
!494 = !DILocation(line: 96, column: 37, scope: !492)
!495 = !DILocation(line: 96, column: 32, scope: !492)
!496 = !DILocation(line: 96, column: 2, scope: !487)
!497 = !DILocation(line: 97, column: 20, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 97, column: 7)
!499 = distinct !DILexicalBlock(scope: !492, file: !2, line: 96, column: 71)
!500 = !DILocation(line: 97, column: 23, scope: !498)
!501 = !DILocation(line: 97, column: 8, scope: !498)
!502 = !DILocation(line: 97, column: 7, scope: !499)
!503 = !DILocation(line: 98, column: 4, scope: !504)
!504 = distinct !DILexicalBlock(scope: !498, file: !2, line: 97, column: 27)
!505 = !DILocation(line: 100, column: 2, scope: !499)
!506 = !DILocation(line: 96, column: 64, scope: !492)
!507 = !DILocation(line: 96, column: 67, scope: !492)
!508 = !DILocation(line: 96, column: 52, scope: !492)
!509 = !DILocation(line: 96, column: 50, scope: !492)
!510 = !DILocation(line: 96, column: 2, scope: !492)
!511 = distinct !{!511, !496, !512}
!512 = !DILocation(line: 100, column: 2, scope: !487)
!513 = !DILocation(line: 101, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !473, file: !2, line: 101, column: 6)
!515 = !DILocation(line: 101, column: 11, scope: !514)
!516 = !DILocation(line: 101, column: 14, scope: !514)
!517 = !DILocation(line: 101, column: 8, scope: !514)
!518 = !DILocation(line: 101, column: 6, scope: !473)
!519 = !DILocation(line: 102, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 101, column: 25)
!521 = !DILocalVariable(name: "b", scope: !522, file: !2, line: 127, type: !135)
!522 = distinct !DILexicalBlock(scope: !473, file: !2, line: 127, column: 2)
!523 = !DILocation(line: 127, column: 11, scope: !522)
!524 = !DILocation(line: 127, column: 7, scope: !522)
!525 = !DILocation(line: 127, column: 18, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !2, line: 127, column: 2)
!527 = !DILocation(line: 127, column: 34, scope: !526)
!528 = !DILocation(line: 127, column: 37, scope: !526)
!529 = !DILocation(line: 127, column: 40, scope: !526)
!530 = !DILocation(line: 127, column: 23, scope: !526)
!531 = !DILocation(line: 127, column: 20, scope: !526)
!532 = !DILocation(line: 127, column: 2, scope: !522)
!533 = !DILocalVariable(name: "c0", scope: !534, file: !2, line: 128, type: !269)
!534 = distinct !DILexicalBlock(scope: !526, file: !2, line: 127, column: 57)
!535 = !DILocation(line: 128, column: 13, scope: !534)
!536 = !DILocation(line: 128, column: 18, scope: !534)
!537 = !DILocation(line: 128, column: 21, scope: !534)
!538 = !DILocation(line: 128, column: 29, scope: !534)
!539 = !DILocation(line: 128, column: 32, scope: !534)
!540 = !DILocalVariable(name: "n", scope: !534, file: !2, line: 129, type: !37)
!541 = !DILocation(line: 129, column: 12, scope: !534)
!542 = !DILocation(line: 131, column: 15, scope: !534)
!543 = !DILocation(line: 131, column: 18, scope: !534)
!544 = !DILocation(line: 131, column: 3, scope: !534)
!545 = !DILocation(line: 133, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !534, file: !2, line: 133, column: 3)
!547 = !DILocation(line: 133, column: 10, scope: !546)
!548 = !DILocation(line: 133, column: 8, scope: !546)
!549 = !DILocation(line: 133, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !546, file: !2, line: 133, column: 3)
!551 = !DILocation(line: 133, column: 18, scope: !550)
!552 = !DILocation(line: 133, column: 23, scope: !550)
!553 = !DILocation(line: 133, column: 27, scope: !550)
!554 = !DILocation(line: 133, column: 29, scope: !550)
!555 = !DILocation(line: 133, column: 34, scope: !550)
!556 = !DILocation(line: 133, column: 37, scope: !550)
!557 = !DILocation(line: 133, column: 42, scope: !550)
!558 = !DILocation(line: 133, column: 39, scope: !550)
!559 = !DILocation(line: 0, scope: !550)
!560 = !DILocation(line: 133, column: 3, scope: !546)
!561 = !DILocation(line: 135, column: 21, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 135, column: 8)
!563 = distinct !DILexicalBlock(scope: !550, file: !2, line: 134, column: 40)
!564 = !DILocation(line: 135, column: 24, scope: !562)
!565 = !DILocation(line: 135, column: 9, scope: !562)
!566 = !DILocation(line: 135, column: 8, scope: !563)
!567 = !DILocation(line: 136, column: 5, scope: !568)
!568 = distinct !DILexicalBlock(scope: !562, file: !2, line: 135, column: 28)
!569 = !DILocation(line: 138, column: 19, scope: !563)
!570 = !DILocation(line: 138, column: 22, scope: !563)
!571 = !DILocation(line: 138, column: 4, scope: !563)
!572 = !DILocation(line: 139, column: 3, scope: !563)
!573 = !DILocation(line: 134, column: 9, scope: !550)
!574 = !DILocation(line: 134, column: 33, scope: !550)
!575 = !DILocation(line: 134, column: 36, scope: !550)
!576 = !DILocation(line: 134, column: 17, scope: !550)
!577 = !DILocation(line: 134, column: 15, scope: !550)
!578 = !DILocation(line: 133, column: 3, scope: !550)
!579 = distinct !{!579, !560, !580}
!580 = !DILocation(line: 139, column: 3, scope: !546)
!581 = !DILocalVariable(name: "empty", scope: !534, file: !2, line: 141, type: !476)
!582 = !DILocation(line: 141, column: 9, scope: !534)
!583 = !DILocation(line: 141, column: 18, scope: !534)
!584 = !DILocation(line: 141, column: 21, scope: !534)
!585 = !DILocation(line: 141, column: 46, scope: !534)
!586 = !DILocation(line: 141, column: 42, scope: !534)
!587 = !DILocation(line: 141, column: 35, scope: !534)
!588 = !DILocation(line: 141, column: 51, scope: !534)
!589 = !DILocalVariable(name: "zero", scope: !534, file: !2, line: 142, type: !476)
!590 = !DILocation(line: 142, column: 9, scope: !534)
!591 = !DILocation(line: 142, column: 16, scope: !534)
!592 = !DILocation(line: 142, column: 18, scope: !534)
!593 = !DILocation(line: 144, column: 7, scope: !594)
!594 = distinct !DILexicalBlock(scope: !534, file: !2, line: 144, column: 7)
!595 = !DILocation(line: 144, column: 16, scope: !594)
!596 = !DILocation(line: 144, column: 13, scope: !594)
!597 = !DILocation(line: 144, column: 7, scope: !534)
!598 = !DILocation(line: 145, column: 4, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !2, line: 144, column: 22)
!600 = !DILocation(line: 148, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !534, file: !2, line: 148, column: 7)
!602 = !DILocation(line: 148, column: 13, scope: !601)
!603 = !DILocation(line: 148, column: 16, scope: !601)
!604 = !DILocation(line: 148, column: 19, scope: !601)
!605 = !DILocation(line: 148, column: 27, scope: !601)
!606 = !DILocation(line: 148, column: 30, scope: !601)
!607 = !DILocation(line: 148, column: 35, scope: !601)
!608 = !DILocation(line: 148, column: 7, scope: !534)
!609 = !DILocation(line: 149, column: 4, scope: !610)
!610 = distinct !DILexicalBlock(scope: !601, file: !2, line: 148, column: 41)
!611 = !DILocation(line: 151, column: 2, scope: !534)
!612 = !DILocation(line: 127, column: 53, scope: !526)
!613 = !DILocation(line: 127, column: 2, scope: !526)
!614 = distinct !{!614, !532, !615}
!615 = !DILocation(line: 151, column: 2, scope: !522)
!616 = !DILocalVariable(name: "prev_chunk", scope: !473, file: !2, line: 159, type: !269)
!617 = !DILocation(line: 159, column: 12, scope: !473)
!618 = !DILocation(line: 160, column: 23, scope: !619)
!619 = distinct !DILexicalBlock(scope: !473, file: !2, line: 160, column: 2)
!620 = !DILocation(line: 160, column: 11, scope: !619)
!621 = !DILocation(line: 160, column: 9, scope: !619)
!622 = !DILocation(line: 160, column: 7, scope: !619)
!623 = !DILocation(line: 160, column: 30, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !2, line: 160, column: 2)
!625 = !DILocation(line: 160, column: 34, scope: !624)
!626 = !DILocation(line: 160, column: 37, scope: !624)
!627 = !DILocation(line: 160, column: 32, scope: !624)
!628 = !DILocation(line: 160, column: 2, scope: !619)
!629 = !DILocation(line: 161, column: 19, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 161, column: 7)
!631 = distinct !DILexicalBlock(scope: !624, file: !2, line: 160, column: 71)
!632 = !DILocation(line: 161, column: 22, scope: !630)
!633 = !DILocation(line: 161, column: 8, scope: !630)
!634 = !DILocation(line: 161, column: 25, scope: !630)
!635 = !DILocation(line: 161, column: 46, scope: !630)
!636 = !DILocation(line: 161, column: 49, scope: !630)
!637 = !DILocation(line: 161, column: 29, scope: !630)
!638 = !DILocation(line: 161, column: 7, scope: !631)
!639 = !DILocation(line: 162, column: 4, scope: !640)
!640 = distinct !DILexicalBlock(scope: !630, file: !2, line: 161, column: 53)
!641 = !DILocation(line: 164, column: 18, scope: !642)
!642 = distinct !DILexicalBlock(scope: !631, file: !2, line: 164, column: 7)
!643 = !DILocation(line: 164, column: 21, scope: !642)
!644 = !DILocation(line: 164, column: 7, scope: !642)
!645 = !DILocation(line: 164, column: 27, scope: !642)
!646 = !DILocation(line: 164, column: 24, scope: !642)
!647 = !DILocation(line: 164, column: 7, scope: !631)
!648 = !DILocation(line: 165, column: 4, scope: !649)
!649 = distinct !DILexicalBlock(scope: !642, file: !2, line: 164, column: 39)
!650 = !DILocation(line: 167, column: 16, scope: !631)
!651 = !DILocation(line: 167, column: 14, scope: !631)
!652 = !DILocation(line: 169, column: 18, scope: !631)
!653 = !DILocation(line: 169, column: 21, scope: !631)
!654 = !DILocation(line: 169, column: 41, scope: !631)
!655 = !DILocation(line: 169, column: 44, scope: !631)
!656 = !DILocation(line: 169, column: 24, scope: !631)
!657 = !DILocation(line: 169, column: 3, scope: !631)
!658 = !DILocation(line: 170, column: 2, scope: !631)
!659 = !DILocation(line: 160, column: 64, scope: !624)
!660 = !DILocation(line: 160, column: 67, scope: !624)
!661 = !DILocation(line: 160, column: 52, scope: !624)
!662 = !DILocation(line: 160, column: 50, scope: !624)
!663 = !DILocation(line: 160, column: 2, scope: !624)
!664 = distinct !{!664, !628, !665}
!665 = !DILocation(line: 170, column: 2, scope: !619)
!666 = !DILocation(line: 171, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !473, file: !2, line: 171, column: 6)
!668 = !DILocation(line: 171, column: 11, scope: !667)
!669 = !DILocation(line: 171, column: 14, scope: !667)
!670 = !DILocation(line: 171, column: 8, scope: !667)
!671 = !DILocation(line: 171, column: 6, scope: !473)
!672 = !DILocation(line: 172, column: 3, scope: !673)
!673 = distinct !DILexicalBlock(scope: !667, file: !2, line: 171, column: 25)
!674 = !DILocalVariable(name: "b", scope: !675, file: !2, line: 179, type: !135)
!675 = distinct !DILexicalBlock(scope: !473, file: !2, line: 179, column: 2)
!676 = !DILocation(line: 179, column: 11, scope: !675)
!677 = !DILocation(line: 179, column: 7, scope: !675)
!678 = !DILocation(line: 179, column: 18, scope: !679)
!679 = distinct !DILexicalBlock(scope: !675, file: !2, line: 179, column: 2)
!680 = !DILocation(line: 179, column: 34, scope: !679)
!681 = !DILocation(line: 179, column: 37, scope: !679)
!682 = !DILocation(line: 179, column: 40, scope: !679)
!683 = !DILocation(line: 179, column: 23, scope: !679)
!684 = !DILocation(line: 179, column: 20, scope: !679)
!685 = !DILocation(line: 179, column: 2, scope: !675)
!686 = !DILocalVariable(name: "c0", scope: !687, file: !2, line: 180, type: !269)
!687 = distinct !DILexicalBlock(scope: !679, file: !2, line: 179, column: 57)
!688 = !DILocation(line: 180, column: 13, scope: !687)
!689 = !DILocation(line: 180, column: 18, scope: !687)
!690 = !DILocation(line: 180, column: 21, scope: !687)
!691 = !DILocation(line: 180, column: 29, scope: !687)
!692 = !DILocation(line: 180, column: 32, scope: !687)
!693 = !DILocalVariable(name: "n", scope: !687, file: !2, line: 181, type: !135)
!694 = !DILocation(line: 181, column: 7, scope: !687)
!695 = !DILocation(line: 183, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !687, file: !2, line: 183, column: 7)
!697 = !DILocation(line: 183, column: 10, scope: !696)
!698 = !DILocation(line: 183, column: 7, scope: !687)
!699 = !DILocation(line: 184, column: 4, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !2, line: 183, column: 16)
!701 = !DILocation(line: 187, column: 12, scope: !702)
!702 = distinct !DILexicalBlock(scope: !687, file: !2, line: 187, column: 3)
!703 = !DILocation(line: 187, column: 10, scope: !702)
!704 = !DILocation(line: 187, column: 8, scope: !702)
!705 = !DILocation(line: 187, column: 16, scope: !706)
!706 = distinct !DILexicalBlock(scope: !702, file: !2, line: 187, column: 3)
!707 = !DILocation(line: 187, column: 18, scope: !706)
!708 = !DILocation(line: 187, column: 23, scope: !706)
!709 = !DILocation(line: 187, column: 26, scope: !706)
!710 = !DILocation(line: 187, column: 31, scope: !706)
!711 = !DILocation(line: 187, column: 28, scope: !706)
!712 = !DILocation(line: 187, column: 3, scope: !702)
!713 = !DILocation(line: 188, column: 19, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 188, column: 8)
!715 = distinct !DILexicalBlock(scope: !706, file: !2, line: 187, column: 67)
!716 = !DILocation(line: 188, column: 22, scope: !714)
!717 = !DILocation(line: 188, column: 8, scope: !714)
!718 = !DILocation(line: 188, column: 8, scope: !715)
!719 = !DILocation(line: 189, column: 5, scope: !720)
!720 = distinct !DILexicalBlock(scope: !714, file: !2, line: 188, column: 26)
!721 = !DILocation(line: 191, column: 19, scope: !715)
!722 = !DILocation(line: 191, column: 22, scope: !715)
!723 = !DILocation(line: 191, column: 4, scope: !715)
!724 = !DILocation(line: 192, column: 3, scope: !715)
!725 = !DILocation(line: 187, column: 36, scope: !706)
!726 = !DILocation(line: 187, column: 60, scope: !706)
!727 = !DILocation(line: 187, column: 63, scope: !706)
!728 = !DILocation(line: 187, column: 44, scope: !706)
!729 = !DILocation(line: 187, column: 42, scope: !706)
!730 = !DILocation(line: 187, column: 3, scope: !706)
!731 = distinct !{!731, !712, !732}
!732 = !DILocation(line: 192, column: 3, scope: !702)
!733 = !DILocation(line: 193, column: 2, scope: !687)
!734 = !DILocation(line: 179, column: 53, scope: !679)
!735 = !DILocation(line: 179, column: 2, scope: !679)
!736 = distinct !{!736, !685, !737}
!737 = !DILocation(line: 193, column: 2, scope: !675)
!738 = !DILocation(line: 198, column: 23, scope: !739)
!739 = distinct !DILexicalBlock(scope: !473, file: !2, line: 198, column: 2)
!740 = !DILocation(line: 198, column: 11, scope: !739)
!741 = !DILocation(line: 198, column: 9, scope: !739)
!742 = !DILocation(line: 198, column: 7, scope: !739)
!743 = !DILocation(line: 198, column: 30, scope: !744)
!744 = distinct !DILexicalBlock(scope: !739, file: !2, line: 198, column: 2)
!745 = !DILocation(line: 198, column: 34, scope: !744)
!746 = !DILocation(line: 198, column: 37, scope: !744)
!747 = !DILocation(line: 198, column: 32, scope: !744)
!748 = !DILocation(line: 198, column: 2, scope: !739)
!749 = !DILocation(line: 199, column: 18, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !2, line: 198, column: 71)
!751 = !DILocation(line: 199, column: 21, scope: !750)
!752 = !DILocation(line: 199, column: 36, scope: !750)
!753 = !DILocation(line: 199, column: 39, scope: !750)
!754 = !DILocation(line: 199, column: 25, scope: !750)
!755 = !DILocation(line: 199, column: 24, scope: !750)
!756 = !DILocation(line: 199, column: 3, scope: !750)
!757 = !DILocation(line: 200, column: 2, scope: !750)
!758 = !DILocation(line: 198, column: 64, scope: !744)
!759 = !DILocation(line: 198, column: 67, scope: !744)
!760 = !DILocation(line: 198, column: 52, scope: !744)
!761 = !DILocation(line: 198, column: 50, scope: !744)
!762 = !DILocation(line: 198, column: 2, scope: !744)
!763 = distinct !{!763, !748, !764}
!764 = !DILocation(line: 200, column: 2, scope: !739)
!765 = !DILocation(line: 201, column: 2, scope: !473)
!766 = !DILocation(line: 202, column: 1, scope: !473)
!767 = distinct !DISubprogram(name: "right_chunk", scope: !127, file: !127, line: 204, type: !768, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!768 = !DISubroutineType(types: !769)
!769 = !{!269, !264, !269}
!770 = !DILocalVariable(name: "h", arg: 1, scope: !767, file: !127, line: 204, type: !264)
!771 = !DILocation(line: 204, column: 52, scope: !767)
!772 = !DILocalVariable(name: "c", arg: 2, scope: !767, file: !127, line: 204, type: !269)
!773 = !DILocation(line: 204, column: 65, scope: !767)
!774 = !DILocation(line: 206, column: 9, scope: !767)
!775 = !DILocation(line: 206, column: 24, scope: !767)
!776 = !DILocation(line: 206, column: 27, scope: !767)
!777 = !DILocation(line: 206, column: 13, scope: !767)
!778 = !DILocation(line: 206, column: 11, scope: !767)
!779 = !DILocation(line: 206, column: 2, scope: !767)
!780 = distinct !DISubprogram(name: "valid_chunk", scope: !2, file: !2, line: 31, type: !781, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!781 = !DISubroutineType(types: !782)
!782 = !{!476, !264, !269}
!783 = !DILocalVariable(name: "h", arg: 1, scope: !780, file: !2, line: 31, type: !264)
!784 = !DILocation(line: 31, column: 41, scope: !780)
!785 = !DILocalVariable(name: "c", arg: 2, scope: !780, file: !2, line: 31, type: !269)
!786 = !DILocation(line: 31, column: 54, scope: !780)
!787 = !DILocation(line: 33, column: 2, scope: !780)
!788 = !DILocation(line: 33, column: 24, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 33, column: 11)
!790 = distinct !DILexicalBlock(scope: !780, file: !2, line: 33, column: 5)
!791 = !DILocation(line: 33, column: 27, scope: !789)
!792 = !DILocation(line: 33, column: 13, scope: !789)
!793 = !DILocation(line: 33, column: 30, scope: !789)
!794 = !DILocation(line: 33, column: 11, scope: !790)
!795 = !DILocation(line: 33, column: 38, scope: !796)
!796 = distinct !DILexicalBlock(scope: !789, file: !2, line: 33, column: 36)
!797 = !DILocation(line: 33, column: 50, scope: !790)
!798 = !DILocation(line: 34, column: 2, scope: !780)
!799 = !DILocation(line: 34, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 34, column: 11)
!801 = distinct !DILexicalBlock(scope: !780, file: !2, line: 34, column: 5)
!802 = !DILocation(line: 34, column: 28, scope: !800)
!803 = !DILocation(line: 34, column: 31, scope: !800)
!804 = !DILocation(line: 34, column: 17, scope: !800)
!805 = !DILocation(line: 34, column: 15, scope: !800)
!806 = !DILocation(line: 34, column: 37, scope: !800)
!807 = !DILocation(line: 34, column: 40, scope: !800)
!808 = !DILocation(line: 34, column: 34, scope: !800)
!809 = !DILocation(line: 34, column: 11, scope: !801)
!810 = !DILocation(line: 34, column: 54, scope: !811)
!811 = distinct !DILexicalBlock(scope: !800, file: !2, line: 34, column: 52)
!812 = !DILocation(line: 34, column: 66, scope: !801)
!813 = !DILocation(line: 35, column: 2, scope: !780)
!814 = !DILocation(line: 35, column: 23, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !2, line: 35, column: 11)
!816 = distinct !DILexicalBlock(scope: !780, file: !2, line: 35, column: 5)
!817 = !DILocation(line: 35, column: 26, scope: !815)
!818 = !DILocation(line: 35, column: 13, scope: !815)
!819 = !DILocation(line: 35, column: 11, scope: !816)
!820 = !DILocation(line: 35, column: 33, scope: !821)
!821 = distinct !DILexicalBlock(scope: !815, file: !2, line: 35, column: 31)
!822 = !DILocation(line: 35, column: 45, scope: !816)
!823 = !DILocation(line: 36, column: 2, scope: !780)
!824 = !DILocation(line: 36, column: 25, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 36, column: 11)
!826 = distinct !DILexicalBlock(scope: !780, file: !2, line: 36, column: 5)
!827 = !DILocation(line: 36, column: 39, scope: !825)
!828 = !DILocation(line: 36, column: 42, scope: !825)
!829 = !DILocation(line: 36, column: 28, scope: !825)
!830 = !DILocation(line: 36, column: 13, scope: !825)
!831 = !DILocation(line: 36, column: 49, scope: !825)
!832 = !DILocation(line: 36, column: 46, scope: !825)
!833 = !DILocation(line: 36, column: 11, scope: !826)
!834 = !DILocation(line: 36, column: 55, scope: !835)
!835 = distinct !DILexicalBlock(scope: !825, file: !2, line: 36, column: 53)
!836 = !DILocation(line: 36, column: 67, scope: !826)
!837 = !DILocation(line: 37, column: 2, scope: !780)
!838 = !DILocation(line: 37, column: 24, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !2, line: 37, column: 11)
!840 = distinct !DILexicalBlock(scope: !780, file: !2, line: 37, column: 5)
!841 = !DILocation(line: 37, column: 39, scope: !839)
!842 = !DILocation(line: 37, column: 42, scope: !839)
!843 = !DILocation(line: 37, column: 27, scope: !839)
!844 = !DILocation(line: 37, column: 13, scope: !839)
!845 = !DILocation(line: 37, column: 49, scope: !839)
!846 = !DILocation(line: 37, column: 46, scope: !839)
!847 = !DILocation(line: 37, column: 11, scope: !840)
!848 = !DILocation(line: 37, column: 55, scope: !849)
!849 = distinct !DILexicalBlock(scope: !839, file: !2, line: 37, column: 53)
!850 = !DILocation(line: 37, column: 67, scope: !840)
!851 = !DILocation(line: 38, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !780, file: !2, line: 38, column: 6)
!853 = !DILocation(line: 38, column: 20, scope: !852)
!854 = !DILocation(line: 38, column: 6, scope: !852)
!855 = !DILocation(line: 38, column: 6, scope: !780)
!856 = !DILocation(line: 39, column: 3, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !2, line: 38, column: 24)
!858 = !DILocation(line: 39, column: 32, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !2, line: 39, column: 12)
!860 = distinct !DILexicalBlock(scope: !857, file: !2, line: 39, column: 6)
!861 = !DILocation(line: 39, column: 35, scope: !859)
!862 = !DILocation(line: 39, column: 15, scope: !859)
!863 = !DILocation(line: 39, column: 12, scope: !860)
!864 = !DILocation(line: 39, column: 42, scope: !865)
!865 = distinct !DILexicalBlock(scope: !859, file: !2, line: 39, column: 40)
!866 = !DILocation(line: 39, column: 54, scope: !860)
!867 = !DILocation(line: 40, column: 2, scope: !857)
!868 = !DILocation(line: 41, column: 3, scope: !869)
!869 = distinct !DILexicalBlock(scope: !852, file: !2, line: 40, column: 9)
!870 = !DILocation(line: 41, column: 25, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 41, column: 12)
!872 = distinct !DILexicalBlock(scope: !869, file: !2, line: 41, column: 6)
!873 = !DILocation(line: 41, column: 39, scope: !871)
!874 = !DILocation(line: 41, column: 42, scope: !871)
!875 = !DILocation(line: 41, column: 28, scope: !871)
!876 = !DILocation(line: 41, column: 14, scope: !871)
!877 = !DILocation(line: 41, column: 12, scope: !872)
!878 = !DILocation(line: 41, column: 50, scope: !879)
!879 = distinct !DILexicalBlock(scope: !871, file: !2, line: 41, column: 48)
!880 = !DILocation(line: 41, column: 62, scope: !872)
!881 = !DILocation(line: 42, column: 3, scope: !869)
!882 = !DILocation(line: 42, column: 25, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !2, line: 42, column: 12)
!884 = distinct !DILexicalBlock(scope: !869, file: !2, line: 42, column: 6)
!885 = !DILocation(line: 42, column: 40, scope: !883)
!886 = !DILocation(line: 42, column: 43, scope: !883)
!887 = !DILocation(line: 42, column: 28, scope: !883)
!888 = !DILocation(line: 42, column: 14, scope: !883)
!889 = !DILocation(line: 42, column: 12, scope: !884)
!890 = !DILocation(line: 42, column: 51, scope: !891)
!891 = distinct !DILexicalBlock(scope: !883, file: !2, line: 42, column: 49)
!892 = !DILocation(line: 42, column: 63, scope: !884)
!893 = !DILocation(line: 43, column: 25, scope: !894)
!894 = distinct !DILexicalBlock(scope: !869, file: !2, line: 43, column: 7)
!895 = !DILocation(line: 43, column: 28, scope: !894)
!896 = !DILocation(line: 43, column: 8, scope: !894)
!897 = !DILocation(line: 43, column: 7, scope: !869)
!898 = !DILocation(line: 44, column: 4, scope: !899)
!899 = distinct !DILexicalBlock(scope: !894, file: !2, line: 43, column: 32)
!900 = !DILocation(line: 44, column: 25, scope: !901)
!901 = distinct !DILexicalBlock(scope: !902, file: !2, line: 44, column: 13)
!902 = distinct !DILexicalBlock(scope: !899, file: !2, line: 44, column: 7)
!903 = !DILocation(line: 44, column: 44, scope: !901)
!904 = !DILocation(line: 44, column: 47, scope: !901)
!905 = !DILocation(line: 44, column: 28, scope: !901)
!906 = !DILocation(line: 44, column: 15, scope: !901)
!907 = !DILocation(line: 44, column: 13, scope: !902)
!908 = !DILocation(line: 44, column: 55, scope: !909)
!909 = distinct !DILexicalBlock(scope: !901, file: !2, line: 44, column: 53)
!910 = !DILocation(line: 44, column: 67, scope: !902)
!911 = !DILocation(line: 45, column: 4, scope: !899)
!912 = !DILocation(line: 45, column: 25, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 45, column: 13)
!914 = distinct !DILexicalBlock(scope: !899, file: !2, line: 45, column: 7)
!915 = !DILocation(line: 45, column: 44, scope: !913)
!916 = !DILocation(line: 45, column: 47, scope: !913)
!917 = !DILocation(line: 45, column: 28, scope: !913)
!918 = !DILocation(line: 45, column: 15, scope: !913)
!919 = !DILocation(line: 45, column: 13, scope: !914)
!920 = !DILocation(line: 45, column: 55, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !2, line: 45, column: 53)
!922 = !DILocation(line: 45, column: 67, scope: !914)
!923 = !DILocation(line: 46, column: 3, scope: !899)
!924 = !DILocation(line: 48, column: 2, scope: !780)
!925 = !DILocation(line: 49, column: 1, scope: !780)
!926 = distinct !DISubprogram(name: "bucket_idx", scope: !127, file: !127, line: 250, type: !927, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!927 = !DISubroutineType(types: !928)
!928 = !{!135, !264, !929}
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunksz_t", file: !127, line: 62, baseType: !37)
!930 = !DILocalVariable(name: "h", arg: 1, scope: !926, file: !127, line: 250, type: !264)
!931 = !DILocation(line: 250, column: 45, scope: !926)
!932 = !DILocalVariable(name: "sz", arg: 2, scope: !926, file: !127, line: 250, type: !929)
!933 = !DILocation(line: 250, column: 58, scope: !926)
!934 = !DILocalVariable(name: "usable_sz", scope: !926, file: !127, line: 252, type: !39)
!935 = !DILocation(line: 252, column: 15, scope: !926)
!936 = !DILocation(line: 252, column: 27, scope: !926)
!937 = !DILocation(line: 252, column: 47, scope: !926)
!938 = !DILocation(line: 252, column: 32, scope: !926)
!939 = !DILocation(line: 252, column: 30, scope: !926)
!940 = !DILocation(line: 252, column: 50, scope: !926)
!941 = !DILocation(line: 253, column: 28, scope: !926)
!942 = !DILocation(line: 253, column: 14, scope: !926)
!943 = !DILocation(line: 253, column: 12, scope: !926)
!944 = !DILocation(line: 253, column: 2, scope: !926)
!945 = distinct !DISubprogram(name: "check_nexts", scope: !2, file: !2, line: 55, type: !946, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!946 = !DISubroutineType(types: !947)
!947 = !{null, !264, !135}
!948 = !DILocalVariable(name: "h", arg: 1, scope: !945, file: !2, line: 55, type: !264)
!949 = !DILocation(line: 55, column: 47, scope: !945)
!950 = !DILocalVariable(name: "bidx", arg: 2, scope: !945, file: !2, line: 55, type: !135)
!951 = !DILocation(line: 55, column: 54, scope: !945)
!952 = !DILocalVariable(name: "b", scope: !945, file: !2, line: 57, type: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 32)
!954 = !DILocation(line: 57, column: 24, scope: !945)
!955 = !DILocation(line: 57, column: 29, scope: !945)
!956 = !DILocation(line: 57, column: 32, scope: !945)
!957 = !DILocation(line: 57, column: 40, scope: !945)
!958 = !DILocalVariable(name: "emptybit", scope: !945, file: !2, line: 59, type: !476)
!959 = !DILocation(line: 59, column: 8, scope: !945)
!960 = !DILocation(line: 59, column: 20, scope: !945)
!961 = !DILocation(line: 59, column: 23, scope: !945)
!962 = !DILocation(line: 59, column: 48, scope: !945)
!963 = !DILocation(line: 59, column: 44, scope: !945)
!964 = !DILocation(line: 59, column: 37, scope: !945)
!965 = !DILocation(line: 59, column: 56, scope: !945)
!966 = !DILocalVariable(name: "emptylist", scope: !945, file: !2, line: 60, type: !476)
!967 = !DILocation(line: 60, column: 8, scope: !945)
!968 = !DILocation(line: 60, column: 20, scope: !945)
!969 = !DILocation(line: 60, column: 23, scope: !945)
!970 = !DILocation(line: 60, column: 28, scope: !945)
!971 = !DILocalVariable(name: "empties_match", scope: !945, file: !2, line: 61, type: !476)
!972 = !DILocation(line: 61, column: 8, scope: !945)
!973 = !DILocation(line: 61, column: 24, scope: !945)
!974 = !DILocation(line: 61, column: 36, scope: !945)
!975 = !DILocation(line: 61, column: 33, scope: !945)
!976 = !DILocation(line: 63, column: 8, scope: !945)
!977 = !DILocation(line: 66, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !945, file: !2, line: 66, column: 6)
!979 = !DILocation(line: 66, column: 9, scope: !978)
!980 = !DILocation(line: 66, column: 14, scope: !978)
!981 = !DILocation(line: 66, column: 6, scope: !945)
!982 = !DILocation(line: 68, column: 2, scope: !983)
!983 = distinct !DILexicalBlock(scope: !978, file: !2, line: 66, column: 20)
!984 = !DILocation(line: 69, column: 1, scope: !945)
!985 = distinct !DISubprogram(name: "set_chunk_used", scope: !127, file: !127, line: 147, type: !986, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !264, !269, !476}
!988 = !DILocalVariable(name: "h", arg: 1, scope: !985, file: !127, line: 147, type: !264)
!989 = !DILocation(line: 147, column: 50, scope: !985)
!990 = !DILocalVariable(name: "c", arg: 2, scope: !985, file: !127, line: 147, type: !269)
!991 = !DILocation(line: 147, column: 63, scope: !985)
!992 = !DILocalVariable(name: "used", arg: 3, scope: !985, file: !127, line: 147, type: !476)
!993 = !DILocation(line: 147, column: 72, scope: !985)
!994 = !DILocalVariable(name: "buf", scope: !985, file: !127, line: 149, type: !140)
!995 = !DILocation(line: 149, column: 16, scope: !985)
!996 = !DILocation(line: 149, column: 32, scope: !985)
!997 = !DILocation(line: 149, column: 22, scope: !985)
!998 = !DILocalVariable(name: "cmem", scope: !985, file: !127, line: 150, type: !134)
!999 = !DILocation(line: 150, column: 8, scope: !985)
!1000 = !DILocation(line: 150, column: 16, scope: !985)
!1001 = !DILocation(line: 150, column: 20, scope: !985)
!1002 = !DILocation(line: 152, column: 15, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !985, file: !127, line: 152, column: 6)
!1004 = !DILocation(line: 152, column: 6, scope: !1003)
!1005 = !DILocation(line: 152, column: 6, scope: !985)
!1006 = !DILocation(line: 153, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !127, line: 153, column: 7)
!1008 = distinct !DILexicalBlock(scope: !1003, file: !127, line: 152, column: 19)
!1009 = !DILocation(line: 153, column: 7, scope: !1008)
!1010 = !DILocation(line: 154, column: 17, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !127, line: 153, column: 13)
!1012 = !DILocation(line: 154, column: 4, scope: !1011)
!1013 = !DILocation(line: 154, column: 38, scope: !1011)
!1014 = !DILocation(line: 155, column: 3, scope: !1011)
!1015 = !DILocation(line: 156, column: 17, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1007, file: !127, line: 155, column: 10)
!1017 = !DILocation(line: 156, column: 4, scope: !1016)
!1018 = !DILocation(line: 156, column: 38, scope: !1016)
!1019 = !DILocation(line: 158, column: 2, scope: !1008)
!1020 = !DILocation(line: 159, column: 7, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !127, line: 159, column: 7)
!1022 = distinct !DILexicalBlock(scope: !1003, file: !127, line: 158, column: 9)
!1023 = !DILocation(line: 159, column: 7, scope: !1022)
!1024 = !DILocation(line: 160, column: 17, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !127, line: 159, column: 13)
!1026 = !DILocation(line: 160, column: 4, scope: !1025)
!1027 = !DILocation(line: 160, column: 38, scope: !1025)
!1028 = !DILocation(line: 161, column: 3, scope: !1025)
!1029 = !DILocation(line: 162, column: 17, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !127, line: 161, column: 10)
!1031 = !DILocation(line: 162, column: 4, scope: !1030)
!1032 = !DILocation(line: 162, column: 38, scope: !1030)
!1033 = !DILocation(line: 165, column: 1, scope: !985)
!1034 = distinct !DISubprogram(name: "next_free_chunk", scope: !127, file: !127, line: 182, type: !768, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1035 = !DILocalVariable(name: "h", arg: 1, scope: !1034, file: !127, line: 182, type: !264)
!1036 = !DILocation(line: 182, column: 56, scope: !1034)
!1037 = !DILocalVariable(name: "c", arg: 2, scope: !1034, file: !127, line: 182, type: !269)
!1038 = !DILocation(line: 182, column: 69, scope: !1034)
!1039 = !DILocation(line: 184, column: 21, scope: !1034)
!1040 = !DILocation(line: 184, column: 24, scope: !1034)
!1041 = !DILocation(line: 184, column: 9, scope: !1034)
!1042 = !DILocation(line: 184, column: 2, scope: !1034)
!1043 = distinct !DISubprogram(name: "chunk_used", scope: !127, file: !127, line: 137, type: !781, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1044 = !DILocalVariable(name: "h", arg: 1, scope: !1043, file: !127, line: 137, type: !264)
!1045 = !DILocation(line: 137, column: 47, scope: !1043)
!1046 = !DILocalVariable(name: "c", arg: 2, scope: !1043, file: !127, line: 137, type: !269)
!1047 = !DILocation(line: 137, column: 60, scope: !1043)
!1048 = !DILocation(line: 139, column: 21, scope: !1043)
!1049 = !DILocation(line: 139, column: 24, scope: !1043)
!1050 = !DILocation(line: 139, column: 9, scope: !1043)
!1051 = !DILocation(line: 139, column: 42, scope: !1043)
!1052 = !DILocation(line: 139, column: 2, scope: !1043)
!1053 = distinct !DISubprogram(name: "solo_free_header", scope: !127, file: !127, line: 215, type: !781, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1054 = !DILocalVariable(name: "h", arg: 1, scope: !1053, file: !127, line: 215, type: !264)
!1055 = !DILocation(line: 215, column: 53, scope: !1053)
!1056 = !DILocalVariable(name: "c", arg: 2, scope: !1053, file: !127, line: 215, type: !269)
!1057 = !DILocation(line: 215, column: 66, scope: !1053)
!1058 = !DILocation(line: 217, column: 18, scope: !1053)
!1059 = !DILocation(line: 217, column: 9, scope: !1053)
!1060 = !DILocation(line: 217, column: 21, scope: !1053)
!1061 = !DILocation(line: 217, column: 35, scope: !1053)
!1062 = !DILocation(line: 217, column: 38, scope: !1053)
!1063 = !DILocation(line: 217, column: 24, scope: !1053)
!1064 = !DILocation(line: 217, column: 41, scope: !1053)
!1065 = !DILocation(line: 0, scope: !1053)
!1066 = !DILocation(line: 217, column: 2, scope: !1053)
!1067 = distinct !DISubprogram(name: "left_chunk", scope: !127, file: !127, line: 199, type: !768, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1068 = !DILocalVariable(name: "h", arg: 1, scope: !1067, file: !127, line: 199, type: !264)
!1069 = !DILocation(line: 199, column: 51, scope: !1067)
!1070 = !DILocalVariable(name: "c", arg: 2, scope: !1067, file: !127, line: 199, type: !269)
!1071 = !DILocation(line: 199, column: 64, scope: !1067)
!1072 = !DILocation(line: 201, column: 9, scope: !1067)
!1073 = !DILocation(line: 201, column: 25, scope: !1067)
!1074 = !DILocation(line: 201, column: 28, scope: !1067)
!1075 = !DILocation(line: 201, column: 13, scope: !1067)
!1076 = !DILocation(line: 201, column: 11, scope: !1067)
!1077 = !DILocation(line: 201, column: 2, scope: !1067)
!1078 = distinct !DISubprogram(name: "sys_heap_stress", scope: !2, file: !2, line: 300, type: !1079, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !1081, !1084, !134, !281, !37, !134, !281, !135, !1087}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 32)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!134, !134, !281}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 32)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !134, !134}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 32)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_result", file: !261, line: 62, size: 192, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "total_allocs", scope: !1088, file: !261, line: 63, baseType: !37, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "successful_allocs", scope: !1088, file: !261, line: 64, baseType: !37, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "total_frees", scope: !1088, file: !261, line: 65, baseType: !37, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "accumulated_in_use_bytes", scope: !1088, file: !261, line: 66, baseType: !150, size: 64, offset: 128)
!1094 = !DILocalVariable(name: "alloc_fn", arg: 1, scope: !1078, file: !2, line: 300, type: !1081)
!1095 = !DILocation(line: 300, column: 30, scope: !1078)
!1096 = !DILocalVariable(name: "free_fn", arg: 2, scope: !1078, file: !2, line: 301, type: !1084)
!1097 = !DILocation(line: 301, column: 15, scope: !1078)
!1098 = !DILocalVariable(name: "arg", arg: 3, scope: !1078, file: !2, line: 302, type: !134)
!1099 = !DILocation(line: 302, column: 14, scope: !1078)
!1100 = !DILocalVariable(name: "total_bytes", arg: 4, scope: !1078, file: !2, line: 302, type: !281)
!1101 = !DILocation(line: 302, column: 26, scope: !1078)
!1102 = !DILocalVariable(name: "op_count", arg: 5, scope: !1078, file: !2, line: 303, type: !37)
!1103 = !DILocation(line: 303, column: 17, scope: !1078)
!1104 = !DILocalVariable(name: "scratch_mem", arg: 6, scope: !1078, file: !2, line: 304, type: !134)
!1105 = !DILocation(line: 304, column: 14, scope: !1078)
!1106 = !DILocalVariable(name: "scratch_bytes", arg: 7, scope: !1078, file: !2, line: 304, type: !281)
!1107 = !DILocation(line: 304, column: 34, scope: !1078)
!1108 = !DILocalVariable(name: "target_percent", arg: 8, scope: !1078, file: !2, line: 305, type: !135)
!1109 = !DILocation(line: 305, column: 12, scope: !1078)
!1110 = !DILocalVariable(name: "result", arg: 9, scope: !1078, file: !2, line: 306, type: !1087)
!1111 = !DILocation(line: 306, column: 37, scope: !1078)
!1112 = !DILocalVariable(name: "sr", scope: !1078, file: !2, line: 308, type: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_rec", file: !2, line: 204, size: 288, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1125, !1126, !1127, !1128}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_fn", scope: !1113, file: !2, line: 205, baseType: !1081, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "free_fn", scope: !1113, file: !2, line: 206, baseType: !1084, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1113, file: !2, line: 207, baseType: !134, size: 32, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "total_bytes", scope: !1113, file: !2, line: 208, baseType: !281, size: 32, offset: 96)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1113, file: !2, line: 209, baseType: !1120, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 32)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_block", file: !2, line: 216, size: 64, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1121, file: !2, line: 217, baseType: !134, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1121, file: !2, line: 218, baseType: !281, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nblocks", scope: !1113, file: !2, line: 210, baseType: !281, size: 32, offset: 160)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_alloced", scope: !1113, file: !2, line: 211, baseType: !281, size: 32, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_alloced", scope: !1113, file: !2, line: 212, baseType: !281, size: 32, offset: 224)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "target_percent", scope: !1113, file: !2, line: 213, baseType: !37, size: 32, offset: 256)
!1129 = !DILocation(line: 308, column: 27, scope: !1078)
!1130 = !DILocation(line: 308, column: 32, scope: !1078)
!1131 = !DILocation(line: 309, column: 21, scope: !1078)
!1132 = !DILocation(line: 310, column: 20, scope: !1078)
!1133 = !DILocation(line: 311, column: 16, scope: !1078)
!1134 = !DILocation(line: 312, column: 24, scope: !1078)
!1135 = !DILocation(line: 313, column: 19, scope: !1078)
!1136 = !DILocation(line: 314, column: 20, scope: !1078)
!1137 = !DILocation(line: 314, column: 34, scope: !1078)
!1138 = !DILocation(line: 315, column: 27, scope: !1078)
!1139 = !DILocation(line: 318, column: 3, scope: !1078)
!1140 = !DILocation(line: 318, column: 12, scope: !1078)
!1141 = !DILocalVariable(name: "i", scope: !1142, file: !2, line: 320, type: !37)
!1142 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 320, column: 2)
!1143 = !DILocation(line: 320, column: 16, scope: !1142)
!1144 = !DILocation(line: 320, column: 7, scope: !1142)
!1145 = !DILocation(line: 320, column: 23, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 320, column: 2)
!1147 = !DILocation(line: 320, column: 27, scope: !1146)
!1148 = !DILocation(line: 320, column: 25, scope: !1146)
!1149 = !DILocation(line: 320, column: 2, scope: !1142)
!1150 = !DILocation(line: 321, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 321, column: 7)
!1152 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 320, column: 42)
!1153 = !DILocation(line: 321, column: 7, scope: !1152)
!1154 = !DILocalVariable(name: "sz", scope: !1155, file: !2, line: 322, type: !281)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 321, column: 31)
!1156 = !DILocation(line: 322, column: 11, scope: !1155)
!1157 = !DILocation(line: 322, column: 16, scope: !1155)
!1158 = !DILocalVariable(name: "p", scope: !1155, file: !2, line: 323, type: !134)
!1159 = !DILocation(line: 323, column: 10, scope: !1155)
!1160 = !DILocation(line: 323, column: 17, scope: !1155)
!1161 = !DILocation(line: 323, column: 29, scope: !1155)
!1162 = !DILocation(line: 323, column: 34, scope: !1155)
!1163 = !DILocation(line: 323, column: 14, scope: !1155)
!1164 = !DILocation(line: 325, column: 4, scope: !1155)
!1165 = !DILocation(line: 325, column: 12, scope: !1155)
!1166 = !DILocation(line: 325, column: 24, scope: !1155)
!1167 = !DILocation(line: 326, column: 8, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 326, column: 8)
!1169 = !DILocation(line: 326, column: 10, scope: !1168)
!1170 = !DILocation(line: 326, column: 8, scope: !1155)
!1171 = !DILocation(line: 327, column: 5, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 326, column: 25)
!1173 = !DILocation(line: 327, column: 13, scope: !1172)
!1174 = !DILocation(line: 327, column: 30, scope: !1172)
!1175 = !DILocation(line: 328, column: 40, scope: !1172)
!1176 = !DILocation(line: 328, column: 8, scope: !1172)
!1177 = !DILocation(line: 328, column: 18, scope: !1172)
!1178 = !DILocation(line: 328, column: 5, scope: !1172)
!1179 = !DILocation(line: 328, column: 34, scope: !1172)
!1180 = !DILocation(line: 328, column: 38, scope: !1172)
!1181 = !DILocation(line: 329, column: 39, scope: !1172)
!1182 = !DILocation(line: 329, column: 8, scope: !1172)
!1183 = !DILocation(line: 329, column: 18, scope: !1172)
!1184 = !DILocation(line: 329, column: 5, scope: !1172)
!1185 = !DILocation(line: 329, column: 34, scope: !1172)
!1186 = !DILocation(line: 329, column: 37, scope: !1172)
!1187 = !DILocation(line: 330, column: 8, scope: !1172)
!1188 = !DILocation(line: 330, column: 22, scope: !1172)
!1189 = !DILocation(line: 331, column: 25, scope: !1172)
!1190 = !DILocation(line: 331, column: 8, scope: !1172)
!1191 = !DILocation(line: 331, column: 22, scope: !1172)
!1192 = !DILocation(line: 332, column: 4, scope: !1172)
!1193 = !DILocation(line: 333, column: 3, scope: !1155)
!1194 = !DILocalVariable(name: "b", scope: !1195, file: !2, line: 334, type: !135)
!1195 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 333, column: 10)
!1196 = !DILocation(line: 334, column: 8, scope: !1195)
!1197 = !DILocation(line: 334, column: 12, scope: !1195)
!1198 = !DILocalVariable(name: "p", scope: !1195, file: !2, line: 335, type: !134)
!1199 = !DILocation(line: 335, column: 10, scope: !1195)
!1200 = !DILocation(line: 335, column: 17, scope: !1195)
!1201 = !DILocation(line: 335, column: 24, scope: !1195)
!1202 = !DILocation(line: 335, column: 14, scope: !1195)
!1203 = !DILocation(line: 335, column: 27, scope: !1195)
!1204 = !DILocalVariable(name: "sz", scope: !1195, file: !2, line: 336, type: !281)
!1205 = !DILocation(line: 336, column: 11, scope: !1195)
!1206 = !DILocation(line: 336, column: 19, scope: !1195)
!1207 = !DILocation(line: 336, column: 26, scope: !1195)
!1208 = !DILocation(line: 336, column: 16, scope: !1195)
!1209 = !DILocation(line: 336, column: 29, scope: !1195)
!1210 = !DILocation(line: 338, column: 4, scope: !1195)
!1211 = !DILocation(line: 338, column: 12, scope: !1195)
!1212 = !DILocation(line: 338, column: 23, scope: !1195)
!1213 = !DILocation(line: 339, column: 7, scope: !1195)
!1214 = !DILocation(line: 339, column: 14, scope: !1195)
!1215 = !DILocation(line: 339, column: 4, scope: !1195)
!1216 = !DILocation(line: 339, column: 22, scope: !1195)
!1217 = !DILocation(line: 339, column: 32, scope: !1195)
!1218 = !DILocation(line: 339, column: 47, scope: !1195)
!1219 = !DILocation(line: 339, column: 19, scope: !1195)
!1220 = !DILocation(line: 340, column: 7, scope: !1195)
!1221 = !DILocation(line: 340, column: 21, scope: !1195)
!1222 = !DILocation(line: 341, column: 24, scope: !1195)
!1223 = !DILocation(line: 341, column: 7, scope: !1195)
!1224 = !DILocation(line: 341, column: 21, scope: !1195)
!1225 = !DILocation(line: 342, column: 7, scope: !1195)
!1226 = !DILocation(line: 342, column: 18, scope: !1195)
!1227 = !DILocation(line: 342, column: 23, scope: !1195)
!1228 = !DILocation(line: 342, column: 4, scope: !1195)
!1229 = !DILocation(line: 344, column: 42, scope: !1152)
!1230 = !DILocation(line: 344, column: 39, scope: !1152)
!1231 = !DILocation(line: 344, column: 3, scope: !1152)
!1232 = !DILocation(line: 344, column: 11, scope: !1152)
!1233 = !DILocation(line: 344, column: 36, scope: !1152)
!1234 = !DILocation(line: 345, column: 2, scope: !1152)
!1235 = !DILocation(line: 320, column: 38, scope: !1146)
!1236 = !DILocation(line: 320, column: 2, scope: !1146)
!1237 = distinct !{!1237, !1149, !1238}
!1238 = !DILocation(line: 345, column: 2, scope: !1142)
!1239 = !DILocation(line: 346, column: 1, scope: !1078)
!1240 = distinct !DISubprogram(name: "rand_alloc_choice", scope: !2, file: !2, line: 234, type: !1241, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!476, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 32)
!1244 = !DILocalVariable(name: "sr", arg: 1, scope: !1240, file: !2, line: 234, type: !1243)
!1245 = !DILocation(line: 234, column: 58, scope: !1240)
!1246 = !DILocation(line: 237, column: 6, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 237, column: 6)
!1248 = !DILocation(line: 237, column: 10, scope: !1247)
!1249 = !DILocation(line: 237, column: 25, scope: !1247)
!1250 = !DILocation(line: 237, column: 6, scope: !1240)
!1251 = !DILocation(line: 238, column: 3, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 237, column: 31)
!1253 = !DILocation(line: 239, column: 13, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 239, column: 13)
!1255 = !DILocation(line: 239, column: 17, scope: !1254)
!1256 = !DILocation(line: 239, column: 35, scope: !1254)
!1257 = !DILocation(line: 239, column: 39, scope: !1254)
!1258 = !DILocation(line: 239, column: 32, scope: !1254)
!1259 = !DILocation(line: 239, column: 13, scope: !1247)
!1260 = !DILocation(line: 240, column: 3, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 239, column: 48)
!1262 = !DILocalVariable(name: "full_pct", scope: !1263, file: !2, line: 259, type: !37)
!1263 = distinct !DILexicalBlock(scope: !1254, file: !2, line: 241, column: 9)
!1264 = !DILocation(line: 259, column: 12, scope: !1263)
!1265 = !DILocation(line: 259, column: 30, scope: !1263)
!1266 = !DILocation(line: 259, column: 34, scope: !1263)
!1267 = !DILocation(line: 259, column: 28, scope: !1263)
!1268 = !DILocation(line: 259, column: 51, scope: !1263)
!1269 = !DILocation(line: 259, column: 55, scope: !1263)
!1270 = !DILocation(line: 259, column: 49, scope: !1263)
!1271 = !DILocalVariable(name: "target", scope: !1263, file: !2, line: 260, type: !37)
!1272 = !DILocation(line: 260, column: 12, scope: !1263)
!1273 = !DILocation(line: 260, column: 21, scope: !1263)
!1274 = !DILocation(line: 260, column: 25, scope: !1263)
!1275 = !DILocation(line: 260, column: 42, scope: !1263)
!1276 = !DILocation(line: 260, column: 46, scope: !1263)
!1277 = !DILocalVariable(name: "free_chance", scope: !1263, file: !2, line: 261, type: !37)
!1278 = !DILocation(line: 261, column: 12, scope: !1263)
!1279 = !DILocation(line: 263, column: 7, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 263, column: 7)
!1281 = !DILocation(line: 263, column: 18, scope: !1280)
!1282 = !DILocation(line: 263, column: 22, scope: !1280)
!1283 = !DILocation(line: 263, column: 16, scope: !1280)
!1284 = !DILocation(line: 263, column: 7, scope: !1263)
!1285 = !DILocation(line: 264, column: 18, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 263, column: 38)
!1287 = !DILocation(line: 264, column: 44, scope: !1286)
!1288 = !DILocation(line: 264, column: 42, scope: !1286)
!1289 = !DILocation(line: 264, column: 27, scope: !1286)
!1290 = !DILocation(line: 264, column: 16, scope: !1286)
!1291 = !DILocation(line: 265, column: 3, scope: !1286)
!1292 = !DILocation(line: 267, column: 10, scope: !1263)
!1293 = !DILocation(line: 267, column: 21, scope: !1263)
!1294 = !DILocation(line: 267, column: 19, scope: !1263)
!1295 = !DILocation(line: 267, column: 3, scope: !1263)
!1296 = !DILocation(line: 269, column: 1, scope: !1240)
!1297 = distinct !DISubprogram(name: "rand_alloc_size", scope: !2, file: !2, line: 274, type: !1298, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!281, !1243}
!1300 = !DILocalVariable(name: "sr", arg: 1, scope: !1297, file: !2, line: 274, type: !1243)
!1301 = !DILocation(line: 274, column: 57, scope: !1297)
!1302 = !DILocation(line: 276, column: 9, scope: !1297)
!1303 = !DILocalVariable(name: "scale", scope: !1297, file: !2, line: 281, type: !135)
!1304 = !DILocation(line: 281, column: 6, scope: !1297)
!1305 = !DILocation(line: 281, column: 32, scope: !1297)
!1306 = !DILocation(line: 281, column: 18, scope: !1297)
!1307 = !DILocation(line: 281, column: 16, scope: !1297)
!1308 = !DILocation(line: 283, column: 9, scope: !1297)
!1309 = !DILocation(line: 283, column: 30, scope: !1297)
!1310 = !DILocation(line: 283, column: 26, scope: !1297)
!1311 = !DILocation(line: 283, column: 38, scope: !1297)
!1312 = !DILocation(line: 283, column: 18, scope: !1297)
!1313 = !DILocation(line: 283, column: 2, scope: !1297)
!1314 = distinct !DISubprogram(name: "rand_free_choice", scope: !2, file: !2, line: 287, type: !1298, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1315 = !DILocalVariable(name: "sr", arg: 1, scope: !1314, file: !2, line: 287, type: !1243)
!1316 = !DILocation(line: 287, column: 58, scope: !1314)
!1317 = !DILocation(line: 289, column: 9, scope: !1314)
!1318 = !DILocation(line: 289, column: 20, scope: !1314)
!1319 = !DILocation(line: 289, column: 24, scope: !1314)
!1320 = !DILocation(line: 289, column: 18, scope: !1314)
!1321 = !DILocation(line: 289, column: 2, scope: !1314)
!1322 = distinct !DISubprogram(name: "heap_print_info", scope: !2, file: !2, line: 351, type: !1323, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !264, !476}
!1325 = !DILocalVariable(name: "h", arg: 1, scope: !1322, file: !2, line: 351, type: !264)
!1326 = !DILocation(line: 351, column: 37, scope: !1322)
!1327 = !DILocalVariable(name: "dump_chunks", arg: 2, scope: !1322, file: !2, line: 351, type: !476)
!1328 = !DILocation(line: 351, column: 46, scope: !1322)
!1329 = !DILocalVariable(name: "i", scope: !1322, file: !2, line: 353, type: !135)
!1330 = !DILocation(line: 353, column: 6, scope: !1322)
!1331 = !DILocalVariable(name: "nb_buckets", scope: !1322, file: !2, line: 353, type: !135)
!1332 = !DILocation(line: 353, column: 9, scope: !1322)
!1333 = !DILocation(line: 353, column: 33, scope: !1322)
!1334 = !DILocation(line: 353, column: 36, scope: !1322)
!1335 = !DILocation(line: 353, column: 39, scope: !1322)
!1336 = !DILocation(line: 353, column: 22, scope: !1322)
!1337 = !DILocation(line: 353, column: 50, scope: !1322)
!1338 = !DILocalVariable(name: "free_bytes", scope: !1322, file: !2, line: 354, type: !281)
!1339 = !DILocation(line: 354, column: 9, scope: !1322)
!1340 = !DILocalVariable(name: "allocated_bytes", scope: !1322, file: !2, line: 354, type: !281)
!1341 = !DILocation(line: 354, column: 21, scope: !1322)
!1342 = !DILocalVariable(name: "total", scope: !1322, file: !2, line: 354, type: !281)
!1343 = !DILocation(line: 354, column: 38, scope: !1322)
!1344 = !DILocalVariable(name: "overhead", scope: !1322, file: !2, line: 354, type: !281)
!1345 = !DILocation(line: 354, column: 45, scope: !1322)
!1346 = !DILocation(line: 357, column: 19, scope: !1322)
!1347 = !DILocation(line: 357, column: 9, scope: !1322)
!1348 = !DILocation(line: 357, column: 23, scope: !1322)
!1349 = !DILocation(line: 357, column: 26, scope: !1322)
!1350 = !DILocation(line: 357, column: 37, scope: !1322)
!1351 = !DILocation(line: 356, column: 2, scope: !1322)
!1352 = !DILocation(line: 359, column: 2, scope: !1322)
!1353 = !DILocation(line: 362, column: 9, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 362, column: 2)
!1355 = !DILocation(line: 362, column: 7, scope: !1354)
!1356 = !DILocation(line: 362, column: 14, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 362, column: 2)
!1358 = !DILocation(line: 362, column: 18, scope: !1357)
!1359 = !DILocation(line: 362, column: 16, scope: !1357)
!1360 = !DILocation(line: 362, column: 2, scope: !1354)
!1361 = !DILocalVariable(name: "first", scope: !1362, file: !2, line: 363, type: !269)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 362, column: 35)
!1363 = !DILocation(line: 363, column: 13, scope: !1362)
!1364 = !DILocation(line: 363, column: 21, scope: !1362)
!1365 = !DILocation(line: 363, column: 24, scope: !1362)
!1366 = !DILocation(line: 363, column: 32, scope: !1362)
!1367 = !DILocation(line: 363, column: 35, scope: !1362)
!1368 = !DILocalVariable(name: "largest", scope: !1362, file: !2, line: 364, type: !929)
!1369 = !DILocation(line: 364, column: 13, scope: !1362)
!1370 = !DILocalVariable(name: "count", scope: !1362, file: !2, line: 365, type: !135)
!1371 = !DILocation(line: 365, column: 7, scope: !1362)
!1372 = !DILocation(line: 367, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 367, column: 7)
!1374 = !DILocation(line: 367, column: 7, scope: !1362)
!1375 = !DILocalVariable(name: "curr", scope: !1376, file: !2, line: 368, type: !269)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 367, column: 14)
!1377 = !DILocation(line: 368, column: 14, scope: !1376)
!1378 = !DILocation(line: 368, column: 21, scope: !1376)
!1379 = !DILocation(line: 369, column: 4, scope: !1376)
!1380 = !DILocation(line: 370, column: 10, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 369, column: 7)
!1382 = !DILocation(line: 371, column: 18, scope: !1381)
!1383 = !DILocation(line: 371, column: 41, scope: !1381)
!1384 = !DILocation(line: 371, column: 44, scope: !1381)
!1385 = !DILocation(line: 371, column: 30, scope: !1381)
!1386 = !DILocation(line: 371, column: 27, scope: !1381)
!1387 = !DILocation(line: 371, column: 16, scope: !1381)
!1388 = !DILocation(line: 371, column: 55, scope: !1381)
!1389 = !DILocation(line: 371, column: 78, scope: !1381)
!1390 = !DILocation(line: 371, column: 81, scope: !1381)
!1391 = !DILocation(line: 371, column: 67, scope: !1381)
!1392 = !DILocation(line: 371, column: 13, scope: !1381)
!1393 = !DILocation(line: 372, column: 28, scope: !1381)
!1394 = !DILocation(line: 372, column: 31, scope: !1381)
!1395 = !DILocation(line: 372, column: 12, scope: !1381)
!1396 = !DILocation(line: 372, column: 10, scope: !1381)
!1397 = !DILocation(line: 373, column: 4, scope: !1381)
!1398 = !DILocation(line: 373, column: 13, scope: !1376)
!1399 = !DILocation(line: 373, column: 21, scope: !1376)
!1400 = !DILocation(line: 373, column: 18, scope: !1376)
!1401 = distinct !{!1401, !1379, !1402}
!1402 = !DILocation(line: 373, column: 26, scope: !1376)
!1403 = !DILocation(line: 374, column: 3, scope: !1376)
!1404 = !DILocation(line: 375, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1362, file: !2, line: 375, column: 7)
!1406 = !DILocation(line: 375, column: 7, scope: !1362)
!1407 = !DILocation(line: 377, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 375, column: 14)
!1409 = !DILocation(line: 377, column: 20, scope: !1408)
!1410 = !DILocation(line: 377, column: 17, scope: !1408)
!1411 = !DILocation(line: 377, column: 23, scope: !1408)
!1412 = !DILocation(line: 377, column: 44, scope: !1408)
!1413 = !DILocation(line: 377, column: 29, scope: !1408)
!1414 = !DILocation(line: 377, column: 27, scope: !1408)
!1415 = !DILocation(line: 377, column: 48, scope: !1408)
!1416 = !DILocation(line: 378, column: 11, scope: !1408)
!1417 = !DILocation(line: 378, column: 37, scope: !1408)
!1418 = !DILocation(line: 378, column: 40, scope: !1408)
!1419 = !DILocation(line: 378, column: 20, scope: !1408)
!1420 = !DILocation(line: 376, column: 4, scope: !1408)
!1421 = !DILocation(line: 379, column: 3, scope: !1408)
!1422 = !DILocation(line: 380, column: 2, scope: !1362)
!1423 = !DILocation(line: 362, column: 31, scope: !1357)
!1424 = !DILocation(line: 362, column: 2, scope: !1357)
!1425 = distinct !{!1425, !1360, !1426}
!1426 = !DILocation(line: 380, column: 2, scope: !1354)
!1427 = !DILocation(line: 382, column: 6, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1322, file: !2, line: 382, column: 6)
!1429 = !DILocation(line: 382, column: 6, scope: !1322)
!1430 = !DILocation(line: 383, column: 3, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !2, line: 382, column: 19)
!1432 = !DILocalVariable(name: "c", scope: !1433, file: !2, line: 384, type: !269)
!1433 = distinct !DILexicalBlock(scope: !1431, file: !2, line: 384, column: 3)
!1434 = !DILocation(line: 384, column: 18, scope: !1433)
!1435 = !DILocation(line: 384, column: 8, scope: !1433)
!1436 = !DILocation(line: 386, column: 11, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 384, column: 50)
!1438 = distinct !DILexicalBlock(scope: !1433, file: !2, line: 384, column: 3)
!1439 = !DILocation(line: 387, column: 22, scope: !1437)
!1440 = !DILocation(line: 387, column: 25, scope: !1437)
!1441 = !DILocation(line: 387, column: 11, scope: !1437)
!1442 = !DILocation(line: 388, column: 30, scope: !1437)
!1443 = !DILocation(line: 388, column: 33, scope: !1437)
!1444 = !DILocation(line: 388, column: 13, scope: !1437)
!1445 = !DILocation(line: 390, column: 22, scope: !1437)
!1446 = !DILocation(line: 390, column: 25, scope: !1437)
!1447 = !DILocation(line: 390, column: 11, scope: !1437)
!1448 = !DILocation(line: 391, column: 22, scope: !1437)
!1449 = !DILocation(line: 391, column: 25, scope: !1437)
!1450 = !DILocation(line: 391, column: 11, scope: !1437)
!1451 = !DILocation(line: 392, column: 23, scope: !1437)
!1452 = !DILocation(line: 392, column: 26, scope: !1437)
!1453 = !DILocation(line: 392, column: 11, scope: !1437)
!1454 = !DILocation(line: 385, column: 4, scope: !1437)
!1455 = !DILocation(line: 393, column: 8, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1437, file: !2, line: 393, column: 8)
!1457 = !DILocation(line: 393, column: 13, scope: !1456)
!1458 = !DILocation(line: 393, column: 16, scope: !1456)
!1459 = !DILocation(line: 393, column: 10, scope: !1456)
!1460 = !DILocation(line: 393, column: 8, scope: !1437)
!1461 = !DILocation(line: 394, column: 5, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 393, column: 27)
!1463 = !DILocation(line: 396, column: 3, scope: !1437)
!1464 = !DILocation(line: 384, column: 43, scope: !1438)
!1465 = !DILocation(line: 384, column: 46, scope: !1438)
!1466 = !DILocation(line: 384, column: 31, scope: !1438)
!1467 = !DILocation(line: 384, column: 29, scope: !1438)
!1468 = !DILocation(line: 384, column: 3, scope: !1438)
!1469 = distinct !{!1469, !1470, !1471}
!1470 = !DILocation(line: 384, column: 3, scope: !1433)
!1471 = !DILocation(line: 396, column: 3, scope: !1433)
!1472 = !DILocation(line: 397, column: 2, scope: !1431)
!1473 = !DILocation(line: 399, column: 17, scope: !1322)
!1474 = !DILocation(line: 399, column: 2, scope: !1322)
!1475 = !DILocation(line: 401, column: 10, scope: !1322)
!1476 = !DILocation(line: 401, column: 13, scope: !1322)
!1477 = !DILocation(line: 401, column: 23, scope: !1322)
!1478 = !DILocation(line: 401, column: 49, scope: !1322)
!1479 = !DILocation(line: 401, column: 30, scope: !1322)
!1480 = !DILocation(line: 401, column: 28, scope: !1322)
!1481 = !DILocation(line: 401, column: 8, scope: !1322)
!1482 = !DILocation(line: 402, column: 13, scope: !1322)
!1483 = !DILocation(line: 402, column: 21, scope: !1322)
!1484 = !DILocation(line: 402, column: 19, scope: !1322)
!1485 = !DILocation(line: 402, column: 34, scope: !1322)
!1486 = !DILocation(line: 402, column: 32, scope: !1322)
!1487 = !DILocation(line: 402, column: 11, scope: !1322)
!1488 = !DILocation(line: 404, column: 9, scope: !1322)
!1489 = !DILocation(line: 404, column: 21, scope: !1322)
!1490 = !DILocation(line: 404, column: 38, scope: !1322)
!1491 = !DILocation(line: 405, column: 17, scope: !1322)
!1492 = !DILocation(line: 405, column: 15, scope: !1322)
!1493 = !DILocation(line: 405, column: 28, scope: !1322)
!1494 = !DILocation(line: 405, column: 33, scope: !1322)
!1495 = !DILocation(line: 405, column: 26, scope: !1322)
!1496 = !DILocation(line: 405, column: 39, scope: !1322)
!1497 = !DILocation(line: 405, column: 37, scope: !1322)
!1498 = !DILocation(line: 405, column: 45, scope: !1322)
!1499 = !DILocation(line: 406, column: 17, scope: !1322)
!1500 = !DILocation(line: 406, column: 15, scope: !1322)
!1501 = !DILocation(line: 406, column: 28, scope: !1322)
!1502 = !DILocation(line: 406, column: 33, scope: !1322)
!1503 = !DILocation(line: 406, column: 26, scope: !1322)
!1504 = !DILocation(line: 406, column: 39, scope: !1322)
!1505 = !DILocation(line: 406, column: 37, scope: !1322)
!1506 = !DILocation(line: 406, column: 45, scope: !1322)
!1507 = !DILocation(line: 403, column: 2, scope: !1322)
!1508 = !DILocation(line: 407, column: 1, scope: !1322)
!1509 = distinct !DISubprogram(name: "chunk_buf", scope: !127, file: !127, line: 101, type: !1510, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!140, !264}
!1512 = !DILocalVariable(name: "h", arg: 1, scope: !1509, file: !127, line: 101, type: !264)
!1513 = !DILocation(line: 101, column: 54, scope: !1509)
!1514 = !DILocation(line: 104, column: 25, scope: !1509)
!1515 = !DILocation(line: 104, column: 2, scope: !1509)
!1516 = distinct !DISubprogram(name: "chunk_size", scope: !127, file: !127, line: 142, type: !1517, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!929, !264, !269}
!1519 = !DILocalVariable(name: "h", arg: 1, scope: !1516, file: !127, line: 142, type: !264)
!1520 = !DILocation(line: 142, column: 51, scope: !1516)
!1521 = !DILocalVariable(name: "c", arg: 2, scope: !1516, file: !127, line: 142, type: !269)
!1522 = !DILocation(line: 142, column: 64, scope: !1516)
!1523 = !DILocation(line: 144, column: 21, scope: !1516)
!1524 = !DILocation(line: 144, column: 24, scope: !1516)
!1525 = !DILocation(line: 144, column: 9, scope: !1516)
!1526 = !DILocation(line: 144, column: 42, scope: !1516)
!1527 = !DILocation(line: 144, column: 2, scope: !1516)
!1528 = distinct !DISubprogram(name: "min_chunk_size", scope: !127, file: !127, line: 240, type: !1529, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!929, !264}
!1531 = !DILocalVariable(name: "h", arg: 1, scope: !1528, file: !127, line: 240, type: !264)
!1532 = !DILocation(line: 240, column: 55, scope: !1528)
!1533 = !DILocation(line: 242, column: 26, scope: !1528)
!1534 = !DILocation(line: 242, column: 9, scope: !1528)
!1535 = !DILocation(line: 242, column: 2, scope: !1528)
!1536 = distinct !DISubprogram(name: "chunksz_to_bytes", scope: !127, file: !127, line: 245, type: !1537, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!281, !264, !929}
!1539 = !DILocalVariable(name: "h", arg: 1, scope: !1536, file: !127, line: 245, type: !264)
!1540 = !DILocation(line: 245, column: 54, scope: !1536)
!1541 = !DILocalVariable(name: "chunksz_in", arg: 2, scope: !1536, file: !127, line: 245, type: !929)
!1542 = !DILocation(line: 245, column: 67, scope: !1536)
!1543 = !DILocation(line: 247, column: 9, scope: !1536)
!1544 = !DILocation(line: 247, column: 20, scope: !1536)
!1545 = !DILocation(line: 247, column: 46, scope: !1536)
!1546 = !DILocation(line: 247, column: 27, scope: !1536)
!1547 = !DILocation(line: 247, column: 25, scope: !1536)
!1548 = !DILocation(line: 247, column: 2, scope: !1536)
!1549 = distinct !DISubprogram(name: "get_alloc_info", scope: !2, file: !2, line: 71, type: !1550, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{null, !264, !1552, !1552}
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!1553 = !DILocalVariable(name: "h", arg: 1, scope: !1549, file: !2, line: 71, type: !264)
!1554 = !DILocation(line: 71, column: 43, scope: !1549)
!1555 = !DILocalVariable(name: "alloc_bytes", arg: 2, scope: !1549, file: !2, line: 71, type: !1552)
!1556 = !DILocation(line: 71, column: 54, scope: !1549)
!1557 = !DILocalVariable(name: "free_bytes", arg: 3, scope: !1549, file: !2, line: 72, type: !1552)
!1558 = !DILocation(line: 72, column: 15, scope: !1549)
!1559 = !DILocalVariable(name: "c", scope: !1549, file: !2, line: 74, type: !269)
!1560 = !DILocation(line: 74, column: 12, scope: !1549)
!1561 = !DILocation(line: 76, column: 3, scope: !1549)
!1562 = !DILocation(line: 76, column: 15, scope: !1549)
!1563 = !DILocation(line: 77, column: 3, scope: !1549)
!1564 = !DILocation(line: 77, column: 14, scope: !1549)
!1565 = !DILocation(line: 79, column: 23, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 79, column: 2)
!1567 = !DILocation(line: 79, column: 11, scope: !1566)
!1568 = !DILocation(line: 79, column: 9, scope: !1566)
!1569 = !DILocation(line: 79, column: 7, scope: !1566)
!1570 = !DILocation(line: 79, column: 30, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !2, line: 79, column: 2)
!1572 = !DILocation(line: 79, column: 34, scope: !1571)
!1573 = !DILocation(line: 79, column: 37, scope: !1571)
!1574 = !DILocation(line: 79, column: 32, scope: !1571)
!1575 = !DILocation(line: 79, column: 2, scope: !1566)
!1576 = !DILocation(line: 80, column: 18, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 80, column: 7)
!1578 = distinct !DILexicalBlock(scope: !1571, file: !2, line: 79, column: 71)
!1579 = !DILocation(line: 80, column: 21, scope: !1577)
!1580 = !DILocation(line: 80, column: 7, scope: !1577)
!1581 = !DILocation(line: 80, column: 7, scope: !1578)
!1582 = !DILocation(line: 81, column: 37, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 80, column: 25)
!1584 = !DILocation(line: 81, column: 51, scope: !1583)
!1585 = !DILocation(line: 81, column: 54, scope: !1583)
!1586 = !DILocation(line: 81, column: 40, scope: !1583)
!1587 = !DILocation(line: 81, column: 20, scope: !1583)
!1588 = !DILocation(line: 81, column: 5, scope: !1583)
!1589 = !DILocation(line: 81, column: 17, scope: !1583)
!1590 = !DILocation(line: 82, column: 3, scope: !1583)
!1591 = !DILocation(line: 82, column: 32, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 82, column: 14)
!1593 = !DILocation(line: 82, column: 35, scope: !1592)
!1594 = !DILocation(line: 82, column: 15, scope: !1592)
!1595 = !DILocation(line: 82, column: 14, scope: !1577)
!1596 = !DILocation(line: 83, column: 36, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !2, line: 82, column: 39)
!1598 = !DILocation(line: 83, column: 50, scope: !1597)
!1599 = !DILocation(line: 83, column: 53, scope: !1597)
!1600 = !DILocation(line: 83, column: 39, scope: !1597)
!1601 = !DILocation(line: 83, column: 19, scope: !1597)
!1602 = !DILocation(line: 83, column: 5, scope: !1597)
!1603 = !DILocation(line: 83, column: 16, scope: !1597)
!1604 = !DILocation(line: 84, column: 3, scope: !1597)
!1605 = !DILocation(line: 85, column: 2, scope: !1578)
!1606 = !DILocation(line: 79, column: 64, scope: !1571)
!1607 = !DILocation(line: 79, column: 67, scope: !1571)
!1608 = !DILocation(line: 79, column: 52, scope: !1571)
!1609 = !DILocation(line: 79, column: 50, scope: !1571)
!1610 = !DILocation(line: 79, column: 2, scope: !1571)
!1611 = distinct !{!1611, !1575, !1612}
!1612 = !DILocation(line: 85, column: 2, scope: !1566)
!1613 = !DILocation(line: 86, column: 1, scope: !1549)
!1614 = distinct !DISubprogram(name: "chunk_header_bytes", scope: !127, file: !127, line: 220, type: !1615, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!281, !264}
!1617 = !DILocalVariable(name: "h", arg: 1, scope: !1614, file: !127, line: 220, type: !264)
!1618 = !DILocation(line: 220, column: 56, scope: !1614)
!1619 = !DILocation(line: 222, column: 18, scope: !1614)
!1620 = !DILocation(line: 222, column: 9, scope: !1614)
!1621 = !DILocation(line: 222, column: 2, scope: !1614)
!1622 = distinct !DISubprogram(name: "sys_heap_print_info", scope: !2, file: !2, line: 409, type: !1623, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !477, !476}
!1625 = !DILocalVariable(name: "heap", arg: 1, scope: !1622, file: !2, line: 409, type: !477)
!1626 = !DILocation(line: 409, column: 43, scope: !1622)
!1627 = !DILocalVariable(name: "dump_chunks", arg: 2, scope: !1622, file: !2, line: 409, type: !476)
!1628 = !DILocation(line: 409, column: 55, scope: !1622)
!1629 = !DILocation(line: 411, column: 18, scope: !1622)
!1630 = !DILocation(line: 411, column: 24, scope: !1622)
!1631 = !DILocation(line: 411, column: 30, scope: !1622)
!1632 = !DILocation(line: 411, column: 2, scope: !1622)
!1633 = !DILocation(line: 412, column: 1, scope: !1622)
!1634 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !408, file: !408, line: 335, type: !1635, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!476, !1637}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 32)
!1638 = !DILocalVariable(name: "list", arg: 1, scope: !1634, file: !408, line: 335, type: !1637)
!1639 = !DILocation(line: 335, column: 55, scope: !1634)
!1640 = !DILocation(line: 335, column: 92, scope: !1634)
!1641 = !DILocation(line: 335, column: 71, scope: !1634)
!1642 = !DILocation(line: 335, column: 98, scope: !1634)
!1643 = !DILocation(line: 335, column: 63, scope: !1634)
!1644 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !408, file: !408, line: 255, type: !1645, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!412, !1637}
!1647 = !DILocalVariable(name: "list", arg: 1, scope: !1644, file: !408, line: 255, type: !1637)
!1648 = !DILocation(line: 255, column: 64, scope: !1644)
!1649 = !DILocation(line: 257, column: 9, scope: !1644)
!1650 = !DILocation(line: 257, column: 15, scope: !1644)
!1651 = !DILocation(line: 257, column: 2, scope: !1644)
!1652 = distinct !DISubprogram(name: "in_bounds", scope: !2, file: !2, line: 23, type: !781, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1653 = !DILocalVariable(name: "h", arg: 1, scope: !1652, file: !2, line: 23, type: !264)
!1654 = !DILocation(line: 23, column: 39, scope: !1652)
!1655 = !DILocalVariable(name: "c", arg: 2, scope: !1652, file: !2, line: 23, type: !269)
!1656 = !DILocation(line: 23, column: 52, scope: !1652)
!1657 = !DILocation(line: 25, column: 2, scope: !1652)
!1658 = !DILocation(line: 25, column: 13, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 25, column: 11)
!1660 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 25, column: 5)
!1661 = !DILocation(line: 25, column: 30, scope: !1659)
!1662 = !DILocation(line: 25, column: 18, scope: !1659)
!1663 = !DILocation(line: 25, column: 15, scope: !1659)
!1664 = !DILocation(line: 25, column: 11, scope: !1660)
!1665 = !DILocation(line: 25, column: 40, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 25, column: 38)
!1667 = !DILocation(line: 25, column: 52, scope: !1660)
!1668 = !DILocation(line: 26, column: 2, scope: !1652)
!1669 = !DILocation(line: 26, column: 13, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 26, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 26, column: 5)
!1672 = !DILocation(line: 26, column: 17, scope: !1670)
!1673 = !DILocation(line: 26, column: 20, scope: !1670)
!1674 = !DILocation(line: 26, column: 15, scope: !1670)
!1675 = !DILocation(line: 26, column: 11, scope: !1671)
!1676 = !DILocation(line: 26, column: 34, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 26, column: 32)
!1678 = !DILocation(line: 26, column: 46, scope: !1671)
!1679 = !DILocation(line: 27, column: 2, scope: !1652)
!1680 = !DILocation(line: 27, column: 24, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 27, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 27, column: 5)
!1683 = !DILocation(line: 27, column: 27, scope: !1681)
!1684 = !DILocation(line: 27, column: 13, scope: !1681)
!1685 = !DILocation(line: 27, column: 32, scope: !1681)
!1686 = !DILocation(line: 27, column: 35, scope: !1681)
!1687 = !DILocation(line: 27, column: 30, scope: !1681)
!1688 = !DILocation(line: 27, column: 11, scope: !1682)
!1689 = !DILocation(line: 27, column: 49, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 27, column: 47)
!1691 = !DILocation(line: 27, column: 61, scope: !1682)
!1692 = !DILocation(line: 28, column: 2, scope: !1652)
!1693 = !DILocation(line: 29, column: 1, scope: !1652)
!1694 = distinct !DISubprogram(name: "prev_free_chunk", scope: !127, file: !127, line: 177, type: !768, scopeLine: 178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1695 = !DILocalVariable(name: "h", arg: 1, scope: !1694, file: !127, line: 177, type: !264)
!1696 = !DILocation(line: 177, column: 56, scope: !1694)
!1697 = !DILocalVariable(name: "c", arg: 2, scope: !1694, file: !127, line: 177, type: !269)
!1698 = !DILocation(line: 177, column: 69, scope: !1694)
!1699 = !DILocation(line: 179, column: 21, scope: !1694)
!1700 = !DILocation(line: 179, column: 24, scope: !1694)
!1701 = !DILocation(line: 179, column: 9, scope: !1694)
!1702 = !DILocation(line: 179, column: 2, scope: !1694)
!1703 = distinct !DISubprogram(name: "chunk_field", scope: !127, file: !127, line: 107, type: !1704, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!269, !264, !269, !126}
!1706 = !DILocalVariable(name: "h", arg: 1, scope: !1703, file: !127, line: 107, type: !264)
!1707 = !DILocation(line: 107, column: 52, scope: !1703)
!1708 = !DILocalVariable(name: "c", arg: 2, scope: !1703, file: !127, line: 107, type: !269)
!1709 = !DILocation(line: 107, column: 65, scope: !1703)
!1710 = !DILocalVariable(name: "f", arg: 3, scope: !1703, file: !127, line: 108, type: !126)
!1711 = !DILocation(line: 108, column: 27, scope: !1703)
!1712 = !DILocalVariable(name: "buf", scope: !1703, file: !127, line: 110, type: !140)
!1713 = !DILocation(line: 110, column: 16, scope: !1703)
!1714 = !DILocation(line: 110, column: 32, scope: !1703)
!1715 = !DILocation(line: 110, column: 22, scope: !1703)
!1716 = !DILocalVariable(name: "cmem", scope: !1703, file: !127, line: 111, type: !134)
!1717 = !DILocation(line: 111, column: 8, scope: !1703)
!1718 = !DILocation(line: 111, column: 16, scope: !1703)
!1719 = !DILocation(line: 111, column: 20, scope: !1703)
!1720 = !DILocation(line: 113, column: 15, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1703, file: !127, line: 113, column: 6)
!1722 = !DILocation(line: 113, column: 6, scope: !1721)
!1723 = !DILocation(line: 113, column: 6, scope: !1703)
!1724 = !DILocation(line: 114, column: 23, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !127, line: 113, column: 19)
!1726 = !DILocation(line: 114, column: 29, scope: !1725)
!1727 = !DILocation(line: 114, column: 10, scope: !1725)
!1728 = !DILocation(line: 114, column: 3, scope: !1725)
!1729 = !DILocation(line: 116, column: 23, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1721, file: !127, line: 115, column: 9)
!1731 = !DILocation(line: 116, column: 29, scope: !1730)
!1732 = !DILocation(line: 116, column: 10, scope: !1730)
!1733 = !DILocation(line: 116, column: 3, scope: !1730)
!1734 = !DILocation(line: 118, column: 1, scope: !1703)
!1735 = distinct !DISubprogram(name: "big_heap", scope: !127, file: !127, line: 96, type: !1736, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!476, !264}
!1738 = !DILocalVariable(name: "h", arg: 1, scope: !1735, file: !127, line: 96, type: !264)
!1739 = !DILocation(line: 96, column: 45, scope: !1735)
!1740 = !DILocation(line: 98, column: 25, scope: !1735)
!1741 = !DILocation(line: 98, column: 28, scope: !1735)
!1742 = !DILocation(line: 98, column: 9, scope: !1735)
!1743 = !DILocation(line: 98, column: 2, scope: !1735)
!1744 = distinct !DISubprogram(name: "big_heap_chunks", scope: !127, file: !127, line: 80, type: !1745, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!476, !929}
!1747 = !DILocalVariable(name: "chunks", arg: 1, scope: !1744, file: !127, line: 80, type: !929)
!1748 = !DILocation(line: 80, column: 47, scope: !1744)
!1749 = !DILocation(line: 83, column: 3, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !127, line: 82, column: 9)
!1751 = distinct !DILexicalBlock(scope: !1744, file: !127, line: 82, column: 6)
!1752 = !DILocation(line: 229, column: 10, scope: !34)
!1753 = !DILocation(line: 229, column: 16, scope: !34)
!1754 = !DILocation(line: 229, column: 40, scope: !34)
!1755 = !DILocation(line: 229, column: 8, scope: !34)
!1756 = !DILocation(line: 231, column: 20, scope: !34)
!1757 = !DILocation(line: 231, column: 26, scope: !34)
!1758 = !DILocation(line: 231, column: 9, scope: !34)
!1759 = !DILocation(line: 231, column: 2, scope: !34)
!1760 = distinct !DISubprogram(name: "bytes_to_chunksz", scope: !127, file: !127, line: 235, type: !1761, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!929, !264, !281}
!1763 = !DILocalVariable(name: "h", arg: 1, scope: !1760, file: !127, line: 235, type: !264)
!1764 = !DILocation(line: 235, column: 57, scope: !1760)
!1765 = !DILocalVariable(name: "bytes", arg: 2, scope: !1760, file: !127, line: 235, type: !281)
!1766 = !DILocation(line: 235, column: 67, scope: !1760)
!1767 = !DILocation(line: 237, column: 36, scope: !1760)
!1768 = !DILocation(line: 237, column: 17, scope: !1760)
!1769 = !DILocation(line: 237, column: 41, scope: !1760)
!1770 = !DILocation(line: 237, column: 39, scope: !1760)
!1771 = !DILocation(line: 237, column: 9, scope: !1760)
!1772 = !DILocation(line: 237, column: 2, scope: !1760)
!1773 = distinct !DISubprogram(name: "chunksz", scope: !127, file: !127, line: 230, type: !1774, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !40, retainedNodes: !149)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!929, !281}
!1776 = !DILocalVariable(name: "bytes", arg: 1, scope: !1773, file: !127, line: 230, type: !281)
!1777 = !DILocation(line: 230, column: 40, scope: !1773)
!1778 = !DILocation(line: 232, column: 10, scope: !1773)
!1779 = !DILocation(line: 232, column: 16, scope: !1773)
!1780 = !DILocation(line: 232, column: 21, scope: !1773)
!1781 = !DILocation(line: 232, column: 27, scope: !1773)
!1782 = !DILocation(line: 232, column: 2, scope: !1773)
