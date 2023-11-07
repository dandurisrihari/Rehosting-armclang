; ModuleID = '../bc_files/bitarray.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/bitarray.c"
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
%struct.z_spinlock_key = type { i32 }
%struct.sys_bitarray = type { i32, i32, ptr, %struct.k_spinlock }
%struct.bundle_data = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !100 {
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
define hidden i32 @sys_bitarray_set_bit(ptr noundef %0, i32 noundef %1) #0 !dbg !404 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !418, metadata !DIExpression()), !dbg !419
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !420, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.declare(metadata ptr %13, metadata !422, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %14, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata ptr %15, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata ptr %16, metadata !432, metadata !DIExpression()), !dbg !433
  %18 = load ptr, ptr %11, align 4, !dbg !434
  %19 = getelementptr inbounds %struct.sys_bitarray, ptr %18, i32 0, i32 3, !dbg !435
  store ptr %19, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !436, metadata !DIExpression()), !dbg !441
  %20 = load ptr, ptr %10, align 4, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %9, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata ptr %6, metadata !446, metadata !DIExpression()), !dbg !451
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !453, !srcloc !454
  store i32 %21, ptr %6, align 4, !dbg !453
  %22 = load i32, ptr %6, align 4, !dbg !455
  store i32 %22, ptr %9, align 4, !dbg !456
  %23 = load ptr, ptr %10, align 4, !dbg !457
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !458, metadata !DIExpression()), !dbg !462
  %24 = load ptr, ptr %5, align 4, !dbg !464
  %25 = load ptr, ptr %10, align 4, !dbg !465
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !466, metadata !DIExpression()), !dbg !468
  %26 = load ptr, ptr %4, align 4, !dbg !470
  %27 = load i32, ptr %9, align 4, !dbg !471
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !472
  store i32 %27, ptr %28, align 4, !dbg !472
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %17, i32 4, i1 false), !dbg !472
  %29 = load i32, ptr %12, align 4, !dbg !473
  %30 = load ptr, ptr %11, align 4, !dbg !475
  %31 = getelementptr inbounds %struct.sys_bitarray, ptr %30, i32 0, i32 0, !dbg !476
  %32 = load i32, ptr %31, align 4, !dbg !476
  %33 = icmp uge i32 %29, %32, !dbg !477
  br i1 %33, label %34, label %35, !dbg !478

34:                                               ; preds = %2
  store i32 -5, ptr %14, align 4, !dbg !479
  br label %49, !dbg !481

35:                                               ; preds = %2
  %36 = load i32, ptr %12, align 4, !dbg !482
  %37 = udiv i32 %36, 32, !dbg !483
  store i32 %37, ptr %15, align 4, !dbg !484
  %38 = load i32, ptr %12, align 4, !dbg !485
  %39 = urem i32 %38, 32, !dbg !486
  store i32 %39, ptr %16, align 4, !dbg !487
  %40 = load i32, ptr %16, align 4, !dbg !488
  %41 = shl i32 1, %40, !dbg !489
  %42 = load ptr, ptr %11, align 4, !dbg !490
  %43 = getelementptr inbounds %struct.sys_bitarray, ptr %42, i32 0, i32 2, !dbg !491
  %44 = load ptr, ptr %43, align 4, !dbg !491
  %45 = load i32, ptr %15, align 4, !dbg !492
  %46 = getelementptr inbounds i32, ptr %44, i32 %45, !dbg !490
  %47 = load i32, ptr %46, align 4, !dbg !493
  %48 = or i32 %47, %41, !dbg !493
  store i32 %48, ptr %46, align 4, !dbg !493
  store i32 0, ptr %14, align 4, !dbg !494
  br label %49, !dbg !495

49:                                               ; preds = %35, %34
  call void @llvm.dbg.label(metadata !496), !dbg !497
  %50 = load ptr, ptr %11, align 4, !dbg !498
  %51 = getelementptr inbounds %struct.sys_bitarray, ptr %50, i32 0, i32 3, !dbg !499
  %52 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !500
  %53 = load [1 x i32], ptr %52, align 4, !dbg !500
  store [1 x i32] %53, ptr %7, align 4
  store ptr %51, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !501, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata ptr %7, metadata !507, metadata !DIExpression()), !dbg !508
  %54 = load ptr, ptr %8, align 4, !dbg !509
  %55 = load i32, ptr %7, align 4, !dbg !510
  store i32 %55, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !511, metadata !DIExpression()), !dbg !515
  %56 = load i32, ptr %3, align 4, !dbg !517
  %57 = icmp ne i32 %56, 0, !dbg !519
  br i1 %57, label %58, label %59, !dbg !520

58:                                               ; preds = %49
  br label %arch_irq_unlock.exit, !dbg !521

59:                                               ; preds = %49
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !523, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !525

arch_irq_unlock.exit:                             ; preds = %58, %59
  %60 = load i32, ptr %14, align 4, !dbg !526
  ret i32 %60, !dbg !527
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_clear_bit(ptr noundef %0, i32 noundef %1) #0 !dbg !528 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !529, metadata !DIExpression()), !dbg !530
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata ptr %13, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata ptr %14, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata ptr %15, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata ptr %16, metadata !539, metadata !DIExpression()), !dbg !540
  %18 = load ptr, ptr %11, align 4, !dbg !541
  %19 = getelementptr inbounds %struct.sys_bitarray, ptr %18, i32 0, i32 3, !dbg !542
  store ptr %19, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !436, metadata !DIExpression()), !dbg !543
  %20 = load ptr, ptr %10, align 4, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %9, metadata !444, metadata !DIExpression()), !dbg !546
  call void @llvm.dbg.declare(metadata ptr %6, metadata !446, metadata !DIExpression()), !dbg !547
  %21 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !549, !srcloc !454
  store i32 %21, ptr %6, align 4, !dbg !549
  %22 = load i32, ptr %6, align 4, !dbg !550
  store i32 %22, ptr %9, align 4, !dbg !551
  %23 = load ptr, ptr %10, align 4, !dbg !552
  store ptr %23, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !458, metadata !DIExpression()), !dbg !553
  %24 = load ptr, ptr %5, align 4, !dbg !555
  %25 = load ptr, ptr %10, align 4, !dbg !556
  store ptr %25, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !466, metadata !DIExpression()), !dbg !557
  %26 = load ptr, ptr %4, align 4, !dbg !559
  %27 = load i32, ptr %9, align 4, !dbg !560
  %28 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !561
  store i32 %27, ptr %28, align 4, !dbg !561
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %17, i32 4, i1 false), !dbg !561
  %29 = load i32, ptr %12, align 4, !dbg !562
  %30 = load ptr, ptr %11, align 4, !dbg !564
  %31 = getelementptr inbounds %struct.sys_bitarray, ptr %30, i32 0, i32 0, !dbg !565
  %32 = load i32, ptr %31, align 4, !dbg !565
  %33 = icmp uge i32 %29, %32, !dbg !566
  br i1 %33, label %34, label %35, !dbg !567

34:                                               ; preds = %2
  store i32 -5, ptr %14, align 4, !dbg !568
  br label %50, !dbg !570

35:                                               ; preds = %2
  %36 = load i32, ptr %12, align 4, !dbg !571
  %37 = udiv i32 %36, 32, !dbg !572
  store i32 %37, ptr %15, align 4, !dbg !573
  %38 = load i32, ptr %12, align 4, !dbg !574
  %39 = urem i32 %38, 32, !dbg !575
  store i32 %39, ptr %16, align 4, !dbg !576
  %40 = load i32, ptr %16, align 4, !dbg !577
  %41 = shl i32 1, %40, !dbg !578
  %42 = xor i32 %41, -1, !dbg !579
  %43 = load ptr, ptr %11, align 4, !dbg !580
  %44 = getelementptr inbounds %struct.sys_bitarray, ptr %43, i32 0, i32 2, !dbg !581
  %45 = load ptr, ptr %44, align 4, !dbg !581
  %46 = load i32, ptr %15, align 4, !dbg !582
  %47 = getelementptr inbounds i32, ptr %45, i32 %46, !dbg !580
  %48 = load i32, ptr %47, align 4, !dbg !583
  %49 = and i32 %48, %42, !dbg !583
  store i32 %49, ptr %47, align 4, !dbg !583
  store i32 0, ptr %14, align 4, !dbg !584
  br label %50, !dbg !585

50:                                               ; preds = %35, %34
  call void @llvm.dbg.label(metadata !586), !dbg !587
  %51 = load ptr, ptr %11, align 4, !dbg !588
  %52 = getelementptr inbounds %struct.sys_bitarray, ptr %51, i32 0, i32 3, !dbg !589
  %53 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !590
  %54 = load [1 x i32], ptr %53, align 4, !dbg !590
  store [1 x i32] %54, ptr %7, align 4
  store ptr %52, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !501, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata ptr %7, metadata !507, metadata !DIExpression()), !dbg !593
  %55 = load ptr, ptr %8, align 4, !dbg !594
  %56 = load i32, ptr %7, align 4, !dbg !595
  store i32 %56, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !511, metadata !DIExpression()), !dbg !596
  %57 = load i32, ptr %3, align 4, !dbg !598
  %58 = icmp ne i32 %57, 0, !dbg !599
  br i1 %58, label %59, label %60, !dbg !600

59:                                               ; preds = %50
  br label %arch_irq_unlock.exit, !dbg !601

60:                                               ; preds = %50
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !602, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !603

arch_irq_unlock.exit:                             ; preds = %59, %60
  %61 = load i32, ptr %14, align 4, !dbg !604
  ret i32 %61, !dbg !605
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_test_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !606 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !610, metadata !DIExpression()), !dbg !611
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !612, metadata !DIExpression()), !dbg !613
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !614, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.declare(metadata ptr %15, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata ptr %16, metadata !618, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata ptr %17, metadata !620, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.declare(metadata ptr %18, metadata !622, metadata !DIExpression()), !dbg !623
  %20 = load ptr, ptr %12, align 4, !dbg !624
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !625
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !436, metadata !DIExpression()), !dbg !626
  %22 = load ptr, ptr %11, align 4, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %10, metadata !444, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata ptr %7, metadata !446, metadata !DIExpression()), !dbg !630
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !632, !srcloc !454
  store i32 %23, ptr %7, align 4, !dbg !632
  %24 = load i32, ptr %7, align 4, !dbg !633
  store i32 %24, ptr %10, align 4, !dbg !634
  %25 = load ptr, ptr %11, align 4, !dbg !635
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !636
  %26 = load ptr, ptr %6, align 4, !dbg !638
  %27 = load ptr, ptr %11, align 4, !dbg !639
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !466, metadata !DIExpression()), !dbg !640
  %28 = load ptr, ptr %5, align 4, !dbg !642
  %29 = load i32, ptr %10, align 4, !dbg !643
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !644
  store i32 %29, ptr %30, align 4, !dbg !644
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !644
  %31 = load ptr, ptr %14, align 4, !dbg !645
  %32 = icmp eq ptr %31, null, !dbg !647
  br i1 %32, label %33, label %34, !dbg !648

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !649
  br label %61, !dbg !651

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !652
  %36 = load ptr, ptr %12, align 4, !dbg !654
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !655
  %38 = load i32, ptr %37, align 4, !dbg !655
  %39 = icmp uge i32 %35, %38, !dbg !656
  br i1 %39, label %40, label %41, !dbg !657

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !658
  br label %61, !dbg !660

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !661
  %43 = udiv i32 %42, 32, !dbg !662
  store i32 %43, ptr %17, align 4, !dbg !663
  %44 = load i32, ptr %13, align 4, !dbg !664
  %45 = urem i32 %44, 32, !dbg !665
  store i32 %45, ptr %18, align 4, !dbg !666
  %46 = load ptr, ptr %12, align 4, !dbg !667
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !669
  %48 = load ptr, ptr %47, align 4, !dbg !669
  %49 = load i32, ptr %17, align 4, !dbg !670
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !667
  %51 = load i32, ptr %50, align 4, !dbg !667
  %52 = load i32, ptr %18, align 4, !dbg !671
  %53 = shl i32 1, %52, !dbg !672
  %54 = and i32 %51, %53, !dbg !673
  %55 = icmp ne i32 %54, 0, !dbg !674
  br i1 %55, label %56, label %58, !dbg !675

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !676
  store i32 1, ptr %57, align 4, !dbg !678
  br label %60, !dbg !679

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !680
  store i32 0, ptr %59, align 4, !dbg !682
  br label %60

60:                                               ; preds = %58, %56
  store i32 0, ptr %16, align 4, !dbg !683
  br label %61, !dbg !684

61:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !685), !dbg !686
  %62 = load ptr, ptr %12, align 4, !dbg !687
  %63 = getelementptr inbounds %struct.sys_bitarray, ptr %62, i32 0, i32 3, !dbg !688
  %64 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !689
  %65 = load [1 x i32], ptr %64, align 4, !dbg !689
  store [1 x i32] %65, ptr %8, align 4
  store ptr %63, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.declare(metadata ptr %8, metadata !507, metadata !DIExpression()), !dbg !692
  %66 = load ptr, ptr %9, align 4, !dbg !693
  %67 = load i32, ptr %8, align 4, !dbg !694
  store i32 %67, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !695
  %68 = load i32, ptr %4, align 4, !dbg !697
  %69 = icmp ne i32 %68, 0, !dbg !698
  br i1 %69, label %70, label %71, !dbg !699

70:                                               ; preds = %61
  br label %arch_irq_unlock.exit, !dbg !700

71:                                               ; preds = %61
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !701, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !702

arch_irq_unlock.exit:                             ; preds = %70, %71
  %72 = load i32, ptr %16, align 4, !dbg !703
  ret i32 %72, !dbg !704
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_test_and_set_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !705 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !706, metadata !DIExpression()), !dbg !707
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !708, metadata !DIExpression()), !dbg !709
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !710, metadata !DIExpression()), !dbg !711
  call void @llvm.dbg.declare(metadata ptr %15, metadata !712, metadata !DIExpression()), !dbg !713
  call void @llvm.dbg.declare(metadata ptr %16, metadata !714, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.declare(metadata ptr %17, metadata !716, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata ptr %18, metadata !718, metadata !DIExpression()), !dbg !719
  %20 = load ptr, ptr %12, align 4, !dbg !720
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !721
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !436, metadata !DIExpression()), !dbg !722
  %22 = load ptr, ptr %11, align 4, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %10, metadata !444, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.declare(metadata ptr %7, metadata !446, metadata !DIExpression()), !dbg !726
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !728, !srcloc !454
  store i32 %23, ptr %7, align 4, !dbg !728
  %24 = load i32, ptr %7, align 4, !dbg !729
  store i32 %24, ptr %10, align 4, !dbg !730
  %25 = load ptr, ptr %11, align 4, !dbg !731
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !732
  %26 = load ptr, ptr %6, align 4, !dbg !734
  %27 = load ptr, ptr %11, align 4, !dbg !735
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !466, metadata !DIExpression()), !dbg !736
  %28 = load ptr, ptr %5, align 4, !dbg !738
  %29 = load i32, ptr %10, align 4, !dbg !739
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !740
  store i32 %29, ptr %30, align 4, !dbg !740
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !740
  %31 = load ptr, ptr %14, align 4, !dbg !741
  %32 = icmp eq ptr %31, null, !dbg !743
  br i1 %32, label %33, label %34, !dbg !744

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !745
  br label %70, !dbg !747

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !748
  %36 = load ptr, ptr %12, align 4, !dbg !750
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !751
  %38 = load i32, ptr %37, align 4, !dbg !751
  %39 = icmp uge i32 %35, %38, !dbg !752
  br i1 %39, label %40, label %41, !dbg !753

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !754
  br label %70, !dbg !756

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !757
  %43 = udiv i32 %42, 32, !dbg !758
  store i32 %43, ptr %17, align 4, !dbg !759
  %44 = load i32, ptr %13, align 4, !dbg !760
  %45 = urem i32 %44, 32, !dbg !761
  store i32 %45, ptr %18, align 4, !dbg !762
  %46 = load ptr, ptr %12, align 4, !dbg !763
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !765
  %48 = load ptr, ptr %47, align 4, !dbg !765
  %49 = load i32, ptr %17, align 4, !dbg !766
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !763
  %51 = load i32, ptr %50, align 4, !dbg !763
  %52 = load i32, ptr %18, align 4, !dbg !767
  %53 = shl i32 1, %52, !dbg !768
  %54 = and i32 %51, %53, !dbg !769
  %55 = icmp ne i32 %54, 0, !dbg !770
  br i1 %55, label %56, label %58, !dbg !771

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !772
  store i32 1, ptr %57, align 4, !dbg !774
  br label %60, !dbg !775

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !776
  store i32 0, ptr %59, align 4, !dbg !778
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, ptr %18, align 4, !dbg !779
  %62 = shl i32 1, %61, !dbg !780
  %63 = load ptr, ptr %12, align 4, !dbg !781
  %64 = getelementptr inbounds %struct.sys_bitarray, ptr %63, i32 0, i32 2, !dbg !782
  %65 = load ptr, ptr %64, align 4, !dbg !782
  %66 = load i32, ptr %17, align 4, !dbg !783
  %67 = getelementptr inbounds i32, ptr %65, i32 %66, !dbg !781
  %68 = load i32, ptr %67, align 4, !dbg !784
  %69 = or i32 %68, %62, !dbg !784
  store i32 %69, ptr %67, align 4, !dbg !784
  store i32 0, ptr %16, align 4, !dbg !785
  br label %70, !dbg !786

70:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !787), !dbg !788
  %71 = load ptr, ptr %12, align 4, !dbg !789
  %72 = getelementptr inbounds %struct.sys_bitarray, ptr %71, i32 0, i32 3, !dbg !790
  %73 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !791
  %74 = load [1 x i32], ptr %73, align 4, !dbg !791
  store [1 x i32] %74, ptr %8, align 4
  store ptr %72, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata ptr %8, metadata !507, metadata !DIExpression()), !dbg !794
  %75 = load ptr, ptr %9, align 4, !dbg !795
  %76 = load i32, ptr %8, align 4, !dbg !796
  store i32 %76, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !797
  %77 = load i32, ptr %4, align 4, !dbg !799
  %78 = icmp ne i32 %77, 0, !dbg !800
  br i1 %78, label %79, label %80, !dbg !801

79:                                               ; preds = %70
  br label %arch_irq_unlock.exit, !dbg !802

80:                                               ; preds = %70
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !803, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !804

arch_irq_unlock.exit:                             ; preds = %79, %80
  %81 = load i32, ptr %16, align 4, !dbg !805
  ret i32 %81, !dbg !806
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_test_and_clear_bit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !807 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !808, metadata !DIExpression()), !dbg !809
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !810, metadata !DIExpression()), !dbg !811
  store ptr %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !812, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.declare(metadata ptr %15, metadata !814, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata ptr %16, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata ptr %17, metadata !818, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.declare(metadata ptr %18, metadata !820, metadata !DIExpression()), !dbg !821
  %20 = load ptr, ptr %12, align 4, !dbg !822
  %21 = getelementptr inbounds %struct.sys_bitarray, ptr %20, i32 0, i32 3, !dbg !823
  store ptr %21, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !436, metadata !DIExpression()), !dbg !824
  %22 = load ptr, ptr %11, align 4, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %10, metadata !444, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata ptr %7, metadata !446, metadata !DIExpression()), !dbg !828
  %23 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !830, !srcloc !454
  store i32 %23, ptr %7, align 4, !dbg !830
  %24 = load i32, ptr %7, align 4, !dbg !831
  store i32 %24, ptr %10, align 4, !dbg !832
  %25 = load ptr, ptr %11, align 4, !dbg !833
  store ptr %25, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !834
  %26 = load ptr, ptr %6, align 4, !dbg !836
  %27 = load ptr, ptr %11, align 4, !dbg !837
  store ptr %27, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !466, metadata !DIExpression()), !dbg !838
  %28 = load ptr, ptr %5, align 4, !dbg !840
  %29 = load i32, ptr %10, align 4, !dbg !841
  %30 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !842
  store i32 %29, ptr %30, align 4, !dbg !842
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !842
  %31 = load ptr, ptr %14, align 4, !dbg !843
  %32 = icmp eq ptr %31, null, !dbg !845
  br i1 %32, label %33, label %34, !dbg !846

33:                                               ; preds = %3
  store i32 -5, ptr %16, align 4, !dbg !847
  br label %71, !dbg !849

34:                                               ; preds = %3
  %35 = load i32, ptr %13, align 4, !dbg !850
  %36 = load ptr, ptr %12, align 4, !dbg !852
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 0, !dbg !853
  %38 = load i32, ptr %37, align 4, !dbg !853
  %39 = icmp uge i32 %35, %38, !dbg !854
  br i1 %39, label %40, label %41, !dbg !855

40:                                               ; preds = %34
  store i32 -5, ptr %16, align 4, !dbg !856
  br label %71, !dbg !858

41:                                               ; preds = %34
  %42 = load i32, ptr %13, align 4, !dbg !859
  %43 = udiv i32 %42, 32, !dbg !860
  store i32 %43, ptr %17, align 4, !dbg !861
  %44 = load i32, ptr %13, align 4, !dbg !862
  %45 = urem i32 %44, 32, !dbg !863
  store i32 %45, ptr %18, align 4, !dbg !864
  %46 = load ptr, ptr %12, align 4, !dbg !865
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 2, !dbg !867
  %48 = load ptr, ptr %47, align 4, !dbg !867
  %49 = load i32, ptr %17, align 4, !dbg !868
  %50 = getelementptr inbounds i32, ptr %48, i32 %49, !dbg !865
  %51 = load i32, ptr %50, align 4, !dbg !865
  %52 = load i32, ptr %18, align 4, !dbg !869
  %53 = shl i32 1, %52, !dbg !870
  %54 = and i32 %51, %53, !dbg !871
  %55 = icmp ne i32 %54, 0, !dbg !872
  br i1 %55, label %56, label %58, !dbg !873

56:                                               ; preds = %41
  %57 = load ptr, ptr %14, align 4, !dbg !874
  store i32 1, ptr %57, align 4, !dbg !876
  br label %60, !dbg !877

58:                                               ; preds = %41
  %59 = load ptr, ptr %14, align 4, !dbg !878
  store i32 0, ptr %59, align 4, !dbg !880
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i32, ptr %18, align 4, !dbg !881
  %62 = shl i32 1, %61, !dbg !882
  %63 = xor i32 %62, -1, !dbg !883
  %64 = load ptr, ptr %12, align 4, !dbg !884
  %65 = getelementptr inbounds %struct.sys_bitarray, ptr %64, i32 0, i32 2, !dbg !885
  %66 = load ptr, ptr %65, align 4, !dbg !885
  %67 = load i32, ptr %17, align 4, !dbg !886
  %68 = getelementptr inbounds i32, ptr %66, i32 %67, !dbg !884
  %69 = load i32, ptr %68, align 4, !dbg !887
  %70 = and i32 %69, %63, !dbg !887
  store i32 %70, ptr %68, align 4, !dbg !887
  store i32 0, ptr %16, align 4, !dbg !888
  br label %71, !dbg !889

71:                                               ; preds = %60, %40, %33
  call void @llvm.dbg.label(metadata !890), !dbg !891
  %72 = load ptr, ptr %12, align 4, !dbg !892
  %73 = getelementptr inbounds %struct.sys_bitarray, ptr %72, i32 0, i32 3, !dbg !893
  %74 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !894
  %75 = load [1 x i32], ptr %74, align 4, !dbg !894
  store [1 x i32] %75, ptr %8, align 4
  store ptr %73, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.declare(metadata ptr %8, metadata !507, metadata !DIExpression()), !dbg !897
  %76 = load ptr, ptr %9, align 4, !dbg !898
  %77 = load i32, ptr %8, align 4, !dbg !899
  store i32 %77, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !900
  %78 = load i32, ptr %4, align 4, !dbg !902
  %79 = icmp ne i32 %78, 0, !dbg !903
  br i1 %79, label %80, label %81, !dbg !904

80:                                               ; preds = %71
  br label %arch_irq_unlock.exit, !dbg !905

81:                                               ; preds = %71
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !906, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !907

arch_irq_unlock.exit:                             ; preds = %80, %81
  %82 = load i32, ptr %16, align 4, !dbg !908
  ret i32 %82, !dbg !909
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_alloc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !910 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 4
  %16 = alloca %struct.z_spinlock_key, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.bundle_data, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.z_spinlock_key, align 4
  %24 = alloca i32, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !914, metadata !DIExpression()), !dbg !915
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !916, metadata !DIExpression()), !dbg !917
  store ptr %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata ptr %16, metadata !920, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.declare(metadata ptr %17, metadata !922, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata ptr %18, metadata !924, metadata !DIExpression()), !dbg !925
  call void @llvm.dbg.declare(metadata ptr %19, metadata !926, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.declare(metadata ptr %20, metadata !936, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.declare(metadata ptr %21, metadata !938, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.declare(metadata ptr %22, metadata !940, metadata !DIExpression()), !dbg !941
  %25 = load ptr, ptr %13, align 4, !dbg !942
  %26 = getelementptr inbounds %struct.sys_bitarray, ptr %25, i32 0, i32 3, !dbg !943
  store ptr %26, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !436, metadata !DIExpression()), !dbg !944
  %27 = load ptr, ptr %12, align 4, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %11, metadata !444, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata ptr %7, metadata !446, metadata !DIExpression()), !dbg !948
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !950, !srcloc !454
  store i32 %28, ptr %7, align 4, !dbg !950
  %29 = load i32, ptr %7, align 4, !dbg !951
  store i32 %29, ptr %11, align 4, !dbg !952
  %30 = load ptr, ptr %12, align 4, !dbg !953
  store ptr %30, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !954
  %31 = load ptr, ptr %6, align 4, !dbg !956
  %32 = load ptr, ptr %12, align 4, !dbg !957
  store ptr %32, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !466, metadata !DIExpression()), !dbg !958
  %33 = load ptr, ptr %5, align 4, !dbg !960
  %34 = load i32, ptr %11, align 4, !dbg !961
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %23, i32 0, i32 0, !dbg !962
  store i32 %34, ptr %35, align 4, !dbg !962
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %16, ptr align 4 %23, i32 4, i1 false), !dbg !962
  %36 = load ptr, ptr %15, align 4, !dbg !963
  %37 = icmp eq ptr %36, null, !dbg !965
  br i1 %37, label %38, label %39, !dbg !966

38:                                               ; preds = %3
  store i32 -5, ptr %18, align 4, !dbg !967
  br label %122, !dbg !969

39:                                               ; preds = %3
  %40 = load i32, ptr %14, align 4, !dbg !970
  %41 = icmp eq i32 %40, 0, !dbg !972
  br i1 %41, label %48, label %42, !dbg !973

42:                                               ; preds = %39
  %43 = load i32, ptr %14, align 4, !dbg !974
  %44 = load ptr, ptr %13, align 4, !dbg !975
  %45 = getelementptr inbounds %struct.sys_bitarray, ptr %44, i32 0, i32 0, !dbg !976
  %46 = load i32, ptr %45, align 4, !dbg !976
  %47 = icmp ugt i32 %43, %46, !dbg !977
  br i1 %47, label %48, label %49, !dbg !978

48:                                               ; preds = %42, %39
  store i32 -5, ptr %18, align 4, !dbg !979
  br label %122, !dbg !981

49:                                               ; preds = %42
  store i32 0, ptr %17, align 4, !dbg !982
  call void @llvm.dbg.declare(metadata ptr %24, metadata !983, metadata !DIExpression()), !dbg !985
  store i32 0, ptr %24, align 4, !dbg !985
  br label %50, !dbg !986

50:                                               ; preds = %94, %49
  %51 = load i32, ptr %24, align 4, !dbg !987
  %52 = load ptr, ptr %13, align 4, !dbg !989
  %53 = getelementptr inbounds %struct.sys_bitarray, ptr %52, i32 0, i32 1, !dbg !990
  %54 = load i32, ptr %53, align 4, !dbg !990
  %55 = icmp ult i32 %51, %54, !dbg !991
  br i1 %55, label %56, label %97, !dbg !992

56:                                               ; preds = %50
  %57 = load ptr, ptr %13, align 4, !dbg !993
  %58 = getelementptr inbounds %struct.sys_bitarray, ptr %57, i32 0, i32 2, !dbg !996
  %59 = load ptr, ptr %58, align 4, !dbg !996
  %60 = load i32, ptr %24, align 4, !dbg !997
  %61 = getelementptr inbounds i32, ptr %59, i32 %60, !dbg !993
  %62 = load i32, ptr %61, align 4, !dbg !993
  %63 = xor i32 %62, -1, !dbg !998
  %64 = icmp eq i32 %63, 0, !dbg !999
  br i1 %64, label %65, label %68, !dbg !1000

65:                                               ; preds = %56
  %66 = load i32, ptr %17, align 4, !dbg !1001
  %67 = add i32 %66, 32, !dbg !1001
  store i32 %67, ptr %17, align 4, !dbg !1001
  br label %94, !dbg !1003

68:                                               ; preds = %56
  %69 = load ptr, ptr %13, align 4, !dbg !1004
  %70 = getelementptr inbounds %struct.sys_bitarray, ptr %69, i32 0, i32 2, !dbg !1006
  %71 = load ptr, ptr %70, align 4, !dbg !1006
  %72 = load i32, ptr %24, align 4, !dbg !1007
  %73 = getelementptr inbounds i32, ptr %71, i32 %72, !dbg !1004
  %74 = load i32, ptr %73, align 4, !dbg !1004
  %75 = icmp ne i32 %74, 0, !dbg !1008
  br i1 %75, label %76, label %93, !dbg !1009

76:                                               ; preds = %68
  %77 = load ptr, ptr %13, align 4, !dbg !1010
  %78 = getelementptr inbounds %struct.sys_bitarray, ptr %77, i32 0, i32 2, !dbg !1012
  %79 = load ptr, ptr %78, align 4, !dbg !1012
  %80 = load i32, ptr %24, align 4, !dbg !1013
  %81 = getelementptr inbounds i32, ptr %79, i32 %80, !dbg !1010
  %82 = load i32, ptr %81, align 4, !dbg !1010
  %83 = xor i32 %82, -1, !dbg !1014
  store i32 %83, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1015, metadata !DIExpression()), !dbg !1020
  %84 = load i32, ptr %8, align 4, !dbg !1022
  %85 = call i32 @llvm.cttz.i32(i32 %84, i1 true), !dbg !1023
  %86 = add i32 %85, 1, !dbg !1023
  %87 = icmp eq i32 %84, 0, !dbg !1023
  %88 = select i1 %87, i32 0, i32 %86, !dbg !1023
  %89 = sub i32 %88, 1, !dbg !1024
  store i32 %89, ptr %20, align 4, !dbg !1025
  %90 = load i32, ptr %20, align 4, !dbg !1026
  %91 = load i32, ptr %17, align 4, !dbg !1027
  %92 = add i32 %91, %90, !dbg !1027
  store i32 %92, ptr %17, align 4, !dbg !1027
  br label %93, !dbg !1028

93:                                               ; preds = %76, %68
  br label %97, !dbg !1029

94:                                               ; preds = %65
  %95 = load i32, ptr %24, align 4, !dbg !1030
  %96 = add i32 %95, 1, !dbg !1030
  store i32 %96, ptr %24, align 4, !dbg !1030
  br label %50, !dbg !1031, !llvm.loop !1032

97:                                               ; preds = %93, %50
  %98 = load ptr, ptr %13, align 4, !dbg !1034
  %99 = getelementptr inbounds %struct.sys_bitarray, ptr %98, i32 0, i32 0, !dbg !1035
  %100 = load i32, ptr %99, align 4, !dbg !1035
  %101 = load i32, ptr %14, align 4, !dbg !1036
  %102 = sub i32 %100, %101, !dbg !1037
  store i32 %102, ptr %21, align 4, !dbg !1038
  store i32 -28, ptr %18, align 4, !dbg !1039
  br label %103, !dbg !1040

103:                                              ; preds = %118, %97
  %104 = load i32, ptr %17, align 4, !dbg !1041
  %105 = load i32, ptr %21, align 4, !dbg !1042
  %106 = icmp ule i32 %104, %105, !dbg !1043
  br i1 %106, label %107, label %121, !dbg !1040

107:                                              ; preds = %103
  %108 = load ptr, ptr %13, align 4, !dbg !1044
  %109 = load i32, ptr %17, align 4, !dbg !1047
  %110 = load i32, ptr %14, align 4, !dbg !1048
  %111 = call zeroext i1 @match_region(ptr noundef %108, i32 noundef %109, i32 noundef %110, i1 noundef zeroext false, ptr noundef %19, ptr noundef %22), !dbg !1049
  br i1 %111, label %112, label %118, !dbg !1050

112:                                              ; preds = %107
  %113 = load ptr, ptr %13, align 4, !dbg !1051
  %114 = load i32, ptr %17, align 4, !dbg !1053
  %115 = load i32, ptr %14, align 4, !dbg !1054
  call void @set_region(ptr noundef %113, i32 noundef %114, i32 noundef %115, i1 noundef zeroext true, ptr noundef %19), !dbg !1055
  %116 = load i32, ptr %17, align 4, !dbg !1056
  %117 = load ptr, ptr %15, align 4, !dbg !1057
  store i32 %116, ptr %117, align 4, !dbg !1058
  store i32 0, ptr %18, align 4, !dbg !1059
  br label %121, !dbg !1060

118:                                              ; preds = %107
  %119 = load i32, ptr %22, align 4, !dbg !1061
  %120 = add i32 %119, 1, !dbg !1062
  store i32 %120, ptr %17, align 4, !dbg !1063
  br label %103, !dbg !1040, !llvm.loop !1064

121:                                              ; preds = %112, %103
  br label %122, !dbg !1040

122:                                              ; preds = %121, %48, %38
  call void @llvm.dbg.label(metadata !1066), !dbg !1067
  %123 = load ptr, ptr %13, align 4, !dbg !1068
  %124 = getelementptr inbounds %struct.sys_bitarray, ptr %123, i32 0, i32 3, !dbg !1069
  %125 = getelementptr inbounds %struct.z_spinlock_key, ptr %16, i32 0, i32 0, !dbg !1070
  %126 = load [1 x i32], ptr %125, align 4, !dbg !1070
  store [1 x i32] %126, ptr %9, align 4
  store ptr %124, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !501, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %9, metadata !507, metadata !DIExpression()), !dbg !1073
  %127 = load ptr, ptr %10, align 4, !dbg !1074
  %128 = load i32, ptr %9, align 4, !dbg !1075
  store i32 %128, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !1076
  %129 = load i32, ptr %4, align 4, !dbg !1078
  %130 = icmp ne i32 %129, 0, !dbg !1079
  br i1 %130, label %131, label %132, !dbg !1080

131:                                              ; preds = %122
  br label %arch_irq_unlock.exit, !dbg !1081

132:                                              ; preds = %122
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1082, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !1083

arch_irq_unlock.exit:                             ; preds = %131, %132
  %133 = load i32, ptr %18, align 4, !dbg !1084
  ret i32 %133, !dbg !1085
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @match_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5) #0 !dbg !1086 {
  %7 = alloca i32, align 4
  %8 = alloca i1, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1093, metadata !DIExpression()), !dbg !1094
  store i32 %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1095, metadata !DIExpression()), !dbg !1096
  %20 = zext i1 %3 to i8
  store i8 %20, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1097, metadata !DIExpression()), !dbg !1098
  store ptr %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1099, metadata !DIExpression()), !dbg !1100
  store ptr %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1101, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1103, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1109, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1111, metadata !DIExpression()), !dbg !1112
  %21 = load ptr, ptr %9, align 4, !dbg !1113
  %22 = load ptr, ptr %13, align 4, !dbg !1114
  %23 = load i32, ptr %10, align 4, !dbg !1115
  %24 = load i32, ptr %11, align 4, !dbg !1116
  call void @setup_bundle_data(ptr noundef %21, ptr noundef %22, i32 noundef %23, i32 noundef %24), !dbg !1117
  %25 = load ptr, ptr %13, align 4, !dbg !1118
  %26 = getelementptr inbounds %struct.bundle_data, ptr %25, i32 0, i32 0, !dbg !1120
  %27 = load i32, ptr %26, align 4, !dbg !1120
  %28 = load ptr, ptr %13, align 4, !dbg !1121
  %29 = getelementptr inbounds %struct.bundle_data, ptr %28, i32 0, i32 1, !dbg !1122
  %30 = load i32, ptr %29, align 4, !dbg !1122
  %31 = icmp eq i32 %27, %30, !dbg !1123
  br i1 %31, label %32, label %67, !dbg !1124

32:                                               ; preds = %6
  %33 = load ptr, ptr %9, align 4, !dbg !1125
  %34 = getelementptr inbounds %struct.sys_bitarray, ptr %33, i32 0, i32 2, !dbg !1127
  %35 = load ptr, ptr %34, align 4, !dbg !1127
  %36 = load ptr, ptr %13, align 4, !dbg !1128
  %37 = getelementptr inbounds %struct.bundle_data, ptr %36, i32 0, i32 0, !dbg !1129
  %38 = load i32, ptr %37, align 4, !dbg !1129
  %39 = getelementptr inbounds i32, ptr %35, i32 %38, !dbg !1125
  %40 = load i32, ptr %39, align 4, !dbg !1125
  store i32 %40, ptr %16, align 4, !dbg !1130
  %41 = load i8, ptr %12, align 1, !dbg !1131
  %42 = trunc i8 %41 to i1, !dbg !1131
  br i1 %42, label %46, label %43, !dbg !1133

43:                                               ; preds = %32
  %44 = load i32, ptr %16, align 4, !dbg !1134
  %45 = xor i32 %44, -1, !dbg !1136
  store i32 %45, ptr %16, align 4, !dbg !1137
  br label %46, !dbg !1138

46:                                               ; preds = %43, %32
  %47 = load i32, ptr %16, align 4, !dbg !1139
  %48 = load ptr, ptr %13, align 4, !dbg !1141
  %49 = getelementptr inbounds %struct.bundle_data, ptr %48, i32 0, i32 4, !dbg !1142
  %50 = load i32, ptr %49, align 4, !dbg !1142
  %51 = and i32 %47, %50, !dbg !1143
  %52 = load ptr, ptr %13, align 4, !dbg !1144
  %53 = getelementptr inbounds %struct.bundle_data, ptr %52, i32 0, i32 4, !dbg !1145
  %54 = load i32, ptr %53, align 4, !dbg !1145
  %55 = icmp ne i32 %51, %54, !dbg !1146
  br i1 %55, label %56, label %66, !dbg !1147

56:                                               ; preds = %46
  %57 = load i32, ptr %16, align 4, !dbg !1148
  %58 = xor i32 %57, -1, !dbg !1150
  %59 = load ptr, ptr %13, align 4, !dbg !1151
  %60 = getelementptr inbounds %struct.bundle_data, ptr %59, i32 0, i32 4, !dbg !1152
  %61 = load i32, ptr %60, align 4, !dbg !1152
  %62 = and i32 %58, %61, !dbg !1153
  store i32 %62, ptr %17, align 4, !dbg !1154
  %63 = load ptr, ptr %13, align 4, !dbg !1155
  %64 = getelementptr inbounds %struct.bundle_data, ptr %63, i32 0, i32 0, !dbg !1156
  %65 = load i32, ptr %64, align 4, !dbg !1156
  store i32 %65, ptr %18, align 4, !dbg !1157
  br label %170, !dbg !1158

66:                                               ; preds = %46
  br label %169, !dbg !1159

67:                                               ; preds = %6
  %68 = load ptr, ptr %9, align 4, !dbg !1161
  %69 = getelementptr inbounds %struct.sys_bitarray, ptr %68, i32 0, i32 2, !dbg !1162
  %70 = load ptr, ptr %69, align 4, !dbg !1162
  %71 = load ptr, ptr %13, align 4, !dbg !1163
  %72 = getelementptr inbounds %struct.bundle_data, ptr %71, i32 0, i32 0, !dbg !1164
  %73 = load i32, ptr %72, align 4, !dbg !1164
  %74 = getelementptr inbounds i32, ptr %70, i32 %73, !dbg !1161
  %75 = load i32, ptr %74, align 4, !dbg !1161
  store i32 %75, ptr %16, align 4, !dbg !1165
  %76 = load i8, ptr %12, align 1, !dbg !1166
  %77 = trunc i8 %76 to i1, !dbg !1166
  br i1 %77, label %81, label %78, !dbg !1168

78:                                               ; preds = %67
  %79 = load i32, ptr %16, align 4, !dbg !1169
  %80 = xor i32 %79, -1, !dbg !1171
  store i32 %80, ptr %16, align 4, !dbg !1172
  br label %81, !dbg !1173

81:                                               ; preds = %78, %67
  %82 = load i32, ptr %16, align 4, !dbg !1174
  %83 = load ptr, ptr %13, align 4, !dbg !1176
  %84 = getelementptr inbounds %struct.bundle_data, ptr %83, i32 0, i32 4, !dbg !1177
  %85 = load i32, ptr %84, align 4, !dbg !1177
  %86 = and i32 %82, %85, !dbg !1178
  %87 = load ptr, ptr %13, align 4, !dbg !1179
  %88 = getelementptr inbounds %struct.bundle_data, ptr %87, i32 0, i32 4, !dbg !1180
  %89 = load i32, ptr %88, align 4, !dbg !1180
  %90 = icmp ne i32 %86, %89, !dbg !1181
  br i1 %90, label %91, label %101, !dbg !1182

91:                                               ; preds = %81
  %92 = load i32, ptr %16, align 4, !dbg !1183
  %93 = xor i32 %92, -1, !dbg !1185
  %94 = load ptr, ptr %13, align 4, !dbg !1186
  %95 = getelementptr inbounds %struct.bundle_data, ptr %94, i32 0, i32 4, !dbg !1187
  %96 = load i32, ptr %95, align 4, !dbg !1187
  %97 = and i32 %93, %96, !dbg !1188
  store i32 %97, ptr %17, align 4, !dbg !1189
  %98 = load ptr, ptr %13, align 4, !dbg !1190
  %99 = getelementptr inbounds %struct.bundle_data, ptr %98, i32 0, i32 0, !dbg !1191
  %100 = load i32, ptr %99, align 4, !dbg !1191
  store i32 %100, ptr %18, align 4, !dbg !1192
  br label %170, !dbg !1193

101:                                              ; preds = %81
  %102 = load ptr, ptr %9, align 4, !dbg !1194
  %103 = getelementptr inbounds %struct.sys_bitarray, ptr %102, i32 0, i32 2, !dbg !1195
  %104 = load ptr, ptr %103, align 4, !dbg !1195
  %105 = load ptr, ptr %13, align 4, !dbg !1196
  %106 = getelementptr inbounds %struct.bundle_data, ptr %105, i32 0, i32 1, !dbg !1197
  %107 = load i32, ptr %106, align 4, !dbg !1197
  %108 = getelementptr inbounds i32, ptr %104, i32 %107, !dbg !1194
  %109 = load i32, ptr %108, align 4, !dbg !1194
  store i32 %109, ptr %16, align 4, !dbg !1198
  %110 = load i8, ptr %12, align 1, !dbg !1199
  %111 = trunc i8 %110 to i1, !dbg !1199
  br i1 %111, label %115, label %112, !dbg !1201

112:                                              ; preds = %101
  %113 = load i32, ptr %16, align 4, !dbg !1202
  %114 = xor i32 %113, -1, !dbg !1204
  store i32 %114, ptr %16, align 4, !dbg !1205
  br label %115, !dbg !1206

115:                                              ; preds = %112, %101
  %116 = load i32, ptr %16, align 4, !dbg !1207
  %117 = load ptr, ptr %13, align 4, !dbg !1209
  %118 = getelementptr inbounds %struct.bundle_data, ptr %117, i32 0, i32 5, !dbg !1210
  %119 = load i32, ptr %118, align 4, !dbg !1210
  %120 = and i32 %116, %119, !dbg !1211
  %121 = load ptr, ptr %13, align 4, !dbg !1212
  %122 = getelementptr inbounds %struct.bundle_data, ptr %121, i32 0, i32 5, !dbg !1213
  %123 = load i32, ptr %122, align 4, !dbg !1213
  %124 = icmp ne i32 %120, %123, !dbg !1214
  br i1 %124, label %125, label %135, !dbg !1215

125:                                              ; preds = %115
  %126 = load i32, ptr %16, align 4, !dbg !1216
  %127 = xor i32 %126, -1, !dbg !1218
  %128 = load ptr, ptr %13, align 4, !dbg !1219
  %129 = getelementptr inbounds %struct.bundle_data, ptr %128, i32 0, i32 5, !dbg !1220
  %130 = load i32, ptr %129, align 4, !dbg !1220
  %131 = and i32 %127, %130, !dbg !1221
  store i32 %131, ptr %17, align 4, !dbg !1222
  %132 = load ptr, ptr %13, align 4, !dbg !1223
  %133 = getelementptr inbounds %struct.bundle_data, ptr %132, i32 0, i32 1, !dbg !1224
  %134 = load i32, ptr %133, align 4, !dbg !1224
  store i32 %134, ptr %18, align 4, !dbg !1225
  br label %170, !dbg !1226

135:                                              ; preds = %115
  %136 = load ptr, ptr %13, align 4, !dbg !1227
  %137 = getelementptr inbounds %struct.bundle_data, ptr %136, i32 0, i32 0, !dbg !1229
  %138 = load i32, ptr %137, align 4, !dbg !1229
  %139 = add i32 %138, 1, !dbg !1230
  store i32 %139, ptr %15, align 4, !dbg !1231
  br label %140, !dbg !1232

140:                                              ; preds = %165, %135
  %141 = load i32, ptr %15, align 4, !dbg !1233
  %142 = load ptr, ptr %13, align 4, !dbg !1235
  %143 = getelementptr inbounds %struct.bundle_data, ptr %142, i32 0, i32 1, !dbg !1236
  %144 = load i32, ptr %143, align 4, !dbg !1236
  %145 = icmp ult i32 %141, %144, !dbg !1237
  br i1 %145, label %146, label %168, !dbg !1238

146:                                              ; preds = %140
  %147 = load ptr, ptr %9, align 4, !dbg !1239
  %148 = getelementptr inbounds %struct.sys_bitarray, ptr %147, i32 0, i32 2, !dbg !1241
  %149 = load ptr, ptr %148, align 4, !dbg !1241
  %150 = load i32, ptr %15, align 4, !dbg !1242
  %151 = getelementptr inbounds i32, ptr %149, i32 %150, !dbg !1239
  %152 = load i32, ptr %151, align 4, !dbg !1239
  store i32 %152, ptr %16, align 4, !dbg !1243
  %153 = load i8, ptr %12, align 1, !dbg !1244
  %154 = trunc i8 %153 to i1, !dbg !1244
  br i1 %154, label %155, label %158, !dbg !1246

155:                                              ; preds = %146
  %156 = load i32, ptr %16, align 4, !dbg !1247
  %157 = xor i32 %156, -1, !dbg !1249
  store i32 %157, ptr %16, align 4, !dbg !1250
  br label %158, !dbg !1251

158:                                              ; preds = %155, %146
  %159 = load i32, ptr %16, align 4, !dbg !1252
  %160 = icmp ne i32 %159, 0, !dbg !1254
  br i1 %160, label %161, label %164, !dbg !1255

161:                                              ; preds = %158
  %162 = load i32, ptr %16, align 4, !dbg !1256
  store i32 %162, ptr %17, align 4, !dbg !1258
  %163 = load i32, ptr %15, align 4, !dbg !1259
  store i32 %163, ptr %18, align 4, !dbg !1260
  br label %170, !dbg !1261

164:                                              ; preds = %158
  br label %165, !dbg !1262

165:                                              ; preds = %164
  %166 = load i32, ptr %15, align 4, !dbg !1263
  %167 = add i32 %166, 1, !dbg !1263
  store i32 %167, ptr %15, align 4, !dbg !1263
  br label %140, !dbg !1264, !llvm.loop !1265

168:                                              ; preds = %140
  br label %169, !dbg !1266

169:                                              ; preds = %168, %66
  call void @llvm.dbg.label(metadata !1267), !dbg !1268
  store i1 true, ptr %8, align 1, !dbg !1269
  br label %188, !dbg !1269

170:                                              ; preds = %161, %125, %91, %56
  call void @llvm.dbg.label(metadata !1270), !dbg !1271
  %171 = load ptr, ptr %14, align 4, !dbg !1272
  %172 = icmp ne ptr %171, null, !dbg !1274
  br i1 %172, label %173, label %187, !dbg !1275

173:                                              ; preds = %170
  %174 = load i32, ptr %17, align 4, !dbg !1276
  store i32 %174, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1015, metadata !DIExpression()), !dbg !1278
  %175 = load i32, ptr %7, align 4, !dbg !1280
  %176 = call i32 @llvm.cttz.i32(i32 %175, i1 true), !dbg !1281
  %177 = add i32 %176, 1, !dbg !1281
  %178 = icmp eq i32 %175, 0, !dbg !1281
  %179 = select i1 %178, i32 0, i32 %177, !dbg !1281
  %180 = sub i32 %179, 1, !dbg !1282
  store i32 %180, ptr %19, align 4, !dbg !1283
  %181 = load i32, ptr %18, align 4, !dbg !1284
  %182 = mul i32 %181, 32, !dbg !1285
  %183 = load i32, ptr %19, align 4, !dbg !1286
  %184 = add i32 %183, %182, !dbg !1286
  store i32 %184, ptr %19, align 4, !dbg !1286
  %185 = load i32, ptr %19, align 4, !dbg !1287
  %186 = load ptr, ptr %14, align 4, !dbg !1288
  store i32 %185, ptr %186, align 4, !dbg !1289
  br label %187, !dbg !1290

187:                                              ; preds = %173, %170
  store i1 false, ptr %8, align 1, !dbg !1291
  br label %188, !dbg !1291

188:                                              ; preds = %187, %169
  %189 = load i1, ptr %8, align 1, !dbg !1292
  ret i1 %189, !dbg !1292
}

; Function Attrs: noinline nounwind optnone
define internal void @set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) #0 !dbg !1293 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bundle_data, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1296, metadata !DIExpression()), !dbg !1297
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1300, metadata !DIExpression()), !dbg !1301
  %13 = zext i1 %3 to i8
  store i8 %13, ptr %9, align 1
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1302, metadata !DIExpression()), !dbg !1303
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1306, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1308, metadata !DIExpression()), !dbg !1309
  %14 = load ptr, ptr %10, align 4, !dbg !1310
  %15 = icmp eq ptr %14, null, !dbg !1312
  br i1 %15, label %16, label %21, !dbg !1313

16:                                               ; preds = %5
  store ptr %12, ptr %10, align 4, !dbg !1314
  %17 = load ptr, ptr %6, align 4, !dbg !1316
  %18 = load ptr, ptr %10, align 4, !dbg !1317
  %19 = load i32, ptr %7, align 4, !dbg !1318
  %20 = load i32, ptr %8, align 4, !dbg !1319
  call void @setup_bundle_data(ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20), !dbg !1320
  br label %21, !dbg !1321

21:                                               ; preds = %16, %5
  %22 = load ptr, ptr %10, align 4, !dbg !1322
  %23 = getelementptr inbounds %struct.bundle_data, ptr %22, i32 0, i32 0, !dbg !1324
  %24 = load i32, ptr %23, align 4, !dbg !1324
  %25 = load ptr, ptr %10, align 4, !dbg !1325
  %26 = getelementptr inbounds %struct.bundle_data, ptr %25, i32 0, i32 1, !dbg !1326
  %27 = load i32, ptr %26, align 4, !dbg !1326
  %28 = icmp eq i32 %24, %27, !dbg !1327
  br i1 %28, label %29, label %60, !dbg !1328

29:                                               ; preds = %21
  %30 = load i8, ptr %9, align 1, !dbg !1329
  %31 = trunc i8 %30 to i1, !dbg !1329
  br i1 %31, label %32, label %45, !dbg !1332

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 4, !dbg !1333
  %34 = getelementptr inbounds %struct.bundle_data, ptr %33, i32 0, i32 4, !dbg !1335
  %35 = load i32, ptr %34, align 4, !dbg !1335
  %36 = load ptr, ptr %6, align 4, !dbg !1336
  %37 = getelementptr inbounds %struct.sys_bitarray, ptr %36, i32 0, i32 2, !dbg !1337
  %38 = load ptr, ptr %37, align 4, !dbg !1337
  %39 = load ptr, ptr %10, align 4, !dbg !1338
  %40 = getelementptr inbounds %struct.bundle_data, ptr %39, i32 0, i32 0, !dbg !1339
  %41 = load i32, ptr %40, align 4, !dbg !1339
  %42 = getelementptr inbounds i32, ptr %38, i32 %41, !dbg !1336
  %43 = load i32, ptr %42, align 4, !dbg !1340
  %44 = or i32 %43, %35, !dbg !1340
  store i32 %44, ptr %42, align 4, !dbg !1340
  br label %59, !dbg !1341

45:                                               ; preds = %29
  %46 = load ptr, ptr %10, align 4, !dbg !1342
  %47 = getelementptr inbounds %struct.bundle_data, ptr %46, i32 0, i32 4, !dbg !1344
  %48 = load i32, ptr %47, align 4, !dbg !1344
  %49 = xor i32 %48, -1, !dbg !1345
  %50 = load ptr, ptr %6, align 4, !dbg !1346
  %51 = getelementptr inbounds %struct.sys_bitarray, ptr %50, i32 0, i32 2, !dbg !1347
  %52 = load ptr, ptr %51, align 4, !dbg !1347
  %53 = load ptr, ptr %10, align 4, !dbg !1348
  %54 = getelementptr inbounds %struct.bundle_data, ptr %53, i32 0, i32 0, !dbg !1349
  %55 = load i32, ptr %54, align 4, !dbg !1349
  %56 = getelementptr inbounds i32, ptr %52, i32 %55, !dbg !1346
  %57 = load i32, ptr %56, align 4, !dbg !1350
  %58 = and i32 %57, %49, !dbg !1350
  store i32 %58, ptr %56, align 4, !dbg !1350
  br label %59

59:                                               ; preds = %45, %32
  br label %156, !dbg !1351

60:                                               ; preds = %21
  %61 = load i8, ptr %9, align 1, !dbg !1352
  %62 = trunc i8 %61 to i1, !dbg !1352
  br i1 %62, label %63, label %108, !dbg !1355

63:                                               ; preds = %60
  %64 = load ptr, ptr %10, align 4, !dbg !1356
  %65 = getelementptr inbounds %struct.bundle_data, ptr %64, i32 0, i32 4, !dbg !1358
  %66 = load i32, ptr %65, align 4, !dbg !1358
  %67 = load ptr, ptr %6, align 4, !dbg !1359
  %68 = getelementptr inbounds %struct.sys_bitarray, ptr %67, i32 0, i32 2, !dbg !1360
  %69 = load ptr, ptr %68, align 4, !dbg !1360
  %70 = load ptr, ptr %10, align 4, !dbg !1361
  %71 = getelementptr inbounds %struct.bundle_data, ptr %70, i32 0, i32 0, !dbg !1362
  %72 = load i32, ptr %71, align 4, !dbg !1362
  %73 = getelementptr inbounds i32, ptr %69, i32 %72, !dbg !1359
  %74 = load i32, ptr %73, align 4, !dbg !1363
  %75 = or i32 %74, %66, !dbg !1363
  store i32 %75, ptr %73, align 4, !dbg !1363
  %76 = load ptr, ptr %10, align 4, !dbg !1364
  %77 = getelementptr inbounds %struct.bundle_data, ptr %76, i32 0, i32 5, !dbg !1365
  %78 = load i32, ptr %77, align 4, !dbg !1365
  %79 = load ptr, ptr %6, align 4, !dbg !1366
  %80 = getelementptr inbounds %struct.sys_bitarray, ptr %79, i32 0, i32 2, !dbg !1367
  %81 = load ptr, ptr %80, align 4, !dbg !1367
  %82 = load ptr, ptr %10, align 4, !dbg !1368
  %83 = getelementptr inbounds %struct.bundle_data, ptr %82, i32 0, i32 1, !dbg !1369
  %84 = load i32, ptr %83, align 4, !dbg !1369
  %85 = getelementptr inbounds i32, ptr %81, i32 %84, !dbg !1366
  %86 = load i32, ptr %85, align 4, !dbg !1370
  %87 = or i32 %86, %78, !dbg !1370
  store i32 %87, ptr %85, align 4, !dbg !1370
  %88 = load ptr, ptr %10, align 4, !dbg !1371
  %89 = getelementptr inbounds %struct.bundle_data, ptr %88, i32 0, i32 0, !dbg !1373
  %90 = load i32, ptr %89, align 4, !dbg !1373
  %91 = add i32 %90, 1, !dbg !1374
  store i32 %91, ptr %11, align 4, !dbg !1375
  br label %92, !dbg !1376

92:                                               ; preds = %104, %63
  %93 = load i32, ptr %11, align 4, !dbg !1377
  %94 = load ptr, ptr %10, align 4, !dbg !1379
  %95 = getelementptr inbounds %struct.bundle_data, ptr %94, i32 0, i32 1, !dbg !1380
  %96 = load i32, ptr %95, align 4, !dbg !1380
  %97 = icmp ult i32 %93, %96, !dbg !1381
  br i1 %97, label %98, label %107, !dbg !1382

98:                                               ; preds = %92
  %99 = load ptr, ptr %6, align 4, !dbg !1383
  %100 = getelementptr inbounds %struct.sys_bitarray, ptr %99, i32 0, i32 2, !dbg !1385
  %101 = load ptr, ptr %100, align 4, !dbg !1385
  %102 = load i32, ptr %11, align 4, !dbg !1386
  %103 = getelementptr inbounds i32, ptr %101, i32 %102, !dbg !1383
  store i32 -1, ptr %103, align 4, !dbg !1387
  br label %104, !dbg !1388

104:                                              ; preds = %98
  %105 = load i32, ptr %11, align 4, !dbg !1389
  %106 = add i32 %105, 1, !dbg !1389
  store i32 %106, ptr %11, align 4, !dbg !1389
  br label %92, !dbg !1390, !llvm.loop !1391

107:                                              ; preds = %92
  br label %155, !dbg !1393

108:                                              ; preds = %60
  %109 = load ptr, ptr %10, align 4, !dbg !1394
  %110 = getelementptr inbounds %struct.bundle_data, ptr %109, i32 0, i32 4, !dbg !1396
  %111 = load i32, ptr %110, align 4, !dbg !1396
  %112 = xor i32 %111, -1, !dbg !1397
  %113 = load ptr, ptr %6, align 4, !dbg !1398
  %114 = getelementptr inbounds %struct.sys_bitarray, ptr %113, i32 0, i32 2, !dbg !1399
  %115 = load ptr, ptr %114, align 4, !dbg !1399
  %116 = load ptr, ptr %10, align 4, !dbg !1400
  %117 = getelementptr inbounds %struct.bundle_data, ptr %116, i32 0, i32 0, !dbg !1401
  %118 = load i32, ptr %117, align 4, !dbg !1401
  %119 = getelementptr inbounds i32, ptr %115, i32 %118, !dbg !1398
  %120 = load i32, ptr %119, align 4, !dbg !1402
  %121 = and i32 %120, %112, !dbg !1402
  store i32 %121, ptr %119, align 4, !dbg !1402
  %122 = load ptr, ptr %10, align 4, !dbg !1403
  %123 = getelementptr inbounds %struct.bundle_data, ptr %122, i32 0, i32 5, !dbg !1404
  %124 = load i32, ptr %123, align 4, !dbg !1404
  %125 = xor i32 %124, -1, !dbg !1405
  %126 = load ptr, ptr %6, align 4, !dbg !1406
  %127 = getelementptr inbounds %struct.sys_bitarray, ptr %126, i32 0, i32 2, !dbg !1407
  %128 = load ptr, ptr %127, align 4, !dbg !1407
  %129 = load ptr, ptr %10, align 4, !dbg !1408
  %130 = getelementptr inbounds %struct.bundle_data, ptr %129, i32 0, i32 1, !dbg !1409
  %131 = load i32, ptr %130, align 4, !dbg !1409
  %132 = getelementptr inbounds i32, ptr %128, i32 %131, !dbg !1406
  %133 = load i32, ptr %132, align 4, !dbg !1410
  %134 = and i32 %133, %125, !dbg !1410
  store i32 %134, ptr %132, align 4, !dbg !1410
  %135 = load ptr, ptr %10, align 4, !dbg !1411
  %136 = getelementptr inbounds %struct.bundle_data, ptr %135, i32 0, i32 0, !dbg !1413
  %137 = load i32, ptr %136, align 4, !dbg !1413
  %138 = add i32 %137, 1, !dbg !1414
  store i32 %138, ptr %11, align 4, !dbg !1415
  br label %139, !dbg !1416

139:                                              ; preds = %151, %108
  %140 = load i32, ptr %11, align 4, !dbg !1417
  %141 = load ptr, ptr %10, align 4, !dbg !1419
  %142 = getelementptr inbounds %struct.bundle_data, ptr %141, i32 0, i32 1, !dbg !1420
  %143 = load i32, ptr %142, align 4, !dbg !1420
  %144 = icmp ult i32 %140, %143, !dbg !1421
  br i1 %144, label %145, label %154, !dbg !1422

145:                                              ; preds = %139
  %146 = load ptr, ptr %6, align 4, !dbg !1423
  %147 = getelementptr inbounds %struct.sys_bitarray, ptr %146, i32 0, i32 2, !dbg !1425
  %148 = load ptr, ptr %147, align 4, !dbg !1425
  %149 = load i32, ptr %11, align 4, !dbg !1426
  %150 = getelementptr inbounds i32, ptr %148, i32 %149, !dbg !1423
  store i32 0, ptr %150, align 4, !dbg !1427
  br label %151, !dbg !1428

151:                                              ; preds = %145
  %152 = load i32, ptr %11, align 4, !dbg !1429
  %153 = add i32 %152, 1, !dbg !1429
  store i32 %153, ptr %11, align 4, !dbg !1429
  br label %139, !dbg !1430, !llvm.loop !1431

154:                                              ; preds = %139
  br label %155

155:                                              ; preds = %154, %107
  br label %156

156:                                              ; preds = %155, %59
  ret void, !dbg !1433
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_free(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1434 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z_spinlock_key, align 4
  %9 = alloca ptr, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.z_spinlock_key, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bundle_data, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1437, metadata !DIExpression()), !dbg !1438
  store i32 %1, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1439, metadata !DIExpression()), !dbg !1440
  store i32 %2, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1441, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1443, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1447, metadata !DIExpression()), !dbg !1448
  %20 = load i32, ptr %14, align 4, !dbg !1449
  %21 = load i32, ptr %13, align 4, !dbg !1450
  %22 = add i32 %20, %21, !dbg !1451
  %23 = sub i32 %22, 1, !dbg !1452
  store i32 %23, ptr %17, align 4, !dbg !1448
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1453, metadata !DIExpression()), !dbg !1454
  %24 = load ptr, ptr %12, align 4, !dbg !1455
  %25 = getelementptr inbounds %struct.sys_bitarray, ptr %24, i32 0, i32 3, !dbg !1456
  store ptr %25, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !436, metadata !DIExpression()), !dbg !1457
  %26 = load ptr, ptr %11, align 4, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %10, metadata !444, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.declare(metadata ptr %7, metadata !446, metadata !DIExpression()), !dbg !1461
  %27 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1463, !srcloc !454
  store i32 %27, ptr %7, align 4, !dbg !1463
  %28 = load i32, ptr %7, align 4, !dbg !1464
  store i32 %28, ptr %10, align 4, !dbg !1465
  %29 = load ptr, ptr %11, align 4, !dbg !1466
  store ptr %29, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !458, metadata !DIExpression()), !dbg !1467
  %30 = load ptr, ptr %6, align 4, !dbg !1469
  %31 = load ptr, ptr %11, align 4, !dbg !1470
  store ptr %31, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !466, metadata !DIExpression()), !dbg !1471
  %32 = load ptr, ptr %5, align 4, !dbg !1473
  %33 = load i32, ptr %10, align 4, !dbg !1474
  %34 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1475
  store i32 %33, ptr %34, align 4, !dbg !1475
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %15, ptr align 4 %19, i32 4, i1 false), !dbg !1475
  %35 = load i32, ptr %13, align 4, !dbg !1476
  %36 = icmp eq i32 %35, 0, !dbg !1478
  br i1 %36, label %55, label %37, !dbg !1479

37:                                               ; preds = %3
  %38 = load i32, ptr %13, align 4, !dbg !1480
  %39 = load ptr, ptr %12, align 4, !dbg !1481
  %40 = getelementptr inbounds %struct.sys_bitarray, ptr %39, i32 0, i32 0, !dbg !1482
  %41 = load i32, ptr %40, align 4, !dbg !1482
  %42 = icmp ugt i32 %38, %41, !dbg !1483
  br i1 %42, label %55, label %43, !dbg !1484

43:                                               ; preds = %37
  %44 = load i32, ptr %14, align 4, !dbg !1485
  %45 = load ptr, ptr %12, align 4, !dbg !1486
  %46 = getelementptr inbounds %struct.sys_bitarray, ptr %45, i32 0, i32 0, !dbg !1487
  %47 = load i32, ptr %46, align 4, !dbg !1487
  %48 = icmp uge i32 %44, %47, !dbg !1488
  br i1 %48, label %55, label %49, !dbg !1489

49:                                               ; preds = %43
  %50 = load i32, ptr %17, align 4, !dbg !1490
  %51 = load ptr, ptr %12, align 4, !dbg !1491
  %52 = getelementptr inbounds %struct.sys_bitarray, ptr %51, i32 0, i32 0, !dbg !1492
  %53 = load i32, ptr %52, align 4, !dbg !1492
  %54 = icmp uge i32 %50, %53, !dbg !1493
  br i1 %54, label %55, label %56, !dbg !1494

55:                                               ; preds = %49, %43, %37, %3
  store i32 -5, ptr %16, align 4, !dbg !1495
  br label %67, !dbg !1497

56:                                               ; preds = %49
  %57 = load ptr, ptr %12, align 4, !dbg !1498
  %58 = load i32, ptr %14, align 4, !dbg !1500
  %59 = load i32, ptr %13, align 4, !dbg !1501
  %60 = call zeroext i1 @match_region(ptr noundef %57, i32 noundef %58, i32 noundef %59, i1 noundef zeroext true, ptr noundef %18, ptr noundef null), !dbg !1502
  br i1 %60, label %61, label %65, !dbg !1503

61:                                               ; preds = %56
  %62 = load ptr, ptr %12, align 4, !dbg !1504
  %63 = load i32, ptr %14, align 4, !dbg !1506
  %64 = load i32, ptr %13, align 4, !dbg !1507
  call void @set_region(ptr noundef %62, i32 noundef %63, i32 noundef %64, i1 noundef zeroext false, ptr noundef %18), !dbg !1508
  store i32 0, ptr %16, align 4, !dbg !1509
  br label %66, !dbg !1510

65:                                               ; preds = %56
  store i32 -14, ptr %16, align 4, !dbg !1511
  br label %66

66:                                               ; preds = %65, %61
  br label %67, !dbg !1513

67:                                               ; preds = %66, %55
  call void @llvm.dbg.label(metadata !1514), !dbg !1515
  %68 = load ptr, ptr %12, align 4, !dbg !1516
  %69 = getelementptr inbounds %struct.sys_bitarray, ptr %68, i32 0, i32 3, !dbg !1517
  %70 = getelementptr inbounds %struct.z_spinlock_key, ptr %15, i32 0, i32 0, !dbg !1518
  %71 = load [1 x i32], ptr %70, align 4, !dbg !1518
  store [1 x i32] %71, ptr %8, align 4
  store ptr %69, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.declare(metadata ptr %8, metadata !507, metadata !DIExpression()), !dbg !1521
  %72 = load ptr, ptr %9, align 4, !dbg !1522
  %73 = load i32, ptr %8, align 4, !dbg !1523
  store i32 %73, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !511, metadata !DIExpression()), !dbg !1524
  %74 = load i32, ptr %4, align 4, !dbg !1526
  %75 = icmp ne i32 %74, 0, !dbg !1527
  br i1 %75, label %76, label %77, !dbg !1528

76:                                               ; preds = %67
  br label %arch_irq_unlock.exit, !dbg !1529

77:                                               ; preds = %67
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1530, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !1531

arch_irq_unlock.exit:                             ; preds = %76, %77
  %78 = load i32, ptr %16, align 4, !dbg !1532
  ret i32 %78, !dbg !1533
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @sys_bitarray_is_region_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1534 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !1538
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1539, metadata !DIExpression()), !dbg !1540
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1541, metadata !DIExpression()), !dbg !1542
  %7 = load ptr, ptr %4, align 4, !dbg !1543
  %8 = load i32, ptr %5, align 4, !dbg !1544
  %9 = load i32, ptr %6, align 4, !dbg !1545
  %10 = call zeroext i1 @is_region_set_clear(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext true), !dbg !1546
  ret i1 %10, !dbg !1547
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @is_region_set_clear(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 !dbg !1548 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.bundle_data, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1553, metadata !DIExpression()), !dbg !1554
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1555, metadata !DIExpression()), !dbg !1556
  %21 = zext i1 %3 to i8
  store i8 %21, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1557, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1559, metadata !DIExpression()), !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1561, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1563, metadata !DIExpression()), !dbg !1564
  %22 = load i32, ptr %15, align 4, !dbg !1565
  %23 = load i32, ptr %14, align 4, !dbg !1566
  %24 = add i32 %22, %23, !dbg !1567
  %25 = sub i32 %24, 1, !dbg !1568
  store i32 %25, ptr %19, align 4, !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1569, metadata !DIExpression()), !dbg !1570
  %26 = load ptr, ptr %13, align 4, !dbg !1571
  %27 = getelementptr inbounds %struct.sys_bitarray, ptr %26, i32 0, i32 3, !dbg !1572
  store ptr %27, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !436, metadata !DIExpression()), !dbg !1573
  %28 = load ptr, ptr %12, align 4, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %11, metadata !444, metadata !DIExpression()), !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %8, metadata !446, metadata !DIExpression()), !dbg !1577
  %29 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1579, !srcloc !454
  store i32 %29, ptr %8, align 4, !dbg !1579
  %30 = load i32, ptr %8, align 4, !dbg !1580
  store i32 %30, ptr %11, align 4, !dbg !1581
  %31 = load ptr, ptr %12, align 4, !dbg !1582
  store ptr %31, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !458, metadata !DIExpression()), !dbg !1583
  %32 = load ptr, ptr %7, align 4, !dbg !1585
  %33 = load ptr, ptr %12, align 4, !dbg !1586
  store ptr %33, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !466, metadata !DIExpression()), !dbg !1587
  %34 = load ptr, ptr %6, align 4, !dbg !1589
  %35 = load i32, ptr %11, align 4, !dbg !1590
  %36 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1591
  store i32 %35, ptr %36, align 4, !dbg !1591
  %37 = load i32, ptr %14, align 4, !dbg !1592
  %38 = icmp eq i32 %37, 0, !dbg !1594
  br i1 %38, label %57, label %39, !dbg !1595

39:                                               ; preds = %4
  %40 = load i32, ptr %14, align 4, !dbg !1596
  %41 = load ptr, ptr %13, align 4, !dbg !1597
  %42 = getelementptr inbounds %struct.sys_bitarray, ptr %41, i32 0, i32 0, !dbg !1598
  %43 = load i32, ptr %42, align 4, !dbg !1598
  %44 = icmp ugt i32 %40, %43, !dbg !1599
  br i1 %44, label %57, label %45, !dbg !1600

45:                                               ; preds = %39
  %46 = load i32, ptr %15, align 4, !dbg !1601
  %47 = load ptr, ptr %13, align 4, !dbg !1602
  %48 = getelementptr inbounds %struct.sys_bitarray, ptr %47, i32 0, i32 0, !dbg !1603
  %49 = load i32, ptr %48, align 4, !dbg !1603
  %50 = icmp uge i32 %46, %49, !dbg !1604
  br i1 %50, label %57, label %51, !dbg !1605

51:                                               ; preds = %45
  %52 = load i32, ptr %19, align 4, !dbg !1606
  %53 = load ptr, ptr %13, align 4, !dbg !1607
  %54 = getelementptr inbounds %struct.sys_bitarray, ptr %53, i32 0, i32 0, !dbg !1608
  %55 = load i32, ptr %54, align 4, !dbg !1608
  %56 = icmp uge i32 %52, %55, !dbg !1609
  br i1 %56, label %57, label %58, !dbg !1610

57:                                               ; preds = %51, %45, %39, %4
  store i8 0, ptr %17, align 1, !dbg !1611
  br label %66, !dbg !1613

58:                                               ; preds = %51
  %59 = load ptr, ptr %13, align 4, !dbg !1614
  %60 = load i32, ptr %15, align 4, !dbg !1615
  %61 = load i32, ptr %14, align 4, !dbg !1616
  %62 = load i8, ptr %16, align 1, !dbg !1617
  %63 = trunc i8 %62 to i1, !dbg !1617
  %64 = call zeroext i1 @match_region(ptr noundef %59, i32 noundef %60, i32 noundef %61, i1 noundef zeroext %63, ptr noundef %18, ptr noundef null), !dbg !1618
  %65 = zext i1 %64 to i8, !dbg !1619
  store i8 %65, ptr %17, align 1, !dbg !1619
  br label %66, !dbg !1620

66:                                               ; preds = %58, %57
  call void @llvm.dbg.label(metadata !1621), !dbg !1622
  %67 = load ptr, ptr %13, align 4, !dbg !1623
  %68 = getelementptr inbounds %struct.sys_bitarray, ptr %67, i32 0, i32 3, !dbg !1624
  %69 = getelementptr inbounds %struct.z_spinlock_key, ptr %20, i32 0, i32 0, !dbg !1625
  %70 = load [1 x i32], ptr %69, align 4, !dbg !1625
  store [1 x i32] %70, ptr %9, align 4
  store ptr %68, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !501, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %9, metadata !507, metadata !DIExpression()), !dbg !1628
  %71 = load ptr, ptr %10, align 4, !dbg !1629
  %72 = load i32, ptr %9, align 4, !dbg !1630
  store i32 %72, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !511, metadata !DIExpression()), !dbg !1631
  %73 = load i32, ptr %5, align 4, !dbg !1633
  %74 = icmp ne i32 %73, 0, !dbg !1634
  br i1 %74, label %75, label %76, !dbg !1635

75:                                               ; preds = %66
  br label %arch_irq_unlock.exit, !dbg !1636

76:                                               ; preds = %66
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1637, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !1638

arch_irq_unlock.exit:                             ; preds = %75, %76
  %77 = load i8, ptr %17, align 1, !dbg !1639
  %78 = trunc i8 %77 to i1, !dbg !1639
  ret i1 %78, !dbg !1640
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @sys_bitarray_is_region_cleared(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1641 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1642, metadata !DIExpression()), !dbg !1643
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1646, metadata !DIExpression()), !dbg !1647
  %7 = load ptr, ptr %4, align 4, !dbg !1648
  %8 = load i32, ptr %5, align 4, !dbg !1649
  %9 = load i32, ptr %6, align 4, !dbg !1650
  %10 = call zeroext i1 @is_region_set_clear(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext false), !dbg !1651
  ret i1 %10, !dbg !1652
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_test_and_set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 !dbg !1653 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca %struct.bundle_data, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1656, metadata !DIExpression()), !dbg !1657
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1658, metadata !DIExpression()), !dbg !1659
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1660, metadata !DIExpression()), !dbg !1661
  %22 = zext i1 %3 to i8
  store i8 %22, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1662, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1664, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1666, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1668, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1670, metadata !DIExpression()), !dbg !1671
  %23 = load i32, ptr %15, align 4, !dbg !1672
  %24 = load i32, ptr %14, align 4, !dbg !1673
  %25 = add i32 %23, %24, !dbg !1674
  %26 = sub i32 %25, 1, !dbg !1675
  store i32 %26, ptr %20, align 4, !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1676, metadata !DIExpression()), !dbg !1677
  %27 = load ptr, ptr %13, align 4, !dbg !1678
  %28 = getelementptr inbounds %struct.sys_bitarray, ptr %27, i32 0, i32 3, !dbg !1679
  store ptr %28, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !436, metadata !DIExpression()), !dbg !1680
  %29 = load ptr, ptr %12, align 4, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %11, metadata !444, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.declare(metadata ptr %8, metadata !446, metadata !DIExpression()), !dbg !1684
  %30 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1686, !srcloc !454
  store i32 %30, ptr %8, align 4, !dbg !1686
  %31 = load i32, ptr %8, align 4, !dbg !1687
  store i32 %31, ptr %11, align 4, !dbg !1688
  %32 = load ptr, ptr %12, align 4, !dbg !1689
  store ptr %32, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !458, metadata !DIExpression()), !dbg !1690
  %33 = load ptr, ptr %7, align 4, !dbg !1692
  %34 = load ptr, ptr %12, align 4, !dbg !1693
  store ptr %34, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !466, metadata !DIExpression()), !dbg !1694
  %35 = load ptr, ptr %6, align 4, !dbg !1696
  %36 = load i32, ptr %11, align 4, !dbg !1697
  %37 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !1698
  store i32 %36, ptr %37, align 4, !dbg !1698
  %38 = load i32, ptr %14, align 4, !dbg !1699
  %39 = icmp eq i32 %38, 0, !dbg !1701
  br i1 %39, label %58, label %40, !dbg !1702

40:                                               ; preds = %4
  %41 = load i32, ptr %14, align 4, !dbg !1703
  %42 = load ptr, ptr %13, align 4, !dbg !1704
  %43 = getelementptr inbounds %struct.sys_bitarray, ptr %42, i32 0, i32 0, !dbg !1705
  %44 = load i32, ptr %43, align 4, !dbg !1705
  %45 = icmp ugt i32 %41, %44, !dbg !1706
  br i1 %45, label %58, label %46, !dbg !1707

46:                                               ; preds = %40
  %47 = load i32, ptr %15, align 4, !dbg !1708
  %48 = load ptr, ptr %13, align 4, !dbg !1709
  %49 = getelementptr inbounds %struct.sys_bitarray, ptr %48, i32 0, i32 0, !dbg !1710
  %50 = load i32, ptr %49, align 4, !dbg !1710
  %51 = icmp uge i32 %47, %50, !dbg !1711
  br i1 %51, label %58, label %52, !dbg !1712

52:                                               ; preds = %46
  %53 = load i32, ptr %20, align 4, !dbg !1713
  %54 = load ptr, ptr %13, align 4, !dbg !1714
  %55 = getelementptr inbounds %struct.sys_bitarray, ptr %54, i32 0, i32 0, !dbg !1715
  %56 = load i32, ptr %55, align 4, !dbg !1715
  %57 = icmp uge i32 %53, %56, !dbg !1716
  br i1 %57, label %58, label %59, !dbg !1717

58:                                               ; preds = %52, %46, %40, %4
  store i32 -5, ptr %17, align 4, !dbg !1718
  br label %78, !dbg !1720

59:                                               ; preds = %52
  %60 = load ptr, ptr %13, align 4, !dbg !1721
  %61 = load i32, ptr %15, align 4, !dbg !1722
  %62 = load i32, ptr %14, align 4, !dbg !1723
  %63 = load i8, ptr %16, align 1, !dbg !1724
  %64 = trunc i8 %63 to i1, !dbg !1724
  %65 = xor i1 %64, true, !dbg !1725
  %66 = call zeroext i1 @match_region(ptr noundef %60, i32 noundef %61, i32 noundef %62, i1 noundef zeroext %65, ptr noundef %19, ptr noundef null), !dbg !1726
  %67 = zext i1 %66 to i8, !dbg !1727
  store i8 %67, ptr %18, align 1, !dbg !1727
  %68 = load i8, ptr %18, align 1, !dbg !1728
  %69 = trunc i8 %68 to i1, !dbg !1728
  br i1 %69, label %70, label %76, !dbg !1730

70:                                               ; preds = %59
  %71 = load ptr, ptr %13, align 4, !dbg !1731
  %72 = load i32, ptr %15, align 4, !dbg !1733
  %73 = load i32, ptr %14, align 4, !dbg !1734
  %74 = load i8, ptr %16, align 1, !dbg !1735
  %75 = trunc i8 %74 to i1, !dbg !1735
  call void @set_region(ptr noundef %71, i32 noundef %72, i32 noundef %73, i1 noundef zeroext %75, ptr noundef %19), !dbg !1736
  store i32 0, ptr %17, align 4, !dbg !1737
  br label %77, !dbg !1738

76:                                               ; preds = %59
  store i32 -17, ptr %17, align 4, !dbg !1739
  br label %77

77:                                               ; preds = %76, %70
  br label %78, !dbg !1728

78:                                               ; preds = %77, %58
  call void @llvm.dbg.label(metadata !1741), !dbg !1742
  %79 = load ptr, ptr %13, align 4, !dbg !1743
  %80 = getelementptr inbounds %struct.sys_bitarray, ptr %79, i32 0, i32 3, !dbg !1744
  %81 = getelementptr inbounds %struct.z_spinlock_key, ptr %21, i32 0, i32 0, !dbg !1745
  %82 = load [1 x i32], ptr %81, align 4, !dbg !1745
  store [1 x i32] %82, ptr %9, align 4
  store ptr %80, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !501, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.declare(metadata ptr %9, metadata !507, metadata !DIExpression()), !dbg !1748
  %83 = load ptr, ptr %10, align 4, !dbg !1749
  %84 = load i32, ptr %9, align 4, !dbg !1750
  store i32 %84, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !511, metadata !DIExpression()), !dbg !1751
  %85 = load i32, ptr %5, align 4, !dbg !1753
  %86 = icmp ne i32 %85, 0, !dbg !1754
  br i1 %86, label %87, label %88, !dbg !1755

87:                                               ; preds = %78
  br label %arch_irq_unlock.exit, !dbg !1756

88:                                               ; preds = %78
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1757, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !1758

arch_irq_unlock.exit:                             ; preds = %87, %88
  %89 = load i32, ptr %17, align 4, !dbg !1759
  ret i32 %89, !dbg !1760
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_set_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1761 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1762, metadata !DIExpression()), !dbg !1763
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1764, metadata !DIExpression()), !dbg !1765
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1766, metadata !DIExpression()), !dbg !1767
  %7 = load ptr, ptr %4, align 4, !dbg !1768
  %8 = load i32, ptr %5, align 4, !dbg !1769
  %9 = load i32, ptr %6, align 4, !dbg !1770
  %10 = call i32 @set_clear_region(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext true), !dbg !1771
  ret i32 %10, !dbg !1772
}

; Function Attrs: noinline nounwind optnone
define internal i32 @set_clear_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 !dbg !1773 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1774, metadata !DIExpression()), !dbg !1775
  store i32 %1, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1776, metadata !DIExpression()), !dbg !1777
  store i32 %2, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1778, metadata !DIExpression()), !dbg !1779
  %20 = zext i1 %3 to i8
  store i8 %20, ptr %16, align 1
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1784, metadata !DIExpression()), !dbg !1785
  %21 = load i32, ptr %15, align 4, !dbg !1786
  %22 = load i32, ptr %14, align 4, !dbg !1787
  %23 = add i32 %21, %22, !dbg !1788
  %24 = sub i32 %23, 1, !dbg !1789
  store i32 %24, ptr %18, align 4, !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1790, metadata !DIExpression()), !dbg !1791
  %25 = load ptr, ptr %13, align 4, !dbg !1792
  %26 = getelementptr inbounds %struct.sys_bitarray, ptr %25, i32 0, i32 3, !dbg !1793
  store ptr %26, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !436, metadata !DIExpression()), !dbg !1794
  %27 = load ptr, ptr %12, align 4, !dbg !1796
  call void @llvm.dbg.declare(metadata ptr %11, metadata !444, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.declare(metadata ptr %8, metadata !446, metadata !DIExpression()), !dbg !1798
  %28 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !1800, !srcloc !454
  store i32 %28, ptr %8, align 4, !dbg !1800
  %29 = load i32, ptr %8, align 4, !dbg !1801
  store i32 %29, ptr %11, align 4, !dbg !1802
  %30 = load ptr, ptr %12, align 4, !dbg !1803
  store ptr %30, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !458, metadata !DIExpression()), !dbg !1804
  %31 = load ptr, ptr %7, align 4, !dbg !1806
  %32 = load ptr, ptr %12, align 4, !dbg !1807
  store ptr %32, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !466, metadata !DIExpression()), !dbg !1808
  %33 = load ptr, ptr %6, align 4, !dbg !1810
  %34 = load i32, ptr %11, align 4, !dbg !1811
  %35 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1812
  store i32 %34, ptr %35, align 4, !dbg !1812
  %36 = load i32, ptr %14, align 4, !dbg !1813
  %37 = icmp eq i32 %36, 0, !dbg !1815
  br i1 %37, label %56, label %38, !dbg !1816

38:                                               ; preds = %4
  %39 = load i32, ptr %14, align 4, !dbg !1817
  %40 = load ptr, ptr %13, align 4, !dbg !1818
  %41 = getelementptr inbounds %struct.sys_bitarray, ptr %40, i32 0, i32 0, !dbg !1819
  %42 = load i32, ptr %41, align 4, !dbg !1819
  %43 = icmp ugt i32 %39, %42, !dbg !1820
  br i1 %43, label %56, label %44, !dbg !1821

44:                                               ; preds = %38
  %45 = load i32, ptr %15, align 4, !dbg !1822
  %46 = load ptr, ptr %13, align 4, !dbg !1823
  %47 = getelementptr inbounds %struct.sys_bitarray, ptr %46, i32 0, i32 0, !dbg !1824
  %48 = load i32, ptr %47, align 4, !dbg !1824
  %49 = icmp uge i32 %45, %48, !dbg !1825
  br i1 %49, label %56, label %50, !dbg !1826

50:                                               ; preds = %44
  %51 = load i32, ptr %18, align 4, !dbg !1827
  %52 = load ptr, ptr %13, align 4, !dbg !1828
  %53 = getelementptr inbounds %struct.sys_bitarray, ptr %52, i32 0, i32 0, !dbg !1829
  %54 = load i32, ptr %53, align 4, !dbg !1829
  %55 = icmp uge i32 %51, %54, !dbg !1830
  br i1 %55, label %56, label %57, !dbg !1831

56:                                               ; preds = %50, %44, %38, %4
  store i32 -5, ptr %17, align 4, !dbg !1832
  br label %63, !dbg !1834

57:                                               ; preds = %50
  %58 = load ptr, ptr %13, align 4, !dbg !1835
  %59 = load i32, ptr %15, align 4, !dbg !1836
  %60 = load i32, ptr %14, align 4, !dbg !1837
  %61 = load i8, ptr %16, align 1, !dbg !1838
  %62 = trunc i8 %61 to i1, !dbg !1838
  call void @set_region(ptr noundef %58, i32 noundef %59, i32 noundef %60, i1 noundef zeroext %62, ptr noundef null), !dbg !1839
  store i32 0, ptr %17, align 4, !dbg !1840
  br label %63, !dbg !1841

63:                                               ; preds = %57, %56
  call void @llvm.dbg.label(metadata !1842), !dbg !1843
  %64 = load ptr, ptr %13, align 4, !dbg !1844
  %65 = getelementptr inbounds %struct.sys_bitarray, ptr %64, i32 0, i32 3, !dbg !1845
  %66 = getelementptr inbounds %struct.z_spinlock_key, ptr %19, i32 0, i32 0, !dbg !1846
  %67 = load [1 x i32], ptr %66, align 4, !dbg !1846
  store [1 x i32] %67, ptr %9, align 4
  store ptr %65, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !501, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.declare(metadata ptr %9, metadata !507, metadata !DIExpression()), !dbg !1849
  %68 = load ptr, ptr %10, align 4, !dbg !1850
  %69 = load i32, ptr %9, align 4, !dbg !1851
  store i32 %69, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !511, metadata !DIExpression()), !dbg !1852
  %70 = load i32, ptr %5, align 4, !dbg !1854
  %71 = icmp ne i32 %70, 0, !dbg !1855
  br i1 %71, label %72, label %73, !dbg !1856

72:                                               ; preds = %63
  br label %arch_irq_unlock.exit, !dbg !1857

73:                                               ; preds = %63
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !1858, !srcloc !524
  br label %arch_irq_unlock.exit, !dbg !1859

arch_irq_unlock.exit:                             ; preds = %72, %73
  %74 = load i32, ptr %17, align 4, !dbg !1860
  ret i32 %74, !dbg !1861
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_bitarray_clear_region(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1862 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1863, metadata !DIExpression()), !dbg !1864
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1865, metadata !DIExpression()), !dbg !1866
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1867, metadata !DIExpression()), !dbg !1868
  %7 = load ptr, ptr %4, align 4, !dbg !1869
  %8 = load i32, ptr %5, align 4, !dbg !1870
  %9 = load i32, ptr %6, align 4, !dbg !1871
  %10 = call i32 @set_clear_region(ptr noundef %7, i32 noundef %8, i32 noundef %9, i1 noundef zeroext false), !dbg !1872
  ret i32 %10, !dbg !1873
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !1874 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1878, metadata !DIExpression()), !dbg !1879
  %3 = load ptr, ptr %2, align 4, !dbg !1880
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !1881
  %5 = icmp eq ptr %4, null, !dbg !1882
  ret i1 %5, !dbg !1883
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !1884 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1887, metadata !DIExpression()), !dbg !1888
  %3 = load ptr, ptr %2, align 4, !dbg !1889
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !1890
  %5 = load ptr, ptr %4, align 4, !dbg !1890
  ret ptr %5, !dbg !1891
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noinline nounwind optnone
define internal void @setup_bundle_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !1892 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1895, metadata !DIExpression()), !dbg !1896
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1897, metadata !DIExpression()), !dbg !1898
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1899, metadata !DIExpression()), !dbg !1900
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1901, metadata !DIExpression()), !dbg !1902
  %9 = load i32, ptr %7, align 4, !dbg !1903
  %10 = udiv i32 %9, 32, !dbg !1904
  %11 = load ptr, ptr %6, align 4, !dbg !1905
  %12 = getelementptr inbounds %struct.bundle_data, ptr %11, i32 0, i32 0, !dbg !1906
  store i32 %10, ptr %12, align 4, !dbg !1907
  %13 = load i32, ptr %7, align 4, !dbg !1908
  %14 = urem i32 %13, 32, !dbg !1909
  %15 = load ptr, ptr %6, align 4, !dbg !1910
  %16 = getelementptr inbounds %struct.bundle_data, ptr %15, i32 0, i32 2, !dbg !1911
  store i32 %14, ptr %16, align 4, !dbg !1912
  %17 = load i32, ptr %7, align 4, !dbg !1913
  %18 = load i32, ptr %8, align 4, !dbg !1914
  %19 = add i32 %17, %18, !dbg !1915
  %20 = sub i32 %19, 1, !dbg !1916
  %21 = udiv i32 %20, 32, !dbg !1917
  %22 = load ptr, ptr %6, align 4, !dbg !1918
  %23 = getelementptr inbounds %struct.bundle_data, ptr %22, i32 0, i32 1, !dbg !1919
  store i32 %21, ptr %23, align 4, !dbg !1920
  %24 = load i32, ptr %7, align 4, !dbg !1921
  %25 = load i32, ptr %8, align 4, !dbg !1922
  %26 = add i32 %24, %25, !dbg !1923
  %27 = sub i32 %26, 1, !dbg !1924
  %28 = urem i32 %27, 32, !dbg !1925
  %29 = load ptr, ptr %6, align 4, !dbg !1926
  %30 = getelementptr inbounds %struct.bundle_data, ptr %29, i32 0, i32 3, !dbg !1927
  store i32 %28, ptr %30, align 4, !dbg !1928
  %31 = load ptr, ptr %6, align 4, !dbg !1929
  %32 = getelementptr inbounds %struct.bundle_data, ptr %31, i32 0, i32 2, !dbg !1930
  %33 = load i32, ptr %32, align 4, !dbg !1930
  %34 = shl i32 1, %33, !dbg !1931
  %35 = sub i32 %34, 1, !dbg !1932
  %36 = xor i32 %35, -1, !dbg !1933
  %37 = load ptr, ptr %6, align 4, !dbg !1934
  %38 = getelementptr inbounds %struct.bundle_data, ptr %37, i32 0, i32 4, !dbg !1935
  store i32 %36, ptr %38, align 4, !dbg !1936
  %39 = load ptr, ptr %6, align 4, !dbg !1937
  %40 = getelementptr inbounds %struct.bundle_data, ptr %39, i32 0, i32 3, !dbg !1938
  %41 = load i32, ptr %40, align 4, !dbg !1938
  %42 = shl i32 1, %41, !dbg !1939
  %43 = sub i32 %42, 1, !dbg !1940
  %44 = load ptr, ptr %6, align 4, !dbg !1941
  %45 = getelementptr inbounds %struct.bundle_data, ptr %44, i32 0, i32 3, !dbg !1942
  %46 = load i32, ptr %45, align 4, !dbg !1942
  %47 = shl i32 1, %46, !dbg !1943
  %48 = or i32 %43, %47, !dbg !1944
  %49 = load ptr, ptr %6, align 4, !dbg !1945
  %50 = getelementptr inbounds %struct.bundle_data, ptr %49, i32 0, i32 5, !dbg !1946
  store i32 %48, ptr %50, align 4, !dbg !1947
  %51 = load ptr, ptr %6, align 4, !dbg !1948
  %52 = getelementptr inbounds %struct.bundle_data, ptr %51, i32 0, i32 0, !dbg !1950
  %53 = load i32, ptr %52, align 4, !dbg !1950
  %54 = load ptr, ptr %6, align 4, !dbg !1951
  %55 = getelementptr inbounds %struct.bundle_data, ptr %54, i32 0, i32 1, !dbg !1952
  %56 = load i32, ptr %55, align 4, !dbg !1952
  %57 = icmp eq i32 %53, %56, !dbg !1953
  br i1 %57, label %58, label %66, !dbg !1954

58:                                               ; preds = %4
  %59 = load ptr, ptr %6, align 4, !dbg !1955
  %60 = getelementptr inbounds %struct.bundle_data, ptr %59, i32 0, i32 5, !dbg !1957
  %61 = load i32, ptr %60, align 4, !dbg !1957
  %62 = load ptr, ptr %6, align 4, !dbg !1958
  %63 = getelementptr inbounds %struct.bundle_data, ptr %62, i32 0, i32 4, !dbg !1959
  %64 = load i32, ptr %63, align 4, !dbg !1960
  %65 = and i32 %64, %61, !dbg !1960
  store i32 %65, ptr %63, align 4, !dbg !1960
  br label %66, !dbg !1961

66:                                               ; preds = %58, %4
  ret void, !dbg !1962
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bitarray.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !89, line: 64, baseType: !90)
!89 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !{i32 7, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 1, !"static_rwdata", i32 1}
!95 = !{i32 1, !"enumsize_buildattr", i32 1}
!96 = !{i32 1, !"armlib_unavailable", i32 0}
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!100 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !101, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !105}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !107, line: 250, size: 896, elements: !108)
!107 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!108 = !{!109, !180, !193, !194, !195, !196, !217}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !106, file: !107, line: 252, baseType: !110, size: 384)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !107, line: 58, size: 384, elements: !111)
!111 = !{!112, !140, !148, !150, !151, !164, !165, !167}
!112 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !107, line: 61, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !107, line: 61, size: 64, elements: !114)
!114 = !{!115, !131}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !113, file: !107, line: 62, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !117, line: 55, baseType: !118)
!117 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !117, line: 37, size: 64, elements: !119)
!119 = !{!120, !126}
!120 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !117, line: 38, baseType: !121, size: 32)
!121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !117, line: 38, size: 32, elements: !122)
!122 = !{!123, !125}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !121, file: !117, line: 39, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !121, file: !117, line: 40, baseType: !124, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !117, line: 42, baseType: !127, size: 32, offset: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !117, line: 42, size: 32, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !127, file: !117, line: 43, baseType: !124, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !127, file: !117, line: 44, baseType: !124, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !113, file: !107, line: 63, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !133, line: 58, size: 64, elements: !134)
!133 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !132, file: !133, line: 60, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !138)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!138 = !{!139}
!139 = !DISubrange(count: 2)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !110, file: !107, line: 69, baseType: !141, size: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !143, line: 243, baseType: !144)
!143 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !143, line: 241, size: 64, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !144, file: !143, line: 242, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !117, line: 51, baseType: !118)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !110, file: !107, line: 72, baseType: !149, size: 8, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !89, line: 62, baseType: !5)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !110, file: !107, line: 75, baseType: !149, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !110, file: !107, line: 91, baseType: !152, size: 16, offset: 112)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !107, line: 91, size: 16, elements: !153)
!153 = !{!154, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !107, line: 92, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !107, line: 92, size: 16, elements: !156)
!156 = !{!157, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !155, file: !107, line: 97, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !89, line: 56, baseType: !159)
!159 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !155, file: !107, line: 98, baseType: !149, size: 8, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !152, file: !107, line: 101, baseType: !162, size: 16)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !89, line: 63, baseType: !163)
!163 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !110, file: !107, line: 108, baseType: !88, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !110, file: !107, line: 132, baseType: !166, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !110, file: !107, line: 136, baseType: !168, size: 192, offset: 192)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !143, line: 254, size: 192, elements: !169)
!169 = !{!170, !171, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !143, line: 255, baseType: !116, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !168, file: !143, line: 256, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !143, line: 252, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !168, file: !143, line: 259, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !89, line: 59, baseType: !179)
!179 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !106, file: !107, line: 255, baseType: !181, size: 288, offset: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !182, line: 25, size: 288, elements: !183)
!182 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !181, file: !182, line: 26, baseType: !88, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !181, file: !182, line: 27, baseType: !88, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !181, file: !182, line: 28, baseType: !88, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !181, file: !182, line: 29, baseType: !88, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !181, file: !182, line: 30, baseType: !88, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !181, file: !182, line: 31, baseType: !88, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !181, file: !182, line: 32, baseType: !88, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !181, file: !182, line: 33, baseType: !88, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !181, file: !182, line: 34, baseType: !88, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !106, file: !107, line: 258, baseType: !166, size: 32, offset: 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !106, file: !107, line: 261, baseType: !142, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !106, file: !107, line: 302, baseType: !87, size: 32, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !106, file: !107, line: 333, baseType: !197, size: 32, offset: 800)
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
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !202, file: !203, line: 58, baseType: !166, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !202, file: !203, line: 59, baseType: !210, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 53, baseType: !90)
!211 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !198, file: !199, line: 5293, baseType: !142, size: 64, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 5294, baseType: !214, offset: 160)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !215, line: 45, elements: !216)
!215 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!216 = !{}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !106, file: !107, line: 355, baseType: !218, size: 64, offset: 832)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !182, line: 60, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !218, file: !182, line: 63, baseType: !88, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !218, file: !182, line: 66, baseType: !88, size: 32, offset: 32)
!222 = !DILocalVariable(name: "object", arg: 1, scope: !100, file: !4, line: 223, type: !103)
!223 = !DILocation(line: 223, column: 61, scope: !100)
!224 = !DILocalVariable(name: "thread", arg: 2, scope: !100, file: !4, line: 224, type: !105)
!225 = !DILocation(line: 224, column: 24, scope: !100)
!226 = !DILocation(line: 226, column: 9, scope: !100)
!227 = !DILocation(line: 227, column: 9, scope: !100)
!228 = !DILocation(line: 228, column: 1, scope: !100)
!229 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !230, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !103}
!232 = !DILocalVariable(name: "object", arg: 1, scope: !229, file: !4, line: 243, type: !103)
!233 = !DILocation(line: 243, column: 56, scope: !229)
!234 = !DILocation(line: 245, column: 9, scope: !229)
!235 = !DILocation(line: 246, column: 1, scope: !229)
!236 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !237, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!237 = !DISubroutineType(types: !238)
!238 = !{!166, !3}
!239 = !DILocalVariable(name: "otype", arg: 1, scope: !236, file: !4, line: 359, type: !3)
!240 = !DILocation(line: 359, column: 58, scope: !236)
!241 = !DILocation(line: 361, column: 9, scope: !236)
!242 = !DILocation(line: 363, column: 2, scope: !236)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !244, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!244 = !DISubroutineType(types: !245)
!245 = !{!166, !3, !210}
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
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
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
!283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !280, file: !199, line: 1448, baseType: !142, size: 64, offset: 192)
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
!295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !280, file: !199, line: 1460, baseType: !88, size: 32, offset: 384)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !280, file: !199, line: 1463, baseType: !166, size: 32, offset: 416)
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
!312 = !{null, !288, !166}
!313 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !199, line: 1689, type: !288)
!314 = !DILocation(line: 1689, column: 65, scope: !310)
!315 = !DILocalVariable(name: "user_data", arg: 2, scope: !310, file: !199, line: 1690, type: !166)
!316 = !DILocation(line: 1690, column: 19, scope: !310)
!317 = !DILocation(line: 1692, column: 21, scope: !310)
!318 = !DILocation(line: 1692, column: 2, scope: !310)
!319 = !DILocation(line: 1692, column: 9, scope: !310)
!320 = !DILocation(line: 1692, column: 19, scope: !310)
!321 = !DILocation(line: 1693, column: 1, scope: !310)
!322 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !199, file: !199, line: 1704, type: !323, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!323 = !DISubroutineType(types: !324)
!324 = !{!166, !278}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !322, file: !199, line: 1704, type: !278)
!326 = !DILocation(line: 1704, column: 72, scope: !322)
!327 = !DILocation(line: 1706, column: 9, scope: !322)
!328 = !DILocation(line: 1706, column: 16, scope: !322)
!329 = !DILocation(line: 1706, column: 2, scope: !322)
!330 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !199, file: !199, line: 2071, type: !331, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!331 = !DISubroutineType(types: !332)
!332 = !{!87, !333}
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
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !338, line: 40, baseType: !88)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !339, file: !338, line: 55, baseType: !342, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !334, file: !199, line: 1832, baseType: !214, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !334, file: !199, line: 1833, baseType: !142, size: 64, offset: 64)
!351 = !DILocalVariable(name: "queue", arg: 1, scope: !330, file: !199, line: 2071, type: !333)
!352 = !DILocation(line: 2071, column: 59, scope: !330)
!353 = !DILocation(line: 2073, column: 35, scope: !330)
!354 = !DILocation(line: 2073, column: 42, scope: !330)
!355 = !DILocation(line: 2073, column: 14, scope: !330)
!356 = !DILocation(line: 2073, column: 9, scope: !330)
!357 = !DILocation(line: 2073, column: 2, scope: !330)
!358 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !199, file: !199, line: 3209, type: !359, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!359 = !DISubroutineType(types: !360)
!360 = !{!90, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !199, line: 3092, size: 128, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !362, file: !199, line: 3093, baseType: !142, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !362, file: !199, line: 3094, baseType: !90, size: 32, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !362, file: !199, line: 3095, baseType: !90, size: 32, offset: 96)
!367 = !DILocalVariable(name: "sem", arg: 1, scope: !358, file: !199, line: 3209, type: !361)
!368 = !DILocation(line: 3209, column: 65, scope: !358)
!369 = !DILocation(line: 3211, column: 9, scope: !358)
!370 = !DILocation(line: 3211, column: 14, scope: !358)
!371 = !DILocation(line: 3211, column: 2, scope: !358)
!372 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !199, file: !199, line: 4649, type: !373, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!373 = !DISubroutineType(types: !374)
!374 = !{!88, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !199, line: 4390, size: 320, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !385, !386, !387, !388, !389}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !376, file: !199, line: 4392, baseType: !142, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !376, file: !199, line: 4394, baseType: !214, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !376, file: !199, line: 4396, baseType: !210, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !376, file: !199, line: 4398, baseType: !88, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !376, file: !199, line: 4400, baseType: !383, size: 32, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !376, file: !199, line: 4402, baseType: !383, size: 32, offset: 160)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !376, file: !199, line: 4404, baseType: !383, size: 32, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !376, file: !199, line: 4406, baseType: !383, size: 32, offset: 224)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !376, file: !199, line: 4408, baseType: !88, size: 32, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !199, line: 4413, baseType: !149, size: 8, offset: 288)
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
!404 = distinct !DISubprogram(name: "sys_bitarray_set_bit", scope: !405, file: !405, line: 213, type: !406, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!405 = !DIFile(filename: "lib/os/bitarray.c", directory: "/home/sri/zephyrproject/zephyr")
!406 = !DISubroutineType(types: !407)
!407 = !{!87, !408, !210}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_bitarray_t", file: !410, line: 48, baseType: !411)
!410 = !DIFile(filename: "include/zephyr/sys/bitarray.h", directory: "/home/sri/zephyrproject/zephyr")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_bitarray", file: !410, line: 32, size: 96, elements: !412)
!412 = !{!413, !414, !415, !417}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "num_bits", scope: !411, file: !410, line: 34, baseType: !88, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "num_bundles", scope: !411, file: !410, line: 37, baseType: !88, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "bundles", scope: !411, file: !410, line: 40, baseType: !416, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !410, line: 43, baseType: !214, offset: 96)
!418 = !DILocalVariable(name: "bitarray", arg: 1, scope: !404, file: !405, line: 213, type: !408)
!419 = !DILocation(line: 213, column: 42, scope: !404)
!420 = !DILocalVariable(name: "bit", arg: 2, scope: !404, file: !405, line: 213, type: !210)
!421 = !DILocation(line: 213, column: 59, scope: !404)
!422 = !DILocalVariable(name: "key", scope: !404, file: !405, line: 215, type: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !215, line: 108, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !215, line: 34, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !424, file: !215, line: 35, baseType: !87, size: 32)
!427 = !DILocation(line: 215, column: 19, scope: !404)
!428 = !DILocalVariable(name: "ret", scope: !404, file: !405, line: 216, type: !87)
!429 = !DILocation(line: 216, column: 6, scope: !404)
!430 = !DILocalVariable(name: "idx", scope: !404, file: !405, line: 217, type: !210)
!431 = !DILocation(line: 217, column: 9, scope: !404)
!432 = !DILocalVariable(name: "off", scope: !404, file: !405, line: 217, type: !210)
!433 = !DILocation(line: 217, column: 14, scope: !404)
!434 = !DILocation(line: 219, column: 21, scope: !404)
!435 = !DILocation(line: 219, column: 31, scope: !404)
!436 = !DILocalVariable(name: "l", arg: 1, scope: !437, file: !215, line: 160, type: !440)
!437 = distinct !DISubprogram(name: "k_spin_lock", scope: !215, file: !215, line: 160, type: !438, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!438 = !DISubroutineType(types: !439)
!439 = !{!423, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!441 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !442)
!442 = distinct !DILocation(line: 219, column: 8, scope: !404)
!443 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !442)
!444 = !DILocalVariable(name: "k", scope: !437, file: !215, line: 163, type: !423)
!445 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !442)
!446 = !DILocalVariable(name: "key", scope: !447, file: !448, line: 44, type: !90)
!447 = distinct !DISubprogram(name: "arch_irq_lock", scope: !448, file: !448, line: 42, type: !449, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!448 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!449 = !DISubroutineType(types: !450)
!450 = !{!90}
!451 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !452)
!452 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !442)
!453 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !452)
!454 = !{i64 82286}
!455 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !452)
!456 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !442)
!457 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !442)
!458 = !DILocalVariable(name: "l", arg: 1, scope: !459, file: !215, line: 110, type: !440)
!459 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !215, file: !215, line: 110, type: !460, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !440}
!462 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !463)
!463 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !442)
!464 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !463)
!465 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !442)
!466 = !DILocalVariable(name: "l", arg: 1, scope: !467, file: !215, line: 121, type: !440)
!467 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !215, file: !215, line: 121, type: !460, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!468 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !469)
!469 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !442)
!470 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !469)
!471 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !442)
!472 = !DILocation(line: 219, column: 8, scope: !404)
!473 = !DILocation(line: 224, column: 6, scope: !474)
!474 = distinct !DILexicalBlock(scope: !404, file: !405, line: 224, column: 6)
!475 = !DILocation(line: 224, column: 13, scope: !474)
!476 = !DILocation(line: 224, column: 23, scope: !474)
!477 = !DILocation(line: 224, column: 10, scope: !474)
!478 = !DILocation(line: 224, column: 6, scope: !404)
!479 = !DILocation(line: 225, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !474, file: !405, line: 224, column: 33)
!481 = !DILocation(line: 226, column: 3, scope: !480)
!482 = !DILocation(line: 229, column: 8, scope: !404)
!483 = !DILocation(line: 229, column: 12, scope: !404)
!484 = !DILocation(line: 229, column: 6, scope: !404)
!485 = !DILocation(line: 230, column: 8, scope: !404)
!486 = !DILocation(line: 230, column: 12, scope: !404)
!487 = !DILocation(line: 230, column: 6, scope: !404)
!488 = !DILocation(line: 232, column: 37, scope: !404)
!489 = !DILocation(line: 232, column: 33, scope: !404)
!490 = !DILocation(line: 232, column: 2, scope: !404)
!491 = !DILocation(line: 232, column: 12, scope: !404)
!492 = !DILocation(line: 232, column: 20, scope: !404)
!493 = !DILocation(line: 232, column: 25, scope: !404)
!494 = !DILocation(line: 234, column: 6, scope: !404)
!495 = !DILocation(line: 234, column: 2, scope: !404)
!496 = !DILabel(scope: !404, name: "out", file: !405, line: 236)
!497 = !DILocation(line: 236, column: 1, scope: !404)
!498 = !DILocation(line: 237, column: 17, scope: !404)
!499 = !DILocation(line: 237, column: 27, scope: !404)
!500 = !DILocation(line: 237, column: 2, scope: !404)
!501 = !DILocalVariable(name: "l", arg: 1, scope: !502, file: !215, line: 235, type: !440)
!502 = distinct !DISubprogram(name: "k_spin_unlock", scope: !215, file: !215, line: 235, type: !503, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !440, !423}
!505 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !506)
!506 = distinct !DILocation(line: 237, column: 2, scope: !404)
!507 = !DILocalVariable(name: "key", arg: 2, scope: !502, file: !215, line: 236, type: !423)
!508 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !506)
!509 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !506)
!510 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !506)
!511 = !DILocalVariable(name: "key", arg: 1, scope: !512, file: !448, line: 88, type: !90)
!512 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !448, file: !448, line: 88, type: !513, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !90}
!515 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !516)
!516 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !506)
!517 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !516)
!518 = distinct !DILexicalBlock(scope: !512, file: !448, line: 91, column: 6)
!519 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !516)
!520 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !516)
!521 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !516)
!522 = distinct !DILexicalBlock(scope: !518, file: !448, line: 91, column: 17)
!523 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !516)
!524 = !{i64 82590}
!525 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !516)
!526 = !DILocation(line: 238, column: 9, scope: !404)
!527 = !DILocation(line: 238, column: 2, scope: !404)
!528 = distinct !DISubprogram(name: "sys_bitarray_clear_bit", scope: !405, file: !405, line: 241, type: !406, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!529 = !DILocalVariable(name: "bitarray", arg: 1, scope: !528, file: !405, line: 241, type: !408)
!530 = !DILocation(line: 241, column: 44, scope: !528)
!531 = !DILocalVariable(name: "bit", arg: 2, scope: !528, file: !405, line: 241, type: !210)
!532 = !DILocation(line: 241, column: 61, scope: !528)
!533 = !DILocalVariable(name: "key", scope: !528, file: !405, line: 243, type: !423)
!534 = !DILocation(line: 243, column: 19, scope: !528)
!535 = !DILocalVariable(name: "ret", scope: !528, file: !405, line: 244, type: !87)
!536 = !DILocation(line: 244, column: 6, scope: !528)
!537 = !DILocalVariable(name: "idx", scope: !528, file: !405, line: 245, type: !210)
!538 = !DILocation(line: 245, column: 9, scope: !528)
!539 = !DILocalVariable(name: "off", scope: !528, file: !405, line: 245, type: !210)
!540 = !DILocation(line: 245, column: 14, scope: !528)
!541 = !DILocation(line: 250, column: 21, scope: !528)
!542 = !DILocation(line: 250, column: 31, scope: !528)
!543 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !544)
!544 = distinct !DILocation(line: 250, column: 8, scope: !528)
!545 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !544)
!546 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !544)
!547 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !548)
!548 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !544)
!549 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !548)
!550 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !548)
!551 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !544)
!552 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !544)
!553 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !554)
!554 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !544)
!555 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !554)
!556 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !544)
!557 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !558)
!558 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !544)
!559 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !558)
!560 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !544)
!561 = !DILocation(line: 250, column: 8, scope: !528)
!562 = !DILocation(line: 252, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !528, file: !405, line: 252, column: 6)
!564 = !DILocation(line: 252, column: 13, scope: !563)
!565 = !DILocation(line: 252, column: 23, scope: !563)
!566 = !DILocation(line: 252, column: 10, scope: !563)
!567 = !DILocation(line: 252, column: 6, scope: !528)
!568 = !DILocation(line: 253, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !563, file: !405, line: 252, column: 33)
!570 = !DILocation(line: 254, column: 3, scope: !569)
!571 = !DILocation(line: 257, column: 8, scope: !528)
!572 = !DILocation(line: 257, column: 12, scope: !528)
!573 = !DILocation(line: 257, column: 6, scope: !528)
!574 = !DILocation(line: 258, column: 8, scope: !528)
!575 = !DILocation(line: 258, column: 12, scope: !528)
!576 = !DILocation(line: 258, column: 6, scope: !528)
!577 = !DILocation(line: 260, column: 38, scope: !528)
!578 = !DILocation(line: 260, column: 34, scope: !528)
!579 = !DILocation(line: 260, column: 28, scope: !528)
!580 = !DILocation(line: 260, column: 2, scope: !528)
!581 = !DILocation(line: 260, column: 12, scope: !528)
!582 = !DILocation(line: 260, column: 20, scope: !528)
!583 = !DILocation(line: 260, column: 25, scope: !528)
!584 = !DILocation(line: 262, column: 6, scope: !528)
!585 = !DILocation(line: 262, column: 2, scope: !528)
!586 = !DILabel(scope: !528, name: "out", file: !405, line: 264)
!587 = !DILocation(line: 264, column: 1, scope: !528)
!588 = !DILocation(line: 265, column: 17, scope: !528)
!589 = !DILocation(line: 265, column: 27, scope: !528)
!590 = !DILocation(line: 265, column: 2, scope: !528)
!591 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !592)
!592 = distinct !DILocation(line: 265, column: 2, scope: !528)
!593 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !592)
!594 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !592)
!595 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !592)
!596 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !597)
!597 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !592)
!598 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !597)
!599 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !597)
!600 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !597)
!601 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !597)
!602 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !597)
!603 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !597)
!604 = !DILocation(line: 266, column: 9, scope: !528)
!605 = !DILocation(line: 266, column: 2, scope: !528)
!606 = distinct !DISubprogram(name: "sys_bitarray_test_bit", scope: !405, file: !405, line: 269, type: !607, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!607 = !DISubroutineType(types: !608)
!608 = !{!87, !408, !210, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 32)
!610 = !DILocalVariable(name: "bitarray", arg: 1, scope: !606, file: !405, line: 269, type: !408)
!611 = !DILocation(line: 269, column: 43, scope: !606)
!612 = !DILocalVariable(name: "bit", arg: 2, scope: !606, file: !405, line: 269, type: !210)
!613 = !DILocation(line: 269, column: 60, scope: !606)
!614 = !DILocalVariable(name: "val", arg: 3, scope: !606, file: !405, line: 269, type: !609)
!615 = !DILocation(line: 269, column: 70, scope: !606)
!616 = !DILocalVariable(name: "key", scope: !606, file: !405, line: 271, type: !423)
!617 = !DILocation(line: 271, column: 19, scope: !606)
!618 = !DILocalVariable(name: "ret", scope: !606, file: !405, line: 272, type: !87)
!619 = !DILocation(line: 272, column: 6, scope: !606)
!620 = !DILocalVariable(name: "idx", scope: !606, file: !405, line: 273, type: !210)
!621 = !DILocation(line: 273, column: 9, scope: !606)
!622 = !DILocalVariable(name: "off", scope: !606, file: !405, line: 273, type: !210)
!623 = !DILocation(line: 273, column: 14, scope: !606)
!624 = !DILocation(line: 278, column: 21, scope: !606)
!625 = !DILocation(line: 278, column: 31, scope: !606)
!626 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !627)
!627 = distinct !DILocation(line: 278, column: 8, scope: !606)
!628 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !627)
!629 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !627)
!630 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !631)
!631 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !627)
!632 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !631)
!633 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !631)
!634 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !627)
!635 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !627)
!636 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !637)
!637 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !627)
!638 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !637)
!639 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !627)
!640 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !641)
!641 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !627)
!642 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !641)
!643 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !627)
!644 = !DILocation(line: 278, column: 8, scope: !606)
!645 = !DILocation(line: 280, column: 6, scope: !646)
!646 = distinct !DILexicalBlock(scope: !606, file: !405, line: 280, column: 6)
!647 = !DILocation(line: 280, column: 10, scope: !646)
!648 = !DILocation(line: 280, column: 6, scope: !606)
!649 = !DILocation(line: 281, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !646, file: !405, line: 280, column: 16)
!651 = !DILocation(line: 282, column: 3, scope: !650)
!652 = !DILocation(line: 285, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !606, file: !405, line: 285, column: 6)
!654 = !DILocation(line: 285, column: 13, scope: !653)
!655 = !DILocation(line: 285, column: 23, scope: !653)
!656 = !DILocation(line: 285, column: 10, scope: !653)
!657 = !DILocation(line: 285, column: 6, scope: !606)
!658 = !DILocation(line: 286, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !653, file: !405, line: 285, column: 33)
!660 = !DILocation(line: 287, column: 3, scope: !659)
!661 = !DILocation(line: 290, column: 8, scope: !606)
!662 = !DILocation(line: 290, column: 12, scope: !606)
!663 = !DILocation(line: 290, column: 6, scope: !606)
!664 = !DILocation(line: 291, column: 8, scope: !606)
!665 = !DILocation(line: 291, column: 12, scope: !606)
!666 = !DILocation(line: 291, column: 6, scope: !606)
!667 = !DILocation(line: 293, column: 7, scope: !668)
!668 = distinct !DILexicalBlock(scope: !606, file: !405, line: 293, column: 6)
!669 = !DILocation(line: 293, column: 17, scope: !668)
!670 = !DILocation(line: 293, column: 25, scope: !668)
!671 = !DILocation(line: 293, column: 41, scope: !668)
!672 = !DILocation(line: 293, column: 37, scope: !668)
!673 = !DILocation(line: 293, column: 30, scope: !668)
!674 = !DILocation(line: 293, column: 48, scope: !668)
!675 = !DILocation(line: 293, column: 6, scope: !606)
!676 = !DILocation(line: 294, column: 4, scope: !677)
!677 = distinct !DILexicalBlock(scope: !668, file: !405, line: 293, column: 54)
!678 = !DILocation(line: 294, column: 8, scope: !677)
!679 = !DILocation(line: 295, column: 2, scope: !677)
!680 = !DILocation(line: 296, column: 4, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !405, line: 295, column: 9)
!682 = !DILocation(line: 296, column: 8, scope: !681)
!683 = !DILocation(line: 299, column: 6, scope: !606)
!684 = !DILocation(line: 299, column: 2, scope: !606)
!685 = !DILabel(scope: !606, name: "out", file: !405, line: 301)
!686 = !DILocation(line: 301, column: 1, scope: !606)
!687 = !DILocation(line: 302, column: 17, scope: !606)
!688 = !DILocation(line: 302, column: 27, scope: !606)
!689 = !DILocation(line: 302, column: 2, scope: !606)
!690 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !691)
!691 = distinct !DILocation(line: 302, column: 2, scope: !606)
!692 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !691)
!693 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !691)
!694 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !691)
!695 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !696)
!696 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !691)
!697 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !696)
!698 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !696)
!699 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !696)
!700 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !696)
!701 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !696)
!702 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !696)
!703 = !DILocation(line: 303, column: 9, scope: !606)
!704 = !DILocation(line: 303, column: 2, scope: !606)
!705 = distinct !DISubprogram(name: "sys_bitarray_test_and_set_bit", scope: !405, file: !405, line: 306, type: !607, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!706 = !DILocalVariable(name: "bitarray", arg: 1, scope: !705, file: !405, line: 306, type: !408)
!707 = !DILocation(line: 306, column: 51, scope: !705)
!708 = !DILocalVariable(name: "bit", arg: 2, scope: !705, file: !405, line: 306, type: !210)
!709 = !DILocation(line: 306, column: 68, scope: !705)
!710 = !DILocalVariable(name: "prev_val", arg: 3, scope: !705, file: !405, line: 306, type: !609)
!711 = !DILocation(line: 306, column: 78, scope: !705)
!712 = !DILocalVariable(name: "key", scope: !705, file: !405, line: 308, type: !423)
!713 = !DILocation(line: 308, column: 19, scope: !705)
!714 = !DILocalVariable(name: "ret", scope: !705, file: !405, line: 309, type: !87)
!715 = !DILocation(line: 309, column: 6, scope: !705)
!716 = !DILocalVariable(name: "idx", scope: !705, file: !405, line: 310, type: !210)
!717 = !DILocation(line: 310, column: 9, scope: !705)
!718 = !DILocalVariable(name: "off", scope: !705, file: !405, line: 310, type: !210)
!719 = !DILocation(line: 310, column: 14, scope: !705)
!720 = !DILocation(line: 315, column: 21, scope: !705)
!721 = !DILocation(line: 315, column: 31, scope: !705)
!722 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !723)
!723 = distinct !DILocation(line: 315, column: 8, scope: !705)
!724 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !723)
!725 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !723)
!726 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !727)
!727 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !723)
!728 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !727)
!729 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !727)
!730 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !723)
!731 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !723)
!732 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !733)
!733 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !723)
!734 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !733)
!735 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !723)
!736 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !737)
!737 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !723)
!738 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !737)
!739 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !723)
!740 = !DILocation(line: 315, column: 8, scope: !705)
!741 = !DILocation(line: 317, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !705, file: !405, line: 317, column: 6)
!743 = !DILocation(line: 317, column: 15, scope: !742)
!744 = !DILocation(line: 317, column: 6, scope: !705)
!745 = !DILocation(line: 318, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !742, file: !405, line: 317, column: 21)
!747 = !DILocation(line: 319, column: 3, scope: !746)
!748 = !DILocation(line: 322, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !705, file: !405, line: 322, column: 6)
!750 = !DILocation(line: 322, column: 13, scope: !749)
!751 = !DILocation(line: 322, column: 23, scope: !749)
!752 = !DILocation(line: 322, column: 10, scope: !749)
!753 = !DILocation(line: 322, column: 6, scope: !705)
!754 = !DILocation(line: 323, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !749, file: !405, line: 322, column: 33)
!756 = !DILocation(line: 324, column: 3, scope: !755)
!757 = !DILocation(line: 327, column: 8, scope: !705)
!758 = !DILocation(line: 327, column: 12, scope: !705)
!759 = !DILocation(line: 327, column: 6, scope: !705)
!760 = !DILocation(line: 328, column: 8, scope: !705)
!761 = !DILocation(line: 328, column: 12, scope: !705)
!762 = !DILocation(line: 328, column: 6, scope: !705)
!763 = !DILocation(line: 330, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !705, file: !405, line: 330, column: 6)
!765 = !DILocation(line: 330, column: 17, scope: !764)
!766 = !DILocation(line: 330, column: 25, scope: !764)
!767 = !DILocation(line: 330, column: 41, scope: !764)
!768 = !DILocation(line: 330, column: 37, scope: !764)
!769 = !DILocation(line: 330, column: 30, scope: !764)
!770 = !DILocation(line: 330, column: 48, scope: !764)
!771 = !DILocation(line: 330, column: 6, scope: !705)
!772 = !DILocation(line: 331, column: 4, scope: !773)
!773 = distinct !DILexicalBlock(scope: !764, file: !405, line: 330, column: 54)
!774 = !DILocation(line: 331, column: 13, scope: !773)
!775 = !DILocation(line: 332, column: 2, scope: !773)
!776 = !DILocation(line: 333, column: 4, scope: !777)
!777 = distinct !DILexicalBlock(scope: !764, file: !405, line: 332, column: 9)
!778 = !DILocation(line: 333, column: 13, scope: !777)
!779 = !DILocation(line: 336, column: 37, scope: !705)
!780 = !DILocation(line: 336, column: 33, scope: !705)
!781 = !DILocation(line: 336, column: 2, scope: !705)
!782 = !DILocation(line: 336, column: 12, scope: !705)
!783 = !DILocation(line: 336, column: 20, scope: !705)
!784 = !DILocation(line: 336, column: 25, scope: !705)
!785 = !DILocation(line: 338, column: 6, scope: !705)
!786 = !DILocation(line: 338, column: 2, scope: !705)
!787 = !DILabel(scope: !705, name: "out", file: !405, line: 340)
!788 = !DILocation(line: 340, column: 1, scope: !705)
!789 = !DILocation(line: 341, column: 17, scope: !705)
!790 = !DILocation(line: 341, column: 27, scope: !705)
!791 = !DILocation(line: 341, column: 2, scope: !705)
!792 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !793)
!793 = distinct !DILocation(line: 341, column: 2, scope: !705)
!794 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !793)
!795 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !793)
!796 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !793)
!797 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !798)
!798 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !793)
!799 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !798)
!800 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !798)
!801 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !798)
!802 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !798)
!803 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !798)
!804 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !798)
!805 = !DILocation(line: 342, column: 9, scope: !705)
!806 = !DILocation(line: 342, column: 2, scope: !705)
!807 = distinct !DISubprogram(name: "sys_bitarray_test_and_clear_bit", scope: !405, file: !405, line: 345, type: !607, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!808 = !DILocalVariable(name: "bitarray", arg: 1, scope: !807, file: !405, line: 345, type: !408)
!809 = !DILocation(line: 345, column: 53, scope: !807)
!810 = !DILocalVariable(name: "bit", arg: 2, scope: !807, file: !405, line: 345, type: !210)
!811 = !DILocation(line: 345, column: 70, scope: !807)
!812 = !DILocalVariable(name: "prev_val", arg: 3, scope: !807, file: !405, line: 345, type: !609)
!813 = !DILocation(line: 345, column: 80, scope: !807)
!814 = !DILocalVariable(name: "key", scope: !807, file: !405, line: 347, type: !423)
!815 = !DILocation(line: 347, column: 19, scope: !807)
!816 = !DILocalVariable(name: "ret", scope: !807, file: !405, line: 348, type: !87)
!817 = !DILocation(line: 348, column: 6, scope: !807)
!818 = !DILocalVariable(name: "idx", scope: !807, file: !405, line: 349, type: !210)
!819 = !DILocation(line: 349, column: 9, scope: !807)
!820 = !DILocalVariable(name: "off", scope: !807, file: !405, line: 349, type: !210)
!821 = !DILocation(line: 349, column: 14, scope: !807)
!822 = !DILocation(line: 354, column: 21, scope: !807)
!823 = !DILocation(line: 354, column: 31, scope: !807)
!824 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !825)
!825 = distinct !DILocation(line: 354, column: 8, scope: !807)
!826 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !825)
!827 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !825)
!828 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !829)
!829 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !825)
!830 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !829)
!831 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !829)
!832 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !825)
!833 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !825)
!834 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !835)
!835 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !825)
!836 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !835)
!837 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !825)
!838 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !839)
!839 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !825)
!840 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !839)
!841 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !825)
!842 = !DILocation(line: 354, column: 8, scope: !807)
!843 = !DILocation(line: 356, column: 6, scope: !844)
!844 = distinct !DILexicalBlock(scope: !807, file: !405, line: 356, column: 6)
!845 = !DILocation(line: 356, column: 15, scope: !844)
!846 = !DILocation(line: 356, column: 6, scope: !807)
!847 = !DILocation(line: 357, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !405, line: 356, column: 21)
!849 = !DILocation(line: 358, column: 3, scope: !848)
!850 = !DILocation(line: 361, column: 6, scope: !851)
!851 = distinct !DILexicalBlock(scope: !807, file: !405, line: 361, column: 6)
!852 = !DILocation(line: 361, column: 13, scope: !851)
!853 = !DILocation(line: 361, column: 23, scope: !851)
!854 = !DILocation(line: 361, column: 10, scope: !851)
!855 = !DILocation(line: 361, column: 6, scope: !807)
!856 = !DILocation(line: 362, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !851, file: !405, line: 361, column: 33)
!858 = !DILocation(line: 363, column: 3, scope: !857)
!859 = !DILocation(line: 366, column: 8, scope: !807)
!860 = !DILocation(line: 366, column: 12, scope: !807)
!861 = !DILocation(line: 366, column: 6, scope: !807)
!862 = !DILocation(line: 367, column: 8, scope: !807)
!863 = !DILocation(line: 367, column: 12, scope: !807)
!864 = !DILocation(line: 367, column: 6, scope: !807)
!865 = !DILocation(line: 369, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !807, file: !405, line: 369, column: 6)
!867 = !DILocation(line: 369, column: 17, scope: !866)
!868 = !DILocation(line: 369, column: 25, scope: !866)
!869 = !DILocation(line: 369, column: 41, scope: !866)
!870 = !DILocation(line: 369, column: 37, scope: !866)
!871 = !DILocation(line: 369, column: 30, scope: !866)
!872 = !DILocation(line: 369, column: 48, scope: !866)
!873 = !DILocation(line: 369, column: 6, scope: !807)
!874 = !DILocation(line: 370, column: 4, scope: !875)
!875 = distinct !DILexicalBlock(scope: !866, file: !405, line: 369, column: 54)
!876 = !DILocation(line: 370, column: 13, scope: !875)
!877 = !DILocation(line: 371, column: 2, scope: !875)
!878 = !DILocation(line: 372, column: 4, scope: !879)
!879 = distinct !DILexicalBlock(scope: !866, file: !405, line: 371, column: 9)
!880 = !DILocation(line: 372, column: 13, scope: !879)
!881 = !DILocation(line: 375, column: 38, scope: !807)
!882 = !DILocation(line: 375, column: 34, scope: !807)
!883 = !DILocation(line: 375, column: 28, scope: !807)
!884 = !DILocation(line: 375, column: 2, scope: !807)
!885 = !DILocation(line: 375, column: 12, scope: !807)
!886 = !DILocation(line: 375, column: 20, scope: !807)
!887 = !DILocation(line: 375, column: 25, scope: !807)
!888 = !DILocation(line: 377, column: 6, scope: !807)
!889 = !DILocation(line: 377, column: 2, scope: !807)
!890 = !DILabel(scope: !807, name: "out", file: !405, line: 379)
!891 = !DILocation(line: 379, column: 1, scope: !807)
!892 = !DILocation(line: 380, column: 17, scope: !807)
!893 = !DILocation(line: 380, column: 27, scope: !807)
!894 = !DILocation(line: 380, column: 2, scope: !807)
!895 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !896)
!896 = distinct !DILocation(line: 380, column: 2, scope: !807)
!897 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !896)
!898 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !896)
!899 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !896)
!900 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !901)
!901 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !896)
!902 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !901)
!903 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !901)
!904 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !901)
!905 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !901)
!906 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !901)
!907 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !901)
!908 = !DILocation(line: 381, column: 9, scope: !807)
!909 = !DILocation(line: 381, column: 2, scope: !807)
!910 = distinct !DISubprogram(name: "sys_bitarray_alloc", scope: !405, file: !405, line: 384, type: !911, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!911 = !DISubroutineType(types: !912)
!912 = !{!87, !408, !210, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!914 = !DILocalVariable(name: "bitarray", arg: 1, scope: !910, file: !405, line: 384, type: !408)
!915 = !DILocation(line: 384, column: 40, scope: !910)
!916 = !DILocalVariable(name: "num_bits", arg: 2, scope: !910, file: !405, line: 384, type: !210)
!917 = !DILocation(line: 384, column: 57, scope: !910)
!918 = !DILocalVariable(name: "offset", arg: 3, scope: !910, file: !405, line: 385, type: !913)
!919 = !DILocation(line: 385, column: 18, scope: !910)
!920 = !DILocalVariable(name: "key", scope: !910, file: !405, line: 387, type: !423)
!921 = !DILocation(line: 387, column: 19, scope: !910)
!922 = !DILocalVariable(name: "bit_idx", scope: !910, file: !405, line: 388, type: !88)
!923 = !DILocation(line: 388, column: 11, scope: !910)
!924 = !DILocalVariable(name: "ret", scope: !910, file: !405, line: 389, type: !87)
!925 = !DILocation(line: 389, column: 6, scope: !910)
!926 = !DILocalVariable(name: "bd", scope: !910, file: !405, line: 390, type: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bundle_data", file: !405, line: 18, size: 192, elements: !928)
!928 = !{!929, !930, !931, !932, !933, !934}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sidx", scope: !927, file: !405, line: 20, baseType: !210, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "eidx", scope: !927, file: !405, line: 20, baseType: !210, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "soff", scope: !927, file: !405, line: 23, baseType: !210, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "eoff", scope: !927, file: !405, line: 23, baseType: !210, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "smask", scope: !927, file: !405, line: 26, baseType: !88, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "emask", scope: !927, file: !405, line: 26, baseType: !88, size: 32, offset: 160)
!935 = !DILocation(line: 390, column: 21, scope: !910)
!936 = !DILocalVariable(name: "off_start", scope: !910, file: !405, line: 391, type: !210)
!937 = !DILocation(line: 391, column: 9, scope: !910)
!938 = !DILocalVariable(name: "off_end", scope: !910, file: !405, line: 391, type: !210)
!939 = !DILocation(line: 391, column: 20, scope: !910)
!940 = !DILocalVariable(name: "mismatch", scope: !910, file: !405, line: 392, type: !210)
!941 = !DILocation(line: 392, column: 9, scope: !910)
!942 = !DILocation(line: 397, column: 21, scope: !910)
!943 = !DILocation(line: 397, column: 31, scope: !910)
!944 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !945)
!945 = distinct !DILocation(line: 397, column: 8, scope: !910)
!946 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !945)
!947 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !945)
!948 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !949)
!949 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !945)
!950 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !949)
!951 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !949)
!952 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !945)
!953 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !945)
!954 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !955)
!955 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !945)
!956 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !955)
!957 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !945)
!958 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !959)
!959 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !945)
!960 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !959)
!961 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !945)
!962 = !DILocation(line: 397, column: 8, scope: !910)
!963 = !DILocation(line: 399, column: 6, scope: !964)
!964 = distinct !DILexicalBlock(scope: !910, file: !405, line: 399, column: 6)
!965 = !DILocation(line: 399, column: 13, scope: !964)
!966 = !DILocation(line: 399, column: 6, scope: !910)
!967 = !DILocation(line: 400, column: 7, scope: !968)
!968 = distinct !DILexicalBlock(scope: !964, file: !405, line: 399, column: 19)
!969 = !DILocation(line: 401, column: 3, scope: !968)
!970 = !DILocation(line: 404, column: 7, scope: !971)
!971 = distinct !DILexicalBlock(scope: !910, file: !405, line: 404, column: 6)
!972 = !DILocation(line: 404, column: 16, scope: !971)
!973 = !DILocation(line: 404, column: 22, scope: !971)
!974 = !DILocation(line: 404, column: 26, scope: !971)
!975 = !DILocation(line: 404, column: 37, scope: !971)
!976 = !DILocation(line: 404, column: 47, scope: !971)
!977 = !DILocation(line: 404, column: 35, scope: !971)
!978 = !DILocation(line: 404, column: 6, scope: !910)
!979 = !DILocation(line: 405, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !971, file: !405, line: 404, column: 58)
!981 = !DILocation(line: 406, column: 3, scope: !980)
!982 = !DILocation(line: 409, column: 10, scope: !910)
!983 = !DILocalVariable(name: "idx", scope: !984, file: !405, line: 417, type: !210)
!984 = distinct !DILexicalBlock(scope: !910, file: !405, line: 417, column: 2)
!985 = !DILocation(line: 417, column: 14, scope: !984)
!986 = !DILocation(line: 417, column: 7, scope: !984)
!987 = !DILocation(line: 417, column: 23, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !405, line: 417, column: 2)
!989 = !DILocation(line: 417, column: 29, scope: !988)
!990 = !DILocation(line: 417, column: 39, scope: !988)
!991 = !DILocation(line: 417, column: 27, scope: !988)
!992 = !DILocation(line: 417, column: 2, scope: !984)
!993 = !DILocation(line: 418, column: 8, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !405, line: 418, column: 7)
!995 = distinct !DILexicalBlock(scope: !988, file: !405, line: 417, column: 59)
!996 = !DILocation(line: 418, column: 18, scope: !994)
!997 = !DILocation(line: 418, column: 26, scope: !994)
!998 = !DILocation(line: 418, column: 7, scope: !994)
!999 = !DILocation(line: 418, column: 31, scope: !994)
!1000 = !DILocation(line: 418, column: 7, scope: !995)
!1001 = !DILocation(line: 420, column: 12, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !994, file: !405, line: 418, column: 38)
!1003 = !DILocation(line: 421, column: 4, scope: !1002)
!1004 = !DILocation(line: 424, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !995, file: !405, line: 424, column: 7)
!1006 = !DILocation(line: 424, column: 17, scope: !1005)
!1007 = !DILocation(line: 424, column: 25, scope: !1005)
!1008 = !DILocation(line: 424, column: 30, scope: !1005)
!1009 = !DILocation(line: 424, column: 7, scope: !995)
!1010 = !DILocation(line: 426, column: 30, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !405, line: 424, column: 37)
!1012 = !DILocation(line: 426, column: 40, scope: !1011)
!1013 = !DILocation(line: 426, column: 48, scope: !1011)
!1014 = !DILocation(line: 426, column: 29, scope: !1011)
!1015 = !DILocalVariable(name: "op", arg: 1, scope: !1016, file: !1017, line: 53, type: !88)
!1016 = distinct !DISubprogram(name: "find_lsb_set", scope: !1017, file: !1017, line: 53, type: !1018, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1017 = !DIFile(filename: "include/zephyr/arch/common/ffs.h", directory: "/home/sri/zephyrproject/zephyr")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!90, !88}
!1020 = !DILocation(line: 53, column: 81, scope: !1016, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 426, column: 16, scope: !1011)
!1022 = !DILocation(line: 56, column: 23, scope: !1016, inlinedAt: !1021)
!1023 = !DILocation(line: 56, column: 9, scope: !1016, inlinedAt: !1021)
!1024 = !DILocation(line: 426, column: 54, scope: !1011)
!1025 = !DILocation(line: 426, column: 14, scope: !1011)
!1026 = !DILocation(line: 427, column: 15, scope: !1011)
!1027 = !DILocation(line: 427, column: 12, scope: !1011)
!1028 = !DILocation(line: 428, column: 3, scope: !1011)
!1029 = !DILocation(line: 430, column: 3, scope: !995)
!1030 = !DILocation(line: 417, column: 55, scope: !988)
!1031 = !DILocation(line: 417, column: 2, scope: !988)
!1032 = distinct !{!1032, !992, !1033}
!1033 = !DILocation(line: 431, column: 2, scope: !984)
!1034 = !DILocation(line: 433, column: 12, scope: !910)
!1035 = !DILocation(line: 433, column: 22, scope: !910)
!1036 = !DILocation(line: 433, column: 33, scope: !910)
!1037 = !DILocation(line: 433, column: 31, scope: !910)
!1038 = !DILocation(line: 433, column: 10, scope: !910)
!1039 = !DILocation(line: 434, column: 6, scope: !910)
!1040 = !DILocation(line: 435, column: 2, scope: !910)
!1041 = !DILocation(line: 435, column: 9, scope: !910)
!1042 = !DILocation(line: 435, column: 20, scope: !910)
!1043 = !DILocation(line: 435, column: 17, scope: !910)
!1044 = !DILocation(line: 436, column: 20, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !405, line: 436, column: 7)
!1046 = distinct !DILexicalBlock(scope: !910, file: !405, line: 435, column: 29)
!1047 = !DILocation(line: 436, column: 30, scope: !1045)
!1048 = !DILocation(line: 436, column: 39, scope: !1045)
!1049 = !DILocation(line: 436, column: 7, scope: !1045)
!1050 = !DILocation(line: 436, column: 7, scope: !1046)
!1051 = !DILocation(line: 438, column: 15, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1045, file: !405, line: 437, column: 23)
!1053 = !DILocation(line: 438, column: 25, scope: !1052)
!1054 = !DILocation(line: 438, column: 34, scope: !1052)
!1055 = !DILocation(line: 438, column: 4, scope: !1052)
!1056 = !DILocation(line: 440, column: 14, scope: !1052)
!1057 = !DILocation(line: 440, column: 5, scope: !1052)
!1058 = !DILocation(line: 440, column: 12, scope: !1052)
!1059 = !DILocation(line: 441, column: 8, scope: !1052)
!1060 = !DILocation(line: 442, column: 4, scope: !1052)
!1061 = !DILocation(line: 448, column: 13, scope: !1046)
!1062 = !DILocation(line: 448, column: 22, scope: !1046)
!1063 = !DILocation(line: 448, column: 11, scope: !1046)
!1064 = distinct !{!1064, !1040, !1065}
!1065 = !DILocation(line: 449, column: 2, scope: !910)
!1066 = !DILabel(scope: !910, name: "out", file: !405, line: 451)
!1067 = !DILocation(line: 451, column: 1, scope: !910)
!1068 = !DILocation(line: 452, column: 17, scope: !910)
!1069 = !DILocation(line: 452, column: 27, scope: !910)
!1070 = !DILocation(line: 452, column: 2, scope: !910)
!1071 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 452, column: 2, scope: !910)
!1073 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !1072)
!1074 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !1072)
!1075 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !1072)
!1076 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !1072)
!1078 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !1077)
!1079 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !1077)
!1080 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !1077)
!1081 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !1077)
!1082 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !1077)
!1083 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !1077)
!1084 = !DILocation(line: 453, column: 9, scope: !910)
!1085 = !DILocation(line: 453, column: 2, scope: !910)
!1086 = distinct !DISubprogram(name: "match_region", scope: !405, file: !405, line: 65, type: !1087, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!1089, !408, !210, !210, !1089, !1090, !913}
!1089 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 32)
!1091 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1086, file: !405, line: 65, type: !408)
!1092 = !DILocation(line: 65, column: 43, scope: !1086)
!1093 = !DILocalVariable(name: "offset", arg: 2, scope: !1086, file: !405, line: 65, type: !210)
!1094 = !DILocation(line: 65, column: 60, scope: !1086)
!1095 = !DILocalVariable(name: "num_bits", arg: 3, scope: !1086, file: !405, line: 66, type: !210)
!1096 = !DILocation(line: 66, column: 12, scope: !1086)
!1097 = !DILocalVariable(name: "match_set", arg: 4, scope: !1086, file: !405, line: 66, type: !1089)
!1098 = !DILocation(line: 66, column: 28, scope: !1086)
!1099 = !DILocalVariable(name: "bd", arg: 5, scope: !1086, file: !405, line: 67, type: !1090)
!1100 = !DILocation(line: 67, column: 25, scope: !1086)
!1101 = !DILocalVariable(name: "mismatch", arg: 6, scope: !1086, file: !405, line: 68, type: !913)
!1102 = !DILocation(line: 68, column: 13, scope: !1086)
!1103 = !DILocalVariable(name: "idx", scope: !1086, file: !405, line: 70, type: !210)
!1104 = !DILocation(line: 70, column: 9, scope: !1086)
!1105 = !DILocalVariable(name: "bundle", scope: !1086, file: !405, line: 71, type: !88)
!1106 = !DILocation(line: 71, column: 11, scope: !1086)
!1107 = !DILocalVariable(name: "mismatch_bundle", scope: !1086, file: !405, line: 72, type: !88)
!1108 = !DILocation(line: 72, column: 11, scope: !1086)
!1109 = !DILocalVariable(name: "mismatch_bundle_idx", scope: !1086, file: !405, line: 73, type: !210)
!1110 = !DILocation(line: 73, column: 9, scope: !1086)
!1111 = !DILocalVariable(name: "mismatch_bit_off", scope: !1086, file: !405, line: 74, type: !210)
!1112 = !DILocation(line: 74, column: 9, scope: !1086)
!1113 = !DILocation(line: 76, column: 20, scope: !1086)
!1114 = !DILocation(line: 76, column: 30, scope: !1086)
!1115 = !DILocation(line: 76, column: 34, scope: !1086)
!1116 = !DILocation(line: 76, column: 42, scope: !1086)
!1117 = !DILocation(line: 76, column: 2, scope: !1086)
!1118 = !DILocation(line: 78, column: 6, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 78, column: 6)
!1120 = !DILocation(line: 78, column: 10, scope: !1119)
!1121 = !DILocation(line: 78, column: 18, scope: !1119)
!1122 = !DILocation(line: 78, column: 22, scope: !1119)
!1123 = !DILocation(line: 78, column: 15, scope: !1119)
!1124 = !DILocation(line: 78, column: 6, scope: !1086)
!1125 = !DILocation(line: 79, column: 12, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1119, file: !405, line: 78, column: 28)
!1127 = !DILocation(line: 79, column: 22, scope: !1126)
!1128 = !DILocation(line: 79, column: 30, scope: !1126)
!1129 = !DILocation(line: 79, column: 34, scope: !1126)
!1130 = !DILocation(line: 79, column: 10, scope: !1126)
!1131 = !DILocation(line: 80, column: 8, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !405, line: 80, column: 7)
!1133 = !DILocation(line: 80, column: 7, scope: !1126)
!1134 = !DILocation(line: 81, column: 14, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !405, line: 80, column: 19)
!1136 = !DILocation(line: 81, column: 13, scope: !1135)
!1137 = !DILocation(line: 81, column: 11, scope: !1135)
!1138 = !DILocation(line: 82, column: 3, scope: !1135)
!1139 = !DILocation(line: 84, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1126, file: !405, line: 84, column: 7)
!1141 = !DILocation(line: 84, column: 17, scope: !1140)
!1142 = !DILocation(line: 84, column: 21, scope: !1140)
!1143 = !DILocation(line: 84, column: 15, scope: !1140)
!1144 = !DILocation(line: 84, column: 31, scope: !1140)
!1145 = !DILocation(line: 84, column: 35, scope: !1140)
!1146 = !DILocation(line: 84, column: 28, scope: !1140)
!1147 = !DILocation(line: 84, column: 7, scope: !1126)
!1148 = !DILocation(line: 86, column: 23, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !405, line: 84, column: 42)
!1150 = !DILocation(line: 86, column: 22, scope: !1149)
!1151 = !DILocation(line: 86, column: 32, scope: !1149)
!1152 = !DILocation(line: 86, column: 36, scope: !1149)
!1153 = !DILocation(line: 86, column: 30, scope: !1149)
!1154 = !DILocation(line: 86, column: 20, scope: !1149)
!1155 = !DILocation(line: 87, column: 26, scope: !1149)
!1156 = !DILocation(line: 87, column: 30, scope: !1149)
!1157 = !DILocation(line: 87, column: 24, scope: !1149)
!1158 = !DILocation(line: 88, column: 4, scope: !1149)
!1159 = !DILocation(line: 91, column: 4, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1140, file: !405, line: 89, column: 10)
!1161 = !DILocation(line: 98, column: 11, scope: !1086)
!1162 = !DILocation(line: 98, column: 21, scope: !1086)
!1163 = !DILocation(line: 98, column: 29, scope: !1086)
!1164 = !DILocation(line: 98, column: 33, scope: !1086)
!1165 = !DILocation(line: 98, column: 9, scope: !1086)
!1166 = !DILocation(line: 99, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 99, column: 6)
!1168 = !DILocation(line: 99, column: 6, scope: !1086)
!1169 = !DILocation(line: 100, column: 13, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !405, line: 99, column: 18)
!1171 = !DILocation(line: 100, column: 12, scope: !1170)
!1172 = !DILocation(line: 100, column: 10, scope: !1170)
!1173 = !DILocation(line: 101, column: 2, scope: !1170)
!1174 = !DILocation(line: 103, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 103, column: 6)
!1176 = !DILocation(line: 103, column: 16, scope: !1175)
!1177 = !DILocation(line: 103, column: 20, scope: !1175)
!1178 = !DILocation(line: 103, column: 14, scope: !1175)
!1179 = !DILocation(line: 103, column: 30, scope: !1175)
!1180 = !DILocation(line: 103, column: 34, scope: !1175)
!1181 = !DILocation(line: 103, column: 27, scope: !1175)
!1182 = !DILocation(line: 103, column: 6, scope: !1086)
!1183 = !DILocation(line: 105, column: 22, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1175, file: !405, line: 103, column: 41)
!1185 = !DILocation(line: 105, column: 21, scope: !1184)
!1186 = !DILocation(line: 105, column: 31, scope: !1184)
!1187 = !DILocation(line: 105, column: 35, scope: !1184)
!1188 = !DILocation(line: 105, column: 29, scope: !1184)
!1189 = !DILocation(line: 105, column: 19, scope: !1184)
!1190 = !DILocation(line: 106, column: 25, scope: !1184)
!1191 = !DILocation(line: 106, column: 29, scope: !1184)
!1192 = !DILocation(line: 106, column: 23, scope: !1184)
!1193 = !DILocation(line: 107, column: 3, scope: !1184)
!1194 = !DILocation(line: 111, column: 11, scope: !1086)
!1195 = !DILocation(line: 111, column: 21, scope: !1086)
!1196 = !DILocation(line: 111, column: 29, scope: !1086)
!1197 = !DILocation(line: 111, column: 33, scope: !1086)
!1198 = !DILocation(line: 111, column: 9, scope: !1086)
!1199 = !DILocation(line: 112, column: 7, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 112, column: 6)
!1201 = !DILocation(line: 112, column: 6, scope: !1086)
!1202 = !DILocation(line: 113, column: 13, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !405, line: 112, column: 18)
!1204 = !DILocation(line: 113, column: 12, scope: !1203)
!1205 = !DILocation(line: 113, column: 10, scope: !1203)
!1206 = !DILocation(line: 114, column: 2, scope: !1203)
!1207 = !DILocation(line: 116, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 116, column: 6)
!1209 = !DILocation(line: 116, column: 16, scope: !1208)
!1210 = !DILocation(line: 116, column: 20, scope: !1208)
!1211 = !DILocation(line: 116, column: 14, scope: !1208)
!1212 = !DILocation(line: 116, column: 30, scope: !1208)
!1213 = !DILocation(line: 116, column: 34, scope: !1208)
!1214 = !DILocation(line: 116, column: 27, scope: !1208)
!1215 = !DILocation(line: 116, column: 6, scope: !1086)
!1216 = !DILocation(line: 118, column: 22, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1208, file: !405, line: 116, column: 41)
!1218 = !DILocation(line: 118, column: 21, scope: !1217)
!1219 = !DILocation(line: 118, column: 31, scope: !1217)
!1220 = !DILocation(line: 118, column: 35, scope: !1217)
!1221 = !DILocation(line: 118, column: 29, scope: !1217)
!1222 = !DILocation(line: 118, column: 19, scope: !1217)
!1223 = !DILocation(line: 119, column: 25, scope: !1217)
!1224 = !DILocation(line: 119, column: 29, scope: !1217)
!1225 = !DILocation(line: 119, column: 23, scope: !1217)
!1226 = !DILocation(line: 120, column: 3, scope: !1217)
!1227 = !DILocation(line: 124, column: 13, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 124, column: 2)
!1229 = !DILocation(line: 124, column: 17, scope: !1228)
!1230 = !DILocation(line: 124, column: 22, scope: !1228)
!1231 = !DILocation(line: 124, column: 11, scope: !1228)
!1232 = !DILocation(line: 124, column: 7, scope: !1228)
!1233 = !DILocation(line: 124, column: 27, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !405, line: 124, column: 2)
!1235 = !DILocation(line: 124, column: 33, scope: !1234)
!1236 = !DILocation(line: 124, column: 37, scope: !1234)
!1237 = !DILocation(line: 124, column: 31, scope: !1234)
!1238 = !DILocation(line: 124, column: 2, scope: !1228)
!1239 = !DILocation(line: 128, column: 12, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !405, line: 124, column: 50)
!1241 = !DILocation(line: 128, column: 22, scope: !1240)
!1242 = !DILocation(line: 128, column: 30, scope: !1240)
!1243 = !DILocation(line: 128, column: 10, scope: !1240)
!1244 = !DILocation(line: 129, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !405, line: 129, column: 7)
!1246 = !DILocation(line: 129, column: 7, scope: !1240)
!1247 = !DILocation(line: 130, column: 14, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !405, line: 129, column: 18)
!1249 = !DILocation(line: 130, column: 13, scope: !1248)
!1250 = !DILocation(line: 130, column: 11, scope: !1248)
!1251 = !DILocation(line: 131, column: 3, scope: !1248)
!1252 = !DILocation(line: 133, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1240, file: !405, line: 133, column: 7)
!1254 = !DILocation(line: 133, column: 14, scope: !1253)
!1255 = !DILocation(line: 133, column: 7, scope: !1240)
!1256 = !DILocation(line: 135, column: 22, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !405, line: 133, column: 21)
!1258 = !DILocation(line: 135, column: 20, scope: !1257)
!1259 = !DILocation(line: 136, column: 26, scope: !1257)
!1260 = !DILocation(line: 136, column: 24, scope: !1257)
!1261 = !DILocation(line: 137, column: 4, scope: !1257)
!1262 = !DILocation(line: 139, column: 2, scope: !1240)
!1263 = !DILocation(line: 124, column: 46, scope: !1234)
!1264 = !DILocation(line: 124, column: 2, scope: !1234)
!1265 = distinct !{!1265, !1238, !1266}
!1266 = !DILocation(line: 139, column: 2, scope: !1228)
!1267 = !DILabel(scope: !1086, name: "out", file: !405, line: 141)
!1268 = !DILocation(line: 141, column: 1, scope: !1086)
!1269 = !DILocation(line: 143, column: 2, scope: !1086)
!1270 = !DILabel(scope: !1086, name: "mismatch", file: !405, line: 145)
!1271 = !DILocation(line: 145, column: 1, scope: !1086)
!1272 = !DILocation(line: 146, column: 6, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1086, file: !405, line: 146, column: 6)
!1274 = !DILocation(line: 146, column: 15, scope: !1273)
!1275 = !DILocation(line: 146, column: 6, scope: !1086)
!1276 = !DILocation(line: 152, column: 35, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1273, file: !405, line: 146, column: 21)
!1278 = !DILocation(line: 53, column: 81, scope: !1016, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 152, column: 22, scope: !1277)
!1280 = !DILocation(line: 56, column: 23, scope: !1016, inlinedAt: !1279)
!1281 = !DILocation(line: 56, column: 9, scope: !1016, inlinedAt: !1279)
!1282 = !DILocation(line: 152, column: 52, scope: !1277)
!1283 = !DILocation(line: 152, column: 20, scope: !1277)
!1284 = !DILocation(line: 153, column: 23, scope: !1277)
!1285 = !DILocation(line: 153, column: 43, scope: !1277)
!1286 = !DILocation(line: 153, column: 20, scope: !1277)
!1287 = !DILocation(line: 155, column: 25, scope: !1277)
!1288 = !DILocation(line: 155, column: 4, scope: !1277)
!1289 = !DILocation(line: 155, column: 13, scope: !1277)
!1290 = !DILocation(line: 156, column: 2, scope: !1277)
!1291 = !DILocation(line: 157, column: 2, scope: !1086)
!1292 = !DILocation(line: 158, column: 1, scope: !1086)
!1293 = distinct !DISubprogram(name: "set_region", scope: !405, file: !405, line: 172, type: !1294, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !408, !210, !210, !1089, !1090}
!1296 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1293, file: !405, line: 172, type: !408)
!1297 = !DILocation(line: 172, column: 40, scope: !1293)
!1298 = !DILocalVariable(name: "offset", arg: 2, scope: !1293, file: !405, line: 172, type: !210)
!1299 = !DILocation(line: 172, column: 57, scope: !1293)
!1300 = !DILocalVariable(name: "num_bits", arg: 3, scope: !1293, file: !405, line: 173, type: !210)
!1301 = !DILocation(line: 173, column: 17, scope: !1293)
!1302 = !DILocalVariable(name: "to_set", arg: 4, scope: !1293, file: !405, line: 173, type: !1089)
!1303 = !DILocation(line: 173, column: 33, scope: !1293)
!1304 = !DILocalVariable(name: "bd", arg: 5, scope: !1293, file: !405, line: 174, type: !1090)
!1305 = !DILocation(line: 174, column: 30, scope: !1293)
!1306 = !DILocalVariable(name: "idx", scope: !1293, file: !405, line: 176, type: !210)
!1307 = !DILocation(line: 176, column: 9, scope: !1293)
!1308 = !DILocalVariable(name: "bdata", scope: !1293, file: !405, line: 177, type: !927)
!1309 = !DILocation(line: 177, column: 21, scope: !1293)
!1310 = !DILocation(line: 179, column: 6, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1293, file: !405, line: 179, column: 6)
!1312 = !DILocation(line: 179, column: 9, scope: !1311)
!1313 = !DILocation(line: 179, column: 6, scope: !1293)
!1314 = !DILocation(line: 180, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1311, file: !405, line: 179, column: 15)
!1316 = !DILocation(line: 181, column: 21, scope: !1315)
!1317 = !DILocation(line: 181, column: 31, scope: !1315)
!1318 = !DILocation(line: 181, column: 35, scope: !1315)
!1319 = !DILocation(line: 181, column: 43, scope: !1315)
!1320 = !DILocation(line: 181, column: 3, scope: !1315)
!1321 = !DILocation(line: 182, column: 2, scope: !1315)
!1322 = !DILocation(line: 184, column: 6, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1293, file: !405, line: 184, column: 6)
!1324 = !DILocation(line: 184, column: 10, scope: !1323)
!1325 = !DILocation(line: 184, column: 18, scope: !1323)
!1326 = !DILocation(line: 184, column: 22, scope: !1323)
!1327 = !DILocation(line: 184, column: 15, scope: !1323)
!1328 = !DILocation(line: 184, column: 6, scope: !1293)
!1329 = !DILocation(line: 186, column: 7, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !405, line: 186, column: 7)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !405, line: 184, column: 28)
!1332 = !DILocation(line: 186, column: 7, scope: !1331)
!1333 = !DILocation(line: 187, column: 35, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1330, file: !405, line: 186, column: 15)
!1335 = !DILocation(line: 187, column: 39, scope: !1334)
!1336 = !DILocation(line: 187, column: 4, scope: !1334)
!1337 = !DILocation(line: 187, column: 14, scope: !1334)
!1338 = !DILocation(line: 187, column: 22, scope: !1334)
!1339 = !DILocation(line: 187, column: 26, scope: !1334)
!1340 = !DILocation(line: 187, column: 32, scope: !1334)
!1341 = !DILocation(line: 188, column: 3, scope: !1334)
!1342 = !DILocation(line: 189, column: 36, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !405, line: 188, column: 10)
!1344 = !DILocation(line: 189, column: 40, scope: !1343)
!1345 = !DILocation(line: 189, column: 35, scope: !1343)
!1346 = !DILocation(line: 189, column: 4, scope: !1343)
!1347 = !DILocation(line: 189, column: 14, scope: !1343)
!1348 = !DILocation(line: 189, column: 22, scope: !1343)
!1349 = !DILocation(line: 189, column: 26, scope: !1343)
!1350 = !DILocation(line: 189, column: 32, scope: !1343)
!1351 = !DILocation(line: 191, column: 2, scope: !1331)
!1352 = !DILocation(line: 197, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !405, line: 197, column: 7)
!1354 = distinct !DILexicalBlock(scope: !1323, file: !405, line: 191, column: 9)
!1355 = !DILocation(line: 197, column: 7, scope: !1354)
!1356 = !DILocation(line: 198, column: 35, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !405, line: 197, column: 15)
!1358 = !DILocation(line: 198, column: 39, scope: !1357)
!1359 = !DILocation(line: 198, column: 4, scope: !1357)
!1360 = !DILocation(line: 198, column: 14, scope: !1357)
!1361 = !DILocation(line: 198, column: 22, scope: !1357)
!1362 = !DILocation(line: 198, column: 26, scope: !1357)
!1363 = !DILocation(line: 198, column: 32, scope: !1357)
!1364 = !DILocation(line: 199, column: 35, scope: !1357)
!1365 = !DILocation(line: 199, column: 39, scope: !1357)
!1366 = !DILocation(line: 199, column: 4, scope: !1357)
!1367 = !DILocation(line: 199, column: 14, scope: !1357)
!1368 = !DILocation(line: 199, column: 22, scope: !1357)
!1369 = !DILocation(line: 199, column: 26, scope: !1357)
!1370 = !DILocation(line: 199, column: 32, scope: !1357)
!1371 = !DILocation(line: 200, column: 15, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1357, file: !405, line: 200, column: 4)
!1373 = !DILocation(line: 200, column: 19, scope: !1372)
!1374 = !DILocation(line: 200, column: 24, scope: !1372)
!1375 = !DILocation(line: 200, column: 13, scope: !1372)
!1376 = !DILocation(line: 200, column: 9, scope: !1372)
!1377 = !DILocation(line: 200, column: 29, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1372, file: !405, line: 200, column: 4)
!1379 = !DILocation(line: 200, column: 35, scope: !1378)
!1380 = !DILocation(line: 200, column: 39, scope: !1378)
!1381 = !DILocation(line: 200, column: 33, scope: !1378)
!1382 = !DILocation(line: 200, column: 4, scope: !1372)
!1383 = !DILocation(line: 201, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1378, file: !405, line: 200, column: 52)
!1385 = !DILocation(line: 201, column: 15, scope: !1384)
!1386 = !DILocation(line: 201, column: 23, scope: !1384)
!1387 = !DILocation(line: 201, column: 28, scope: !1384)
!1388 = !DILocation(line: 202, column: 4, scope: !1384)
!1389 = !DILocation(line: 200, column: 48, scope: !1378)
!1390 = !DILocation(line: 200, column: 4, scope: !1378)
!1391 = distinct !{!1391, !1382, !1392}
!1392 = !DILocation(line: 202, column: 4, scope: !1372)
!1393 = !DILocation(line: 203, column: 3, scope: !1357)
!1394 = !DILocation(line: 204, column: 36, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1353, file: !405, line: 203, column: 10)
!1396 = !DILocation(line: 204, column: 40, scope: !1395)
!1397 = !DILocation(line: 204, column: 35, scope: !1395)
!1398 = !DILocation(line: 204, column: 4, scope: !1395)
!1399 = !DILocation(line: 204, column: 14, scope: !1395)
!1400 = !DILocation(line: 204, column: 22, scope: !1395)
!1401 = !DILocation(line: 204, column: 26, scope: !1395)
!1402 = !DILocation(line: 204, column: 32, scope: !1395)
!1403 = !DILocation(line: 205, column: 36, scope: !1395)
!1404 = !DILocation(line: 205, column: 40, scope: !1395)
!1405 = !DILocation(line: 205, column: 35, scope: !1395)
!1406 = !DILocation(line: 205, column: 4, scope: !1395)
!1407 = !DILocation(line: 205, column: 14, scope: !1395)
!1408 = !DILocation(line: 205, column: 22, scope: !1395)
!1409 = !DILocation(line: 205, column: 26, scope: !1395)
!1410 = !DILocation(line: 205, column: 32, scope: !1395)
!1411 = !DILocation(line: 206, column: 15, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1395, file: !405, line: 206, column: 4)
!1413 = !DILocation(line: 206, column: 19, scope: !1412)
!1414 = !DILocation(line: 206, column: 24, scope: !1412)
!1415 = !DILocation(line: 206, column: 13, scope: !1412)
!1416 = !DILocation(line: 206, column: 9, scope: !1412)
!1417 = !DILocation(line: 206, column: 29, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !405, line: 206, column: 4)
!1419 = !DILocation(line: 206, column: 35, scope: !1418)
!1420 = !DILocation(line: 206, column: 39, scope: !1418)
!1421 = !DILocation(line: 206, column: 33, scope: !1418)
!1422 = !DILocation(line: 206, column: 4, scope: !1412)
!1423 = !DILocation(line: 207, column: 5, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1418, file: !405, line: 206, column: 52)
!1425 = !DILocation(line: 207, column: 15, scope: !1424)
!1426 = !DILocation(line: 207, column: 23, scope: !1424)
!1427 = !DILocation(line: 207, column: 28, scope: !1424)
!1428 = !DILocation(line: 208, column: 4, scope: !1424)
!1429 = !DILocation(line: 206, column: 48, scope: !1418)
!1430 = !DILocation(line: 206, column: 4, scope: !1418)
!1431 = distinct !{!1431, !1422, !1432}
!1432 = !DILocation(line: 208, column: 4, scope: !1412)
!1433 = !DILocation(line: 211, column: 1, scope: !1293)
!1434 = distinct !DISubprogram(name: "sys_bitarray_free", scope: !405, file: !405, line: 456, type: !1435, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!87, !408, !210, !210}
!1437 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1434, file: !405, line: 456, type: !408)
!1438 = !DILocation(line: 456, column: 39, scope: !1434)
!1439 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1434, file: !405, line: 456, type: !210)
!1440 = !DILocation(line: 456, column: 56, scope: !1434)
!1441 = !DILocalVariable(name: "offset", arg: 3, scope: !1434, file: !405, line: 457, type: !210)
!1442 = !DILocation(line: 457, column: 16, scope: !1434)
!1443 = !DILocalVariable(name: "key", scope: !1434, file: !405, line: 459, type: !423)
!1444 = !DILocation(line: 459, column: 19, scope: !1434)
!1445 = !DILocalVariable(name: "ret", scope: !1434, file: !405, line: 460, type: !87)
!1446 = !DILocation(line: 460, column: 6, scope: !1434)
!1447 = !DILocalVariable(name: "off_end", scope: !1434, file: !405, line: 461, type: !210)
!1448 = !DILocation(line: 461, column: 9, scope: !1434)
!1449 = !DILocation(line: 461, column: 19, scope: !1434)
!1450 = !DILocation(line: 461, column: 28, scope: !1434)
!1451 = !DILocation(line: 461, column: 26, scope: !1434)
!1452 = !DILocation(line: 461, column: 37, scope: !1434)
!1453 = !DILocalVariable(name: "bd", scope: !1434, file: !405, line: 462, type: !927)
!1454 = !DILocation(line: 462, column: 21, scope: !1434)
!1455 = !DILocation(line: 467, column: 21, scope: !1434)
!1456 = !DILocation(line: 467, column: 31, scope: !1434)
!1457 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !1458)
!1458 = distinct !DILocation(line: 467, column: 8, scope: !1434)
!1459 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !1458)
!1460 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !1458)
!1461 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !1458)
!1463 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !1462)
!1464 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !1462)
!1465 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !1458)
!1466 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !1458)
!1467 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !1468)
!1468 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !1458)
!1469 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !1468)
!1470 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !1458)
!1471 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !1472)
!1472 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !1458)
!1473 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !1472)
!1474 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !1458)
!1475 = !DILocation(line: 467, column: 8, scope: !1434)
!1476 = !DILocation(line: 469, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1434, file: !405, line: 469, column: 6)
!1478 = !DILocation(line: 469, column: 16, scope: !1477)
!1479 = !DILocation(line: 470, column: 6, scope: !1477)
!1480 = !DILocation(line: 470, column: 10, scope: !1477)
!1481 = !DILocation(line: 470, column: 21, scope: !1477)
!1482 = !DILocation(line: 470, column: 31, scope: !1477)
!1483 = !DILocation(line: 470, column: 19, scope: !1477)
!1484 = !DILocation(line: 471, column: 6, scope: !1477)
!1485 = !DILocation(line: 471, column: 10, scope: !1477)
!1486 = !DILocation(line: 471, column: 20, scope: !1477)
!1487 = !DILocation(line: 471, column: 30, scope: !1477)
!1488 = !DILocation(line: 471, column: 17, scope: !1477)
!1489 = !DILocation(line: 472, column: 6, scope: !1477)
!1490 = !DILocation(line: 472, column: 10, scope: !1477)
!1491 = !DILocation(line: 472, column: 21, scope: !1477)
!1492 = !DILocation(line: 472, column: 31, scope: !1477)
!1493 = !DILocation(line: 472, column: 18, scope: !1477)
!1494 = !DILocation(line: 469, column: 6, scope: !1434)
!1495 = !DILocation(line: 473, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1477, file: !405, line: 472, column: 42)
!1497 = !DILocation(line: 474, column: 3, scope: !1496)
!1498 = !DILocation(line: 481, column: 19, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1434, file: !405, line: 481, column: 6)
!1500 = !DILocation(line: 481, column: 29, scope: !1499)
!1501 = !DILocation(line: 481, column: 37, scope: !1499)
!1502 = !DILocation(line: 481, column: 6, scope: !1499)
!1503 = !DILocation(line: 481, column: 6, scope: !1434)
!1504 = !DILocation(line: 482, column: 14, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1499, file: !405, line: 481, column: 59)
!1506 = !DILocation(line: 482, column: 24, scope: !1505)
!1507 = !DILocation(line: 482, column: 32, scope: !1505)
!1508 = !DILocation(line: 482, column: 3, scope: !1505)
!1509 = !DILocation(line: 483, column: 7, scope: !1505)
!1510 = !DILocation(line: 484, column: 2, scope: !1505)
!1511 = !DILocation(line: 485, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1499, file: !405, line: 484, column: 9)
!1513 = !DILocation(line: 481, column: 56, scope: !1499)
!1514 = !DILabel(scope: !1434, name: "out", file: !405, line: 488)
!1515 = !DILocation(line: 488, column: 1, scope: !1434)
!1516 = !DILocation(line: 489, column: 17, scope: !1434)
!1517 = !DILocation(line: 489, column: 27, scope: !1434)
!1518 = !DILocation(line: 489, column: 2, scope: !1434)
!1519 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 489, column: 2, scope: !1434)
!1521 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !1520)
!1522 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !1520)
!1523 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !1520)
!1524 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !1520)
!1526 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !1525)
!1527 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !1525)
!1528 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !1525)
!1529 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !1525)
!1530 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !1525)
!1531 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !1525)
!1532 = !DILocation(line: 490, column: 9, scope: !1434)
!1533 = !DILocation(line: 490, column: 2, scope: !1434)
!1534 = distinct !DISubprogram(name: "sys_bitarray_is_region_set", scope: !405, file: !405, line: 519, type: !1535, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!1089, !408, !210, !210}
!1537 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1534, file: !405, line: 519, type: !408)
!1538 = !DILocation(line: 519, column: 50, scope: !1534)
!1539 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1534, file: !405, line: 519, type: !210)
!1540 = !DILocation(line: 519, column: 67, scope: !1534)
!1541 = !DILocalVariable(name: "offset", arg: 3, scope: !1534, file: !405, line: 520, type: !210)
!1542 = !DILocation(line: 520, column: 12, scope: !1534)
!1543 = !DILocation(line: 522, column: 29, scope: !1534)
!1544 = !DILocation(line: 522, column: 39, scope: !1534)
!1545 = !DILocation(line: 522, column: 49, scope: !1534)
!1546 = !DILocation(line: 522, column: 9, scope: !1534)
!1547 = !DILocation(line: 522, column: 2, scope: !1534)
!1548 = distinct !DISubprogram(name: "is_region_set_clear", scope: !405, file: !405, line: 493, type: !1549, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!1089, !408, !210, !210, !1089}
!1551 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1548, file: !405, line: 493, type: !408)
!1552 = !DILocation(line: 493, column: 50, scope: !1548)
!1553 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1548, file: !405, line: 493, type: !210)
!1554 = !DILocation(line: 493, column: 67, scope: !1548)
!1555 = !DILocalVariable(name: "offset", arg: 3, scope: !1548, file: !405, line: 494, type: !210)
!1556 = !DILocation(line: 494, column: 12, scope: !1548)
!1557 = !DILocalVariable(name: "to_set", arg: 4, scope: !1548, file: !405, line: 494, type: !1089)
!1558 = !DILocation(line: 494, column: 26, scope: !1548)
!1559 = !DILocalVariable(name: "ret", scope: !1548, file: !405, line: 496, type: !1089)
!1560 = !DILocation(line: 496, column: 8, scope: !1548)
!1561 = !DILocalVariable(name: "bd", scope: !1548, file: !405, line: 497, type: !927)
!1562 = !DILocation(line: 497, column: 21, scope: !1548)
!1563 = !DILocalVariable(name: "off_end", scope: !1548, file: !405, line: 498, type: !210)
!1564 = !DILocation(line: 498, column: 9, scope: !1548)
!1565 = !DILocation(line: 498, column: 19, scope: !1548)
!1566 = !DILocation(line: 498, column: 28, scope: !1548)
!1567 = !DILocation(line: 498, column: 26, scope: !1548)
!1568 = !DILocation(line: 498, column: 37, scope: !1548)
!1569 = !DILocalVariable(name: "key", scope: !1548, file: !405, line: 499, type: !423)
!1570 = !DILocation(line: 499, column: 19, scope: !1548)
!1571 = !DILocation(line: 499, column: 38, scope: !1548)
!1572 = !DILocation(line: 499, column: 48, scope: !1548)
!1573 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 499, column: 25, scope: !1548)
!1575 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !1574)
!1576 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !1574)
!1577 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !1574)
!1579 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !1578)
!1580 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !1578)
!1581 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !1574)
!1582 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !1574)
!1583 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !1584)
!1584 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !1574)
!1585 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !1584)
!1586 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !1574)
!1587 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !1574)
!1589 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !1588)
!1590 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !1574)
!1591 = !DILocation(line: 499, column: 25, scope: !1548)
!1592 = !DILocation(line: 504, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1548, file: !405, line: 504, column: 6)
!1594 = !DILocation(line: 504, column: 16, scope: !1593)
!1595 = !DILocation(line: 505, column: 6, scope: !1593)
!1596 = !DILocation(line: 505, column: 10, scope: !1593)
!1597 = !DILocation(line: 505, column: 21, scope: !1593)
!1598 = !DILocation(line: 505, column: 31, scope: !1593)
!1599 = !DILocation(line: 505, column: 19, scope: !1593)
!1600 = !DILocation(line: 506, column: 6, scope: !1593)
!1601 = !DILocation(line: 506, column: 10, scope: !1593)
!1602 = !DILocation(line: 506, column: 20, scope: !1593)
!1603 = !DILocation(line: 506, column: 30, scope: !1593)
!1604 = !DILocation(line: 506, column: 17, scope: !1593)
!1605 = !DILocation(line: 507, column: 6, scope: !1593)
!1606 = !DILocation(line: 507, column: 10, scope: !1593)
!1607 = !DILocation(line: 507, column: 21, scope: !1593)
!1608 = !DILocation(line: 507, column: 31, scope: !1593)
!1609 = !DILocation(line: 507, column: 18, scope: !1593)
!1610 = !DILocation(line: 504, column: 6, scope: !1548)
!1611 = !DILocation(line: 508, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1593, file: !405, line: 507, column: 42)
!1613 = !DILocation(line: 509, column: 3, scope: !1612)
!1614 = !DILocation(line: 512, column: 21, scope: !1548)
!1615 = !DILocation(line: 512, column: 31, scope: !1548)
!1616 = !DILocation(line: 512, column: 39, scope: !1548)
!1617 = !DILocation(line: 512, column: 49, scope: !1548)
!1618 = !DILocation(line: 512, column: 8, scope: !1548)
!1619 = !DILocation(line: 512, column: 6, scope: !1548)
!1620 = !DILocation(line: 512, column: 2, scope: !1548)
!1621 = !DILabel(scope: !1548, name: "out", file: !405, line: 514)
!1622 = !DILocation(line: 514, column: 1, scope: !1548)
!1623 = !DILocation(line: 515, column: 17, scope: !1548)
!1624 = !DILocation(line: 515, column: 27, scope: !1548)
!1625 = !DILocation(line: 515, column: 2, scope: !1548)
!1626 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 515, column: 2, scope: !1548)
!1628 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !1627)
!1629 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !1627)
!1630 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !1627)
!1631 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !1632)
!1632 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !1627)
!1633 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !1632)
!1634 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !1632)
!1635 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !1632)
!1636 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !1632)
!1637 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !1632)
!1638 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !1632)
!1639 = !DILocation(line: 516, column: 9, scope: !1548)
!1640 = !DILocation(line: 516, column: 2, scope: !1548)
!1641 = distinct !DISubprogram(name: "sys_bitarray_is_region_cleared", scope: !405, file: !405, line: 525, type: !1535, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1642 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1641, file: !405, line: 525, type: !408)
!1643 = !DILocation(line: 525, column: 54, scope: !1641)
!1644 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1641, file: !405, line: 525, type: !210)
!1645 = !DILocation(line: 525, column: 71, scope: !1641)
!1646 = !DILocalVariable(name: "offset", arg: 3, scope: !1641, file: !405, line: 526, type: !210)
!1647 = !DILocation(line: 526, column: 16, scope: !1641)
!1648 = !DILocation(line: 528, column: 29, scope: !1641)
!1649 = !DILocation(line: 528, column: 39, scope: !1641)
!1650 = !DILocation(line: 528, column: 49, scope: !1641)
!1651 = !DILocation(line: 528, column: 9, scope: !1641)
!1652 = !DILocation(line: 528, column: 2, scope: !1641)
!1653 = distinct !DISubprogram(name: "sys_bitarray_test_and_set_region", scope: !405, file: !405, line: 557, type: !1654, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!87, !408, !210, !210, !1089}
!1656 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1653, file: !405, line: 557, type: !408)
!1657 = !DILocation(line: 557, column: 54, scope: !1653)
!1658 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1653, file: !405, line: 557, type: !210)
!1659 = !DILocation(line: 557, column: 71, scope: !1653)
!1660 = !DILocalVariable(name: "offset", arg: 3, scope: !1653, file: !405, line: 558, type: !210)
!1661 = !DILocation(line: 558, column: 17, scope: !1653)
!1662 = !DILocalVariable(name: "to_set", arg: 4, scope: !1653, file: !405, line: 558, type: !1089)
!1663 = !DILocation(line: 558, column: 31, scope: !1653)
!1664 = !DILocalVariable(name: "ret", scope: !1653, file: !405, line: 560, type: !87)
!1665 = !DILocation(line: 560, column: 6, scope: !1653)
!1666 = !DILocalVariable(name: "region_clear", scope: !1653, file: !405, line: 561, type: !1089)
!1667 = !DILocation(line: 561, column: 8, scope: !1653)
!1668 = !DILocalVariable(name: "bd", scope: !1653, file: !405, line: 562, type: !927)
!1669 = !DILocation(line: 562, column: 21, scope: !1653)
!1670 = !DILocalVariable(name: "off_end", scope: !1653, file: !405, line: 567, type: !210)
!1671 = !DILocation(line: 567, column: 9, scope: !1653)
!1672 = !DILocation(line: 567, column: 19, scope: !1653)
!1673 = !DILocation(line: 567, column: 28, scope: !1653)
!1674 = !DILocation(line: 567, column: 26, scope: !1653)
!1675 = !DILocation(line: 567, column: 37, scope: !1653)
!1676 = !DILocalVariable(name: "key", scope: !1653, file: !405, line: 568, type: !423)
!1677 = !DILocation(line: 568, column: 19, scope: !1653)
!1678 = !DILocation(line: 568, column: 38, scope: !1653)
!1679 = !DILocation(line: 568, column: 48, scope: !1653)
!1680 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !1681)
!1681 = distinct !DILocation(line: 568, column: 25, scope: !1653)
!1682 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !1681)
!1683 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !1681)
!1684 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !1681)
!1686 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !1685)
!1687 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !1685)
!1688 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !1681)
!1689 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !1681)
!1690 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !1681)
!1692 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !1691)
!1693 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !1681)
!1694 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !1681)
!1696 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !1695)
!1697 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !1681)
!1698 = !DILocation(line: 568, column: 25, scope: !1653)
!1699 = !DILocation(line: 571, column: 7, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1653, file: !405, line: 571, column: 6)
!1701 = !DILocation(line: 571, column: 16, scope: !1700)
!1702 = !DILocation(line: 572, column: 6, scope: !1700)
!1703 = !DILocation(line: 572, column: 10, scope: !1700)
!1704 = !DILocation(line: 572, column: 21, scope: !1700)
!1705 = !DILocation(line: 572, column: 31, scope: !1700)
!1706 = !DILocation(line: 572, column: 19, scope: !1700)
!1707 = !DILocation(line: 573, column: 6, scope: !1700)
!1708 = !DILocation(line: 573, column: 10, scope: !1700)
!1709 = !DILocation(line: 573, column: 20, scope: !1700)
!1710 = !DILocation(line: 573, column: 30, scope: !1700)
!1711 = !DILocation(line: 573, column: 17, scope: !1700)
!1712 = !DILocation(line: 574, column: 6, scope: !1700)
!1713 = !DILocation(line: 574, column: 10, scope: !1700)
!1714 = !DILocation(line: 574, column: 21, scope: !1700)
!1715 = !DILocation(line: 574, column: 31, scope: !1700)
!1716 = !DILocation(line: 574, column: 18, scope: !1700)
!1717 = !DILocation(line: 571, column: 6, scope: !1653)
!1718 = !DILocation(line: 575, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1700, file: !405, line: 574, column: 42)
!1720 = !DILocation(line: 576, column: 3, scope: !1719)
!1721 = !DILocation(line: 579, column: 30, scope: !1653)
!1722 = !DILocation(line: 579, column: 40, scope: !1653)
!1723 = !DILocation(line: 579, column: 48, scope: !1653)
!1724 = !DILocation(line: 579, column: 59, scope: !1653)
!1725 = !DILocation(line: 579, column: 58, scope: !1653)
!1726 = !DILocation(line: 579, column: 17, scope: !1653)
!1727 = !DILocation(line: 579, column: 15, scope: !1653)
!1728 = !DILocation(line: 580, column: 6, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1653, file: !405, line: 580, column: 6)
!1730 = !DILocation(line: 580, column: 6, scope: !1653)
!1731 = !DILocation(line: 581, column: 14, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !405, line: 580, column: 20)
!1733 = !DILocation(line: 581, column: 24, scope: !1732)
!1734 = !DILocation(line: 581, column: 32, scope: !1732)
!1735 = !DILocation(line: 581, column: 42, scope: !1732)
!1736 = !DILocation(line: 581, column: 3, scope: !1732)
!1737 = !DILocation(line: 582, column: 7, scope: !1732)
!1738 = !DILocation(line: 583, column: 2, scope: !1732)
!1739 = !DILocation(line: 584, column: 7, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1729, file: !405, line: 583, column: 9)
!1741 = !DILabel(scope: !1653, name: "out", file: !405, line: 587)
!1742 = !DILocation(line: 587, column: 1, scope: !1653)
!1743 = !DILocation(line: 588, column: 17, scope: !1653)
!1744 = !DILocation(line: 588, column: 27, scope: !1653)
!1745 = !DILocation(line: 588, column: 2, scope: !1653)
!1746 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 588, column: 2, scope: !1653)
!1748 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !1747)
!1749 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !1747)
!1750 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !1747)
!1751 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !1752)
!1752 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !1747)
!1753 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !1752)
!1754 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !1752)
!1755 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !1752)
!1756 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !1752)
!1757 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !1752)
!1758 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !1752)
!1759 = !DILocation(line: 589, column: 9, scope: !1653)
!1760 = !DILocation(line: 589, column: 2, scope: !1653)
!1761 = distinct !DISubprogram(name: "sys_bitarray_set_region", scope: !405, file: !405, line: 592, type: !1435, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1762 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1761, file: !405, line: 592, type: !408)
!1763 = !DILocation(line: 592, column: 45, scope: !1761)
!1764 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1761, file: !405, line: 592, type: !210)
!1765 = !DILocation(line: 592, column: 62, scope: !1761)
!1766 = !DILocalVariable(name: "offset", arg: 3, scope: !1761, file: !405, line: 593, type: !210)
!1767 = !DILocation(line: 593, column: 15, scope: !1761)
!1768 = !DILocation(line: 595, column: 26, scope: !1761)
!1769 = !DILocation(line: 595, column: 36, scope: !1761)
!1770 = !DILocation(line: 595, column: 46, scope: !1761)
!1771 = !DILocation(line: 595, column: 9, scope: !1761)
!1772 = !DILocation(line: 595, column: 2, scope: !1761)
!1773 = distinct !DISubprogram(name: "set_clear_region", scope: !405, file: !405, line: 531, type: !1654, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1774 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1773, file: !405, line: 531, type: !408)
!1775 = !DILocation(line: 531, column: 45, scope: !1773)
!1776 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1773, file: !405, line: 531, type: !210)
!1777 = !DILocation(line: 531, column: 62, scope: !1773)
!1778 = !DILocalVariable(name: "offset", arg: 3, scope: !1773, file: !405, line: 532, type: !210)
!1779 = !DILocation(line: 532, column: 15, scope: !1773)
!1780 = !DILocalVariable(name: "to_set", arg: 4, scope: !1773, file: !405, line: 532, type: !1089)
!1781 = !DILocation(line: 532, column: 29, scope: !1773)
!1782 = !DILocalVariable(name: "ret", scope: !1773, file: !405, line: 534, type: !87)
!1783 = !DILocation(line: 534, column: 6, scope: !1773)
!1784 = !DILocalVariable(name: "off_end", scope: !1773, file: !405, line: 535, type: !210)
!1785 = !DILocation(line: 535, column: 9, scope: !1773)
!1786 = !DILocation(line: 535, column: 19, scope: !1773)
!1787 = !DILocation(line: 535, column: 28, scope: !1773)
!1788 = !DILocation(line: 535, column: 26, scope: !1773)
!1789 = !DILocation(line: 535, column: 37, scope: !1773)
!1790 = !DILocalVariable(name: "key", scope: !1773, file: !405, line: 536, type: !423)
!1791 = !DILocation(line: 536, column: 19, scope: !1773)
!1792 = !DILocation(line: 536, column: 38, scope: !1773)
!1793 = !DILocation(line: 536, column: 48, scope: !1773)
!1794 = !DILocation(line: 160, column: 94, scope: !437, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 536, column: 25, scope: !1773)
!1796 = !DILocation(line: 162, column: 9, scope: !437, inlinedAt: !1795)
!1797 = !DILocation(line: 163, column: 19, scope: !437, inlinedAt: !1795)
!1798 = !DILocation(line: 44, column: 15, scope: !447, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 169, column: 10, scope: !437, inlinedAt: !1795)
!1800 = !DILocation(line: 48, column: 2, scope: !447, inlinedAt: !1799)
!1801 = !DILocation(line: 80, column: 9, scope: !447, inlinedAt: !1799)
!1802 = !DILocation(line: 169, column: 8, scope: !437, inlinedAt: !1795)
!1803 = !DILocation(line: 171, column: 26, scope: !437, inlinedAt: !1795)
!1804 = !DILocation(line: 110, column: 94, scope: !459, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 171, column: 2, scope: !437, inlinedAt: !1795)
!1806 = !DILocation(line: 112, column: 9, scope: !459, inlinedAt: !1805)
!1807 = !DILocation(line: 177, column: 27, scope: !437, inlinedAt: !1795)
!1808 = !DILocation(line: 121, column: 95, scope: !467, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 177, column: 2, scope: !437, inlinedAt: !1795)
!1810 = !DILocation(line: 123, column: 9, scope: !467, inlinedAt: !1809)
!1811 = !DILocation(line: 179, column: 2, scope: !437, inlinedAt: !1795)
!1812 = !DILocation(line: 536, column: 25, scope: !1773)
!1813 = !DILocation(line: 541, column: 7, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1773, file: !405, line: 541, column: 6)
!1815 = !DILocation(line: 541, column: 16, scope: !1814)
!1816 = !DILocation(line: 542, column: 6, scope: !1814)
!1817 = !DILocation(line: 542, column: 10, scope: !1814)
!1818 = !DILocation(line: 542, column: 21, scope: !1814)
!1819 = !DILocation(line: 542, column: 31, scope: !1814)
!1820 = !DILocation(line: 542, column: 19, scope: !1814)
!1821 = !DILocation(line: 543, column: 6, scope: !1814)
!1822 = !DILocation(line: 543, column: 10, scope: !1814)
!1823 = !DILocation(line: 543, column: 20, scope: !1814)
!1824 = !DILocation(line: 543, column: 30, scope: !1814)
!1825 = !DILocation(line: 543, column: 17, scope: !1814)
!1826 = !DILocation(line: 544, column: 6, scope: !1814)
!1827 = !DILocation(line: 544, column: 10, scope: !1814)
!1828 = !DILocation(line: 544, column: 21, scope: !1814)
!1829 = !DILocation(line: 544, column: 31, scope: !1814)
!1830 = !DILocation(line: 544, column: 18, scope: !1814)
!1831 = !DILocation(line: 541, column: 6, scope: !1773)
!1832 = !DILocation(line: 545, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1814, file: !405, line: 544, column: 42)
!1834 = !DILocation(line: 546, column: 3, scope: !1833)
!1835 = !DILocation(line: 549, column: 13, scope: !1773)
!1836 = !DILocation(line: 549, column: 23, scope: !1773)
!1837 = !DILocation(line: 549, column: 31, scope: !1773)
!1838 = !DILocation(line: 549, column: 41, scope: !1773)
!1839 = !DILocation(line: 549, column: 2, scope: !1773)
!1840 = !DILocation(line: 550, column: 6, scope: !1773)
!1841 = !DILocation(line: 550, column: 2, scope: !1773)
!1842 = !DILabel(scope: !1773, name: "out", file: !405, line: 552)
!1843 = !DILocation(line: 552, column: 1, scope: !1773)
!1844 = !DILocation(line: 553, column: 17, scope: !1773)
!1845 = !DILocation(line: 553, column: 27, scope: !1773)
!1846 = !DILocation(line: 553, column: 2, scope: !1773)
!1847 = !DILocation(line: 235, column: 84, scope: !502, inlinedAt: !1848)
!1848 = distinct !DILocation(line: 553, column: 2, scope: !1773)
!1849 = !DILocation(line: 236, column: 23, scope: !502, inlinedAt: !1848)
!1850 = !DILocation(line: 238, column: 9, scope: !502, inlinedAt: !1848)
!1851 = !DILocation(line: 261, column: 22, scope: !502, inlinedAt: !1848)
!1852 = !DILocation(line: 88, column: 80, scope: !512, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 261, column: 2, scope: !502, inlinedAt: !1848)
!1854 = !DILocation(line: 91, column: 6, scope: !518, inlinedAt: !1853)
!1855 = !DILocation(line: 91, column: 10, scope: !518, inlinedAt: !1853)
!1856 = !DILocation(line: 91, column: 6, scope: !512, inlinedAt: !1853)
!1857 = !DILocation(line: 92, column: 3, scope: !522, inlinedAt: !1853)
!1858 = !DILocation(line: 94, column: 2, scope: !512, inlinedAt: !1853)
!1859 = !DILocation(line: 114, column: 1, scope: !512, inlinedAt: !1853)
!1860 = !DILocation(line: 554, column: 9, scope: !1773)
!1861 = !DILocation(line: 554, column: 2, scope: !1773)
!1862 = distinct !DISubprogram(name: "sys_bitarray_clear_region", scope: !405, file: !405, line: 598, type: !1435, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1863 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1862, file: !405, line: 598, type: !408)
!1864 = !DILocation(line: 598, column: 47, scope: !1862)
!1865 = !DILocalVariable(name: "num_bits", arg: 2, scope: !1862, file: !405, line: 598, type: !210)
!1866 = !DILocation(line: 598, column: 64, scope: !1862)
!1867 = !DILocalVariable(name: "offset", arg: 3, scope: !1862, file: !405, line: 599, type: !210)
!1868 = !DILocation(line: 599, column: 17, scope: !1862)
!1869 = !DILocation(line: 601, column: 26, scope: !1862)
!1870 = !DILocation(line: 601, column: 36, scope: !1862)
!1871 = !DILocation(line: 601, column: 46, scope: !1862)
!1872 = !DILocation(line: 601, column: 9, scope: !1862)
!1873 = !DILocation(line: 601, column: 2, scope: !1862)
!1874 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !338, file: !338, line: 335, type: !1875, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!1089, !1877}
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 32)
!1878 = !DILocalVariable(name: "list", arg: 1, scope: !1874, file: !338, line: 335, type: !1877)
!1879 = !DILocation(line: 335, column: 55, scope: !1874)
!1880 = !DILocation(line: 335, column: 92, scope: !1874)
!1881 = !DILocation(line: 335, column: 71, scope: !1874)
!1882 = !DILocation(line: 335, column: 98, scope: !1874)
!1883 = !DILocation(line: 335, column: 63, scope: !1874)
!1884 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !338, file: !338, line: 255, type: !1885, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!342, !1877}
!1887 = !DILocalVariable(name: "list", arg: 1, scope: !1884, file: !338, line: 255, type: !1877)
!1888 = !DILocation(line: 255, column: 64, scope: !1884)
!1889 = !DILocation(line: 257, column: 9, scope: !1884)
!1890 = !DILocation(line: 257, column: 15, scope: !1884)
!1891 = !DILocation(line: 257, column: 2, scope: !1884)
!1892 = distinct !DISubprogram(name: "setup_bundle_data", scope: !405, file: !405, line: 29, type: !1893, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !408, !1090, !210, !210}
!1895 = !DILocalVariable(name: "bitarray", arg: 1, scope: !1892, file: !405, line: 29, type: !408)
!1896 = !DILocation(line: 29, column: 47, scope: !1892)
!1897 = !DILocalVariable(name: "bd", arg: 2, scope: !1892, file: !405, line: 30, type: !1090)
!1898 = !DILocation(line: 30, column: 30, scope: !1892)
!1899 = !DILocalVariable(name: "offset", arg: 3, scope: !1892, file: !405, line: 31, type: !210)
!1900 = !DILocation(line: 31, column: 17, scope: !1892)
!1901 = !DILocalVariable(name: "num_bits", arg: 4, scope: !1892, file: !405, line: 31, type: !210)
!1902 = !DILocation(line: 31, column: 32, scope: !1892)
!1903 = !DILocation(line: 33, column: 13, scope: !1892)
!1904 = !DILocation(line: 33, column: 20, scope: !1892)
!1905 = !DILocation(line: 33, column: 2, scope: !1892)
!1906 = !DILocation(line: 33, column: 6, scope: !1892)
!1907 = !DILocation(line: 33, column: 11, scope: !1892)
!1908 = !DILocation(line: 34, column: 13, scope: !1892)
!1909 = !DILocation(line: 34, column: 20, scope: !1892)
!1910 = !DILocation(line: 34, column: 2, scope: !1892)
!1911 = !DILocation(line: 34, column: 6, scope: !1892)
!1912 = !DILocation(line: 34, column: 11, scope: !1892)
!1913 = !DILocation(line: 36, column: 14, scope: !1892)
!1914 = !DILocation(line: 36, column: 23, scope: !1892)
!1915 = !DILocation(line: 36, column: 21, scope: !1892)
!1916 = !DILocation(line: 36, column: 32, scope: !1892)
!1917 = !DILocation(line: 36, column: 37, scope: !1892)
!1918 = !DILocation(line: 36, column: 2, scope: !1892)
!1919 = !DILocation(line: 36, column: 6, scope: !1892)
!1920 = !DILocation(line: 36, column: 11, scope: !1892)
!1921 = !DILocation(line: 37, column: 14, scope: !1892)
!1922 = !DILocation(line: 37, column: 23, scope: !1892)
!1923 = !DILocation(line: 37, column: 21, scope: !1892)
!1924 = !DILocation(line: 37, column: 32, scope: !1892)
!1925 = !DILocation(line: 37, column: 37, scope: !1892)
!1926 = !DILocation(line: 37, column: 2, scope: !1892)
!1927 = !DILocation(line: 37, column: 6, scope: !1892)
!1928 = !DILocation(line: 37, column: 11, scope: !1892)
!1929 = !DILocation(line: 39, column: 25, scope: !1892)
!1930 = !DILocation(line: 39, column: 29, scope: !1892)
!1931 = !DILocation(line: 39, column: 21, scope: !1892)
!1932 = !DILocation(line: 39, column: 36, scope: !1892)
!1933 = !DILocation(line: 39, column: 14, scope: !1892)
!1934 = !DILocation(line: 39, column: 2, scope: !1892)
!1935 = !DILocation(line: 39, column: 6, scope: !1892)
!1936 = !DILocation(line: 39, column: 12, scope: !1892)
!1937 = !DILocation(line: 40, column: 24, scope: !1892)
!1938 = !DILocation(line: 40, column: 28, scope: !1892)
!1939 = !DILocation(line: 40, column: 20, scope: !1892)
!1940 = !DILocation(line: 40, column: 35, scope: !1892)
!1941 = !DILocation(line: 40, column: 51, scope: !1892)
!1942 = !DILocation(line: 40, column: 55, scope: !1892)
!1943 = !DILocation(line: 40, column: 47, scope: !1892)
!1944 = !DILocation(line: 40, column: 40, scope: !1892)
!1945 = !DILocation(line: 40, column: 2, scope: !1892)
!1946 = !DILocation(line: 40, column: 6, scope: !1892)
!1947 = !DILocation(line: 40, column: 12, scope: !1892)
!1948 = !DILocation(line: 42, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1892, file: !405, line: 42, column: 6)
!1950 = !DILocation(line: 42, column: 10, scope: !1949)
!1951 = !DILocation(line: 42, column: 18, scope: !1949)
!1952 = !DILocation(line: 42, column: 22, scope: !1949)
!1953 = !DILocation(line: 42, column: 15, scope: !1949)
!1954 = !DILocation(line: 42, column: 6, scope: !1892)
!1955 = !DILocation(line: 44, column: 16, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1949, file: !405, line: 42, column: 28)
!1957 = !DILocation(line: 44, column: 20, scope: !1956)
!1958 = !DILocation(line: 44, column: 3, scope: !1956)
!1959 = !DILocation(line: 44, column: 7, scope: !1956)
!1960 = !DILocation(line: 44, column: 13, scope: !1956)
!1961 = !DILocation(line: 45, column: 2, scope: !1956)
!1962 = !DILocation(line: 46, column: 1, scope: !1892)
