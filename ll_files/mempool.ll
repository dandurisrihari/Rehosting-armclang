; ModuleID = '../bc_files/mempool.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/mempool.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

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
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !98 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !222, metadata !DIExpression()), !dbg !223
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !224, metadata !DIExpression()), !dbg !225
  %5 = load ptr, ptr %3, align 4, !dbg !226
  %6 = load ptr, ptr %4, align 4, !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !229 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !232, metadata !DIExpression()), !dbg !233
  %3 = load ptr, ptr %2, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !236 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load i8, ptr %2, align 1, !dbg !241
  ret ptr null, !dbg !242
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !243 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  %5 = load i8, ptr %3, align 1, !dbg !250
  %6 = load i32, ptr %4, align 4, !dbg !251
  ret ptr null, !dbg !252
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !253 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load ptr, ptr %2, align 4, !dbg !262
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !263
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !264
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !265
  ret i64 %6, !dbg !266
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !267 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !271
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !272
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !273
  ret i64 %6, !dbg !274
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !275 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !297, metadata !DIExpression()), !dbg !298
  %3 = load ptr, ptr %2, align 4, !dbg !299
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !300
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !301
  ret i64 %5, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !303 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !310 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !313, metadata !DIExpression()), !dbg !314
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !315, metadata !DIExpression()), !dbg !316
  %5 = load ptr, ptr %4, align 4, !dbg !317
  %6 = load ptr, ptr %3, align 4, !dbg !318
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !319
  store ptr %5, ptr %7, align 4, !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !322 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !326
  %3 = load ptr, ptr %2, align 4, !dbg !327
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !328
  %5 = load ptr, ptr %4, align 4, !dbg !328
  ret ptr %5, !dbg !329
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !330 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !351, metadata !DIExpression()), !dbg !352
  %3 = load ptr, ptr %2, align 4, !dbg !353
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !354
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !355
  %6 = zext i1 %5 to i32, !dbg !356
  ret i32 %6, !dbg !357
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !358 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !367, metadata !DIExpression()), !dbg !368
  %3 = load ptr, ptr %2, align 4, !dbg !369
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !370
  %5 = load i32, ptr %4, align 4, !dbg !370
  ret i32 %5, !dbg !371
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !390, metadata !DIExpression()), !dbg !391
  %3 = load ptr, ptr %2, align 4, !dbg !392
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !393
  %5 = load i32, ptr %4, align 4, !dbg !393
  %6 = load ptr, ptr %2, align 4, !dbg !394
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !395
  %8 = load i32, ptr %7, align 4, !dbg !395
  %9 = sub i32 %5, %8, !dbg !396
  ret i32 %9, !dbg !397
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !398 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !399, metadata !DIExpression()), !dbg !400
  %3 = load ptr, ptr %2, align 4, !dbg !401
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !402
  %5 = load i32, ptr %4, align 4, !dbg !402
  ret i32 %5, !dbg !403
}

; Function Attrs: noinline nounwind optnone
define hidden void @k_free(ptr noundef %0) #0 !dbg !404 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !408, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.declare(metadata ptr %3, metadata !410, metadata !DIExpression()), !dbg !412
  %4 = load ptr, ptr %2, align 4, !dbg !413
  %5 = icmp ne ptr %4, null, !dbg !415
  br i1 %5, label %6, label %17, !dbg !416

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 4, !dbg !417
  store ptr %7, ptr %3, align 4, !dbg !419
  %8 = load ptr, ptr %3, align 4, !dbg !420
  %9 = getelementptr inbounds ptr, ptr %8, i32 -1, !dbg !420
  store ptr %9, ptr %3, align 4, !dbg !420
  store ptr %9, ptr %2, align 4, !dbg !421
  br label %10, !dbg !422

10:                                               ; preds = %6
  br label %11, !dbg !423

11:                                               ; preds = %10
  %12 = load ptr, ptr %3, align 4, !dbg !425
  %13 = load ptr, ptr %12, align 4, !dbg !426
  %14 = load ptr, ptr %2, align 4, !dbg !427
  call void @k_heap_free(ptr noundef %13, ptr noundef %14), !dbg !428
  br label %15, !dbg !429

15:                                               ; preds = %11
  br label %16, !dbg !430

16:                                               ; preds = %15
  br label %17, !dbg !432

17:                                               ; preds = %16, %1
  ret void, !dbg !433
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @k_heap_free(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_thread_aligned_alloc(i32 noundef %0, i32 noundef %1) #0 !dbg !434 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !439, metadata !DIExpression()), !dbg !440
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata ptr %5, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata ptr %6, metadata !445, metadata !DIExpression()), !dbg !446
  %7 = call zeroext i1 @k_is_in_isr(), !dbg !447
  br i1 %7, label %8, label %9, !dbg !449

8:                                                ; preds = %2
  store ptr null, ptr %6, align 4, !dbg !450
  br label %13, !dbg !452

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !453
  %11 = getelementptr inbounds %struct.k_thread, ptr %10, i32 0, i32 5, !dbg !455
  %12 = load ptr, ptr %11, align 4, !dbg !455
  store ptr %12, ptr %6, align 4, !dbg !456
  br label %13

13:                                               ; preds = %9, %8
  %14 = load ptr, ptr %6, align 4, !dbg !457
  %15 = icmp ne ptr %14, null, !dbg !459
  br i1 %15, label %16, label %21, !dbg !460

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4, !dbg !461
  %18 = load i32, ptr %3, align 4, !dbg !463
  %19 = load i32, ptr %4, align 4, !dbg !464
  %20 = call ptr @z_heap_aligned_alloc(ptr noundef %17, i32 noundef %18, i32 noundef %19), !dbg !465
  store ptr %20, ptr %5, align 4, !dbg !466
  br label %22, !dbg !467

21:                                               ; preds = %13
  store ptr null, ptr %5, align 4, !dbg !468
  br label %22

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %5, align 4, !dbg !470
  ret ptr %23, !dbg !471
}

declare zeroext i1 @k_is_in_isr() #2

; Function Attrs: noinline nounwind optnone
define internal ptr @z_heap_aligned_alloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !472 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.k_timeout_t, align 8
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !475, metadata !DIExpression()), !dbg !476
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !477, metadata !DIExpression()), !dbg !478
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata ptr %8, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata ptr %9, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata ptr %10, metadata !485, metadata !DIExpression()), !dbg !486
  %12 = load i32, ptr %7, align 4, !dbg !487
  %13 = call zeroext i1 @size_add_overflow(i32 noundef %12, i32 noundef 4, ptr noundef %7), !dbg !489
  br i1 %13, label %14, label %15, !dbg !490

14:                                               ; preds = %3
  store ptr null, ptr %4, align 4, !dbg !491
  br label %35, !dbg !491

15:                                               ; preds = %3
  %16 = load i32, ptr %6, align 4, !dbg !493
  %17 = or i32 %16, 4, !dbg !494
  store i32 %17, ptr %10, align 4, !dbg !495
  %18 = load ptr, ptr %5, align 4, !dbg !496
  %19 = load i32, ptr %10, align 4, !dbg !497
  %20 = load i32, ptr %7, align 4, !dbg !498
  %21 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !499
  store i64 0, ptr %21, align 8, !dbg !499
  %22 = getelementptr inbounds %struct.k_timeout_t, ptr %11, i32 0, i32 0, !dbg !500
  %23 = load [1 x i64], ptr %22, align 8, !dbg !500
  %24 = call ptr @k_heap_aligned_alloc(ptr noundef %18, i32 noundef %19, i32 noundef %20, [1 x i64] %23), !dbg !500
  store ptr %24, ptr %8, align 4, !dbg !501
  %25 = load ptr, ptr %8, align 4, !dbg !502
  %26 = icmp eq ptr %25, null, !dbg !504
  br i1 %26, label %27, label %28, !dbg !505

27:                                               ; preds = %15
  store ptr null, ptr %4, align 4, !dbg !506
  br label %35, !dbg !506

28:                                               ; preds = %15
  %29 = load ptr, ptr %8, align 4, !dbg !508
  store ptr %29, ptr %9, align 4, !dbg !509
  %30 = load ptr, ptr %5, align 4, !dbg !510
  %31 = load ptr, ptr %9, align 4, !dbg !511
  store ptr %30, ptr %31, align 4, !dbg !512
  %32 = load ptr, ptr %9, align 4, !dbg !513
  %33 = getelementptr inbounds ptr, ptr %32, i32 1, !dbg !513
  store ptr %33, ptr %9, align 4, !dbg !513
  store ptr %33, ptr %8, align 4, !dbg !514
  %34 = load ptr, ptr %8, align 4, !dbg !515
  store ptr %34, ptr %4, align 4, !dbg !516
  br label %35, !dbg !516

35:                                               ; preds = %28, %27, %14
  %36 = load ptr, ptr %4, align 4, !dbg !517
  ret ptr %36, !dbg !517
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !518 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !523, metadata !DIExpression()), !dbg !524
  %3 = load ptr, ptr %2, align 4, !dbg !525
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !526
  %5 = icmp eq ptr %4, null, !dbg !527
  ret i1 %5, !dbg !528
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !529 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !532, metadata !DIExpression()), !dbg !533
  %3 = load ptr, ptr %2, align 4, !dbg !534
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !535
  %5 = load ptr, ptr %4, align 4, !dbg !535
  ret ptr %5, !dbg !536
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @size_add_overflow(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !537 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !542, metadata !DIExpression()), !dbg !543
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !544, metadata !DIExpression()), !dbg !545
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !546, metadata !DIExpression()), !dbg !547
  %7 = load i32, ptr %4, align 4, !dbg !548
  %8 = load i32, ptr %5, align 4, !dbg !549
  %9 = load ptr, ptr %6, align 4, !dbg !550
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 %8), !dbg !551
  %11 = extractvalue { i32, i1 } %10, 1, !dbg !551
  %12 = extractvalue { i32, i1 } %10, 0, !dbg !551
  store i32 %12, ptr %9, align 4, !dbg !551
  ret i1 %11, !dbg !552
}

declare ptr @k_heap_aligned_alloc(ptr noundef, i32 noundef, i32 noundef, [1 x i64]) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "mempool.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !4, line: 29, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!7 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!8 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!9 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!10 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!11 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!12 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!13 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!14 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!15 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!16 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!17 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!18 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!19 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!20 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!21 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!22 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!23 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!24 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!85 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!86 = !{!87, !88}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !{i32 7, !"Dwarf Version", i32 4}
!90 = !{i32 2, !"Debug Info Version", i32 3}
!91 = !{i32 1, !"wchar_size", i32 4}
!92 = !{i32 1, !"static_rwdata", i32 1}
!93 = !{i32 1, !"enumsize_buildattr", i32 1}
!94 = !{i32 1, !"armlib_unavailable", i32 0}
!95 = !{i32 8, !"PIC Level", i32 2}
!96 = !{i32 7, !"PIE Level", i32 2}
!97 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!98 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !99, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !103}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !105, line: 250, size: 896, elements: !106)
!105 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!106 = !{!107, !180, !193, !194, !195, !196, !217}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !104, file: !105, line: 252, baseType: !108, size: 384)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !105, line: 58, size: 384, elements: !109)
!109 = !{!110, !138, !146, !149, !150, !163, !166, !167}
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !105, line: 61, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !105, line: 61, size: 64, elements: !112)
!112 = !{!113, !129}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !111, file: !105, line: 62, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !115, line: 55, baseType: !116)
!115 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !115, line: 37, size: 64, elements: !117)
!117 = !{!118, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 38, baseType: !119, size: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 38, size: 32, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !119, file: !115, line: 39, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !115, line: 40, baseType: !122, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !115, line: 42, baseType: !125, size: 32, offset: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !115, line: 42, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !115, line: 43, baseType: !122, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !125, file: !115, line: 44, baseType: !122, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !111, file: !105, line: 63, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !131, line: 58, size: 64, elements: !132)
!131 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !130, file: !131, line: 60, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!136 = !{!137}
!137 = !DISubrange(count: 2)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !108, file: !105, line: 69, baseType: !139, size: 32, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !141, line: 243, baseType: !142)
!141 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !141, line: 241, size: 64, elements: !143)
!143 = !{!144}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !142, file: !141, line: 242, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !115, line: 51, baseType: !116)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !108, file: !105, line: 72, baseType: !147, size: 8, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !148, line: 62, baseType: !5)
!148 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !108, file: !105, line: 75, baseType: !147, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !105, line: 91, baseType: !151, size: 16, offset: 112)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !105, line: 91, size: 16, elements: !152)
!152 = !{!153, !160}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !105, line: 92, baseType: !154, size: 16)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !105, line: 92, size: 16, elements: !155)
!155 = !{!156, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !154, file: !105, line: 97, baseType: !157, size: 8)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !148, line: 56, baseType: !158)
!158 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !154, file: !105, line: 98, baseType: !147, size: 8, offset: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !151, file: !105, line: 101, baseType: !161, size: 16)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !148, line: 63, baseType: !162)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !108, file: !105, line: 108, baseType: !164, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !148, line: 64, baseType: !165)
!165 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !108, file: !105, line: 132, baseType: !87, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !108, file: !105, line: 136, baseType: !168, size: 192, offset: 192)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !141, line: 254, size: 192, elements: !169)
!169 = !{!170, !171, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !141, line: 255, baseType: !114, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !168, file: !141, line: 256, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !141, line: 252, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !168, file: !141, line: 259, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !148, line: 59, baseType: !179)
!179 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !104, file: !105, line: 255, baseType: !181, size: 288, offset: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !182, line: 25, size: 288, elements: !183)
!182 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !181, file: !182, line: 26, baseType: !164, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !181, file: !182, line: 27, baseType: !164, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !181, file: !182, line: 28, baseType: !164, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !181, file: !182, line: 29, baseType: !164, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !181, file: !182, line: 30, baseType: !164, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !181, file: !182, line: 31, baseType: !164, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !181, file: !182, line: 32, baseType: !164, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !181, file: !182, line: 33, baseType: !164, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !181, file: !182, line: 34, baseType: !164, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !104, file: !105, line: 258, baseType: !87, size: 32, offset: 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !104, file: !105, line: 261, baseType: !140, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !104, file: !105, line: 302, baseType: !88, size: 32, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !104, file: !105, line: 333, baseType: !197, size: 32, offset: 800)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 32)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !199, line: 5291, size: 160, elements: !200)
!199 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!200 = !{!201, !212, !213}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !198, file: !199, line: 5292, baseType: !202, size: 96)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !203, line: 56, size: 96, elements: !204)
!203 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!204 = !{!205, !208, !209}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !202, file: !203, line: 57, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !203, line: 57, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !202, file: !203, line: 58, baseType: !87, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !202, file: !203, line: 59, baseType: !210, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 46, baseType: !165)
!211 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !198, file: !199, line: 5293, baseType: !140, size: 64, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 5294, baseType: !214, offset: 160)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !215, line: 45, elements: !216)
!215 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!216 = !{}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !104, file: !105, line: 355, baseType: !218, size: 64, offset: 832)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !182, line: 60, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !218, file: !182, line: 63, baseType: !164, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !218, file: !182, line: 66, baseType: !164, size: 32, offset: 32)
!222 = !DILocalVariable(name: "object", arg: 1, scope: !98, file: !4, line: 223, type: !101)
!223 = !DILocation(line: 223, column: 61, scope: !98)
!224 = !DILocalVariable(name: "thread", arg: 2, scope: !98, file: !4, line: 224, type: !103)
!225 = !DILocation(line: 224, column: 24, scope: !98)
!226 = !DILocation(line: 226, column: 9, scope: !98)
!227 = !DILocation(line: 227, column: 9, scope: !98)
!228 = !DILocation(line: 228, column: 1, scope: !98)
!229 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !230, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !101}
!232 = !DILocalVariable(name: "object", arg: 1, scope: !229, file: !4, line: 243, type: !101)
!233 = !DILocation(line: 243, column: 56, scope: !229)
!234 = !DILocation(line: 245, column: 9, scope: !229)
!235 = !DILocation(line: 246, column: 1, scope: !229)
!236 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !237, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!237 = !DISubroutineType(types: !238)
!238 = !{!87, !3}
!239 = !DILocalVariable(name: "otype", arg: 1, scope: !236, file: !4, line: 359, type: !3)
!240 = !DILocation(line: 359, column: 58, scope: !236)
!241 = !DILocation(line: 361, column: 9, scope: !236)
!242 = !DILocation(line: 363, column: 2, scope: !236)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !244, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!244 = !DISubroutineType(types: !245)
!245 = !{!87, !3, !210}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !243, file: !4, line: 366, type: !3)
!247 = !DILocation(line: 366, column: 63, scope: !243)
!248 = !DILocalVariable(name: "size", arg: 2, scope: !243, file: !4, line: 367, type: !210)
!249 = !DILocation(line: 367, column: 13, scope: !243)
!250 = !DILocation(line: 369, column: 9, scope: !243)
!251 = !DILocation(line: 370, column: 9, scope: !243)
!252 = !DILocation(line: 372, column: 2, scope: !243)
!253 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !199, file: !199, line: 656, type: !254, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !258}
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !257, line: 46, baseType: !178)
!257 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!260 = !DILocalVariable(name: "t", arg: 1, scope: !253, file: !199, line: 657, type: !258)
!261 = !DILocation(line: 657, column: 30, scope: !253)
!262 = !DILocation(line: 659, column: 28, scope: !253)
!263 = !DILocation(line: 659, column: 31, scope: !253)
!264 = !DILocation(line: 659, column: 36, scope: !253)
!265 = !DILocation(line: 659, column: 9, scope: !253)
!266 = !DILocation(line: 659, column: 2, scope: !253)
!267 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !199, file: !199, line: 671, type: !254, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!268 = !DILocalVariable(name: "t", arg: 1, scope: !267, file: !199, line: 672, type: !258)
!269 = !DILocation(line: 672, column: 30, scope: !267)
!270 = !DILocation(line: 674, column: 30, scope: !267)
!271 = !DILocation(line: 674, column: 33, scope: !267)
!272 = !DILocation(line: 674, column: 38, scope: !267)
!273 = !DILocation(line: 674, column: 9, scope: !267)
!274 = !DILocation(line: 674, column: 2, scope: !267)
!275 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !199, file: !199, line: 1634, type: !276, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!276 = !DISubroutineType(types: !277)
!277 = !{!256, !278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !280)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !199, line: 1439, size: 448, elements: !281)
!281 = !{!282, !283, !284, !289, !290, !295, !296}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !280, file: !199, line: 1445, baseType: !168, size: 192)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !280, file: !199, line: 1448, baseType: !140, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !280, file: !199, line: 1451, baseType: !285, size: 32, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !280, file: !199, line: 1454, baseType: !285, size: 32, offset: 288)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !280, file: !199, line: 1457, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !257, line: 67, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !257, line: 65, size: 64, elements: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !292, file: !257, line: 66, baseType: !256, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !280, file: !199, line: 1460, baseType: !164, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !280, file: !199, line: 1463, baseType: !87, size: 32, offset: 416)
!297 = !DILocalVariable(name: "timer", arg: 1, scope: !275, file: !199, line: 1635, type: !278)
!298 = !DILocation(line: 1635, column: 34, scope: !275)
!299 = !DILocation(line: 1637, column: 28, scope: !275)
!300 = !DILocation(line: 1637, column: 35, scope: !275)
!301 = !DILocation(line: 1637, column: 9, scope: !275)
!302 = !DILocation(line: 1637, column: 2, scope: !275)
!303 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !199, file: !199, line: 1649, type: !276, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !303, file: !199, line: 1650, type: !278)
!305 = !DILocation(line: 1650, column: 34, scope: !303)
!306 = !DILocation(line: 1652, column: 30, scope: !303)
!307 = !DILocation(line: 1652, column: 37, scope: !303)
!308 = !DILocation(line: 1652, column: 9, scope: !303)
!309 = !DILocation(line: 1652, column: 2, scope: !303)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !199, file: !199, line: 1689, type: !311, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !288, !87}
!313 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !199, line: 1689, type: !288)
!314 = !DILocation(line: 1689, column: 65, scope: !310)
!315 = !DILocalVariable(name: "user_data", arg: 2, scope: !310, file: !199, line: 1690, type: !87)
!316 = !DILocation(line: 1690, column: 19, scope: !310)
!317 = !DILocation(line: 1692, column: 21, scope: !310)
!318 = !DILocation(line: 1692, column: 2, scope: !310)
!319 = !DILocation(line: 1692, column: 9, scope: !310)
!320 = !DILocation(line: 1692, column: 19, scope: !310)
!321 = !DILocation(line: 1693, column: 1, scope: !310)
!322 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !199, file: !199, line: 1704, type: !323, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!323 = !DISubroutineType(types: !324)
!324 = !{!87, !278}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !322, file: !199, line: 1704, type: !278)
!326 = !DILocation(line: 1704, column: 72, scope: !322)
!327 = !DILocation(line: 1706, column: 9, scope: !322)
!328 = !DILocation(line: 1706, column: 16, scope: !322)
!329 = !DILocation(line: 1706, column: 2, scope: !322)
!330 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !199, file: !199, line: 2071, type: !331, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!331 = !DISubroutineType(types: !332)
!332 = !{!88, !333}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 32)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !199, line: 1830, size: 128, elements: !335)
!335 = !{!336, !349, !350}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !334, file: !199, line: 1831, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !338, line: 60, baseType: !339)
!338 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !338, line: 53, size: 64, elements: !340)
!340 = !{!341, !348}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !339, file: !338, line: 54, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !338, line: 50, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !338, line: 44, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !344, file: !338, line: 45, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !338, line: 40, baseType: !164)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !339, file: !338, line: 55, baseType: !342, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !334, file: !199, line: 1832, baseType: !214, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !334, file: !199, line: 1833, baseType: !140, size: 64, offset: 64)
!351 = !DILocalVariable(name: "queue", arg: 1, scope: !330, file: !199, line: 2071, type: !333)
!352 = !DILocation(line: 2071, column: 59, scope: !330)
!353 = !DILocation(line: 2073, column: 35, scope: !330)
!354 = !DILocation(line: 2073, column: 42, scope: !330)
!355 = !DILocation(line: 2073, column: 14, scope: !330)
!356 = !DILocation(line: 2073, column: 9, scope: !330)
!357 = !DILocation(line: 2073, column: 2, scope: !330)
!358 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !199, file: !199, line: 3209, type: !359, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!359 = !DISubroutineType(types: !360)
!360 = !{!165, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !199, line: 3092, size: 128, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !362, file: !199, line: 3093, baseType: !140, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !362, file: !199, line: 3094, baseType: !165, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !362, file: !199, line: 3095, baseType: !165, size: 32, offset: 96)
!367 = !DILocalVariable(name: "sem", arg: 1, scope: !358, file: !199, line: 3209, type: !361)
!368 = !DILocation(line: 3209, column: 65, scope: !358)
!369 = !DILocation(line: 3211, column: 9, scope: !358)
!370 = !DILocation(line: 3211, column: 14, scope: !358)
!371 = !DILocation(line: 3211, column: 2, scope: !358)
!372 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !199, file: !199, line: 4649, type: !373, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!373 = !DISubroutineType(types: !374)
!374 = !{!164, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !199, line: 4390, size: 320, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !385, !386, !387, !388, !389}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !376, file: !199, line: 4392, baseType: !140, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !376, file: !199, line: 4394, baseType: !214, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !376, file: !199, line: 4396, baseType: !210, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !376, file: !199, line: 4398, baseType: !164, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !376, file: !199, line: 4400, baseType: !383, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !376, file: !199, line: 4402, baseType: !383, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !376, file: !199, line: 4404, baseType: !383, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !376, file: !199, line: 4406, baseType: !383, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !376, file: !199, line: 4408, baseType: !164, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !199, line: 4413, baseType: !147, size: 8, offset: 288)
!390 = !DILocalVariable(name: "msgq", arg: 1, scope: !372, file: !199, line: 4649, type: !375)
!391 = !DILocation(line: 4649, column: 66, scope: !372)
!392 = !DILocation(line: 4651, column: 9, scope: !372)
!393 = !DILocation(line: 4651, column: 15, scope: !372)
!394 = !DILocation(line: 4651, column: 26, scope: !372)
!395 = !DILocation(line: 4651, column: 32, scope: !372)
!396 = !DILocation(line: 4651, column: 24, scope: !372)
!397 = !DILocation(line: 4651, column: 2, scope: !372)
!398 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !199, file: !199, line: 4665, type: !373, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!399 = !DILocalVariable(name: "msgq", arg: 1, scope: !398, file: !199, line: 4665, type: !375)
!400 = !DILocation(line: 4665, column: 66, scope: !398)
!401 = !DILocation(line: 4667, column: 9, scope: !398)
!402 = !DILocation(line: 4667, column: 15, scope: !398)
!403 = !DILocation(line: 4667, column: 2, scope: !398)
!404 = distinct !DISubprogram(name: "k_free", scope: !405, file: !405, line: 43, type: !406, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!405 = !DIFile(filename: "kernel/mempool.c", directory: "/home/sri/zephyrproject/zephyr")
!406 = !DISubroutineType(types: !407)
!407 = !{null, !87}
!408 = !DILocalVariable(name: "ptr", arg: 1, scope: !404, file: !405, line: 43, type: !87)
!409 = !DILocation(line: 43, column: 19, scope: !404)
!410 = !DILocalVariable(name: "heap_ref", scope: !404, file: !405, line: 45, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!412 = !DILocation(line: 45, column: 18, scope: !404)
!413 = !DILocation(line: 47, column: 6, scope: !414)
!414 = distinct !DILexicalBlock(scope: !404, file: !405, line: 47, column: 6)
!415 = !DILocation(line: 47, column: 10, scope: !414)
!416 = !DILocation(line: 47, column: 6, scope: !404)
!417 = !DILocation(line: 48, column: 14, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !405, line: 47, column: 16)
!419 = !DILocation(line: 48, column: 12, scope: !418)
!420 = !DILocation(line: 49, column: 9, scope: !418)
!421 = !DILocation(line: 49, column: 7, scope: !418)
!422 = !DILocation(line: 51, column: 3, scope: !418)
!423 = !DILocation(line: 51, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !418, file: !405, line: 51, column: 6)
!425 = !DILocation(line: 53, column: 16, scope: !418)
!426 = !DILocation(line: 53, column: 15, scope: !418)
!427 = !DILocation(line: 53, column: 26, scope: !418)
!428 = !DILocation(line: 53, column: 3, scope: !418)
!429 = !DILocation(line: 55, column: 3, scope: !418)
!430 = !DILocation(line: 55, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !418, file: !405, line: 55, column: 6)
!432 = !DILocation(line: 56, column: 2, scope: !418)
!433 = !DILocation(line: 57, column: 1, scope: !404)
!434 = distinct !DISubprogram(name: "z_thread_aligned_alloc", scope: !405, file: !405, line: 124, type: !435, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!435 = !DISubroutineType(types: !436)
!436 = !{!87, !437, !437}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !438, line: 51, baseType: !165)
!438 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!439 = !DILocalVariable(name: "align", arg: 1, scope: !434, file: !405, line: 124, type: !437)
!440 = !DILocation(line: 124, column: 37, scope: !434)
!441 = !DILocalVariable(name: "size", arg: 2, scope: !434, file: !405, line: 124, type: !437)
!442 = !DILocation(line: 124, column: 51, scope: !434)
!443 = !DILocalVariable(name: "ret", scope: !434, file: !405, line: 126, type: !87)
!444 = !DILocation(line: 126, column: 8, scope: !434)
!445 = !DILocalVariable(name: "heap", scope: !434, file: !405, line: 127, type: !197)
!446 = !DILocation(line: 127, column: 17, scope: !434)
!447 = !DILocation(line: 129, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !434, file: !405, line: 129, column: 6)
!449 = !DILocation(line: 129, column: 6, scope: !434)
!450 = !DILocation(line: 130, column: 8, scope: !451)
!451 = distinct !DILexicalBlock(scope: !448, file: !405, line: 129, column: 21)
!452 = !DILocation(line: 131, column: 2, scope: !451)
!453 = !DILocation(line: 132, column: 26, scope: !454)
!454 = distinct !DILexicalBlock(scope: !448, file: !405, line: 131, column: 9)
!455 = !DILocation(line: 132, column: 35, scope: !454)
!456 = !DILocation(line: 132, column: 8, scope: !454)
!457 = !DILocation(line: 135, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !434, file: !405, line: 135, column: 6)
!459 = !DILocation(line: 135, column: 11, scope: !458)
!460 = !DILocation(line: 135, column: 6, scope: !434)
!461 = !DILocation(line: 136, column: 30, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !405, line: 135, column: 17)
!463 = !DILocation(line: 136, column: 36, scope: !462)
!464 = !DILocation(line: 136, column: 43, scope: !462)
!465 = !DILocation(line: 136, column: 9, scope: !462)
!466 = !DILocation(line: 136, column: 7, scope: !462)
!467 = !DILocation(line: 137, column: 2, scope: !462)
!468 = !DILocation(line: 138, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !458, file: !405, line: 137, column: 9)
!470 = !DILocation(line: 141, column: 9, scope: !434)
!471 = !DILocation(line: 141, column: 2, scope: !434)
!472 = distinct !DISubprogram(name: "z_heap_aligned_alloc", scope: !405, file: !405, line: 12, type: !473, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!473 = !DISubroutineType(types: !474)
!474 = !{!87, !197, !437, !437}
!475 = !DILocalVariable(name: "heap", arg: 1, scope: !472, file: !405, line: 12, type: !197)
!476 = !DILocation(line: 12, column: 50, scope: !472)
!477 = !DILocalVariable(name: "align", arg: 2, scope: !472, file: !405, line: 12, type: !437)
!478 = !DILocation(line: 12, column: 63, scope: !472)
!479 = !DILocalVariable(name: "size", arg: 3, scope: !472, file: !405, line: 12, type: !437)
!480 = !DILocation(line: 12, column: 77, scope: !472)
!481 = !DILocalVariable(name: "mem", scope: !472, file: !405, line: 14, type: !87)
!482 = !DILocation(line: 14, column: 8, scope: !472)
!483 = !DILocalVariable(name: "heap_ref", scope: !472, file: !405, line: 15, type: !411)
!484 = !DILocation(line: 15, column: 18, scope: !472)
!485 = !DILocalVariable(name: "__align", scope: !472, file: !405, line: 16, type: !437)
!486 = !DILocation(line: 16, column: 9, scope: !472)
!487 = !DILocation(line: 24, column: 24, scope: !488)
!488 = distinct !DILexicalBlock(scope: !472, file: !405, line: 24, column: 6)
!489 = !DILocation(line: 24, column: 6, scope: !488)
!490 = !DILocation(line: 24, column: 6, scope: !472)
!491 = !DILocation(line: 25, column: 3, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !405, line: 24, column: 56)
!493 = !DILocation(line: 27, column: 12, scope: !472)
!494 = !DILocation(line: 27, column: 18, scope: !472)
!495 = !DILocation(line: 27, column: 10, scope: !472)
!496 = !DILocation(line: 29, column: 29, scope: !472)
!497 = !DILocation(line: 29, column: 35, scope: !472)
!498 = !DILocation(line: 29, column: 44, scope: !472)
!499 = !DILocation(line: 29, column: 65, scope: !472)
!500 = !DILocation(line: 29, column: 8, scope: !472)
!501 = !DILocation(line: 29, column: 6, scope: !472)
!502 = !DILocation(line: 30, column: 6, scope: !503)
!503 = distinct !DILexicalBlock(scope: !472, file: !405, line: 30, column: 6)
!504 = !DILocation(line: 30, column: 10, scope: !503)
!505 = !DILocation(line: 30, column: 6, scope: !472)
!506 = !DILocation(line: 31, column: 3, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !405, line: 30, column: 16)
!508 = !DILocation(line: 34, column: 13, scope: !472)
!509 = !DILocation(line: 34, column: 11, scope: !472)
!510 = !DILocation(line: 35, column: 14, scope: !472)
!511 = !DILocation(line: 35, column: 3, scope: !472)
!512 = !DILocation(line: 35, column: 12, scope: !472)
!513 = !DILocation(line: 36, column: 8, scope: !472)
!514 = !DILocation(line: 36, column: 6, scope: !472)
!515 = !DILocation(line: 40, column: 9, scope: !472)
!516 = !DILocation(line: 40, column: 2, scope: !472)
!517 = !DILocation(line: 41, column: 1, scope: !472)
!518 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !338, file: !338, line: 335, type: !519, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !522}
!521 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 32)
!523 = !DILocalVariable(name: "list", arg: 1, scope: !518, file: !338, line: 335, type: !522)
!524 = !DILocation(line: 335, column: 55, scope: !518)
!525 = !DILocation(line: 335, column: 92, scope: !518)
!526 = !DILocation(line: 335, column: 71, scope: !518)
!527 = !DILocation(line: 335, column: 98, scope: !518)
!528 = !DILocation(line: 335, column: 63, scope: !518)
!529 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !338, file: !338, line: 255, type: !530, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!530 = !DISubroutineType(types: !531)
!531 = !{!342, !522}
!532 = !DILocalVariable(name: "list", arg: 1, scope: !529, file: !338, line: 255, type: !522)
!533 = !DILocation(line: 255, column: 64, scope: !529)
!534 = !DILocation(line: 257, column: 9, scope: !529)
!535 = !DILocation(line: 257, column: 15, scope: !529)
!536 = !DILocation(line: 257, column: 2, scope: !529)
!537 = distinct !DISubprogram(name: "size_add_overflow", scope: !538, file: !538, line: 47, type: !539, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!538 = !DIFile(filename: "include/zephyr/sys/math_extras_impl.h", directory: "/home/sri/zephyrproject/zephyr")
!539 = !DISubroutineType(types: !540)
!540 = !{!521, !437, !437, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 32)
!542 = !DILocalVariable(name: "a", arg: 1, scope: !537, file: !538, line: 47, type: !437)
!543 = !DILocation(line: 47, column: 46, scope: !537)
!544 = !DILocalVariable(name: "b", arg: 2, scope: !537, file: !538, line: 47, type: !437)
!545 = !DILocation(line: 47, column: 56, scope: !537)
!546 = !DILocalVariable(name: "result", arg: 3, scope: !537, file: !538, line: 47, type: !541)
!547 = !DILocation(line: 47, column: 67, scope: !537)
!548 = !DILocation(line: 49, column: 32, scope: !537)
!549 = !DILocation(line: 49, column: 35, scope: !537)
!550 = !DILocation(line: 49, column: 38, scope: !537)
!551 = !DILocation(line: 49, column: 9, scope: !537)
!552 = !DILocation(line: 49, column: 2, scope: !537)
