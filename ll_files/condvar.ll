; ModuleID = '../bc_files/condvar.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/condvar.c"
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
%struct.k_condvar = type { %struct._wait_q_t }
%struct.z_spinlock_key = type { i32 }

@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !0

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !126 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !229, metadata !DIExpression()), !dbg !230
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !231, metadata !DIExpression()), !dbg !232
  %5 = load ptr, ptr %3, align 4, !dbg !233
  %6 = load ptr, ptr %4, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !236 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 4, !dbg !241
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !243 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = load i8, ptr %2, align 1, !dbg !248
  ret ptr null, !dbg !249
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !256
  %5 = load i8, ptr %3, align 1, !dbg !257
  %6 = load i32, ptr %4, align 4, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !260 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load ptr, ptr %2, align 4, !dbg !267
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !268
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !269
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !270
  ret i64 %6, !dbg !271
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !273, metadata !DIExpression()), !dbg !274
  %3 = load ptr, ptr %2, align 4, !dbg !275
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !276
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !277
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !278
  ret i64 %6, !dbg !279
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  %3 = load ptr, ptr %2, align 4, !dbg !304
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !305
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !306
  ret i64 %5, !dbg !307
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !308 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load ptr, ptr %2, align 4, !dbg !311
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !312
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !313
  ret i64 %5, !dbg !314
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !315 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !318, metadata !DIExpression()), !dbg !319
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !320, metadata !DIExpression()), !dbg !321
  %5 = load ptr, ptr %4, align 4, !dbg !322
  %6 = load ptr, ptr %3, align 4, !dbg !323
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !324
  store ptr %5, ptr %7, align 4, !dbg !325
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !327 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !331
  %3 = load ptr, ptr %2, align 4, !dbg !332
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !333
  %5 = load ptr, ptr %4, align 4, !dbg !333
  ret ptr %5, !dbg !334
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !335 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !357
  %3 = load ptr, ptr %2, align 4, !dbg !358
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !359
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !360
  %6 = zext i1 %5 to i32, !dbg !361
  ret i32 %6, !dbg !362
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !363 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !372, metadata !DIExpression()), !dbg !373
  %3 = load ptr, ptr %2, align 4, !dbg !374
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !375
  %5 = load i32, ptr %4, align 4, !dbg !375
  ret i32 %5, !dbg !376
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !377 {
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
define hidden i32 @z_impl_k_condvar_init(ptr noundef %0) #0 !dbg !409 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_condvar, ptr %3, i32 0, i32 0, !dbg !419
  call void @z_waitq_init(ptr noundef %4), !dbg !420
  %5 = load ptr, ptr %2, align 4, !dbg !421
  call void @z_object_init(ptr noundef %5), !dbg !422
  br label %6, !dbg !423

6:                                                ; preds = %1
  br label %7, !dbg !424

7:                                                ; preds = %6
  ret i32 0, !dbg !426
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_waitq_init(ptr noundef %0) #0 !dbg !427 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !431, metadata !DIExpression()), !dbg !432
  %3 = load ptr, ptr %2, align 4, !dbg !433
  %4 = getelementptr inbounds %struct._wait_q_t, ptr %3, i32 0, i32 0, !dbg !434
  call void @sys_dlist_init(ptr noundef %4), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !437 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !438, metadata !DIExpression()), !dbg !439
  %3 = load ptr, ptr %2, align 4, !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_condvar_signal(ptr noundef %0) #0 !dbg !442 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.z_spinlock_key, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.z_spinlock_key, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  %14 = alloca ptr, align 4
  store ptr %0, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !443, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata ptr %13, metadata !445, metadata !DIExpression()), !dbg !450
  store ptr @lock, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !451, metadata !DIExpression()), !dbg !456
  %15 = load ptr, ptr %11, align 4, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %10, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata ptr %5, metadata !461, metadata !DIExpression()), !dbg !466
  %16 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !468, !srcloc !469
  store i32 %16, ptr %5, align 4, !dbg !468
  %17 = load i32, ptr %5, align 4, !dbg !470
  store i32 %17, ptr %10, align 4, !dbg !471
  %18 = load ptr, ptr %11, align 4, !dbg !472
  store ptr %18, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !473, metadata !DIExpression()), !dbg !477
  %19 = load ptr, ptr %4, align 4, !dbg !479
  %20 = load ptr, ptr %11, align 4, !dbg !480
  store ptr %20, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !481, metadata !DIExpression()), !dbg !483
  %21 = load ptr, ptr %3, align 4, !dbg !485
  %22 = load i32, ptr %10, align 4, !dbg !486
  %23 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !487
  store i32 %22, ptr %23, align 4, !dbg !487
  br label %24, !dbg !488

24:                                               ; preds = %1
  br label %25, !dbg !489

25:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %14, metadata !491, metadata !DIExpression()), !dbg !492
  %26 = load ptr, ptr %12, align 4, !dbg !493
  %27 = getelementptr inbounds %struct.k_condvar, ptr %26, i32 0, i32 0, !dbg !494
  %28 = call ptr @z_unpend_first_thread(ptr noundef %27), !dbg !495
  store ptr %28, ptr %14, align 4, !dbg !492
  %29 = load ptr, ptr %14, align 4, !dbg !496
  %30 = icmp ne ptr %29, null, !dbg !498
  br i1 %30, label %31, label %42, !dbg !499

31:                                               ; preds = %25
  br label %32, !dbg !500

32:                                               ; preds = %31
  br label %33, !dbg !502

33:                                               ; preds = %32
  %34 = load ptr, ptr %14, align 4, !dbg !504
  store ptr %34, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !505, metadata !DIExpression()), !dbg !510
  store i32 0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !512, metadata !DIExpression()), !dbg !513
  %35 = load i32, ptr %9, align 4, !dbg !514
  %36 = load ptr, ptr %8, align 4, !dbg !515
  %37 = getelementptr inbounds %struct.k_thread, ptr %36, i32 0, i32 6, !dbg !516
  %38 = getelementptr inbounds %struct._thread_arch, ptr %37, i32 0, i32 1, !dbg !517
  store i32 %35, ptr %38, align 4, !dbg !518
  %39 = load ptr, ptr %14, align 4, !dbg !519
  call void @z_ready_thread(ptr noundef %39), !dbg !520
  %40 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !521
  %41 = load [1 x i32], ptr %40, align 4, !dbg !521
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %41), !dbg !521
  br label %51, !dbg !522

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !523
  %44 = load [1 x i32], ptr %43, align 4, !dbg !523
  store [1 x i32] %44, ptr %6, align 4
  store ptr @lock, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !525, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata ptr %6, metadata !531, metadata !DIExpression()), !dbg !532
  %45 = load ptr, ptr %7, align 4, !dbg !533
  %46 = load i32, ptr %6, align 4, !dbg !534
  store i32 %46, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !535, metadata !DIExpression()), !dbg !539
  %47 = load i32, ptr %2, align 4, !dbg !541
  %48 = icmp ne i32 %47, 0, !dbg !543
  br i1 %48, label %49, label %50, !dbg !544

49:                                               ; preds = %42
  br label %arch_irq_unlock.exit, !dbg !545

50:                                               ; preds = %42
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #4, !dbg !547, !srcloc !548
  br label %arch_irq_unlock.exit, !dbg !549

arch_irq_unlock.exit:                             ; preds = %49, %50
  br label %51

51:                                               ; preds = %arch_irq_unlock.exit, %33
  br label %52, !dbg !550

52:                                               ; preds = %51
  br label %53, !dbg !551

53:                                               ; preds = %52
  ret i32 0, !dbg !553
}

declare ptr @z_unpend_first_thread(ptr noundef) #2

declare void @z_ready_thread(ptr noundef) #2

declare void @z_reschedule(ptr noundef, [1 x i32]) #2

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_condvar_broadcast(ptr noundef %0) #0 !dbg !554 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %struct.z_spinlock_key, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.z_spinlock_key, align 4
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata ptr %10, metadata !557, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.declare(metadata ptr %11, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata ptr %12, metadata !561, metadata !DIExpression()), !dbg !562
  store i32 0, ptr %12, align 4, !dbg !562
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !451, metadata !DIExpression()), !dbg !563
  %14 = load ptr, ptr %8, align 4, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %7, metadata !459, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata ptr %4, metadata !461, metadata !DIExpression()), !dbg !567
  %15 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !569, !srcloc !469
  store i32 %15, ptr %4, align 4, !dbg !569
  %16 = load i32, ptr %4, align 4, !dbg !570
  store i32 %16, ptr %7, align 4, !dbg !571
  %17 = load ptr, ptr %8, align 4, !dbg !572
  store ptr %17, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !473, metadata !DIExpression()), !dbg !573
  %18 = load ptr, ptr %3, align 4, !dbg !575
  %19 = load ptr, ptr %8, align 4, !dbg !576
  store ptr %19, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !481, metadata !DIExpression()), !dbg !577
  %20 = load ptr, ptr %2, align 4, !dbg !579
  %21 = load i32, ptr %7, align 4, !dbg !580
  %22 = getelementptr inbounds %struct.z_spinlock_key, ptr %13, i32 0, i32 0, !dbg !581
  store i32 %21, ptr %22, align 4, !dbg !581
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %11, ptr align 4 %13, i32 4, i1 false), !dbg !581
  br label %23, !dbg !582

23:                                               ; preds = %1
  br label %24, !dbg !583

24:                                               ; preds = %23
  br label %25, !dbg !585

25:                                               ; preds = %30, %24
  %26 = load ptr, ptr %9, align 4, !dbg !586
  %27 = getelementptr inbounds %struct.k_condvar, ptr %26, i32 0, i32 0, !dbg !587
  %28 = call ptr @z_unpend_first_thread(ptr noundef %27), !dbg !588
  store ptr %28, ptr %10, align 4, !dbg !589
  %29 = icmp ne ptr %28, null, !dbg !590
  br i1 %29, label %30, label %39, !dbg !585

30:                                               ; preds = %25
  %31 = load i32, ptr %12, align 4, !dbg !591
  %32 = add nsw i32 %31, 1, !dbg !591
  store i32 %32, ptr %12, align 4, !dbg !591
  %33 = load ptr, ptr %10, align 4, !dbg !593
  store ptr %33, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !505, metadata !DIExpression()), !dbg !594
  store i32 0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !512, metadata !DIExpression()), !dbg !596
  %34 = load i32, ptr %6, align 4, !dbg !597
  %35 = load ptr, ptr %5, align 4, !dbg !598
  %36 = getelementptr inbounds %struct.k_thread, ptr %35, i32 0, i32 6, !dbg !599
  %37 = getelementptr inbounds %struct._thread_arch, ptr %36, i32 0, i32 1, !dbg !600
  store i32 %34, ptr %37, align 4, !dbg !601
  %38 = load ptr, ptr %10, align 4, !dbg !602
  call void @z_ready_thread(ptr noundef %38), !dbg !603
  br label %25, !dbg !585, !llvm.loop !604

39:                                               ; preds = %25
  br label %40, !dbg !606

40:                                               ; preds = %39
  br label %41, !dbg !607

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.z_spinlock_key, ptr %11, i32 0, i32 0, !dbg !609
  %43 = load [1 x i32], ptr %42, align 4, !dbg !609
  call void @z_reschedule(ptr noundef @lock, [1 x i32] %43), !dbg !609
  %44 = load i32, ptr %12, align 4, !dbg !610
  ret i32 %44, !dbg !611
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_impl_k_condvar_wait(ptr noundef %0, ptr noundef %1, [1 x i64] %2) #0 !dbg !612 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.k_timeout_t, align 8
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca %struct.z_spinlock_key, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.z_spinlock_key, align 4
  %15 = alloca %struct.k_timeout_t, align 8
  %16 = getelementptr inbounds %struct.k_timeout_t, ptr %9, i32 0, i32 0
  store [1 x i64] %2, ptr %16, align 8
  store ptr %0, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !622, metadata !DIExpression()), !dbg !623
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata ptr %9, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata ptr %12, metadata !628, metadata !DIExpression()), !dbg !629
  call void @llvm.dbg.declare(metadata ptr %13, metadata !630, metadata !DIExpression()), !dbg !631
  br label %17, !dbg !632

17:                                               ; preds = %3
  br label %18, !dbg !633

18:                                               ; preds = %17
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !451, metadata !DIExpression()), !dbg !635
  %19 = load ptr, ptr %8, align 4, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %7, metadata !459, metadata !DIExpression()), !dbg !638
  call void @llvm.dbg.declare(metadata ptr %6, metadata !461, metadata !DIExpression()), !dbg !639
  %20 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #4, !dbg !641, !srcloc !469
  store i32 %20, ptr %6, align 4, !dbg !641
  %21 = load i32, ptr %6, align 4, !dbg !642
  store i32 %21, ptr %7, align 4, !dbg !643
  %22 = load ptr, ptr %8, align 4, !dbg !644
  store ptr %22, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !473, metadata !DIExpression()), !dbg !645
  %23 = load ptr, ptr %5, align 4, !dbg !647
  %24 = load ptr, ptr %8, align 4, !dbg !648
  store ptr %24, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !649
  %25 = load ptr, ptr %4, align 4, !dbg !651
  %26 = load i32, ptr %7, align 4, !dbg !652
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %14, i32 0, i32 0, !dbg !653
  store i32 %26, ptr %27, align 4, !dbg !653
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %12, ptr align 4 %14, i32 4, i1 false), !dbg !653
  %28 = load ptr, ptr %11, align 4, !dbg !654
  %29 = call i32 @k_mutex_unlock(ptr noundef %28), !dbg !655
  %30 = load ptr, ptr %10, align 4, !dbg !656
  %31 = getelementptr inbounds %struct.k_condvar, ptr %30, i32 0, i32 0, !dbg !657
  %32 = getelementptr inbounds %struct.z_spinlock_key, ptr %12, i32 0, i32 0, !dbg !658
  %33 = load [1 x i32], ptr %32, align 4, !dbg !658
  %34 = getelementptr inbounds %struct.k_timeout_t, ptr %9, i32 0, i32 0, !dbg !658
  %35 = load [1 x i64], ptr %34, align 8, !dbg !658
  %36 = call i32 @z_pend_curr(ptr noundef @lock, [1 x i32] %33, ptr noundef %31, [1 x i64] %35), !dbg !658
  store i32 %36, ptr %13, align 4, !dbg !659
  %37 = load ptr, ptr %11, align 4, !dbg !660
  %38 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !661
  store i64 -1, ptr %38, align 8, !dbg !661
  %39 = getelementptr inbounds %struct.k_timeout_t, ptr %15, i32 0, i32 0, !dbg !662
  %40 = load [1 x i64], ptr %39, align 8, !dbg !662
  %41 = call i32 @k_mutex_lock(ptr noundef %37, [1 x i64] %40), !dbg !662
  br label %42, !dbg !663

42:                                               ; preds = %18
  br label %43, !dbg !664

43:                                               ; preds = %42
  %44 = load i32, ptr %13, align 4, !dbg !666
  ret i32 %44, !dbg !667
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_mutex_unlock(ptr noundef %0) #0 !dbg !668 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !673
  br label %3, !dbg !674

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #4, !dbg !675, !srcloc !677
  br label %4, !dbg !678

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !679
  %6 = call i32 @z_impl_k_mutex_unlock(ptr noundef %5), !dbg !680
  ret i32 %6, !dbg !681
}

declare i32 @z_pend_curr(ptr noundef, [1 x i32], ptr noundef, [1 x i64]) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @k_mutex_lock(ptr noundef %0, [1 x i64] %1) #0 !dbg !682 {
  %3 = alloca %struct.k_timeout_t, align 8
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0
  store [1 x i64] %1, ptr %5, align 8
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !685, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.declare(metadata ptr %3, metadata !687, metadata !DIExpression()), !dbg !688
  br label %6, !dbg !689

6:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #4, !dbg !690, !srcloc !692
  br label %7, !dbg !693

7:                                                ; preds = %6
  %8 = load ptr, ptr %4, align 4, !dbg !694
  %9 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !695
  %10 = load [1 x i64], ptr %9, align 8, !dbg !695
  %11 = call i32 @z_impl_k_mutex_lock(ptr noundef %8, [1 x i64] %10), !dbg !695
  ret i32 %11, !dbg !696
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !697 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !702, metadata !DIExpression()), !dbg !703
  %3 = load ptr, ptr %2, align 4, !dbg !704
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !705
  %5 = icmp eq ptr %4, null, !dbg !706
  ret i1 %5, !dbg !707
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !708 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !711, metadata !DIExpression()), !dbg !712
  %3 = load ptr, ptr %2, align 4, !dbg !713
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !714
  %5 = load ptr, ptr %4, align 4, !dbg !714
  ret ptr %5, !dbg !715
}

; Function Attrs: noinline nounwind optnone
define internal void @sys_dlist_init(ptr noundef %0) #0 !dbg !716 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !720, metadata !DIExpression()), !dbg !721
  %3 = load ptr, ptr %2, align 4, !dbg !722
  %4 = load ptr, ptr %2, align 4, !dbg !723
  %5 = getelementptr inbounds %struct._dnode, ptr %4, i32 0, i32 0, !dbg !724
  store ptr %3, ptr %5, align 4, !dbg !725
  %6 = load ptr, ptr %2, align 4, !dbg !726
  %7 = load ptr, ptr %2, align 4, !dbg !727
  %8 = getelementptr inbounds %struct._dnode, ptr %7, i32 0, i32 1, !dbg !728
  store ptr %6, ptr %8, align 4, !dbg !729
  ret void, !dbg !730
}

declare i32 @z_impl_k_mutex_unlock(ptr noundef) #2

declare i32 @z_impl_k_mutex_lock(ptr noundef, [1 x i64]) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !113, line: 19, type: !114, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !112, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "condvar.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !94, !95, !96}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !90, line: 46, baseType: !91)
!90 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !92, line: 59, baseType: !93)
!92 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!93 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !98, line: 55, baseType: !99)
!98 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !98, line: 37, size: 64, elements: !100)
!100 = !{!101, !107}
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 38, baseType: !102, size: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 38, size: 32, elements: !103)
!103 = !{!104, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !102, file: !98, line: 39, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !98, line: 40, baseType: !105, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !99, file: !98, line: 42, baseType: !108, size: 32, offset: 32)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !99, file: !98, line: 42, size: 32, elements: !109)
!109 = !{!110, !111}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !108, file: !98, line: 43, baseType: !105, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !108, file: !98, line: 44, baseType: !105, size: 32)
!112 = !{!0}
!113 = !DIFile(filename: "kernel/condvar.c", directory: "/home/sri/zephyrproject/zephyr")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !115, line: 45, elements: !116)
!115 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!116 = !{}
!117 = !{i32 7, !"Dwarf Version", i32 4}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 1, !"static_rwdata", i32 1}
!121 = !{i32 1, !"enumsize_buildattr", i32 1}
!122 = !{i32 1, !"armlib_unavailable", i32 0}
!123 = !{i32 8, !"PIC Level", i32 2}
!124 = !{i32 7, !"PIE Level", i32 2}
!125 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!126 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !127, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !131}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !133, line: 250, size: 896, elements: !134)
!133 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!134 = !{!135, !190, !203, !204, !205, !206, !224}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !132, file: !133, line: 252, baseType: !136, size: 384)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !133, line: 58, size: 384, elements: !137)
!137 = !{!138, !151, !159, !161, !162, !175, !178, !179}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !133, line: 61, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !133, line: 61, size: 64, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !139, file: !133, line: 62, baseType: !97, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !139, file: !133, line: 63, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !144, line: 58, size: 64, elements: !145)
!144 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !143, file: !144, line: 60, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 64, elements: !149)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!149 = !{!150}
!150 = !DISubrange(count: 2)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !136, file: !133, line: 69, baseType: !152, size: 32, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !154, line: 243, baseType: !155)
!154 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 241, size: 64, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !155, file: !154, line: 242, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !98, line: 51, baseType: !99)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !136, file: !133, line: 72, baseType: !160, size: 8, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !92, line: 62, baseType: !7)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !136, file: !133, line: 75, baseType: !160, size: 8, offset: 104)
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !133, line: 91, baseType: !163, size: 16, offset: 112)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !133, line: 91, size: 16, elements: !164)
!164 = !{!165, !172}
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !133, line: 92, baseType: !166, size: 16)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !163, file: !133, line: 92, size: 16, elements: !167)
!167 = !{!168, !171}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !166, file: !133, line: 97, baseType: !169, size: 8)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !92, line: 56, baseType: !170)
!170 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !166, file: !133, line: 98, baseType: !160, size: 8, offset: 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !163, file: !133, line: 101, baseType: !173, size: 16)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !92, line: 63, baseType: !174)
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !136, file: !133, line: 108, baseType: !176, size: 32, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 64, baseType: !177)
!177 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !136, file: !133, line: 132, baseType: !94, size: 32, offset: 160)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !136, file: !133, line: 136, baseType: !180, size: 192, offset: 192)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !154, line: 254, size: 192, elements: !181)
!181 = !{!182, !183, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !180, file: !154, line: 255, baseType: !97, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !180, file: !154, line: 256, baseType: !184, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !154, line: 252, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 32)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !180, file: !154, line: 259, baseType: !91, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !132, file: !133, line: 255, baseType: !191, size: 288, offset: 384)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !192, line: 25, size: 288, elements: !193)
!192 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!193 = !{!194, !195, !196, !197, !198, !199, !200, !201, !202}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !191, file: !192, line: 26, baseType: !176, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !191, file: !192, line: 27, baseType: !176, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !191, file: !192, line: 28, baseType: !176, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !191, file: !192, line: 29, baseType: !176, size: 32, offset: 96)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !191, file: !192, line: 30, baseType: !176, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !191, file: !192, line: 31, baseType: !176, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !191, file: !192, line: 32, baseType: !176, size: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !191, file: !192, line: 33, baseType: !176, size: 32, offset: 224)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !191, file: !192, line: 34, baseType: !176, size: 32, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !132, file: !133, line: 258, baseType: !94, size: 32, offset: 672)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !132, file: !133, line: 261, baseType: !153, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !132, file: !133, line: 302, baseType: !95, size: 32, offset: 768)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !132, file: !133, line: 333, baseType: !207, size: 32, offset: 800)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !209, line: 5291, size: 160, elements: !210)
!209 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!210 = !{!211, !222, !223}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !208, file: !209, line: 5292, baseType: !212, size: 96)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !213, line: 56, size: 96, elements: !214)
!213 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!214 = !{!215, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !212, file: !213, line: 57, baseType: !216, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 32)
!217 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !213, line: 57, flags: DIFlagFwdDecl)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !212, file: !213, line: 58, baseType: !94, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !212, file: !213, line: 59, baseType: !220, size: 32, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 46, baseType: !177)
!221 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !208, file: !209, line: 5293, baseType: !153, size: 64, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !208, file: !209, line: 5294, baseType: !114, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !132, file: !133, line: 355, baseType: !225, size: 64, offset: 832)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !192, line: 60, size: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !225, file: !192, line: 63, baseType: !176, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !225, file: !192, line: 66, baseType: !176, size: 32, offset: 32)
!229 = !DILocalVariable(name: "object", arg: 1, scope: !126, file: !6, line: 223, type: !129)
!230 = !DILocation(line: 223, column: 61, scope: !126)
!231 = !DILocalVariable(name: "thread", arg: 2, scope: !126, file: !6, line: 224, type: !131)
!232 = !DILocation(line: 224, column: 24, scope: !126)
!233 = !DILocation(line: 226, column: 9, scope: !126)
!234 = !DILocation(line: 227, column: 9, scope: !126)
!235 = !DILocation(line: 228, column: 1, scope: !126)
!236 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !237, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !129}
!239 = !DILocalVariable(name: "object", arg: 1, scope: !236, file: !6, line: 243, type: !129)
!240 = !DILocation(line: 243, column: 56, scope: !236)
!241 = !DILocation(line: 245, column: 9, scope: !236)
!242 = !DILocation(line: 246, column: 1, scope: !236)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !244, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!244 = !DISubroutineType(types: !245)
!245 = !{!94, !5}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !243, file: !6, line: 359, type: !5)
!247 = !DILocation(line: 359, column: 58, scope: !243)
!248 = !DILocation(line: 361, column: 9, scope: !243)
!249 = !DILocation(line: 363, column: 2, scope: !243)
!250 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !251, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!251 = !DISubroutineType(types: !252)
!252 = !{!94, !5, !220}
!253 = !DILocalVariable(name: "otype", arg: 1, scope: !250, file: !6, line: 366, type: !5)
!254 = !DILocation(line: 366, column: 63, scope: !250)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !6, line: 367, type: !220)
!256 = !DILocation(line: 367, column: 13, scope: !250)
!257 = !DILocation(line: 369, column: 9, scope: !250)
!258 = !DILocation(line: 370, column: 9, scope: !250)
!259 = !DILocation(line: 372, column: 2, scope: !250)
!260 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !209, file: !209, line: 656, type: !261, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!261 = !DISubroutineType(types: !262)
!262 = !{!89, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!265 = !DILocalVariable(name: "t", arg: 1, scope: !260, file: !209, line: 657, type: !263)
!266 = !DILocation(line: 657, column: 30, scope: !260)
!267 = !DILocation(line: 659, column: 28, scope: !260)
!268 = !DILocation(line: 659, column: 31, scope: !260)
!269 = !DILocation(line: 659, column: 36, scope: !260)
!270 = !DILocation(line: 659, column: 9, scope: !260)
!271 = !DILocation(line: 659, column: 2, scope: !260)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !209, file: !209, line: 671, type: !261, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!273 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !209, line: 672, type: !263)
!274 = !DILocation(line: 672, column: 30, scope: !272)
!275 = !DILocation(line: 674, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 33, scope: !272)
!277 = !DILocation(line: 674, column: 38, scope: !272)
!278 = !DILocation(line: 674, column: 9, scope: !272)
!279 = !DILocation(line: 674, column: 2, scope: !272)
!280 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !209, file: !209, line: 1634, type: !281, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!281 = !DISubroutineType(types: !282)
!282 = !{!89, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !209, line: 1439, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295, !300, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !209, line: 1445, baseType: !180, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !285, file: !209, line: 1448, baseType: !153, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !285, file: !209, line: 1451, baseType: !290, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !285, file: !209, line: 1454, baseType: !290, size: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !285, file: !209, line: 1457, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !90, line: 67, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 65, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !297, file: !90, line: 66, baseType: !89, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !209, line: 1460, baseType: !176, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !285, file: !209, line: 1463, baseType: !94, size: 32, offset: 416)
!302 = !DILocalVariable(name: "timer", arg: 1, scope: !280, file: !209, line: 1635, type: !283)
!303 = !DILocation(line: 1635, column: 34, scope: !280)
!304 = !DILocation(line: 1637, column: 28, scope: !280)
!305 = !DILocation(line: 1637, column: 35, scope: !280)
!306 = !DILocation(line: 1637, column: 9, scope: !280)
!307 = !DILocation(line: 1637, column: 2, scope: !280)
!308 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !209, file: !209, line: 1649, type: !281, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!309 = !DILocalVariable(name: "timer", arg: 1, scope: !308, file: !209, line: 1650, type: !283)
!310 = !DILocation(line: 1650, column: 34, scope: !308)
!311 = !DILocation(line: 1652, column: 30, scope: !308)
!312 = !DILocation(line: 1652, column: 37, scope: !308)
!313 = !DILocation(line: 1652, column: 9, scope: !308)
!314 = !DILocation(line: 1652, column: 2, scope: !308)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !209, file: !209, line: 1689, type: !316, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !293, !94}
!318 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !209, line: 1689, type: !293)
!319 = !DILocation(line: 1689, column: 65, scope: !315)
!320 = !DILocalVariable(name: "user_data", arg: 2, scope: !315, file: !209, line: 1690, type: !94)
!321 = !DILocation(line: 1690, column: 19, scope: !315)
!322 = !DILocation(line: 1692, column: 21, scope: !315)
!323 = !DILocation(line: 1692, column: 2, scope: !315)
!324 = !DILocation(line: 1692, column: 9, scope: !315)
!325 = !DILocation(line: 1692, column: 19, scope: !315)
!326 = !DILocation(line: 1693, column: 1, scope: !315)
!327 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !209, file: !209, line: 1704, type: !328, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!328 = !DISubroutineType(types: !329)
!329 = !{!94, !283}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !327, file: !209, line: 1704, type: !283)
!331 = !DILocation(line: 1704, column: 72, scope: !327)
!332 = !DILocation(line: 1706, column: 9, scope: !327)
!333 = !DILocation(line: 1706, column: 16, scope: !327)
!334 = !DILocation(line: 1706, column: 2, scope: !327)
!335 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !209, file: !209, line: 2071, type: !336, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!336 = !DISubroutineType(types: !337)
!337 = !{!95, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !209, line: 1830, size: 128, elements: !340)
!340 = !{!341, !354, !355}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !339, file: !209, line: 1831, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !343, line: 60, baseType: !344)
!343 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !343, line: 53, size: 64, elements: !345)
!345 = !{!346, !353}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !344, file: !343, line: 54, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !343, line: 50, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !343, line: 44, size: 32, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !349, file: !343, line: 45, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !343, line: 40, baseType: !176)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !344, file: !343, line: 55, baseType: !347, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !209, line: 1832, baseType: !114, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !339, file: !209, line: 1833, baseType: !153, size: 64, offset: 64)
!356 = !DILocalVariable(name: "queue", arg: 1, scope: !335, file: !209, line: 2071, type: !338)
!357 = !DILocation(line: 2071, column: 59, scope: !335)
!358 = !DILocation(line: 2073, column: 35, scope: !335)
!359 = !DILocation(line: 2073, column: 42, scope: !335)
!360 = !DILocation(line: 2073, column: 14, scope: !335)
!361 = !DILocation(line: 2073, column: 9, scope: !335)
!362 = !DILocation(line: 2073, column: 2, scope: !335)
!363 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !209, file: !209, line: 3209, type: !364, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!364 = !DISubroutineType(types: !365)
!365 = !{!177, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !209, line: 3092, size: 128, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !367, file: !209, line: 3093, baseType: !153, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !209, line: 3094, baseType: !177, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !367, file: !209, line: 3095, baseType: !177, size: 32, offset: 96)
!372 = !DILocalVariable(name: "sem", arg: 1, scope: !363, file: !209, line: 3209, type: !366)
!373 = !DILocation(line: 3209, column: 65, scope: !363)
!374 = !DILocation(line: 3211, column: 9, scope: !363)
!375 = !DILocation(line: 3211, column: 14, scope: !363)
!376 = !DILocation(line: 3211, column: 2, scope: !363)
!377 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !209, file: !209, line: 4649, type: !378, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!378 = !DISubroutineType(types: !379)
!379 = !{!176, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !209, line: 4390, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !390, !391, !392, !393, !394}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !381, file: !209, line: 4392, baseType: !153, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !209, line: 4394, baseType: !114, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !381, file: !209, line: 4396, baseType: !220, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !381, file: !209, line: 4398, baseType: !176, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !381, file: !209, line: 4400, baseType: !388, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !381, file: !209, line: 4402, baseType: !388, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !381, file: !209, line: 4404, baseType: !388, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !381, file: !209, line: 4406, baseType: !388, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !381, file: !209, line: 4408, baseType: !176, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !209, line: 4413, baseType: !160, size: 8, offset: 288)
!395 = !DILocalVariable(name: "msgq", arg: 1, scope: !377, file: !209, line: 4649, type: !380)
!396 = !DILocation(line: 4649, column: 66, scope: !377)
!397 = !DILocation(line: 4651, column: 9, scope: !377)
!398 = !DILocation(line: 4651, column: 15, scope: !377)
!399 = !DILocation(line: 4651, column: 26, scope: !377)
!400 = !DILocation(line: 4651, column: 32, scope: !377)
!401 = !DILocation(line: 4651, column: 24, scope: !377)
!402 = !DILocation(line: 4651, column: 2, scope: !377)
!403 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !209, file: !209, line: 4665, type: !378, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!404 = !DILocalVariable(name: "msgq", arg: 1, scope: !403, file: !209, line: 4665, type: !380)
!405 = !DILocation(line: 4665, column: 66, scope: !403)
!406 = !DILocation(line: 4667, column: 9, scope: !403)
!407 = !DILocation(line: 4667, column: 15, scope: !403)
!408 = !DILocation(line: 4667, column: 2, scope: !403)
!409 = distinct !DISubprogram(name: "z_impl_k_condvar_init", scope: !113, file: !113, line: 21, type: !410, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!410 = !DISubroutineType(types: !411)
!411 = !{!95, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 32)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_condvar", file: !209, line: 3007, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !413, file: !209, line: 3008, baseType: !153, size: 64)
!416 = !DILocalVariable(name: "condvar", arg: 1, scope: !409, file: !113, line: 21, type: !412)
!417 = !DILocation(line: 21, column: 45, scope: !409)
!418 = !DILocation(line: 23, column: 16, scope: !409)
!419 = !DILocation(line: 23, column: 25, scope: !409)
!420 = !DILocation(line: 23, column: 2, scope: !409)
!421 = !DILocation(line: 24, column: 16, scope: !409)
!422 = !DILocation(line: 24, column: 2, scope: !409)
!423 = !DILocation(line: 30, column: 2, scope: !409)
!424 = !DILocation(line: 30, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !409, file: !113, line: 30, column: 5)
!426 = !DILocation(line: 32, column: 2, scope: !409)
!427 = distinct !DISubprogram(name: "z_waitq_init", scope: !428, file: !428, line: 47, type: !429, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!428 = !DIFile(filename: "kernel/include/wait_q.h", directory: "/home/sri/zephyrproject/zephyr")
!429 = !DISubroutineType(types: !430)
!430 = !{null, !152}
!431 = !DILocalVariable(name: "w", arg: 1, scope: !427, file: !428, line: 47, type: !152)
!432 = !DILocation(line: 47, column: 44, scope: !427)
!433 = !DILocation(line: 49, column: 18, scope: !427)
!434 = !DILocation(line: 49, column: 21, scope: !427)
!435 = !DILocation(line: 49, column: 2, scope: !427)
!436 = !DILocation(line: 50, column: 1, scope: !427)
!437 = distinct !DISubprogram(name: "z_object_init", scope: !6, file: !6, line: 215, type: !237, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!438 = !DILocalVariable(name: "obj", arg: 1, scope: !437, file: !6, line: 215, type: !129)
!439 = !DILocation(line: 215, column: 46, scope: !437)
!440 = !DILocation(line: 217, column: 9, scope: !437)
!441 = !DILocation(line: 218, column: 1, scope: !437)
!442 = distinct !DISubprogram(name: "z_impl_k_condvar_signal", scope: !113, file: !113, line: 44, type: !410, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!443 = !DILocalVariable(name: "condvar", arg: 1, scope: !442, file: !113, line: 44, type: !412)
!444 = !DILocation(line: 44, column: 47, scope: !442)
!445 = !DILocalVariable(name: "key", scope: !442, file: !113, line: 46, type: !446)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !115, line: 108, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !115, line: 34, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !447, file: !115, line: 35, baseType: !95, size: 32)
!450 = !DILocation(line: 46, column: 19, scope: !442)
!451 = !DILocalVariable(name: "l", arg: 1, scope: !452, file: !115, line: 160, type: !455)
!452 = distinct !DISubprogram(name: "k_spin_lock", scope: !115, file: !115, line: 160, type: !453, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!453 = !DISubroutineType(types: !454)
!454 = !{!446, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!456 = !DILocation(line: 160, column: 94, scope: !452, inlinedAt: !457)
!457 = distinct !DILocation(line: 46, column: 25, scope: !442)
!458 = !DILocation(line: 162, column: 9, scope: !452, inlinedAt: !457)
!459 = !DILocalVariable(name: "k", scope: !452, file: !115, line: 163, type: !446)
!460 = !DILocation(line: 163, column: 19, scope: !452, inlinedAt: !457)
!461 = !DILocalVariable(name: "key", scope: !462, file: !463, line: 44, type: !177)
!462 = distinct !DISubprogram(name: "arch_irq_lock", scope: !463, file: !463, line: 42, type: !464, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!463 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!464 = !DISubroutineType(types: !465)
!465 = !{!177}
!466 = !DILocation(line: 44, column: 15, scope: !462, inlinedAt: !467)
!467 = distinct !DILocation(line: 169, column: 10, scope: !452, inlinedAt: !457)
!468 = !DILocation(line: 48, column: 2, scope: !462, inlinedAt: !467)
!469 = !{i64 66902}
!470 = !DILocation(line: 80, column: 9, scope: !462, inlinedAt: !467)
!471 = !DILocation(line: 169, column: 8, scope: !452, inlinedAt: !457)
!472 = !DILocation(line: 171, column: 26, scope: !452, inlinedAt: !457)
!473 = !DILocalVariable(name: "l", arg: 1, scope: !474, file: !115, line: 110, type: !455)
!474 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !115, file: !115, line: 110, type: !475, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !455}
!477 = !DILocation(line: 110, column: 94, scope: !474, inlinedAt: !478)
!478 = distinct !DILocation(line: 171, column: 2, scope: !452, inlinedAt: !457)
!479 = !DILocation(line: 112, column: 9, scope: !474, inlinedAt: !478)
!480 = !DILocation(line: 177, column: 27, scope: !452, inlinedAt: !457)
!481 = !DILocalVariable(name: "l", arg: 1, scope: !482, file: !115, line: 121, type: !455)
!482 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !115, file: !115, line: 121, type: !475, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!483 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !484)
!484 = distinct !DILocation(line: 177, column: 2, scope: !452, inlinedAt: !457)
!485 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !484)
!486 = !DILocation(line: 179, column: 2, scope: !452, inlinedAt: !457)
!487 = !DILocation(line: 46, column: 25, scope: !442)
!488 = !DILocation(line: 48, column: 2, scope: !442)
!489 = !DILocation(line: 48, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !442, file: !113, line: 48, column: 5)
!491 = !DILocalVariable(name: "thread", scope: !442, file: !113, line: 50, type: !131)
!492 = !DILocation(line: 50, column: 19, scope: !442)
!493 = !DILocation(line: 50, column: 51, scope: !442)
!494 = !DILocation(line: 50, column: 60, scope: !442)
!495 = !DILocation(line: 50, column: 28, scope: !442)
!496 = !DILocation(line: 52, column: 6, scope: !497)
!497 = distinct !DILexicalBlock(scope: !442, file: !113, line: 52, column: 6)
!498 = !DILocation(line: 52, column: 13, scope: !497)
!499 = !DILocation(line: 52, column: 6, scope: !442)
!500 = !DILocation(line: 53, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !113, line: 52, column: 19)
!502 = !DILocation(line: 53, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !113, line: 53, column: 6)
!504 = !DILocation(line: 55, column: 32, scope: !501)
!505 = !DILocalVariable(name: "thread", arg: 1, scope: !506, file: !507, line: 59, type: !131)
!506 = distinct !DISubprogram(name: "arch_thread_return_value_set", scope: !507, file: !507, line: 59, type: !508, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!507 = !DIFile(filename: "arch/arm/include/cortex_m/kernel_arch_func.h", directory: "/home/sri/zephyrproject/zephyr")
!508 = !DISubroutineType(types: !509)
!509 = !{null, !131, !177}
!510 = !DILocation(line: 59, column: 47, scope: !506, inlinedAt: !511)
!511 = distinct !DILocation(line: 55, column: 3, scope: !501)
!512 = !DILocalVariable(name: "value", arg: 2, scope: !506, file: !507, line: 59, type: !177)
!513 = !DILocation(line: 59, column: 68, scope: !506, inlinedAt: !511)
!514 = !DILocation(line: 61, column: 35, scope: !506, inlinedAt: !511)
!515 = !DILocation(line: 61, column: 2, scope: !506, inlinedAt: !511)
!516 = !DILocation(line: 61, column: 10, scope: !506, inlinedAt: !511)
!517 = !DILocation(line: 61, column: 15, scope: !506, inlinedAt: !511)
!518 = !DILocation(line: 61, column: 33, scope: !506, inlinedAt: !511)
!519 = !DILocation(line: 56, column: 18, scope: !501)
!520 = !DILocation(line: 56, column: 3, scope: !501)
!521 = !DILocation(line: 57, column: 3, scope: !501)
!522 = !DILocation(line: 58, column: 2, scope: !501)
!523 = !DILocation(line: 59, column: 3, scope: !524)
!524 = distinct !DILexicalBlock(scope: !497, file: !113, line: 58, column: 9)
!525 = !DILocalVariable(name: "l", arg: 1, scope: !526, file: !115, line: 235, type: !455)
!526 = distinct !DISubprogram(name: "k_spin_unlock", scope: !115, file: !115, line: 235, type: !527, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!527 = !DISubroutineType(types: !528)
!528 = !{null, !455, !446}
!529 = !DILocation(line: 235, column: 84, scope: !526, inlinedAt: !530)
!530 = distinct !DILocation(line: 59, column: 3, scope: !524)
!531 = !DILocalVariable(name: "key", arg: 2, scope: !526, file: !115, line: 236, type: !446)
!532 = !DILocation(line: 236, column: 23, scope: !526, inlinedAt: !530)
!533 = !DILocation(line: 238, column: 9, scope: !526, inlinedAt: !530)
!534 = !DILocation(line: 261, column: 22, scope: !526, inlinedAt: !530)
!535 = !DILocalVariable(name: "key", arg: 1, scope: !536, file: !463, line: 88, type: !177)
!536 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !463, file: !463, line: 88, type: !537, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !177}
!539 = !DILocation(line: 88, column: 80, scope: !536, inlinedAt: !540)
!540 = distinct !DILocation(line: 261, column: 2, scope: !526, inlinedAt: !530)
!541 = !DILocation(line: 91, column: 6, scope: !542, inlinedAt: !540)
!542 = distinct !DILexicalBlock(scope: !536, file: !463, line: 91, column: 6)
!543 = !DILocation(line: 91, column: 10, scope: !542, inlinedAt: !540)
!544 = !DILocation(line: 91, column: 6, scope: !536, inlinedAt: !540)
!545 = !DILocation(line: 92, column: 3, scope: !546, inlinedAt: !540)
!546 = distinct !DILexicalBlock(scope: !542, file: !463, line: 91, column: 17)
!547 = !DILocation(line: 94, column: 2, scope: !536, inlinedAt: !540)
!548 = !{i64 67206}
!549 = !DILocation(line: 114, column: 1, scope: !536, inlinedAt: !540)
!550 = !DILocation(line: 62, column: 2, scope: !442)
!551 = !DILocation(line: 62, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !442, file: !113, line: 62, column: 5)
!553 = !DILocation(line: 64, column: 2, scope: !442)
!554 = distinct !DISubprogram(name: "z_impl_k_condvar_broadcast", scope: !113, file: !113, line: 76, type: !410, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!555 = !DILocalVariable(name: "condvar", arg: 1, scope: !554, file: !113, line: 76, type: !412)
!556 = !DILocation(line: 76, column: 50, scope: !554)
!557 = !DILocalVariable(name: "pending_thread", scope: !554, file: !113, line: 78, type: !131)
!558 = !DILocation(line: 78, column: 19, scope: !554)
!559 = !DILocalVariable(name: "key", scope: !554, file: !113, line: 79, type: !446)
!560 = !DILocation(line: 79, column: 19, scope: !554)
!561 = !DILocalVariable(name: "woken", scope: !554, file: !113, line: 80, type: !95)
!562 = !DILocation(line: 80, column: 6, scope: !554)
!563 = !DILocation(line: 160, column: 94, scope: !452, inlinedAt: !564)
!564 = distinct !DILocation(line: 82, column: 8, scope: !554)
!565 = !DILocation(line: 162, column: 9, scope: !452, inlinedAt: !564)
!566 = !DILocation(line: 163, column: 19, scope: !452, inlinedAt: !564)
!567 = !DILocation(line: 44, column: 15, scope: !462, inlinedAt: !568)
!568 = distinct !DILocation(line: 169, column: 10, scope: !452, inlinedAt: !564)
!569 = !DILocation(line: 48, column: 2, scope: !462, inlinedAt: !568)
!570 = !DILocation(line: 80, column: 9, scope: !462, inlinedAt: !568)
!571 = !DILocation(line: 169, column: 8, scope: !452, inlinedAt: !564)
!572 = !DILocation(line: 171, column: 26, scope: !452, inlinedAt: !564)
!573 = !DILocation(line: 110, column: 94, scope: !474, inlinedAt: !574)
!574 = distinct !DILocation(line: 171, column: 2, scope: !452, inlinedAt: !564)
!575 = !DILocation(line: 112, column: 9, scope: !474, inlinedAt: !574)
!576 = !DILocation(line: 177, column: 27, scope: !452, inlinedAt: !564)
!577 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !578)
!578 = distinct !DILocation(line: 177, column: 2, scope: !452, inlinedAt: !564)
!579 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !578)
!580 = !DILocation(line: 179, column: 2, scope: !452, inlinedAt: !564)
!581 = !DILocation(line: 82, column: 8, scope: !554)
!582 = !DILocation(line: 84, column: 2, scope: !554)
!583 = !DILocation(line: 84, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !554, file: !113, line: 84, column: 5)
!585 = !DILocation(line: 87, column: 2, scope: !554)
!586 = !DILocation(line: 87, column: 50, scope: !554)
!587 = !DILocation(line: 87, column: 59, scope: !554)
!588 = !DILocation(line: 87, column: 27, scope: !554)
!589 = !DILocation(line: 87, column: 25, scope: !554)
!590 = !DILocation(line: 87, column: 68, scope: !554)
!591 = !DILocation(line: 89, column: 8, scope: !592)
!592 = distinct !DILexicalBlock(scope: !554, file: !113, line: 88, column: 12)
!593 = !DILocation(line: 90, column: 32, scope: !592)
!594 = !DILocation(line: 59, column: 47, scope: !506, inlinedAt: !595)
!595 = distinct !DILocation(line: 90, column: 3, scope: !592)
!596 = !DILocation(line: 59, column: 68, scope: !506, inlinedAt: !595)
!597 = !DILocation(line: 61, column: 35, scope: !506, inlinedAt: !595)
!598 = !DILocation(line: 61, column: 2, scope: !506, inlinedAt: !595)
!599 = !DILocation(line: 61, column: 10, scope: !506, inlinedAt: !595)
!600 = !DILocation(line: 61, column: 15, scope: !506, inlinedAt: !595)
!601 = !DILocation(line: 61, column: 33, scope: !506, inlinedAt: !595)
!602 = !DILocation(line: 91, column: 18, scope: !592)
!603 = !DILocation(line: 91, column: 3, scope: !592)
!604 = distinct !{!604, !585, !605}
!605 = !DILocation(line: 92, column: 2, scope: !554)
!606 = !DILocation(line: 94, column: 2, scope: !554)
!607 = !DILocation(line: 94, column: 7, scope: !608)
!608 = distinct !DILexicalBlock(scope: !554, file: !113, line: 94, column: 5)
!609 = !DILocation(line: 96, column: 2, scope: !554)
!610 = !DILocation(line: 98, column: 9, scope: !554)
!611 = !DILocation(line: 98, column: 2, scope: !554)
!612 = distinct !DISubprogram(name: "z_impl_k_condvar_wait", scope: !113, file: !113, line: 109, type: !613, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !116)
!613 = !DISubroutineType(types: !614)
!614 = !{!95, !412, !615, !296}
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 32)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_mutex", file: !209, line: 2895, size: 160, elements: !617)
!617 = !{!618, !619, !620, !621}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !616, file: !209, line: 2897, baseType: !153, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !616, file: !209, line: 2899, baseType: !131, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !616, file: !209, line: 2902, baseType: !176, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "owner_orig_prio", scope: !616, file: !209, line: 2905, baseType: !95, size: 32, offset: 128)
!622 = !DILocalVariable(name: "condvar", arg: 1, scope: !612, file: !113, line: 109, type: !412)
!623 = !DILocation(line: 109, column: 45, scope: !612)
!624 = !DILocalVariable(name: "mutex", arg: 2, scope: !612, file: !113, line: 109, type: !615)
!625 = !DILocation(line: 109, column: 70, scope: !612)
!626 = !DILocalVariable(name: "timeout", arg: 3, scope: !612, file: !113, line: 110, type: !296)
!627 = !DILocation(line: 110, column: 18, scope: !612)
!628 = !DILocalVariable(name: "key", scope: !612, file: !113, line: 112, type: !446)
!629 = !DILocation(line: 112, column: 19, scope: !612)
!630 = !DILocalVariable(name: "ret", scope: !612, file: !113, line: 113, type: !95)
!631 = !DILocation(line: 113, column: 6, scope: !612)
!632 = !DILocation(line: 115, column: 2, scope: !612)
!633 = !DILocation(line: 115, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !612, file: !113, line: 115, column: 5)
!635 = !DILocation(line: 160, column: 94, scope: !452, inlinedAt: !636)
!636 = distinct !DILocation(line: 117, column: 8, scope: !612)
!637 = !DILocation(line: 162, column: 9, scope: !452, inlinedAt: !636)
!638 = !DILocation(line: 163, column: 19, scope: !452, inlinedAt: !636)
!639 = !DILocation(line: 44, column: 15, scope: !462, inlinedAt: !640)
!640 = distinct !DILocation(line: 169, column: 10, scope: !452, inlinedAt: !636)
!641 = !DILocation(line: 48, column: 2, scope: !462, inlinedAt: !640)
!642 = !DILocation(line: 80, column: 9, scope: !462, inlinedAt: !640)
!643 = !DILocation(line: 169, column: 8, scope: !452, inlinedAt: !636)
!644 = !DILocation(line: 171, column: 26, scope: !452, inlinedAt: !636)
!645 = !DILocation(line: 110, column: 94, scope: !474, inlinedAt: !646)
!646 = distinct !DILocation(line: 171, column: 2, scope: !452, inlinedAt: !636)
!647 = !DILocation(line: 112, column: 9, scope: !474, inlinedAt: !646)
!648 = !DILocation(line: 177, column: 27, scope: !452, inlinedAt: !636)
!649 = !DILocation(line: 121, column: 95, scope: !482, inlinedAt: !650)
!650 = distinct !DILocation(line: 177, column: 2, scope: !452, inlinedAt: !636)
!651 = !DILocation(line: 123, column: 9, scope: !482, inlinedAt: !650)
!652 = !DILocation(line: 179, column: 2, scope: !452, inlinedAt: !636)
!653 = !DILocation(line: 117, column: 8, scope: !612)
!654 = !DILocation(line: 118, column: 17, scope: !612)
!655 = !DILocation(line: 118, column: 2, scope: !612)
!656 = !DILocation(line: 120, column: 33, scope: !612)
!657 = !DILocation(line: 120, column: 42, scope: !612)
!658 = !DILocation(line: 120, column: 8, scope: !612)
!659 = !DILocation(line: 120, column: 6, scope: !612)
!660 = !DILocation(line: 121, column: 15, scope: !612)
!661 = !DILocation(line: 121, column: 37, scope: !612)
!662 = !DILocation(line: 121, column: 2, scope: !612)
!663 = !DILocation(line: 123, column: 2, scope: !612)
!664 = !DILocation(line: 123, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !612, file: !113, line: 123, column: 5)
!666 = !DILocation(line: 125, column: 9, scope: !612)
!667 = !DILocation(line: 125, column: 2, scope: !612)
!668 = distinct !DISubprogram(name: "k_mutex_unlock", scope: !669, file: !669, line: 993, type: !670, scopeLine: 994, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!669 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!670 = !DISubroutineType(types: !671)
!671 = !{!95, !615}
!672 = !DILocalVariable(name: "mutex", arg: 1, scope: !668, file: !669, line: 993, type: !615)
!673 = !DILocation(line: 993, column: 51, scope: !668)
!674 = !DILocation(line: 1001, column: 2, scope: !668)
!675 = !DILocation(line: 1001, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !668, file: !669, line: 1001, column: 5)
!677 = !{i64 148268}
!678 = !DILocation(line: 1001, column: 47, scope: !676)
!679 = !DILocation(line: 1002, column: 31, scope: !668)
!680 = !DILocation(line: 1002, column: 9, scope: !668)
!681 = !DILocation(line: 1002, column: 2, scope: !668)
!682 = distinct !DISubprogram(name: "k_mutex_lock", scope: !669, file: !669, line: 976, type: !683, scopeLine: 977, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!683 = !DISubroutineType(types: !684)
!684 = !{!95, !615, !296}
!685 = !DILocalVariable(name: "mutex", arg: 1, scope: !682, file: !669, line: 976, type: !615)
!686 = !DILocation(line: 976, column: 49, scope: !682)
!687 = !DILocalVariable(name: "timeout", arg: 2, scope: !682, file: !669, line: 976, type: !296)
!688 = !DILocation(line: 976, column: 68, scope: !682)
!689 = !DILocation(line: 985, column: 2, scope: !682)
!690 = !DILocation(line: 985, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !682, file: !669, line: 985, column: 5)
!692 = !{i64 148035}
!693 = !DILocation(line: 985, column: 47, scope: !691)
!694 = !DILocation(line: 986, column: 29, scope: !682)
!695 = !DILocation(line: 986, column: 9, scope: !682)
!696 = !DILocation(line: 986, column: 2, scope: !682)
!697 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !343, file: !343, line: 335, type: !698, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!698 = !DISubroutineType(types: !699)
!699 = !{!700, !701}
!700 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!702 = !DILocalVariable(name: "list", arg: 1, scope: !697, file: !343, line: 335, type: !701)
!703 = !DILocation(line: 335, column: 55, scope: !697)
!704 = !DILocation(line: 335, column: 92, scope: !697)
!705 = !DILocation(line: 335, column: 71, scope: !697)
!706 = !DILocation(line: 335, column: 98, scope: !697)
!707 = !DILocation(line: 335, column: 63, scope: !697)
!708 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !343, file: !343, line: 255, type: !709, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!709 = !DISubroutineType(types: !710)
!710 = !{!347, !701}
!711 = !DILocalVariable(name: "list", arg: 1, scope: !708, file: !343, line: 255, type: !701)
!712 = !DILocation(line: 255, column: 64, scope: !708)
!713 = !DILocation(line: 257, column: 9, scope: !708)
!714 = !DILocation(line: 257, column: 15, scope: !708)
!715 = !DILocation(line: 257, column: 2, scope: !708)
!716 = distinct !DISubprogram(name: "sys_dlist_init", scope: !98, file: !98, line: 203, type: !717, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !116)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!720 = !DILocalVariable(name: "list", arg: 1, scope: !716, file: !98, line: 203, type: !719)
!721 = !DILocation(line: 203, column: 48, scope: !716)
!722 = !DILocation(line: 205, column: 30, scope: !716)
!723 = !DILocation(line: 205, column: 2, scope: !716)
!724 = !DILocation(line: 205, column: 8, scope: !716)
!725 = !DILocation(line: 205, column: 13, scope: !716)
!726 = !DILocation(line: 206, column: 30, scope: !716)
!727 = !DILocation(line: 206, column: 2, scope: !716)
!728 = !DILocation(line: 206, column: 8, scope: !716)
!729 = !DILocation(line: 206, column: 13, scope: !716)
!730 = !DILocation(line: 207, column: 1, scope: !716)
