; ModuleID = '../bc_files/banner.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/banner.c"
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

@.str = private unnamed_addr constant [62 x i8] c"*** Booting Zephyr OS build v3.5.0-rc1-165-g147cef6660f2 ***\0A\00", align 1, !dbg !0

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !106 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !230, metadata !DIExpression()), !dbg !231
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !232, metadata !DIExpression()), !dbg !233
  %5 = load ptr, ptr %3, align 4, !dbg !234
  %6 = load ptr, ptr %4, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !237 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load ptr, ptr %2, align 4, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !244 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !247, metadata !DIExpression()), !dbg !248
  %3 = load i8, ptr %2, align 1, !dbg !249
  ret ptr null, !dbg !250
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !251 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !256, metadata !DIExpression()), !dbg !257
  %5 = load i8, ptr %3, align 1, !dbg !258
  %6 = load i32, ptr %4, align 4, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !261 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !271
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !272
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !273
  ret i64 %6, !dbg !274
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !275 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !276, metadata !DIExpression()), !dbg !277
  %3 = load ptr, ptr %2, align 4, !dbg !278
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !279
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !280
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !281
  ret i64 %6, !dbg !282
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !283 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load ptr, ptr %2, align 4, !dbg !307
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !308
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !309
  ret i64 %5, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !311 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 4, !dbg !314
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !315
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !316
  ret i64 %5, !dbg !317
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !318 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !321, metadata !DIExpression()), !dbg !322
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !323, metadata !DIExpression()), !dbg !324
  %5 = load ptr, ptr %4, align 4, !dbg !325
  %6 = load ptr, ptr %3, align 4, !dbg !326
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !327
  store ptr %5, ptr %7, align 4, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !330 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !333, metadata !DIExpression()), !dbg !334
  %3 = load ptr, ptr %2, align 4, !dbg !335
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !336
  %5 = load ptr, ptr %4, align 4, !dbg !336
  ret ptr %5, !dbg !337
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !359, metadata !DIExpression()), !dbg !360
  %3 = load ptr, ptr %2, align 4, !dbg !361
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !362
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !363
  %6 = zext i1 %5 to i32, !dbg !364
  ret i32 %6, !dbg !365
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !366 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !375, metadata !DIExpression()), !dbg !376
  %3 = load ptr, ptr %2, align 4, !dbg !377
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !378
  %5 = load i32, ptr %4, align 4, !dbg !378
  ret i32 %5, !dbg !379
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !380 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !398
  %3 = load ptr, ptr %2, align 4, !dbg !399
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !400
  %5 = load i32, ptr %4, align 4, !dbg !400
  %6 = load ptr, ptr %2, align 4, !dbg !401
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !402
  %8 = load i32, ptr %7, align 4, !dbg !402
  %9 = sub i32 %5, %8, !dbg !403
  ret i32 %9, !dbg !404
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !405 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !409
  %5 = load i32, ptr %4, align 4, !dbg !409
  ret i32 %5, !dbg !410
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = load ptr, ptr %2, align 4, !dbg !434
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !435
  ret i1 %4, !dbg !436
}

; Function Attrs: noinline nounwind optnone
define hidden void @boot_banner() #0 !dbg !437 {
  call void (ptr, ...) @printk(ptr noundef @.str), !dbg !440
  ret void, !dbg !441
}

declare void @printk(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i64 @z_timeout_expires(ptr noundef) #1

declare i64 @z_timeout_remaining(ptr noundef) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !442 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = load ptr, ptr %2, align 4, !dbg !448
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !449
  %5 = icmp eq ptr %4, null, !dbg !450
  ret i1 %5, !dbg !451
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !455, metadata !DIExpression()), !dbg !456
  %3 = load ptr, ptr %2, align 4, !dbg !457
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !458
  %5 = load ptr, ptr %4, align 4, !dbg !458
  ret ptr %5, !dbg !459
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #1

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/banner.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 62)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !93, globals: !96, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "banner.c", directory: "/home/sri/zephyrproject/zephyr/build")
!9 = !{!10}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !11, line: 29, baseType: !12, size: 8, elements: !13)
!11 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!14 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!15 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!16 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!17 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!18 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!19 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!20 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!21 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!22 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!23 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!24 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!25 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!26 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!27 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!28 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!29 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!30 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!92 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!93 = !{!94, !95}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !{!0}
!97 = !{i32 7, !"Dwarf Version", i32 4}
!98 = !{i32 2, !"Debug Info Version", i32 3}
!99 = !{i32 1, !"wchar_size", i32 4}
!100 = !{i32 1, !"static_rwdata", i32 1}
!101 = !{i32 1, !"enumsize_buildattr", i32 1}
!102 = !{i32 1, !"armlib_unavailable", i32 0}
!103 = !{i32 8, !"PIC Level", i32 2}
!104 = !{i32 7, !"PIE Level", i32 2}
!105 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!106 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !11, file: !11, line: 223, type: !107, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !109, !111}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !113, line: 250, size: 896, elements: !114)
!113 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!114 = !{!115, !188, !201, !202, !203, !204, !225}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !112, file: !113, line: 252, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !113, line: 58, size: 384, elements: !117)
!117 = !{!118, !146, !154, !157, !158, !171, !174, !175}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !113, line: 61, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !113, line: 61, size: 64, elements: !120)
!120 = !{!121, !137}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !119, file: !113, line: 62, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !123, line: 55, baseType: !124)
!123 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !123, line: 37, size: 64, elements: !125)
!125 = !{!126, !132}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 38, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 38, size: 32, elements: !128)
!128 = !{!129, !131}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !127, file: !123, line: 39, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !123, line: 40, baseType: !130, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !123, line: 42, baseType: !133, size: 32, offset: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !123, line: 42, size: 32, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !133, file: !123, line: 43, baseType: !130, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !123, line: 44, baseType: !130, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !119, file: !113, line: 63, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !139, line: 58, size: 64, elements: !140)
!139 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !138, file: !139, line: 60, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 64, elements: !144)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !116, file: !113, line: 69, baseType: !147, size: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !149, line: 243, baseType: !150)
!149 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 241, size: 64, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !150, file: !149, line: 242, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !123, line: 51, baseType: !124)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !116, file: !113, line: 72, baseType: !155, size: 8, offset: 96)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !156, line: 62, baseType: !12)
!156 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !116, file: !113, line: 75, baseType: !155, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !113, line: 91, baseType: !159, size: 16, offset: 112)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !116, file: !113, line: 91, size: 16, elements: !160)
!160 = !{!161, !168}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !113, line: 92, baseType: !162, size: 16)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !113, line: 92, size: 16, elements: !163)
!163 = !{!164, !167}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !162, file: !113, line: 97, baseType: !165, size: 8)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !156, line: 56, baseType: !166)
!166 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !162, file: !113, line: 98, baseType: !155, size: 8, offset: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !159, file: !113, line: 101, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !156, line: 63, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !116, file: !113, line: 108, baseType: !172, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 64, baseType: !173)
!173 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !116, file: !113, line: 132, baseType: !94, size: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !116, file: !113, line: 136, baseType: !176, size: 192, offset: 192)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !149, line: 254, size: 192, elements: !177)
!177 = !{!178, !179, !185}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !176, file: !149, line: 255, baseType: !122, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !176, file: !149, line: 256, baseType: !180, size: 32, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !149, line: 252, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 32)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !176, file: !149, line: 259, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !156, line: 59, baseType: !187)
!187 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !112, file: !113, line: 255, baseType: !189, size: 288, offset: 384)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !190, line: 25, size: 288, elements: !191)
!190 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !189, file: !190, line: 26, baseType: !172, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !189, file: !190, line: 27, baseType: !172, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !189, file: !190, line: 28, baseType: !172, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !189, file: !190, line: 29, baseType: !172, size: 32, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !189, file: !190, line: 30, baseType: !172, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !189, file: !190, line: 31, baseType: !172, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !189, file: !190, line: 32, baseType: !172, size: 32, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !189, file: !190, line: 33, baseType: !172, size: 32, offset: 224)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !189, file: !190, line: 34, baseType: !172, size: 32, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !112, file: !113, line: 258, baseType: !94, size: 32, offset: 672)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !112, file: !113, line: 261, baseType: !148, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !112, file: !113, line: 302, baseType: !95, size: 32, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !112, file: !113, line: 333, baseType: !205, size: 32, offset: 800)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !207, line: 5291, size: 160, elements: !208)
!207 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!208 = !{!209, !220, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !206, file: !207, line: 5292, baseType: !210, size: 96)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !211, line: 56, size: 96, elements: !212)
!211 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!212 = !{!213, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !210, file: !211, line: 57, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !211, line: 57, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !210, file: !211, line: 58, baseType: !94, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !210, file: !211, line: 59, baseType: !218, size: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 46, baseType: !173)
!219 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !206, file: !207, line: 5293, baseType: !148, size: 64, offset: 96)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !206, file: !207, line: 5294, baseType: !222, offset: 160)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !223, line: 45, elements: !224)
!223 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!224 = !{}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !112, file: !113, line: 355, baseType: !226, size: 64, offset: 832)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !190, line: 60, size: 64, elements: !227)
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !226, file: !190, line: 63, baseType: !172, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !226, file: !190, line: 66, baseType: !172, size: 32, offset: 32)
!230 = !DILocalVariable(name: "object", arg: 1, scope: !106, file: !11, line: 223, type: !109)
!231 = !DILocation(line: 223, column: 61, scope: !106)
!232 = !DILocalVariable(name: "thread", arg: 2, scope: !106, file: !11, line: 224, type: !111)
!233 = !DILocation(line: 224, column: 24, scope: !106)
!234 = !DILocation(line: 226, column: 9, scope: !106)
!235 = !DILocation(line: 227, column: 9, scope: !106)
!236 = !DILocation(line: 228, column: 1, scope: !106)
!237 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !11, file: !11, line: 243, type: !238, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !109}
!240 = !DILocalVariable(name: "object", arg: 1, scope: !237, file: !11, line: 243, type: !109)
!241 = !DILocation(line: 243, column: 56, scope: !237)
!242 = !DILocation(line: 245, column: 9, scope: !237)
!243 = !DILocation(line: 246, column: 1, scope: !237)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !11, file: !11, line: 359, type: !245, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!245 = !DISubroutineType(types: !246)
!246 = !{!94, !10}
!247 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !11, line: 359, type: !10)
!248 = !DILocation(line: 359, column: 58, scope: !244)
!249 = !DILocation(line: 361, column: 9, scope: !244)
!250 = !DILocation(line: 363, column: 2, scope: !244)
!251 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !11, file: !11, line: 366, type: !252, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!252 = !DISubroutineType(types: !253)
!253 = !{!94, !10, !218}
!254 = !DILocalVariable(name: "otype", arg: 1, scope: !251, file: !11, line: 366, type: !10)
!255 = !DILocation(line: 366, column: 63, scope: !251)
!256 = !DILocalVariable(name: "size", arg: 2, scope: !251, file: !11, line: 367, type: !218)
!257 = !DILocation(line: 367, column: 13, scope: !251)
!258 = !DILocation(line: 369, column: 9, scope: !251)
!259 = !DILocation(line: 370, column: 9, scope: !251)
!260 = !DILocation(line: 372, column: 2, scope: !251)
!261 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !207, file: !207, line: 656, type: !262, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !265, line: 46, baseType: !186)
!265 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!268 = !DILocalVariable(name: "t", arg: 1, scope: !261, file: !207, line: 657, type: !266)
!269 = !DILocation(line: 657, column: 30, scope: !261)
!270 = !DILocation(line: 659, column: 28, scope: !261)
!271 = !DILocation(line: 659, column: 31, scope: !261)
!272 = !DILocation(line: 659, column: 36, scope: !261)
!273 = !DILocation(line: 659, column: 9, scope: !261)
!274 = !DILocation(line: 659, column: 2, scope: !261)
!275 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !207, file: !207, line: 671, type: !262, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!276 = !DILocalVariable(name: "t", arg: 1, scope: !275, file: !207, line: 672, type: !266)
!277 = !DILocation(line: 672, column: 30, scope: !275)
!278 = !DILocation(line: 674, column: 30, scope: !275)
!279 = !DILocation(line: 674, column: 33, scope: !275)
!280 = !DILocation(line: 674, column: 38, scope: !275)
!281 = !DILocation(line: 674, column: 9, scope: !275)
!282 = !DILocation(line: 674, column: 2, scope: !275)
!283 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !207, file: !207, line: 1634, type: !284, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!284 = !DISubroutineType(types: !285)
!285 = !{!264, !286}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !207, line: 1439, size: 448, elements: !289)
!289 = !{!290, !291, !292, !297, !298, !303, !304}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !288, file: !207, line: 1445, baseType: !176, size: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !288, file: !207, line: 1448, baseType: !148, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !288, file: !207, line: 1451, baseType: !293, size: 32, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 32)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !288, file: !207, line: 1454, baseType: !293, size: 32, offset: 288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !288, file: !207, line: 1457, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !265, line: 67, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !265, line: 65, size: 64, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !300, file: !265, line: 66, baseType: !264, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !288, file: !207, line: 1460, baseType: !172, size: 32, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !288, file: !207, line: 1463, baseType: !94, size: 32, offset: 416)
!305 = !DILocalVariable(name: "timer", arg: 1, scope: !283, file: !207, line: 1635, type: !286)
!306 = !DILocation(line: 1635, column: 34, scope: !283)
!307 = !DILocation(line: 1637, column: 28, scope: !283)
!308 = !DILocation(line: 1637, column: 35, scope: !283)
!309 = !DILocation(line: 1637, column: 9, scope: !283)
!310 = !DILocation(line: 1637, column: 2, scope: !283)
!311 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !207, file: !207, line: 1649, type: !284, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!312 = !DILocalVariable(name: "timer", arg: 1, scope: !311, file: !207, line: 1650, type: !286)
!313 = !DILocation(line: 1650, column: 34, scope: !311)
!314 = !DILocation(line: 1652, column: 30, scope: !311)
!315 = !DILocation(line: 1652, column: 37, scope: !311)
!316 = !DILocation(line: 1652, column: 9, scope: !311)
!317 = !DILocation(line: 1652, column: 2, scope: !311)
!318 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !207, file: !207, line: 1689, type: !319, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !296, !94}
!321 = !DILocalVariable(name: "timer", arg: 1, scope: !318, file: !207, line: 1689, type: !296)
!322 = !DILocation(line: 1689, column: 65, scope: !318)
!323 = !DILocalVariable(name: "user_data", arg: 2, scope: !318, file: !207, line: 1690, type: !94)
!324 = !DILocation(line: 1690, column: 19, scope: !318)
!325 = !DILocation(line: 1692, column: 21, scope: !318)
!326 = !DILocation(line: 1692, column: 2, scope: !318)
!327 = !DILocation(line: 1692, column: 9, scope: !318)
!328 = !DILocation(line: 1692, column: 19, scope: !318)
!329 = !DILocation(line: 1693, column: 1, scope: !318)
!330 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !207, file: !207, line: 1704, type: !331, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!331 = !DISubroutineType(types: !332)
!332 = !{!94, !286}
!333 = !DILocalVariable(name: "timer", arg: 1, scope: !330, file: !207, line: 1704, type: !286)
!334 = !DILocation(line: 1704, column: 72, scope: !330)
!335 = !DILocation(line: 1706, column: 9, scope: !330)
!336 = !DILocation(line: 1706, column: 16, scope: !330)
!337 = !DILocation(line: 1706, column: 2, scope: !330)
!338 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !207, file: !207, line: 2071, type: !339, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!339 = !DISubroutineType(types: !340)
!340 = !{!95, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !207, line: 1830, size: 128, elements: !343)
!343 = !{!344, !357, !358}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !342, file: !207, line: 1831, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !346, line: 60, baseType: !347)
!346 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !346, line: 53, size: 64, elements: !348)
!348 = !{!349, !356}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !347, file: !346, line: 54, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !346, line: 50, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !346, line: 44, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !352, file: !346, line: 45, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !346, line: 40, baseType: !172)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !347, file: !346, line: 55, baseType: !350, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !342, file: !207, line: 1832, baseType: !222, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !342, file: !207, line: 1833, baseType: !148, size: 64, offset: 64)
!359 = !DILocalVariable(name: "queue", arg: 1, scope: !338, file: !207, line: 2071, type: !341)
!360 = !DILocation(line: 2071, column: 59, scope: !338)
!361 = !DILocation(line: 2073, column: 35, scope: !338)
!362 = !DILocation(line: 2073, column: 42, scope: !338)
!363 = !DILocation(line: 2073, column: 14, scope: !338)
!364 = !DILocation(line: 2073, column: 9, scope: !338)
!365 = !DILocation(line: 2073, column: 2, scope: !338)
!366 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !207, file: !207, line: 3209, type: !367, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!367 = !DISubroutineType(types: !368)
!368 = !{!173, !369}
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !207, line: 3092, size: 128, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !370, file: !207, line: 3093, baseType: !148, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !370, file: !207, line: 3094, baseType: !173, size: 32, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !370, file: !207, line: 3095, baseType: !173, size: 32, offset: 96)
!375 = !DILocalVariable(name: "sem", arg: 1, scope: !366, file: !207, line: 3209, type: !369)
!376 = !DILocation(line: 3209, column: 65, scope: !366)
!377 = !DILocation(line: 3211, column: 9, scope: !366)
!378 = !DILocation(line: 3211, column: 14, scope: !366)
!379 = !DILocation(line: 3211, column: 2, scope: !366)
!380 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !207, file: !207, line: 4649, type: !381, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!381 = !DISubroutineType(types: !382)
!382 = !{!172, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !207, line: 4390, size: 320, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !392, !393, !394, !395, !396}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !384, file: !207, line: 4392, baseType: !148, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !384, file: !207, line: 4394, baseType: !222, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !384, file: !207, line: 4396, baseType: !218, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !384, file: !207, line: 4398, baseType: !172, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !384, file: !207, line: 4400, baseType: !391, size: 32, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !384, file: !207, line: 4402, baseType: !391, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !384, file: !207, line: 4404, baseType: !391, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !384, file: !207, line: 4406, baseType: !391, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !384, file: !207, line: 4408, baseType: !172, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !207, line: 4413, baseType: !155, size: 8, offset: 288)
!397 = !DILocalVariable(name: "msgq", arg: 1, scope: !380, file: !207, line: 4649, type: !383)
!398 = !DILocation(line: 4649, column: 66, scope: !380)
!399 = !DILocation(line: 4651, column: 9, scope: !380)
!400 = !DILocation(line: 4651, column: 15, scope: !380)
!401 = !DILocation(line: 4651, column: 26, scope: !380)
!402 = !DILocation(line: 4651, column: 32, scope: !380)
!403 = !DILocation(line: 4651, column: 24, scope: !380)
!404 = !DILocation(line: 4651, column: 2, scope: !380)
!405 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !207, file: !207, line: 4665, type: !381, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !405, file: !207, line: 4665, type: !383)
!407 = !DILocation(line: 4665, column: 66, scope: !405)
!408 = !DILocation(line: 4667, column: 9, scope: !405)
!409 = !DILocation(line: 4667, column: 15, scope: !405)
!410 = !DILocation(line: 4667, column: 2, scope: !405)
!411 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !412, file: !412, line: 744, type: !413, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!412 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !416}
!415 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !412, line: 381, size: 160, elements: !419)
!419 = !{!420, !423, !424, !425, !431}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !412, line: 383, baseType: !421, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !418, file: !412, line: 385, baseType: !109, size: 32, offset: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !418, file: !412, line: 387, baseType: !109, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !418, file: !412, line: 389, baseType: !426, size: 32, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 32)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !412, line: 354, size: 16, elements: !428)
!428 = !{!429, !430}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !427, file: !412, line: 362, baseType: !155, size: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !427, file: !412, line: 367, baseType: !415, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !418, file: !412, line: 391, baseType: !94, size: 32, offset: 128)
!432 = !DILocalVariable(name: "dev", arg: 1, scope: !411, file: !412, line: 744, type: !416)
!433 = !DILocation(line: 744, column: 65, scope: !411)
!434 = !DILocation(line: 746, column: 27, scope: !411)
!435 = !DILocation(line: 746, column: 9, scope: !411)
!436 = !DILocation(line: 746, column: 2, scope: !411)
!437 = distinct !DISubprogram(name: "boot_banner", scope: !2, file: !2, line: 27, type: !438, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !224)
!438 = !DISubroutineType(types: !439)
!439 = !{null}
!440 = !DILocation(line: 35, column: 2, scope: !437)
!441 = !DILocation(line: 37, column: 1, scope: !437)
!442 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !346, file: !346, line: 335, type: !443, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!443 = !DISubroutineType(types: !444)
!444 = !{!415, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!446 = !DILocalVariable(name: "list", arg: 1, scope: !442, file: !346, line: 335, type: !445)
!447 = !DILocation(line: 335, column: 55, scope: !442)
!448 = !DILocation(line: 335, column: 92, scope: !442)
!449 = !DILocation(line: 335, column: 71, scope: !442)
!450 = !DILocation(line: 335, column: 98, scope: !442)
!451 = !DILocation(line: 335, column: 63, scope: !442)
!452 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !346, file: !346, line: 255, type: !453, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !224)
!453 = !DISubroutineType(types: !454)
!454 = !{!350, !445}
!455 = !DILocalVariable(name: "list", arg: 1, scope: !452, file: !346, line: 255, type: !445)
!456 = !DILocation(line: 255, column: 64, scope: !452)
!457 = !DILocation(line: 257, column: 9, scope: !452)
!458 = !DILocation(line: 257, column: 15, scope: !452)
!459 = !DILocation(line: 257, column: 2, scope: !452)
