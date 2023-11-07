; ModuleID = '../bc_files/thread.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/thread.c"
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
%struct.__basic_sf = type { %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !141 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !262, metadata !DIExpression()), !dbg !263
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !265
  %5 = load ptr, ptr %3, align 4, !dbg !266
  %6 = load ptr, ptr %4, align 4, !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !269 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !273
  %3 = load ptr, ptr %2, align 4, !dbg !274
  ret void, !dbg !275
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !276 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !279, metadata !DIExpression()), !dbg !280
  %3 = load i8, ptr %2, align 1, !dbg !281
  ret ptr null, !dbg !282
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !283 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !288, metadata !DIExpression()), !dbg !289
  %5 = load i8, ptr %3, align 1, !dbg !290
  %6 = load i32, ptr %4, align 4, !dbg !291
  ret ptr null, !dbg !292
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !293 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !300, metadata !DIExpression()), !dbg !301
  %3 = load ptr, ptr %2, align 4, !dbg !302
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !303
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !304
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !305
  ret i64 %6, !dbg !306
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !307 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !308, metadata !DIExpression()), !dbg !309
  %3 = load ptr, ptr %2, align 4, !dbg !310
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !311
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !312
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !313
  ret i64 %6, !dbg !314
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !338
  %3 = load ptr, ptr %2, align 4, !dbg !339
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !340
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !341
  ret i64 %5, !dbg !342
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !343 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !344, metadata !DIExpression()), !dbg !345
  %3 = load ptr, ptr %2, align 4, !dbg !346
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !347
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !348
  ret i64 %5, !dbg !349
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !350 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !353, metadata !DIExpression()), !dbg !354
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !355, metadata !DIExpression()), !dbg !356
  %5 = load ptr, ptr %4, align 4, !dbg !357
  %6 = load ptr, ptr %3, align 4, !dbg !358
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !359
  store ptr %5, ptr %7, align 4, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !362 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = load ptr, ptr %2, align 4, !dbg !367
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !368
  %5 = load ptr, ptr %4, align 4, !dbg !368
  ret ptr %5, !dbg !369
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !370 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !394
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !395
  %6 = zext i1 %5 to i32, !dbg !396
  ret i32 %6, !dbg !397
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !398 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !408
  %3 = load ptr, ptr %2, align 4, !dbg !409
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !410
  %5 = load i32, ptr %4, align 4, !dbg !410
  ret i32 %5, !dbg !411
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !412 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !431
  %3 = load ptr, ptr %2, align 4, !dbg !432
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !433
  %5 = load i32, ptr %4, align 4, !dbg !433
  %6 = load ptr, ptr %2, align 4, !dbg !434
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !435
  %8 = load i32, ptr %7, align 4, !dbg !435
  %9 = sub i32 %5, %8, !dbg !436
  ret i32 %9, !dbg !437
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !438 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !439, metadata !DIExpression()), !dbg !440
  %3 = load ptr, ptr %2, align 4, !dbg !441
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !442
  %5 = load i32, ptr %4, align 4, !dbg !442
  ret i32 %5, !dbg !443
}

; Function Attrs: noinline nounwind optnone
define hidden void @arch_new_thread(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !444 {
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca ptr, align 4
  %15 = alloca ptr, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !459, metadata !DIExpression()), !dbg !460
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !461, metadata !DIExpression()), !dbg !462
  store ptr %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !463, metadata !DIExpression()), !dbg !464
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !465, metadata !DIExpression()), !dbg !466
  store ptr %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !467, metadata !DIExpression()), !dbg !468
  store ptr %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !469, metadata !DIExpression()), !dbg !470
  store ptr %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %15, metadata !473, metadata !DIExpression()), !dbg !474
  %16 = load ptr, ptr %10, align 4, !dbg !475
  %17 = getelementptr inbounds i8, ptr %16, i32 -32, !dbg !476
  store ptr %17, ptr %15, align 4, !dbg !477
  %18 = load ptr, ptr %15, align 4, !dbg !478
  %19 = getelementptr inbounds %struct.__basic_sf, ptr %18, i32 0, i32 6, !dbg !479
  store i32 ptrtoint (ptr @z_thread_entry to i32), ptr %19, align 4, !dbg !480
  %20 = load ptr, ptr %15, align 4, !dbg !481
  %21 = getelementptr inbounds %struct.__basic_sf, ptr %20, i32 0, i32 6, !dbg !482
  %22 = load i32, ptr %21, align 4, !dbg !483
  %23 = and i32 %22, -2, !dbg !483
  store i32 %23, ptr %21, align 4, !dbg !483
  %24 = load ptr, ptr %11, align 4, !dbg !484
  %25 = ptrtoint ptr %24 to i32, !dbg !485
  %26 = load ptr, ptr %15, align 4, !dbg !486
  %27 = getelementptr inbounds %struct.__basic_sf, ptr %26, i32 0, i32 0, !dbg !487
  store i32 %25, ptr %27, align 4, !dbg !488
  %28 = load ptr, ptr %12, align 4, !dbg !489
  %29 = ptrtoint ptr %28 to i32, !dbg !490
  %30 = load ptr, ptr %15, align 4, !dbg !491
  %31 = getelementptr inbounds %struct.__basic_sf, ptr %30, i32 0, i32 1, !dbg !492
  store i32 %29, ptr %31, align 4, !dbg !493
  %32 = load ptr, ptr %13, align 4, !dbg !494
  %33 = ptrtoint ptr %32 to i32, !dbg !495
  %34 = load ptr, ptr %15, align 4, !dbg !496
  %35 = getelementptr inbounds %struct.__basic_sf, ptr %34, i32 0, i32 2, !dbg !497
  store i32 %33, ptr %35, align 4, !dbg !498
  %36 = load ptr, ptr %14, align 4, !dbg !499
  %37 = ptrtoint ptr %36 to i32, !dbg !500
  %38 = load ptr, ptr %15, align 4, !dbg !501
  %39 = getelementptr inbounds %struct.__basic_sf, ptr %38, i32 0, i32 3, !dbg !502
  store i32 %37, ptr %39, align 4, !dbg !503
  %40 = load ptr, ptr %15, align 4, !dbg !504
  %41 = getelementptr inbounds %struct.__basic_sf, ptr %40, i32 0, i32 7, !dbg !505
  store i32 16777216, ptr %41, align 4, !dbg !506
  %42 = load ptr, ptr %15, align 4, !dbg !507
  %43 = ptrtoint ptr %42 to i32, !dbg !508
  %44 = load ptr, ptr %8, align 4, !dbg !509
  %45 = getelementptr inbounds %struct.k_thread, ptr %44, i32 0, i32 1, !dbg !510
  %46 = getelementptr inbounds %struct._callee_saved, ptr %45, i32 0, i32 8, !dbg !511
  store i32 %43, ptr %46, align 8, !dbg !512
  %47 = load ptr, ptr %8, align 4, !dbg !513
  %48 = getelementptr inbounds %struct.k_thread, ptr %47, i32 0, i32 6, !dbg !514
  %49 = getelementptr inbounds %struct._thread_arch, ptr %48, i32 0, i32 0, !dbg !515
  store i32 0, ptr %49, align 8, !dbg !516
  ret void, !dbg !517
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare void @z_thread_entry(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden void @arch_switch_to_main_thread(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !518 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !521, metadata !DIExpression()), !dbg !522
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !523, metadata !DIExpression()), !dbg !524
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !525, metadata !DIExpression()), !dbg !526
  call void @z_arm_prepare_switch_to_main(), !dbg !527
  %7 = load ptr, ptr %4, align 4, !dbg !528
  store ptr %7, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !529
  %8 = load ptr, ptr %6, align 4, !dbg !530
  %9 = load ptr, ptr %5, align 4, !dbg !531
  call void asm sideeffect "mov   r0,  $0\0A\09msr   PSP, $1\0A\09movs r1, #0\0A\09cpsie i\0A\09isb\0A\09movs r2, #0\0A\09movs r3, #0\0A\09bl z_thread_entry\0A\09", "r,r,~{r0}"(ptr %8, ptr %9) #4, !dbg !532, !srcloc !533
  unreachable, !dbg !534
}

; Function Attrs: noinline nounwind optnone
define internal void @z_arm_prepare_switch_to_main() #0 !dbg !535 {
  ret void, !dbg !538
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !539 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !544, metadata !DIExpression()), !dbg !545
  %3 = load ptr, ptr %2, align 4, !dbg !546
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !547
  %5 = icmp eq ptr %4, null, !dbg !548
  ret i1 %5, !dbg !549
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !550 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !553, metadata !DIExpression()), !dbg !554
  %3 = load ptr, ptr %2, align 4, !dbg !555
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !556
  %5 = load ptr, ptr %4, align 4, !dbg !556
  ret ptr %5, !dbg !557
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "thread.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !95, !130, !131}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__basic_sf", file: !89, line: 102, size: 256, elements: !90)
!89 = !DIFile(filename: "include/zephyr/arch/arm/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!90 = !{!91, !99, !104, !109, !114, !119, !124, !129}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 103, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 103, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "a1", scope: !92, file: !89, line: 103, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 64, baseType: !97)
!96 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "r0", scope: !92, file: !89, line: 103, baseType: !95, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 104, baseType: !100, size: 32, offset: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 104, size: 32, elements: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "a2", scope: !100, file: !89, line: 104, baseType: !95, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "r1", scope: !100, file: !89, line: 104, baseType: !95, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 105, baseType: !105, size: 32, offset: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 105, size: 32, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "a3", scope: !105, file: !89, line: 105, baseType: !95, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "r2", scope: !105, file: !89, line: 105, baseType: !95, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 106, baseType: !110, size: 32, offset: 96)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 106, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "a4", scope: !110, file: !89, line: 106, baseType: !95, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "r3", scope: !110, file: !89, line: 106, baseType: !95, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 107, baseType: !115, size: 32, offset: 128)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 107, size: 32, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !115, file: !89, line: 107, baseType: !95, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !115, file: !89, line: 107, baseType: !95, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 108, baseType: !120, size: 32, offset: 160)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 108, size: 32, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "lr", scope: !120, file: !89, line: 108, baseType: !95, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !120, file: !89, line: 108, baseType: !95, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !89, line: 109, baseType: !125, size: 32, offset: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !89, line: 109, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pc", scope: !125, file: !89, line: 109, baseType: !95, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !125, file: !89, line: 109, baseType: !95, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "xpsr", scope: !88, file: !89, line: 110, baseType: !95, size: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !{i32 7, !"Dwarf Version", i32 4}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 4}
!135 = !{i32 1, !"static_rwdata", i32 1}
!136 = !{i32 1, !"enumsize_buildattr", i32 1}
!137 = !{i32 1, !"armlib_unavailable", i32 0}
!138 = !{i32 8, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!141 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !142, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144, !146}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !148, line: 250, size: 896, elements: !149)
!148 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!149 = !{!150, !220, !233, !234, !235, !236, !257}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !147, file: !148, line: 252, baseType: !151, size: 384)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !148, line: 58, size: 384, elements: !152)
!152 = !{!153, !181, !189, !191, !192, !205, !206, !207}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !148, line: 61, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !148, line: 61, size: 64, elements: !155)
!155 = !{!156, !172}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !154, file: !148, line: 62, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !158, line: 55, baseType: !159)
!158 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !158, line: 37, size: 64, elements: !160)
!160 = !{!161, !167}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 38, baseType: !162, size: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 38, size: 32, elements: !163)
!163 = !{!164, !166}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !162, file: !158, line: 39, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !158, line: 40, baseType: !165, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 42, baseType: !168, size: 32, offset: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 42, size: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !168, file: !158, line: 43, baseType: !165, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !168, file: !158, line: 44, baseType: !165, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !154, file: !148, line: 63, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !174, line: 58, size: 64, elements: !175)
!174 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !173, file: !174, line: 60, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !179)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!179 = !{!180}
!180 = !DISubrange(count: 2)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !151, file: !148, line: 69, baseType: !182, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !184, line: 243, baseType: !185)
!184 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 241, size: 64, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !185, file: !184, line: 242, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !158, line: 51, baseType: !159)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !151, file: !148, line: 72, baseType: !190, size: 8, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 62, baseType: !5)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !151, file: !148, line: 75, baseType: !190, size: 8, offset: 104)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !148, line: 91, baseType: !193, size: 16, offset: 112)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !148, line: 91, size: 16, elements: !194)
!194 = !{!195, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !148, line: 92, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !193, file: !148, line: 92, size: 16, elements: !197)
!197 = !{!198, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !196, file: !148, line: 97, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !96, line: 56, baseType: !200)
!200 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !196, file: !148, line: 98, baseType: !190, size: 8, offset: 8)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !193, file: !148, line: 101, baseType: !203, size: 16)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 63, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !151, file: !148, line: 108, baseType: !95, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !151, file: !148, line: 132, baseType: !130, size: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !151, file: !148, line: 136, baseType: !208, size: 192, offset: 192)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !184, line: 254, size: 192, elements: !209)
!209 = !{!210, !211, !217}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !208, file: !184, line: 255, baseType: !157, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !208, file: !184, line: 256, baseType: !212, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !184, line: 252, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !208, file: !184, line: 259, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !96, line: 59, baseType: !219)
!219 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !147, file: !148, line: 255, baseType: !221, size: 288, offset: 384)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !222, line: 25, size: 288, elements: !223)
!222 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !221, file: !222, line: 26, baseType: !95, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !221, file: !222, line: 27, baseType: !95, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !221, file: !222, line: 28, baseType: !95, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !221, file: !222, line: 29, baseType: !95, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !221, file: !222, line: 30, baseType: !95, size: 32, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !221, file: !222, line: 31, baseType: !95, size: 32, offset: 160)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !221, file: !222, line: 32, baseType: !95, size: 32, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !221, file: !222, line: 33, baseType: !95, size: 32, offset: 224)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !221, file: !222, line: 34, baseType: !95, size: 32, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !147, file: !148, line: 258, baseType: !130, size: 32, offset: 672)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !147, file: !148, line: 261, baseType: !183, size: 64, offset: 704)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !147, file: !148, line: 302, baseType: !131, size: 32, offset: 768)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !147, file: !148, line: 333, baseType: !237, size: 32, offset: 800)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !239, line: 5291, size: 160, elements: !240)
!239 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!240 = !{!241, !252, !253}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !238, file: !239, line: 5292, baseType: !242, size: 96)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !243, line: 56, size: 96, elements: !244)
!243 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!244 = !{!245, !248, !249}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !242, file: !243, line: 57, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 32)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !243, line: 57, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !242, file: !243, line: 58, baseType: !130, size: 32, offset: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !242, file: !243, line: 59, baseType: !250, size: 32, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !251, line: 46, baseType: !97)
!251 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !238, file: !239, line: 5293, baseType: !183, size: 64, offset: 96)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !238, file: !239, line: 5294, baseType: !254, offset: 160)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !255, line: 45, elements: !256)
!255 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!256 = !{}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !147, file: !148, line: 355, baseType: !258, size: 64, offset: 832)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !222, line: 60, size: 64, elements: !259)
!259 = !{!260, !261}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !258, file: !222, line: 63, baseType: !95, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !258, file: !222, line: 66, baseType: !95, size: 32, offset: 32)
!262 = !DILocalVariable(name: "object", arg: 1, scope: !141, file: !4, line: 223, type: !144)
!263 = !DILocation(line: 223, column: 61, scope: !141)
!264 = !DILocalVariable(name: "thread", arg: 2, scope: !141, file: !4, line: 224, type: !146)
!265 = !DILocation(line: 224, column: 24, scope: !141)
!266 = !DILocation(line: 226, column: 9, scope: !141)
!267 = !DILocation(line: 227, column: 9, scope: !141)
!268 = !DILocation(line: 228, column: 1, scope: !141)
!269 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !270, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !144}
!272 = !DILocalVariable(name: "object", arg: 1, scope: !269, file: !4, line: 243, type: !144)
!273 = !DILocation(line: 243, column: 56, scope: !269)
!274 = !DILocation(line: 245, column: 9, scope: !269)
!275 = !DILocation(line: 246, column: 1, scope: !269)
!276 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !277, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!277 = !DISubroutineType(types: !278)
!278 = !{!130, !3}
!279 = !DILocalVariable(name: "otype", arg: 1, scope: !276, file: !4, line: 359, type: !3)
!280 = !DILocation(line: 359, column: 58, scope: !276)
!281 = !DILocation(line: 361, column: 9, scope: !276)
!282 = !DILocation(line: 363, column: 2, scope: !276)
!283 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !284, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!284 = !DISubroutineType(types: !285)
!285 = !{!130, !3, !250}
!286 = !DILocalVariable(name: "otype", arg: 1, scope: !283, file: !4, line: 366, type: !3)
!287 = !DILocation(line: 366, column: 63, scope: !283)
!288 = !DILocalVariable(name: "size", arg: 2, scope: !283, file: !4, line: 367, type: !250)
!289 = !DILocation(line: 367, column: 13, scope: !283)
!290 = !DILocation(line: 369, column: 9, scope: !283)
!291 = !DILocation(line: 370, column: 9, scope: !283)
!292 = !DILocation(line: 372, column: 2, scope: !283)
!293 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !239, file: !239, line: 656, type: !294, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !297, line: 46, baseType: !218)
!297 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!300 = !DILocalVariable(name: "t", arg: 1, scope: !293, file: !239, line: 657, type: !298)
!301 = !DILocation(line: 657, column: 30, scope: !293)
!302 = !DILocation(line: 659, column: 28, scope: !293)
!303 = !DILocation(line: 659, column: 31, scope: !293)
!304 = !DILocation(line: 659, column: 36, scope: !293)
!305 = !DILocation(line: 659, column: 9, scope: !293)
!306 = !DILocation(line: 659, column: 2, scope: !293)
!307 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !239, file: !239, line: 671, type: !294, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!308 = !DILocalVariable(name: "t", arg: 1, scope: !307, file: !239, line: 672, type: !298)
!309 = !DILocation(line: 672, column: 30, scope: !307)
!310 = !DILocation(line: 674, column: 30, scope: !307)
!311 = !DILocation(line: 674, column: 33, scope: !307)
!312 = !DILocation(line: 674, column: 38, scope: !307)
!313 = !DILocation(line: 674, column: 9, scope: !307)
!314 = !DILocation(line: 674, column: 2, scope: !307)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !239, file: !239, line: 1634, type: !316, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!316 = !DISubroutineType(types: !317)
!317 = !{!296, !318}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !239, line: 1439, size: 448, elements: !321)
!321 = !{!322, !323, !324, !329, !330, !335, !336}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !320, file: !239, line: 1445, baseType: !208, size: 192)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !320, file: !239, line: 1448, baseType: !183, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !320, file: !239, line: 1451, baseType: !325, size: 32, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 32)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !320, file: !239, line: 1454, baseType: !325, size: 32, offset: 288)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !320, file: !239, line: 1457, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !297, line: 67, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 65, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !332, file: !297, line: 66, baseType: !296, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !320, file: !239, line: 1460, baseType: !95, size: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !320, file: !239, line: 1463, baseType: !130, size: 32, offset: 416)
!337 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !239, line: 1635, type: !318)
!338 = !DILocation(line: 1635, column: 34, scope: !315)
!339 = !DILocation(line: 1637, column: 28, scope: !315)
!340 = !DILocation(line: 1637, column: 35, scope: !315)
!341 = !DILocation(line: 1637, column: 9, scope: !315)
!342 = !DILocation(line: 1637, column: 2, scope: !315)
!343 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !239, file: !239, line: 1649, type: !316, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!344 = !DILocalVariable(name: "timer", arg: 1, scope: !343, file: !239, line: 1650, type: !318)
!345 = !DILocation(line: 1650, column: 34, scope: !343)
!346 = !DILocation(line: 1652, column: 30, scope: !343)
!347 = !DILocation(line: 1652, column: 37, scope: !343)
!348 = !DILocation(line: 1652, column: 9, scope: !343)
!349 = !DILocation(line: 1652, column: 2, scope: !343)
!350 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !239, file: !239, line: 1689, type: !351, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !328, !130}
!353 = !DILocalVariable(name: "timer", arg: 1, scope: !350, file: !239, line: 1689, type: !328)
!354 = !DILocation(line: 1689, column: 65, scope: !350)
!355 = !DILocalVariable(name: "user_data", arg: 2, scope: !350, file: !239, line: 1690, type: !130)
!356 = !DILocation(line: 1690, column: 19, scope: !350)
!357 = !DILocation(line: 1692, column: 21, scope: !350)
!358 = !DILocation(line: 1692, column: 2, scope: !350)
!359 = !DILocation(line: 1692, column: 9, scope: !350)
!360 = !DILocation(line: 1692, column: 19, scope: !350)
!361 = !DILocation(line: 1693, column: 1, scope: !350)
!362 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !239, file: !239, line: 1704, type: !363, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!363 = !DISubroutineType(types: !364)
!364 = !{!130, !318}
!365 = !DILocalVariable(name: "timer", arg: 1, scope: !362, file: !239, line: 1704, type: !318)
!366 = !DILocation(line: 1704, column: 72, scope: !362)
!367 = !DILocation(line: 1706, column: 9, scope: !362)
!368 = !DILocation(line: 1706, column: 16, scope: !362)
!369 = !DILocation(line: 1706, column: 2, scope: !362)
!370 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !239, file: !239, line: 2071, type: !371, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!371 = !DISubroutineType(types: !372)
!372 = !{!131, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 32)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !239, line: 1830, size: 128, elements: !375)
!375 = !{!376, !389, !390}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !374, file: !239, line: 1831, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !378, line: 60, baseType: !379)
!378 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !378, line: 53, size: 64, elements: !380)
!380 = !{!381, !388}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !379, file: !378, line: 54, baseType: !382, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !378, line: 50, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !378, line: 44, size: 32, elements: !385)
!385 = !{!386}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !384, file: !378, line: 45, baseType: !387, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !378, line: 40, baseType: !95)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !379, file: !378, line: 55, baseType: !382, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !374, file: !239, line: 1832, baseType: !254, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !374, file: !239, line: 1833, baseType: !183, size: 64, offset: 64)
!391 = !DILocalVariable(name: "queue", arg: 1, scope: !370, file: !239, line: 2071, type: !373)
!392 = !DILocation(line: 2071, column: 59, scope: !370)
!393 = !DILocation(line: 2073, column: 35, scope: !370)
!394 = !DILocation(line: 2073, column: 42, scope: !370)
!395 = !DILocation(line: 2073, column: 14, scope: !370)
!396 = !DILocation(line: 2073, column: 9, scope: !370)
!397 = !DILocation(line: 2073, column: 2, scope: !370)
!398 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !239, file: !239, line: 3209, type: !399, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!399 = !DISubroutineType(types: !400)
!400 = !{!97, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 32)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !239, line: 3092, size: 128, elements: !403)
!403 = !{!404, !405, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !402, file: !239, line: 3093, baseType: !183, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !402, file: !239, line: 3094, baseType: !97, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !402, file: !239, line: 3095, baseType: !97, size: 32, offset: 96)
!407 = !DILocalVariable(name: "sem", arg: 1, scope: !398, file: !239, line: 3209, type: !401)
!408 = !DILocation(line: 3209, column: 65, scope: !398)
!409 = !DILocation(line: 3211, column: 9, scope: !398)
!410 = !DILocation(line: 3211, column: 14, scope: !398)
!411 = !DILocation(line: 3211, column: 2, scope: !398)
!412 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !239, file: !239, line: 4649, type: !413, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!413 = !DISubroutineType(types: !414)
!414 = !{!95, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 32)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !239, line: 4390, size: 320, elements: !417)
!417 = !{!418, !419, !420, !421, !422, !425, !426, !427, !428, !429}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !416, file: !239, line: 4392, baseType: !183, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !416, file: !239, line: 4394, baseType: !254, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !416, file: !239, line: 4396, baseType: !250, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !416, file: !239, line: 4398, baseType: !95, size: 32, offset: 96)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !416, file: !239, line: 4400, baseType: !423, size: 32, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 32)
!424 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !416, file: !239, line: 4402, baseType: !423, size: 32, offset: 160)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !416, file: !239, line: 4404, baseType: !423, size: 32, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !416, file: !239, line: 4406, baseType: !423, size: 32, offset: 224)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !416, file: !239, line: 4408, baseType: !95, size: 32, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !416, file: !239, line: 4413, baseType: !190, size: 8, offset: 288)
!430 = !DILocalVariable(name: "msgq", arg: 1, scope: !412, file: !239, line: 4649, type: !415)
!431 = !DILocation(line: 4649, column: 66, scope: !412)
!432 = !DILocation(line: 4651, column: 9, scope: !412)
!433 = !DILocation(line: 4651, column: 15, scope: !412)
!434 = !DILocation(line: 4651, column: 26, scope: !412)
!435 = !DILocation(line: 4651, column: 32, scope: !412)
!436 = !DILocation(line: 4651, column: 24, scope: !412)
!437 = !DILocation(line: 4651, column: 2, scope: !412)
!438 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !239, file: !239, line: 4665, type: !413, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!439 = !DILocalVariable(name: "msgq", arg: 1, scope: !438, file: !239, line: 4665, type: !415)
!440 = !DILocation(line: 4665, column: 66, scope: !438)
!441 = !DILocation(line: 4667, column: 9, scope: !438)
!442 = !DILocation(line: 4667, column: 15, scope: !438)
!443 = !DILocation(line: 4667, column: 2, scope: !438)
!444 = distinct !DISubprogram(name: "arch_new_thread", scope: !445, file: !445, line: 59, type: !446, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !256)
!445 = !DIFile(filename: "arch/arm/core/cortex_m/thread.c", directory: "/home/sri/zephyrproject/zephyr")
!446 = !DISubroutineType(types: !447)
!447 = !{null, !146, !448, !423, !455, !130, !130, !130}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_stack_t", file: !450, line: 44, baseType: !451)
!450 = !DIFile(filename: "include/zephyr/sys/arch_interface.h", directory: "/home/sri/zephyrproject/zephyr")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !452, line: 47, size: 8, elements: !453)
!452 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !451, file: !452, line: 48, baseType: !424, size: 8)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_thread_entry_t", file: !450, line: 46, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 32)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !130, !130, !130}
!459 = !DILocalVariable(name: "thread", arg: 1, scope: !444, file: !445, line: 59, type: !146)
!460 = !DILocation(line: 59, column: 39, scope: !444)
!461 = !DILocalVariable(name: "stack", arg: 2, scope: !444, file: !445, line: 59, type: !448)
!462 = !DILocation(line: 59, column: 65, scope: !444)
!463 = !DILocalVariable(name: "stack_ptr", arg: 3, scope: !444, file: !445, line: 60, type: !423)
!464 = !DILocation(line: 60, column: 14, scope: !444)
!465 = !DILocalVariable(name: "entry", arg: 4, scope: !444, file: !445, line: 60, type: !455)
!466 = !DILocation(line: 60, column: 42, scope: !444)
!467 = !DILocalVariable(name: "p1", arg: 5, scope: !444, file: !445, line: 61, type: !130)
!468 = !DILocation(line: 61, column: 14, scope: !444)
!469 = !DILocalVariable(name: "p2", arg: 6, scope: !444, file: !445, line: 61, type: !130)
!470 = !DILocation(line: 61, column: 24, scope: !444)
!471 = !DILocalVariable(name: "p3", arg: 7, scope: !444, file: !445, line: 61, type: !130)
!472 = !DILocation(line: 61, column: 34, scope: !444)
!473 = !DILocalVariable(name: "iframe", scope: !444, file: !445, line: 63, type: !87)
!474 = !DILocation(line: 63, column: 21, scope: !444)
!475 = !DILocation(line: 88, column: 34, scope: !444)
!476 = !DILocation(line: 88, column: 45, scope: !444)
!477 = !DILocation(line: 88, column: 9, scope: !444)
!478 = !DILocation(line: 96, column: 2, scope: !444)
!479 = !DILocation(line: 96, column: 10, scope: !444)
!480 = !DILocation(line: 96, column: 13, scope: !444)
!481 = !DILocation(line: 100, column: 2, scope: !444)
!482 = !DILocation(line: 100, column: 10, scope: !444)
!483 = !DILocation(line: 100, column: 13, scope: !444)
!484 = !DILocation(line: 101, column: 25, scope: !444)
!485 = !DILocation(line: 101, column: 15, scope: !444)
!486 = !DILocation(line: 101, column: 2, scope: !444)
!487 = !DILocation(line: 101, column: 10, scope: !444)
!488 = !DILocation(line: 101, column: 13, scope: !444)
!489 = !DILocation(line: 102, column: 25, scope: !444)
!490 = !DILocation(line: 102, column: 15, scope: !444)
!491 = !DILocation(line: 102, column: 2, scope: !444)
!492 = !DILocation(line: 102, column: 10, scope: !444)
!493 = !DILocation(line: 102, column: 13, scope: !444)
!494 = !DILocation(line: 103, column: 25, scope: !444)
!495 = !DILocation(line: 103, column: 15, scope: !444)
!496 = !DILocation(line: 103, column: 2, scope: !444)
!497 = !DILocation(line: 103, column: 10, scope: !444)
!498 = !DILocation(line: 103, column: 13, scope: !444)
!499 = !DILocation(line: 104, column: 25, scope: !444)
!500 = !DILocation(line: 104, column: 15, scope: !444)
!501 = !DILocation(line: 104, column: 2, scope: !444)
!502 = !DILocation(line: 104, column: 10, scope: !444)
!503 = !DILocation(line: 104, column: 13, scope: !444)
!504 = !DILocation(line: 106, column: 2, scope: !444)
!505 = !DILocation(line: 106, column: 10, scope: !444)
!506 = !DILocation(line: 106, column: 15, scope: !444)
!507 = !DILocation(line: 109, column: 39, scope: !444)
!508 = !DILocation(line: 109, column: 29, scope: !444)
!509 = !DILocation(line: 109, column: 2, scope: !444)
!510 = !DILocation(line: 109, column: 10, scope: !444)
!511 = !DILocation(line: 109, column: 23, scope: !444)
!512 = !DILocation(line: 109, column: 27, scope: !444)
!513 = !DILocation(line: 110, column: 2, scope: !444)
!514 = !DILocation(line: 110, column: 10, scope: !444)
!515 = !DILocation(line: 110, column: 15, scope: !444)
!516 = !DILocation(line: 110, column: 23, scope: !444)
!517 = !DILocation(line: 130, column: 1, scope: !444)
!518 = distinct !DISubprogram(name: "arch_switch_to_main_thread", scope: !445, file: !445, line: 517, type: !519, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !256)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !146, !423, !455}
!521 = !DILocalVariable(name: "main_thread", arg: 1, scope: !518, file: !445, line: 517, type: !146)
!522 = !DILocation(line: 517, column: 50, scope: !518)
!523 = !DILocalVariable(name: "stack_ptr", arg: 2, scope: !518, file: !445, line: 517, type: !423)
!524 = !DILocation(line: 517, column: 69, scope: !518)
!525 = !DILocalVariable(name: "_main", arg: 3, scope: !518, file: !445, line: 518, type: !455)
!526 = !DILocation(line: 518, column: 22, scope: !518)
!527 = !DILocation(line: 520, column: 2, scope: !518)
!528 = !DILocation(line: 522, column: 28, scope: !518)
!529 = !DILocation(line: 522, column: 26, scope: !518)
!530 = !DILocation(line: 581, column: 9, scope: !518)
!531 = !DILocation(line: 581, column: 22, scope: !518)
!532 = !DILocation(line: 563, column: 2, scope: !518)
!533 = !{i64 332286, i64 332302, i64 332323, i64 332343, i64 332359, i64 332376, i64 332395, i64 332414, i64 332439}
!534 = !DILocation(line: 585, column: 2, scope: !518)
!535 = distinct !DISubprogram(name: "z_arm_prepare_switch_to_main", scope: !445, file: !445, line: 493, type: !536, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!536 = !DISubroutineType(types: !537)
!537 = !{null}
!538 = !DILocation(line: 515, column: 1, scope: !535)
!539 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !378, file: !378, line: 335, type: !540, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!540 = !DISubroutineType(types: !541)
!541 = !{!542, !543}
!542 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!544 = !DILocalVariable(name: "list", arg: 1, scope: !539, file: !378, line: 335, type: !543)
!545 = !DILocation(line: 335, column: 55, scope: !539)
!546 = !DILocation(line: 335, column: 92, scope: !539)
!547 = !DILocation(line: 335, column: 71, scope: !539)
!548 = !DILocation(line: 335, column: 98, scope: !539)
!549 = !DILocation(line: 335, column: 63, scope: !539)
!550 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !378, file: !378, line: 255, type: !551, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !256)
!551 = !DISubroutineType(types: !552)
!552 = !{!382, !543}
!553 = !DILocalVariable(name: "list", arg: 1, scope: !550, file: !378, line: 255, type: !543)
!554 = !DILocation(line: 255, column: 64, scope: !550)
!555 = !DILocation(line: 257, column: 9, scope: !550)
!556 = !DILocation(line: 257, column: 15, scope: !550)
!557 = !DILocation(line: 257, column: 2, scope: !550)
