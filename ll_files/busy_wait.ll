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

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !103 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !224, metadata !DIExpression()), !dbg !225
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !226, metadata !DIExpression()), !dbg !227
  %5 = load ptr, ptr %3, align 4, !dbg !228
  %6 = load ptr, ptr %4, align 4, !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !231 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !234, metadata !DIExpression()), !dbg !235
  %3 = load ptr, ptr %2, align 4, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !238 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load i8, ptr %2, align 1, !dbg !243
  ret ptr null, !dbg !244
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !245 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !248, metadata !DIExpression()), !dbg !249
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !251
  %5 = load i8, ptr %3, align 1, !dbg !252
  %6 = load i32, ptr %4, align 4, !dbg !253
  ret ptr null, !dbg !254
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !255 {
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
define hidden void @z_impl_k_busy_wait(i32 noundef %0) #0 !dbg !406 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !411
  br label %6, !dbg !412

6:                                                ; preds = %1
  br label %7, !dbg !413

7:                                                ; preds = %6
  %8 = load i32, ptr %2, align 4, !dbg !415
  %9 = icmp eq i32 %8, 0, !dbg !417
  br i1 %9, label %10, label %13, !dbg !418

10:                                               ; preds = %7
  br label %11, !dbg !419

11:                                               ; preds = %10
  br label %12, !dbg !421

12:                                               ; preds = %11
  br label %33, !dbg !423

13:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %3, metadata !424, metadata !DIExpression()), !dbg !425
  %14 = call i32 @k_cycle_get_32(), !dbg !426
  store i32 %14, ptr %3, align 4, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %4, metadata !427, metadata !DIExpression()), !dbg !428
  %15 = load i32, ptr %2, align 4, !dbg !429
  %16 = zext i32 %15 to i64, !dbg !430
  %17 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !431
  %18 = sext i32 %17 to i64, !dbg !432
  %19 = mul i64 %16, %18, !dbg !433
  %20 = udiv i64 %19, 1000000, !dbg !434
  %21 = trunc i64 %20 to i32, !dbg !435
  store i32 %21, ptr %4, align 4, !dbg !428
  br label %22, !dbg !436

22:                                               ; preds = %30, %13
  call void @llvm.dbg.declare(metadata ptr %5, metadata !437, metadata !DIExpression()), !dbg !441
  %23 = call i32 @k_cycle_get_32(), !dbg !442
  store i32 %23, ptr %5, align 4, !dbg !441
  %24 = load i32, ptr %5, align 4, !dbg !443
  %25 = load i32, ptr %3, align 4, !dbg !445
  %26 = sub i32 %24, %25, !dbg !446
  %27 = load i32, ptr %4, align 4, !dbg !447
  %28 = icmp uge i32 %26, %27, !dbg !448
  br i1 %28, label %29, label %30, !dbg !449

29:                                               ; preds = %22
  br label %31, !dbg !450

30:                                               ; preds = %22
  br label %22, !dbg !452, !llvm.loop !453

31:                                               ; preds = %29
  br label %32, !dbg !456

32:                                               ; preds = %31
  br label %33, !dbg !457

33:                                               ; preds = %12, %32
  ret void, !dbg !459
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @k_cycle_get_32() #0 !dbg !460 {
  %1 = call i32 @arch_k_cycle_get_32(), !dbg !463
  ret i32 %1, !dbg !464
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sys_clock_hw_cycles_per_sec() #0 !dbg !465 {
  ret i32 48000000, !dbg !469
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !470 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !475, metadata !DIExpression()), !dbg !476
  %3 = load ptr, ptr %2, align 4, !dbg !477
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !478
  %5 = icmp eq ptr %4, null, !dbg !479
  ret i1 %5, !dbg !480
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !481 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !485
  %3 = load ptr, ptr %2, align 4, !dbg !486
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !487
  %5 = load ptr, ptr %4, align 4, !dbg !487
  ret ptr %5, !dbg !488
}

; Function Attrs: noinline nounwind optnone
define internal i32 @arch_k_cycle_get_32() #0 !dbg !489 {
  %1 = call i32 @sys_clock_cycle_get_32(), !dbg !491
  ret i32 %1, !dbg !492
}

declare i32 @sys_clock_cycle_get_32() #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
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
!100 = !{i32 8, !"PIC Level", i32 2}
!101 = !{i32 7, !"PIE Level", i32 2}
!102 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!103 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !104, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !110, line: 250, size: 896, elements: !111)
!110 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!111 = !{!112, !182, !195, !196, !197, !198, !219}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !109, file: !110, line: 252, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !110, line: 58, size: 384, elements: !114)
!114 = !{!115, !143, !151, !153, !154, !167, !168, !169}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 61, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 61, size: 64, elements: !117)
!117 = !{!118, !134}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !116, file: !110, line: 62, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !120, line: 55, baseType: !121)
!120 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !120, line: 37, size: 64, elements: !122)
!122 = !{!123, !129}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 38, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 38, size: 32, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !124, file: !120, line: 39, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !120, line: 40, baseType: !127, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 42, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 42, size: 32, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !130, file: !120, line: 43, baseType: !127, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !130, file: !120, line: 44, baseType: !127, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !116, file: !110, line: 63, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !136, line: 58, size: 64, elements: !137)
!136 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !135, file: !136, line: 60, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !113, file: !110, line: 69, baseType: !144, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !146, line: 243, baseType: !147)
!146 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 241, size: 64, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !147, file: !146, line: 242, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !120, line: 51, baseType: !121)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !113, file: !110, line: 72, baseType: !152, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !113, file: !110, line: 75, baseType: !152, size: 8, offset: 104)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 91, baseType: !155, size: 16, offset: 112)
!155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 91, size: 16, elements: !156)
!156 = !{!157, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !155, file: !110, line: 92, baseType: !158, size: 16)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !155, file: !110, line: 92, size: 16, elements: !159)
!159 = !{!160, !163}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !158, file: !110, line: 97, baseType: !161, size: 8)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 56, baseType: !162)
!162 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !158, file: !110, line: 98, baseType: !152, size: 8, offset: 8)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !155, file: !110, line: 101, baseType: !165, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 63, baseType: !166)
!166 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !113, file: !110, line: 108, baseType: !87, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !113, file: !110, line: 132, baseType: !92, size: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !113, file: !110, line: 136, baseType: !170, size: 192, offset: 192)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !146, line: 254, size: 192, elements: !171)
!171 = !{!172, !173, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !170, file: !146, line: 255, baseType: !119, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !170, file: !146, line: 256, baseType: !174, size: 32, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !146, line: 252, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !170, file: !146, line: 259, baseType: !180, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !181)
!181 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !109, file: !110, line: 255, baseType: !183, size: 288, offset: 384)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !184, line: 25, size: 288, elements: !185)
!184 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !183, file: !184, line: 26, baseType: !87, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !183, file: !184, line: 27, baseType: !87, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !183, file: !184, line: 28, baseType: !87, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !183, file: !184, line: 29, baseType: !87, size: 32, offset: 96)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !183, file: !184, line: 30, baseType: !87, size: 32, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !183, file: !184, line: 31, baseType: !87, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !183, file: !184, line: 32, baseType: !87, size: 32, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !183, file: !184, line: 33, baseType: !87, size: 32, offset: 224)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !183, file: !184, line: 34, baseType: !87, size: 32, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !109, file: !110, line: 258, baseType: !92, size: 32, offset: 672)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !109, file: !110, line: 261, baseType: !145, size: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !109, file: !110, line: 302, baseType: !93, size: 32, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !109, file: !110, line: 333, baseType: !199, size: 32, offset: 800)
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
!210 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !204, file: !205, line: 58, baseType: !92, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !204, file: !205, line: 59, baseType: !212, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !213, line: 46, baseType: !89)
!213 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !200, file: !201, line: 5293, baseType: !145, size: 64, offset: 96)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !200, file: !201, line: 5294, baseType: !216, offset: 160)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !217, line: 45, elements: !218)
!217 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!218 = !{}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !110, line: 355, baseType: !220, size: 64, offset: 832)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !184, line: 60, size: 64, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !220, file: !184, line: 63, baseType: !87, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !220, file: !184, line: 66, baseType: !87, size: 32, offset: 32)
!224 = !DILocalVariable(name: "object", arg: 1, scope: !103, file: !4, line: 223, type: !106)
!225 = !DILocation(line: 223, column: 61, scope: !103)
!226 = !DILocalVariable(name: "thread", arg: 2, scope: !103, file: !4, line: 224, type: !108)
!227 = !DILocation(line: 224, column: 24, scope: !103)
!228 = !DILocation(line: 226, column: 9, scope: !103)
!229 = !DILocation(line: 227, column: 9, scope: !103)
!230 = !DILocation(line: 228, column: 1, scope: !103)
!231 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !232, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !106}
!234 = !DILocalVariable(name: "object", arg: 1, scope: !231, file: !4, line: 243, type: !106)
!235 = !DILocation(line: 243, column: 56, scope: !231)
!236 = !DILocation(line: 245, column: 9, scope: !231)
!237 = !DILocation(line: 246, column: 1, scope: !231)
!238 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !239, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!239 = !DISubroutineType(types: !240)
!240 = !{!92, !3}
!241 = !DILocalVariable(name: "otype", arg: 1, scope: !238, file: !4, line: 359, type: !3)
!242 = !DILocation(line: 359, column: 58, scope: !238)
!243 = !DILocation(line: 361, column: 9, scope: !238)
!244 = !DILocation(line: 363, column: 2, scope: !238)
!245 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !246, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!246 = !DISubroutineType(types: !247)
!247 = !{!92, !3, !212}
!248 = !DILocalVariable(name: "otype", arg: 1, scope: !245, file: !4, line: 366, type: !3)
!249 = !DILocation(line: 366, column: 63, scope: !245)
!250 = !DILocalVariable(name: "size", arg: 2, scope: !245, file: !4, line: 367, type: !212)
!251 = !DILocation(line: 367, column: 13, scope: !245)
!252 = !DILocation(line: 369, column: 9, scope: !245)
!253 = !DILocation(line: 370, column: 9, scope: !245)
!254 = !DILocation(line: 372, column: 2, scope: !245)
!255 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !201, file: !201, line: 656, type: !256, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !259, line: 46, baseType: !180)
!259 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!262 = !DILocalVariable(name: "t", arg: 1, scope: !255, file: !201, line: 657, type: !260)
!263 = !DILocation(line: 657, column: 30, scope: !255)
!264 = !DILocation(line: 659, column: 28, scope: !255)
!265 = !DILocation(line: 659, column: 31, scope: !255)
!266 = !DILocation(line: 659, column: 36, scope: !255)
!267 = !DILocation(line: 659, column: 9, scope: !255)
!268 = !DILocation(line: 659, column: 2, scope: !255)
!269 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !201, file: !201, line: 671, type: !256, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!270 = !DILocalVariable(name: "t", arg: 1, scope: !269, file: !201, line: 672, type: !260)
!271 = !DILocation(line: 672, column: 30, scope: !269)
!272 = !DILocation(line: 674, column: 30, scope: !269)
!273 = !DILocation(line: 674, column: 33, scope: !269)
!274 = !DILocation(line: 674, column: 38, scope: !269)
!275 = !DILocation(line: 674, column: 9, scope: !269)
!276 = !DILocation(line: 674, column: 2, scope: !269)
!277 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !201, file: !201, line: 1634, type: !278, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!278 = !DISubroutineType(types: !279)
!279 = !{!258, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !201, line: 1439, size: 448, elements: !283)
!283 = !{!284, !285, !286, !291, !292, !297, !298}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !282, file: !201, line: 1445, baseType: !170, size: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !282, file: !201, line: 1448, baseType: !145, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !282, file: !201, line: 1451, baseType: !287, size: 32, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !282, file: !201, line: 1454, baseType: !287, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !282, file: !201, line: 1457, baseType: !293, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !259, line: 67, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 65, size: 64, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !294, file: !259, line: 66, baseType: !258, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !282, file: !201, line: 1460, baseType: !87, size: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !282, file: !201, line: 1463, baseType: !92, size: 32, offset: 416)
!299 = !DILocalVariable(name: "timer", arg: 1, scope: !277, file: !201, line: 1635, type: !280)
!300 = !DILocation(line: 1635, column: 34, scope: !277)
!301 = !DILocation(line: 1637, column: 28, scope: !277)
!302 = !DILocation(line: 1637, column: 35, scope: !277)
!303 = !DILocation(line: 1637, column: 9, scope: !277)
!304 = !DILocation(line: 1637, column: 2, scope: !277)
!305 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !201, file: !201, line: 1649, type: !278, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!306 = !DILocalVariable(name: "timer", arg: 1, scope: !305, file: !201, line: 1650, type: !280)
!307 = !DILocation(line: 1650, column: 34, scope: !305)
!308 = !DILocation(line: 1652, column: 30, scope: !305)
!309 = !DILocation(line: 1652, column: 37, scope: !305)
!310 = !DILocation(line: 1652, column: 9, scope: !305)
!311 = !DILocation(line: 1652, column: 2, scope: !305)
!312 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !201, file: !201, line: 1689, type: !313, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !290, !92}
!315 = !DILocalVariable(name: "timer", arg: 1, scope: !312, file: !201, line: 1689, type: !290)
!316 = !DILocation(line: 1689, column: 65, scope: !312)
!317 = !DILocalVariable(name: "user_data", arg: 2, scope: !312, file: !201, line: 1690, type: !92)
!318 = !DILocation(line: 1690, column: 19, scope: !312)
!319 = !DILocation(line: 1692, column: 21, scope: !312)
!320 = !DILocation(line: 1692, column: 2, scope: !312)
!321 = !DILocation(line: 1692, column: 9, scope: !312)
!322 = !DILocation(line: 1692, column: 19, scope: !312)
!323 = !DILocation(line: 1693, column: 1, scope: !312)
!324 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !201, file: !201, line: 1704, type: !325, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!325 = !DISubroutineType(types: !326)
!326 = !{!92, !280}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !324, file: !201, line: 1704, type: !280)
!328 = !DILocation(line: 1704, column: 72, scope: !324)
!329 = !DILocation(line: 1706, column: 9, scope: !324)
!330 = !DILocation(line: 1706, column: 16, scope: !324)
!331 = !DILocation(line: 1706, column: 2, scope: !324)
!332 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !201, file: !201, line: 2071, type: !333, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!333 = !DISubroutineType(types: !334)
!334 = !{!93, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 32)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !201, line: 1830, size: 128, elements: !337)
!337 = !{!338, !351, !352}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !336, file: !201, line: 1831, baseType: !339, size: 64)
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
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !340, line: 40, baseType: !87)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !341, file: !340, line: 55, baseType: !344, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !336, file: !201, line: 1832, baseType: !216, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !336, file: !201, line: 1833, baseType: !145, size: 64, offset: 64)
!353 = !DILocalVariable(name: "queue", arg: 1, scope: !332, file: !201, line: 2071, type: !335)
!354 = !DILocation(line: 2071, column: 59, scope: !332)
!355 = !DILocation(line: 2073, column: 35, scope: !332)
!356 = !DILocation(line: 2073, column: 42, scope: !332)
!357 = !DILocation(line: 2073, column: 14, scope: !332)
!358 = !DILocation(line: 2073, column: 9, scope: !332)
!359 = !DILocation(line: 2073, column: 2, scope: !332)
!360 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !201, file: !201, line: 3209, type: !361, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!361 = !DISubroutineType(types: !362)
!362 = !{!89, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !201, line: 3092, size: 128, elements: !365)
!365 = !{!366, !367, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !364, file: !201, line: 3093, baseType: !145, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !364, file: !201, line: 3094, baseType: !89, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !364, file: !201, line: 3095, baseType: !89, size: 32, offset: 96)
!369 = !DILocalVariable(name: "sem", arg: 1, scope: !360, file: !201, line: 3209, type: !363)
!370 = !DILocation(line: 3209, column: 65, scope: !360)
!371 = !DILocation(line: 3211, column: 9, scope: !360)
!372 = !DILocation(line: 3211, column: 14, scope: !360)
!373 = !DILocation(line: 3211, column: 2, scope: !360)
!374 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !201, file: !201, line: 4649, type: !375, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!375 = !DISubroutineType(types: !376)
!376 = !{!87, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !201, line: 4390, size: 320, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !387, !388, !389, !390, !391}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !201, line: 4392, baseType: !145, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !201, line: 4394, baseType: !216, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !378, file: !201, line: 4396, baseType: !212, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !378, file: !201, line: 4398, baseType: !87, size: 32, offset: 96)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !378, file: !201, line: 4400, baseType: !385, size: 32, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 32)
!386 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !378, file: !201, line: 4402, baseType: !385, size: 32, offset: 160)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !378, file: !201, line: 4404, baseType: !385, size: 32, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !378, file: !201, line: 4406, baseType: !385, size: 32, offset: 224)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !378, file: !201, line: 4408, baseType: !87, size: 32, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !201, line: 4413, baseType: !152, size: 8, offset: 288)
!392 = !DILocalVariable(name: "msgq", arg: 1, scope: !374, file: !201, line: 4649, type: !377)
!393 = !DILocation(line: 4649, column: 66, scope: !374)
!394 = !DILocation(line: 4651, column: 9, scope: !374)
!395 = !DILocation(line: 4651, column: 15, scope: !374)
!396 = !DILocation(line: 4651, column: 26, scope: !374)
!397 = !DILocation(line: 4651, column: 32, scope: !374)
!398 = !DILocation(line: 4651, column: 24, scope: !374)
!399 = !DILocation(line: 4651, column: 2, scope: !374)
!400 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !201, file: !201, line: 4665, type: !375, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!401 = !DILocalVariable(name: "msgq", arg: 1, scope: !400, file: !201, line: 4665, type: !377)
!402 = !DILocation(line: 4665, column: 66, scope: !400)
!403 = !DILocation(line: 4667, column: 9, scope: !400)
!404 = !DILocation(line: 4667, column: 15, scope: !400)
!405 = !DILocation(line: 4667, column: 2, scope: !400)
!406 = distinct !DISubprogram(name: "z_impl_k_busy_wait", scope: !407, file: !407, line: 12, type: !408, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !218)
!407 = !DIFile(filename: "kernel/busy_wait.c", directory: "/home/sri/zephyrproject/zephyr")
!408 = !DISubroutineType(types: !409)
!409 = !{null, !87}
!410 = !DILocalVariable(name: "usec_to_wait", arg: 1, scope: !406, file: !407, line: 12, type: !87)
!411 = !DILocation(line: 12, column: 34, scope: !406)
!412 = !DILocation(line: 14, column: 2, scope: !406)
!413 = !DILocation(line: 14, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !406, file: !407, line: 14, column: 5)
!415 = !DILocation(line: 15, column: 6, scope: !416)
!416 = distinct !DILexicalBlock(scope: !406, file: !407, line: 15, column: 6)
!417 = !DILocation(line: 15, column: 19, scope: !416)
!418 = !DILocation(line: 15, column: 6, scope: !406)
!419 = !DILocation(line: 16, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !416, file: !407, line: 15, column: 26)
!421 = !DILocation(line: 16, column: 8, scope: !422)
!422 = distinct !DILexicalBlock(scope: !420, file: !407, line: 16, column: 6)
!423 = !DILocation(line: 17, column: 3, scope: !420)
!424 = !DILocalVariable(name: "start_cycles", scope: !406, file: !407, line: 23, type: !87)
!425 = !DILocation(line: 23, column: 11, scope: !406)
!426 = !DILocation(line: 23, column: 26, scope: !406)
!427 = !DILocalVariable(name: "cycles_to_wait", scope: !406, file: !407, line: 26, type: !87)
!428 = !DILocation(line: 26, column: 11, scope: !406)
!429 = !DILocation(line: 27, column: 13, scope: !406)
!430 = !DILocation(line: 27, column: 3, scope: !406)
!431 = !DILocation(line: 28, column: 13, scope: !406)
!432 = !DILocation(line: 28, column: 3, scope: !406)
!433 = !DILocation(line: 27, column: 26, scope: !406)
!434 = !DILocation(line: 28, column: 43, scope: !406)
!435 = !DILocation(line: 26, column: 28, scope: !406)
!436 = !DILocation(line: 32, column: 2, scope: !406)
!437 = !DILocalVariable(name: "current_cycles", scope: !438, file: !407, line: 33, type: !87)
!438 = distinct !DILexicalBlock(scope: !439, file: !407, line: 32, column: 11)
!439 = distinct !DILexicalBlock(scope: !440, file: !407, line: 32, column: 2)
!440 = distinct !DILexicalBlock(scope: !406, file: !407, line: 32, column: 2)
!441 = !DILocation(line: 33, column: 12, scope: !438)
!442 = !DILocation(line: 33, column: 29, scope: !438)
!443 = !DILocation(line: 36, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !438, file: !407, line: 36, column: 7)
!445 = !DILocation(line: 36, column: 25, scope: !444)
!446 = !DILocation(line: 36, column: 23, scope: !444)
!447 = !DILocation(line: 36, column: 42, scope: !444)
!448 = !DILocation(line: 36, column: 39, scope: !444)
!449 = !DILocation(line: 36, column: 7, scope: !438)
!450 = !DILocation(line: 37, column: 4, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !407, line: 36, column: 58)
!452 = !DILocation(line: 32, column: 2, scope: !439)
!453 = distinct !{!453, !454, !455}
!454 = !DILocation(line: 32, column: 2, scope: !440)
!455 = !DILocation(line: 39, column: 2, scope: !440)
!456 = !DILocation(line: 53, column: 2, scope: !406)
!457 = !DILocation(line: 53, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !406, file: !407, line: 53, column: 5)
!459 = !DILocation(line: 54, column: 1, scope: !406)
!460 = distinct !DISubprogram(name: "k_cycle_get_32", scope: !201, file: !201, line: 1800, type: !461, scopeLine: 1801, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!461 = !DISubroutineType(types: !462)
!462 = !{!87}
!463 = !DILocation(line: 1802, column: 9, scope: !460)
!464 = !DILocation(line: 1802, column: 2, scope: !460)
!465 = distinct !DISubprogram(name: "sys_clock_hw_cycles_per_sec", scope: !466, file: !466, line: 73, type: !467, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!466 = !DIFile(filename: "include/zephyr/sys/time_units.h", directory: "/home/sri/zephyrproject/zephyr")
!467 = !DISubroutineType(types: !468)
!468 = !{!93}
!469 = !DILocation(line: 78, column: 2, scope: !465)
!470 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !340, file: !340, line: 335, type: !471, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !474}
!473 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!475 = !DILocalVariable(name: "list", arg: 1, scope: !470, file: !340, line: 335, type: !474)
!476 = !DILocation(line: 335, column: 55, scope: !470)
!477 = !DILocation(line: 335, column: 92, scope: !470)
!478 = !DILocation(line: 335, column: 71, scope: !470)
!479 = !DILocation(line: 335, column: 98, scope: !470)
!480 = !DILocation(line: 335, column: 63, scope: !470)
!481 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !340, file: !340, line: 255, type: !482, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!482 = !DISubroutineType(types: !483)
!483 = !{!344, !474}
!484 = !DILocalVariable(name: "list", arg: 1, scope: !481, file: !340, line: 255, type: !474)
!485 = !DILocation(line: 255, column: 64, scope: !481)
!486 = !DILocation(line: 257, column: 9, scope: !481)
!487 = !DILocation(line: 257, column: 15, scope: !481)
!488 = !DILocation(line: 257, column: 2, scope: !481)
!489 = distinct !DISubprogram(name: "arch_k_cycle_get_32", scope: !490, file: !490, line: 24, type: !461, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !218)
!490 = !DIFile(filename: "include/zephyr/arch/arm/misc.h", directory: "/home/sri/zephyrproject/zephyr")
!491 = !DILocation(line: 26, column: 9, scope: !489)
!492 = !DILocation(line: 26, column: 2, scope: !489)
