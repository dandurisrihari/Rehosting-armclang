; ModuleID = '../bc_files/stm32cube_hal.bc'
source_filename = "/home/sri/zephyrproject/zephyr/soc/arm/st_stm32/common/stm32cube_hal.c"
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
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !105 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !225, metadata !DIExpression()), !dbg !227
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !228
  %5 = load ptr, ptr %3, align 4, !dbg !229
  %6 = load ptr, ptr %4, align 4, !dbg !230
  ret void, !dbg !231
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !232 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !236, metadata !DIExpression()), !dbg !237
  %3 = load ptr, ptr %2, align 4, !dbg !238
  ret void, !dbg !239
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !240 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  %3 = load i8, ptr %2, align 1, !dbg !246
  ret ptr null, !dbg !247
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !248 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !252, metadata !DIExpression()), !dbg !254
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !253, metadata !DIExpression()), !dbg !255
  %5 = load i8, ptr %3, align 1, !dbg !256
  %6 = load i32, ptr %4, align 4, !dbg !257
  ret ptr null, !dbg !258
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !259 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load ptr, ptr %2, align 4, !dbg !267
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !268
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !269
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #4, !dbg !270
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
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #4, !dbg !279
  ret i64 %6, !dbg !280
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #4, !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 4, !dbg !314
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !315
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #4, !dbg !316
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
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #4, !dbg !366
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
define hidden i32 @HAL_GetTick() #1 !dbg !418 {
  %1 = call i32 @k_uptime_get_32() #4, !dbg !422
  ret i32 %1, !dbg !423
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_uptime_get_32() #0 !dbg !424 {
  %1 = call i64 @k_uptime_get() #4, !dbg !425
  %2 = trunc i64 %1 to i32, !dbg !426
  ret i32 %2, !dbg !427
}

; Function Attrs: nounwind optsize
define hidden void @HAL_Delay(i32 noundef %0) #1 !dbg !428 {
  %2 = alloca i32, align 4
  store volatile i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !434
  %3 = load volatile i32, ptr %2, align 4, !dbg !435
  %4 = call i32 @k_msleep(i32 noundef %3) #4, !dbg !436
  ret void, !dbg !437
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_msleep(i32 noundef %0) #0 !dbg !438 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !443, metadata !DIExpression()), !dbg !444
  %4 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !445
  %5 = load i32, ptr %2, align 4, !dbg !446
  %6 = icmp sgt i32 %5, 0, !dbg !447
  br i1 %6, label %7, label %9, !dbg !448

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !dbg !449
  br label %10, !dbg !448

9:                                                ; preds = %1
  br label %10, !dbg !448

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], !dbg !448
  %12 = sext i32 %11 to i64, !dbg !450
  %13 = mul i64 %12, 10, !dbg !451
  store i64 %13, ptr %4, align 8, !dbg !445
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !452
  %15 = load [1 x i64], ptr %14, align 8, !dbg !452
  %16 = call i32 @k_sleep([1 x i64] %15) #4, !dbg !452
  ret i32 %16, !dbg !453
}

; Function Attrs: optsize
declare !dbg !454 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !459 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !460 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !466, metadata !DIExpression()), !dbg !467
  %3 = load ptr, ptr %2, align 4, !dbg !468
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #4, !dbg !469
  %5 = icmp eq ptr %4, null, !dbg !470
  ret i1 %5, !dbg !471
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !472 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !477
  %3 = load ptr, ptr %2, align 4, !dbg !478
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !479
  %5 = load ptr, ptr %4, align 4, !dbg !479
  ret ptr %5, !dbg !480
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @k_uptime_get() #0 !dbg !481 {
  %1 = call i64 @k_uptime_ticks() #4, !dbg !484
  %2 = add i64 %1, 0, !dbg !485
  %3 = udiv i64 %2, 10, !dbg !486
  ret i64 %3, !dbg !487
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @k_uptime_ticks() #0 !dbg !488 {
  br label %1, !dbg !490

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #5, !dbg !491, !srcloc !493
  br label %2, !dbg !494

2:                                                ; preds = %1
  %3 = call i64 @z_impl_k_uptime_ticks() #4, !dbg !495
  ret i64 %3, !dbg !496
}

; Function Attrs: optsize
declare !dbg !497 dso_local i64 @z_impl_k_uptime_ticks() #3

; Function Attrs: inlinehint nounwind optsize
define internal i32 @k_sleep([1 x i64] %0) #0 !dbg !498 {
  %2 = alloca %struct.k_timeout_t, align 8
  %3 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0
  store [1 x i64] %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !502, metadata !DIExpression()), !dbg !503
  br label %4, !dbg !504

4:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #5, !dbg !505, !srcloc !507
  br label %5, !dbg !508

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0, !dbg !509
  %7 = load [1 x i64], ptr %6, align 8, !dbg !509
  %8 = call i32 @z_impl_k_sleep([1 x i64] %7) #4, !dbg !509
  ret i32 %8, !dbg !510
}

; Function Attrs: optsize
declare !dbg !511 dso_local i32 @z_impl_k_sleep([1 x i64]) #3

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stm32cube_hal.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !88, !89, !92, !94}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!88 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !90, line: 64, baseType: !91)
!90 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !90, line: 65, baseType: !93)
!93 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !90, line: 59, baseType: !97)
!97 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!98 = !{i32 7, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 1, !"static_rwdata", i32 1}
!102 = !{i32 1, !"enumsize_buildattr", i32 1}
!103 = !{i32 1, !"armlib_unavailable", i32 0}
!104 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!105 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !106, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !224)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !110}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !112, line: 250, size: 896, elements: !113)
!112 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!113 = !{!114, !182, !195, !196, !197, !198, !219}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !111, file: !112, line: 252, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !112, line: 58, size: 384, elements: !116)
!116 = !{!117, !145, !153, !155, !156, !169, !170, !171}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !112, line: 61, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !112, line: 61, size: 64, elements: !119)
!119 = !{!120, !136}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !118, file: !112, line: 62, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !122, line: 55, baseType: !123)
!122 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !122, line: 37, size: 64, elements: !124)
!124 = !{!125, !131}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !122, line: 38, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !122, line: 38, size: 32, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !126, file: !122, line: 39, baseType: !129, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !122, line: 40, baseType: !129, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !122, line: 42, baseType: !132, size: 32, offset: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !122, line: 42, size: 32, elements: !133)
!133 = !{!134, !135}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !132, file: !122, line: 43, baseType: !129, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !132, file: !122, line: 44, baseType: !129, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !118, file: !112, line: 63, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !138, line: 58, size: 64, elements: !139)
!138 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !137, file: !138, line: 60, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 64, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 32)
!143 = !{!144}
!144 = !DISubrange(count: 2)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !115, file: !112, line: 69, baseType: !146, size: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !148, line: 243, baseType: !149)
!148 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !148, line: 241, size: 64, elements: !150)
!150 = !{!151}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !149, file: !148, line: 242, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !122, line: 51, baseType: !123)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !115, file: !112, line: 72, baseType: !154, size: 8, offset: 96)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !90, line: 62, baseType: !5)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !115, file: !112, line: 75, baseType: !154, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !112, line: 91, baseType: !157, size: 16, offset: 112)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !112, line: 91, size: 16, elements: !158)
!158 = !{!159, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !112, line: 92, baseType: !160, size: 16)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !112, line: 92, size: 16, elements: !161)
!161 = !{!162, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !160, file: !112, line: 97, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !90, line: 56, baseType: !164)
!164 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !160, file: !112, line: 98, baseType: !154, size: 8, offset: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !157, file: !112, line: 101, baseType: !167, size: 16)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 63, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !115, file: !112, line: 108, baseType: !89, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !115, file: !112, line: 132, baseType: !87, size: 32, offset: 160)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !115, file: !112, line: 136, baseType: !172, size: 192, offset: 192)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !148, line: 254, size: 192, elements: !173)
!173 = !{!174, !175, !181}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !172, file: !148, line: 255, baseType: !121, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !172, file: !148, line: 256, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !148, line: 252, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 32)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !172, file: !148, line: 259, baseType: !96, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !111, file: !112, line: 255, baseType: !183, size: 288, offset: 384)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !184, line: 25, size: 288, elements: !185)
!184 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !183, file: !184, line: 26, baseType: !89, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !183, file: !184, line: 27, baseType: !89, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !183, file: !184, line: 28, baseType: !89, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !183, file: !184, line: 29, baseType: !89, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !183, file: !184, line: 30, baseType: !89, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !183, file: !184, line: 31, baseType: !89, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !183, file: !184, line: 32, baseType: !89, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !183, file: !184, line: 33, baseType: !89, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !183, file: !184, line: 34, baseType: !89, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !111, file: !112, line: 258, baseType: !87, size: 32, offset: 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !111, file: !112, line: 261, baseType: !147, size: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !111, file: !112, line: 302, baseType: !88, size: 32, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !111, file: !112, line: 333, baseType: !199, size: 32, offset: 800)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !201, line: 5291, size: 160, elements: !202)
!201 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!202 = !{!203, !214, !215}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !200, file: !201, line: 5292, baseType: !204, size: 96)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !205, line: 56, size: 96, elements: !206)
!205 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!206 = !{!207, !210, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !204, file: !205, line: 57, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 32)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !205, line: 57, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !204, file: !205, line: 58, baseType: !87, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !204, file: !205, line: 59, baseType: !212, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !213, line: 46, baseType: !91)
!213 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !200, file: !201, line: 5293, baseType: !147, size: 64, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !200, file: !201, line: 5294, baseType: !216, offset: 160)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !217, line: 45, elements: !218)
!217 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!218 = !{}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !111, file: !112, line: 355, baseType: !220, size: 64, offset: 832)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !184, line: 60, size: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !220, file: !184, line: 63, baseType: !89, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !220, file: !184, line: 66, baseType: !89, size: 32, offset: 32)
!224 = !{!225, !226}
!225 = !DILocalVariable(name: "object", arg: 1, scope: !105, file: !4, line: 223, type: !108)
!226 = !DILocalVariable(name: "thread", arg: 2, scope: !105, file: !4, line: 224, type: !110)
!227 = !DILocation(line: 223, column: 61, scope: !105)
!228 = !DILocation(line: 224, column: 24, scope: !105)
!229 = !DILocation(line: 226, column: 9, scope: !105)
!230 = !DILocation(line: 227, column: 9, scope: !105)
!231 = !DILocation(line: 228, column: 1, scope: !105)
!232 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !233, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !108}
!235 = !{!236}
!236 = !DILocalVariable(name: "object", arg: 1, scope: !232, file: !4, line: 243, type: !108)
!237 = !DILocation(line: 243, column: 56, scope: !232)
!238 = !DILocation(line: 245, column: 9, scope: !232)
!239 = !DILocation(line: 246, column: 1, scope: !232)
!240 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !241, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{!87, !3}
!243 = !{!244}
!244 = !DILocalVariable(name: "otype", arg: 1, scope: !240, file: !4, line: 359, type: !3)
!245 = !DILocation(line: 359, column: 58, scope: !240)
!246 = !DILocation(line: 361, column: 9, scope: !240)
!247 = !DILocation(line: 363, column: 2, scope: !240)
!248 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !249, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!87, !3, !212}
!251 = !{!252, !253}
!252 = !DILocalVariable(name: "otype", arg: 1, scope: !248, file: !4, line: 366, type: !3)
!253 = !DILocalVariable(name: "size", arg: 2, scope: !248, file: !4, line: 367, type: !212)
!254 = !DILocation(line: 366, column: 63, scope: !248)
!255 = !DILocation(line: 367, column: 13, scope: !248)
!256 = !DILocation(line: 369, column: 9, scope: !248)
!257 = !DILocation(line: 370, column: 9, scope: !248)
!258 = !DILocation(line: 372, column: 2, scope: !248)
!259 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !201, file: !201, line: 656, type: !260, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!260 = !DISubroutineType(types: !261)
!261 = !{!94, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!264 = !{!265}
!265 = !DILocalVariable(name: "t", arg: 1, scope: !259, file: !201, line: 657, type: !262)
!266 = !DILocation(line: 657, column: 30, scope: !259)
!267 = !DILocation(line: 659, column: 28, scope: !259)
!268 = !DILocation(line: 659, column: 31, scope: !259)
!269 = !DILocation(line: 659, column: 36, scope: !259)
!270 = !DILocation(line: 659, column: 9, scope: !259)
!271 = !DILocation(line: 659, column: 2, scope: !259)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !201, file: !201, line: 671, type: !260, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !201, line: 672, type: !262)
!275 = !DILocation(line: 672, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 30, scope: !272)
!277 = !DILocation(line: 674, column: 33, scope: !272)
!278 = !DILocation(line: 674, column: 38, scope: !272)
!279 = !DILocation(line: 674, column: 9, scope: !272)
!280 = !DILocation(line: 674, column: 2, scope: !272)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !201, file: !201, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!282 = !DISubroutineType(types: !283)
!283 = !{!94, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !201, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !201, line: 1445, baseType: !172, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !201, line: 1448, baseType: !147, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !201, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !201, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !201, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !95, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !95, line: 66, baseType: !94, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !201, line: 1460, baseType: !89, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !201, line: 1463, baseType: !87, size: 32, offset: 416)
!303 = !{!304}
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !201, line: 1635, type: !284)
!305 = !DILocation(line: 1635, column: 34, scope: !281)
!306 = !DILocation(line: 1637, column: 28, scope: !281)
!307 = !DILocation(line: 1637, column: 35, scope: !281)
!308 = !DILocation(line: 1637, column: 9, scope: !281)
!309 = !DILocation(line: 1637, column: 2, scope: !281)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !201, file: !201, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312}
!312 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !201, line: 1650, type: !284)
!313 = !DILocation(line: 1650, column: 34, scope: !310)
!314 = !DILocation(line: 1652, column: 30, scope: !310)
!315 = !DILocation(line: 1652, column: 37, scope: !310)
!316 = !DILocation(line: 1652, column: 9, scope: !310)
!317 = !DILocation(line: 1652, column: 2, scope: !310)
!318 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !201, file: !201, line: 1689, type: !319, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !294, !87}
!321 = !{!322, !323}
!322 = !DILocalVariable(name: "timer", arg: 1, scope: !318, file: !201, line: 1689, type: !294)
!323 = !DILocalVariable(name: "user_data", arg: 2, scope: !318, file: !201, line: 1690, type: !87)
!324 = !DILocation(line: 1689, column: 65, scope: !318)
!325 = !DILocation(line: 1690, column: 19, scope: !318)
!326 = !DILocation(line: 1692, column: 21, scope: !318)
!327 = !DILocation(line: 1692, column: 2, scope: !318)
!328 = !DILocation(line: 1692, column: 9, scope: !318)
!329 = !DILocation(line: 1692, column: 19, scope: !318)
!330 = !DILocation(line: 1693, column: 1, scope: !318)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !201, file: !201, line: 1704, type: !332, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!87, !284}
!334 = !{!335}
!335 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !201, line: 1704, type: !284)
!336 = !DILocation(line: 1704, column: 72, scope: !331)
!337 = !DILocation(line: 1706, column: 9, scope: !331)
!338 = !DILocation(line: 1706, column: 16, scope: !331)
!339 = !DILocation(line: 1706, column: 2, scope: !331)
!340 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !201, file: !201, line: 2071, type: !341, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!341 = !DISubroutineType(types: !342)
!342 = !{!88, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !201, line: 1830, size: 128, elements: !345)
!345 = !{!346, !359, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !344, file: !201, line: 1831, baseType: !347, size: 64)
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
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !348, line: 40, baseType: !89)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !349, file: !348, line: 55, baseType: !352, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !201, line: 1832, baseType: !216, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !344, file: !201, line: 1833, baseType: !147, size: 64, offset: 64)
!361 = !{!362}
!362 = !DILocalVariable(name: "queue", arg: 1, scope: !340, file: !201, line: 2071, type: !343)
!363 = !DILocation(line: 2071, column: 59, scope: !340)
!364 = !DILocation(line: 2073, column: 35, scope: !340)
!365 = !DILocation(line: 2073, column: 42, scope: !340)
!366 = !DILocation(line: 2073, column: 14, scope: !340)
!367 = !DILocation(line: 2073, column: 9, scope: !340)
!368 = !DILocation(line: 2073, column: 2, scope: !340)
!369 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !201, file: !201, line: 3209, type: !370, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!370 = !DISubroutineType(types: !371)
!371 = !{!91, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !201, line: 3092, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !373, file: !201, line: 3093, baseType: !147, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !373, file: !201, line: 3094, baseType: !91, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !373, file: !201, line: 3095, baseType: !91, size: 32, offset: 96)
!378 = !{!379}
!379 = !DILocalVariable(name: "sem", arg: 1, scope: !369, file: !201, line: 3209, type: !372)
!380 = !DILocation(line: 3209, column: 65, scope: !369)
!381 = !DILocation(line: 3211, column: 9, scope: !369)
!382 = !DILocation(line: 3211, column: 14, scope: !369)
!383 = !DILocation(line: 3211, column: 2, scope: !369)
!384 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !201, file: !201, line: 4649, type: !385, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!385 = !DISubroutineType(types: !386)
!386 = !{!89, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !201, line: 4390, size: 320, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !397, !398, !399, !400, !401}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !388, file: !201, line: 4392, baseType: !147, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !201, line: 4394, baseType: !216, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !388, file: !201, line: 4396, baseType: !212, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !388, file: !201, line: 4398, baseType: !89, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !388, file: !201, line: 4400, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !388, file: !201, line: 4402, baseType: !395, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !388, file: !201, line: 4404, baseType: !395, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !388, file: !201, line: 4406, baseType: !395, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !388, file: !201, line: 4408, baseType: !89, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !201, line: 4413, baseType: !154, size: 8, offset: 288)
!402 = !{!403}
!403 = !DILocalVariable(name: "msgq", arg: 1, scope: !384, file: !201, line: 4649, type: !387)
!404 = !DILocation(line: 4649, column: 66, scope: !384)
!405 = !DILocation(line: 4651, column: 9, scope: !384)
!406 = !DILocation(line: 4651, column: 15, scope: !384)
!407 = !DILocation(line: 4651, column: 26, scope: !384)
!408 = !DILocation(line: 4651, column: 32, scope: !384)
!409 = !DILocation(line: 4651, column: 24, scope: !384)
!410 = !DILocation(line: 4651, column: 2, scope: !384)
!411 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !201, file: !201, line: 4665, type: !385, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!412 = !{!413}
!413 = !DILocalVariable(name: "msgq", arg: 1, scope: !411, file: !201, line: 4665, type: !387)
!414 = !DILocation(line: 4665, column: 66, scope: !411)
!415 = !DILocation(line: 4667, column: 9, scope: !411)
!416 = !DILocation(line: 4667, column: 15, scope: !411)
!417 = !DILocation(line: 4667, column: 2, scope: !411)
!418 = distinct !DISubprogram(name: "HAL_GetTick", scope: !419, file: !419, line: 23, type: !420, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!419 = !DIFile(filename: "soc/arm/st_stm32/common/stm32cube_hal.c", directory: "/home/sri/zephyrproject/zephyr")
!420 = !DISubroutineType(types: !421)
!421 = !{!89}
!422 = !DILocation(line: 25, column: 9, scope: !418)
!423 = !DILocation(line: 25, column: 2, scope: !418)
!424 = distinct !DISubprogram(name: "k_uptime_get_32", scope: !201, file: !201, line: 1765, type: !420, scopeLine: 1766, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!425 = !DILocation(line: 1767, column: 19, scope: !424)
!426 = !DILocation(line: 1767, column: 9, scope: !424)
!427 = !DILocation(line: 1767, column: 2, scope: !424)
!428 = distinct !DISubprogram(name: "HAL_Delay", scope: !419, file: !419, line: 34, type: !429, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !432)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!432 = !{!433}
!433 = !DILocalVariable(name: "Delay", arg: 1, scope: !428, file: !419, line: 34, type: !431)
!434 = !DILocation(line: 34, column: 34, scope: !428)
!435 = !DILocation(line: 36, column: 11, scope: !428)
!436 = !DILocation(line: 36, column: 2, scope: !428)
!437 = !DILocation(line: 37, column: 1, scope: !428)
!438 = distinct !DISubprogram(name: "k_msleep", scope: !201, file: !201, line: 501, type: !439, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !442)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !441}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !90, line: 58, baseType: !88)
!442 = !{!443}
!443 = !DILocalVariable(name: "ms", arg: 1, scope: !438, file: !201, line: 501, type: !441)
!444 = !DILocation(line: 501, column: 40, scope: !438)
!445 = !DILocation(line: 503, column: 32, scope: !438)
!446 = !DILocation(line: 503, column: 372, scope: !438)
!447 = !DILocation(line: 503, column: 376, scope: !438)
!448 = !DILocation(line: 503, column: 370, scope: !438)
!449 = !DILocation(line: 503, column: 386, scope: !438)
!450 = !DILocation(line: 503, column: 357, scope: !438)
!451 = !DILocation(line: 503, column: 397, scope: !438)
!452 = !DILocation(line: 503, column: 9, scope: !438)
!453 = !DILocation(line: 503, column: 2, scope: !438)
!454 = !DISubprogram(name: "z_timeout_expires", scope: !201, file: !201, line: 642, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !218)
!455 = !DISubroutineType(types: !456)
!456 = !{!94, !457}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!459 = !DISubprogram(name: "z_timeout_remaining", scope: !201, file: !201, line: 643, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !218)
!460 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !348, file: !348, line: 335, type: !461, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !465)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !464}
!463 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!465 = !{!466}
!466 = !DILocalVariable(name: "list", arg: 1, scope: !460, file: !348, line: 335, type: !464)
!467 = !DILocation(line: 335, column: 55, scope: !460)
!468 = !DILocation(line: 335, column: 92, scope: !460)
!469 = !DILocation(line: 335, column: 71, scope: !460)
!470 = !DILocation(line: 335, column: 98, scope: !460)
!471 = !DILocation(line: 335, column: 63, scope: !460)
!472 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !348, file: !348, line: 255, type: !473, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!352, !464}
!475 = !{!476}
!476 = !DILocalVariable(name: "list", arg: 1, scope: !472, file: !348, line: 255, type: !464)
!477 = !DILocation(line: 255, column: 64, scope: !472)
!478 = !DILocation(line: 257, column: 9, scope: !472)
!479 = !DILocation(line: 257, column: 15, scope: !472)
!480 = !DILocation(line: 257, column: 2, scope: !472)
!481 = distinct !DISubprogram(name: "k_uptime_get", scope: !201, file: !201, line: 1741, type: !482, scopeLine: 1742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!482 = !DISubroutineType(types: !483)
!483 = !{!96}
!484 = !DILocation(line: 1743, column: 132, scope: !481)
!485 = !DILocation(line: 1743, column: 150, scope: !481)
!486 = !DILocation(line: 1743, column: 219, scope: !481)
!487 = !DILocation(line: 1743, column: 2, scope: !481)
!488 = distinct !DISubprogram(name: "k_uptime_ticks", scope: !489, file: !489, line: 599, type: !482, scopeLine: 600, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !218)
!489 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!490 = !DILocation(line: 608, column: 2, scope: !488)
!491 = !DILocation(line: 608, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !489, line: 608, column: 5)
!493 = !{i64 141685}
!494 = !DILocation(line: 608, column: 47, scope: !492)
!495 = !DILocation(line: 609, column: 9, scope: !488)
!496 = !DILocation(line: 609, column: 2, scope: !488)
!497 = !DISubprogram(name: "z_impl_k_uptime_ticks", scope: !489, file: !489, line: 596, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !218)
!498 = distinct !DISubprogram(name: "k_sleep", scope: !489, file: !489, line: 126, type: !499, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !501)
!499 = !DISubroutineType(types: !500)
!500 = !{!441, !297}
!501 = !{!502}
!502 = !DILocalVariable(name: "timeout", arg: 1, scope: !498, file: !489, line: 126, type: !297)
!503 = !DILocation(line: 126, column: 43, scope: !498)
!504 = !DILocation(line: 134, column: 2, scope: !498)
!505 = !DILocation(line: 134, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !498, file: !489, line: 134, column: 5)
!507 = !{i64 134261}
!508 = !DILocation(line: 134, column: 47, scope: !506)
!509 = !DILocation(line: 135, column: 9, scope: !498)
!510 = !DILocation(line: 135, column: 2, scope: !498)
!511 = !DISubprogram(name: "z_impl_k_sleep", scope: !489, file: !489, line: 123, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !218)
