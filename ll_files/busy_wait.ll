; ModuleID = '../bc_files/busy_wait.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/busy_wait.c"
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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !101 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !225
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !224, metadata !DIExpression()), !dbg !226
  %5 = load ptr, ptr %3, align 4, !dbg !227
  %6 = load ptr, ptr %4, align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !234, metadata !DIExpression()), !dbg !235
  %3 = load ptr, ptr %2, align 4, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !238 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !242, metadata !DIExpression()), !dbg !243
  %3 = load i8, ptr %2, align 1, !dbg !244
  ret ptr null, !dbg !245
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !246 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !252
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !253
  %5 = load i8, ptr %3, align 1, !dbg !254
  %6 = load i32, ptr %4, align 4, !dbg !255
  ret ptr null, !dbg !256
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !257 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load ptr, ptr %2, align 4, !dbg !267
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !268
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !269
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !270
  ret i64 %6, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr %2, align 4, !dbg !276
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !277
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !278
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !279
  ret i64 %6, !dbg !280
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 4, !dbg !314
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !315
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !316
  ret i64 %5, !dbg !317
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !318 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !324
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !323, metadata !DIExpression()), !dbg !325
  %5 = load ptr, ptr %4, align 4, !dbg !326
  %6 = load ptr, ptr %3, align 4, !dbg !327
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !328
  store ptr %5, ptr %7, align 4, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !336
  %3 = load ptr, ptr %2, align 4, !dbg !337
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !338
  %5 = load ptr, ptr %4, align 4, !dbg !338
  ret ptr %5, !dbg !339
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !340 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !363
  %3 = load ptr, ptr %2, align 4, !dbg !364
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !365
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !366
  %6 = zext i1 %5 to i32, !dbg !367
  ret i32 %6, !dbg !368
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !369 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !379, metadata !DIExpression()), !dbg !380
  %3 = load ptr, ptr %2, align 4, !dbg !381
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !382
  %5 = load i32, ptr %4, align 4, !dbg !382
  ret i32 %5, !dbg !383
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !384 {
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

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 4, !dbg !415
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !416
  %5 = load i32, ptr %4, align 4, !dbg !416
  ret i32 %5, !dbg !417
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_busy_wait(i32 noundef %0) #1 !dbg !418 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !423, metadata !DIExpression()), !dbg !430
  br label %7, !dbg !431

7:                                                ; preds = %1
  br label %8, !dbg !432

8:                                                ; preds = %7
  %9 = load i32, ptr %2, align 4, !dbg !434
  %10 = icmp eq i32 %9, 0, !dbg !436
  br i1 %10, label %11, label %14, !dbg !437

11:                                               ; preds = %8
  br label %12, !dbg !438

12:                                               ; preds = %11
  br label %13, !dbg !440

13:                                               ; preds = %12
  br label %39, !dbg !442

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %3, metadata !424, metadata !DIExpression()), !dbg !444
  %15 = call i32 @k_cycle_get_32() #5, !dbg !445
  store i32 %15, ptr %3, align 4, !dbg !444
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %4, metadata !425, metadata !DIExpression()), !dbg !447
  %16 = load i32, ptr %2, align 4, !dbg !448
  %17 = zext i32 %16 to i64, !dbg !449
  %18 = call i32 @sys_clock_hw_cycles_per_sec() #5, !dbg !450
  %19 = sext i32 %18 to i64, !dbg !451
  %20 = mul i64 %17, %19, !dbg !452
  %21 = udiv i64 %20, 1000000, !dbg !453
  %22 = trunc i64 %21 to i32, !dbg !454
  store i32 %22, ptr %4, align 4, !dbg !447
  br label %23, !dbg !455

23:                                               ; preds = %34, %14
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !457
  %24 = call i32 @k_cycle_get_32() #5, !dbg !458
  store i32 %24, ptr %5, align 4, !dbg !457
  %25 = load i32, ptr %5, align 4, !dbg !459
  %26 = load i32, ptr %3, align 4, !dbg !461
  %27 = sub i32 %25, %26, !dbg !462
  %28 = load i32, ptr %4, align 4, !dbg !463
  %29 = icmp uge i32 %27, %28, !dbg !464
  br i1 %29, label %30, label %31, !dbg !465

30:                                               ; preds = %23
  store i32 6, ptr %6, align 4
  br label %32, !dbg !466

31:                                               ; preds = %23
  store i32 0, ptr %6, align 4, !dbg !468
  br label %32, !dbg !468

32:                                               ; preds = %31, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !468
  %33 = load i32, ptr %6, align 4
  switch i32 %33, label %40 [
    i32 0, label %34
    i32 6, label %35
  ]

34:                                               ; preds = %32
  br label %23, !dbg !469, !llvm.loop !470

35:                                               ; preds = %32
  br label %36, !dbg !473

36:                                               ; preds = %35
  br label %37, !dbg !474

37:                                               ; preds = %36
  br label %38, !dbg !474

38:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !476
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !476
  br label %39, !dbg !476

39:                                               ; preds = %38, %13
  ret void, !dbg !476

40:                                               ; preds = %32
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_cycle_get_32() #0 !dbg !477 {
  %1 = call i32 @arch_k_cycle_get_32() #5, !dbg !480
  ret i32 %1, !dbg !481
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @sys_clock_hw_cycles_per_sec() #0 !dbg !482 {
  ret i32 48000000, !dbg !486
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare !dbg !487 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !492 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !493 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !500
  %3 = load ptr, ptr %2, align 4, !dbg !501
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !502
  %5 = icmp eq ptr %4, null, !dbg !503
  ret i1 %5, !dbg !504
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !505 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !509, metadata !DIExpression()), !dbg !510
  %3 = load ptr, ptr %2, align 4, !dbg !511
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !512
  %5 = load ptr, ptr %4, align 4, !dbg !512
  ret ptr %5, !dbg !513
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @arch_k_cycle_get_32() #0 !dbg !514 {
  %1 = call i32 @sys_clock_cycle_get_32() #5, !dbg !516
  ret i32 %1, !dbg !517
}

; Function Attrs: optsize
declare !dbg !518 dso_local i32 @sys_clock_cycle_get_32() #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "busy_wait.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!25 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!86 = !{!87, !90, !92, !93}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 64, baseType: !89)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !88, line: 65, baseType: !91)
!91 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !{i32 7, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 1, !"static_rwdata", i32 1}
!98 = !{i32 1, !"enumsize_buildattr", i32 1}
!99 = !{i32 1, !"armlib_unavailable", i32 0}
!100 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!101 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !102, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !106}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !108, line: 250, size: 896, elements: !109)
!108 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!109 = !{!110, !180, !193, !194, !195, !196, !217}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !107, file: !108, line: 252, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !108, line: 58, size: 384, elements: !112)
!112 = !{!113, !141, !149, !151, !152, !165, !166, !167}
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !108, line: 61, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !111, file: !108, line: 61, size: 64, elements: !115)
!115 = !{!116, !132}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !114, file: !108, line: 62, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !118, line: 55, baseType: !119)
!118 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !118, line: 37, size: 64, elements: !120)
!120 = !{!121, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !118, line: 38, baseType: !122, size: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !118, line: 38, size: 32, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !122, file: !118, line: 39, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !118, line: 40, baseType: !125, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !118, line: 42, baseType: !128, size: 32, offset: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !118, line: 42, size: 32, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !128, file: !118, line: 43, baseType: !125, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !128, file: !118, line: 44, baseType: !125, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !114, file: !108, line: 63, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !134, line: 58, size: 64, elements: !135)
!134 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !133, file: !134, line: 60, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !139)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!139 = !{!140}
!140 = !DISubrange(count: 2)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !111, file: !108, line: 69, baseType: !142, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !144, line: 243, baseType: !145)
!144 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 241, size: 64, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !145, file: !144, line: 242, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !118, line: 51, baseType: !119)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !111, file: !108, line: 72, baseType: !150, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !111, file: !108, line: 75, baseType: !150, size: 8, offset: 104)
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !108, line: 91, baseType: !153, size: 16, offset: 112)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !111, file: !108, line: 91, size: 16, elements: !154)
!154 = !{!155, !162}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !108, line: 92, baseType: !156, size: 16)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !153, file: !108, line: 92, size: 16, elements: !157)
!157 = !{!158, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !156, file: !108, line: 97, baseType: !159, size: 8)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 56, baseType: !160)
!160 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !156, file: !108, line: 98, baseType: !150, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !153, file: !108, line: 101, baseType: !163, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 63, baseType: !164)
!164 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !111, file: !108, line: 108, baseType: !87, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !111, file: !108, line: 132, baseType: !92, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !111, file: !108, line: 136, baseType: !168, size: 192, offset: 192)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !144, line: 254, size: 192, elements: !169)
!169 = !{!170, !171, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !144, line: 255, baseType: !117, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !168, file: !144, line: 256, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !144, line: 252, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !168, file: !144, line: 259, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !179)
!179 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !107, file: !108, line: 255, baseType: !181, size: 288, offset: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !182, line: 25, size: 288, elements: !183)
!182 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !181, file: !182, line: 26, baseType: !87, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !181, file: !182, line: 27, baseType: !87, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !181, file: !182, line: 28, baseType: !87, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !181, file: !182, line: 29, baseType: !87, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !181, file: !182, line: 30, baseType: !87, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !181, file: !182, line: 31, baseType: !87, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !181, file: !182, line: 32, baseType: !87, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !181, file: !182, line: 33, baseType: !87, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !181, file: !182, line: 34, baseType: !87, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !107, file: !108, line: 258, baseType: !92, size: 32, offset: 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !107, file: !108, line: 261, baseType: !143, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !107, file: !108, line: 302, baseType: !93, size: 32, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !107, file: !108, line: 333, baseType: !197, size: 32, offset: 800)
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
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !202, file: !203, line: 58, baseType: !92, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !202, file: !203, line: 59, baseType: !210, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 46, baseType: !89)
!211 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !198, file: !199, line: 5293, baseType: !143, size: 64, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 5294, baseType: !214, offset: 160)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !215, line: 45, elements: !216)
!215 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!216 = !{}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !107, file: !108, line: 355, baseType: !218, size: 64, offset: 832)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !182, line: 60, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !218, file: !182, line: 63, baseType: !87, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !218, file: !182, line: 66, baseType: !87, size: 32, offset: 32)
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "object", arg: 1, scope: !101, file: !4, line: 223, type: !104)
!224 = !DILocalVariable(name: "thread", arg: 2, scope: !101, file: !4, line: 224, type: !106)
!225 = !DILocation(line: 223, column: 61, scope: !101)
!226 = !DILocation(line: 224, column: 24, scope: !101)
!227 = !DILocation(line: 226, column: 9, scope: !101)
!228 = !DILocation(line: 227, column: 9, scope: !101)
!229 = !DILocation(line: 228, column: 1, scope: !101)
!230 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !231, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !104}
!233 = !{!234}
!234 = !DILocalVariable(name: "object", arg: 1, scope: !230, file: !4, line: 243, type: !104)
!235 = !DILocation(line: 243, column: 56, scope: !230)
!236 = !DILocation(line: 245, column: 9, scope: !230)
!237 = !DILocation(line: 246, column: 1, scope: !230)
!238 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !239, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!92, !3}
!241 = !{!242}
!242 = !DILocalVariable(name: "otype", arg: 1, scope: !238, file: !4, line: 359, type: !3)
!243 = !DILocation(line: 359, column: 58, scope: !238)
!244 = !DILocation(line: 361, column: 9, scope: !238)
!245 = !DILocation(line: 363, column: 2, scope: !238)
!246 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !247, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!92, !3, !210}
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "otype", arg: 1, scope: !246, file: !4, line: 366, type: !3)
!251 = !DILocalVariable(name: "size", arg: 2, scope: !246, file: !4, line: 367, type: !210)
!252 = !DILocation(line: 366, column: 63, scope: !246)
!253 = !DILocation(line: 367, column: 13, scope: !246)
!254 = !DILocation(line: 369, column: 9, scope: !246)
!255 = !DILocation(line: 370, column: 9, scope: !246)
!256 = !DILocation(line: 372, column: 2, scope: !246)
!257 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !199, file: !199, line: 656, type: !258, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !262}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !261, line: 46, baseType: !178)
!261 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!264 = !{!265}
!265 = !DILocalVariable(name: "t", arg: 1, scope: !257, file: !199, line: 657, type: !262)
!266 = !DILocation(line: 657, column: 30, scope: !257)
!267 = !DILocation(line: 659, column: 28, scope: !257)
!268 = !DILocation(line: 659, column: 31, scope: !257)
!269 = !DILocation(line: 659, column: 36, scope: !257)
!270 = !DILocation(line: 659, column: 9, scope: !257)
!271 = !DILocation(line: 659, column: 2, scope: !257)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !199, file: !199, line: 671, type: !258, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !199, line: 672, type: !262)
!275 = !DILocation(line: 672, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 30, scope: !272)
!277 = !DILocation(line: 674, column: 33, scope: !272)
!278 = !DILocation(line: 674, column: 38, scope: !272)
!279 = !DILocation(line: 674, column: 9, scope: !272)
!280 = !DILocation(line: 674, column: 2, scope: !272)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !199, file: !199, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!282 = !DISubroutineType(types: !283)
!283 = !{!260, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !199, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !199, line: 1445, baseType: !168, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !199, line: 1448, baseType: !143, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !199, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !199, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !199, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !261, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !261, line: 66, baseType: !260, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !199, line: 1460, baseType: !87, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !199, line: 1463, baseType: !92, size: 32, offset: 416)
!303 = !{!304}
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !199, line: 1635, type: !284)
!305 = !DILocation(line: 1635, column: 34, scope: !281)
!306 = !DILocation(line: 1637, column: 28, scope: !281)
!307 = !DILocation(line: 1637, column: 35, scope: !281)
!308 = !DILocation(line: 1637, column: 9, scope: !281)
!309 = !DILocation(line: 1637, column: 2, scope: !281)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !199, file: !199, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312}
!312 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !199, line: 1650, type: !284)
!313 = !DILocation(line: 1650, column: 34, scope: !310)
!314 = !DILocation(line: 1652, column: 30, scope: !310)
!315 = !DILocation(line: 1652, column: 37, scope: !310)
!316 = !DILocation(line: 1652, column: 9, scope: !310)
!317 = !DILocation(line: 1652, column: 2, scope: !310)
!318 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !199, file: !199, line: 1689, type: !319, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !294, !92}
!321 = !{!322, !323}
!322 = !DILocalVariable(name: "timer", arg: 1, scope: !318, file: !199, line: 1689, type: !294)
!323 = !DILocalVariable(name: "user_data", arg: 2, scope: !318, file: !199, line: 1690, type: !92)
!324 = !DILocation(line: 1689, column: 65, scope: !318)
!325 = !DILocation(line: 1690, column: 19, scope: !318)
!326 = !DILocation(line: 1692, column: 21, scope: !318)
!327 = !DILocation(line: 1692, column: 2, scope: !318)
!328 = !DILocation(line: 1692, column: 9, scope: !318)
!329 = !DILocation(line: 1692, column: 19, scope: !318)
!330 = !DILocation(line: 1693, column: 1, scope: !318)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !199, file: !199, line: 1704, type: !332, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!92, !284}
!334 = !{!335}
!335 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !199, line: 1704, type: !284)
!336 = !DILocation(line: 1704, column: 72, scope: !331)
!337 = !DILocation(line: 1706, column: 9, scope: !331)
!338 = !DILocation(line: 1706, column: 16, scope: !331)
!339 = !DILocation(line: 1706, column: 2, scope: !331)
!340 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !199, file: !199, line: 2071, type: !341, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!341 = !DISubroutineType(types: !342)
!342 = !{!93, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !199, line: 1830, size: 128, elements: !345)
!345 = !{!346, !359, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !344, file: !199, line: 1831, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !348, line: 60, baseType: !349)
!348 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !348, line: 53, size: 64, elements: !350)
!350 = !{!351, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !349, file: !348, line: 54, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !348, line: 50, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !348, line: 44, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !354, file: !348, line: 45, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !348, line: 40, baseType: !87)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !349, file: !348, line: 55, baseType: !352, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !199, line: 1832, baseType: !214, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !344, file: !199, line: 1833, baseType: !143, size: 64, offset: 64)
!361 = !{!362}
!362 = !DILocalVariable(name: "queue", arg: 1, scope: !340, file: !199, line: 2071, type: !343)
!363 = !DILocation(line: 2071, column: 59, scope: !340)
!364 = !DILocation(line: 2073, column: 35, scope: !340)
!365 = !DILocation(line: 2073, column: 42, scope: !340)
!366 = !DILocation(line: 2073, column: 14, scope: !340)
!367 = !DILocation(line: 2073, column: 9, scope: !340)
!368 = !DILocation(line: 2073, column: 2, scope: !340)
!369 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !199, file: !199, line: 3209, type: !370, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!370 = !DISubroutineType(types: !371)
!371 = !{!89, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !199, line: 3092, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !373, file: !199, line: 3093, baseType: !143, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !373, file: !199, line: 3094, baseType: !89, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !373, file: !199, line: 3095, baseType: !89, size: 32, offset: 96)
!378 = !{!379}
!379 = !DILocalVariable(name: "sem", arg: 1, scope: !369, file: !199, line: 3209, type: !372)
!380 = !DILocation(line: 3209, column: 65, scope: !369)
!381 = !DILocation(line: 3211, column: 9, scope: !369)
!382 = !DILocation(line: 3211, column: 14, scope: !369)
!383 = !DILocation(line: 3211, column: 2, scope: !369)
!384 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !199, file: !199, line: 4649, type: !385, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!385 = !DISubroutineType(types: !386)
!386 = !{!87, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !199, line: 4390, size: 320, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !397, !398, !399, !400, !401}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !388, file: !199, line: 4392, baseType: !143, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !199, line: 4394, baseType: !214, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !388, file: !199, line: 4396, baseType: !210, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !388, file: !199, line: 4398, baseType: !87, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !388, file: !199, line: 4400, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !388, file: !199, line: 4402, baseType: !395, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !388, file: !199, line: 4404, baseType: !395, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !388, file: !199, line: 4406, baseType: !395, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !388, file: !199, line: 4408, baseType: !87, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !199, line: 4413, baseType: !150, size: 8, offset: 288)
!402 = !{!403}
!403 = !DILocalVariable(name: "msgq", arg: 1, scope: !384, file: !199, line: 4649, type: !387)
!404 = !DILocation(line: 4649, column: 66, scope: !384)
!405 = !DILocation(line: 4651, column: 9, scope: !384)
!406 = !DILocation(line: 4651, column: 15, scope: !384)
!407 = !DILocation(line: 4651, column: 26, scope: !384)
!408 = !DILocation(line: 4651, column: 32, scope: !384)
!409 = !DILocation(line: 4651, column: 24, scope: !384)
!410 = !DILocation(line: 4651, column: 2, scope: !384)
!411 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !199, file: !199, line: 4665, type: !385, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!412 = !{!413}
!413 = !DILocalVariable(name: "msgq", arg: 1, scope: !411, file: !199, line: 4665, type: !387)
!414 = !DILocation(line: 4665, column: 66, scope: !411)
!415 = !DILocation(line: 4667, column: 9, scope: !411)
!416 = !DILocation(line: 4667, column: 15, scope: !411)
!417 = !DILocation(line: 4667, column: 2, scope: !411)
!418 = distinct !DISubprogram(name: "z_impl_k_busy_wait", scope: !419, file: !419, line: 12, type: !420, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !422)
!419 = !DIFile(filename: "kernel/busy_wait.c", directory: "/home/sri/zephyrproject/zephyr")
!420 = !DISubroutineType(types: !421)
!421 = !{null, !87}
!422 = !{!423, !424, !425, !426}
!423 = !DILocalVariable(name: "usec_to_wait", arg: 1, scope: !418, file: !419, line: 12, type: !87)
!424 = !DILocalVariable(name: "start_cycles", scope: !418, file: !419, line: 23, type: !87)
!425 = !DILocalVariable(name: "cycles_to_wait", scope: !418, file: !419, line: 26, type: !87)
!426 = !DILocalVariable(name: "current_cycles", scope: !427, file: !419, line: 33, type: !87)
!427 = distinct !DILexicalBlock(scope: !428, file: !419, line: 32, column: 11)
!428 = distinct !DILexicalBlock(scope: !429, file: !419, line: 32, column: 2)
!429 = distinct !DILexicalBlock(scope: !418, file: !419, line: 32, column: 2)
!430 = !DILocation(line: 12, column: 34, scope: !418)
!431 = !DILocation(line: 14, column: 2, scope: !418)
!432 = !DILocation(line: 14, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !418, file: !419, line: 14, column: 5)
!434 = !DILocation(line: 15, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !418, file: !419, line: 15, column: 6)
!436 = !DILocation(line: 15, column: 19, scope: !435)
!437 = !DILocation(line: 15, column: 6, scope: !418)
!438 = !DILocation(line: 16, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !419, line: 15, column: 26)
!440 = !DILocation(line: 16, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !439, file: !419, line: 16, column: 6)
!442 = !DILocation(line: 17, column: 3, scope: !439)
!443 = !DILocation(line: 23, column: 2, scope: !418)
!444 = !DILocation(line: 23, column: 11, scope: !418)
!445 = !DILocation(line: 23, column: 26, scope: !418)
!446 = !DILocation(line: 26, column: 2, scope: !418)
!447 = !DILocation(line: 26, column: 11, scope: !418)
!448 = !DILocation(line: 27, column: 13, scope: !418)
!449 = !DILocation(line: 27, column: 3, scope: !418)
!450 = !DILocation(line: 28, column: 13, scope: !418)
!451 = !DILocation(line: 28, column: 3, scope: !418)
!452 = !DILocation(line: 27, column: 26, scope: !418)
!453 = !DILocation(line: 28, column: 43, scope: !418)
!454 = !DILocation(line: 26, column: 28, scope: !418)
!455 = !DILocation(line: 32, column: 2, scope: !418)
!456 = !DILocation(line: 33, column: 3, scope: !427)
!457 = !DILocation(line: 33, column: 12, scope: !427)
!458 = !DILocation(line: 33, column: 29, scope: !427)
!459 = !DILocation(line: 36, column: 8, scope: !460)
!460 = distinct !DILexicalBlock(scope: !427, file: !419, line: 36, column: 7)
!461 = !DILocation(line: 36, column: 25, scope: !460)
!462 = !DILocation(line: 36, column: 23, scope: !460)
!463 = !DILocation(line: 36, column: 42, scope: !460)
!464 = !DILocation(line: 36, column: 39, scope: !460)
!465 = !DILocation(line: 36, column: 7, scope: !427)
!466 = !DILocation(line: 37, column: 4, scope: !467)
!467 = distinct !DILexicalBlock(scope: !460, file: !419, line: 36, column: 58)
!468 = !DILocation(line: 39, column: 2, scope: !428)
!469 = !DILocation(line: 32, column: 2, scope: !428)
!470 = distinct !{!470, !471, !472}
!471 = !DILocation(line: 32, column: 2, scope: !429)
!472 = !DILocation(line: 39, column: 2, scope: !429)
!473 = !DILocation(line: 53, column: 2, scope: !418)
!474 = !DILocation(line: 53, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !418, file: !419, line: 53, column: 5)
!476 = !DILocation(line: 54, column: 1, scope: !418)
!477 = distinct !DISubprogram(name: "k_cycle_get_32", scope: !199, file: !199, line: 1800, type: !478, scopeLine: 1801, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!478 = !DISubroutineType(types: !479)
!479 = !{!87}
!480 = !DILocation(line: 1802, column: 9, scope: !477)
!481 = !DILocation(line: 1802, column: 2, scope: !477)
!482 = distinct !DISubprogram(name: "sys_clock_hw_cycles_per_sec", scope: !483, file: !483, line: 73, type: !484, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!483 = !DIFile(filename: "include/zephyr/sys/time_units.h", directory: "/home/sri/zephyrproject/zephyr")
!484 = !DISubroutineType(types: !485)
!485 = !{!93}
!486 = !DILocation(line: 78, column: 2, scope: !482)
!487 = !DISubprogram(name: "z_timeout_expires", scope: !199, file: !199, line: 642, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!488 = !DISubroutineType(types: !489)
!489 = !{!260, !490}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!492 = !DISubprogram(name: "z_timeout_remaining", scope: !199, file: !199, line: 643, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!493 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !348, file: !348, line: 335, type: !494, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !497}
!496 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!498 = !{!499}
!499 = !DILocalVariable(name: "list", arg: 1, scope: !493, file: !348, line: 335, type: !497)
!500 = !DILocation(line: 335, column: 55, scope: !493)
!501 = !DILocation(line: 335, column: 92, scope: !493)
!502 = !DILocation(line: 335, column: 71, scope: !493)
!503 = !DILocation(line: 335, column: 98, scope: !493)
!504 = !DILocation(line: 335, column: 63, scope: !493)
!505 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !348, file: !348, line: 255, type: !506, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !508)
!506 = !DISubroutineType(types: !507)
!507 = !{!352, !497}
!508 = !{!509}
!509 = !DILocalVariable(name: "list", arg: 1, scope: !505, file: !348, line: 255, type: !497)
!510 = !DILocation(line: 255, column: 64, scope: !505)
!511 = !DILocation(line: 257, column: 9, scope: !505)
!512 = !DILocation(line: 257, column: 15, scope: !505)
!513 = !DILocation(line: 257, column: 2, scope: !505)
!514 = distinct !DISubprogram(name: "arch_k_cycle_get_32", scope: !515, file: !515, line: 24, type: !478, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!515 = !DIFile(filename: "include/zephyr/arch/arm/misc.h", directory: "/home/sri/zephyrproject/zephyr")
!516 = !DILocation(line: 26, column: 9, scope: !514)
!517 = !DILocation(line: 26, column: 2, scope: !514)
!518 = !DISubprogram(name: "sys_clock_cycle_get_32", scope: !515, file: !515, line: 22, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
