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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !159 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !291, metadata !DIExpression()), !dbg !293
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !292, metadata !DIExpression()), !dbg !294
  %5 = load ptr, ptr %3, align 4, !dbg !295
  %6 = load ptr, ptr %4, align 4, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !298 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  ret void, !dbg !305
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !306 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load i8, ptr %2, align 1, !dbg !312
  ret ptr null, !dbg !313
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !314 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !318, metadata !DIExpression()), !dbg !320
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !319, metadata !DIExpression()), !dbg !321
  %5 = load i8, ptr %3, align 1, !dbg !322
  %6 = load i32, ptr %4, align 4, !dbg !323
  ret ptr null, !dbg !324
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !325 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !336
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !337
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !338
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
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !347
  ret i64 %6, !dbg !348
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !349 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !375
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !376
  ret i64 %5, !dbg !377
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !378 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !380, metadata !DIExpression()), !dbg !381
  %3 = load ptr, ptr %2, align 4, !dbg !382
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !383
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !384
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
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !434
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
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !471
  %3 = load ptr, ptr %2, align 4, !dbg !472
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !473
  %5 = load i32, ptr %4, align 4, !dbg !473
  %6 = load ptr, ptr %2, align 4, !dbg !474
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !475
  %8 = load i32, ptr %7, align 4, !dbg !475
  %9 = sub i32 %5, %8, !dbg !476
  ret i32 %9, !dbg !477
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = load ptr, ptr %2, align 4, !dbg !482
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !483
  %5 = load i32, ptr %4, align 4, !dbg !483
  ret i32 %5, !dbg !484
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @sys_heap_validate(ptr noundef %0) #1 !dbg !485 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !491, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %4, metadata !492, metadata !DIExpression()), !dbg !511
  %16 = load ptr, ptr %3, align 4, !dbg !512
  %17 = getelementptr inbounds %struct.sys_heap, ptr %16, i32 0, i32 0, !dbg !513
  %18 = load ptr, ptr %17, align 4, !dbg !513
  store ptr %18, ptr %4, align 4, !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %5, metadata !493, metadata !DIExpression()), !dbg !515
  %19 = load ptr, ptr %4, align 4, !dbg !516
  %20 = call i32 @right_chunk(ptr noundef %19, i32 noundef 0) #7, !dbg !518
  store i32 %20, ptr %5, align 4, !dbg !519
  br label %21, !dbg !520

21:                                               ; preds = %33, %1
  %22 = load i32, ptr %5, align 4, !dbg !521
  %23 = load ptr, ptr %4, align 4, !dbg !523
  %24 = getelementptr inbounds %struct.z_heap, ptr %23, i32 0, i32 1, !dbg !524
  %25 = load i32, ptr %24, align 4, !dbg !524
  %26 = icmp ult i32 %22, %25, !dbg !525
  br i1 %26, label %27, label %37, !dbg !526

27:                                               ; preds = %21
  %28 = load ptr, ptr %4, align 4, !dbg !527
  %29 = load i32, ptr %5, align 4, !dbg !530
  %30 = call zeroext i1 @valid_chunk(ptr noundef %28, i32 noundef %29) #7, !dbg !531
  br i1 %30, label %32, label %31, !dbg !532

31:                                               ; preds = %27
  store i1 false, ptr %2, align 1, !dbg !533
  store i32 1, ptr %6, align 4
  br label %253, !dbg !533

32:                                               ; preds = %27
  br label %33, !dbg !535

33:                                               ; preds = %32
  %34 = load ptr, ptr %4, align 4, !dbg !536
  %35 = load i32, ptr %5, align 4, !dbg !537
  %36 = call i32 @right_chunk(ptr noundef %34, i32 noundef %35) #7, !dbg !538
  store i32 %36, ptr %5, align 4, !dbg !539
  br label %21, !dbg !540, !llvm.loop !541

37:                                               ; preds = %21
  %38 = load i32, ptr %5, align 4, !dbg !543
  %39 = load ptr, ptr %4, align 4, !dbg !545
  %40 = getelementptr inbounds %struct.z_heap, ptr %39, i32 0, i32 1, !dbg !546
  %41 = load i32, ptr %40, align 4, !dbg !546
  %42 = icmp ne i32 %38, %41, !dbg !547
  br i1 %42, label %43, label %44, !dbg !548

43:                                               ; preds = %37
  store i1 false, ptr %2, align 1, !dbg !549
  store i32 1, ptr %6, align 4
  br label %253, !dbg !549

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !551
  call void @llvm.dbg.declare(metadata ptr %7, metadata !494, metadata !DIExpression()), !dbg !552
  store i32 0, ptr %7, align 4, !dbg !552
  br label %45, !dbg !551

45:                                               ; preds = %129, %44
  %46 = load i32, ptr %7, align 4, !dbg !553
  %47 = load ptr, ptr %4, align 4, !dbg !554
  %48 = load ptr, ptr %4, align 4, !dbg !555
  %49 = getelementptr inbounds %struct.z_heap, ptr %48, i32 0, i32 1, !dbg !556
  %50 = load i32, ptr %49, align 4, !dbg !556
  %51 = call i32 @bucket_idx(ptr noundef %47, i32 noundef %50) #7, !dbg !557
  %52 = icmp sle i32 %46, %51, !dbg !558
  br i1 %52, label %54, label %53, !dbg !559

53:                                               ; preds = %45
  store i32 5, ptr %6, align 4
  br label %132, !dbg !559

54:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %8, metadata !496, metadata !DIExpression()), !dbg !561
  %55 = load ptr, ptr %4, align 4, !dbg !562
  %56 = getelementptr inbounds %struct.z_heap, ptr %55, i32 0, i32 3, !dbg !563
  %57 = load i32, ptr %7, align 4, !dbg !564
  %58 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %56, i32 0, i32 %57, !dbg !562
  %59 = getelementptr inbounds %struct.z_heap_bucket, ptr %58, i32 0, i32 0, !dbg !565
  %60 = load i32, ptr %59, align 4, !dbg !565
  store i32 %60, ptr %8, align 4, !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %9, metadata !499, metadata !DIExpression()), !dbg !567
  store i32 0, ptr %9, align 4, !dbg !567
  %61 = load ptr, ptr %4, align 4, !dbg !568
  %62 = load i32, ptr %7, align 4, !dbg !569
  call void @check_nexts(ptr noundef %61, i32 noundef %62) #7, !dbg !570
  %63 = load i32, ptr %8, align 4, !dbg !571
  store i32 %63, ptr %5, align 4, !dbg !573
  br label %64, !dbg !574

64:                                               ; preds = %86, %54
  %65 = load i32, ptr %5, align 4, !dbg !575
  %66 = icmp ne i32 %65, 0, !dbg !577
  br i1 %66, label %67, label %76, !dbg !578

67:                                               ; preds = %64
  %68 = load i32, ptr %9, align 4, !dbg !579
  %69 = icmp eq i32 %68, 0, !dbg !580
  br i1 %69, label %74, label %70, !dbg !581

70:                                               ; preds = %67
  %71 = load i32, ptr %5, align 4, !dbg !582
  %72 = load i32, ptr %8, align 4, !dbg !583
  %73 = icmp ne i32 %71, %72, !dbg !584
  br label %74, !dbg !581

74:                                               ; preds = %70, %67
  %75 = phi i1 [ true, %67 ], [ %73, %70 ]
  br label %76

76:                                               ; preds = %74, %64
  %77 = phi i1 [ false, %64 ], [ %75, %74 ], !dbg !585
  br i1 %77, label %78, label %92, !dbg !586

78:                                               ; preds = %76
  %79 = load ptr, ptr %4, align 4, !dbg !587
  %80 = load i32, ptr %5, align 4, !dbg !590
  %81 = call zeroext i1 @valid_chunk(ptr noundef %79, i32 noundef %80) #7, !dbg !591
  br i1 %81, label %83, label %82, !dbg !592

82:                                               ; preds = %78
  store i1 false, ptr %2, align 1, !dbg !593
  store i32 1, ptr %6, align 4
  br label %126, !dbg !593

83:                                               ; preds = %78
  %84 = load ptr, ptr %4, align 4, !dbg !595
  %85 = load i32, ptr %5, align 4, !dbg !596
  call void @set_chunk_used(ptr noundef %84, i32 noundef %85, i1 noundef zeroext true) #7, !dbg !597
  br label %86, !dbg !598

86:                                               ; preds = %83
  %87 = load i32, ptr %9, align 4, !dbg !599
  %88 = add i32 %87, 1, !dbg !599
  store i32 %88, ptr %9, align 4, !dbg !599
  %89 = load ptr, ptr %4, align 4, !dbg !600
  %90 = load i32, ptr %5, align 4, !dbg !601
  %91 = call i32 @next_free_chunk(ptr noundef %89, i32 noundef %90) #7, !dbg !602
  store i32 %91, ptr %5, align 4, !dbg !603
  br label %64, !dbg !604, !llvm.loop !605

92:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #8, !dbg !607
  call void @llvm.dbg.declare(metadata ptr %10, metadata !500, metadata !DIExpression()), !dbg !608
  %93 = load ptr, ptr %4, align 4, !dbg !609
  %94 = getelementptr inbounds %struct.z_heap, ptr %93, i32 0, i32 2, !dbg !610
  %95 = load i32, ptr %94, align 4, !dbg !610
  %96 = load i32, ptr %7, align 4, !dbg !611
  %97 = shl i32 1, %96, !dbg !612
  %98 = and i32 %95, %97, !dbg !613
  %99 = icmp eq i32 %98, 0, !dbg !614
  %100 = zext i1 %99 to i8, !dbg !608
  store i8 %100, ptr %10, align 1, !dbg !608
  call void @llvm.lifetime.start.p0(i64 1, ptr %11) #8, !dbg !615
  call void @llvm.dbg.declare(metadata ptr %11, metadata !501, metadata !DIExpression()), !dbg !616
  %101 = load i32, ptr %9, align 4, !dbg !617
  %102 = icmp eq i32 %101, 0, !dbg !618
  %103 = zext i1 %102 to i8, !dbg !616
  store i8 %103, ptr %11, align 1, !dbg !616
  %104 = load i8, ptr %10, align 1, !dbg !619, !range !621, !noundef !149
  %105 = trunc i8 %104 to i1, !dbg !619
  %106 = zext i1 %105 to i32, !dbg !619
  %107 = load i8, ptr %11, align 1, !dbg !622, !range !621, !noundef !149
  %108 = trunc i8 %107 to i1, !dbg !622
  %109 = zext i1 %108 to i32, !dbg !622
  %110 = icmp ne i32 %106, %109, !dbg !623
  br i1 %110, label %111, label %112, !dbg !624

111:                                              ; preds = %92
  store i1 false, ptr %2, align 1, !dbg !625
  store i32 1, ptr %6, align 4
  br label %125, !dbg !625

112:                                              ; preds = %92
  %113 = load i8, ptr %10, align 1, !dbg !627, !range !621, !noundef !149
  %114 = trunc i8 %113 to i1, !dbg !627
  br i1 %114, label %115, label %124, !dbg !629

115:                                              ; preds = %112
  %116 = load ptr, ptr %4, align 4, !dbg !630
  %117 = getelementptr inbounds %struct.z_heap, ptr %116, i32 0, i32 3, !dbg !631
  %118 = load i32, ptr %7, align 4, !dbg !632
  %119 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %117, i32 0, i32 %118, !dbg !630
  %120 = getelementptr inbounds %struct.z_heap_bucket, ptr %119, i32 0, i32 0, !dbg !633
  %121 = load i32, ptr %120, align 4, !dbg !633
  %122 = icmp ne i32 %121, 0, !dbg !634
  br i1 %122, label %123, label %124, !dbg !635

123:                                              ; preds = %115
  store i1 false, ptr %2, align 1, !dbg !636
  store i32 1, ptr %6, align 4
  br label %125, !dbg !636

124:                                              ; preds = %115, %112
  store i32 0, ptr %6, align 4, !dbg !638
  br label %125, !dbg !638

125:                                              ; preds = %124, %123, %111
  call void @llvm.lifetime.end.p0(i64 1, ptr %11) #8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #8, !dbg !638
  br label %126

126:                                              ; preds = %125, %82
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !638
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !638
  %127 = load i32, ptr %6, align 4
  switch i32 %127, label %132 [
    i32 0, label %128
  ]

128:                                              ; preds = %126
  br label %129, !dbg !639

129:                                              ; preds = %128
  %130 = load i32, ptr %7, align 4, !dbg !640
  %131 = add nsw i32 %130, 1, !dbg !640
  store i32 %131, ptr %7, align 4, !dbg !640
  br label %45, !dbg !641, !llvm.loop !642

132:                                              ; preds = %126, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !641
  %133 = load i32, ptr %6, align 4
  switch i32 %133, label %253 [
    i32 5, label %134
  ]

134:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !644
  call void @llvm.dbg.declare(metadata ptr %12, metadata !502, metadata !DIExpression()), !dbg !645
  store i32 0, ptr %12, align 4, !dbg !645
  %135 = load ptr, ptr %4, align 4, !dbg !646
  %136 = call i32 @right_chunk(ptr noundef %135, i32 noundef 0) #7, !dbg !648
  store i32 %136, ptr %5, align 4, !dbg !649
  br label %137, !dbg !650

137:                                              ; preds = %166, %134
  %138 = load i32, ptr %5, align 4, !dbg !651
  %139 = load ptr, ptr %4, align 4, !dbg !653
  %140 = getelementptr inbounds %struct.z_heap, ptr %139, i32 0, i32 1, !dbg !654
  %141 = load i32, ptr %140, align 4, !dbg !654
  %142 = icmp ult i32 %138, %141, !dbg !655
  br i1 %142, label %143, label %170, !dbg !656

143:                                              ; preds = %137
  %144 = load ptr, ptr %4, align 4, !dbg !657
  %145 = load i32, ptr %5, align 4, !dbg !660
  %146 = call zeroext i1 @chunk_used(ptr noundef %144, i32 noundef %145) #7, !dbg !661
  br i1 %146, label %152, label %147, !dbg !662

147:                                              ; preds = %143
  %148 = load ptr, ptr %4, align 4, !dbg !663
  %149 = load i32, ptr %5, align 4, !dbg !664
  %150 = call zeroext i1 @solo_free_header(ptr noundef %148, i32 noundef %149) #7, !dbg !665
  br i1 %150, label %152, label %151, !dbg !666

151:                                              ; preds = %147
  store i1 false, ptr %2, align 1, !dbg !667
  store i32 1, ptr %6, align 4
  br label %252, !dbg !667

152:                                              ; preds = %147, %143
  %153 = load ptr, ptr %4, align 4, !dbg !669
  %154 = load i32, ptr %5, align 4, !dbg !671
  %155 = call i32 @left_chunk(ptr noundef %153, i32 noundef %154) #7, !dbg !672
  %156 = load i32, ptr %12, align 4, !dbg !673
  %157 = icmp ne i32 %155, %156, !dbg !674
  br i1 %157, label %158, label %159, !dbg !675

158:                                              ; preds = %152
  store i1 false, ptr %2, align 1, !dbg !676
  store i32 1, ptr %6, align 4
  br label %252, !dbg !676

159:                                              ; preds = %152
  %160 = load i32, ptr %5, align 4, !dbg !678
  store i32 %160, ptr %12, align 4, !dbg !679
  %161 = load ptr, ptr %4, align 4, !dbg !680
  %162 = load i32, ptr %5, align 4, !dbg !681
  %163 = load ptr, ptr %4, align 4, !dbg !682
  %164 = load i32, ptr %5, align 4, !dbg !683
  %165 = call zeroext i1 @solo_free_header(ptr noundef %163, i32 noundef %164) #7, !dbg !684
  call void @set_chunk_used(ptr noundef %161, i32 noundef %162, i1 noundef zeroext %165) #7, !dbg !685
  br label %166, !dbg !686

166:                                              ; preds = %159
  %167 = load ptr, ptr %4, align 4, !dbg !687
  %168 = load i32, ptr %5, align 4, !dbg !688
  %169 = call i32 @right_chunk(ptr noundef %167, i32 noundef %168) #7, !dbg !689
  store i32 %169, ptr %5, align 4, !dbg !690
  br label %137, !dbg !691, !llvm.loop !692

170:                                              ; preds = %137
  %171 = load i32, ptr %5, align 4, !dbg !694
  %172 = load ptr, ptr %4, align 4, !dbg !696
  %173 = getelementptr inbounds %struct.z_heap, ptr %172, i32 0, i32 1, !dbg !697
  %174 = load i32, ptr %173, align 4, !dbg !697
  %175 = icmp ne i32 %171, %174, !dbg !698
  br i1 %175, label %176, label %177, !dbg !699

176:                                              ; preds = %170
  store i1 false, ptr %2, align 1, !dbg !700
  store i32 1, ptr %6, align 4
  br label %252, !dbg !700

177:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %13, metadata !503, metadata !DIExpression()), !dbg !703
  store i32 0, ptr %13, align 4, !dbg !703
  br label %178, !dbg !702

178:                                              ; preds = %226, %177
  %179 = load i32, ptr %13, align 4, !dbg !704
  %180 = load ptr, ptr %4, align 4, !dbg !705
  %181 = load ptr, ptr %4, align 4, !dbg !706
  %182 = getelementptr inbounds %struct.z_heap, ptr %181, i32 0, i32 1, !dbg !707
  %183 = load i32, ptr %182, align 4, !dbg !707
  %184 = call i32 @bucket_idx(ptr noundef %180, i32 noundef %183) #7, !dbg !708
  %185 = icmp sle i32 %179, %184, !dbg !709
  br i1 %185, label %187, label %186, !dbg !710

186:                                              ; preds = %178
  store i32 14, ptr %6, align 4
  br label %229, !dbg !710

187:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %14, metadata !505, metadata !DIExpression()), !dbg !712
  %188 = load ptr, ptr %4, align 4, !dbg !713
  %189 = getelementptr inbounds %struct.z_heap, ptr %188, i32 0, i32 3, !dbg !714
  %190 = load i32, ptr %13, align 4, !dbg !715
  %191 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %189, i32 0, i32 %190, !dbg !713
  %192 = getelementptr inbounds %struct.z_heap_bucket, ptr %191, i32 0, i32 0, !dbg !716
  %193 = load i32, ptr %192, align 4, !dbg !716
  store i32 %193, ptr %14, align 4, !dbg !712
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %15, metadata !508, metadata !DIExpression()), !dbg !718
  store i32 0, ptr %15, align 4, !dbg !718
  %194 = load i32, ptr %14, align 4, !dbg !719
  %195 = icmp eq i32 %194, 0, !dbg !721
  br i1 %195, label %196, label %197, !dbg !722

196:                                              ; preds = %187
  store i32 16, ptr %6, align 4
  br label %223, !dbg !723

197:                                              ; preds = %187
  %198 = load i32, ptr %14, align 4, !dbg !725
  store i32 %198, ptr %5, align 4, !dbg !727
  br label %199, !dbg !728

199:                                              ; preds = %216, %197
  %200 = load i32, ptr %15, align 4, !dbg !729
  %201 = icmp eq i32 %200, 0, !dbg !731
  br i1 %201, label %206, label %202, !dbg !732

202:                                              ; preds = %199
  %203 = load i32, ptr %5, align 4, !dbg !733
  %204 = load i32, ptr %14, align 4, !dbg !734
  %205 = icmp ne i32 %203, %204, !dbg !735
  br label %206, !dbg !732

206:                                              ; preds = %202, %199
  %207 = phi i1 [ true, %199 ], [ %205, %202 ]
  br i1 %207, label %208, label %222, !dbg !736

208:                                              ; preds = %206
  %209 = load ptr, ptr %4, align 4, !dbg !737
  %210 = load i32, ptr %5, align 4, !dbg !740
  %211 = call zeroext i1 @chunk_used(ptr noundef %209, i32 noundef %210) #7, !dbg !741
  br i1 %211, label %212, label %213, !dbg !742

212:                                              ; preds = %208
  store i1 false, ptr %2, align 1, !dbg !743
  store i32 1, ptr %6, align 4
  br label %223, !dbg !743

213:                                              ; preds = %208
  %214 = load ptr, ptr %4, align 4, !dbg !745
  %215 = load i32, ptr %5, align 4, !dbg !746
  call void @set_chunk_used(ptr noundef %214, i32 noundef %215, i1 noundef zeroext true) #7, !dbg !747
  br label %216, !dbg !748

216:                                              ; preds = %213
  %217 = load i32, ptr %15, align 4, !dbg !749
  %218 = add nsw i32 %217, 1, !dbg !749
  store i32 %218, ptr %15, align 4, !dbg !749
  %219 = load ptr, ptr %4, align 4, !dbg !750
  %220 = load i32, ptr %5, align 4, !dbg !751
  %221 = call i32 @next_free_chunk(ptr noundef %219, i32 noundef %220) #7, !dbg !752
  store i32 %221, ptr %5, align 4, !dbg !753
  br label %199, !dbg !754, !llvm.loop !755

222:                                              ; preds = %206
  store i32 0, ptr %6, align 4, !dbg !757
  br label %223, !dbg !757

223:                                              ; preds = %222, %212, %196
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !757
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !757
  %224 = load i32, ptr %6, align 4
  switch i32 %224, label %229 [
    i32 0, label %225
    i32 16, label %226
  ]

225:                                              ; preds = %223
  br label %226, !dbg !758

226:                                              ; preds = %225, %223
  %227 = load i32, ptr %13, align 4, !dbg !759
  %228 = add nsw i32 %227, 1, !dbg !759
  store i32 %228, ptr %13, align 4, !dbg !759
  br label %178, !dbg !760, !llvm.loop !761

229:                                              ; preds = %223, %186
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !760
  %230 = load i32, ptr %6, align 4
  switch i32 %230, label %252 [
    i32 14, label %231
  ]

231:                                              ; preds = %229
  %232 = load ptr, ptr %4, align 4, !dbg !763
  %233 = call i32 @right_chunk(ptr noundef %232, i32 noundef 0) #7, !dbg !765
  store i32 %233, ptr %5, align 4, !dbg !766
  br label %234, !dbg !767

234:                                              ; preds = %247, %231
  %235 = load i32, ptr %5, align 4, !dbg !768
  %236 = load ptr, ptr %4, align 4, !dbg !770
  %237 = getelementptr inbounds %struct.z_heap, ptr %236, i32 0, i32 1, !dbg !771
  %238 = load i32, ptr %237, align 4, !dbg !771
  %239 = icmp ult i32 %235, %238, !dbg !772
  br i1 %239, label %240, label %251, !dbg !773

240:                                              ; preds = %234
  %241 = load ptr, ptr %4, align 4, !dbg !774
  %242 = load i32, ptr %5, align 4, !dbg !776
  %243 = load ptr, ptr %4, align 4, !dbg !777
  %244 = load i32, ptr %5, align 4, !dbg !778
  %245 = call zeroext i1 @chunk_used(ptr noundef %243, i32 noundef %244) #7, !dbg !779
  %246 = xor i1 %245, true, !dbg !780
  call void @set_chunk_used(ptr noundef %241, i32 noundef %242, i1 noundef zeroext %246) #7, !dbg !781
  br label %247, !dbg !782

247:                                              ; preds = %240
  %248 = load ptr, ptr %4, align 4, !dbg !783
  %249 = load i32, ptr %5, align 4, !dbg !784
  %250 = call i32 @right_chunk(ptr noundef %248, i32 noundef %249) #7, !dbg !785
  store i32 %250, ptr %5, align 4, !dbg !786
  br label %234, !dbg !787, !llvm.loop !788

251:                                              ; preds = %234
  store i1 true, ptr %2, align 1, !dbg !790
  store i32 1, ptr %6, align 4
  br label %252, !dbg !790

252:                                              ; preds = %251, %229, %176, %158, %151
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !791
  br label %253

253:                                              ; preds = %252, %132, %43, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !791
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !791
  %254 = load i1, ptr %2, align 1, !dbg !791
  ret i1 %254, !dbg !791
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @right_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !792 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !796, metadata !DIExpression()), !dbg !798
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !797, metadata !DIExpression()), !dbg !799
  %5 = load i32, ptr %4, align 4, !dbg !800
  %6 = load ptr, ptr %3, align 4, !dbg !801
  %7 = load i32, ptr %4, align 4, !dbg !802
  %8 = call i32 @chunk_size(ptr noundef %6, i32 noundef %7) #7, !dbg !803
  %9 = add i32 %5, %8, !dbg !804
  ret i32 %9, !dbg !805
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @valid_chunk(ptr noundef %0, i32 noundef %1) #1 !dbg !806 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !810, metadata !DIExpression()), !dbg !812
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !811, metadata !DIExpression()), !dbg !813
  br label %6, !dbg !814

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 4, !dbg !815
  %8 = load i32, ptr %5, align 4, !dbg !818
  %9 = call i32 @chunk_size(ptr noundef %7, i32 noundef %8) #7, !dbg !819
  %10 = icmp ugt i32 %9, 0, !dbg !820
  br i1 %10, label %12, label %11, !dbg !821

11:                                               ; preds = %6
  store i1 false, ptr %3, align 1, !dbg !822
  br label %110, !dbg !822

12:                                               ; preds = %6
  br label %13, !dbg !824

13:                                               ; preds = %12
  br label %14, !dbg !825

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !826
  %16 = load ptr, ptr %4, align 4, !dbg !829
  %17 = load i32, ptr %5, align 4, !dbg !830
  %18 = call i32 @chunk_size(ptr noundef %16, i32 noundef %17) #7, !dbg !831
  %19 = add i32 %15, %18, !dbg !832
  %20 = load ptr, ptr %4, align 4, !dbg !833
  %21 = getelementptr inbounds %struct.z_heap, ptr %20, i32 0, i32 1, !dbg !834
  %22 = load i32, ptr %21, align 4, !dbg !834
  %23 = icmp ule i32 %19, %22, !dbg !835
  br i1 %23, label %25, label %24, !dbg !836

24:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !837
  br label %110, !dbg !837

25:                                               ; preds = %14
  br label %26, !dbg !839

26:                                               ; preds = %25
  br label %27, !dbg !840

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 4, !dbg !841
  %29 = load i32, ptr %5, align 4, !dbg !844
  %30 = call zeroext i1 @in_bounds(ptr noundef %28, i32 noundef %29) #7, !dbg !845
  br i1 %30, label %32, label %31, !dbg !846

31:                                               ; preds = %27
  store i1 false, ptr %3, align 1, !dbg !847
  br label %110, !dbg !847

32:                                               ; preds = %27
  br label %33, !dbg !849

33:                                               ; preds = %32
  br label %34, !dbg !850

34:                                               ; preds = %33
  %35 = load ptr, ptr %4, align 4, !dbg !851
  %36 = load ptr, ptr %4, align 4, !dbg !854
  %37 = load i32, ptr %5, align 4, !dbg !855
  %38 = call i32 @left_chunk(ptr noundef %36, i32 noundef %37) #7, !dbg !856
  %39 = call i32 @right_chunk(ptr noundef %35, i32 noundef %38) #7, !dbg !857
  %40 = load i32, ptr %5, align 4, !dbg !858
  %41 = icmp eq i32 %39, %40, !dbg !859
  br i1 %41, label %43, label %42, !dbg !860

42:                                               ; preds = %34
  store i1 false, ptr %3, align 1, !dbg !861
  br label %110, !dbg !861

43:                                               ; preds = %34
  br label %44, !dbg !863

44:                                               ; preds = %43
  br label %45, !dbg !864

45:                                               ; preds = %44
  %46 = load ptr, ptr %4, align 4, !dbg !865
  %47 = load ptr, ptr %4, align 4, !dbg !868
  %48 = load i32, ptr %5, align 4, !dbg !869
  %49 = call i32 @right_chunk(ptr noundef %47, i32 noundef %48) #7, !dbg !870
  %50 = call i32 @left_chunk(ptr noundef %46, i32 noundef %49) #7, !dbg !871
  %51 = load i32, ptr %5, align 4, !dbg !872
  %52 = icmp eq i32 %50, %51, !dbg !873
  br i1 %52, label %54, label %53, !dbg !874

53:                                               ; preds = %45
  store i1 false, ptr %3, align 1, !dbg !875
  br label %110, !dbg !875

54:                                               ; preds = %45
  br label %55, !dbg !877

55:                                               ; preds = %54
  %56 = load ptr, ptr %4, align 4, !dbg !878
  %57 = load i32, ptr %5, align 4, !dbg !880
  %58 = call zeroext i1 @chunk_used(ptr noundef %56, i32 noundef %57) #7, !dbg !881
  br i1 %58, label %59, label %67, !dbg !882

59:                                               ; preds = %55
  br label %60, !dbg !883

60:                                               ; preds = %59
  %61 = load ptr, ptr %4, align 4, !dbg !885
  %62 = load i32, ptr %5, align 4, !dbg !888
  %63 = call zeroext i1 @solo_free_header(ptr noundef %61, i32 noundef %62) #7, !dbg !889
  br i1 %63, label %64, label %65, !dbg !890

64:                                               ; preds = %60
  store i1 false, ptr %3, align 1, !dbg !891
  br label %110, !dbg !891

65:                                               ; preds = %60
  br label %66, !dbg !893

66:                                               ; preds = %65
  br label %109, !dbg !894

67:                                               ; preds = %55
  br label %68, !dbg !895

68:                                               ; preds = %67
  %69 = load ptr, ptr %4, align 4, !dbg !897
  %70 = load ptr, ptr %4, align 4, !dbg !900
  %71 = load i32, ptr %5, align 4, !dbg !901
  %72 = call i32 @left_chunk(ptr noundef %70, i32 noundef %71) #7, !dbg !902
  %73 = call zeroext i1 @chunk_used(ptr noundef %69, i32 noundef %72) #7, !dbg !903
  br i1 %73, label %75, label %74, !dbg !904

74:                                               ; preds = %68
  store i1 false, ptr %3, align 1, !dbg !905
  br label %110, !dbg !905

75:                                               ; preds = %68
  br label %76, !dbg !907

76:                                               ; preds = %75
  br label %77, !dbg !908

77:                                               ; preds = %76
  %78 = load ptr, ptr %4, align 4, !dbg !909
  %79 = load ptr, ptr %4, align 4, !dbg !912
  %80 = load i32, ptr %5, align 4, !dbg !913
  %81 = call i32 @right_chunk(ptr noundef %79, i32 noundef %80) #7, !dbg !914
  %82 = call zeroext i1 @chunk_used(ptr noundef %78, i32 noundef %81) #7, !dbg !915
  br i1 %82, label %84, label %83, !dbg !916

83:                                               ; preds = %77
  store i1 false, ptr %3, align 1, !dbg !917
  br label %110, !dbg !917

84:                                               ; preds = %77
  br label %85, !dbg !919

85:                                               ; preds = %84
  %86 = load ptr, ptr %4, align 4, !dbg !920
  %87 = load i32, ptr %5, align 4, !dbg !922
  %88 = call zeroext i1 @solo_free_header(ptr noundef %86, i32 noundef %87) #7, !dbg !923
  br i1 %88, label %108, label %89, !dbg !924

89:                                               ; preds = %85
  br label %90, !dbg !925

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 4, !dbg !927
  %92 = load ptr, ptr %4, align 4, !dbg !930
  %93 = load i32, ptr %5, align 4, !dbg !931
  %94 = call i32 @prev_free_chunk(ptr noundef %92, i32 noundef %93) #7, !dbg !932
  %95 = call zeroext i1 @in_bounds(ptr noundef %91, i32 noundef %94) #7, !dbg !933
  br i1 %95, label %97, label %96, !dbg !934

96:                                               ; preds = %90
  store i1 false, ptr %3, align 1, !dbg !935
  br label %110, !dbg !935

97:                                               ; preds = %90
  br label %98, !dbg !937

98:                                               ; preds = %97
  br label %99, !dbg !938

99:                                               ; preds = %98
  %100 = load ptr, ptr %4, align 4, !dbg !939
  %101 = load ptr, ptr %4, align 4, !dbg !942
  %102 = load i32, ptr %5, align 4, !dbg !943
  %103 = call i32 @next_free_chunk(ptr noundef %101, i32 noundef %102) #7, !dbg !944
  %104 = call zeroext i1 @in_bounds(ptr noundef %100, i32 noundef %103) #7, !dbg !945
  br i1 %104, label %106, label %105, !dbg !946

105:                                              ; preds = %99
  store i1 false, ptr %3, align 1, !dbg !947
  br label %110, !dbg !947

106:                                              ; preds = %99
  br label %107, !dbg !949

107:                                              ; preds = %106
  br label %108, !dbg !950

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %66
  store i1 true, ptr %3, align 1, !dbg !951
  br label %110, !dbg !951

110:                                              ; preds = %109, %105, %96, %83, %74, %64, %53, %42, %31, %24, %11
  %111 = load i1, ptr %3, align 1, !dbg !952
  ret i1 %111, !dbg !952
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @bucket_idx(ptr noundef %0, i32 noundef %1) #0 !dbg !953 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !958, metadata !DIExpression()), !dbg !961
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !959, metadata !DIExpression()), !dbg !962
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %5, metadata !960, metadata !DIExpression()), !dbg !964
  %6 = load i32, ptr %4, align 4, !dbg !965
  %7 = load ptr, ptr %3, align 4, !dbg !966
  %8 = call i32 @min_chunk_size(ptr noundef %7) #7, !dbg !967
  %9 = sub i32 %6, %8, !dbg !968
  %10 = add i32 %9, 1, !dbg !969
  store i32 %10, ptr %5, align 4, !dbg !964
  %11 = load i32, ptr %5, align 4, !dbg !970
  %12 = call i32 @llvm.ctlz.i32(i32 %11, i1 false), !dbg !971
  %13 = sub nsw i32 31, %12, !dbg !972
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !973
  ret i32 %13, !dbg !974
}

; Function Attrs: inlinehint nounwind optsize
define internal void @check_nexts(ptr noundef %0, i32 noundef %1) #0 !dbg !975 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !979, metadata !DIExpression()), !dbg !986
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !980, metadata !DIExpression()), !dbg !987
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !988
  call void @llvm.dbg.declare(metadata ptr %5, metadata !981, metadata !DIExpression()), !dbg !989
  %9 = load ptr, ptr %3, align 4, !dbg !990
  %10 = getelementptr inbounds %struct.z_heap, ptr %9, i32 0, i32 3, !dbg !991
  %11 = load i32, ptr %4, align 4, !dbg !992
  %12 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %10, i32 0, i32 %11, !dbg !990
  store ptr %12, ptr %5, align 4, !dbg !989
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #8, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %6, metadata !983, metadata !DIExpression()), !dbg !994
  %13 = load ptr, ptr %3, align 4, !dbg !995
  %14 = getelementptr inbounds %struct.z_heap, ptr %13, i32 0, i32 2, !dbg !996
  %15 = load i32, ptr %14, align 4, !dbg !996
  %16 = load i32, ptr %4, align 4, !dbg !997
  %17 = shl i32 1, %16, !dbg !998
  %18 = and i32 %15, %17, !dbg !999
  %19 = icmp eq i32 %18, 0, !dbg !1000
  %20 = zext i1 %19 to i8, !dbg !994
  store i8 %20, ptr %6, align 1, !dbg !994
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #8, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %7, metadata !984, metadata !DIExpression()), !dbg !1002
  %21 = load ptr, ptr %5, align 4, !dbg !1003
  %22 = getelementptr inbounds %struct.z_heap_bucket, ptr %21, i32 0, i32 0, !dbg !1004
  %23 = load i32, ptr %22, align 4, !dbg !1004
  %24 = icmp eq i32 %23, 0, !dbg !1005
  %25 = zext i1 %24 to i8, !dbg !1002
  store i8 %25, ptr %7, align 1, !dbg !1002
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #8, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %8, metadata !985, metadata !DIExpression()), !dbg !1007
  %26 = load i8, ptr %6, align 1, !dbg !1008, !range !621, !noundef !149
  %27 = trunc i8 %26 to i1, !dbg !1008
  %28 = zext i1 %27 to i32, !dbg !1008
  %29 = load i8, ptr %7, align 1, !dbg !1009, !range !621, !noundef !149
  %30 = trunc i8 %29 to i1, !dbg !1009
  %31 = zext i1 %30 to i32, !dbg !1009
  %32 = icmp eq i32 %28, %31, !dbg !1010
  %33 = zext i1 %32 to i8, !dbg !1007
  store i8 %33, ptr %8, align 1, !dbg !1007
  %34 = load i8, ptr %8, align 1, !dbg !1011, !range !621, !noundef !149
  %35 = trunc i8 %34 to i1, !dbg !1011
  %36 = load ptr, ptr %5, align 4, !dbg !1012
  %37 = getelementptr inbounds %struct.z_heap_bucket, ptr %36, i32 0, i32 0, !dbg !1014
  %38 = load i32, ptr %37, align 4, !dbg !1014
  %39 = icmp ne i32 %38, 0, !dbg !1015
  br i1 %39, label %40, label %41, !dbg !1016

40:                                               ; preds = %2
  br label %41, !dbg !1017

41:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #8, !dbg !1019
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #8, !dbg !1019
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #8, !dbg !1019
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1019
  ret void, !dbg !1019
}

; Function Attrs: inlinehint nounwind optsize
define internal void @set_chunk_used(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 !dbg !1020 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1024, metadata !DIExpression()), !dbg !1029
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1025, metadata !DIExpression()), !dbg !1030
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1026, metadata !DIExpression()), !dbg !1031
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1027, metadata !DIExpression()), !dbg !1033
  %10 = load ptr, ptr %4, align 4, !dbg !1034
  %11 = call ptr @chunk_buf(ptr noundef %10) #7, !dbg !1035
  store ptr %11, ptr %7, align 4, !dbg !1033
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1028, metadata !DIExpression()), !dbg !1037
  %12 = load ptr, ptr %7, align 4, !dbg !1038
  %13 = load i32, ptr %5, align 4, !dbg !1039
  %14 = getelementptr inbounds %struct.chunk_unit_t, ptr %12, i32 %13, !dbg !1038
  store ptr %14, ptr %8, align 4, !dbg !1037
  %15 = load ptr, ptr %4, align 4, !dbg !1040
  %16 = call zeroext i1 @big_heap(ptr noundef %15) #7, !dbg !1042
  br i1 %16, label %17, label %31, !dbg !1043

17:                                               ; preds = %3
  %18 = load i8, ptr %6, align 1, !dbg !1044, !range !621, !noundef !149
  %19 = trunc i8 %18 to i1, !dbg !1044
  br i1 %19, label %20, label %25, !dbg !1047

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 4, !dbg !1048
  %22 = getelementptr inbounds i32, ptr %21, i32 1, !dbg !1050
  %23 = load i32, ptr %22, align 4, !dbg !1051
  %24 = or i32 %23, 1, !dbg !1051
  store i32 %24, ptr %22, align 4, !dbg !1051
  br label %30, !dbg !1052

25:                                               ; preds = %17
  %26 = load ptr, ptr %8, align 4, !dbg !1053
  %27 = getelementptr inbounds i32, ptr %26, i32 1, !dbg !1055
  %28 = load i32, ptr %27, align 4, !dbg !1056
  %29 = and i32 %28, -2, !dbg !1056
  store i32 %29, ptr %27, align 4, !dbg !1056
  br label %30

30:                                               ; preds = %25, %20
  br label %49, !dbg !1057

31:                                               ; preds = %3
  %32 = load i8, ptr %6, align 1, !dbg !1058, !range !621, !noundef !149
  %33 = trunc i8 %32 to i1, !dbg !1058
  br i1 %33, label %34, label %41, !dbg !1061

34:                                               ; preds = %31
  %35 = load ptr, ptr %8, align 4, !dbg !1062
  %36 = getelementptr inbounds i16, ptr %35, i32 1, !dbg !1064
  %37 = load i16, ptr %36, align 2, !dbg !1065
  %38 = zext i16 %37 to i32, !dbg !1065
  %39 = or i32 %38, 1, !dbg !1065
  %40 = trunc i32 %39 to i16, !dbg !1065
  store i16 %40, ptr %36, align 2, !dbg !1065
  br label %48, !dbg !1066

41:                                               ; preds = %31
  %42 = load ptr, ptr %8, align 4, !dbg !1067
  %43 = getelementptr inbounds i16, ptr %42, i32 1, !dbg !1069
  %44 = load i16, ptr %43, align 2, !dbg !1070
  %45 = zext i16 %44 to i32, !dbg !1070
  %46 = and i32 %45, -2, !dbg !1070
  %47 = trunc i32 %46 to i16, !dbg !1070
  store i16 %47, ptr %43, align 2, !dbg !1070
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !1071
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1071
  ret void, !dbg !1071
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @next_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1072 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1074, metadata !DIExpression()), !dbg !1076
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1075, metadata !DIExpression()), !dbg !1077
  %5 = load ptr, ptr %3, align 4, !dbg !1078
  %6 = load i32, ptr %4, align 4, !dbg !1079
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 3) #7, !dbg !1080
  ret i32 %7, !dbg !1081
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @chunk_used(ptr noundef %0, i32 noundef %1) #0 !dbg !1082 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1084, metadata !DIExpression()), !dbg !1086
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1085, metadata !DIExpression()), !dbg !1087
  %5 = load ptr, ptr %3, align 4, !dbg !1088
  %6 = load i32, ptr %4, align 4, !dbg !1089
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #7, !dbg !1090
  %8 = and i32 %7, 1, !dbg !1091
  %9 = icmp ne i32 %8, 0, !dbg !1090
  ret i1 %9, !dbg !1092
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @solo_free_header(ptr noundef %0, i32 noundef %1) #0 !dbg !1093 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1095, metadata !DIExpression()), !dbg !1097
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1096, metadata !DIExpression()), !dbg !1098
  %5 = load ptr, ptr %3, align 4, !dbg !1099
  %6 = call zeroext i1 @big_heap(ptr noundef %5) #7, !dbg !1100
  br i1 %6, label %7, label %12, !dbg !1101

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 4, !dbg !1102
  %9 = load i32, ptr %4, align 4, !dbg !1103
  %10 = call i32 @chunk_size(ptr noundef %8, i32 noundef %9) #7, !dbg !1104
  %11 = icmp eq i32 %10, 1, !dbg !1105
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i1 [ false, %2 ], [ %11, %7 ], !dbg !1106
  ret i1 %13, !dbg !1107
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @left_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1108 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1112
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1111, metadata !DIExpression()), !dbg !1113
  %5 = load i32, ptr %4, align 4, !dbg !1114
  %6 = load ptr, ptr %3, align 4, !dbg !1115
  %7 = load i32, ptr %4, align 4, !dbg !1116
  %8 = call i32 @chunk_field(ptr noundef %6, i32 noundef %7, i8 noundef zeroext 0) #7, !dbg !1117
  %9 = sub i32 %5, %8, !dbg !1118
  ret i32 %9, !dbg !1119
}

; Function Attrs: nounwind optsize
define hidden void @sys_heap_stress(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) #1 !dbg !1120 {
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
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1137, metadata !DIExpression()), !dbg !1175
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1138, metadata !DIExpression()), !dbg !1176
  store ptr %2, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1139, metadata !DIExpression()), !dbg !1177
  store i32 %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1140, metadata !DIExpression()), !dbg !1178
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1141, metadata !DIExpression()), !dbg !1179
  store ptr %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1142, metadata !DIExpression()), !dbg !1180
  store i32 %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1143, metadata !DIExpression()), !dbg !1181
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1144, metadata !DIExpression()), !dbg !1182
  store ptr %8, ptr %18, align 4
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1145, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 36, ptr %19) #8, !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1146, metadata !DIExpression()), !dbg !1185
  %27 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 0, !dbg !1186
  %28 = load ptr, ptr %10, align 4, !dbg !1187
  store ptr %28, ptr %27, align 4, !dbg !1186
  %29 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 1, !dbg !1186
  %30 = load ptr, ptr %11, align 4, !dbg !1188
  store ptr %30, ptr %29, align 4, !dbg !1186
  %31 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1186
  %32 = load ptr, ptr %12, align 4, !dbg !1189
  store ptr %32, ptr %31, align 4, !dbg !1186
  %33 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 3, !dbg !1186
  %34 = load i32, ptr %13, align 4, !dbg !1190
  store i32 %34, ptr %33, align 4, !dbg !1186
  %35 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1186
  %36 = load ptr, ptr %15, align 4, !dbg !1191
  store ptr %36, ptr %35, align 4, !dbg !1186
  %37 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 5, !dbg !1186
  %38 = load i32, ptr %16, align 4, !dbg !1192
  %39 = udiv i32 %38, 8, !dbg !1193
  store i32 %39, ptr %37, align 4, !dbg !1186
  %40 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1186
  store i32 0, ptr %40, align 4, !dbg !1186
  %41 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1186
  store i32 0, ptr %41, align 4, !dbg !1186
  %42 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 8, !dbg !1186
  %43 = load i32, ptr %17, align 4, !dbg !1194
  store i32 %43, ptr %42, align 4, !dbg !1186
  %44 = load ptr, ptr %18, align 4, !dbg !1195
  call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 24, i1 false), !dbg !1196
  call void @llvm.memcpy.p0.p0.i32(ptr align 8 %44, ptr align 8 %20, i32 24, i1 false), !dbg !1196
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1163, metadata !DIExpression()), !dbg !1198
  store i32 0, ptr %21, align 4, !dbg !1198
  br label %45, !dbg !1197

45:                                               ; preds = %141, %9
  %46 = load i32, ptr %21, align 4, !dbg !1199
  %47 = load i32, ptr %14, align 4, !dbg !1200
  %48 = icmp ult i32 %46, %47, !dbg !1201
  br i1 %48, label %50, label %49, !dbg !1202

49:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8, !dbg !1203
  br label %144

50:                                               ; preds = %45
  %51 = call zeroext i1 @rand_alloc_choice(ptr noundef %19) #7, !dbg !1204
  br i1 %51, label %52, label %93, !dbg !1205

52:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8, !dbg !1206
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1165, metadata !DIExpression()), !dbg !1207
  %53 = call i32 @rand_alloc_size(ptr noundef %19) #7, !dbg !1208
  store i32 %53, ptr %22, align 4, !dbg !1207
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1170, metadata !DIExpression()), !dbg !1210
  %54 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 0, !dbg !1211
  %55 = load ptr, ptr %54, align 4, !dbg !1211
  %56 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1212
  %57 = load ptr, ptr %56, align 4, !dbg !1212
  %58 = load i32, ptr %22, align 4, !dbg !1213
  %59 = call ptr %55(ptr noundef %57, i32 noundef %58) #7, !dbg !1214
  store ptr %59, ptr %23, align 4, !dbg !1210
  %60 = load ptr, ptr %18, align 4, !dbg !1215
  %61 = getelementptr inbounds %struct.z_heap_stress_result, ptr %60, i32 0, i32 0, !dbg !1216
  %62 = load i32, ptr %61, align 8, !dbg !1217
  %63 = add i32 %62, 1, !dbg !1217
  store i32 %63, ptr %61, align 8, !dbg !1217
  %64 = load ptr, ptr %23, align 4, !dbg !1218
  %65 = icmp ne ptr %64, null, !dbg !1220
  br i1 %65, label %66, label %92, !dbg !1221

66:                                               ; preds = %52
  %67 = load ptr, ptr %18, align 4, !dbg !1222
  %68 = getelementptr inbounds %struct.z_heap_stress_result, ptr %67, i32 0, i32 1, !dbg !1224
  %69 = load i32, ptr %68, align 4, !dbg !1225
  %70 = add i32 %69, 1, !dbg !1225
  store i32 %70, ptr %68, align 4, !dbg !1225
  %71 = load ptr, ptr %23, align 4, !dbg !1226
  %72 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1227
  %73 = load ptr, ptr %72, align 4, !dbg !1227
  %74 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1228
  %75 = load i32, ptr %74, align 4, !dbg !1228
  %76 = getelementptr inbounds %struct.z_heap_stress_block, ptr %73, i32 %75, !dbg !1229
  %77 = getelementptr inbounds %struct.z_heap_stress_block, ptr %76, i32 0, i32 0, !dbg !1230
  store ptr %71, ptr %77, align 4, !dbg !1231
  %78 = load i32, ptr %22, align 4, !dbg !1232
  %79 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1233
  %80 = load ptr, ptr %79, align 4, !dbg !1233
  %81 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1234
  %82 = load i32, ptr %81, align 4, !dbg !1234
  %83 = getelementptr inbounds %struct.z_heap_stress_block, ptr %80, i32 %82, !dbg !1235
  %84 = getelementptr inbounds %struct.z_heap_stress_block, ptr %83, i32 0, i32 1, !dbg !1236
  store i32 %78, ptr %84, align 4, !dbg !1237
  %85 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1238
  %86 = load i32, ptr %85, align 4, !dbg !1239
  %87 = add i32 %86, 1, !dbg !1239
  store i32 %87, ptr %85, align 4, !dbg !1239
  %88 = load i32, ptr %22, align 4, !dbg !1240
  %89 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1241
  %90 = load i32, ptr %89, align 4, !dbg !1242
  %91 = add i32 %90, %88, !dbg !1242
  store i32 %91, ptr %89, align 4, !dbg !1242
  br label %92, !dbg !1243

92:                                               ; preds = %66, %52
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8, !dbg !1244
  br label %133, !dbg !1245

93:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1171, metadata !DIExpression()), !dbg !1247
  %94 = call i32 @rand_free_choice(ptr noundef %19) #7, !dbg !1248
  store i32 %94, ptr %24, align 4, !dbg !1247
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1173, metadata !DIExpression()), !dbg !1250
  %95 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1251
  %96 = load ptr, ptr %95, align 4, !dbg !1251
  %97 = load i32, ptr %24, align 4, !dbg !1252
  %98 = getelementptr inbounds %struct.z_heap_stress_block, ptr %96, i32 %97, !dbg !1253
  %99 = getelementptr inbounds %struct.z_heap_stress_block, ptr %98, i32 0, i32 0, !dbg !1254
  %100 = load ptr, ptr %99, align 4, !dbg !1254
  store ptr %100, ptr %25, align 4, !dbg !1250
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1174, metadata !DIExpression()), !dbg !1256
  %101 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1257
  %102 = load ptr, ptr %101, align 4, !dbg !1257
  %103 = load i32, ptr %24, align 4, !dbg !1258
  %104 = getelementptr inbounds %struct.z_heap_stress_block, ptr %102, i32 %103, !dbg !1259
  %105 = getelementptr inbounds %struct.z_heap_stress_block, ptr %104, i32 0, i32 1, !dbg !1260
  %106 = load i32, ptr %105, align 4, !dbg !1260
  store i32 %106, ptr %26, align 4, !dbg !1256
  %107 = load ptr, ptr %18, align 4, !dbg !1261
  %108 = getelementptr inbounds %struct.z_heap_stress_result, ptr %107, i32 0, i32 2, !dbg !1262
  %109 = load i32, ptr %108, align 8, !dbg !1263
  %110 = add i32 %109, 1, !dbg !1263
  store i32 %110, ptr %108, align 8, !dbg !1263
  %111 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1264
  %112 = load ptr, ptr %111, align 4, !dbg !1264
  %113 = load i32, ptr %24, align 4, !dbg !1265
  %114 = getelementptr inbounds %struct.z_heap_stress_block, ptr %112, i32 %113, !dbg !1266
  %115 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 4, !dbg !1267
  %116 = load ptr, ptr %115, align 4, !dbg !1267
  %117 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1268
  %118 = load i32, ptr %117, align 4, !dbg !1268
  %119 = sub i32 %118, 1, !dbg !1269
  %120 = getelementptr inbounds %struct.z_heap_stress_block, ptr %116, i32 %119, !dbg !1270
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %114, ptr align 4 %120, i32 8, i1 false), !dbg !1270
  %121 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 6, !dbg !1271
  %122 = load i32, ptr %121, align 4, !dbg !1272
  %123 = add i32 %122, -1, !dbg !1272
  store i32 %123, ptr %121, align 4, !dbg !1272
  %124 = load i32, ptr %26, align 4, !dbg !1273
  %125 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1274
  %126 = load i32, ptr %125, align 4, !dbg !1275
  %127 = sub i32 %126, %124, !dbg !1275
  store i32 %127, ptr %125, align 4, !dbg !1275
  %128 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 1, !dbg !1276
  %129 = load ptr, ptr %128, align 4, !dbg !1276
  %130 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 2, !dbg !1277
  %131 = load ptr, ptr %130, align 4, !dbg !1277
  %132 = load ptr, ptr %25, align 4, !dbg !1278
  call void %129(ptr noundef %131, ptr noundef %132) #7, !dbg !1279
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8, !dbg !1280
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8, !dbg !1280
  br label %133

133:                                              ; preds = %93, %92
  %134 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %19, i32 0, i32 7, !dbg !1281
  %135 = load i32, ptr %134, align 4, !dbg !1281
  %136 = zext i32 %135 to i64, !dbg !1282
  %137 = load ptr, ptr %18, align 4, !dbg !1283
  %138 = getelementptr inbounds %struct.z_heap_stress_result, ptr %137, i32 0, i32 3, !dbg !1284
  %139 = load i64, ptr %138, align 8, !dbg !1285
  %140 = add i64 %139, %136, !dbg !1285
  store i64 %140, ptr %138, align 8, !dbg !1285
  br label %141, !dbg !1286

141:                                              ; preds = %133
  %142 = load i32, ptr %21, align 4, !dbg !1287
  %143 = add i32 %142, 1, !dbg !1287
  store i32 %143, ptr %21, align 4, !dbg !1287
  br label %45, !dbg !1203, !llvm.loop !1288

144:                                              ; preds = %49
  call void @llvm.lifetime.end.p0(i64 36, ptr %19) #8, !dbg !1290
  ret void, !dbg !1290
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind optsize
define internal zeroext i1 @rand_alloc_choice(ptr noundef %0) #1 !dbg !1291 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1296, metadata !DIExpression()), !dbg !1303
  %7 = load ptr, ptr %3, align 4, !dbg !1304
  %8 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %7, i32 0, i32 6, !dbg !1305
  %9 = load i32, ptr %8, align 4, !dbg !1305
  %10 = icmp eq i32 %9, 0, !dbg !1306
  br i1 %10, label %11, label %12, !dbg !1307

11:                                               ; preds = %1
  store i1 true, ptr %2, align 1, !dbg !1308
  br label %55, !dbg !1308

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !1310
  %14 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %13, i32 0, i32 6, !dbg !1311
  %15 = load i32, ptr %14, align 4, !dbg !1311
  %16 = load ptr, ptr %3, align 4, !dbg !1312
  %17 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %16, i32 0, i32 5, !dbg !1313
  %18 = load i32, ptr %17, align 4, !dbg !1313
  %19 = icmp uge i32 %15, %18, !dbg !1314
  br i1 %19, label %20, label %21, !dbg !1315

20:                                               ; preds = %12
  store i1 false, ptr %2, align 1, !dbg !1316
  br label %55, !dbg !1316

21:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8, !dbg !1318
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1297, metadata !DIExpression()), !dbg !1319
  %22 = load ptr, ptr %3, align 4, !dbg !1320
  %23 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %22, i32 0, i32 7, !dbg !1321
  %24 = load i32, ptr %23, align 4, !dbg !1321
  %25 = mul i32 100, %24, !dbg !1322
  %26 = load ptr, ptr %3, align 4, !dbg !1323
  %27 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %26, i32 0, i32 3, !dbg !1324
  %28 = load i32, ptr %27, align 4, !dbg !1324
  %29 = udiv i32 %25, %28, !dbg !1325
  store i32 %29, ptr %4, align 4, !dbg !1319
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1326
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1301, metadata !DIExpression()), !dbg !1327
  %30 = load ptr, ptr %3, align 4, !dbg !1328
  %31 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %30, i32 0, i32 8, !dbg !1329
  %32 = load i32, ptr %31, align 4, !dbg !1329
  %33 = icmp ne i32 %32, 0, !dbg !1328
  br i1 %33, label %34, label %38, !dbg !1328

34:                                               ; preds = %21
  %35 = load ptr, ptr %3, align 4, !dbg !1330
  %36 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %35, i32 0, i32 8, !dbg !1331
  %37 = load i32, ptr %36, align 4, !dbg !1331
  br label %39, !dbg !1328

38:                                               ; preds = %21
  br label %39, !dbg !1328

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 1, %38 ], !dbg !1328
  store i32 %40, ptr %5, align 4, !dbg !1327
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1332
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1302, metadata !DIExpression()), !dbg !1333
  store i32 -1, ptr %6, align 4, !dbg !1333
  %41 = load i32, ptr %4, align 4, !dbg !1334
  %42 = load ptr, ptr %3, align 4, !dbg !1336
  %43 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %42, i32 0, i32 8, !dbg !1337
  %44 = load i32, ptr %43, align 4, !dbg !1337
  %45 = icmp ult i32 %41, %44, !dbg !1338
  br i1 %45, label %46, label %51, !dbg !1339

46:                                               ; preds = %39
  %47 = load i32, ptr %4, align 4, !dbg !1340
  %48 = load i32, ptr %5, align 4, !dbg !1342
  %49 = udiv i32 -2147483648, %48, !dbg !1343
  %50 = mul i32 %47, %49, !dbg !1344
  store i32 %50, ptr %6, align 4, !dbg !1345
  br label %51, !dbg !1346

51:                                               ; preds = %46, %39
  %52 = call i32 @rand32() #7, !dbg !1347
  %53 = load i32, ptr %6, align 4, !dbg !1348
  %54 = icmp ugt i32 %52, %53, !dbg !1349
  store i1 %54, ptr %2, align 1, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8, !dbg !1351
  br label %55

55:                                               ; preds = %51, %20, %11
  %56 = load i1, ptr %2, align 1, !dbg !1352
  ret i1 %56, !dbg !1352
}

; Function Attrs: nounwind optsize
define internal i32 @rand_alloc_size(ptr noundef %0) #1 !dbg !1353 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1357, metadata !DIExpression()), !dbg !1359
  %4 = load ptr, ptr %2, align 4, !dbg !1360
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1358, metadata !DIExpression()), !dbg !1362
  %5 = call i32 @rand32() #7, !dbg !1363
  %6 = call i32 @llvm.ctlz.i32(i32 %5, i1 false), !dbg !1364
  %7 = add nsw i32 4, %6, !dbg !1365
  store i32 %7, ptr %3, align 4, !dbg !1362
  %8 = call i32 @rand32() #7, !dbg !1366
  %9 = load i32, ptr %3, align 4, !dbg !1367
  %10 = shl i32 1, %9, !dbg !1368
  %11 = sub i32 %10, 1, !dbg !1369
  %12 = and i32 %8, %11, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !1371
  ret i32 %12, !dbg !1372
}

; Function Attrs: nounwind optsize
define internal i32 @rand_free_choice(ptr noundef %0) #1 !dbg !1373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1375, metadata !DIExpression()), !dbg !1376
  %3 = call i32 @rand32() #7, !dbg !1377
  %4 = load ptr, ptr %2, align 4, !dbg !1378
  %5 = getelementptr inbounds %struct.z_heap_stress_rec, ptr %4, i32 0, i32 6, !dbg !1379
  %6 = load i32, ptr %5, align 4, !dbg !1379
  %7 = urem i32 %3, %6, !dbg !1380
  ret i32 %7, !dbg !1381
}

; Function Attrs: nounwind optsize
define hidden void @heap_print_info(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !1382 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1386, metadata !DIExpression()), !dbg !1407
  %16 = zext i1 %1 to i8
  store i8 %16, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1387, metadata !DIExpression()), !dbg !1408
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1388, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8, !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1389, metadata !DIExpression()), !dbg !1411
  %17 = load ptr, ptr %3, align 4, !dbg !1412
  %18 = load ptr, ptr %3, align 4, !dbg !1413
  %19 = getelementptr inbounds %struct.z_heap, ptr %18, i32 0, i32 1, !dbg !1414
  %20 = load i32, ptr %19, align 4, !dbg !1414
  %21 = call i32 @bucket_idx(ptr noundef %17, i32 noundef %20) #7, !dbg !1415
  %22 = add nsw i32 %21, 1, !dbg !1416
  store i32 %22, ptr %6, align 4, !dbg !1411
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1390, metadata !DIExpression()), !dbg !1418
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1391, metadata !DIExpression()), !dbg !1419
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1392, metadata !DIExpression()), !dbg !1420
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8, !dbg !1417
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1393, metadata !DIExpression()), !dbg !1421
  %23 = load ptr, ptr %3, align 4, !dbg !1422
  %24 = call ptr @chunk_buf(ptr noundef %23) #7, !dbg !1423
  %25 = load ptr, ptr %3, align 4, !dbg !1424
  %26 = getelementptr inbounds %struct.z_heap, ptr %25, i32 0, i32 1, !dbg !1425
  %27 = load i32, ptr %26, align 4, !dbg !1425
  %28 = load i32, ptr %6, align 4, !dbg !1426
  call void (ptr, ...) @printk(ptr noundef @.str, ptr noundef %24, i32 noundef %27, i32 noundef %28) #7, !dbg !1427
  call void (ptr, ...) @printk(ptr noundef @.str.1) #7, !dbg !1428
  store i32 0, ptr %5, align 4, !dbg !1429
  br label %29, !dbg !1430

29:                                               ; preds = %85, %2
  %30 = load i32, ptr %5, align 4, !dbg !1431
  %31 = load i32, ptr %6, align 4, !dbg !1432
  %32 = icmp slt i32 %30, %31, !dbg !1433
  br i1 %32, label %33, label %88, !dbg !1434

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1394, metadata !DIExpression()), !dbg !1436
  %34 = load ptr, ptr %3, align 4, !dbg !1437
  %35 = getelementptr inbounds %struct.z_heap, ptr %34, i32 0, i32 3, !dbg !1438
  %36 = load i32, ptr %5, align 4, !dbg !1439
  %37 = getelementptr inbounds [0 x %struct.z_heap_bucket], ptr %35, i32 0, i32 %36, !dbg !1437
  %38 = getelementptr inbounds %struct.z_heap_bucket, ptr %37, i32 0, i32 0, !dbg !1440
  %39 = load i32, ptr %38, align 4, !dbg !1440
  store i32 %39, ptr %11, align 4, !dbg !1436
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8, !dbg !1441
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1398, metadata !DIExpression()), !dbg !1442
  store i32 0, ptr %12, align 4, !dbg !1442
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8, !dbg !1443
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1399, metadata !DIExpression()), !dbg !1444
  store i32 0, ptr %13, align 4, !dbg !1444
  %40 = load i32, ptr %11, align 4, !dbg !1445
  %41 = icmp ne i32 %40, 0, !dbg !1445
  br i1 %41, label %42, label %68, !dbg !1446

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1400, metadata !DIExpression()), !dbg !1448
  %43 = load i32, ptr %11, align 4, !dbg !1449
  store i32 %43, ptr %14, align 4, !dbg !1448
  br label %44, !dbg !1450

44:                                               ; preds = %63, %42
  %45 = load i32, ptr %13, align 4, !dbg !1451
  %46 = add nsw i32 %45, 1, !dbg !1451
  store i32 %46, ptr %13, align 4, !dbg !1451
  %47 = load i32, ptr %12, align 4, !dbg !1453
  %48 = load ptr, ptr %3, align 4, !dbg !1454
  %49 = load i32, ptr %14, align 4, !dbg !1455
  %50 = call i32 @chunk_size(ptr noundef %48, i32 noundef %49) #7, !dbg !1456
  %51 = icmp ugt i32 %47, %50, !dbg !1457
  br i1 %51, label %52, label %54, !dbg !1458

52:                                               ; preds = %44
  %53 = load i32, ptr %12, align 4, !dbg !1459
  br label %58, !dbg !1458

54:                                               ; preds = %44
  %55 = load ptr, ptr %3, align 4, !dbg !1460
  %56 = load i32, ptr %14, align 4, !dbg !1461
  %57 = call i32 @chunk_size(ptr noundef %55, i32 noundef %56) #7, !dbg !1462
  br label %58, !dbg !1458

58:                                               ; preds = %54, %52
  %59 = phi i32 [ %53, %52 ], [ %57, %54 ], !dbg !1458
  store i32 %59, ptr %12, align 4, !dbg !1463
  %60 = load ptr, ptr %3, align 4, !dbg !1464
  %61 = load i32, ptr %14, align 4, !dbg !1465
  %62 = call i32 @next_free_chunk(ptr noundef %60, i32 noundef %61) #7, !dbg !1466
  store i32 %62, ptr %14, align 4, !dbg !1467
  br label %63, !dbg !1468

63:                                               ; preds = %58
  %64 = load i32, ptr %14, align 4, !dbg !1469
  %65 = load i32, ptr %11, align 4, !dbg !1470
  %66 = icmp ne i32 %64, %65, !dbg !1471
  br i1 %66, label %44, label %67, !dbg !1468, !llvm.loop !1472

67:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8, !dbg !1474
  br label %68, !dbg !1475

68:                                               ; preds = %67, %33
  %69 = load i32, ptr %13, align 4, !dbg !1476
  %70 = icmp ne i32 %69, 0, !dbg !1476
  br i1 %70, label %71, label %84, !dbg !1478

71:                                               ; preds = %68
  %72 = load i32, ptr %5, align 4, !dbg !1479
  %73 = load i32, ptr %5, align 4, !dbg !1481
  %74 = shl i32 1, %73, !dbg !1482
  %75 = sub nsw i32 %74, 1, !dbg !1483
  %76 = load ptr, ptr %3, align 4, !dbg !1484
  %77 = call i32 @min_chunk_size(ptr noundef %76) #7, !dbg !1485
  %78 = add i32 %75, %77, !dbg !1486
  %79 = load i32, ptr %13, align 4, !dbg !1487
  %80 = load i32, ptr %12, align 4, !dbg !1488
  %81 = load ptr, ptr %3, align 4, !dbg !1489
  %82 = load i32, ptr %12, align 4, !dbg !1490
  %83 = call i32 @chunksz_to_bytes(ptr noundef %81, i32 noundef %82) #7, !dbg !1491
  call void (ptr, ...) @printk(ptr noundef @.str.2, i32 noundef %72, i32 noundef %78, i32 noundef %79, i32 noundef %80, i32 noundef %83) #7, !dbg !1492
  br label %84, !dbg !1493

84:                                               ; preds = %71, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8, !dbg !1494
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8, !dbg !1494
  br label %85, !dbg !1495

85:                                               ; preds = %84
  %86 = load i32, ptr %5, align 4, !dbg !1496
  %87 = add nsw i32 %86, 1, !dbg !1496
  store i32 %87, ptr %5, align 4, !dbg !1496
  br label %29, !dbg !1497, !llvm.loop !1498

88:                                               ; preds = %29
  %89 = load i8, ptr %4, align 1, !dbg !1500, !range !621, !noundef !149
  %90 = trunc i8 %89 to i1, !dbg !1500
  br i1 %90, label %91, label %127, !dbg !1501

91:                                               ; preds = %88
  call void (ptr, ...) @printk(ptr noundef @.str.3) #7, !dbg !1502
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1403, metadata !DIExpression()), !dbg !1504
  store i32 0, ptr %15, align 4, !dbg !1504
  br label %92, !dbg !1503

92:                                               ; preds = %122, %91
  %93 = load i32, ptr %15, align 4, !dbg !1505
  %94 = load ptr, ptr %3, align 4, !dbg !1508
  %95 = load i32, ptr %15, align 4, !dbg !1509
  %96 = call zeroext i1 @chunk_used(ptr noundef %94, i32 noundef %95) #7, !dbg !1510
  br i1 %96, label %97, label %98, !dbg !1510

97:                                               ; preds = %92
  br label %104, !dbg !1510

98:                                               ; preds = %92
  %99 = load ptr, ptr %3, align 4, !dbg !1511
  %100 = load i32, ptr %15, align 4, !dbg !1512
  %101 = call zeroext i1 @solo_free_header(ptr noundef %99, i32 noundef %100) #7, !dbg !1513
  %102 = zext i1 %101 to i64, !dbg !1513
  %103 = select i1 %101, i32 46, i32 45, !dbg !1513
  br label %104, !dbg !1510

104:                                              ; preds = %98, %97
  %105 = phi i32 [ 42, %97 ], [ %103, %98 ], !dbg !1510
  %106 = load ptr, ptr %3, align 4, !dbg !1514
  %107 = load i32, ptr %15, align 4, !dbg !1515
  %108 = call i32 @chunk_size(ptr noundef %106, i32 noundef %107) #7, !dbg !1516
  %109 = load ptr, ptr %3, align 4, !dbg !1517
  %110 = load i32, ptr %15, align 4, !dbg !1518
  %111 = call i32 @left_chunk(ptr noundef %109, i32 noundef %110) #7, !dbg !1519
  %112 = load ptr, ptr %3, align 4, !dbg !1520
  %113 = load i32, ptr %15, align 4, !dbg !1521
  %114 = call i32 @right_chunk(ptr noundef %112, i32 noundef %113) #7, !dbg !1522
  call void (ptr, ...) @printk(ptr noundef @.str.4, i32 noundef %93, i32 noundef %105, i32 noundef %108, i32 noundef %111, i32 noundef %114) #7, !dbg !1523
  %115 = load i32, ptr %15, align 4, !dbg !1524
  %116 = load ptr, ptr %3, align 4, !dbg !1526
  %117 = getelementptr inbounds %struct.z_heap, ptr %116, i32 0, i32 1, !dbg !1527
  %118 = load i32, ptr %117, align 4, !dbg !1527
  %119 = icmp eq i32 %115, %118, !dbg !1528
  br i1 %119, label %120, label %121, !dbg !1529

120:                                              ; preds = %104
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8, !dbg !1530
  br label %126

121:                                              ; preds = %104
  br label %122, !dbg !1531

122:                                              ; preds = %121
  %123 = load ptr, ptr %3, align 4, !dbg !1532
  %124 = load i32, ptr %15, align 4, !dbg !1533
  %125 = call i32 @right_chunk(ptr noundef %123, i32 noundef %124) #7, !dbg !1534
  store i32 %125, ptr %15, align 4, !dbg !1535
  br label %92, !dbg !1530, !llvm.loop !1536

126:                                              ; preds = %120
  br label %127, !dbg !1539

127:                                              ; preds = %126, %88
  %128 = load ptr, ptr %3, align 4, !dbg !1540
  call void @get_alloc_info(ptr noundef %128, ptr noundef %8, ptr noundef %7) #7, !dbg !1541
  %129 = load ptr, ptr %3, align 4, !dbg !1542
  %130 = getelementptr inbounds %struct.z_heap, ptr %129, i32 0, i32 1, !dbg !1543
  %131 = load i32, ptr %130, align 4, !dbg !1543
  %132 = mul i32 %131, 8, !dbg !1544
  %133 = load ptr, ptr %3, align 4, !dbg !1545
  %134 = call i32 @chunk_header_bytes(ptr noundef %133) #7, !dbg !1546
  %135 = add i32 %132, %134, !dbg !1547
  store i32 %135, ptr %9, align 4, !dbg !1548
  %136 = load i32, ptr %9, align 4, !dbg !1549
  %137 = load i32, ptr %7, align 4, !dbg !1550
  %138 = sub i32 %136, %137, !dbg !1551
  %139 = load i32, ptr %8, align 4, !dbg !1552
  %140 = sub i32 %138, %139, !dbg !1553
  store i32 %140, ptr %10, align 4, !dbg !1554
  %141 = load i32, ptr %7, align 4, !dbg !1555
  %142 = load i32, ptr %8, align 4, !dbg !1556
  %143 = load i32, ptr %10, align 4, !dbg !1557
  %144 = load i32, ptr %10, align 4, !dbg !1558
  %145 = mul i32 1000, %144, !dbg !1559
  %146 = load i32, ptr %9, align 4, !dbg !1560
  %147 = udiv i32 %146, 2, !dbg !1561
  %148 = add i32 %145, %147, !dbg !1562
  %149 = load i32, ptr %9, align 4, !dbg !1563
  %150 = udiv i32 %148, %149, !dbg !1564
  %151 = udiv i32 %150, 10, !dbg !1565
  %152 = load i32, ptr %10, align 4, !dbg !1566
  %153 = mul i32 1000, %152, !dbg !1567
  %154 = load i32, ptr %9, align 4, !dbg !1568
  %155 = udiv i32 %154, 2, !dbg !1569
  %156 = add i32 %153, %155, !dbg !1570
  %157 = load i32, ptr %9, align 4, !dbg !1571
  %158 = udiv i32 %156, %157, !dbg !1572
  %159 = urem i32 %158, 10, !dbg !1573
  call void (ptr, ...) @printk(ptr noundef @.str.5, i32 noundef %141, i32 noundef %142, i32 noundef %143, i32 noundef %151, i32 noundef %159) #7, !dbg !1574
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !1575
  ret void, !dbg !1575
}

; Function Attrs: optsize
declare !dbg !1576 dso_local void @printk(ptr noundef, ...) #6

; Function Attrs: inlinehint nounwind optsize
define internal ptr @chunk_buf(ptr noundef %0) #0 !dbg !1582 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1586, metadata !DIExpression()), !dbg !1587
  %3 = load ptr, ptr %2, align 4, !dbg !1588
  ret ptr %3, !dbg !1589
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_size(ptr noundef %0, i32 noundef %1) #0 !dbg !1590 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1594, metadata !DIExpression()), !dbg !1596
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1595, metadata !DIExpression()), !dbg !1597
  %5 = load ptr, ptr %3, align 4, !dbg !1598
  %6 = load i32, ptr %4, align 4, !dbg !1599
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 1) #7, !dbg !1600
  %8 = lshr i32 %7, 1, !dbg !1601
  ret i32 %8, !dbg !1602
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @min_chunk_size(ptr noundef %0) #0 !dbg !1603 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1607, metadata !DIExpression()), !dbg !1608
  %3 = load ptr, ptr %2, align 4, !dbg !1609
  %4 = call i32 @bytes_to_chunksz(ptr noundef %3, i32 noundef 1) #7, !dbg !1610
  ret i32 %4, !dbg !1611
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunksz_to_bytes(ptr noundef %0, i32 noundef %1) #0 !dbg !1612 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1616, metadata !DIExpression()), !dbg !1618
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1617, metadata !DIExpression()), !dbg !1619
  %5 = load i32, ptr %4, align 4, !dbg !1620
  %6 = mul i32 %5, 8, !dbg !1621
  %7 = load ptr, ptr %3, align 4, !dbg !1622
  %8 = call i32 @chunk_header_bytes(ptr noundef %7) #7, !dbg !1623
  %9 = sub i32 %6, %8, !dbg !1624
  ret i32 %9, !dbg !1625
}

; Function Attrs: nounwind optsize
define internal void @get_alloc_info(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 !dbg !1626 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1631, metadata !DIExpression()), !dbg !1635
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1632, metadata !DIExpression()), !dbg !1636
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1633, metadata !DIExpression()), !dbg !1637
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !1638
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1634, metadata !DIExpression()), !dbg !1639
  %8 = load ptr, ptr %5, align 4, !dbg !1640
  store i32 0, ptr %8, align 4, !dbg !1641
  %9 = load ptr, ptr %6, align 4, !dbg !1642
  store i32 0, ptr %9, align 4, !dbg !1643
  %10 = load ptr, ptr %4, align 4, !dbg !1644
  %11 = call i32 @right_chunk(ptr noundef %10, i32 noundef 0) #7, !dbg !1646
  store i32 %11, ptr %7, align 4, !dbg !1647
  br label %12, !dbg !1648

12:                                               ; preds = %46, %3
  %13 = load i32, ptr %7, align 4, !dbg !1649
  %14 = load ptr, ptr %4, align 4, !dbg !1651
  %15 = getelementptr inbounds %struct.z_heap, ptr %14, i32 0, i32 1, !dbg !1652
  %16 = load i32, ptr %15, align 4, !dbg !1652
  %17 = icmp ult i32 %13, %16, !dbg !1653
  br i1 %17, label %18, label %50, !dbg !1654

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 4, !dbg !1655
  %20 = load i32, ptr %7, align 4, !dbg !1658
  %21 = call zeroext i1 @chunk_used(ptr noundef %19, i32 noundef %20) #7, !dbg !1659
  br i1 %21, label %22, label %31, !dbg !1660

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 4, !dbg !1661
  %24 = load ptr, ptr %4, align 4, !dbg !1663
  %25 = load i32, ptr %7, align 4, !dbg !1664
  %26 = call i32 @chunk_size(ptr noundef %24, i32 noundef %25) #7, !dbg !1665
  %27 = call i32 @chunksz_to_bytes(ptr noundef %23, i32 noundef %26) #7, !dbg !1666
  %28 = load ptr, ptr %5, align 4, !dbg !1667
  %29 = load i32, ptr %28, align 4, !dbg !1668
  %30 = add i32 %29, %27, !dbg !1668
  store i32 %30, ptr %28, align 4, !dbg !1668
  br label %45, !dbg !1669

31:                                               ; preds = %18
  %32 = load ptr, ptr %4, align 4, !dbg !1670
  %33 = load i32, ptr %7, align 4, !dbg !1672
  %34 = call zeroext i1 @solo_free_header(ptr noundef %32, i32 noundef %33) #7, !dbg !1673
  br i1 %34, label %44, label %35, !dbg !1674

35:                                               ; preds = %31
  %36 = load ptr, ptr %4, align 4, !dbg !1675
  %37 = load ptr, ptr %4, align 4, !dbg !1677
  %38 = load i32, ptr %7, align 4, !dbg !1678
  %39 = call i32 @chunk_size(ptr noundef %37, i32 noundef %38) #7, !dbg !1679
  %40 = call i32 @chunksz_to_bytes(ptr noundef %36, i32 noundef %39) #7, !dbg !1680
  %41 = load ptr, ptr %6, align 4, !dbg !1681
  %42 = load i32, ptr %41, align 4, !dbg !1682
  %43 = add i32 %42, %40, !dbg !1682
  store i32 %43, ptr %41, align 4, !dbg !1682
  br label %44, !dbg !1683

44:                                               ; preds = %35, %31
  br label %45

45:                                               ; preds = %44, %22
  br label %46, !dbg !1684

46:                                               ; preds = %45
  %47 = load ptr, ptr %4, align 4, !dbg !1685
  %48 = load i32, ptr %7, align 4, !dbg !1686
  %49 = call i32 @right_chunk(ptr noundef %47, i32 noundef %48) #7, !dbg !1687
  store i32 %49, ptr %7, align 4, !dbg !1688
  br label %12, !dbg !1689, !llvm.loop !1690

50:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !1692
  ret void, !dbg !1692
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_header_bytes(ptr noundef %0) #0 !dbg !1693 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1697, metadata !DIExpression()), !dbg !1698
  %3 = load ptr, ptr %2, align 4, !dbg !1699
  %4 = call zeroext i1 @big_heap(ptr noundef %3) #7, !dbg !1700
  %5 = zext i1 %4 to i64, !dbg !1700
  %6 = select i1 %4, i32 8, i32 4, !dbg !1700
  ret i32 %6, !dbg !1701
}

; Function Attrs: nounwind optsize
define hidden void @sys_heap_print_info(ptr noundef %0, i1 noundef zeroext %1) #1 !dbg !1702 {
  %3 = alloca ptr, align 4
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1706, metadata !DIExpression()), !dbg !1708
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1707, metadata !DIExpression()), !dbg !1709
  %6 = load ptr, ptr %3, align 4, !dbg !1710
  %7 = getelementptr inbounds %struct.sys_heap, ptr %6, i32 0, i32 0, !dbg !1711
  %8 = load ptr, ptr %7, align 4, !dbg !1711
  %9 = load i8, ptr %4, align 1, !dbg !1712, !range !621, !noundef !149
  %10 = trunc i8 %9 to i1, !dbg !1712
  call void @heap_print_info(ptr noundef %8, i1 noundef zeroext %10) #7, !dbg !1713
  ret void, !dbg !1714
}

; Function Attrs: optsize
declare !dbg !1715 dso_local i64 @z_timeout_expires(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !1720 dso_local i64 @z_timeout_remaining(ptr noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1721 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1726, metadata !DIExpression()), !dbg !1727
  %3 = load ptr, ptr %2, align 4, !dbg !1728
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !1729
  %5 = icmp eq ptr %4, null, !dbg !1730
  ret i1 %5, !dbg !1731
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1732 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1736, metadata !DIExpression()), !dbg !1737
  %3 = load ptr, ptr %2, align 4, !dbg !1738
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1739
  %5 = load ptr, ptr %4, align 4, !dbg !1739
  ret ptr %5, !dbg !1740
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @in_bounds(ptr noundef %0, i32 noundef %1) #1 !dbg !1741 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1743, metadata !DIExpression()), !dbg !1745
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1744, metadata !DIExpression()), !dbg !1746
  br label %6, !dbg !1747

6:                                                ; preds = %2
  %7 = load i32, ptr %5, align 4, !dbg !1748
  %8 = load ptr, ptr %4, align 4, !dbg !1751
  %9 = call i32 @right_chunk(ptr noundef %8, i32 noundef 0) #7, !dbg !1752
  %10 = icmp uge i32 %7, %9, !dbg !1753
  br i1 %10, label %12, label %11, !dbg !1754

11:                                               ; preds = %6
  store i1 false, ptr %3, align 1, !dbg !1755
  br label %34, !dbg !1755

12:                                               ; preds = %6
  br label %13, !dbg !1757

13:                                               ; preds = %12
  br label %14, !dbg !1758

14:                                               ; preds = %13
  %15 = load i32, ptr %5, align 4, !dbg !1759
  %16 = load ptr, ptr %4, align 4, !dbg !1762
  %17 = getelementptr inbounds %struct.z_heap, ptr %16, i32 0, i32 1, !dbg !1763
  %18 = load i32, ptr %17, align 4, !dbg !1763
  %19 = icmp ult i32 %15, %18, !dbg !1764
  br i1 %19, label %21, label %20, !dbg !1765

20:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !1766
  br label %34, !dbg !1766

21:                                               ; preds = %14
  br label %22, !dbg !1768

22:                                               ; preds = %21
  br label %23, !dbg !1769

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 4, !dbg !1770
  %25 = load i32, ptr %5, align 4, !dbg !1773
  %26 = call i32 @chunk_size(ptr noundef %24, i32 noundef %25) #7, !dbg !1774
  %27 = load ptr, ptr %4, align 4, !dbg !1775
  %28 = getelementptr inbounds %struct.z_heap, ptr %27, i32 0, i32 1, !dbg !1776
  %29 = load i32, ptr %28, align 4, !dbg !1776
  %30 = icmp ult i32 %26, %29, !dbg !1777
  br i1 %30, label %32, label %31, !dbg !1778

31:                                               ; preds = %23
  store i1 false, ptr %3, align 1, !dbg !1779
  br label %34, !dbg !1779

32:                                               ; preds = %23
  br label %33, !dbg !1781

33:                                               ; preds = %32
  store i1 true, ptr %3, align 1, !dbg !1782
  br label %34, !dbg !1782

34:                                               ; preds = %33, %31, %20, %11
  %35 = load i1, ptr %3, align 1, !dbg !1783
  ret i1 %35, !dbg !1783
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @prev_free_chunk(ptr noundef %0, i32 noundef %1) #0 !dbg !1784 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1786, metadata !DIExpression()), !dbg !1788
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1787, metadata !DIExpression()), !dbg !1789
  %5 = load ptr, ptr %3, align 4, !dbg !1790
  %6 = load i32, ptr %4, align 4, !dbg !1791
  %7 = call i32 @chunk_field(ptr noundef %5, i32 noundef %6, i8 noundef zeroext 2) #7, !dbg !1792
  ret i32 %7, !dbg !1793
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunk_field(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 !dbg !1794 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1798, metadata !DIExpression()), !dbg !1803
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1799, metadata !DIExpression()), !dbg !1804
  store i8 %2, ptr %7, align 1
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1800, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !1806
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1801, metadata !DIExpression()), !dbg !1807
  %11 = load ptr, ptr %5, align 4, !dbg !1808
  %12 = call ptr @chunk_buf(ptr noundef %11) #7, !dbg !1809
  store ptr %12, ptr %8, align 4, !dbg !1807
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1802, metadata !DIExpression()), !dbg !1811
  %13 = load ptr, ptr %8, align 4, !dbg !1812
  %14 = load i32, ptr %6, align 4, !dbg !1813
  %15 = getelementptr inbounds %struct.chunk_unit_t, ptr %13, i32 %14, !dbg !1812
  store ptr %15, ptr %9, align 4, !dbg !1811
  %16 = load ptr, ptr %5, align 4, !dbg !1814
  %17 = call zeroext i1 @big_heap(ptr noundef %16) #7, !dbg !1816
  br i1 %17, label %18, label %24, !dbg !1817

18:                                               ; preds = %3
  %19 = load ptr, ptr %9, align 4, !dbg !1818
  %20 = load i8, ptr %7, align 1, !dbg !1820
  %21 = zext i8 %20 to i32, !dbg !1821
  %22 = getelementptr inbounds i32, ptr %19, i32 %21, !dbg !1821
  %23 = load i32, ptr %22, align 4, !dbg !1821
  store i32 %23, ptr %4, align 4, !dbg !1822
  store i32 1, ptr %10, align 4
  br label %31, !dbg !1822

24:                                               ; preds = %3
  %25 = load ptr, ptr %9, align 4, !dbg !1823
  %26 = load i8, ptr %7, align 1, !dbg !1825
  %27 = zext i8 %26 to i32, !dbg !1826
  %28 = getelementptr inbounds i16, ptr %25, i32 %27, !dbg !1826
  %29 = load i16, ptr %28, align 2, !dbg !1826
  %30 = zext i16 %29 to i32, !dbg !1826
  store i32 %30, ptr %4, align 4, !dbg !1827
  store i32 1, ptr %10, align 4
  br label %31, !dbg !1827

31:                                               ; preds = %24, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8, !dbg !1828
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !1828
  %32 = load i32, ptr %4, align 4, !dbg !1828
  ret i32 %32, !dbg !1828
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @big_heap(ptr noundef %0) #0 !dbg !1829 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1833, metadata !DIExpression()), !dbg !1834
  %3 = load ptr, ptr %2, align 4, !dbg !1835
  %4 = getelementptr inbounds %struct.z_heap, ptr %3, i32 0, i32 1, !dbg !1836
  %5 = load i32, ptr %4, align 4, !dbg !1836
  %6 = call zeroext i1 @big_heap_chunks(i32 noundef %5) #7, !dbg !1837
  ret i1 %6, !dbg !1838
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @big_heap_chunks(i32 noundef %0) #0 !dbg !1839 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1843, metadata !DIExpression()), !dbg !1844
  ret i1 false, !dbg !1845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind optsize
define internal i32 @rand32() #1 !dbg !34 {
  %1 = load i64, ptr @rand32.state, align 8, !dbg !1848
  %2 = mul i64 %1, 2862933555777941757, !dbg !1849
  %3 = add i64 %2, 3037000493, !dbg !1850
  store i64 %3, ptr @rand32.state, align 8, !dbg !1851
  %4 = load i64, ptr @rand32.state, align 8, !dbg !1852
  %5 = lshr i64 %4, 32, !dbg !1853
  %6 = trunc i64 %5 to i32, !dbg !1854
  ret i32 %6, !dbg !1855
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @bytes_to_chunksz(ptr noundef %0, i32 noundef %1) #0 !dbg !1856 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1860, metadata !DIExpression()), !dbg !1862
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1861, metadata !DIExpression()), !dbg !1863
  %5 = load ptr, ptr %3, align 4, !dbg !1864
  %6 = call i32 @chunk_header_bytes(ptr noundef %5) #7, !dbg !1865
  %7 = load i32, ptr %4, align 4, !dbg !1866
  %8 = add i32 %6, %7, !dbg !1867
  %9 = call i32 @chunksz(i32 noundef %8) #7, !dbg !1868
  ret i32 %9, !dbg !1869
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @chunksz(i32 noundef %0) #0 !dbg !1870 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1874, metadata !DIExpression()), !dbg !1875
  %3 = load i32, ptr %2, align 4, !dbg !1876
  %4 = add i32 %3, 8, !dbg !1877
  %5 = sub i32 %4, 1, !dbg !1878
  %6 = udiv i32 %5, 8, !dbg !1879
  ret i32 %6, !dbg !1880
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!40}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

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
!34 = distinct !DISubprogram(name: "rand32", scope: !2, file: !2, line: 225, type: !35, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !149)
!35 = !DISubroutineType(types: !36)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 64, baseType: !39)
!38 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !42, retainedTypes: !133, globals: !148, splitDebugInlining: false, nameTableKind: None)
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
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!94 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!95 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!96 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!97 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!98 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!99 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!100 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!101 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!158 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!159 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !44, file: !44, line: 223, type: !160, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !290)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !164}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !166, line: 250, size: 896, elements: !167)
!166 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!167 = !{!168, !236, !249, !250, !251, !252, !285}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !165, file: !166, line: 252, baseType: !169, size: 384)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !166, line: 58, size: 384, elements: !170)
!170 = !{!171, !199, !207, !209, !210, !221, !222, !223}
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !166, line: 61, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !166, line: 61, size: 64, elements: !173)
!173 = !{!174, !190}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !172, file: !166, line: 62, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !176, line: 55, baseType: !177)
!176 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !176, line: 37, size: 64, elements: !178)
!178 = !{!179, !185}
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !176, line: 38, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !176, line: 38, size: 32, elements: !181)
!181 = !{!182, !184}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !180, file: !176, line: 39, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !180, file: !176, line: 40, baseType: !183, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !177, file: !176, line: 42, baseType: !186, size: 32, offset: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !177, file: !176, line: 42, size: 32, elements: !187)
!187 = !{!188, !189}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !186, file: !176, line: 43, baseType: !183, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !176, line: 44, baseType: !183, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !172, file: !166, line: 63, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !192, line: 58, size: 64, elements: !193)
!192 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !191, file: !192, line: 60, baseType: !195, size: 64)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !197)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!197 = !{!198}
!198 = !DISubrange(count: 2)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !169, file: !166, line: 69, baseType: !200, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !202, line: 243, baseType: !203)
!202 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 241, size: 64, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !203, file: !202, line: 242, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !176, line: 51, baseType: !177)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !169, file: !166, line: 72, baseType: !208, size: 8, offset: 96)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 62, baseType: !45)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !169, file: !166, line: 75, baseType: !208, size: 8, offset: 104)
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !166, line: 91, baseType: !211, size: 16, offset: 112)
!211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !169, file: !166, line: 91, size: 16, elements: !212)
!212 = !{!213, !220}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !166, line: 92, baseType: !214, size: 16)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !211, file: !166, line: 92, size: 16, elements: !215)
!215 = !{!216, !219}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !214, file: !166, line: 97, baseType: !217, size: 8)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !38, line: 56, baseType: !218)
!218 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !214, file: !166, line: 98, baseType: !208, size: 8, offset: 8)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !211, file: !166, line: 101, baseType: !138, size: 16)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !169, file: !166, line: 108, baseType: !37, size: 32, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !169, file: !166, line: 132, baseType: !134, size: 32, offset: 160)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !169, file: !166, line: 136, baseType: !224, size: 192, offset: 192)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !202, line: 254, size: 192, elements: !225)
!225 = !{!226, !227, !233}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !224, file: !202, line: 255, baseType: !175, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !224, file: !202, line: 256, baseType: !228, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !202, line: 252, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !224, file: !202, line: 259, baseType: !234, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !38, line: 59, baseType: !235)
!235 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !165, file: !166, line: 255, baseType: !237, size: 288, offset: 384)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !238, line: 25, size: 288, elements: !239)
!238 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !237, file: !238, line: 26, baseType: !37, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !237, file: !238, line: 27, baseType: !37, size: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !237, file: !238, line: 28, baseType: !37, size: 32, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !237, file: !238, line: 29, baseType: !37, size: 32, offset: 96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !237, file: !238, line: 30, baseType: !37, size: 32, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !237, file: !238, line: 31, baseType: !37, size: 32, offset: 160)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !237, file: !238, line: 32, baseType: !37, size: 32, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !237, file: !238, line: 33, baseType: !37, size: 32, offset: 224)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !237, file: !238, line: 34, baseType: !37, size: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !165, file: !166, line: 258, baseType: !134, size: 32, offset: 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !165, file: !166, line: 261, baseType: !201, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !165, file: !166, line: 302, baseType: !135, size: 32, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !165, file: !166, line: 333, baseType: !253, size: 32, offset: 800)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 32)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !255, line: 5291, size: 160, elements: !256)
!255 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!256 = !{!257, !281, !282}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !254, file: !255, line: 5292, baseType: !258, size: 96)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !259, line: 56, size: 96, elements: !260)
!259 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!260 = !{!261, !277, !278}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !258, file: !259, line: 57, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !127, line: 68, size: 128, elements: !264)
!264 = !{!265, !268, !269, !270}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "chunk0_hdr", scope: !263, file: !127, line: 69, baseType: !266, size: 64)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 64, elements: !197)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunkid_t", file: !127, line: 61, baseType: !37)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "end_chunk", scope: !263, file: !127, line: 70, baseType: !267, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "avail_buckets", scope: !263, file: !127, line: 71, baseType: !37, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !263, file: !127, line: 77, baseType: !271, offset: 128)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, elements: !275)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_bucket", file: !127, line: 64, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !127, line: 65, baseType: !267, size: 32)
!275 = !{!276}
!276 = !DISubrange(count: 0)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !258, file: !259, line: 58, baseType: !134, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !258, file: !259, line: 59, baseType: !279, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !280, line: 46, baseType: !39)
!280 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !254, file: !255, line: 5293, baseType: !201, size: 64, offset: 96)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !254, file: !255, line: 5294, baseType: !283, offset: 160)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !284, line: 45, elements: !149)
!284 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!285 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !165, file: !166, line: 355, baseType: !286, size: 64, offset: 832)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !238, line: 60, size: 64, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !286, file: !238, line: 63, baseType: !37, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !286, file: !238, line: 66, baseType: !37, size: 32, offset: 32)
!290 = !{!291, !292}
!291 = !DILocalVariable(name: "object", arg: 1, scope: !159, file: !44, line: 223, type: !162)
!292 = !DILocalVariable(name: "thread", arg: 2, scope: !159, file: !44, line: 224, type: !164)
!293 = !DILocation(line: 223, column: 61, scope: !159)
!294 = !DILocation(line: 224, column: 24, scope: !159)
!295 = !DILocation(line: 226, column: 9, scope: !159)
!296 = !DILocation(line: 227, column: 9, scope: !159)
!297 = !DILocation(line: 228, column: 1, scope: !159)
!298 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !44, file: !44, line: 243, type: !299, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !162}
!301 = !{!302}
!302 = !DILocalVariable(name: "object", arg: 1, scope: !298, file: !44, line: 243, type: !162)
!303 = !DILocation(line: 243, column: 56, scope: !298)
!304 = !DILocation(line: 245, column: 9, scope: !298)
!305 = !DILocation(line: 246, column: 1, scope: !298)
!306 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !44, file: !44, line: 359, type: !307, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!134, !43}
!309 = !{!310}
!310 = !DILocalVariable(name: "otype", arg: 1, scope: !306, file: !44, line: 359, type: !43)
!311 = !DILocation(line: 359, column: 58, scope: !306)
!312 = !DILocation(line: 361, column: 9, scope: !306)
!313 = !DILocation(line: 363, column: 2, scope: !306)
!314 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !44, file: !44, line: 366, type: !315, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!134, !43, !279}
!317 = !{!318, !319}
!318 = !DILocalVariable(name: "otype", arg: 1, scope: !314, file: !44, line: 366, type: !43)
!319 = !DILocalVariable(name: "size", arg: 2, scope: !314, file: !44, line: 367, type: !279)
!320 = !DILocation(line: 366, column: 63, scope: !314)
!321 = !DILocation(line: 367, column: 13, scope: !314)
!322 = !DILocation(line: 369, column: 9, scope: !314)
!323 = !DILocation(line: 370, column: 9, scope: !314)
!324 = !DILocation(line: 372, column: 2, scope: !314)
!325 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !255, file: !255, line: 656, type: !326, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !332)
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !330}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !329, line: 46, baseType: !234)
!329 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!332 = !{!333}
!333 = !DILocalVariable(name: "t", arg: 1, scope: !325, file: !255, line: 657, type: !330)
!334 = !DILocation(line: 657, column: 30, scope: !325)
!335 = !DILocation(line: 659, column: 28, scope: !325)
!336 = !DILocation(line: 659, column: 31, scope: !325)
!337 = !DILocation(line: 659, column: 36, scope: !325)
!338 = !DILocation(line: 659, column: 9, scope: !325)
!339 = !DILocation(line: 659, column: 2, scope: !325)
!340 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !255, file: !255, line: 671, type: !326, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !341)
!341 = !{!342}
!342 = !DILocalVariable(name: "t", arg: 1, scope: !340, file: !255, line: 672, type: !330)
!343 = !DILocation(line: 672, column: 30, scope: !340)
!344 = !DILocation(line: 674, column: 30, scope: !340)
!345 = !DILocation(line: 674, column: 33, scope: !340)
!346 = !DILocation(line: 674, column: 38, scope: !340)
!347 = !DILocation(line: 674, column: 9, scope: !340)
!348 = !DILocation(line: 674, column: 2, scope: !340)
!349 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !255, file: !255, line: 1634, type: !350, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !371)
!350 = !DISubroutineType(types: !351)
!351 = !{!328, !352}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !255, line: 1439, size: 448, elements: !355)
!355 = !{!356, !357, !358, !363, !364, !369, !370}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !354, file: !255, line: 1445, baseType: !224, size: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !354, file: !255, line: 1448, baseType: !201, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !354, file: !255, line: 1451, baseType: !359, size: 32, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !354, file: !255, line: 1454, baseType: !359, size: 32, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !354, file: !255, line: 1457, baseType: !365, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !329, line: 67, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 65, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !366, file: !329, line: 66, baseType: !328, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !354, file: !255, line: 1460, baseType: !37, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !354, file: !255, line: 1463, baseType: !134, size: 32, offset: 416)
!371 = !{!372}
!372 = !DILocalVariable(name: "timer", arg: 1, scope: !349, file: !255, line: 1635, type: !352)
!373 = !DILocation(line: 1635, column: 34, scope: !349)
!374 = !DILocation(line: 1637, column: 28, scope: !349)
!375 = !DILocation(line: 1637, column: 35, scope: !349)
!376 = !DILocation(line: 1637, column: 9, scope: !349)
!377 = !DILocation(line: 1637, column: 2, scope: !349)
!378 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !255, file: !255, line: 1649, type: !350, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !379)
!379 = !{!380}
!380 = !DILocalVariable(name: "timer", arg: 1, scope: !378, file: !255, line: 1650, type: !352)
!381 = !DILocation(line: 1650, column: 34, scope: !378)
!382 = !DILocation(line: 1652, column: 30, scope: !378)
!383 = !DILocation(line: 1652, column: 37, scope: !378)
!384 = !DILocation(line: 1652, column: 9, scope: !378)
!385 = !DILocation(line: 1652, column: 2, scope: !378)
!386 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !255, file: !255, line: 1689, type: !387, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !389)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !362, !134}
!389 = !{!390, !391}
!390 = !DILocalVariable(name: "timer", arg: 1, scope: !386, file: !255, line: 1689, type: !362)
!391 = !DILocalVariable(name: "user_data", arg: 2, scope: !386, file: !255, line: 1690, type: !134)
!392 = !DILocation(line: 1689, column: 65, scope: !386)
!393 = !DILocation(line: 1690, column: 19, scope: !386)
!394 = !DILocation(line: 1692, column: 21, scope: !386)
!395 = !DILocation(line: 1692, column: 2, scope: !386)
!396 = !DILocation(line: 1692, column: 9, scope: !386)
!397 = !DILocation(line: 1692, column: 19, scope: !386)
!398 = !DILocation(line: 1693, column: 1, scope: !386)
!399 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !255, file: !255, line: 1704, type: !400, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!134, !352}
!402 = !{!403}
!403 = !DILocalVariable(name: "timer", arg: 1, scope: !399, file: !255, line: 1704, type: !352)
!404 = !DILocation(line: 1704, column: 72, scope: !399)
!405 = !DILocation(line: 1706, column: 9, scope: !399)
!406 = !DILocation(line: 1706, column: 16, scope: !399)
!407 = !DILocation(line: 1706, column: 2, scope: !399)
!408 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !255, file: !255, line: 2071, type: !409, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !429)
!409 = !DISubroutineType(types: !410)
!410 = !{!135, !411}
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !255, line: 1830, size: 128, elements: !413)
!413 = !{!414, !427, !428}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !412, file: !255, line: 1831, baseType: !415, size: 64)
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
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !416, line: 40, baseType: !37)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !417, file: !416, line: 55, baseType: !420, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !412, file: !255, line: 1832, baseType: !283, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !412, file: !255, line: 1833, baseType: !201, size: 64, offset: 64)
!429 = !{!430}
!430 = !DILocalVariable(name: "queue", arg: 1, scope: !408, file: !255, line: 2071, type: !411)
!431 = !DILocation(line: 2071, column: 59, scope: !408)
!432 = !DILocation(line: 2073, column: 35, scope: !408)
!433 = !DILocation(line: 2073, column: 42, scope: !408)
!434 = !DILocation(line: 2073, column: 14, scope: !408)
!435 = !DILocation(line: 2073, column: 9, scope: !408)
!436 = !DILocation(line: 2073, column: 2, scope: !408)
!437 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !255, file: !255, line: 3209, type: !438, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !446)
!438 = !DISubroutineType(types: !439)
!439 = !{!39, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 32)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !255, line: 3092, size: 128, elements: !442)
!442 = !{!443, !444, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !441, file: !255, line: 3093, baseType: !201, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !255, line: 3094, baseType: !39, size: 32, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !441, file: !255, line: 3095, baseType: !39, size: 32, offset: 96)
!446 = !{!447}
!447 = !DILocalVariable(name: "sem", arg: 1, scope: !437, file: !255, line: 3209, type: !440)
!448 = !DILocation(line: 3209, column: 65, scope: !437)
!449 = !DILocation(line: 3211, column: 9, scope: !437)
!450 = !DILocation(line: 3211, column: 14, scope: !437)
!451 = !DILocation(line: 3211, column: 2, scope: !437)
!452 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !255, file: !255, line: 4649, type: !453, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !469)
!453 = !DISubroutineType(types: !454)
!454 = !{!37, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 32)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !255, line: 4390, size: 320, elements: !457)
!457 = !{!458, !459, !460, !461, !462, !464, !465, !466, !467, !468}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !456, file: !255, line: 4392, baseType: !201, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !456, file: !255, line: 4394, baseType: !283, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !456, file: !255, line: 4396, baseType: !279, size: 32, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !456, file: !255, line: 4398, baseType: !37, size: 32, offset: 96)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !456, file: !255, line: 4400, baseType: !463, size: 32, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !456, file: !255, line: 4402, baseType: !463, size: 32, offset: 160)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !456, file: !255, line: 4404, baseType: !463, size: 32, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !456, file: !255, line: 4406, baseType: !463, size: 32, offset: 224)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !456, file: !255, line: 4408, baseType: !37, size: 32, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !255, line: 4413, baseType: !208, size: 8, offset: 288)
!469 = !{!470}
!470 = !DILocalVariable(name: "msgq", arg: 1, scope: !452, file: !255, line: 4649, type: !455)
!471 = !DILocation(line: 4649, column: 66, scope: !452)
!472 = !DILocation(line: 4651, column: 9, scope: !452)
!473 = !DILocation(line: 4651, column: 15, scope: !452)
!474 = !DILocation(line: 4651, column: 26, scope: !452)
!475 = !DILocation(line: 4651, column: 32, scope: !452)
!476 = !DILocation(line: 4651, column: 24, scope: !452)
!477 = !DILocation(line: 4651, column: 2, scope: !452)
!478 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !255, file: !255, line: 4665, type: !453, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !479)
!479 = !{!480}
!480 = !DILocalVariable(name: "msgq", arg: 1, scope: !478, file: !255, line: 4665, type: !455)
!481 = !DILocation(line: 4665, column: 66, scope: !478)
!482 = !DILocation(line: 4667, column: 9, scope: !478)
!483 = !DILocation(line: 4667, column: 15, scope: !478)
!484 = !DILocation(line: 4667, column: 2, scope: !478)
!485 = distinct !DISubprogram(name: "sys_heap_validate", scope: !2, file: !2, line: 88, type: !486, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !490)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !489}
!488 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 32)
!490 = !{!491, !492, !493, !494, !496, !499, !500, !501, !502, !503, !505, !508}
!491 = !DILocalVariable(name: "heap", arg: 1, scope: !485, file: !2, line: 88, type: !489)
!492 = !DILocalVariable(name: "h", scope: !485, file: !2, line: 90, type: !262)
!493 = !DILocalVariable(name: "c", scope: !485, file: !2, line: 91, type: !267)
!494 = !DILocalVariable(name: "b", scope: !495, file: !2, line: 127, type: !135)
!495 = distinct !DILexicalBlock(scope: !485, file: !2, line: 127, column: 2)
!496 = !DILocalVariable(name: "c0", scope: !497, file: !2, line: 128, type: !267)
!497 = distinct !DILexicalBlock(scope: !498, file: !2, line: 127, column: 57)
!498 = distinct !DILexicalBlock(scope: !495, file: !2, line: 127, column: 2)
!499 = !DILocalVariable(name: "n", scope: !497, file: !2, line: 129, type: !37)
!500 = !DILocalVariable(name: "empty", scope: !497, file: !2, line: 141, type: !488)
!501 = !DILocalVariable(name: "zero", scope: !497, file: !2, line: 142, type: !488)
!502 = !DILocalVariable(name: "prev_chunk", scope: !485, file: !2, line: 159, type: !267)
!503 = !DILocalVariable(name: "b", scope: !504, file: !2, line: 179, type: !135)
!504 = distinct !DILexicalBlock(scope: !485, file: !2, line: 179, column: 2)
!505 = !DILocalVariable(name: "c0", scope: !506, file: !2, line: 180, type: !267)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 179, column: 57)
!507 = distinct !DILexicalBlock(scope: !504, file: !2, line: 179, column: 2)
!508 = !DILocalVariable(name: "n", scope: !506, file: !2, line: 181, type: !135)
!509 = !DILocation(line: 88, column: 42, scope: !485)
!510 = !DILocation(line: 90, column: 2, scope: !485)
!511 = !DILocation(line: 90, column: 17, scope: !485)
!512 = !DILocation(line: 90, column: 21, scope: !485)
!513 = !DILocation(line: 90, column: 27, scope: !485)
!514 = !DILocation(line: 91, column: 2, scope: !485)
!515 = !DILocation(line: 91, column: 12, scope: !485)
!516 = !DILocation(line: 96, column: 23, scope: !517)
!517 = distinct !DILexicalBlock(scope: !485, file: !2, line: 96, column: 2)
!518 = !DILocation(line: 96, column: 11, scope: !517)
!519 = !DILocation(line: 96, column: 9, scope: !517)
!520 = !DILocation(line: 96, column: 7, scope: !517)
!521 = !DILocation(line: 96, column: 30, scope: !522)
!522 = distinct !DILexicalBlock(scope: !517, file: !2, line: 96, column: 2)
!523 = !DILocation(line: 96, column: 34, scope: !522)
!524 = !DILocation(line: 96, column: 37, scope: !522)
!525 = !DILocation(line: 96, column: 32, scope: !522)
!526 = !DILocation(line: 96, column: 2, scope: !517)
!527 = !DILocation(line: 97, column: 20, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 97, column: 7)
!529 = distinct !DILexicalBlock(scope: !522, file: !2, line: 96, column: 71)
!530 = !DILocation(line: 97, column: 23, scope: !528)
!531 = !DILocation(line: 97, column: 8, scope: !528)
!532 = !DILocation(line: 97, column: 7, scope: !529)
!533 = !DILocation(line: 98, column: 4, scope: !534)
!534 = distinct !DILexicalBlock(scope: !528, file: !2, line: 97, column: 27)
!535 = !DILocation(line: 100, column: 2, scope: !529)
!536 = !DILocation(line: 96, column: 64, scope: !522)
!537 = !DILocation(line: 96, column: 67, scope: !522)
!538 = !DILocation(line: 96, column: 52, scope: !522)
!539 = !DILocation(line: 96, column: 50, scope: !522)
!540 = !DILocation(line: 96, column: 2, scope: !522)
!541 = distinct !{!541, !526, !542}
!542 = !DILocation(line: 100, column: 2, scope: !517)
!543 = !DILocation(line: 101, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !485, file: !2, line: 101, column: 6)
!545 = !DILocation(line: 101, column: 11, scope: !544)
!546 = !DILocation(line: 101, column: 14, scope: !544)
!547 = !DILocation(line: 101, column: 8, scope: !544)
!548 = !DILocation(line: 101, column: 6, scope: !485)
!549 = !DILocation(line: 102, column: 3, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !2, line: 101, column: 25)
!551 = !DILocation(line: 127, column: 7, scope: !495)
!552 = !DILocation(line: 127, column: 11, scope: !495)
!553 = !DILocation(line: 127, column: 18, scope: !498)
!554 = !DILocation(line: 127, column: 34, scope: !498)
!555 = !DILocation(line: 127, column: 37, scope: !498)
!556 = !DILocation(line: 127, column: 40, scope: !498)
!557 = !DILocation(line: 127, column: 23, scope: !498)
!558 = !DILocation(line: 127, column: 20, scope: !498)
!559 = !DILocation(line: 127, column: 2, scope: !495)
!560 = !DILocation(line: 128, column: 3, scope: !497)
!561 = !DILocation(line: 128, column: 13, scope: !497)
!562 = !DILocation(line: 128, column: 18, scope: !497)
!563 = !DILocation(line: 128, column: 21, scope: !497)
!564 = !DILocation(line: 128, column: 29, scope: !497)
!565 = !DILocation(line: 128, column: 32, scope: !497)
!566 = !DILocation(line: 129, column: 3, scope: !497)
!567 = !DILocation(line: 129, column: 12, scope: !497)
!568 = !DILocation(line: 131, column: 15, scope: !497)
!569 = !DILocation(line: 131, column: 18, scope: !497)
!570 = !DILocation(line: 131, column: 3, scope: !497)
!571 = !DILocation(line: 133, column: 12, scope: !572)
!572 = distinct !DILexicalBlock(scope: !497, file: !2, line: 133, column: 3)
!573 = !DILocation(line: 133, column: 10, scope: !572)
!574 = !DILocation(line: 133, column: 8, scope: !572)
!575 = !DILocation(line: 133, column: 16, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !2, line: 133, column: 3)
!577 = !DILocation(line: 133, column: 18, scope: !576)
!578 = !DILocation(line: 133, column: 23, scope: !576)
!579 = !DILocation(line: 133, column: 27, scope: !576)
!580 = !DILocation(line: 133, column: 29, scope: !576)
!581 = !DILocation(line: 133, column: 34, scope: !576)
!582 = !DILocation(line: 133, column: 37, scope: !576)
!583 = !DILocation(line: 133, column: 42, scope: !576)
!584 = !DILocation(line: 133, column: 39, scope: !576)
!585 = !DILocation(line: 0, scope: !576)
!586 = !DILocation(line: 133, column: 3, scope: !572)
!587 = !DILocation(line: 135, column: 21, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 135, column: 8)
!589 = distinct !DILexicalBlock(scope: !576, file: !2, line: 134, column: 40)
!590 = !DILocation(line: 135, column: 24, scope: !588)
!591 = !DILocation(line: 135, column: 9, scope: !588)
!592 = !DILocation(line: 135, column: 8, scope: !589)
!593 = !DILocation(line: 136, column: 5, scope: !594)
!594 = distinct !DILexicalBlock(scope: !588, file: !2, line: 135, column: 28)
!595 = !DILocation(line: 138, column: 19, scope: !589)
!596 = !DILocation(line: 138, column: 22, scope: !589)
!597 = !DILocation(line: 138, column: 4, scope: !589)
!598 = !DILocation(line: 139, column: 3, scope: !589)
!599 = !DILocation(line: 134, column: 9, scope: !576)
!600 = !DILocation(line: 134, column: 33, scope: !576)
!601 = !DILocation(line: 134, column: 36, scope: !576)
!602 = !DILocation(line: 134, column: 17, scope: !576)
!603 = !DILocation(line: 134, column: 15, scope: !576)
!604 = !DILocation(line: 133, column: 3, scope: !576)
!605 = distinct !{!605, !586, !606}
!606 = !DILocation(line: 139, column: 3, scope: !572)
!607 = !DILocation(line: 141, column: 3, scope: !497)
!608 = !DILocation(line: 141, column: 9, scope: !497)
!609 = !DILocation(line: 141, column: 18, scope: !497)
!610 = !DILocation(line: 141, column: 21, scope: !497)
!611 = !DILocation(line: 141, column: 46, scope: !497)
!612 = !DILocation(line: 141, column: 42, scope: !497)
!613 = !DILocation(line: 141, column: 35, scope: !497)
!614 = !DILocation(line: 141, column: 51, scope: !497)
!615 = !DILocation(line: 142, column: 3, scope: !497)
!616 = !DILocation(line: 142, column: 9, scope: !497)
!617 = !DILocation(line: 142, column: 16, scope: !497)
!618 = !DILocation(line: 142, column: 18, scope: !497)
!619 = !DILocation(line: 144, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !497, file: !2, line: 144, column: 7)
!621 = !{i8 0, i8 2}
!622 = !DILocation(line: 144, column: 16, scope: !620)
!623 = !DILocation(line: 144, column: 13, scope: !620)
!624 = !DILocation(line: 144, column: 7, scope: !497)
!625 = !DILocation(line: 145, column: 4, scope: !626)
!626 = distinct !DILexicalBlock(scope: !620, file: !2, line: 144, column: 22)
!627 = !DILocation(line: 148, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !497, file: !2, line: 148, column: 7)
!629 = !DILocation(line: 148, column: 13, scope: !628)
!630 = !DILocation(line: 148, column: 16, scope: !628)
!631 = !DILocation(line: 148, column: 19, scope: !628)
!632 = !DILocation(line: 148, column: 27, scope: !628)
!633 = !DILocation(line: 148, column: 30, scope: !628)
!634 = !DILocation(line: 148, column: 35, scope: !628)
!635 = !DILocation(line: 148, column: 7, scope: !497)
!636 = !DILocation(line: 149, column: 4, scope: !637)
!637 = distinct !DILexicalBlock(scope: !628, file: !2, line: 148, column: 41)
!638 = !DILocation(line: 151, column: 2, scope: !498)
!639 = !DILocation(line: 151, column: 2, scope: !497)
!640 = !DILocation(line: 127, column: 53, scope: !498)
!641 = !DILocation(line: 127, column: 2, scope: !498)
!642 = distinct !{!642, !559, !643}
!643 = !DILocation(line: 151, column: 2, scope: !495)
!644 = !DILocation(line: 159, column: 2, scope: !485)
!645 = !DILocation(line: 159, column: 12, scope: !485)
!646 = !DILocation(line: 160, column: 23, scope: !647)
!647 = distinct !DILexicalBlock(scope: !485, file: !2, line: 160, column: 2)
!648 = !DILocation(line: 160, column: 11, scope: !647)
!649 = !DILocation(line: 160, column: 9, scope: !647)
!650 = !DILocation(line: 160, column: 7, scope: !647)
!651 = !DILocation(line: 160, column: 30, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !2, line: 160, column: 2)
!653 = !DILocation(line: 160, column: 34, scope: !652)
!654 = !DILocation(line: 160, column: 37, scope: !652)
!655 = !DILocation(line: 160, column: 32, scope: !652)
!656 = !DILocation(line: 160, column: 2, scope: !647)
!657 = !DILocation(line: 161, column: 19, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 161, column: 7)
!659 = distinct !DILexicalBlock(scope: !652, file: !2, line: 160, column: 71)
!660 = !DILocation(line: 161, column: 22, scope: !658)
!661 = !DILocation(line: 161, column: 8, scope: !658)
!662 = !DILocation(line: 161, column: 25, scope: !658)
!663 = !DILocation(line: 161, column: 46, scope: !658)
!664 = !DILocation(line: 161, column: 49, scope: !658)
!665 = !DILocation(line: 161, column: 29, scope: !658)
!666 = !DILocation(line: 161, column: 7, scope: !659)
!667 = !DILocation(line: 162, column: 4, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !2, line: 161, column: 53)
!669 = !DILocation(line: 164, column: 18, scope: !670)
!670 = distinct !DILexicalBlock(scope: !659, file: !2, line: 164, column: 7)
!671 = !DILocation(line: 164, column: 21, scope: !670)
!672 = !DILocation(line: 164, column: 7, scope: !670)
!673 = !DILocation(line: 164, column: 27, scope: !670)
!674 = !DILocation(line: 164, column: 24, scope: !670)
!675 = !DILocation(line: 164, column: 7, scope: !659)
!676 = !DILocation(line: 165, column: 4, scope: !677)
!677 = distinct !DILexicalBlock(scope: !670, file: !2, line: 164, column: 39)
!678 = !DILocation(line: 167, column: 16, scope: !659)
!679 = !DILocation(line: 167, column: 14, scope: !659)
!680 = !DILocation(line: 169, column: 18, scope: !659)
!681 = !DILocation(line: 169, column: 21, scope: !659)
!682 = !DILocation(line: 169, column: 41, scope: !659)
!683 = !DILocation(line: 169, column: 44, scope: !659)
!684 = !DILocation(line: 169, column: 24, scope: !659)
!685 = !DILocation(line: 169, column: 3, scope: !659)
!686 = !DILocation(line: 170, column: 2, scope: !659)
!687 = !DILocation(line: 160, column: 64, scope: !652)
!688 = !DILocation(line: 160, column: 67, scope: !652)
!689 = !DILocation(line: 160, column: 52, scope: !652)
!690 = !DILocation(line: 160, column: 50, scope: !652)
!691 = !DILocation(line: 160, column: 2, scope: !652)
!692 = distinct !{!692, !656, !693}
!693 = !DILocation(line: 170, column: 2, scope: !647)
!694 = !DILocation(line: 171, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !485, file: !2, line: 171, column: 6)
!696 = !DILocation(line: 171, column: 11, scope: !695)
!697 = !DILocation(line: 171, column: 14, scope: !695)
!698 = !DILocation(line: 171, column: 8, scope: !695)
!699 = !DILocation(line: 171, column: 6, scope: !485)
!700 = !DILocation(line: 172, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !695, file: !2, line: 171, column: 25)
!702 = !DILocation(line: 179, column: 7, scope: !504)
!703 = !DILocation(line: 179, column: 11, scope: !504)
!704 = !DILocation(line: 179, column: 18, scope: !507)
!705 = !DILocation(line: 179, column: 34, scope: !507)
!706 = !DILocation(line: 179, column: 37, scope: !507)
!707 = !DILocation(line: 179, column: 40, scope: !507)
!708 = !DILocation(line: 179, column: 23, scope: !507)
!709 = !DILocation(line: 179, column: 20, scope: !507)
!710 = !DILocation(line: 179, column: 2, scope: !504)
!711 = !DILocation(line: 180, column: 3, scope: !506)
!712 = !DILocation(line: 180, column: 13, scope: !506)
!713 = !DILocation(line: 180, column: 18, scope: !506)
!714 = !DILocation(line: 180, column: 21, scope: !506)
!715 = !DILocation(line: 180, column: 29, scope: !506)
!716 = !DILocation(line: 180, column: 32, scope: !506)
!717 = !DILocation(line: 181, column: 3, scope: !506)
!718 = !DILocation(line: 181, column: 7, scope: !506)
!719 = !DILocation(line: 183, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !506, file: !2, line: 183, column: 7)
!721 = !DILocation(line: 183, column: 10, scope: !720)
!722 = !DILocation(line: 183, column: 7, scope: !506)
!723 = !DILocation(line: 184, column: 4, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !2, line: 183, column: 16)
!725 = !DILocation(line: 187, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !506, file: !2, line: 187, column: 3)
!727 = !DILocation(line: 187, column: 10, scope: !726)
!728 = !DILocation(line: 187, column: 8, scope: !726)
!729 = !DILocation(line: 187, column: 16, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !2, line: 187, column: 3)
!731 = !DILocation(line: 187, column: 18, scope: !730)
!732 = !DILocation(line: 187, column: 23, scope: !730)
!733 = !DILocation(line: 187, column: 26, scope: !730)
!734 = !DILocation(line: 187, column: 31, scope: !730)
!735 = !DILocation(line: 187, column: 28, scope: !730)
!736 = !DILocation(line: 187, column: 3, scope: !726)
!737 = !DILocation(line: 188, column: 19, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 188, column: 8)
!739 = distinct !DILexicalBlock(scope: !730, file: !2, line: 187, column: 67)
!740 = !DILocation(line: 188, column: 22, scope: !738)
!741 = !DILocation(line: 188, column: 8, scope: !738)
!742 = !DILocation(line: 188, column: 8, scope: !739)
!743 = !DILocation(line: 189, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !738, file: !2, line: 188, column: 26)
!745 = !DILocation(line: 191, column: 19, scope: !739)
!746 = !DILocation(line: 191, column: 22, scope: !739)
!747 = !DILocation(line: 191, column: 4, scope: !739)
!748 = !DILocation(line: 192, column: 3, scope: !739)
!749 = !DILocation(line: 187, column: 36, scope: !730)
!750 = !DILocation(line: 187, column: 60, scope: !730)
!751 = !DILocation(line: 187, column: 63, scope: !730)
!752 = !DILocation(line: 187, column: 44, scope: !730)
!753 = !DILocation(line: 187, column: 42, scope: !730)
!754 = !DILocation(line: 187, column: 3, scope: !730)
!755 = distinct !{!755, !736, !756}
!756 = !DILocation(line: 192, column: 3, scope: !726)
!757 = !DILocation(line: 193, column: 2, scope: !507)
!758 = !DILocation(line: 193, column: 2, scope: !506)
!759 = !DILocation(line: 179, column: 53, scope: !507)
!760 = !DILocation(line: 179, column: 2, scope: !507)
!761 = distinct !{!761, !710, !762}
!762 = !DILocation(line: 193, column: 2, scope: !504)
!763 = !DILocation(line: 198, column: 23, scope: !764)
!764 = distinct !DILexicalBlock(scope: !485, file: !2, line: 198, column: 2)
!765 = !DILocation(line: 198, column: 11, scope: !764)
!766 = !DILocation(line: 198, column: 9, scope: !764)
!767 = !DILocation(line: 198, column: 7, scope: !764)
!768 = !DILocation(line: 198, column: 30, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !2, line: 198, column: 2)
!770 = !DILocation(line: 198, column: 34, scope: !769)
!771 = !DILocation(line: 198, column: 37, scope: !769)
!772 = !DILocation(line: 198, column: 32, scope: !769)
!773 = !DILocation(line: 198, column: 2, scope: !764)
!774 = !DILocation(line: 199, column: 18, scope: !775)
!775 = distinct !DILexicalBlock(scope: !769, file: !2, line: 198, column: 71)
!776 = !DILocation(line: 199, column: 21, scope: !775)
!777 = !DILocation(line: 199, column: 36, scope: !775)
!778 = !DILocation(line: 199, column: 39, scope: !775)
!779 = !DILocation(line: 199, column: 25, scope: !775)
!780 = !DILocation(line: 199, column: 24, scope: !775)
!781 = !DILocation(line: 199, column: 3, scope: !775)
!782 = !DILocation(line: 200, column: 2, scope: !775)
!783 = !DILocation(line: 198, column: 64, scope: !769)
!784 = !DILocation(line: 198, column: 67, scope: !769)
!785 = !DILocation(line: 198, column: 52, scope: !769)
!786 = !DILocation(line: 198, column: 50, scope: !769)
!787 = !DILocation(line: 198, column: 2, scope: !769)
!788 = distinct !{!788, !773, !789}
!789 = !DILocation(line: 200, column: 2, scope: !764)
!790 = !DILocation(line: 201, column: 2, scope: !485)
!791 = !DILocation(line: 202, column: 1, scope: !485)
!792 = distinct !DISubprogram(name: "right_chunk", scope: !127, file: !127, line: 204, type: !793, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!267, !262, !267}
!795 = !{!796, !797}
!796 = !DILocalVariable(name: "h", arg: 1, scope: !792, file: !127, line: 204, type: !262)
!797 = !DILocalVariable(name: "c", arg: 2, scope: !792, file: !127, line: 204, type: !267)
!798 = !DILocation(line: 204, column: 52, scope: !792)
!799 = !DILocation(line: 204, column: 65, scope: !792)
!800 = !DILocation(line: 206, column: 9, scope: !792)
!801 = !DILocation(line: 206, column: 24, scope: !792)
!802 = !DILocation(line: 206, column: 27, scope: !792)
!803 = !DILocation(line: 206, column: 13, scope: !792)
!804 = !DILocation(line: 206, column: 11, scope: !792)
!805 = !DILocation(line: 206, column: 2, scope: !792)
!806 = distinct !DISubprogram(name: "valid_chunk", scope: !2, file: !2, line: 31, type: !807, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !809)
!807 = !DISubroutineType(types: !808)
!808 = !{!488, !262, !267}
!809 = !{!810, !811}
!810 = !DILocalVariable(name: "h", arg: 1, scope: !806, file: !2, line: 31, type: !262)
!811 = !DILocalVariable(name: "c", arg: 2, scope: !806, file: !2, line: 31, type: !267)
!812 = !DILocation(line: 31, column: 41, scope: !806)
!813 = !DILocation(line: 31, column: 54, scope: !806)
!814 = !DILocation(line: 33, column: 2, scope: !806)
!815 = !DILocation(line: 33, column: 24, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !2, line: 33, column: 11)
!817 = distinct !DILexicalBlock(scope: !806, file: !2, line: 33, column: 5)
!818 = !DILocation(line: 33, column: 27, scope: !816)
!819 = !DILocation(line: 33, column: 13, scope: !816)
!820 = !DILocation(line: 33, column: 30, scope: !816)
!821 = !DILocation(line: 33, column: 11, scope: !817)
!822 = !DILocation(line: 33, column: 38, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !2, line: 33, column: 36)
!824 = !DILocation(line: 33, column: 50, scope: !817)
!825 = !DILocation(line: 34, column: 2, scope: !806)
!826 = !DILocation(line: 34, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 34, column: 11)
!828 = distinct !DILexicalBlock(scope: !806, file: !2, line: 34, column: 5)
!829 = !DILocation(line: 34, column: 28, scope: !827)
!830 = !DILocation(line: 34, column: 31, scope: !827)
!831 = !DILocation(line: 34, column: 17, scope: !827)
!832 = !DILocation(line: 34, column: 15, scope: !827)
!833 = !DILocation(line: 34, column: 37, scope: !827)
!834 = !DILocation(line: 34, column: 40, scope: !827)
!835 = !DILocation(line: 34, column: 34, scope: !827)
!836 = !DILocation(line: 34, column: 11, scope: !828)
!837 = !DILocation(line: 34, column: 54, scope: !838)
!838 = distinct !DILexicalBlock(scope: !827, file: !2, line: 34, column: 52)
!839 = !DILocation(line: 34, column: 66, scope: !828)
!840 = !DILocation(line: 35, column: 2, scope: !806)
!841 = !DILocation(line: 35, column: 23, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !2, line: 35, column: 11)
!843 = distinct !DILexicalBlock(scope: !806, file: !2, line: 35, column: 5)
!844 = !DILocation(line: 35, column: 26, scope: !842)
!845 = !DILocation(line: 35, column: 13, scope: !842)
!846 = !DILocation(line: 35, column: 11, scope: !843)
!847 = !DILocation(line: 35, column: 33, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !2, line: 35, column: 31)
!849 = !DILocation(line: 35, column: 45, scope: !843)
!850 = !DILocation(line: 36, column: 2, scope: !806)
!851 = !DILocation(line: 36, column: 25, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 36, column: 11)
!853 = distinct !DILexicalBlock(scope: !806, file: !2, line: 36, column: 5)
!854 = !DILocation(line: 36, column: 39, scope: !852)
!855 = !DILocation(line: 36, column: 42, scope: !852)
!856 = !DILocation(line: 36, column: 28, scope: !852)
!857 = !DILocation(line: 36, column: 13, scope: !852)
!858 = !DILocation(line: 36, column: 49, scope: !852)
!859 = !DILocation(line: 36, column: 46, scope: !852)
!860 = !DILocation(line: 36, column: 11, scope: !853)
!861 = !DILocation(line: 36, column: 55, scope: !862)
!862 = distinct !DILexicalBlock(scope: !852, file: !2, line: 36, column: 53)
!863 = !DILocation(line: 36, column: 67, scope: !853)
!864 = !DILocation(line: 37, column: 2, scope: !806)
!865 = !DILocation(line: 37, column: 24, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 37, column: 11)
!867 = distinct !DILexicalBlock(scope: !806, file: !2, line: 37, column: 5)
!868 = !DILocation(line: 37, column: 39, scope: !866)
!869 = !DILocation(line: 37, column: 42, scope: !866)
!870 = !DILocation(line: 37, column: 27, scope: !866)
!871 = !DILocation(line: 37, column: 13, scope: !866)
!872 = !DILocation(line: 37, column: 49, scope: !866)
!873 = !DILocation(line: 37, column: 46, scope: !866)
!874 = !DILocation(line: 37, column: 11, scope: !867)
!875 = !DILocation(line: 37, column: 55, scope: !876)
!876 = distinct !DILexicalBlock(scope: !866, file: !2, line: 37, column: 53)
!877 = !DILocation(line: 37, column: 67, scope: !867)
!878 = !DILocation(line: 38, column: 17, scope: !879)
!879 = distinct !DILexicalBlock(scope: !806, file: !2, line: 38, column: 6)
!880 = !DILocation(line: 38, column: 20, scope: !879)
!881 = !DILocation(line: 38, column: 6, scope: !879)
!882 = !DILocation(line: 38, column: 6, scope: !806)
!883 = !DILocation(line: 39, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !879, file: !2, line: 38, column: 24)
!885 = !DILocation(line: 39, column: 32, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 39, column: 12)
!887 = distinct !DILexicalBlock(scope: !884, file: !2, line: 39, column: 6)
!888 = !DILocation(line: 39, column: 35, scope: !886)
!889 = !DILocation(line: 39, column: 15, scope: !886)
!890 = !DILocation(line: 39, column: 12, scope: !887)
!891 = !DILocation(line: 39, column: 42, scope: !892)
!892 = distinct !DILexicalBlock(scope: !886, file: !2, line: 39, column: 40)
!893 = !DILocation(line: 39, column: 54, scope: !887)
!894 = !DILocation(line: 40, column: 2, scope: !884)
!895 = !DILocation(line: 41, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !879, file: !2, line: 40, column: 9)
!897 = !DILocation(line: 41, column: 25, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !2, line: 41, column: 12)
!899 = distinct !DILexicalBlock(scope: !896, file: !2, line: 41, column: 6)
!900 = !DILocation(line: 41, column: 39, scope: !898)
!901 = !DILocation(line: 41, column: 42, scope: !898)
!902 = !DILocation(line: 41, column: 28, scope: !898)
!903 = !DILocation(line: 41, column: 14, scope: !898)
!904 = !DILocation(line: 41, column: 12, scope: !899)
!905 = !DILocation(line: 41, column: 50, scope: !906)
!906 = distinct !DILexicalBlock(scope: !898, file: !2, line: 41, column: 48)
!907 = !DILocation(line: 41, column: 62, scope: !899)
!908 = !DILocation(line: 42, column: 3, scope: !896)
!909 = !DILocation(line: 42, column: 25, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !2, line: 42, column: 12)
!911 = distinct !DILexicalBlock(scope: !896, file: !2, line: 42, column: 6)
!912 = !DILocation(line: 42, column: 40, scope: !910)
!913 = !DILocation(line: 42, column: 43, scope: !910)
!914 = !DILocation(line: 42, column: 28, scope: !910)
!915 = !DILocation(line: 42, column: 14, scope: !910)
!916 = !DILocation(line: 42, column: 12, scope: !911)
!917 = !DILocation(line: 42, column: 51, scope: !918)
!918 = distinct !DILexicalBlock(scope: !910, file: !2, line: 42, column: 49)
!919 = !DILocation(line: 42, column: 63, scope: !911)
!920 = !DILocation(line: 43, column: 25, scope: !921)
!921 = distinct !DILexicalBlock(scope: !896, file: !2, line: 43, column: 7)
!922 = !DILocation(line: 43, column: 28, scope: !921)
!923 = !DILocation(line: 43, column: 8, scope: !921)
!924 = !DILocation(line: 43, column: 7, scope: !896)
!925 = !DILocation(line: 44, column: 4, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !2, line: 43, column: 32)
!927 = !DILocation(line: 44, column: 25, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 44, column: 13)
!929 = distinct !DILexicalBlock(scope: !926, file: !2, line: 44, column: 7)
!930 = !DILocation(line: 44, column: 44, scope: !928)
!931 = !DILocation(line: 44, column: 47, scope: !928)
!932 = !DILocation(line: 44, column: 28, scope: !928)
!933 = !DILocation(line: 44, column: 15, scope: !928)
!934 = !DILocation(line: 44, column: 13, scope: !929)
!935 = !DILocation(line: 44, column: 55, scope: !936)
!936 = distinct !DILexicalBlock(scope: !928, file: !2, line: 44, column: 53)
!937 = !DILocation(line: 44, column: 67, scope: !929)
!938 = !DILocation(line: 45, column: 4, scope: !926)
!939 = !DILocation(line: 45, column: 25, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !2, line: 45, column: 13)
!941 = distinct !DILexicalBlock(scope: !926, file: !2, line: 45, column: 7)
!942 = !DILocation(line: 45, column: 44, scope: !940)
!943 = !DILocation(line: 45, column: 47, scope: !940)
!944 = !DILocation(line: 45, column: 28, scope: !940)
!945 = !DILocation(line: 45, column: 15, scope: !940)
!946 = !DILocation(line: 45, column: 13, scope: !941)
!947 = !DILocation(line: 45, column: 55, scope: !948)
!948 = distinct !DILexicalBlock(scope: !940, file: !2, line: 45, column: 53)
!949 = !DILocation(line: 45, column: 67, scope: !941)
!950 = !DILocation(line: 46, column: 3, scope: !926)
!951 = !DILocation(line: 48, column: 2, scope: !806)
!952 = !DILocation(line: 49, column: 1, scope: !806)
!953 = distinct !DISubprogram(name: "bucket_idx", scope: !127, file: !127, line: 250, type: !954, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !957)
!954 = !DISubroutineType(types: !955)
!955 = !{!135, !262, !956}
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "chunksz_t", file: !127, line: 62, baseType: !37)
!957 = !{!958, !959, !960}
!958 = !DILocalVariable(name: "h", arg: 1, scope: !953, file: !127, line: 250, type: !262)
!959 = !DILocalVariable(name: "sz", arg: 2, scope: !953, file: !127, line: 250, type: !956)
!960 = !DILocalVariable(name: "usable_sz", scope: !953, file: !127, line: 252, type: !39)
!961 = !DILocation(line: 250, column: 45, scope: !953)
!962 = !DILocation(line: 250, column: 58, scope: !953)
!963 = !DILocation(line: 252, column: 2, scope: !953)
!964 = !DILocation(line: 252, column: 15, scope: !953)
!965 = !DILocation(line: 252, column: 27, scope: !953)
!966 = !DILocation(line: 252, column: 47, scope: !953)
!967 = !DILocation(line: 252, column: 32, scope: !953)
!968 = !DILocation(line: 252, column: 30, scope: !953)
!969 = !DILocation(line: 252, column: 50, scope: !953)
!970 = !DILocation(line: 253, column: 28, scope: !953)
!971 = !DILocation(line: 253, column: 14, scope: !953)
!972 = !DILocation(line: 253, column: 12, scope: !953)
!973 = !DILocation(line: 254, column: 1, scope: !953)
!974 = !DILocation(line: 253, column: 2, scope: !953)
!975 = distinct !DISubprogram(name: "check_nexts", scope: !2, file: !2, line: 55, type: !976, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !978)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !262, !135}
!978 = !{!979, !980, !981, !983, !984, !985}
!979 = !DILocalVariable(name: "h", arg: 1, scope: !975, file: !2, line: 55, type: !262)
!980 = !DILocalVariable(name: "bidx", arg: 2, scope: !975, file: !2, line: 55, type: !135)
!981 = !DILocalVariable(name: "b", scope: !975, file: !2, line: 57, type: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 32)
!983 = !DILocalVariable(name: "emptybit", scope: !975, file: !2, line: 59, type: !488)
!984 = !DILocalVariable(name: "emptylist", scope: !975, file: !2, line: 60, type: !488)
!985 = !DILocalVariable(name: "empties_match", scope: !975, file: !2, line: 61, type: !488)
!986 = !DILocation(line: 55, column: 47, scope: !975)
!987 = !DILocation(line: 55, column: 54, scope: !975)
!988 = !DILocation(line: 57, column: 2, scope: !975)
!989 = !DILocation(line: 57, column: 24, scope: !975)
!990 = !DILocation(line: 57, column: 29, scope: !975)
!991 = !DILocation(line: 57, column: 32, scope: !975)
!992 = !DILocation(line: 57, column: 40, scope: !975)
!993 = !DILocation(line: 59, column: 2, scope: !975)
!994 = !DILocation(line: 59, column: 8, scope: !975)
!995 = !DILocation(line: 59, column: 20, scope: !975)
!996 = !DILocation(line: 59, column: 23, scope: !975)
!997 = !DILocation(line: 59, column: 48, scope: !975)
!998 = !DILocation(line: 59, column: 44, scope: !975)
!999 = !DILocation(line: 59, column: 37, scope: !975)
!1000 = !DILocation(line: 59, column: 56, scope: !975)
!1001 = !DILocation(line: 60, column: 2, scope: !975)
!1002 = !DILocation(line: 60, column: 8, scope: !975)
!1003 = !DILocation(line: 60, column: 20, scope: !975)
!1004 = !DILocation(line: 60, column: 23, scope: !975)
!1005 = !DILocation(line: 60, column: 28, scope: !975)
!1006 = !DILocation(line: 61, column: 2, scope: !975)
!1007 = !DILocation(line: 61, column: 8, scope: !975)
!1008 = !DILocation(line: 61, column: 24, scope: !975)
!1009 = !DILocation(line: 61, column: 36, scope: !975)
!1010 = !DILocation(line: 61, column: 33, scope: !975)
!1011 = !DILocation(line: 63, column: 8, scope: !975)
!1012 = !DILocation(line: 66, column: 6, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !975, file: !2, line: 66, column: 6)
!1014 = !DILocation(line: 66, column: 9, scope: !1013)
!1015 = !DILocation(line: 66, column: 14, scope: !1013)
!1016 = !DILocation(line: 66, column: 6, scope: !975)
!1017 = !DILocation(line: 68, column: 2, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !2, line: 66, column: 20)
!1019 = !DILocation(line: 69, column: 1, scope: !975)
!1020 = distinct !DISubprogram(name: "set_chunk_used", scope: !127, file: !127, line: 147, type: !1021, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1023)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !262, !267, !488}
!1023 = !{!1024, !1025, !1026, !1027, !1028}
!1024 = !DILocalVariable(name: "h", arg: 1, scope: !1020, file: !127, line: 147, type: !262)
!1025 = !DILocalVariable(name: "c", arg: 2, scope: !1020, file: !127, line: 147, type: !267)
!1026 = !DILocalVariable(name: "used", arg: 3, scope: !1020, file: !127, line: 147, type: !488)
!1027 = !DILocalVariable(name: "buf", scope: !1020, file: !127, line: 149, type: !140)
!1028 = !DILocalVariable(name: "cmem", scope: !1020, file: !127, line: 150, type: !134)
!1029 = !DILocation(line: 147, column: 50, scope: !1020)
!1030 = !DILocation(line: 147, column: 63, scope: !1020)
!1031 = !DILocation(line: 147, column: 72, scope: !1020)
!1032 = !DILocation(line: 149, column: 2, scope: !1020)
!1033 = !DILocation(line: 149, column: 16, scope: !1020)
!1034 = !DILocation(line: 149, column: 32, scope: !1020)
!1035 = !DILocation(line: 149, column: 22, scope: !1020)
!1036 = !DILocation(line: 150, column: 2, scope: !1020)
!1037 = !DILocation(line: 150, column: 8, scope: !1020)
!1038 = !DILocation(line: 150, column: 16, scope: !1020)
!1039 = !DILocation(line: 150, column: 20, scope: !1020)
!1040 = !DILocation(line: 152, column: 15, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1020, file: !127, line: 152, column: 6)
!1042 = !DILocation(line: 152, column: 6, scope: !1041)
!1043 = !DILocation(line: 152, column: 6, scope: !1020)
!1044 = !DILocation(line: 153, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !127, line: 153, column: 7)
!1046 = distinct !DILexicalBlock(scope: !1041, file: !127, line: 152, column: 19)
!1047 = !DILocation(line: 153, column: 7, scope: !1046)
!1048 = !DILocation(line: 154, column: 17, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !127, line: 153, column: 13)
!1050 = !DILocation(line: 154, column: 4, scope: !1049)
!1051 = !DILocation(line: 154, column: 38, scope: !1049)
!1052 = !DILocation(line: 155, column: 3, scope: !1049)
!1053 = !DILocation(line: 156, column: 17, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !127, line: 155, column: 10)
!1055 = !DILocation(line: 156, column: 4, scope: !1054)
!1056 = !DILocation(line: 156, column: 38, scope: !1054)
!1057 = !DILocation(line: 158, column: 2, scope: !1046)
!1058 = !DILocation(line: 159, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !127, line: 159, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1041, file: !127, line: 158, column: 9)
!1061 = !DILocation(line: 159, column: 7, scope: !1060)
!1062 = !DILocation(line: 160, column: 17, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1059, file: !127, line: 159, column: 13)
!1064 = !DILocation(line: 160, column: 4, scope: !1063)
!1065 = !DILocation(line: 160, column: 38, scope: !1063)
!1066 = !DILocation(line: 161, column: 3, scope: !1063)
!1067 = !DILocation(line: 162, column: 17, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1059, file: !127, line: 161, column: 10)
!1069 = !DILocation(line: 162, column: 4, scope: !1068)
!1070 = !DILocation(line: 162, column: 38, scope: !1068)
!1071 = !DILocation(line: 165, column: 1, scope: !1020)
!1072 = distinct !DISubprogram(name: "next_free_chunk", scope: !127, file: !127, line: 182, type: !793, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1073)
!1073 = !{!1074, !1075}
!1074 = !DILocalVariable(name: "h", arg: 1, scope: !1072, file: !127, line: 182, type: !262)
!1075 = !DILocalVariable(name: "c", arg: 2, scope: !1072, file: !127, line: 182, type: !267)
!1076 = !DILocation(line: 182, column: 56, scope: !1072)
!1077 = !DILocation(line: 182, column: 69, scope: !1072)
!1078 = !DILocation(line: 184, column: 21, scope: !1072)
!1079 = !DILocation(line: 184, column: 24, scope: !1072)
!1080 = !DILocation(line: 184, column: 9, scope: !1072)
!1081 = !DILocation(line: 184, column: 2, scope: !1072)
!1082 = distinct !DISubprogram(name: "chunk_used", scope: !127, file: !127, line: 137, type: !807, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1083)
!1083 = !{!1084, !1085}
!1084 = !DILocalVariable(name: "h", arg: 1, scope: !1082, file: !127, line: 137, type: !262)
!1085 = !DILocalVariable(name: "c", arg: 2, scope: !1082, file: !127, line: 137, type: !267)
!1086 = !DILocation(line: 137, column: 47, scope: !1082)
!1087 = !DILocation(line: 137, column: 60, scope: !1082)
!1088 = !DILocation(line: 139, column: 21, scope: !1082)
!1089 = !DILocation(line: 139, column: 24, scope: !1082)
!1090 = !DILocation(line: 139, column: 9, scope: !1082)
!1091 = !DILocation(line: 139, column: 42, scope: !1082)
!1092 = !DILocation(line: 139, column: 2, scope: !1082)
!1093 = distinct !DISubprogram(name: "solo_free_header", scope: !127, file: !127, line: 215, type: !807, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1094)
!1094 = !{!1095, !1096}
!1095 = !DILocalVariable(name: "h", arg: 1, scope: !1093, file: !127, line: 215, type: !262)
!1096 = !DILocalVariable(name: "c", arg: 2, scope: !1093, file: !127, line: 215, type: !267)
!1097 = !DILocation(line: 215, column: 53, scope: !1093)
!1098 = !DILocation(line: 215, column: 66, scope: !1093)
!1099 = !DILocation(line: 217, column: 18, scope: !1093)
!1100 = !DILocation(line: 217, column: 9, scope: !1093)
!1101 = !DILocation(line: 217, column: 21, scope: !1093)
!1102 = !DILocation(line: 217, column: 35, scope: !1093)
!1103 = !DILocation(line: 217, column: 38, scope: !1093)
!1104 = !DILocation(line: 217, column: 24, scope: !1093)
!1105 = !DILocation(line: 217, column: 41, scope: !1093)
!1106 = !DILocation(line: 0, scope: !1093)
!1107 = !DILocation(line: 217, column: 2, scope: !1093)
!1108 = distinct !DISubprogram(name: "left_chunk", scope: !127, file: !127, line: 199, type: !793, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1109)
!1109 = !{!1110, !1111}
!1110 = !DILocalVariable(name: "h", arg: 1, scope: !1108, file: !127, line: 199, type: !262)
!1111 = !DILocalVariable(name: "c", arg: 2, scope: !1108, file: !127, line: 199, type: !267)
!1112 = !DILocation(line: 199, column: 51, scope: !1108)
!1113 = !DILocation(line: 199, column: 64, scope: !1108)
!1114 = !DILocation(line: 201, column: 9, scope: !1108)
!1115 = !DILocation(line: 201, column: 25, scope: !1108)
!1116 = !DILocation(line: 201, column: 28, scope: !1108)
!1117 = !DILocation(line: 201, column: 13, scope: !1108)
!1118 = !DILocation(line: 201, column: 11, scope: !1108)
!1119 = !DILocation(line: 201, column: 2, scope: !1108)
!1120 = distinct !DISubprogram(name: "sys_heap_stress", scope: !2, file: !2, line: 300, type: !1121, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1136)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1123, !1126, !134, !279, !37, !134, !279, !135, !1129}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 32)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!134, !134, !279}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 32)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null, !134, !134}
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 32)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_result", file: !259, line: 62, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "total_allocs", scope: !1130, file: !259, line: 63, baseType: !37, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "successful_allocs", scope: !1130, file: !259, line: 64, baseType: !37, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "total_frees", scope: !1130, file: !259, line: 65, baseType: !37, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "accumulated_in_use_bytes", scope: !1130, file: !259, line: 66, baseType: !150, size: 64, offset: 128)
!1136 = !{!1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1163, !1165, !1170, !1171, !1173, !1174}
!1137 = !DILocalVariable(name: "alloc_fn", arg: 1, scope: !1120, file: !2, line: 300, type: !1123)
!1138 = !DILocalVariable(name: "free_fn", arg: 2, scope: !1120, file: !2, line: 301, type: !1126)
!1139 = !DILocalVariable(name: "arg", arg: 3, scope: !1120, file: !2, line: 302, type: !134)
!1140 = !DILocalVariable(name: "total_bytes", arg: 4, scope: !1120, file: !2, line: 302, type: !279)
!1141 = !DILocalVariable(name: "op_count", arg: 5, scope: !1120, file: !2, line: 303, type: !37)
!1142 = !DILocalVariable(name: "scratch_mem", arg: 6, scope: !1120, file: !2, line: 304, type: !134)
!1143 = !DILocalVariable(name: "scratch_bytes", arg: 7, scope: !1120, file: !2, line: 304, type: !279)
!1144 = !DILocalVariable(name: "target_percent", arg: 8, scope: !1120, file: !2, line: 305, type: !135)
!1145 = !DILocalVariable(name: "result", arg: 9, scope: !1120, file: !2, line: 306, type: !1129)
!1146 = !DILocalVariable(name: "sr", scope: !1120, file: !2, line: 308, type: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_rec", file: !2, line: 204, size: 288, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1159, !1160, !1161, !1162}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_fn", scope: !1147, file: !2, line: 205, baseType: !1123, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "free_fn", scope: !1147, file: !2, line: 206, baseType: !1126, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1147, file: !2, line: 207, baseType: !134, size: 32, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "total_bytes", scope: !1147, file: !2, line: 208, baseType: !279, size: 32, offset: 96)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1147, file: !2, line: 209, baseType: !1154, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 32)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap_stress_block", file: !2, line: 216, size: 64, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1155, file: !2, line: 217, baseType: !134, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1155, file: !2, line: 218, baseType: !279, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nblocks", scope: !1147, file: !2, line: 210, baseType: !279, size: 32, offset: 160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_alloced", scope: !1147, file: !2, line: 211, baseType: !279, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_alloced", scope: !1147, file: !2, line: 212, baseType: !279, size: 32, offset: 224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "target_percent", scope: !1147, file: !2, line: 213, baseType: !37, size: 32, offset: 256)
!1163 = !DILocalVariable(name: "i", scope: !1164, file: !2, line: 320, type: !37)
!1164 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 320, column: 2)
!1165 = !DILocalVariable(name: "sz", scope: !1166, file: !2, line: 322, type: !279)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 321, column: 31)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 321, column: 7)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 320, column: 42)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 320, column: 2)
!1170 = !DILocalVariable(name: "p", scope: !1166, file: !2, line: 323, type: !134)
!1171 = !DILocalVariable(name: "b", scope: !1172, file: !2, line: 334, type: !135)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 333, column: 10)
!1173 = !DILocalVariable(name: "p", scope: !1172, file: !2, line: 335, type: !134)
!1174 = !DILocalVariable(name: "sz", scope: !1172, file: !2, line: 336, type: !279)
!1175 = !DILocation(line: 300, column: 30, scope: !1120)
!1176 = !DILocation(line: 301, column: 15, scope: !1120)
!1177 = !DILocation(line: 302, column: 14, scope: !1120)
!1178 = !DILocation(line: 302, column: 26, scope: !1120)
!1179 = !DILocation(line: 303, column: 17, scope: !1120)
!1180 = !DILocation(line: 304, column: 14, scope: !1120)
!1181 = !DILocation(line: 304, column: 34, scope: !1120)
!1182 = !DILocation(line: 305, column: 12, scope: !1120)
!1183 = !DILocation(line: 306, column: 37, scope: !1120)
!1184 = !DILocation(line: 308, column: 2, scope: !1120)
!1185 = !DILocation(line: 308, column: 27, scope: !1120)
!1186 = !DILocation(line: 308, column: 32, scope: !1120)
!1187 = !DILocation(line: 309, column: 21, scope: !1120)
!1188 = !DILocation(line: 310, column: 20, scope: !1120)
!1189 = !DILocation(line: 311, column: 16, scope: !1120)
!1190 = !DILocation(line: 312, column: 24, scope: !1120)
!1191 = !DILocation(line: 313, column: 19, scope: !1120)
!1192 = !DILocation(line: 314, column: 20, scope: !1120)
!1193 = !DILocation(line: 314, column: 34, scope: !1120)
!1194 = !DILocation(line: 315, column: 27, scope: !1120)
!1195 = !DILocation(line: 318, column: 3, scope: !1120)
!1196 = !DILocation(line: 318, column: 12, scope: !1120)
!1197 = !DILocation(line: 320, column: 7, scope: !1164)
!1198 = !DILocation(line: 320, column: 16, scope: !1164)
!1199 = !DILocation(line: 320, column: 23, scope: !1169)
!1200 = !DILocation(line: 320, column: 27, scope: !1169)
!1201 = !DILocation(line: 320, column: 25, scope: !1169)
!1202 = !DILocation(line: 320, column: 2, scope: !1164)
!1203 = !DILocation(line: 320, column: 2, scope: !1169)
!1204 = !DILocation(line: 321, column: 7, scope: !1167)
!1205 = !DILocation(line: 321, column: 7, scope: !1168)
!1206 = !DILocation(line: 322, column: 4, scope: !1166)
!1207 = !DILocation(line: 322, column: 11, scope: !1166)
!1208 = !DILocation(line: 322, column: 16, scope: !1166)
!1209 = !DILocation(line: 323, column: 4, scope: !1166)
!1210 = !DILocation(line: 323, column: 10, scope: !1166)
!1211 = !DILocation(line: 323, column: 17, scope: !1166)
!1212 = !DILocation(line: 323, column: 29, scope: !1166)
!1213 = !DILocation(line: 323, column: 34, scope: !1166)
!1214 = !DILocation(line: 323, column: 14, scope: !1166)
!1215 = !DILocation(line: 325, column: 4, scope: !1166)
!1216 = !DILocation(line: 325, column: 12, scope: !1166)
!1217 = !DILocation(line: 325, column: 24, scope: !1166)
!1218 = !DILocation(line: 326, column: 8, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 326, column: 8)
!1220 = !DILocation(line: 326, column: 10, scope: !1219)
!1221 = !DILocation(line: 326, column: 8, scope: !1166)
!1222 = !DILocation(line: 327, column: 5, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 326, column: 25)
!1224 = !DILocation(line: 327, column: 13, scope: !1223)
!1225 = !DILocation(line: 327, column: 30, scope: !1223)
!1226 = !DILocation(line: 328, column: 40, scope: !1223)
!1227 = !DILocation(line: 328, column: 8, scope: !1223)
!1228 = !DILocation(line: 328, column: 18, scope: !1223)
!1229 = !DILocation(line: 328, column: 5, scope: !1223)
!1230 = !DILocation(line: 328, column: 34, scope: !1223)
!1231 = !DILocation(line: 328, column: 38, scope: !1223)
!1232 = !DILocation(line: 329, column: 39, scope: !1223)
!1233 = !DILocation(line: 329, column: 8, scope: !1223)
!1234 = !DILocation(line: 329, column: 18, scope: !1223)
!1235 = !DILocation(line: 329, column: 5, scope: !1223)
!1236 = !DILocation(line: 329, column: 34, scope: !1223)
!1237 = !DILocation(line: 329, column: 37, scope: !1223)
!1238 = !DILocation(line: 330, column: 8, scope: !1223)
!1239 = !DILocation(line: 330, column: 22, scope: !1223)
!1240 = !DILocation(line: 331, column: 25, scope: !1223)
!1241 = !DILocation(line: 331, column: 8, scope: !1223)
!1242 = !DILocation(line: 331, column: 22, scope: !1223)
!1243 = !DILocation(line: 332, column: 4, scope: !1223)
!1244 = !DILocation(line: 333, column: 3, scope: !1167)
!1245 = !DILocation(line: 333, column: 3, scope: !1166)
!1246 = !DILocation(line: 334, column: 4, scope: !1172)
!1247 = !DILocation(line: 334, column: 8, scope: !1172)
!1248 = !DILocation(line: 334, column: 12, scope: !1172)
!1249 = !DILocation(line: 335, column: 4, scope: !1172)
!1250 = !DILocation(line: 335, column: 10, scope: !1172)
!1251 = !DILocation(line: 335, column: 17, scope: !1172)
!1252 = !DILocation(line: 335, column: 24, scope: !1172)
!1253 = !DILocation(line: 335, column: 14, scope: !1172)
!1254 = !DILocation(line: 335, column: 27, scope: !1172)
!1255 = !DILocation(line: 336, column: 4, scope: !1172)
!1256 = !DILocation(line: 336, column: 11, scope: !1172)
!1257 = !DILocation(line: 336, column: 19, scope: !1172)
!1258 = !DILocation(line: 336, column: 26, scope: !1172)
!1259 = !DILocation(line: 336, column: 16, scope: !1172)
!1260 = !DILocation(line: 336, column: 29, scope: !1172)
!1261 = !DILocation(line: 338, column: 4, scope: !1172)
!1262 = !DILocation(line: 338, column: 12, scope: !1172)
!1263 = !DILocation(line: 338, column: 23, scope: !1172)
!1264 = !DILocation(line: 339, column: 7, scope: !1172)
!1265 = !DILocation(line: 339, column: 14, scope: !1172)
!1266 = !DILocation(line: 339, column: 4, scope: !1172)
!1267 = !DILocation(line: 339, column: 22, scope: !1172)
!1268 = !DILocation(line: 339, column: 32, scope: !1172)
!1269 = !DILocation(line: 339, column: 47, scope: !1172)
!1270 = !DILocation(line: 339, column: 19, scope: !1172)
!1271 = !DILocation(line: 340, column: 7, scope: !1172)
!1272 = !DILocation(line: 340, column: 21, scope: !1172)
!1273 = !DILocation(line: 341, column: 24, scope: !1172)
!1274 = !DILocation(line: 341, column: 7, scope: !1172)
!1275 = !DILocation(line: 341, column: 21, scope: !1172)
!1276 = !DILocation(line: 342, column: 7, scope: !1172)
!1277 = !DILocation(line: 342, column: 18, scope: !1172)
!1278 = !DILocation(line: 342, column: 23, scope: !1172)
!1279 = !DILocation(line: 342, column: 4, scope: !1172)
!1280 = !DILocation(line: 343, column: 3, scope: !1167)
!1281 = !DILocation(line: 344, column: 42, scope: !1168)
!1282 = !DILocation(line: 344, column: 39, scope: !1168)
!1283 = !DILocation(line: 344, column: 3, scope: !1168)
!1284 = !DILocation(line: 344, column: 11, scope: !1168)
!1285 = !DILocation(line: 344, column: 36, scope: !1168)
!1286 = !DILocation(line: 345, column: 2, scope: !1168)
!1287 = !DILocation(line: 320, column: 38, scope: !1169)
!1288 = distinct !{!1288, !1202, !1289}
!1289 = !DILocation(line: 345, column: 2, scope: !1164)
!1290 = !DILocation(line: 346, column: 1, scope: !1120)
!1291 = distinct !DISubprogram(name: "rand_alloc_choice", scope: !2, file: !2, line: 234, type: !1292, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1295)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!488, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 32)
!1295 = !{!1296, !1297, !1301, !1302}
!1296 = !DILocalVariable(name: "sr", arg: 1, scope: !1291, file: !2, line: 234, type: !1294)
!1297 = !DILocalVariable(name: "full_pct", scope: !1298, file: !2, line: 259, type: !37)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 241, column: 9)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 239, column: 13)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 237, column: 6)
!1301 = !DILocalVariable(name: "target", scope: !1298, file: !2, line: 260, type: !37)
!1302 = !DILocalVariable(name: "free_chance", scope: !1298, file: !2, line: 261, type: !37)
!1303 = !DILocation(line: 234, column: 58, scope: !1291)
!1304 = !DILocation(line: 237, column: 6, scope: !1300)
!1305 = !DILocation(line: 237, column: 10, scope: !1300)
!1306 = !DILocation(line: 237, column: 25, scope: !1300)
!1307 = !DILocation(line: 237, column: 6, scope: !1291)
!1308 = !DILocation(line: 238, column: 3, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 237, column: 31)
!1310 = !DILocation(line: 239, column: 13, scope: !1299)
!1311 = !DILocation(line: 239, column: 17, scope: !1299)
!1312 = !DILocation(line: 239, column: 35, scope: !1299)
!1313 = !DILocation(line: 239, column: 39, scope: !1299)
!1314 = !DILocation(line: 239, column: 32, scope: !1299)
!1315 = !DILocation(line: 239, column: 13, scope: !1300)
!1316 = !DILocation(line: 240, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 239, column: 48)
!1318 = !DILocation(line: 259, column: 3, scope: !1298)
!1319 = !DILocation(line: 259, column: 12, scope: !1298)
!1320 = !DILocation(line: 259, column: 30, scope: !1298)
!1321 = !DILocation(line: 259, column: 34, scope: !1298)
!1322 = !DILocation(line: 259, column: 28, scope: !1298)
!1323 = !DILocation(line: 259, column: 51, scope: !1298)
!1324 = !DILocation(line: 259, column: 55, scope: !1298)
!1325 = !DILocation(line: 259, column: 49, scope: !1298)
!1326 = !DILocation(line: 260, column: 3, scope: !1298)
!1327 = !DILocation(line: 260, column: 12, scope: !1298)
!1328 = !DILocation(line: 260, column: 21, scope: !1298)
!1329 = !DILocation(line: 260, column: 25, scope: !1298)
!1330 = !DILocation(line: 260, column: 42, scope: !1298)
!1331 = !DILocation(line: 260, column: 46, scope: !1298)
!1332 = !DILocation(line: 261, column: 3, scope: !1298)
!1333 = !DILocation(line: 261, column: 12, scope: !1298)
!1334 = !DILocation(line: 263, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 263, column: 7)
!1336 = !DILocation(line: 263, column: 18, scope: !1335)
!1337 = !DILocation(line: 263, column: 22, scope: !1335)
!1338 = !DILocation(line: 263, column: 16, scope: !1335)
!1339 = !DILocation(line: 263, column: 7, scope: !1298)
!1340 = !DILocation(line: 264, column: 18, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 263, column: 38)
!1342 = !DILocation(line: 264, column: 44, scope: !1341)
!1343 = !DILocation(line: 264, column: 42, scope: !1341)
!1344 = !DILocation(line: 264, column: 27, scope: !1341)
!1345 = !DILocation(line: 264, column: 16, scope: !1341)
!1346 = !DILocation(line: 265, column: 3, scope: !1341)
!1347 = !DILocation(line: 267, column: 10, scope: !1298)
!1348 = !DILocation(line: 267, column: 21, scope: !1298)
!1349 = !DILocation(line: 267, column: 19, scope: !1298)
!1350 = !DILocation(line: 267, column: 3, scope: !1298)
!1351 = !DILocation(line: 268, column: 2, scope: !1299)
!1352 = !DILocation(line: 269, column: 1, scope: !1291)
!1353 = distinct !DISubprogram(name: "rand_alloc_size", scope: !2, file: !2, line: 274, type: !1354, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1356)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!279, !1294}
!1356 = !{!1357, !1358}
!1357 = !DILocalVariable(name: "sr", arg: 1, scope: !1353, file: !2, line: 274, type: !1294)
!1358 = !DILocalVariable(name: "scale", scope: !1353, file: !2, line: 281, type: !135)
!1359 = !DILocation(line: 274, column: 57, scope: !1353)
!1360 = !DILocation(line: 276, column: 9, scope: !1353)
!1361 = !DILocation(line: 281, column: 2, scope: !1353)
!1362 = !DILocation(line: 281, column: 6, scope: !1353)
!1363 = !DILocation(line: 281, column: 32, scope: !1353)
!1364 = !DILocation(line: 281, column: 18, scope: !1353)
!1365 = !DILocation(line: 281, column: 16, scope: !1353)
!1366 = !DILocation(line: 283, column: 9, scope: !1353)
!1367 = !DILocation(line: 283, column: 30, scope: !1353)
!1368 = !DILocation(line: 283, column: 26, scope: !1353)
!1369 = !DILocation(line: 283, column: 38, scope: !1353)
!1370 = !DILocation(line: 283, column: 18, scope: !1353)
!1371 = !DILocation(line: 284, column: 1, scope: !1353)
!1372 = !DILocation(line: 283, column: 2, scope: !1353)
!1373 = distinct !DISubprogram(name: "rand_free_choice", scope: !2, file: !2, line: 287, type: !1354, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1374)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "sr", arg: 1, scope: !1373, file: !2, line: 287, type: !1294)
!1376 = !DILocation(line: 287, column: 58, scope: !1373)
!1377 = !DILocation(line: 289, column: 9, scope: !1373)
!1378 = !DILocation(line: 289, column: 20, scope: !1373)
!1379 = !DILocation(line: 289, column: 24, scope: !1373)
!1380 = !DILocation(line: 289, column: 18, scope: !1373)
!1381 = !DILocation(line: 289, column: 2, scope: !1373)
!1382 = distinct !DISubprogram(name: "heap_print_info", scope: !2, file: !2, line: 351, type: !1383, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1385)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !262, !488}
!1385 = !{!1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1398, !1399, !1400, !1403}
!1386 = !DILocalVariable(name: "h", arg: 1, scope: !1382, file: !2, line: 351, type: !262)
!1387 = !DILocalVariable(name: "dump_chunks", arg: 2, scope: !1382, file: !2, line: 351, type: !488)
!1388 = !DILocalVariable(name: "i", scope: !1382, file: !2, line: 353, type: !135)
!1389 = !DILocalVariable(name: "nb_buckets", scope: !1382, file: !2, line: 353, type: !135)
!1390 = !DILocalVariable(name: "free_bytes", scope: !1382, file: !2, line: 354, type: !279)
!1391 = !DILocalVariable(name: "allocated_bytes", scope: !1382, file: !2, line: 354, type: !279)
!1392 = !DILocalVariable(name: "total", scope: !1382, file: !2, line: 354, type: !279)
!1393 = !DILocalVariable(name: "overhead", scope: !1382, file: !2, line: 354, type: !279)
!1394 = !DILocalVariable(name: "first", scope: !1395, file: !2, line: 363, type: !267)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 362, column: 35)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 362, column: 2)
!1397 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 362, column: 2)
!1398 = !DILocalVariable(name: "largest", scope: !1395, file: !2, line: 364, type: !956)
!1399 = !DILocalVariable(name: "count", scope: !1395, file: !2, line: 365, type: !135)
!1400 = !DILocalVariable(name: "curr", scope: !1401, file: !2, line: 368, type: !267)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !2, line: 367, column: 14)
!1402 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 367, column: 7)
!1403 = !DILocalVariable(name: "c", scope: !1404, file: !2, line: 384, type: !267)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 384, column: 3)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 382, column: 19)
!1406 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 382, column: 6)
!1407 = !DILocation(line: 351, column: 37, scope: !1382)
!1408 = !DILocation(line: 351, column: 46, scope: !1382)
!1409 = !DILocation(line: 353, column: 2, scope: !1382)
!1410 = !DILocation(line: 353, column: 6, scope: !1382)
!1411 = !DILocation(line: 353, column: 9, scope: !1382)
!1412 = !DILocation(line: 353, column: 33, scope: !1382)
!1413 = !DILocation(line: 353, column: 36, scope: !1382)
!1414 = !DILocation(line: 353, column: 39, scope: !1382)
!1415 = !DILocation(line: 353, column: 22, scope: !1382)
!1416 = !DILocation(line: 353, column: 50, scope: !1382)
!1417 = !DILocation(line: 354, column: 2, scope: !1382)
!1418 = !DILocation(line: 354, column: 9, scope: !1382)
!1419 = !DILocation(line: 354, column: 21, scope: !1382)
!1420 = !DILocation(line: 354, column: 38, scope: !1382)
!1421 = !DILocation(line: 354, column: 45, scope: !1382)
!1422 = !DILocation(line: 357, column: 19, scope: !1382)
!1423 = !DILocation(line: 357, column: 9, scope: !1382)
!1424 = !DILocation(line: 357, column: 23, scope: !1382)
!1425 = !DILocation(line: 357, column: 26, scope: !1382)
!1426 = !DILocation(line: 357, column: 37, scope: !1382)
!1427 = !DILocation(line: 356, column: 2, scope: !1382)
!1428 = !DILocation(line: 359, column: 2, scope: !1382)
!1429 = !DILocation(line: 362, column: 9, scope: !1397)
!1430 = !DILocation(line: 362, column: 7, scope: !1397)
!1431 = !DILocation(line: 362, column: 14, scope: !1396)
!1432 = !DILocation(line: 362, column: 18, scope: !1396)
!1433 = !DILocation(line: 362, column: 16, scope: !1396)
!1434 = !DILocation(line: 362, column: 2, scope: !1397)
!1435 = !DILocation(line: 363, column: 3, scope: !1395)
!1436 = !DILocation(line: 363, column: 13, scope: !1395)
!1437 = !DILocation(line: 363, column: 21, scope: !1395)
!1438 = !DILocation(line: 363, column: 24, scope: !1395)
!1439 = !DILocation(line: 363, column: 32, scope: !1395)
!1440 = !DILocation(line: 363, column: 35, scope: !1395)
!1441 = !DILocation(line: 364, column: 3, scope: !1395)
!1442 = !DILocation(line: 364, column: 13, scope: !1395)
!1443 = !DILocation(line: 365, column: 3, scope: !1395)
!1444 = !DILocation(line: 365, column: 7, scope: !1395)
!1445 = !DILocation(line: 367, column: 7, scope: !1402)
!1446 = !DILocation(line: 367, column: 7, scope: !1395)
!1447 = !DILocation(line: 368, column: 4, scope: !1401)
!1448 = !DILocation(line: 368, column: 14, scope: !1401)
!1449 = !DILocation(line: 368, column: 21, scope: !1401)
!1450 = !DILocation(line: 369, column: 4, scope: !1401)
!1451 = !DILocation(line: 370, column: 10, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 369, column: 7)
!1453 = !DILocation(line: 371, column: 18, scope: !1452)
!1454 = !DILocation(line: 371, column: 41, scope: !1452)
!1455 = !DILocation(line: 371, column: 44, scope: !1452)
!1456 = !DILocation(line: 371, column: 30, scope: !1452)
!1457 = !DILocation(line: 371, column: 27, scope: !1452)
!1458 = !DILocation(line: 371, column: 16, scope: !1452)
!1459 = !DILocation(line: 371, column: 55, scope: !1452)
!1460 = !DILocation(line: 371, column: 78, scope: !1452)
!1461 = !DILocation(line: 371, column: 81, scope: !1452)
!1462 = !DILocation(line: 371, column: 67, scope: !1452)
!1463 = !DILocation(line: 371, column: 13, scope: !1452)
!1464 = !DILocation(line: 372, column: 28, scope: !1452)
!1465 = !DILocation(line: 372, column: 31, scope: !1452)
!1466 = !DILocation(line: 372, column: 12, scope: !1452)
!1467 = !DILocation(line: 372, column: 10, scope: !1452)
!1468 = !DILocation(line: 373, column: 4, scope: !1452)
!1469 = !DILocation(line: 373, column: 13, scope: !1401)
!1470 = !DILocation(line: 373, column: 21, scope: !1401)
!1471 = !DILocation(line: 373, column: 18, scope: !1401)
!1472 = distinct !{!1472, !1450, !1473}
!1473 = !DILocation(line: 373, column: 26, scope: !1401)
!1474 = !DILocation(line: 374, column: 3, scope: !1402)
!1475 = !DILocation(line: 374, column: 3, scope: !1401)
!1476 = !DILocation(line: 375, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 375, column: 7)
!1478 = !DILocation(line: 375, column: 7, scope: !1395)
!1479 = !DILocation(line: 377, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 375, column: 14)
!1481 = !DILocation(line: 377, column: 20, scope: !1480)
!1482 = !DILocation(line: 377, column: 17, scope: !1480)
!1483 = !DILocation(line: 377, column: 23, scope: !1480)
!1484 = !DILocation(line: 377, column: 44, scope: !1480)
!1485 = !DILocation(line: 377, column: 29, scope: !1480)
!1486 = !DILocation(line: 377, column: 27, scope: !1480)
!1487 = !DILocation(line: 377, column: 48, scope: !1480)
!1488 = !DILocation(line: 378, column: 11, scope: !1480)
!1489 = !DILocation(line: 378, column: 37, scope: !1480)
!1490 = !DILocation(line: 378, column: 40, scope: !1480)
!1491 = !DILocation(line: 378, column: 20, scope: !1480)
!1492 = !DILocation(line: 376, column: 4, scope: !1480)
!1493 = !DILocation(line: 379, column: 3, scope: !1480)
!1494 = !DILocation(line: 380, column: 2, scope: !1396)
!1495 = !DILocation(line: 380, column: 2, scope: !1395)
!1496 = !DILocation(line: 362, column: 31, scope: !1396)
!1497 = !DILocation(line: 362, column: 2, scope: !1396)
!1498 = distinct !{!1498, !1434, !1499}
!1499 = !DILocation(line: 380, column: 2, scope: !1397)
!1500 = !DILocation(line: 382, column: 6, scope: !1406)
!1501 = !DILocation(line: 382, column: 6, scope: !1382)
!1502 = !DILocation(line: 383, column: 3, scope: !1405)
!1503 = !DILocation(line: 384, column: 8, scope: !1404)
!1504 = !DILocation(line: 384, column: 18, scope: !1404)
!1505 = !DILocation(line: 386, column: 11, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !2, line: 384, column: 50)
!1507 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 384, column: 3)
!1508 = !DILocation(line: 387, column: 22, scope: !1506)
!1509 = !DILocation(line: 387, column: 25, scope: !1506)
!1510 = !DILocation(line: 387, column: 11, scope: !1506)
!1511 = !DILocation(line: 388, column: 30, scope: !1506)
!1512 = !DILocation(line: 388, column: 33, scope: !1506)
!1513 = !DILocation(line: 388, column: 13, scope: !1506)
!1514 = !DILocation(line: 390, column: 22, scope: !1506)
!1515 = !DILocation(line: 390, column: 25, scope: !1506)
!1516 = !DILocation(line: 390, column: 11, scope: !1506)
!1517 = !DILocation(line: 391, column: 22, scope: !1506)
!1518 = !DILocation(line: 391, column: 25, scope: !1506)
!1519 = !DILocation(line: 391, column: 11, scope: !1506)
!1520 = !DILocation(line: 392, column: 23, scope: !1506)
!1521 = !DILocation(line: 392, column: 26, scope: !1506)
!1522 = !DILocation(line: 392, column: 11, scope: !1506)
!1523 = !DILocation(line: 385, column: 4, scope: !1506)
!1524 = !DILocation(line: 393, column: 8, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 393, column: 8)
!1526 = !DILocation(line: 393, column: 13, scope: !1525)
!1527 = !DILocation(line: 393, column: 16, scope: !1525)
!1528 = !DILocation(line: 393, column: 10, scope: !1525)
!1529 = !DILocation(line: 393, column: 8, scope: !1506)
!1530 = !DILocation(line: 384, column: 3, scope: !1507)
!1531 = !DILocation(line: 396, column: 3, scope: !1506)
!1532 = !DILocation(line: 384, column: 43, scope: !1507)
!1533 = !DILocation(line: 384, column: 46, scope: !1507)
!1534 = !DILocation(line: 384, column: 31, scope: !1507)
!1535 = !DILocation(line: 384, column: 29, scope: !1507)
!1536 = distinct !{!1536, !1537, !1538}
!1537 = !DILocation(line: 384, column: 3, scope: !1404)
!1538 = !DILocation(line: 396, column: 3, scope: !1404)
!1539 = !DILocation(line: 397, column: 2, scope: !1405)
!1540 = !DILocation(line: 399, column: 17, scope: !1382)
!1541 = !DILocation(line: 399, column: 2, scope: !1382)
!1542 = !DILocation(line: 401, column: 10, scope: !1382)
!1543 = !DILocation(line: 401, column: 13, scope: !1382)
!1544 = !DILocation(line: 401, column: 23, scope: !1382)
!1545 = !DILocation(line: 401, column: 49, scope: !1382)
!1546 = !DILocation(line: 401, column: 30, scope: !1382)
!1547 = !DILocation(line: 401, column: 28, scope: !1382)
!1548 = !DILocation(line: 401, column: 8, scope: !1382)
!1549 = !DILocation(line: 402, column: 13, scope: !1382)
!1550 = !DILocation(line: 402, column: 21, scope: !1382)
!1551 = !DILocation(line: 402, column: 19, scope: !1382)
!1552 = !DILocation(line: 402, column: 34, scope: !1382)
!1553 = !DILocation(line: 402, column: 32, scope: !1382)
!1554 = !DILocation(line: 402, column: 11, scope: !1382)
!1555 = !DILocation(line: 404, column: 9, scope: !1382)
!1556 = !DILocation(line: 404, column: 21, scope: !1382)
!1557 = !DILocation(line: 404, column: 38, scope: !1382)
!1558 = !DILocation(line: 405, column: 17, scope: !1382)
!1559 = !DILocation(line: 405, column: 15, scope: !1382)
!1560 = !DILocation(line: 405, column: 28, scope: !1382)
!1561 = !DILocation(line: 405, column: 33, scope: !1382)
!1562 = !DILocation(line: 405, column: 26, scope: !1382)
!1563 = !DILocation(line: 405, column: 39, scope: !1382)
!1564 = !DILocation(line: 405, column: 37, scope: !1382)
!1565 = !DILocation(line: 405, column: 45, scope: !1382)
!1566 = !DILocation(line: 406, column: 17, scope: !1382)
!1567 = !DILocation(line: 406, column: 15, scope: !1382)
!1568 = !DILocation(line: 406, column: 28, scope: !1382)
!1569 = !DILocation(line: 406, column: 33, scope: !1382)
!1570 = !DILocation(line: 406, column: 26, scope: !1382)
!1571 = !DILocation(line: 406, column: 39, scope: !1382)
!1572 = !DILocation(line: 406, column: 37, scope: !1382)
!1573 = !DILocation(line: 406, column: 45, scope: !1382)
!1574 = !DILocation(line: 403, column: 2, scope: !1382)
!1575 = !DILocation(line: 407, column: 1, scope: !1382)
!1576 = !DISubprogram(name: "printk", scope: !1577, file: !1577, line: 47, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1577 = !DIFile(filename: "include/zephyr/sys/printk.h", directory: "/home/sri/zephyrproject/zephyr")
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1580, null}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1582 = distinct !DISubprogram(name: "chunk_buf", scope: !127, file: !127, line: 101, type: !1583, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!140, !262}
!1585 = !{!1586}
!1586 = !DILocalVariable(name: "h", arg: 1, scope: !1582, file: !127, line: 101, type: !262)
!1587 = !DILocation(line: 101, column: 54, scope: !1582)
!1588 = !DILocation(line: 104, column: 25, scope: !1582)
!1589 = !DILocation(line: 104, column: 2, scope: !1582)
!1590 = distinct !DISubprogram(name: "chunk_size", scope: !127, file: !127, line: 142, type: !1591, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!956, !262, !267}
!1593 = !{!1594, !1595}
!1594 = !DILocalVariable(name: "h", arg: 1, scope: !1590, file: !127, line: 142, type: !262)
!1595 = !DILocalVariable(name: "c", arg: 2, scope: !1590, file: !127, line: 142, type: !267)
!1596 = !DILocation(line: 142, column: 51, scope: !1590)
!1597 = !DILocation(line: 142, column: 64, scope: !1590)
!1598 = !DILocation(line: 144, column: 21, scope: !1590)
!1599 = !DILocation(line: 144, column: 24, scope: !1590)
!1600 = !DILocation(line: 144, column: 9, scope: !1590)
!1601 = !DILocation(line: 144, column: 42, scope: !1590)
!1602 = !DILocation(line: 144, column: 2, scope: !1590)
!1603 = distinct !DISubprogram(name: "min_chunk_size", scope: !127, file: !127, line: 240, type: !1604, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!956, !262}
!1606 = !{!1607}
!1607 = !DILocalVariable(name: "h", arg: 1, scope: !1603, file: !127, line: 240, type: !262)
!1608 = !DILocation(line: 240, column: 55, scope: !1603)
!1609 = !DILocation(line: 242, column: 26, scope: !1603)
!1610 = !DILocation(line: 242, column: 9, scope: !1603)
!1611 = !DILocation(line: 242, column: 2, scope: !1603)
!1612 = distinct !DISubprogram(name: "chunksz_to_bytes", scope: !127, file: !127, line: 245, type: !1613, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!279, !262, !956}
!1615 = !{!1616, !1617}
!1616 = !DILocalVariable(name: "h", arg: 1, scope: !1612, file: !127, line: 245, type: !262)
!1617 = !DILocalVariable(name: "chunksz_in", arg: 2, scope: !1612, file: !127, line: 245, type: !956)
!1618 = !DILocation(line: 245, column: 54, scope: !1612)
!1619 = !DILocation(line: 245, column: 67, scope: !1612)
!1620 = !DILocation(line: 247, column: 9, scope: !1612)
!1621 = !DILocation(line: 247, column: 20, scope: !1612)
!1622 = !DILocation(line: 247, column: 46, scope: !1612)
!1623 = !DILocation(line: 247, column: 27, scope: !1612)
!1624 = !DILocation(line: 247, column: 25, scope: !1612)
!1625 = !DILocation(line: 247, column: 2, scope: !1612)
!1626 = distinct !DISubprogram(name: "get_alloc_info", scope: !2, file: !2, line: 71, type: !1627, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1630)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null, !262, !1629, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!1630 = !{!1631, !1632, !1633, !1634}
!1631 = !DILocalVariable(name: "h", arg: 1, scope: !1626, file: !2, line: 71, type: !262)
!1632 = !DILocalVariable(name: "alloc_bytes", arg: 2, scope: !1626, file: !2, line: 71, type: !1629)
!1633 = !DILocalVariable(name: "free_bytes", arg: 3, scope: !1626, file: !2, line: 72, type: !1629)
!1634 = !DILocalVariable(name: "c", scope: !1626, file: !2, line: 74, type: !267)
!1635 = !DILocation(line: 71, column: 43, scope: !1626)
!1636 = !DILocation(line: 71, column: 54, scope: !1626)
!1637 = !DILocation(line: 72, column: 15, scope: !1626)
!1638 = !DILocation(line: 74, column: 2, scope: !1626)
!1639 = !DILocation(line: 74, column: 12, scope: !1626)
!1640 = !DILocation(line: 76, column: 3, scope: !1626)
!1641 = !DILocation(line: 76, column: 15, scope: !1626)
!1642 = !DILocation(line: 77, column: 3, scope: !1626)
!1643 = !DILocation(line: 77, column: 14, scope: !1626)
!1644 = !DILocation(line: 79, column: 23, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 79, column: 2)
!1646 = !DILocation(line: 79, column: 11, scope: !1645)
!1647 = !DILocation(line: 79, column: 9, scope: !1645)
!1648 = !DILocation(line: 79, column: 7, scope: !1645)
!1649 = !DILocation(line: 79, column: 30, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 79, column: 2)
!1651 = !DILocation(line: 79, column: 34, scope: !1650)
!1652 = !DILocation(line: 79, column: 37, scope: !1650)
!1653 = !DILocation(line: 79, column: 32, scope: !1650)
!1654 = !DILocation(line: 79, column: 2, scope: !1645)
!1655 = !DILocation(line: 80, column: 18, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !2, line: 80, column: 7)
!1657 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 79, column: 71)
!1658 = !DILocation(line: 80, column: 21, scope: !1656)
!1659 = !DILocation(line: 80, column: 7, scope: !1656)
!1660 = !DILocation(line: 80, column: 7, scope: !1657)
!1661 = !DILocation(line: 81, column: 37, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 80, column: 25)
!1663 = !DILocation(line: 81, column: 51, scope: !1662)
!1664 = !DILocation(line: 81, column: 54, scope: !1662)
!1665 = !DILocation(line: 81, column: 40, scope: !1662)
!1666 = !DILocation(line: 81, column: 20, scope: !1662)
!1667 = !DILocation(line: 81, column: 5, scope: !1662)
!1668 = !DILocation(line: 81, column: 17, scope: !1662)
!1669 = !DILocation(line: 82, column: 3, scope: !1662)
!1670 = !DILocation(line: 82, column: 32, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 82, column: 14)
!1672 = !DILocation(line: 82, column: 35, scope: !1671)
!1673 = !DILocation(line: 82, column: 15, scope: !1671)
!1674 = !DILocation(line: 82, column: 14, scope: !1656)
!1675 = !DILocation(line: 83, column: 36, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 82, column: 39)
!1677 = !DILocation(line: 83, column: 50, scope: !1676)
!1678 = !DILocation(line: 83, column: 53, scope: !1676)
!1679 = !DILocation(line: 83, column: 39, scope: !1676)
!1680 = !DILocation(line: 83, column: 19, scope: !1676)
!1681 = !DILocation(line: 83, column: 5, scope: !1676)
!1682 = !DILocation(line: 83, column: 16, scope: !1676)
!1683 = !DILocation(line: 84, column: 3, scope: !1676)
!1684 = !DILocation(line: 85, column: 2, scope: !1657)
!1685 = !DILocation(line: 79, column: 64, scope: !1650)
!1686 = !DILocation(line: 79, column: 67, scope: !1650)
!1687 = !DILocation(line: 79, column: 52, scope: !1650)
!1688 = !DILocation(line: 79, column: 50, scope: !1650)
!1689 = !DILocation(line: 79, column: 2, scope: !1650)
!1690 = distinct !{!1690, !1654, !1691}
!1691 = !DILocation(line: 85, column: 2, scope: !1645)
!1692 = !DILocation(line: 86, column: 1, scope: !1626)
!1693 = distinct !DISubprogram(name: "chunk_header_bytes", scope: !127, file: !127, line: 220, type: !1694, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!279, !262}
!1696 = !{!1697}
!1697 = !DILocalVariable(name: "h", arg: 1, scope: !1693, file: !127, line: 220, type: !262)
!1698 = !DILocation(line: 220, column: 56, scope: !1693)
!1699 = !DILocation(line: 222, column: 18, scope: !1693)
!1700 = !DILocation(line: 222, column: 9, scope: !1693)
!1701 = !DILocation(line: 222, column: 2, scope: !1693)
!1702 = distinct !DISubprogram(name: "sys_heap_print_info", scope: !2, file: !2, line: 409, type: !1703, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1705)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !489, !488}
!1705 = !{!1706, !1707}
!1706 = !DILocalVariable(name: "heap", arg: 1, scope: !1702, file: !2, line: 409, type: !489)
!1707 = !DILocalVariable(name: "dump_chunks", arg: 2, scope: !1702, file: !2, line: 409, type: !488)
!1708 = !DILocation(line: 409, column: 43, scope: !1702)
!1709 = !DILocation(line: 409, column: 55, scope: !1702)
!1710 = !DILocation(line: 411, column: 18, scope: !1702)
!1711 = !DILocation(line: 411, column: 24, scope: !1702)
!1712 = !DILocation(line: 411, column: 30, scope: !1702)
!1713 = !DILocation(line: 411, column: 2, scope: !1702)
!1714 = !DILocation(line: 412, column: 1, scope: !1702)
!1715 = !DISubprogram(name: "z_timeout_expires", scope: !255, file: !255, line: 642, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!328, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!1720 = !DISubprogram(name: "z_timeout_remaining", scope: !255, file: !255, line: 643, type: !1716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !149)
!1721 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !416, file: !416, line: 335, type: !1722, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1725)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!488, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 32)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "list", arg: 1, scope: !1721, file: !416, line: 335, type: !1724)
!1727 = !DILocation(line: 335, column: 55, scope: !1721)
!1728 = !DILocation(line: 335, column: 92, scope: !1721)
!1729 = !DILocation(line: 335, column: 71, scope: !1721)
!1730 = !DILocation(line: 335, column: 98, scope: !1721)
!1731 = !DILocation(line: 335, column: 63, scope: !1721)
!1732 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !416, file: !416, line: 255, type: !1733, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1735)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!420, !1724}
!1735 = !{!1736}
!1736 = !DILocalVariable(name: "list", arg: 1, scope: !1732, file: !416, line: 255, type: !1724)
!1737 = !DILocation(line: 255, column: 64, scope: !1732)
!1738 = !DILocation(line: 257, column: 9, scope: !1732)
!1739 = !DILocation(line: 257, column: 15, scope: !1732)
!1740 = !DILocation(line: 257, column: 2, scope: !1732)
!1741 = distinct !DISubprogram(name: "in_bounds", scope: !2, file: !2, line: 23, type: !807, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1742)
!1742 = !{!1743, !1744}
!1743 = !DILocalVariable(name: "h", arg: 1, scope: !1741, file: !2, line: 23, type: !262)
!1744 = !DILocalVariable(name: "c", arg: 2, scope: !1741, file: !2, line: 23, type: !267)
!1745 = !DILocation(line: 23, column: 39, scope: !1741)
!1746 = !DILocation(line: 23, column: 52, scope: !1741)
!1747 = !DILocation(line: 25, column: 2, scope: !1741)
!1748 = !DILocation(line: 25, column: 13, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 25, column: 11)
!1750 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 25, column: 5)
!1751 = !DILocation(line: 25, column: 30, scope: !1749)
!1752 = !DILocation(line: 25, column: 18, scope: !1749)
!1753 = !DILocation(line: 25, column: 15, scope: !1749)
!1754 = !DILocation(line: 25, column: 11, scope: !1750)
!1755 = !DILocation(line: 25, column: 40, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 25, column: 38)
!1757 = !DILocation(line: 25, column: 52, scope: !1750)
!1758 = !DILocation(line: 26, column: 2, scope: !1741)
!1759 = !DILocation(line: 26, column: 13, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 26, column: 11)
!1761 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 26, column: 5)
!1762 = !DILocation(line: 26, column: 17, scope: !1760)
!1763 = !DILocation(line: 26, column: 20, scope: !1760)
!1764 = !DILocation(line: 26, column: 15, scope: !1760)
!1765 = !DILocation(line: 26, column: 11, scope: !1761)
!1766 = !DILocation(line: 26, column: 34, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1760, file: !2, line: 26, column: 32)
!1768 = !DILocation(line: 26, column: 46, scope: !1761)
!1769 = !DILocation(line: 27, column: 2, scope: !1741)
!1770 = !DILocation(line: 27, column: 24, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 27, column: 11)
!1772 = distinct !DILexicalBlock(scope: !1741, file: !2, line: 27, column: 5)
!1773 = !DILocation(line: 27, column: 27, scope: !1771)
!1774 = !DILocation(line: 27, column: 13, scope: !1771)
!1775 = !DILocation(line: 27, column: 32, scope: !1771)
!1776 = !DILocation(line: 27, column: 35, scope: !1771)
!1777 = !DILocation(line: 27, column: 30, scope: !1771)
!1778 = !DILocation(line: 27, column: 11, scope: !1772)
!1779 = !DILocation(line: 27, column: 49, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 27, column: 47)
!1781 = !DILocation(line: 27, column: 61, scope: !1772)
!1782 = !DILocation(line: 28, column: 2, scope: !1741)
!1783 = !DILocation(line: 29, column: 1, scope: !1741)
!1784 = distinct !DISubprogram(name: "prev_free_chunk", scope: !127, file: !127, line: 177, type: !793, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1785)
!1785 = !{!1786, !1787}
!1786 = !DILocalVariable(name: "h", arg: 1, scope: !1784, file: !127, line: 177, type: !262)
!1787 = !DILocalVariable(name: "c", arg: 2, scope: !1784, file: !127, line: 177, type: !267)
!1788 = !DILocation(line: 177, column: 56, scope: !1784)
!1789 = !DILocation(line: 177, column: 69, scope: !1784)
!1790 = !DILocation(line: 179, column: 21, scope: !1784)
!1791 = !DILocation(line: 179, column: 24, scope: !1784)
!1792 = !DILocation(line: 179, column: 9, scope: !1784)
!1793 = !DILocation(line: 179, column: 2, scope: !1784)
!1794 = distinct !DISubprogram(name: "chunk_field", scope: !127, file: !127, line: 107, type: !1795, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1797)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{!267, !262, !267, !126}
!1797 = !{!1798, !1799, !1800, !1801, !1802}
!1798 = !DILocalVariable(name: "h", arg: 1, scope: !1794, file: !127, line: 107, type: !262)
!1799 = !DILocalVariable(name: "c", arg: 2, scope: !1794, file: !127, line: 107, type: !267)
!1800 = !DILocalVariable(name: "f", arg: 3, scope: !1794, file: !127, line: 108, type: !126)
!1801 = !DILocalVariable(name: "buf", scope: !1794, file: !127, line: 110, type: !140)
!1802 = !DILocalVariable(name: "cmem", scope: !1794, file: !127, line: 111, type: !134)
!1803 = !DILocation(line: 107, column: 52, scope: !1794)
!1804 = !DILocation(line: 107, column: 65, scope: !1794)
!1805 = !DILocation(line: 108, column: 27, scope: !1794)
!1806 = !DILocation(line: 110, column: 2, scope: !1794)
!1807 = !DILocation(line: 110, column: 16, scope: !1794)
!1808 = !DILocation(line: 110, column: 32, scope: !1794)
!1809 = !DILocation(line: 110, column: 22, scope: !1794)
!1810 = !DILocation(line: 111, column: 2, scope: !1794)
!1811 = !DILocation(line: 111, column: 8, scope: !1794)
!1812 = !DILocation(line: 111, column: 16, scope: !1794)
!1813 = !DILocation(line: 111, column: 20, scope: !1794)
!1814 = !DILocation(line: 113, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1794, file: !127, line: 113, column: 6)
!1816 = !DILocation(line: 113, column: 6, scope: !1815)
!1817 = !DILocation(line: 113, column: 6, scope: !1794)
!1818 = !DILocation(line: 114, column: 23, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !127, line: 113, column: 19)
!1820 = !DILocation(line: 114, column: 29, scope: !1819)
!1821 = !DILocation(line: 114, column: 10, scope: !1819)
!1822 = !DILocation(line: 114, column: 3, scope: !1819)
!1823 = !DILocation(line: 116, column: 23, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1815, file: !127, line: 115, column: 9)
!1825 = !DILocation(line: 116, column: 29, scope: !1824)
!1826 = !DILocation(line: 116, column: 10, scope: !1824)
!1827 = !DILocation(line: 116, column: 3, scope: !1824)
!1828 = !DILocation(line: 118, column: 1, scope: !1794)
!1829 = distinct !DISubprogram(name: "big_heap", scope: !127, file: !127, line: 96, type: !1830, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!488, !262}
!1832 = !{!1833}
!1833 = !DILocalVariable(name: "h", arg: 1, scope: !1829, file: !127, line: 96, type: !262)
!1834 = !DILocation(line: 96, column: 45, scope: !1829)
!1835 = !DILocation(line: 98, column: 25, scope: !1829)
!1836 = !DILocation(line: 98, column: 28, scope: !1829)
!1837 = !DILocation(line: 98, column: 9, scope: !1829)
!1838 = !DILocation(line: 98, column: 2, scope: !1829)
!1839 = distinct !DISubprogram(name: "big_heap_chunks", scope: !127, file: !127, line: 80, type: !1840, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!488, !956}
!1842 = !{!1843}
!1843 = !DILocalVariable(name: "chunks", arg: 1, scope: !1839, file: !127, line: 80, type: !956)
!1844 = !DILocation(line: 80, column: 47, scope: !1839)
!1845 = !DILocation(line: 83, column: 3, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !127, line: 82, column: 9)
!1847 = distinct !DILexicalBlock(scope: !1839, file: !127, line: 82, column: 6)
!1848 = !DILocation(line: 229, column: 10, scope: !34)
!1849 = !DILocation(line: 229, column: 16, scope: !34)
!1850 = !DILocation(line: 229, column: 40, scope: !34)
!1851 = !DILocation(line: 229, column: 8, scope: !34)
!1852 = !DILocation(line: 231, column: 20, scope: !34)
!1853 = !DILocation(line: 231, column: 26, scope: !34)
!1854 = !DILocation(line: 231, column: 9, scope: !34)
!1855 = !DILocation(line: 231, column: 2, scope: !34)
!1856 = distinct !DISubprogram(name: "bytes_to_chunksz", scope: !127, file: !127, line: 235, type: !1857, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!956, !262, !279}
!1859 = !{!1860, !1861}
!1860 = !DILocalVariable(name: "h", arg: 1, scope: !1856, file: !127, line: 235, type: !262)
!1861 = !DILocalVariable(name: "bytes", arg: 2, scope: !1856, file: !127, line: 235, type: !279)
!1862 = !DILocation(line: 235, column: 57, scope: !1856)
!1863 = !DILocation(line: 235, column: 67, scope: !1856)
!1864 = !DILocation(line: 237, column: 36, scope: !1856)
!1865 = !DILocation(line: 237, column: 17, scope: !1856)
!1866 = !DILocation(line: 237, column: 41, scope: !1856)
!1867 = !DILocation(line: 237, column: 39, scope: !1856)
!1868 = !DILocation(line: 237, column: 9, scope: !1856)
!1869 = !DILocation(line: 237, column: 2, scope: !1856)
!1870 = distinct !DISubprogram(name: "chunksz", scope: !127, file: !127, line: 230, type: !1871, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !40, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!956, !279}
!1873 = !{!1874}
!1874 = !DILocalVariable(name: "bytes", arg: 1, scope: !1870, file: !127, line: 230, type: !279)
!1875 = !DILocation(line: 230, column: 40, scope: !1870)
!1876 = !DILocation(line: 232, column: 10, scope: !1870)
!1877 = !DILocation(line: 232, column: 16, scope: !1870)
!1878 = !DILocation(line: 232, column: 21, scope: !1870)
!1879 = !DILocation(line: 232, column: 27, scope: !1870)
!1880 = !DILocation(line: 232, column: 2, scope: !1870)
