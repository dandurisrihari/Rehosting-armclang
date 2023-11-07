; ModuleID = '../bc_files/xip.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/xip.c"
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

@__data_region_start = external global [0 x i8], align 1
@__data_region_load_start = external global [0 x i8], align 1
@__data_region_end = external global [0 x i8], align 1
@__ramfunc_start = external global [0 x i8], align 1
@__ramfunc_load_start = external global [0 x i8], align 1
@__ramfunc_size = external global [0 x i8], align 1

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !101 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !225, metadata !DIExpression()), !dbg !226
  %5 = load ptr, ptr %3, align 4, !dbg !227
  %6 = load ptr, ptr %4, align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !234
  %3 = load ptr, ptr %2, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !237 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load i8, ptr %2, align 1, !dbg !242
  ret ptr null, !dbg !243
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !244 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !247, metadata !DIExpression()), !dbg !248
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !250
  %5 = load i8, ptr %3, align 1, !dbg !251
  %6 = load i32, ptr %4, align 4, !dbg !252
  ret ptr null, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !254 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !261, metadata !DIExpression()), !dbg !262
  %3 = load ptr, ptr %2, align 4, !dbg !263
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !264
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !265
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !266
  ret i64 %6, !dbg !267
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !268 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !298, metadata !DIExpression()), !dbg !299
  %3 = load ptr, ptr %2, align 4, !dbg !300
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !301
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !302
  ret i64 %5, !dbg !303
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !304 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !305, metadata !DIExpression()), !dbg !306
  %3 = load ptr, ptr %2, align 4, !dbg !307
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !308
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !309
  ret i64 %5, !dbg !310
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !311 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !314, metadata !DIExpression()), !dbg !315
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !317
  %5 = load ptr, ptr %4, align 4, !dbg !318
  %6 = load ptr, ptr %3, align 4, !dbg !319
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !320
  store ptr %5, ptr %7, align 4, !dbg !321
  ret void, !dbg !322
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !323 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !326, metadata !DIExpression()), !dbg !327
  %3 = load ptr, ptr %2, align 4, !dbg !328
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !329
  %5 = load ptr, ptr %4, align 4, !dbg !329
  ret ptr %5, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !352, metadata !DIExpression()), !dbg !353
  %3 = load ptr, ptr %2, align 4, !dbg !354
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !355
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !356
  %6 = zext i1 %5 to i32, !dbg !357
  ret i32 %6, !dbg !358
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !359 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !369
  %3 = load ptr, ptr %2, align 4, !dbg !370
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !371
  %5 = load i32, ptr %4, align 4, !dbg !371
  ret i32 %5, !dbg !372
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !373 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !391, metadata !DIExpression()), !dbg !392
  %3 = load ptr, ptr %2, align 4, !dbg !393
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !394
  %5 = load i32, ptr %4, align 4, !dbg !394
  %6 = load ptr, ptr %2, align 4, !dbg !395
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !396
  %8 = load i32, ptr %7, align 4, !dbg !396
  %9 = sub i32 %5, %8, !dbg !397
  ret i32 %9, !dbg !398
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !399 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !400, metadata !DIExpression()), !dbg !401
  %3 = load ptr, ptr %2, align 4, !dbg !402
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !403
  %5 = load i32, ptr %4, align 4, !dbg !403
  ret i32 %5, !dbg !404
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_data_copy() #0 !dbg !405 {
  call void @z_early_memcpy(ptr noundef @__data_region_start, ptr noundef @__data_region_load_start, i32 noundef sub (i32 ptrtoint (ptr @__data_region_end to i32), i32 ptrtoint (ptr @__data_region_start to i32))), !dbg !409
  call void @z_early_memcpy(ptr noundef @__ramfunc_start, ptr noundef @__ramfunc_load_start, i32 noundef ptrtoint (ptr @__ramfunc_size to i32)), !dbg !410
  ret void, !dbg !411
}

declare void @z_early_memcpy(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i64 @z_timeout_expires(ptr noundef) #1

declare i64 @z_timeout_remaining(ptr noundef) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !412 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !417, metadata !DIExpression()), !dbg !418
  %3 = load ptr, ptr %2, align 4, !dbg !419
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !420
  %5 = icmp eq ptr %4, null, !dbg !421
  ret i1 %5, !dbg !422
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !427
  %3 = load ptr, ptr %2, align 4, !dbg !428
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !429
  %5 = load ptr, ptr %4, align 4, !dbg !429
  ret ptr %5, !dbg !430
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "xip.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !90, !91}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !88, line: 102, baseType: !89)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!91 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!92 = !{i32 7, !"Dwarf Version", i32 4}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 1, !"static_rwdata", i32 1}
!96 = !{i32 1, !"enumsize_buildattr", i32 1}
!97 = !{i32 1, !"armlib_unavailable", i32 0}
!98 = !{i32 8, !"PIC Level", i32 2}
!99 = !{i32 7, !"PIE Level", i32 2}
!100 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!101 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !102, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !106}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !108, line: 250, size: 896, elements: !109)
!108 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!109 = !{!110, !181, !194, !195, !196, !197, !218}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !107, file: !108, line: 252, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !108, line: 58, size: 384, elements: !112)
!112 = !{!113, !141, !149, !151, !152, !165, !167, !168}
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
!165 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !111, file: !108, line: 108, baseType: !166, size: 32, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 64, baseType: !89)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !111, file: !108, line: 132, baseType: !90, size: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !111, file: !108, line: 136, baseType: !169, size: 192, offset: 192)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !144, line: 254, size: 192, elements: !170)
!170 = !{!171, !172, !178}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !144, line: 255, baseType: !117, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !169, file: !144, line: 256, baseType: !173, size: 32, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !144, line: 252, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !169, file: !144, line: 259, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !180)
!180 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !107, file: !108, line: 255, baseType: !182, size: 288, offset: 384)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !183, line: 25, size: 288, elements: !184)
!183 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !182, file: !183, line: 26, baseType: !166, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !182, file: !183, line: 27, baseType: !166, size: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !182, file: !183, line: 28, baseType: !166, size: 32, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !182, file: !183, line: 29, baseType: !166, size: 32, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !182, file: !183, line: 30, baseType: !166, size: 32, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !182, file: !183, line: 31, baseType: !166, size: 32, offset: 160)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !182, file: !183, line: 32, baseType: !166, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !182, file: !183, line: 33, baseType: !166, size: 32, offset: 224)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !182, file: !183, line: 34, baseType: !166, size: 32, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !107, file: !108, line: 258, baseType: !90, size: 32, offset: 672)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !107, file: !108, line: 261, baseType: !143, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !107, file: !108, line: 302, baseType: !91, size: 32, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !107, file: !108, line: 333, baseType: !198, size: 32, offset: 800)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !200, line: 5291, size: 160, elements: !201)
!200 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!201 = !{!202, !213, !214}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !199, file: !200, line: 5292, baseType: !203, size: 96)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !204, line: 56, size: 96, elements: !205)
!204 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = !{!206, !209, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !203, file: !204, line: 57, baseType: !207, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 32)
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !204, line: 57, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !203, file: !204, line: 58, baseType: !90, size: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !203, file: !204, line: 59, baseType: !211, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 46, baseType: !89)
!212 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !199, file: !200, line: 5293, baseType: !143, size: 64, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !199, file: !200, line: 5294, baseType: !215, offset: 160)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !216, line: 45, elements: !217)
!216 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!217 = !{}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !107, file: !108, line: 355, baseType: !219, size: 64, offset: 832)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !183, line: 60, size: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !219, file: !183, line: 63, baseType: !166, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !219, file: !183, line: 66, baseType: !166, size: 32, offset: 32)
!223 = !DILocalVariable(name: "object", arg: 1, scope: !101, file: !4, line: 223, type: !104)
!224 = !DILocation(line: 223, column: 61, scope: !101)
!225 = !DILocalVariable(name: "thread", arg: 2, scope: !101, file: !4, line: 224, type: !106)
!226 = !DILocation(line: 224, column: 24, scope: !101)
!227 = !DILocation(line: 226, column: 9, scope: !101)
!228 = !DILocation(line: 227, column: 9, scope: !101)
!229 = !DILocation(line: 228, column: 1, scope: !101)
!230 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !231, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !104}
!233 = !DILocalVariable(name: "object", arg: 1, scope: !230, file: !4, line: 243, type: !104)
!234 = !DILocation(line: 243, column: 56, scope: !230)
!235 = !DILocation(line: 245, column: 9, scope: !230)
!236 = !DILocation(line: 246, column: 1, scope: !230)
!237 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !238, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!238 = !DISubroutineType(types: !239)
!239 = !{!90, !3}
!240 = !DILocalVariable(name: "otype", arg: 1, scope: !237, file: !4, line: 359, type: !3)
!241 = !DILocation(line: 359, column: 58, scope: !237)
!242 = !DILocation(line: 361, column: 9, scope: !237)
!243 = !DILocation(line: 363, column: 2, scope: !237)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !245, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!245 = !DISubroutineType(types: !246)
!246 = !{!90, !3, !211}
!247 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !4, line: 366, type: !3)
!248 = !DILocation(line: 366, column: 63, scope: !244)
!249 = !DILocalVariable(name: "size", arg: 2, scope: !244, file: !4, line: 367, type: !211)
!250 = !DILocation(line: 367, column: 13, scope: !244)
!251 = !DILocation(line: 369, column: 9, scope: !244)
!252 = !DILocation(line: 370, column: 9, scope: !244)
!253 = !DILocation(line: 372, column: 2, scope: !244)
!254 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !200, file: !200, line: 656, type: !255, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !258, line: 46, baseType: !179)
!258 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!261 = !DILocalVariable(name: "t", arg: 1, scope: !254, file: !200, line: 657, type: !259)
!262 = !DILocation(line: 657, column: 30, scope: !254)
!263 = !DILocation(line: 659, column: 28, scope: !254)
!264 = !DILocation(line: 659, column: 31, scope: !254)
!265 = !DILocation(line: 659, column: 36, scope: !254)
!266 = !DILocation(line: 659, column: 9, scope: !254)
!267 = !DILocation(line: 659, column: 2, scope: !254)
!268 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !200, file: !200, line: 671, type: !255, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!269 = !DILocalVariable(name: "t", arg: 1, scope: !268, file: !200, line: 672, type: !259)
!270 = !DILocation(line: 672, column: 30, scope: !268)
!271 = !DILocation(line: 674, column: 30, scope: !268)
!272 = !DILocation(line: 674, column: 33, scope: !268)
!273 = !DILocation(line: 674, column: 38, scope: !268)
!274 = !DILocation(line: 674, column: 9, scope: !268)
!275 = !DILocation(line: 674, column: 2, scope: !268)
!276 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !200, file: !200, line: 1634, type: !277, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!277 = !DISubroutineType(types: !278)
!278 = !{!257, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !200, line: 1439, size: 448, elements: !282)
!282 = !{!283, !284, !285, !290, !291, !296, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !281, file: !200, line: 1445, baseType: !169, size: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !281, file: !200, line: 1448, baseType: !143, size: 64, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !281, file: !200, line: 1451, baseType: !286, size: 32, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !281, file: !200, line: 1454, baseType: !286, size: 32, offset: 288)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !281, file: !200, line: 1457, baseType: !292, size: 64, offset: 320)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !258, line: 67, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !258, line: 65, size: 64, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !293, file: !258, line: 66, baseType: !257, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !281, file: !200, line: 1460, baseType: !166, size: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !281, file: !200, line: 1463, baseType: !90, size: 32, offset: 416)
!298 = !DILocalVariable(name: "timer", arg: 1, scope: !276, file: !200, line: 1635, type: !279)
!299 = !DILocation(line: 1635, column: 34, scope: !276)
!300 = !DILocation(line: 1637, column: 28, scope: !276)
!301 = !DILocation(line: 1637, column: 35, scope: !276)
!302 = !DILocation(line: 1637, column: 9, scope: !276)
!303 = !DILocation(line: 1637, column: 2, scope: !276)
!304 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !200, file: !200, line: 1649, type: !277, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!305 = !DILocalVariable(name: "timer", arg: 1, scope: !304, file: !200, line: 1650, type: !279)
!306 = !DILocation(line: 1650, column: 34, scope: !304)
!307 = !DILocation(line: 1652, column: 30, scope: !304)
!308 = !DILocation(line: 1652, column: 37, scope: !304)
!309 = !DILocation(line: 1652, column: 9, scope: !304)
!310 = !DILocation(line: 1652, column: 2, scope: !304)
!311 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !200, file: !200, line: 1689, type: !312, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !289, !90}
!314 = !DILocalVariable(name: "timer", arg: 1, scope: !311, file: !200, line: 1689, type: !289)
!315 = !DILocation(line: 1689, column: 65, scope: !311)
!316 = !DILocalVariable(name: "user_data", arg: 2, scope: !311, file: !200, line: 1690, type: !90)
!317 = !DILocation(line: 1690, column: 19, scope: !311)
!318 = !DILocation(line: 1692, column: 21, scope: !311)
!319 = !DILocation(line: 1692, column: 2, scope: !311)
!320 = !DILocation(line: 1692, column: 9, scope: !311)
!321 = !DILocation(line: 1692, column: 19, scope: !311)
!322 = !DILocation(line: 1693, column: 1, scope: !311)
!323 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !200, file: !200, line: 1704, type: !324, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!324 = !DISubroutineType(types: !325)
!325 = !{!90, !279}
!326 = !DILocalVariable(name: "timer", arg: 1, scope: !323, file: !200, line: 1704, type: !279)
!327 = !DILocation(line: 1704, column: 72, scope: !323)
!328 = !DILocation(line: 1706, column: 9, scope: !323)
!329 = !DILocation(line: 1706, column: 16, scope: !323)
!330 = !DILocation(line: 1706, column: 2, scope: !323)
!331 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !200, file: !200, line: 2071, type: !332, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!332 = !DISubroutineType(types: !333)
!333 = !{!91, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 32)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !200, line: 1830, size: 128, elements: !336)
!336 = !{!337, !350, !351}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !335, file: !200, line: 1831, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !339, line: 60, baseType: !340)
!339 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !339, line: 53, size: 64, elements: !341)
!341 = !{!342, !349}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !340, file: !339, line: 54, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !339, line: 50, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !339, line: 44, size: 32, elements: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !345, file: !339, line: 45, baseType: !348, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !339, line: 40, baseType: !166)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !340, file: !339, line: 55, baseType: !343, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !335, file: !200, line: 1832, baseType: !215, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !335, file: !200, line: 1833, baseType: !143, size: 64, offset: 64)
!352 = !DILocalVariable(name: "queue", arg: 1, scope: !331, file: !200, line: 2071, type: !334)
!353 = !DILocation(line: 2071, column: 59, scope: !331)
!354 = !DILocation(line: 2073, column: 35, scope: !331)
!355 = !DILocation(line: 2073, column: 42, scope: !331)
!356 = !DILocation(line: 2073, column: 14, scope: !331)
!357 = !DILocation(line: 2073, column: 9, scope: !331)
!358 = !DILocation(line: 2073, column: 2, scope: !331)
!359 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !200, file: !200, line: 3209, type: !360, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!360 = !DISubroutineType(types: !361)
!361 = !{!89, !362}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 32)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !200, line: 3092, size: 128, elements: !364)
!364 = !{!365, !366, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !363, file: !200, line: 3093, baseType: !143, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !363, file: !200, line: 3094, baseType: !89, size: 32, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !363, file: !200, line: 3095, baseType: !89, size: 32, offset: 96)
!368 = !DILocalVariable(name: "sem", arg: 1, scope: !359, file: !200, line: 3209, type: !362)
!369 = !DILocation(line: 3209, column: 65, scope: !359)
!370 = !DILocation(line: 3211, column: 9, scope: !359)
!371 = !DILocation(line: 3211, column: 14, scope: !359)
!372 = !DILocation(line: 3211, column: 2, scope: !359)
!373 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !200, file: !200, line: 4649, type: !374, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!374 = !DISubroutineType(types: !375)
!375 = !{!166, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !200, line: 4390, size: 320, elements: !378)
!378 = !{!379, !380, !381, !382, !383, !386, !387, !388, !389, !390}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !377, file: !200, line: 4392, baseType: !143, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !377, file: !200, line: 4394, baseType: !215, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !377, file: !200, line: 4396, baseType: !211, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !377, file: !200, line: 4398, baseType: !166, size: 32, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !377, file: !200, line: 4400, baseType: !384, size: 32, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!385 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !377, file: !200, line: 4402, baseType: !384, size: 32, offset: 160)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !377, file: !200, line: 4404, baseType: !384, size: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !377, file: !200, line: 4406, baseType: !384, size: 32, offset: 224)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !377, file: !200, line: 4408, baseType: !166, size: 32, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !377, file: !200, line: 4413, baseType: !150, size: 8, offset: 288)
!391 = !DILocalVariable(name: "msgq", arg: 1, scope: !373, file: !200, line: 4649, type: !376)
!392 = !DILocation(line: 4649, column: 66, scope: !373)
!393 = !DILocation(line: 4651, column: 9, scope: !373)
!394 = !DILocation(line: 4651, column: 15, scope: !373)
!395 = !DILocation(line: 4651, column: 26, scope: !373)
!396 = !DILocation(line: 4651, column: 32, scope: !373)
!397 = !DILocation(line: 4651, column: 24, scope: !373)
!398 = !DILocation(line: 4651, column: 2, scope: !373)
!399 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !200, file: !200, line: 4665, type: !374, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!400 = !DILocalVariable(name: "msgq", arg: 1, scope: !399, file: !200, line: 4665, type: !376)
!401 = !DILocation(line: 4665, column: 66, scope: !399)
!402 = !DILocation(line: 4667, column: 9, scope: !399)
!403 = !DILocation(line: 4667, column: 15, scope: !399)
!404 = !DILocation(line: 4667, column: 2, scope: !399)
!405 = distinct !DISubprogram(name: "z_data_copy", scope: !406, file: !406, line: 26, type: !407, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !217)
!406 = !DIFile(filename: "kernel/xip.c", directory: "/home/sri/zephyrproject/zephyr")
!407 = !DISubroutineType(types: !408)
!408 = !{null}
!409 = !DILocation(line: 28, column: 2, scope: !405)
!410 = !DILocation(line: 31, column: 2, scope: !405)
!411 = !DILocation(line: 75, column: 1, scope: !405)
!412 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !339, file: !339, line: 335, type: !413, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!413 = !DISubroutineType(types: !414)
!414 = !{!415, !416}
!415 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 32)
!417 = !DILocalVariable(name: "list", arg: 1, scope: !412, file: !339, line: 335, type: !416)
!418 = !DILocation(line: 335, column: 55, scope: !412)
!419 = !DILocation(line: 335, column: 92, scope: !412)
!420 = !DILocation(line: 335, column: 71, scope: !412)
!421 = !DILocation(line: 335, column: 98, scope: !412)
!422 = !DILocation(line: 335, column: 63, scope: !412)
!423 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !339, file: !339, line: 255, type: !424, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !217)
!424 = !DISubroutineType(types: !425)
!425 = !{!343, !416}
!426 = !DILocalVariable(name: "list", arg: 1, scope: !423, file: !339, line: 255, type: !416)
!427 = !DILocation(line: 255, column: 64, scope: !423)
!428 = !DILocation(line: 257, column: 9, scope: !423)
!429 = !DILocation(line: 257, column: 15, scope: !423)
!430 = !DILocation(line: 257, column: 2, scope: !423)
