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
@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !101 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !226, metadata !DIExpression()), !dbg !228
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !227, metadata !DIExpression()), !dbg !229
  %5 = load ptr, ptr %3, align 4, !dbg !230
  %6 = load ptr, ptr %4, align 4, !dbg !231
  ret void, !dbg !232
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !233 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load ptr, ptr %2, align 4, !dbg !239
  ret void, !dbg !240
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !241 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !245, metadata !DIExpression()), !dbg !246
  %3 = load i8, ptr %2, align 1, !dbg !247
  ret ptr null, !dbg !248
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !249 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !255
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !254, metadata !DIExpression()), !dbg !256
  %5 = load i8, ptr %3, align 1, !dbg !257
  %6 = load i32, ptr %4, align 4, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !260 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !268, metadata !DIExpression()), !dbg !269
  %3 = load ptr, ptr %2, align 4, !dbg !270
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !271
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !272
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #4, !dbg !273
  ret i64 %6, !dbg !274
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !275 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %2, align 4, !dbg !279
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !280
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !281
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #4, !dbg !282
  ret i64 %6, !dbg !283
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !307, metadata !DIExpression()), !dbg !308
  %3 = load ptr, ptr %2, align 4, !dbg !309
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !310
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #4, !dbg !311
  ret i64 %5, !dbg !312
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !313 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !315, metadata !DIExpression()), !dbg !316
  %3 = load ptr, ptr %2, align 4, !dbg !317
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !318
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #4, !dbg !319
  ret i64 %5, !dbg !320
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !321 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !327
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !326, metadata !DIExpression()), !dbg !328
  %5 = load ptr, ptr %4, align 4, !dbg !329
  %6 = load ptr, ptr %3, align 4, !dbg !330
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !331
  store ptr %5, ptr %7, align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !339
  %3 = load ptr, ptr %2, align 4, !dbg !340
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !341
  %5 = load ptr, ptr %4, align 4, !dbg !341
  ret ptr %5, !dbg !342
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !343 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !365, metadata !DIExpression()), !dbg !366
  %3 = load ptr, ptr %2, align 4, !dbg !367
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !368
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #4, !dbg !369
  %6 = zext i1 %5 to i32, !dbg !370
  ret i32 %6, !dbg !371
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !372 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !382, metadata !DIExpression()), !dbg !383
  %3 = load ptr, ptr %2, align 4, !dbg !384
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !385
  %5 = load i32, ptr %4, align 4, !dbg !385
  ret i32 %5, !dbg !386
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !387 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !406, metadata !DIExpression()), !dbg !407
  %3 = load ptr, ptr %2, align 4, !dbg !408
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !409
  %5 = load i32, ptr %4, align 4, !dbg !409
  %6 = load ptr, ptr %2, align 4, !dbg !410
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !411
  %8 = load i32, ptr %7, align 4, !dbg !411
  %9 = sub i32 %5, %8, !dbg !412
  ret i32 %9, !dbg !413
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !414 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  ret i32 %5, !dbg !420
}

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_z_errno() #1 !dbg !421 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !425
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 4, !dbg !426
  ret ptr %2, !dbg !427
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !428 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !433 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !434 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !440, metadata !DIExpression()), !dbg !441
  %3 = load ptr, ptr %2, align 4, !dbg !442
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #4, !dbg !443
  %5 = icmp eq ptr %4, null, !dbg !444
  ret i1 %5, !dbg !445
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !446 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !450, metadata !DIExpression()), !dbg !451
  %3 = load ptr, ptr %2, align 4, !dbg !452
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !453
  %5 = load ptr, ptr %4, align 4, !dbg !453
  ret ptr %5, !dbg !454
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_k_neg_eagain", scope: !2, file: !92, line: 23, type: !93, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
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
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!100 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!101 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !102, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !106}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !108, line: 250, size: 896, elements: !109)
!108 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!109 = !{!110, !183, !196, !197, !198, !199, !220}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !107, file: !108, line: 252, baseType: !111, size: 384)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !108, line: 58, size: 384, elements: !112)
!112 = !{!113, !141, !149, !152, !153, !166, !169, !170}
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
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !151, line: 62, baseType: !7)
!151 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !111, file: !108, line: 75, baseType: !150, size: 8, offset: 104)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !111, file: !108, line: 91, baseType: !154, size: 16, offset: 112)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !111, file: !108, line: 91, size: 16, elements: !155)
!155 = !{!156, !163}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !108, line: 92, baseType: !157, size: 16)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !154, file: !108, line: 92, size: 16, elements: !158)
!158 = !{!159, !162}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !157, file: !108, line: 97, baseType: !160, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !151, line: 56, baseType: !161)
!161 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !157, file: !108, line: 98, baseType: !150, size: 8, offset: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !154, file: !108, line: 101, baseType: !164, size: 16)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !151, line: 63, baseType: !165)
!165 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !111, file: !108, line: 108, baseType: !167, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !151, line: 64, baseType: !168)
!168 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !111, file: !108, line: 132, baseType: !89, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !111, file: !108, line: 136, baseType: !171, size: 192, offset: 192)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !144, line: 254, size: 192, elements: !172)
!172 = !{!173, !174, !180}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !171, file: !144, line: 255, baseType: !117, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !171, file: !144, line: 256, baseType: !175, size: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !144, line: 252, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !179}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !171, file: !144, line: 259, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !151, line: 59, baseType: !182)
!182 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !107, file: !108, line: 255, baseType: !184, size: 288, offset: 384)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !185, line: 25, size: 288, elements: !186)
!185 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194, !195}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !184, file: !185, line: 26, baseType: !167, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !184, file: !185, line: 27, baseType: !167, size: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !184, file: !185, line: 28, baseType: !167, size: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !184, file: !185, line: 29, baseType: !167, size: 32, offset: 96)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !184, file: !185, line: 30, baseType: !167, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !184, file: !185, line: 31, baseType: !167, size: 32, offset: 160)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !184, file: !185, line: 32, baseType: !167, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !184, file: !185, line: 33, baseType: !167, size: 32, offset: 224)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !184, file: !185, line: 34, baseType: !167, size: 32, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !107, file: !108, line: 258, baseType: !89, size: 32, offset: 672)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !107, file: !108, line: 261, baseType: !143, size: 64, offset: 704)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !107, file: !108, line: 302, baseType: !90, size: 32, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !107, file: !108, line: 333, baseType: !200, size: 32, offset: 800)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 32)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !202, line: 5291, size: 160, elements: !203)
!202 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = !{!204, !215, !216}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !201, file: !202, line: 5292, baseType: !205, size: 96)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !206, line: 56, size: 96, elements: !207)
!206 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{!208, !211, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !205, file: !206, line: 57, baseType: !209, size: 32)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 32)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !206, line: 57, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !205, file: !206, line: 58, baseType: !89, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !205, file: !206, line: 59, baseType: !213, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 46, baseType: !168)
!214 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !201, file: !202, line: 5293, baseType: !143, size: 64, offset: 96)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !201, file: !202, line: 5294, baseType: !217, offset: 160)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !218, line: 45, elements: !219)
!218 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = !{}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !107, file: !108, line: 355, baseType: !221, size: 64, offset: 832)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !185, line: 60, size: 64, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !221, file: !185, line: 63, baseType: !167, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !221, file: !185, line: 66, baseType: !167, size: 32, offset: 32)
!225 = !{!226, !227}
!226 = !DILocalVariable(name: "object", arg: 1, scope: !101, file: !6, line: 223, type: !104)
!227 = !DILocalVariable(name: "thread", arg: 2, scope: !101, file: !6, line: 224, type: !106)
!228 = !DILocation(line: 223, column: 61, scope: !101)
!229 = !DILocation(line: 224, column: 24, scope: !101)
!230 = !DILocation(line: 226, column: 9, scope: !101)
!231 = !DILocation(line: 227, column: 9, scope: !101)
!232 = !DILocation(line: 228, column: 1, scope: !101)
!233 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !234, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !104}
!236 = !{!237}
!237 = !DILocalVariable(name: "object", arg: 1, scope: !233, file: !6, line: 243, type: !104)
!238 = !DILocation(line: 243, column: 56, scope: !233)
!239 = !DILocation(line: 245, column: 9, scope: !233)
!240 = !DILocation(line: 246, column: 1, scope: !233)
!241 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !242, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{!89, !5}
!244 = !{!245}
!245 = !DILocalVariable(name: "otype", arg: 1, scope: !241, file: !6, line: 359, type: !5)
!246 = !DILocation(line: 359, column: 58, scope: !241)
!247 = !DILocation(line: 361, column: 9, scope: !241)
!248 = !DILocation(line: 363, column: 2, scope: !241)
!249 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !250, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{!89, !5, !213}
!252 = !{!253, !254}
!253 = !DILocalVariable(name: "otype", arg: 1, scope: !249, file: !6, line: 366, type: !5)
!254 = !DILocalVariable(name: "size", arg: 2, scope: !249, file: !6, line: 367, type: !213)
!255 = !DILocation(line: 366, column: 63, scope: !249)
!256 = !DILocation(line: 367, column: 13, scope: !249)
!257 = !DILocation(line: 369, column: 9, scope: !249)
!258 = !DILocation(line: 370, column: 9, scope: !249)
!259 = !DILocation(line: 372, column: 2, scope: !249)
!260 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !202, file: !202, line: 656, type: !261, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !264, line: 46, baseType: !181)
!264 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!267 = !{!268}
!268 = !DILocalVariable(name: "t", arg: 1, scope: !260, file: !202, line: 657, type: !265)
!269 = !DILocation(line: 657, column: 30, scope: !260)
!270 = !DILocation(line: 659, column: 28, scope: !260)
!271 = !DILocation(line: 659, column: 31, scope: !260)
!272 = !DILocation(line: 659, column: 36, scope: !260)
!273 = !DILocation(line: 659, column: 9, scope: !260)
!274 = !DILocation(line: 659, column: 2, scope: !260)
!275 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !202, file: !202, line: 671, type: !261, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!276 = !{!277}
!277 = !DILocalVariable(name: "t", arg: 1, scope: !275, file: !202, line: 672, type: !265)
!278 = !DILocation(line: 672, column: 30, scope: !275)
!279 = !DILocation(line: 674, column: 30, scope: !275)
!280 = !DILocation(line: 674, column: 33, scope: !275)
!281 = !DILocation(line: 674, column: 38, scope: !275)
!282 = !DILocation(line: 674, column: 9, scope: !275)
!283 = !DILocation(line: 674, column: 2, scope: !275)
!284 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !202, file: !202, line: 1634, type: !285, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!285 = !DISubroutineType(types: !286)
!286 = !{!263, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !202, line: 1439, size: 448, elements: !290)
!290 = !{!291, !292, !293, !298, !299, !304, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !289, file: !202, line: 1445, baseType: !171, size: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !202, line: 1448, baseType: !143, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !289, file: !202, line: 1451, baseType: !294, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !289, file: !202, line: 1454, baseType: !294, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !289, file: !202, line: 1457, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !264, line: 67, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 65, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !301, file: !264, line: 66, baseType: !263, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !289, file: !202, line: 1460, baseType: !167, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !289, file: !202, line: 1463, baseType: !89, size: 32, offset: 416)
!306 = !{!307}
!307 = !DILocalVariable(name: "timer", arg: 1, scope: !284, file: !202, line: 1635, type: !287)
!308 = !DILocation(line: 1635, column: 34, scope: !284)
!309 = !DILocation(line: 1637, column: 28, scope: !284)
!310 = !DILocation(line: 1637, column: 35, scope: !284)
!311 = !DILocation(line: 1637, column: 9, scope: !284)
!312 = !DILocation(line: 1637, column: 2, scope: !284)
!313 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !202, file: !202, line: 1649, type: !285, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "timer", arg: 1, scope: !313, file: !202, line: 1650, type: !287)
!316 = !DILocation(line: 1650, column: 34, scope: !313)
!317 = !DILocation(line: 1652, column: 30, scope: !313)
!318 = !DILocation(line: 1652, column: 37, scope: !313)
!319 = !DILocation(line: 1652, column: 9, scope: !313)
!320 = !DILocation(line: 1652, column: 2, scope: !313)
!321 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !202, file: !202, line: 1689, type: !322, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !297, !89}
!324 = !{!325, !326}
!325 = !DILocalVariable(name: "timer", arg: 1, scope: !321, file: !202, line: 1689, type: !297)
!326 = !DILocalVariable(name: "user_data", arg: 2, scope: !321, file: !202, line: 1690, type: !89)
!327 = !DILocation(line: 1689, column: 65, scope: !321)
!328 = !DILocation(line: 1690, column: 19, scope: !321)
!329 = !DILocation(line: 1692, column: 21, scope: !321)
!330 = !DILocation(line: 1692, column: 2, scope: !321)
!331 = !DILocation(line: 1692, column: 9, scope: !321)
!332 = !DILocation(line: 1692, column: 19, scope: !321)
!333 = !DILocation(line: 1693, column: 1, scope: !321)
!334 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !202, file: !202, line: 1704, type: !335, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{!89, !287}
!337 = !{!338}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !334, file: !202, line: 1704, type: !287)
!339 = !DILocation(line: 1704, column: 72, scope: !334)
!340 = !DILocation(line: 1706, column: 9, scope: !334)
!341 = !DILocation(line: 1706, column: 16, scope: !334)
!342 = !DILocation(line: 1706, column: 2, scope: !334)
!343 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !202, file: !202, line: 2071, type: !344, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !364)
!344 = !DISubroutineType(types: !345)
!345 = !{!90, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !202, line: 1830, size: 128, elements: !348)
!348 = !{!349, !362, !363}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !347, file: !202, line: 1831, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !351, line: 60, baseType: !352)
!351 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !351, line: 53, size: 64, elements: !353)
!353 = !{!354, !361}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !352, file: !351, line: 54, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !351, line: 50, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !351, line: 44, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !357, file: !351, line: 45, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !351, line: 40, baseType: !167)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !352, file: !351, line: 55, baseType: !355, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !347, file: !202, line: 1832, baseType: !217, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !347, file: !202, line: 1833, baseType: !143, size: 64, offset: 64)
!364 = !{!365}
!365 = !DILocalVariable(name: "queue", arg: 1, scope: !343, file: !202, line: 2071, type: !346)
!366 = !DILocation(line: 2071, column: 59, scope: !343)
!367 = !DILocation(line: 2073, column: 35, scope: !343)
!368 = !DILocation(line: 2073, column: 42, scope: !343)
!369 = !DILocation(line: 2073, column: 14, scope: !343)
!370 = !DILocation(line: 2073, column: 9, scope: !343)
!371 = !DILocation(line: 2073, column: 2, scope: !343)
!372 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !202, file: !202, line: 3209, type: !373, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !381)
!373 = !DISubroutineType(types: !374)
!374 = !{!168, !375}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !202, line: 3092, size: 128, elements: !377)
!377 = !{!378, !379, !380}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !376, file: !202, line: 3093, baseType: !143, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !376, file: !202, line: 3094, baseType: !168, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !376, file: !202, line: 3095, baseType: !168, size: 32, offset: 96)
!381 = !{!382}
!382 = !DILocalVariable(name: "sem", arg: 1, scope: !372, file: !202, line: 3209, type: !375)
!383 = !DILocation(line: 3209, column: 65, scope: !372)
!384 = !DILocation(line: 3211, column: 9, scope: !372)
!385 = !DILocation(line: 3211, column: 14, scope: !372)
!386 = !DILocation(line: 3211, column: 2, scope: !372)
!387 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !202, file: !202, line: 4649, type: !388, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!388 = !DISubroutineType(types: !389)
!389 = !{!167, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !202, line: 4390, size: 320, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !400, !401, !402, !403, !404}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !391, file: !202, line: 4392, baseType: !143, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !391, file: !202, line: 4394, baseType: !217, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !391, file: !202, line: 4396, baseType: !213, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !391, file: !202, line: 4398, baseType: !167, size: 32, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !391, file: !202, line: 4400, baseType: !398, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 32)
!399 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !391, file: !202, line: 4402, baseType: !398, size: 32, offset: 160)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !391, file: !202, line: 4404, baseType: !398, size: 32, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !391, file: !202, line: 4406, baseType: !398, size: 32, offset: 224)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !391, file: !202, line: 4408, baseType: !167, size: 32, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !391, file: !202, line: 4413, baseType: !150, size: 8, offset: 288)
!405 = !{!406}
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !387, file: !202, line: 4649, type: !390)
!407 = !DILocation(line: 4649, column: 66, scope: !387)
!408 = !DILocation(line: 4651, column: 9, scope: !387)
!409 = !DILocation(line: 4651, column: 15, scope: !387)
!410 = !DILocation(line: 4651, column: 26, scope: !387)
!411 = !DILocation(line: 4651, column: 32, scope: !387)
!412 = !DILocation(line: 4651, column: 24, scope: !387)
!413 = !DILocation(line: 4651, column: 2, scope: !387)
!414 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !202, file: !202, line: 4665, type: !388, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !414, file: !202, line: 4665, type: !390)
!417 = !DILocation(line: 4665, column: 66, scope: !414)
!418 = !DILocation(line: 4667, column: 9, scope: !414)
!419 = !DILocation(line: 4667, column: 15, scope: !414)
!420 = !DILocation(line: 4667, column: 2, scope: !414)
!421 = distinct !DISubprogram(name: "z_impl_z_errno", scope: !92, file: !92, line: 49, type: !422, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!422 = !DISubroutineType(types: !423)
!423 = !{!424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 32)
!425 = !DILocation(line: 51, column: 26, scope: !421)
!426 = !DILocation(line: 51, column: 35, scope: !421)
!427 = !DILocation(line: 51, column: 2, scope: !421)
!428 = !DISubprogram(name: "z_timeout_expires", scope: !202, file: !202, line: 642, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !219)
!429 = !DISubroutineType(types: !430)
!430 = !{!263, !431}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 32)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!433 = !DISubprogram(name: "z_timeout_remaining", scope: !202, file: !202, line: 643, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !219)
!434 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !351, file: !351, line: 335, type: !435, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!435 = !DISubroutineType(types: !436)
!436 = !{!437, !438}
!437 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!439 = !{!440}
!440 = !DILocalVariable(name: "list", arg: 1, scope: !434, file: !351, line: 335, type: !438)
!441 = !DILocation(line: 335, column: 55, scope: !434)
!442 = !DILocation(line: 335, column: 92, scope: !434)
!443 = !DILocation(line: 335, column: 71, scope: !434)
!444 = !DILocation(line: 335, column: 98, scope: !434)
!445 = !DILocation(line: 335, column: 63, scope: !434)
!446 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !351, file: !351, line: 255, type: !447, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!355, !438}
!449 = !{!450}
!450 = !DILocalVariable(name: "list", arg: 1, scope: !446, file: !351, line: 255, type: !438)
!451 = !DILocation(line: 255, column: 64, scope: !446)
!452 = !DILocation(line: 257, column: 9, scope: !446)
!453 = !DILocation(line: 257, column: 15, scope: !446)
!454 = !DILocation(line: 257, column: 2, scope: !446)
