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

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !107 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !226, metadata !DIExpression()), !dbg !227
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !228, metadata !DIExpression()), !dbg !229
  %5 = load ptr, ptr %3, align 4, !dbg !230
  %6 = load ptr, ptr %4, align 4, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !233 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !236, metadata !DIExpression()), !dbg !237
  %3 = load ptr, ptr %2, align 4, !dbg !238
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !240 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !243, metadata !DIExpression()), !dbg !244
  %3 = load i8, ptr %2, align 1, !dbg !245
  ret ptr null, !dbg !246
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !247 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !251
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !252, metadata !DIExpression()), !dbg !253
  %5 = load i8, ptr %3, align 1, !dbg !254
  %6 = load i32, ptr %4, align 4, !dbg !255
  ret ptr null, !dbg !256
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !257 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !262, metadata !DIExpression()), !dbg !263
  %3 = load ptr, ptr %2, align 4, !dbg !264
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !265
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !266
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !267
  ret i64 %6, !dbg !268
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !269 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !271
  %3 = load ptr, ptr %2, align 4, !dbg !272
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !273
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !274
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !275
  ret i64 %6, !dbg !276
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !277 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !299, metadata !DIExpression()), !dbg !300
  %3 = load ptr, ptr %2, align 4, !dbg !301
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !302
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !303
  ret i64 %5, !dbg !304
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !305 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !307
  %3 = load ptr, ptr %2, align 4, !dbg !308
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !309
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !310
  ret i64 %5, !dbg !311
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !312 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !315, metadata !DIExpression()), !dbg !316
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !317, metadata !DIExpression()), !dbg !318
  %5 = load ptr, ptr %4, align 4, !dbg !319
  %6 = load ptr, ptr %3, align 4, !dbg !320
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !321
  store ptr %5, ptr %7, align 4, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !324 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load ptr, ptr %2, align 4, !dbg !329
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !330
  %5 = load ptr, ptr %4, align 4, !dbg !330
  ret ptr %5, !dbg !331
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !332 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !353, metadata !DIExpression()), !dbg !354
  %3 = load ptr, ptr %2, align 4, !dbg !355
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !356
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !357
  %6 = zext i1 %5 to i32, !dbg !358
  ret i32 %6, !dbg !359
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !360 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load ptr, ptr %2, align 4, !dbg !371
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !372
  %5 = load i32, ptr %4, align 4, !dbg !372
  ret i32 %5, !dbg !373
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = load ptr, ptr %2, align 4, !dbg !394
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !395
  %5 = load i32, ptr %4, align 4, !dbg !395
  %6 = load ptr, ptr %2, align 4, !dbg !396
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !397
  %8 = load i32, ptr %7, align 4, !dbg !397
  %9 = sub i32 %5, %8, !dbg !398
  ret i32 %9, !dbg !399
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !400 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !401, metadata !DIExpression()), !dbg !402
  %3 = load ptr, ptr %2, align 4, !dbg !403
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !404
  %5 = load i32, ptr %4, align 4, !dbg !404
  ret i32 %5, !dbg !405
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetTick() #0 !dbg !406 {
  %1 = call i32 @k_uptime_get_32(), !dbg !410
  ret i32 %1, !dbg !411
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_uptime_get_32() #0 !dbg !412 {
  %1 = call i64 @k_uptime_get(), !dbg !413
  %2 = trunc i64 %1 to i32, !dbg !414
  ret i32 %2, !dbg !415
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_Delay(i32 noundef %0) #0 !dbg !416 {
  %2 = alloca i32, align 4
  store volatile i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load volatile i32, ptr %2, align 4, !dbg !422
  %4 = call i32 @k_msleep(i32 noundef %3), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @k_msleep(i32 noundef %0) #0 !dbg !425 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.k_timeout_t, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !430
  %4 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !431
  %5 = load i32, ptr %2, align 4, !dbg !432
  %6 = icmp sgt i32 %5, 0, !dbg !433
  br i1 %6, label %7, label %9, !dbg !434

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !dbg !435
  br label %10, !dbg !434

9:                                                ; preds = %1
  br label %10, !dbg !434

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ], !dbg !434
  %12 = sext i32 %11 to i64, !dbg !436
  %13 = mul i64 %12, 10, !dbg !437
  store i64 %13, ptr %4, align 8, !dbg !431
  %14 = getelementptr inbounds %struct.k_timeout_t, ptr %3, i32 0, i32 0, !dbg !438
  %15 = load [1 x i64], ptr %14, align 8, !dbg !438
  %16 = call i32 @k_sleep([1 x i64] %15), !dbg !438
  ret i32 %16, !dbg !439
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !440 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !448
  %5 = icmp eq ptr %4, null, !dbg !449
  ret i1 %5, !dbg !450
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !451 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !455
  %3 = load ptr, ptr %2, align 4, !dbg !456
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !457
  %5 = load ptr, ptr %4, align 4, !dbg !457
  ret ptr %5, !dbg !458
}

; Function Attrs: noinline nounwind optnone
define internal i64 @k_uptime_get() #0 !dbg !459 {
  %1 = call i64 @k_uptime_ticks(), !dbg !462
  %2 = add i64 %1, 0, !dbg !463
  %3 = udiv i64 %2, 10, !dbg !464
  ret i64 %3, !dbg !465
}

; Function Attrs: noinline nounwind optnone
define internal i64 @k_uptime_ticks() #0 !dbg !466 {
  br label %1, !dbg !468

1:                                                ; preds = %0
  call void asm sideeffect "", "~{memory}"() #3, !dbg !469, !srcloc !471
  br label %2, !dbg !472

2:                                                ; preds = %1
  %3 = call i64 @z_impl_k_uptime_ticks(), !dbg !473
  ret i64 %3, !dbg !474
}

declare i64 @z_impl_k_uptime_ticks() #2

; Function Attrs: noinline nounwind optnone
define internal i32 @k_sleep([1 x i64] %0) #0 !dbg !475 {
  %2 = alloca %struct.k_timeout_t, align 8
  %3 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0
  store [1 x i64] %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !479
  br label %4, !dbg !480

4:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !481, !srcloc !483
  br label %5, !dbg !484

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.k_timeout_t, ptr %2, i32 0, i32 0, !dbg !485
  %7 = load [1 x i64], ptr %6, align 8, !dbg !485
  %8 = call i32 @z_impl_k_sleep([1 x i64] %7), !dbg !485
  ret i32 %8, !dbg !486
}

declare i32 @z_impl_k_sleep([1 x i64]) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
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
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!107 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !108, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !114, line: 250, size: 896, elements: !115)
!114 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!115 = !{!116, !184, !197, !198, !199, !200, !221}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !113, file: !114, line: 252, baseType: !117, size: 384)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !114, line: 58, size: 384, elements: !118)
!118 = !{!119, !147, !155, !157, !158, !171, !172, !173}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !114, line: 61, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !114, line: 61, size: 64, elements: !121)
!121 = !{!122, !138}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !120, file: !114, line: 62, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !124, line: 55, baseType: !125)
!124 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !124, line: 37, size: 64, elements: !126)
!126 = !{!127, !133}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 38, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 38, size: 32, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !128, file: !124, line: 39, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !124, line: 40, baseType: !131, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 42, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 42, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !134, file: !124, line: 43, baseType: !131, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !124, line: 44, baseType: !131, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !120, file: !114, line: 63, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !140, line: 58, size: 64, elements: !141)
!140 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !140, line: 60, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !117, file: !114, line: 69, baseType: !148, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !150, line: 243, baseType: !151)
!150 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 241, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !151, file: !150, line: 242, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !124, line: 51, baseType: !125)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !117, file: !114, line: 72, baseType: !156, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !90, line: 62, baseType: !5)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !117, file: !114, line: 75, baseType: !156, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !114, line: 91, baseType: !159, size: 16, offset: 112)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !114, line: 91, size: 16, elements: !160)
!160 = !{!161, !168}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !114, line: 92, baseType: !162, size: 16)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !114, line: 92, size: 16, elements: !163)
!163 = !{!164, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !162, file: !114, line: 97, baseType: !165, size: 8)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !90, line: 56, baseType: !166)
!166 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !162, file: !114, line: 98, baseType: !156, size: 8, offset: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !159, file: !114, line: 101, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !90, line: 63, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !117, file: !114, line: 108, baseType: !89, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !117, file: !114, line: 132, baseType: !87, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !117, file: !114, line: 136, baseType: !174, size: 192, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !150, line: 254, size: 192, elements: !175)
!175 = !{!176, !177, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !150, line: 255, baseType: !123, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !174, file: !150, line: 256, baseType: !178, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !150, line: 252, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !174, file: !150, line: 259, baseType: !96, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !113, file: !114, line: 255, baseType: !185, size: 288, offset: 384)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !186, line: 25, size: 288, elements: !187)
!186 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !185, file: !186, line: 26, baseType: !89, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !185, file: !186, line: 27, baseType: !89, size: 32, offset: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !185, file: !186, line: 28, baseType: !89, size: 32, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !185, file: !186, line: 29, baseType: !89, size: 32, offset: 96)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !185, file: !186, line: 30, baseType: !89, size: 32, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !185, file: !186, line: 31, baseType: !89, size: 32, offset: 160)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !185, file: !186, line: 32, baseType: !89, size: 32, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !185, file: !186, line: 33, baseType: !89, size: 32, offset: 224)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !185, file: !186, line: 34, baseType: !89, size: 32, offset: 256)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !113, file: !114, line: 258, baseType: !87, size: 32, offset: 672)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !113, file: !114, line: 261, baseType: !149, size: 64, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !113, file: !114, line: 302, baseType: !88, size: 32, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !113, file: !114, line: 333, baseType: !201, size: 32, offset: 800)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 32)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !203, line: 5291, size: 160, elements: !204)
!203 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!204 = !{!205, !216, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !202, file: !203, line: 5292, baseType: !206, size: 96)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !207, line: 56, size: 96, elements: !208)
!207 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!208 = !{!209, !212, !213}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !206, file: !207, line: 57, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 32)
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !207, line: 57, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !206, file: !207, line: 58, baseType: !87, size: 32, offset: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !206, file: !207, line: 59, baseType: !214, size: 32, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !215, line: 46, baseType: !91)
!215 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !202, file: !203, line: 5293, baseType: !149, size: 64, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !202, file: !203, line: 5294, baseType: !218, offset: 160)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !219, line: 45, elements: !220)
!219 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!220 = !{}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !113, file: !114, line: 355, baseType: !222, size: 64, offset: 832)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !186, line: 60, size: 64, elements: !223)
!223 = !{!224, !225}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !222, file: !186, line: 63, baseType: !89, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !222, file: !186, line: 66, baseType: !89, size: 32, offset: 32)
!226 = !DILocalVariable(name: "object", arg: 1, scope: !107, file: !4, line: 223, type: !110)
!227 = !DILocation(line: 223, column: 61, scope: !107)
!228 = !DILocalVariable(name: "thread", arg: 2, scope: !107, file: !4, line: 224, type: !112)
!229 = !DILocation(line: 224, column: 24, scope: !107)
!230 = !DILocation(line: 226, column: 9, scope: !107)
!231 = !DILocation(line: 227, column: 9, scope: !107)
!232 = !DILocation(line: 228, column: 1, scope: !107)
!233 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !234, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !110}
!236 = !DILocalVariable(name: "object", arg: 1, scope: !233, file: !4, line: 243, type: !110)
!237 = !DILocation(line: 243, column: 56, scope: !233)
!238 = !DILocation(line: 245, column: 9, scope: !233)
!239 = !DILocation(line: 246, column: 1, scope: !233)
!240 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !241, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!241 = !DISubroutineType(types: !242)
!242 = !{!87, !3}
!243 = !DILocalVariable(name: "otype", arg: 1, scope: !240, file: !4, line: 359, type: !3)
!244 = !DILocation(line: 359, column: 58, scope: !240)
!245 = !DILocation(line: 361, column: 9, scope: !240)
!246 = !DILocation(line: 363, column: 2, scope: !240)
!247 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !248, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!248 = !DISubroutineType(types: !249)
!249 = !{!87, !3, !214}
!250 = !DILocalVariable(name: "otype", arg: 1, scope: !247, file: !4, line: 366, type: !3)
!251 = !DILocation(line: 366, column: 63, scope: !247)
!252 = !DILocalVariable(name: "size", arg: 2, scope: !247, file: !4, line: 367, type: !214)
!253 = !DILocation(line: 367, column: 13, scope: !247)
!254 = !DILocation(line: 369, column: 9, scope: !247)
!255 = !DILocation(line: 370, column: 9, scope: !247)
!256 = !DILocation(line: 372, column: 2, scope: !247)
!257 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !203, file: !203, line: 656, type: !258, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!258 = !DISubroutineType(types: !259)
!259 = !{!94, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!262 = !DILocalVariable(name: "t", arg: 1, scope: !257, file: !203, line: 657, type: !260)
!263 = !DILocation(line: 657, column: 30, scope: !257)
!264 = !DILocation(line: 659, column: 28, scope: !257)
!265 = !DILocation(line: 659, column: 31, scope: !257)
!266 = !DILocation(line: 659, column: 36, scope: !257)
!267 = !DILocation(line: 659, column: 9, scope: !257)
!268 = !DILocation(line: 659, column: 2, scope: !257)
!269 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !203, file: !203, line: 671, type: !258, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!270 = !DILocalVariable(name: "t", arg: 1, scope: !269, file: !203, line: 672, type: !260)
!271 = !DILocation(line: 672, column: 30, scope: !269)
!272 = !DILocation(line: 674, column: 30, scope: !269)
!273 = !DILocation(line: 674, column: 33, scope: !269)
!274 = !DILocation(line: 674, column: 38, scope: !269)
!275 = !DILocation(line: 674, column: 9, scope: !269)
!276 = !DILocation(line: 674, column: 2, scope: !269)
!277 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !203, file: !203, line: 1634, type: !278, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!278 = !DISubroutineType(types: !279)
!279 = !{!94, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !203, line: 1439, size: 448, elements: !283)
!283 = !{!284, !285, !286, !291, !292, !297, !298}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !282, file: !203, line: 1445, baseType: !174, size: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !282, file: !203, line: 1448, baseType: !149, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !282, file: !203, line: 1451, baseType: !287, size: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !282, file: !203, line: 1454, baseType: !287, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !282, file: !203, line: 1457, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !95, line: 67, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 65, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !294, file: !95, line: 66, baseType: !94, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !282, file: !203, line: 1460, baseType: !89, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !282, file: !203, line: 1463, baseType: !87, size: 32, offset: 416)
!299 = !DILocalVariable(name: "timer", arg: 1, scope: !277, file: !203, line: 1635, type: !280)
!300 = !DILocation(line: 1635, column: 34, scope: !277)
!301 = !DILocation(line: 1637, column: 28, scope: !277)
!302 = !DILocation(line: 1637, column: 35, scope: !277)
!303 = !DILocation(line: 1637, column: 9, scope: !277)
!304 = !DILocation(line: 1637, column: 2, scope: !277)
!305 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !203, file: !203, line: 1649, type: !278, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!306 = !DILocalVariable(name: "timer", arg: 1, scope: !305, file: !203, line: 1650, type: !280)
!307 = !DILocation(line: 1650, column: 34, scope: !305)
!308 = !DILocation(line: 1652, column: 30, scope: !305)
!309 = !DILocation(line: 1652, column: 37, scope: !305)
!310 = !DILocation(line: 1652, column: 9, scope: !305)
!311 = !DILocation(line: 1652, column: 2, scope: !305)
!312 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !203, file: !203, line: 1689, type: !313, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !290, !87}
!315 = !DILocalVariable(name: "timer", arg: 1, scope: !312, file: !203, line: 1689, type: !290)
!316 = !DILocation(line: 1689, column: 65, scope: !312)
!317 = !DILocalVariable(name: "user_data", arg: 2, scope: !312, file: !203, line: 1690, type: !87)
!318 = !DILocation(line: 1690, column: 19, scope: !312)
!319 = !DILocation(line: 1692, column: 21, scope: !312)
!320 = !DILocation(line: 1692, column: 2, scope: !312)
!321 = !DILocation(line: 1692, column: 9, scope: !312)
!322 = !DILocation(line: 1692, column: 19, scope: !312)
!323 = !DILocation(line: 1693, column: 1, scope: !312)
!324 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !203, file: !203, line: 1704, type: !325, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!325 = !DISubroutineType(types: !326)
!326 = !{!87, !280}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !324, file: !203, line: 1704, type: !280)
!328 = !DILocation(line: 1704, column: 72, scope: !324)
!329 = !DILocation(line: 1706, column: 9, scope: !324)
!330 = !DILocation(line: 1706, column: 16, scope: !324)
!331 = !DILocation(line: 1706, column: 2, scope: !324)
!332 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !203, file: !203, line: 2071, type: !333, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!333 = !DISubroutineType(types: !334)
!334 = !{!88, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !203, line: 1830, size: 128, elements: !337)
!337 = !{!338, !351, !352}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !336, file: !203, line: 1831, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !340, line: 60, baseType: !341)
!340 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !340, line: 53, size: 64, elements: !342)
!342 = !{!343, !350}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !341, file: !340, line: 54, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !340, line: 50, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !340, line: 44, size: 32, elements: !347)
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !346, file: !340, line: 45, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !340, line: 40, baseType: !89)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !341, file: !340, line: 55, baseType: !344, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !203, line: 1832, baseType: !218, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !336, file: !203, line: 1833, baseType: !149, size: 64, offset: 64)
!353 = !DILocalVariable(name: "queue", arg: 1, scope: !332, file: !203, line: 2071, type: !335)
!354 = !DILocation(line: 2071, column: 59, scope: !332)
!355 = !DILocation(line: 2073, column: 35, scope: !332)
!356 = !DILocation(line: 2073, column: 42, scope: !332)
!357 = !DILocation(line: 2073, column: 14, scope: !332)
!358 = !DILocation(line: 2073, column: 9, scope: !332)
!359 = !DILocation(line: 2073, column: 2, scope: !332)
!360 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !203, file: !203, line: 3209, type: !361, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!361 = !DISubroutineType(types: !362)
!362 = !{!91, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !203, line: 3092, size: 128, elements: !365)
!365 = !{!366, !367, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !364, file: !203, line: 3093, baseType: !149, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !364, file: !203, line: 3094, baseType: !91, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !364, file: !203, line: 3095, baseType: !91, size: 32, offset: 96)
!369 = !DILocalVariable(name: "sem", arg: 1, scope: !360, file: !203, line: 3209, type: !363)
!370 = !DILocation(line: 3209, column: 65, scope: !360)
!371 = !DILocation(line: 3211, column: 9, scope: !360)
!372 = !DILocation(line: 3211, column: 14, scope: !360)
!373 = !DILocation(line: 3211, column: 2, scope: !360)
!374 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !203, file: !203, line: 4649, type: !375, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!375 = !DISubroutineType(types: !376)
!376 = !{!89, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !203, line: 4390, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !387, !388, !389, !390, !391}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !203, line: 4392, baseType: !149, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !203, line: 4394, baseType: !218, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !378, file: !203, line: 4396, baseType: !214, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !378, file: !203, line: 4398, baseType: !89, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !378, file: !203, line: 4400, baseType: !385, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !378, file: !203, line: 4402, baseType: !385, size: 32, offset: 160)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !378, file: !203, line: 4404, baseType: !385, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !378, file: !203, line: 4406, baseType: !385, size: 32, offset: 224)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !378, file: !203, line: 4408, baseType: !89, size: 32, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !203, line: 4413, baseType: !156, size: 8, offset: 288)
!392 = !DILocalVariable(name: "msgq", arg: 1, scope: !374, file: !203, line: 4649, type: !377)
!393 = !DILocation(line: 4649, column: 66, scope: !374)
!394 = !DILocation(line: 4651, column: 9, scope: !374)
!395 = !DILocation(line: 4651, column: 15, scope: !374)
!396 = !DILocation(line: 4651, column: 26, scope: !374)
!397 = !DILocation(line: 4651, column: 32, scope: !374)
!398 = !DILocation(line: 4651, column: 24, scope: !374)
!399 = !DILocation(line: 4651, column: 2, scope: !374)
!400 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !203, file: !203, line: 4665, type: !375, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!401 = !DILocalVariable(name: "msgq", arg: 1, scope: !400, file: !203, line: 4665, type: !377)
!402 = !DILocation(line: 4665, column: 66, scope: !400)
!403 = !DILocation(line: 4667, column: 9, scope: !400)
!404 = !DILocation(line: 4667, column: 15, scope: !400)
!405 = !DILocation(line: 4667, column: 2, scope: !400)
!406 = distinct !DISubprogram(name: "HAL_GetTick", scope: !407, file: !407, line: 23, type: !408, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !220)
!407 = !DIFile(filename: "soc/arm/st_stm32/common/stm32cube_hal.c", directory: "/home/sri/zephyrproject/zephyr")
!408 = !DISubroutineType(types: !409)
!409 = !{!89}
!410 = !DILocation(line: 25, column: 9, scope: !406)
!411 = !DILocation(line: 25, column: 2, scope: !406)
!412 = distinct !DISubprogram(name: "k_uptime_get_32", scope: !203, file: !203, line: 1765, type: !408, scopeLine: 1766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!413 = !DILocation(line: 1767, column: 19, scope: !412)
!414 = !DILocation(line: 1767, column: 9, scope: !412)
!415 = !DILocation(line: 1767, column: 2, scope: !412)
!416 = distinct !DISubprogram(name: "HAL_Delay", scope: !407, file: !407, line: 34, type: !417, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !220)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !419}
!419 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !89)
!420 = !DILocalVariable(name: "Delay", arg: 1, scope: !416, file: !407, line: 34, type: !419)
!421 = !DILocation(line: 34, column: 34, scope: !416)
!422 = !DILocation(line: 36, column: 11, scope: !416)
!423 = !DILocation(line: 36, column: 2, scope: !416)
!424 = !DILocation(line: 37, column: 1, scope: !416)
!425 = distinct !DISubprogram(name: "k_msleep", scope: !203, file: !203, line: 501, type: !426, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!426 = !DISubroutineType(types: !427)
!427 = !{!428, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !90, line: 58, baseType: !88)
!429 = !DILocalVariable(name: "ms", arg: 1, scope: !425, file: !203, line: 501, type: !428)
!430 = !DILocation(line: 501, column: 40, scope: !425)
!431 = !DILocation(line: 503, column: 32, scope: !425)
!432 = !DILocation(line: 503, column: 372, scope: !425)
!433 = !DILocation(line: 503, column: 376, scope: !425)
!434 = !DILocation(line: 503, column: 370, scope: !425)
!435 = !DILocation(line: 503, column: 386, scope: !425)
!436 = !DILocation(line: 503, column: 357, scope: !425)
!437 = !DILocation(line: 503, column: 397, scope: !425)
!438 = !DILocation(line: 503, column: 9, scope: !425)
!439 = !DILocation(line: 503, column: 2, scope: !425)
!440 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !340, file: !340, line: 335, type: !441, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !444}
!443 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!445 = !DILocalVariable(name: "list", arg: 1, scope: !440, file: !340, line: 335, type: !444)
!446 = !DILocation(line: 335, column: 55, scope: !440)
!447 = !DILocation(line: 335, column: 92, scope: !440)
!448 = !DILocation(line: 335, column: 71, scope: !440)
!449 = !DILocation(line: 335, column: 98, scope: !440)
!450 = !DILocation(line: 335, column: 63, scope: !440)
!451 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !340, file: !340, line: 255, type: !452, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!452 = !DISubroutineType(types: !453)
!453 = !{!344, !444}
!454 = !DILocalVariable(name: "list", arg: 1, scope: !451, file: !340, line: 255, type: !444)
!455 = !DILocation(line: 255, column: 64, scope: !451)
!456 = !DILocation(line: 257, column: 9, scope: !451)
!457 = !DILocation(line: 257, column: 15, scope: !451)
!458 = !DILocation(line: 257, column: 2, scope: !451)
!459 = distinct !DISubprogram(name: "k_uptime_get", scope: !203, file: !203, line: 1741, type: !460, scopeLine: 1742, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!460 = !DISubroutineType(types: !461)
!461 = !{!96}
!462 = !DILocation(line: 1743, column: 132, scope: !459)
!463 = !DILocation(line: 1743, column: 150, scope: !459)
!464 = !DILocation(line: 1743, column: 219, scope: !459)
!465 = !DILocation(line: 1743, column: 2, scope: !459)
!466 = distinct !DISubprogram(name: "k_uptime_ticks", scope: !467, file: !467, line: 599, type: !460, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!467 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!468 = !DILocation(line: 608, column: 2, scope: !466)
!469 = !DILocation(line: 608, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !467, line: 608, column: 5)
!471 = !{i64 141685}
!472 = !DILocation(line: 608, column: 47, scope: !470)
!473 = !DILocation(line: 609, column: 9, scope: !466)
!474 = !DILocation(line: 609, column: 2, scope: !466)
!475 = distinct !DISubprogram(name: "k_sleep", scope: !467, file: !467, line: 126, type: !476, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !220)
!476 = !DISubroutineType(types: !477)
!477 = !{!428, !293}
!478 = !DILocalVariable(name: "timeout", arg: 1, scope: !475, file: !467, line: 126, type: !293)
!479 = !DILocation(line: 126, column: 43, scope: !475)
!480 = !DILocation(line: 134, column: 2, scope: !475)
!481 = !DILocation(line: 134, column: 7, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !467, line: 134, column: 5)
!483 = !{i64 134261}
!484 = !DILocation(line: 134, column: 47, scope: !482)
!485 = !DILocation(line: 135, column: 9, scope: !475)
!486 = !DILocation(line: 135, column: 2, scope: !475)
