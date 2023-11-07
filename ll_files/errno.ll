; ModuleID = '../bc_files/errno.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/errno.c"
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

@_k_neg_eagain = hidden constant i32 -11, align 4, !dbg !0
@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !103 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !228
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !229, metadata !DIExpression()), !dbg !230
  %5 = load ptr, ptr %3, align 4, !dbg !231
  %6 = load ptr, ptr %4, align 4, !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !234 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 4, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !241 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !244, metadata !DIExpression()), !dbg !245
  %3 = load i8, ptr %2, align 1, !dbg !246
  ret ptr null, !dbg !247
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !248 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !251, metadata !DIExpression()), !dbg !252
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !253, metadata !DIExpression()), !dbg !254
  %5 = load i8, ptr %3, align 1, !dbg !255
  %6 = load i32, ptr %4, align 4, !dbg !256
  ret ptr null, !dbg !257
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !258 {
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
define hidden ptr @z_impl_z_errno() #0 !dbg !409 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !413
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 4, !dbg !414
  ret ptr %2, !dbg !415
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !416 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !421, metadata !DIExpression()), !dbg !422
  %3 = load ptr, ptr %2, align 4, !dbg !423
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !424
  %5 = icmp eq ptr %4, null, !dbg !425
  ret i1 %5, !dbg !426
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !427 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !430, metadata !DIExpression()), !dbg !431
  %3 = load ptr, ptr %2, align 4, !dbg !432
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !433
  %5 = load ptr, ptr %4, align 4, !dbg !433
  ret ptr %5, !dbg !434
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_k_neg_eagain", scope: !2, file: !92, line: 23, type: !93, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "errno.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !{!0}
!92 = !DIFile(filename: "kernel/errno.c", directory: "/home/sri/zephyrproject/zephyr")
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!94 = !{i32 7, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 1, !"static_rwdata", i32 1}
!98 = !{i32 1, !"enumsize_buildattr", i32 1}
!99 = !{i32 1, !"armlib_unavailable", i32 0}
!100 = !{i32 8, !"PIC Level", i32 2}
!101 = !{i32 7, !"PIE Level", i32 2}
!102 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!103 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !104, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !110, line: 250, size: 896, elements: !111)
!110 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!111 = !{!112, !185, !198, !199, !200, !201, !222}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !109, file: !110, line: 252, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !110, line: 58, size: 384, elements: !114)
!114 = !{!115, !143, !151, !154, !155, !168, !171, !172}
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
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !153, line: 62, baseType: !7)
!153 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !113, file: !110, line: 75, baseType: !152, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 91, baseType: !156, size: 16, offset: 112)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 91, size: 16, elements: !157)
!157 = !{!158, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !110, line: 92, baseType: !159, size: 16)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !110, line: 92, size: 16, elements: !160)
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !159, file: !110, line: 97, baseType: !162, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !153, line: 56, baseType: !163)
!163 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !159, file: !110, line: 98, baseType: !152, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !156, file: !110, line: 101, baseType: !166, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !153, line: 63, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !113, file: !110, line: 108, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 64, baseType: !170)
!170 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !113, file: !110, line: 132, baseType: !89, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !113, file: !110, line: 136, baseType: !173, size: 192, offset: 192)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !146, line: 254, size: 192, elements: !174)
!174 = !{!175, !176, !182}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !146, line: 255, baseType: !119, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !173, file: !146, line: 256, baseType: !177, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !146, line: 252, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !173, file: !146, line: 259, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !153, line: 59, baseType: !184)
!184 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !109, file: !110, line: 255, baseType: !186, size: 288, offset: 384)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !187, line: 25, size: 288, elements: !188)
!187 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !186, file: !187, line: 26, baseType: !169, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !186, file: !187, line: 27, baseType: !169, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !186, file: !187, line: 28, baseType: !169, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !186, file: !187, line: 29, baseType: !169, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !186, file: !187, line: 30, baseType: !169, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !186, file: !187, line: 31, baseType: !169, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !186, file: !187, line: 32, baseType: !169, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !186, file: !187, line: 33, baseType: !169, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !186, file: !187, line: 34, baseType: !169, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !109, file: !110, line: 258, baseType: !89, size: 32, offset: 672)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !109, file: !110, line: 261, baseType: !145, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !109, file: !110, line: 302, baseType: !90, size: 32, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !109, file: !110, line: 333, baseType: !202, size: 32, offset: 800)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !204, line: 5291, size: 160, elements: !205)
!204 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = !{!206, !217, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !203, file: !204, line: 5292, baseType: !207, size: 96)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !208, line: 56, size: 96, elements: !209)
!208 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !207, file: !208, line: 57, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !208, line: 57, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !207, file: !208, line: 58, baseType: !89, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !207, file: !208, line: 59, baseType: !215, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !170)
!216 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !203, file: !204, line: 5293, baseType: !145, size: 64, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !203, file: !204, line: 5294, baseType: !219, offset: 160)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !220, line: 45, elements: !221)
!220 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!221 = !{}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !110, line: 355, baseType: !223, size: 64, offset: 832)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !187, line: 60, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !223, file: !187, line: 63, baseType: !169, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !223, file: !187, line: 66, baseType: !169, size: 32, offset: 32)
!227 = !DILocalVariable(name: "object", arg: 1, scope: !103, file: !6, line: 223, type: !106)
!228 = !DILocation(line: 223, column: 61, scope: !103)
!229 = !DILocalVariable(name: "thread", arg: 2, scope: !103, file: !6, line: 224, type: !108)
!230 = !DILocation(line: 224, column: 24, scope: !103)
!231 = !DILocation(line: 226, column: 9, scope: !103)
!232 = !DILocation(line: 227, column: 9, scope: !103)
!233 = !DILocation(line: 228, column: 1, scope: !103)
!234 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !235, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !106}
!237 = !DILocalVariable(name: "object", arg: 1, scope: !234, file: !6, line: 243, type: !106)
!238 = !DILocation(line: 243, column: 56, scope: !234)
!239 = !DILocation(line: 245, column: 9, scope: !234)
!240 = !DILocation(line: 246, column: 1, scope: !234)
!241 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !242, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!242 = !DISubroutineType(types: !243)
!243 = !{!89, !5}
!244 = !DILocalVariable(name: "otype", arg: 1, scope: !241, file: !6, line: 359, type: !5)
!245 = !DILocation(line: 359, column: 58, scope: !241)
!246 = !DILocation(line: 361, column: 9, scope: !241)
!247 = !DILocation(line: 363, column: 2, scope: !241)
!248 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !249, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!249 = !DISubroutineType(types: !250)
!250 = !{!89, !5, !215}
!251 = !DILocalVariable(name: "otype", arg: 1, scope: !248, file: !6, line: 366, type: !5)
!252 = !DILocation(line: 366, column: 63, scope: !248)
!253 = !DILocalVariable(name: "size", arg: 2, scope: !248, file: !6, line: 367, type: !215)
!254 = !DILocation(line: 367, column: 13, scope: !248)
!255 = !DILocation(line: 369, column: 9, scope: !248)
!256 = !DILocation(line: 370, column: 9, scope: !248)
!257 = !DILocation(line: 372, column: 2, scope: !248)
!258 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !204, file: !204, line: 656, type: !259, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !263}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !262, line: 46, baseType: !183)
!262 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!265 = !DILocalVariable(name: "t", arg: 1, scope: !258, file: !204, line: 657, type: !263)
!266 = !DILocation(line: 657, column: 30, scope: !258)
!267 = !DILocation(line: 659, column: 28, scope: !258)
!268 = !DILocation(line: 659, column: 31, scope: !258)
!269 = !DILocation(line: 659, column: 36, scope: !258)
!270 = !DILocation(line: 659, column: 9, scope: !258)
!271 = !DILocation(line: 659, column: 2, scope: !258)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !204, file: !204, line: 671, type: !259, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!273 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !204, line: 672, type: !263)
!274 = !DILocation(line: 672, column: 30, scope: !272)
!275 = !DILocation(line: 674, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 33, scope: !272)
!277 = !DILocation(line: 674, column: 38, scope: !272)
!278 = !DILocation(line: 674, column: 9, scope: !272)
!279 = !DILocation(line: 674, column: 2, scope: !272)
!280 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !204, file: !204, line: 1634, type: !281, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!281 = !DISubroutineType(types: !282)
!282 = !{!261, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !204, line: 1439, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295, !300, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !204, line: 1445, baseType: !173, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !285, file: !204, line: 1448, baseType: !145, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !285, file: !204, line: 1451, baseType: !290, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !285, file: !204, line: 1454, baseType: !290, size: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !285, file: !204, line: 1457, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !262, line: 67, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 65, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !297, file: !262, line: 66, baseType: !261, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !204, line: 1460, baseType: !169, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !285, file: !204, line: 1463, baseType: !89, size: 32, offset: 416)
!302 = !DILocalVariable(name: "timer", arg: 1, scope: !280, file: !204, line: 1635, type: !283)
!303 = !DILocation(line: 1635, column: 34, scope: !280)
!304 = !DILocation(line: 1637, column: 28, scope: !280)
!305 = !DILocation(line: 1637, column: 35, scope: !280)
!306 = !DILocation(line: 1637, column: 9, scope: !280)
!307 = !DILocation(line: 1637, column: 2, scope: !280)
!308 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !204, file: !204, line: 1649, type: !281, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!309 = !DILocalVariable(name: "timer", arg: 1, scope: !308, file: !204, line: 1650, type: !283)
!310 = !DILocation(line: 1650, column: 34, scope: !308)
!311 = !DILocation(line: 1652, column: 30, scope: !308)
!312 = !DILocation(line: 1652, column: 37, scope: !308)
!313 = !DILocation(line: 1652, column: 9, scope: !308)
!314 = !DILocation(line: 1652, column: 2, scope: !308)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !204, file: !204, line: 1689, type: !316, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !293, !89}
!318 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !204, line: 1689, type: !293)
!319 = !DILocation(line: 1689, column: 65, scope: !315)
!320 = !DILocalVariable(name: "user_data", arg: 2, scope: !315, file: !204, line: 1690, type: !89)
!321 = !DILocation(line: 1690, column: 19, scope: !315)
!322 = !DILocation(line: 1692, column: 21, scope: !315)
!323 = !DILocation(line: 1692, column: 2, scope: !315)
!324 = !DILocation(line: 1692, column: 9, scope: !315)
!325 = !DILocation(line: 1692, column: 19, scope: !315)
!326 = !DILocation(line: 1693, column: 1, scope: !315)
!327 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !204, file: !204, line: 1704, type: !328, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!328 = !DISubroutineType(types: !329)
!329 = !{!89, !283}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !327, file: !204, line: 1704, type: !283)
!331 = !DILocation(line: 1704, column: 72, scope: !327)
!332 = !DILocation(line: 1706, column: 9, scope: !327)
!333 = !DILocation(line: 1706, column: 16, scope: !327)
!334 = !DILocation(line: 1706, column: 2, scope: !327)
!335 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !204, file: !204, line: 2071, type: !336, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!336 = !DISubroutineType(types: !337)
!337 = !{!90, !338}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !204, line: 1830, size: 128, elements: !340)
!340 = !{!341, !354, !355}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !339, file: !204, line: 1831, baseType: !342, size: 64)
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
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !343, line: 40, baseType: !169)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !344, file: !343, line: 55, baseType: !347, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !204, line: 1832, baseType: !219, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !339, file: !204, line: 1833, baseType: !145, size: 64, offset: 64)
!356 = !DILocalVariable(name: "queue", arg: 1, scope: !335, file: !204, line: 2071, type: !338)
!357 = !DILocation(line: 2071, column: 59, scope: !335)
!358 = !DILocation(line: 2073, column: 35, scope: !335)
!359 = !DILocation(line: 2073, column: 42, scope: !335)
!360 = !DILocation(line: 2073, column: 14, scope: !335)
!361 = !DILocation(line: 2073, column: 9, scope: !335)
!362 = !DILocation(line: 2073, column: 2, scope: !335)
!363 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !204, file: !204, line: 3209, type: !364, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!364 = !DISubroutineType(types: !365)
!365 = !{!170, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !204, line: 3092, size: 128, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !367, file: !204, line: 3093, baseType: !145, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !204, line: 3094, baseType: !170, size: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !367, file: !204, line: 3095, baseType: !170, size: 32, offset: 96)
!372 = !DILocalVariable(name: "sem", arg: 1, scope: !363, file: !204, line: 3209, type: !366)
!373 = !DILocation(line: 3209, column: 65, scope: !363)
!374 = !DILocation(line: 3211, column: 9, scope: !363)
!375 = !DILocation(line: 3211, column: 14, scope: !363)
!376 = !DILocation(line: 3211, column: 2, scope: !363)
!377 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !204, file: !204, line: 4649, type: !378, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!378 = !DISubroutineType(types: !379)
!379 = !{!169, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 32)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !204, line: 4390, size: 320, elements: !382)
!382 = !{!383, !384, !385, !386, !387, !390, !391, !392, !393, !394}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !381, file: !204, line: 4392, baseType: !145, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !381, file: !204, line: 4394, baseType: !219, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !381, file: !204, line: 4396, baseType: !215, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !381, file: !204, line: 4398, baseType: !169, size: 32, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !381, file: !204, line: 4400, baseType: !388, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !381, file: !204, line: 4402, baseType: !388, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !381, file: !204, line: 4404, baseType: !388, size: 32, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !381, file: !204, line: 4406, baseType: !388, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !381, file: !204, line: 4408, baseType: !169, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !381, file: !204, line: 4413, baseType: !152, size: 8, offset: 288)
!395 = !DILocalVariable(name: "msgq", arg: 1, scope: !377, file: !204, line: 4649, type: !380)
!396 = !DILocation(line: 4649, column: 66, scope: !377)
!397 = !DILocation(line: 4651, column: 9, scope: !377)
!398 = !DILocation(line: 4651, column: 15, scope: !377)
!399 = !DILocation(line: 4651, column: 26, scope: !377)
!400 = !DILocation(line: 4651, column: 32, scope: !377)
!401 = !DILocation(line: 4651, column: 24, scope: !377)
!402 = !DILocation(line: 4651, column: 2, scope: !377)
!403 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !204, file: !204, line: 4665, type: !378, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!404 = !DILocalVariable(name: "msgq", arg: 1, scope: !403, file: !204, line: 4665, type: !380)
!405 = !DILocation(line: 4665, column: 66, scope: !403)
!406 = !DILocation(line: 4667, column: 9, scope: !403)
!407 = !DILocation(line: 4667, column: 15, scope: !403)
!408 = !DILocation(line: 4667, column: 2, scope: !403)
!409 = distinct !DISubprogram(name: "z_impl_z_errno", scope: !92, file: !92, line: 49, type: !410, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !221)
!410 = !DISubroutineType(types: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!413 = !DILocation(line: 51, column: 26, scope: !409)
!414 = !DILocation(line: 51, column: 35, scope: !409)
!415 = !DILocation(line: 51, column: 2, scope: !409)
!416 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !343, file: !343, line: 335, type: !417, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !420}
!419 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!421 = !DILocalVariable(name: "list", arg: 1, scope: !416, file: !343, line: 335, type: !420)
!422 = !DILocation(line: 335, column: 55, scope: !416)
!423 = !DILocation(line: 335, column: 92, scope: !416)
!424 = !DILocation(line: 335, column: 71, scope: !416)
!425 = !DILocation(line: 335, column: 98, scope: !416)
!426 = !DILocation(line: 335, column: 63, scope: !416)
!427 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !343, file: !343, line: 255, type: !428, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !221)
!428 = !DISubroutineType(types: !429)
!429 = !{!347, !420}
!430 = !DILocalVariable(name: "list", arg: 1, scope: !427, file: !343, line: 255, type: !420)
!431 = !DILocation(line: 255, column: 64, scope: !427)
!432 = !DILocation(line: 257, column: 9, scope: !427)
!433 = !DILocation(line: 257, column: 15, scope: !427)
!434 = !DILocation(line: 257, column: 2, scope: !427)
