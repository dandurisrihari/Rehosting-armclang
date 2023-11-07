; ModuleID = '../bc_files/main_weak.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/main_weak.c"
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

@__ARM_use_no_argv = global i32 1, section ".ARM.use_no_argv", align 4
@llvm.used = appending global [1 x ptr] [ptr @__ARM_use_no_argv], section "llvm.metadata"

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
define weak hidden i32 @main() #0 !dbg !404 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void asm sideeffect "nop", ""() #3, !dbg !408, !srcloc !414
  ret i32 0, !dbg !415
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
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "main_weak.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!404 = distinct !DISubprogram(name: "main", scope: !405, file: !405, line: 24, type: !406, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !216)
!405 = !DIFile(filename: "kernel/main_weak.c", directory: "/home/sri/zephyrproject/zephyr")
!406 = !DISubroutineType(types: !407)
!407 = !{!88}
!408 = !DILocation(line: 38, column: 2, scope: !409, inlinedAt: !413)
!409 = distinct !DISubprogram(name: "arch_nop", scope: !410, file: !410, line: 36, type: !411, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!410 = !DIFile(filename: "include/zephyr/arch/arm/misc.h", directory: "/home/sri/zephyrproject/zephyr")
!411 = !DISubroutineType(types: !412)
!412 = !{null}
!413 = distinct !DILocation(line: 27, column: 2, scope: !404)
!414 = !{i64 65547}
!415 = !DILocation(line: 29, column: 2, scope: !404)
!416 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !338, file: !338, line: 335, type: !417, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !420}
!419 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 32)
!421 = !DILocalVariable(name: "list", arg: 1, scope: !416, file: !338, line: 335, type: !420)
!422 = !DILocation(line: 335, column: 55, scope: !416)
!423 = !DILocation(line: 335, column: 92, scope: !416)
!424 = !DILocation(line: 335, column: 71, scope: !416)
!425 = !DILocation(line: 335, column: 98, scope: !416)
!426 = !DILocation(line: 335, column: 63, scope: !416)
!427 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !338, file: !338, line: 255, type: !428, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !216)
!428 = !DISubroutineType(types: !429)
!429 = !{!342, !420}
!430 = !DILocalVariable(name: "list", arg: 1, scope: !427, file: !338, line: 255, type: !420)
!431 = !DILocation(line: 255, column: 64, scope: !427)
!432 = !DILocation(line: 257, column: 9, scope: !427)
!433 = !DILocation(line: 257, column: 15, scope: !427)
!434 = !DILocation(line: 257, column: 2, scope: !427)
