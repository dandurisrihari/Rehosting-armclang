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

@__data_region_start = external dso_local global [0 x i8], align 1
@__data_region_load_start = external dso_local global [0 x i8], align 1
@__data_region_end = external dso_local global [0 x i8], align 1
@__ramfunc_start = external dso_local global [0 x i8], align 1
@__ramfunc_load_start = external dso_local global [0 x i8], align 1
@__ramfunc_size = external dso_local global [0 x i8], align 1

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !99 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !222, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !225
  %5 = load ptr, ptr %3, align 4, !dbg !226
  %6 = load ptr, ptr %4, align 4, !dbg !227
  ret void, !dbg !228
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !229 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !233, metadata !DIExpression()), !dbg !234
  %3 = load ptr, ptr %2, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !237 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load i8, ptr %2, align 1, !dbg !243
  ret ptr null, !dbg !244
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !245 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !249, metadata !DIExpression()), !dbg !251
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !250, metadata !DIExpression()), !dbg !252
  %5 = load i8, ptr %3, align 1, !dbg !253
  %6 = load i32, ptr %4, align 4, !dbg !254
  ret ptr null, !dbg !255
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !256 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !264, metadata !DIExpression()), !dbg !265
  %3 = load ptr, ptr %2, align 4, !dbg !266
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !267
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !268
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #4, !dbg !269
  ret i64 %6, !dbg !270
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !271 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !273, metadata !DIExpression()), !dbg !274
  %3 = load ptr, ptr %2, align 4, !dbg !275
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !276
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !277
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #4, !dbg !278
  ret i64 %6, !dbg !279
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !304
  %3 = load ptr, ptr %2, align 4, !dbg !305
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !306
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #4, !dbg !307
  ret i64 %5, !dbg !308
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !309 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  %3 = load ptr, ptr %2, align 4, !dbg !313
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !314
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #4, !dbg !315
  ret i64 %5, !dbg !316
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !317 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !321, metadata !DIExpression()), !dbg !323
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !324
  %5 = load ptr, ptr %4, align 4, !dbg !325
  %6 = load ptr, ptr %3, align 4, !dbg !326
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !327
  store ptr %5, ptr %7, align 4, !dbg !328
  ret void, !dbg !329
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !330 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load ptr, ptr %2, align 4, !dbg !336
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !337
  %5 = load ptr, ptr %4, align 4, !dbg !337
  ret ptr %5, !dbg !338
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !362
  %3 = load ptr, ptr %2, align 4, !dbg !363
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !364
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #4, !dbg !365
  %6 = zext i1 %5 to i32, !dbg !366
  ret i32 %6, !dbg !367
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !368 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !378, metadata !DIExpression()), !dbg !379
  %3 = load ptr, ptr %2, align 4, !dbg !380
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !381
  %5 = load i32, ptr %4, align 4, !dbg !381
  ret i32 %5, !dbg !382
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !383 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load ptr, ptr %2, align 4, !dbg !404
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !405
  %5 = load i32, ptr %4, align 4, !dbg !405
  %6 = load ptr, ptr %2, align 4, !dbg !406
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !407
  %8 = load i32, ptr %7, align 4, !dbg !407
  %9 = sub i32 %5, %8, !dbg !408
  ret i32 %9, !dbg !409
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !410 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = load ptr, ptr %2, align 4, !dbg !414
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !415
  %5 = load i32, ptr %4, align 4, !dbg !415
  ret i32 %5, !dbg !416
}

; Function Attrs: nounwind optsize
define hidden void @z_data_copy() #1 !dbg !417 {
  call void @z_early_memcpy(ptr noundef @__data_region_start, ptr noundef @__data_region_load_start, i32 noundef sub (i32 ptrtoint (ptr @__data_region_end to i32), i32 ptrtoint (ptr @__data_region_start to i32))) #4, !dbg !421
  call void @z_early_memcpy(ptr noundef @__ramfunc_start, ptr noundef @__ramfunc_load_start, i32 noundef ptrtoint (ptr @__ramfunc_size to i32)) #4, !dbg !422
  ret void, !dbg !423
}

; Function Attrs: optsize
declare !dbg !424 dso_local void @z_early_memcpy(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: optsize
declare !dbg !430 dso_local i64 @z_timeout_expires(ptr noundef) #2

; Function Attrs: optsize
declare !dbg !435 dso_local i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !436 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !442, metadata !DIExpression()), !dbg !443
  %3 = load ptr, ptr %2, align 4, !dbg !444
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #4, !dbg !445
  %5 = icmp eq ptr %4, null, !dbg !446
  ret i1 %5, !dbg !447
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !448 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !453
  %3 = load ptr, ptr %2, align 4, !dbg !454
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !455
  %5 = load ptr, ptr %4, align 4, !dbg !455
  ret ptr %5, !dbg !456
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
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
!98 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!99 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !100, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !221)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !104}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !106, line: 250, size: 896, elements: !107)
!106 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!107 = !{!108, !179, !192, !193, !194, !195, !216}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !105, file: !106, line: 252, baseType: !109, size: 384)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !106, line: 58, size: 384, elements: !110)
!110 = !{!111, !139, !147, !149, !150, !163, !165, !166}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !106, line: 61, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !106, line: 61, size: 64, elements: !113)
!113 = !{!114, !130}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !112, file: !106, line: 62, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !116, line: 55, baseType: !117)
!116 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !116, line: 37, size: 64, elements: !118)
!118 = !{!119, !125}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !116, line: 38, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 38, size: 32, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !120, file: !116, line: 39, baseType: !123, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !116, line: 40, baseType: !123, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !116, line: 42, baseType: !126, size: 32, offset: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 42, size: 32, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !126, file: !116, line: 43, baseType: !123, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !126, file: !116, line: 44, baseType: !123, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !112, file: !106, line: 63, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !132, line: 58, size: 64, elements: !133)
!132 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !131, file: !132, line: 60, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 32)
!137 = !{!138}
!138 = !DISubrange(count: 2)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !109, file: !106, line: 69, baseType: !140, size: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !142, line: 243, baseType: !143)
!142 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 241, size: 64, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !143, file: !142, line: 242, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !116, line: 51, baseType: !117)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !109, file: !106, line: 72, baseType: !148, size: 8, offset: 96)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !109, file: !106, line: 75, baseType: !148, size: 8, offset: 104)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !106, line: 91, baseType: !151, size: 16, offset: 112)
!151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !106, line: 91, size: 16, elements: !152)
!152 = !{!153, !160}
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !106, line: 92, baseType: !154, size: 16)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !151, file: !106, line: 92, size: 16, elements: !155)
!155 = !{!156, !159}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !154, file: !106, line: 97, baseType: !157, size: 8)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !88, line: 56, baseType: !158)
!158 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !154, file: !106, line: 98, baseType: !148, size: 8, offset: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !151, file: !106, line: 101, baseType: !161, size: 16)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !88, line: 63, baseType: !162)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !109, file: !106, line: 108, baseType: !164, size: 32, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !88, line: 64, baseType: !89)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !109, file: !106, line: 132, baseType: !90, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !109, file: !106, line: 136, baseType: !167, size: 192, offset: 192)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !142, line: 254, size: 192, elements: !168)
!168 = !{!169, !170, !176}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !167, file: !142, line: 255, baseType: !115, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !167, file: !142, line: 256, baseType: !171, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !142, line: 252, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !167, file: !142, line: 259, baseType: !177, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !88, line: 59, baseType: !178)
!178 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !105, file: !106, line: 255, baseType: !180, size: 288, offset: 384)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !181, line: 25, size: 288, elements: !182)
!181 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !180, file: !181, line: 26, baseType: !164, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !180, file: !181, line: 27, baseType: !164, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !180, file: !181, line: 28, baseType: !164, size: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !180, file: !181, line: 29, baseType: !164, size: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !180, file: !181, line: 30, baseType: !164, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !180, file: !181, line: 31, baseType: !164, size: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !180, file: !181, line: 32, baseType: !164, size: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !180, file: !181, line: 33, baseType: !164, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !180, file: !181, line: 34, baseType: !164, size: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !105, file: !106, line: 258, baseType: !90, size: 32, offset: 672)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !105, file: !106, line: 261, baseType: !141, size: 64, offset: 704)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !105, file: !106, line: 302, baseType: !91, size: 32, offset: 768)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !105, file: !106, line: 333, baseType: !196, size: 32, offset: 800)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !198, line: 5291, size: 160, elements: !199)
!198 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!199 = !{!200, !211, !212}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !197, file: !198, line: 5292, baseType: !201, size: 96)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !202, line: 56, size: 96, elements: !203)
!202 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!203 = !{!204, !207, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !201, file: !202, line: 57, baseType: !205, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 32)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !202, line: 57, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !201, file: !202, line: 58, baseType: !90, size: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !201, file: !202, line: 59, baseType: !209, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !210, line: 46, baseType: !89)
!210 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !197, file: !198, line: 5293, baseType: !141, size: 64, offset: 96)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !197, file: !198, line: 5294, baseType: !213, offset: 160)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !214, line: 45, elements: !215)
!214 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!215 = !{}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !105, file: !106, line: 355, baseType: !217, size: 64, offset: 832)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !181, line: 60, size: 64, elements: !218)
!218 = !{!219, !220}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !217, file: !181, line: 63, baseType: !164, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !217, file: !181, line: 66, baseType: !164, size: 32, offset: 32)
!221 = !{!222, !223}
!222 = !DILocalVariable(name: "object", arg: 1, scope: !99, file: !4, line: 223, type: !102)
!223 = !DILocalVariable(name: "thread", arg: 2, scope: !99, file: !4, line: 224, type: !104)
!224 = !DILocation(line: 223, column: 61, scope: !99)
!225 = !DILocation(line: 224, column: 24, scope: !99)
!226 = !DILocation(line: 226, column: 9, scope: !99)
!227 = !DILocation(line: 227, column: 9, scope: !99)
!228 = !DILocation(line: 228, column: 1, scope: !99)
!229 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !230, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !102}
!232 = !{!233}
!233 = !DILocalVariable(name: "object", arg: 1, scope: !229, file: !4, line: 243, type: !102)
!234 = !DILocation(line: 243, column: 56, scope: !229)
!235 = !DILocation(line: 245, column: 9, scope: !229)
!236 = !DILocation(line: 246, column: 1, scope: !229)
!237 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !238, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!90, !3}
!240 = !{!241}
!241 = !DILocalVariable(name: "otype", arg: 1, scope: !237, file: !4, line: 359, type: !3)
!242 = !DILocation(line: 359, column: 58, scope: !237)
!243 = !DILocation(line: 361, column: 9, scope: !237)
!244 = !DILocation(line: 363, column: 2, scope: !237)
!245 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !246, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!90, !3, !209}
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "otype", arg: 1, scope: !245, file: !4, line: 366, type: !3)
!250 = !DILocalVariable(name: "size", arg: 2, scope: !245, file: !4, line: 367, type: !209)
!251 = !DILocation(line: 366, column: 63, scope: !245)
!252 = !DILocation(line: 367, column: 13, scope: !245)
!253 = !DILocation(line: 369, column: 9, scope: !245)
!254 = !DILocation(line: 370, column: 9, scope: !245)
!255 = !DILocation(line: 372, column: 2, scope: !245)
!256 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !198, file: !198, line: 656, type: !257, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !261}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !260, line: 46, baseType: !177)
!260 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!263 = !{!264}
!264 = !DILocalVariable(name: "t", arg: 1, scope: !256, file: !198, line: 657, type: !261)
!265 = !DILocation(line: 657, column: 30, scope: !256)
!266 = !DILocation(line: 659, column: 28, scope: !256)
!267 = !DILocation(line: 659, column: 31, scope: !256)
!268 = !DILocation(line: 659, column: 36, scope: !256)
!269 = !DILocation(line: 659, column: 9, scope: !256)
!270 = !DILocation(line: 659, column: 2, scope: !256)
!271 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !198, file: !198, line: 671, type: !257, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273}
!273 = !DILocalVariable(name: "t", arg: 1, scope: !271, file: !198, line: 672, type: !261)
!274 = !DILocation(line: 672, column: 30, scope: !271)
!275 = !DILocation(line: 674, column: 30, scope: !271)
!276 = !DILocation(line: 674, column: 33, scope: !271)
!277 = !DILocation(line: 674, column: 38, scope: !271)
!278 = !DILocation(line: 674, column: 9, scope: !271)
!279 = !DILocation(line: 674, column: 2, scope: !271)
!280 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !198, file: !198, line: 1634, type: !281, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !302)
!281 = !DISubroutineType(types: !282)
!282 = !{!259, !283}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !198, line: 1439, size: 448, elements: !286)
!286 = !{!287, !288, !289, !294, !295, !300, !301}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !285, file: !198, line: 1445, baseType: !167, size: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !285, file: !198, line: 1448, baseType: !141, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !285, file: !198, line: 1451, baseType: !290, size: 32, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !285, file: !198, line: 1454, baseType: !290, size: 32, offset: 288)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !285, file: !198, line: 1457, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !260, line: 67, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !260, line: 65, size: 64, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !297, file: !260, line: 66, baseType: !259, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !285, file: !198, line: 1460, baseType: !164, size: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !285, file: !198, line: 1463, baseType: !90, size: 32, offset: 416)
!302 = !{!303}
!303 = !DILocalVariable(name: "timer", arg: 1, scope: !280, file: !198, line: 1635, type: !283)
!304 = !DILocation(line: 1635, column: 34, scope: !280)
!305 = !DILocation(line: 1637, column: 28, scope: !280)
!306 = !DILocation(line: 1637, column: 35, scope: !280)
!307 = !DILocation(line: 1637, column: 9, scope: !280)
!308 = !DILocation(line: 1637, column: 2, scope: !280)
!309 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !198, file: !198, line: 1649, type: !281, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!310 = !{!311}
!311 = !DILocalVariable(name: "timer", arg: 1, scope: !309, file: !198, line: 1650, type: !283)
!312 = !DILocation(line: 1650, column: 34, scope: !309)
!313 = !DILocation(line: 1652, column: 30, scope: !309)
!314 = !DILocation(line: 1652, column: 37, scope: !309)
!315 = !DILocation(line: 1652, column: 9, scope: !309)
!316 = !DILocation(line: 1652, column: 2, scope: !309)
!317 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !198, file: !198, line: 1689, type: !318, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !293, !90}
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "timer", arg: 1, scope: !317, file: !198, line: 1689, type: !293)
!322 = !DILocalVariable(name: "user_data", arg: 2, scope: !317, file: !198, line: 1690, type: !90)
!323 = !DILocation(line: 1689, column: 65, scope: !317)
!324 = !DILocation(line: 1690, column: 19, scope: !317)
!325 = !DILocation(line: 1692, column: 21, scope: !317)
!326 = !DILocation(line: 1692, column: 2, scope: !317)
!327 = !DILocation(line: 1692, column: 9, scope: !317)
!328 = !DILocation(line: 1692, column: 19, scope: !317)
!329 = !DILocation(line: 1693, column: 1, scope: !317)
!330 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !198, file: !198, line: 1704, type: !331, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!90, !283}
!333 = !{!334}
!334 = !DILocalVariable(name: "timer", arg: 1, scope: !330, file: !198, line: 1704, type: !283)
!335 = !DILocation(line: 1704, column: 72, scope: !330)
!336 = !DILocation(line: 1706, column: 9, scope: !330)
!337 = !DILocation(line: 1706, column: 16, scope: !330)
!338 = !DILocation(line: 1706, column: 2, scope: !330)
!339 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !198, file: !198, line: 2071, type: !340, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!340 = !DISubroutineType(types: !341)
!341 = !{!91, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !198, line: 1830, size: 128, elements: !344)
!344 = !{!345, !358, !359}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !343, file: !198, line: 1831, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !347, line: 60, baseType: !348)
!347 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !347, line: 53, size: 64, elements: !349)
!349 = !{!350, !357}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !348, file: !347, line: 54, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !347, line: 50, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !347, line: 44, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !353, file: !347, line: 45, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !347, line: 40, baseType: !164)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !347, line: 55, baseType: !351, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !198, line: 1832, baseType: !213, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !343, file: !198, line: 1833, baseType: !141, size: 64, offset: 64)
!360 = !{!361}
!361 = !DILocalVariable(name: "queue", arg: 1, scope: !339, file: !198, line: 2071, type: !342)
!362 = !DILocation(line: 2071, column: 59, scope: !339)
!363 = !DILocation(line: 2073, column: 35, scope: !339)
!364 = !DILocation(line: 2073, column: 42, scope: !339)
!365 = !DILocation(line: 2073, column: 14, scope: !339)
!366 = !DILocation(line: 2073, column: 9, scope: !339)
!367 = !DILocation(line: 2073, column: 2, scope: !339)
!368 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !198, file: !198, line: 3209, type: !369, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !377)
!369 = !DISubroutineType(types: !370)
!370 = !{!89, !371}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 32)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !198, line: 3092, size: 128, elements: !373)
!373 = !{!374, !375, !376}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !372, file: !198, line: 3093, baseType: !141, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !372, file: !198, line: 3094, baseType: !89, size: 32, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !372, file: !198, line: 3095, baseType: !89, size: 32, offset: 96)
!377 = !{!378}
!378 = !DILocalVariable(name: "sem", arg: 1, scope: !368, file: !198, line: 3209, type: !371)
!379 = !DILocation(line: 3209, column: 65, scope: !368)
!380 = !DILocation(line: 3211, column: 9, scope: !368)
!381 = !DILocation(line: 3211, column: 14, scope: !368)
!382 = !DILocation(line: 3211, column: 2, scope: !368)
!383 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !198, file: !198, line: 4649, type: !384, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !401)
!384 = !DISubroutineType(types: !385)
!385 = !{!164, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !198, line: 4390, size: 320, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !396, !397, !398, !399, !400}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !387, file: !198, line: 4392, baseType: !141, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !387, file: !198, line: 4394, baseType: !213, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !387, file: !198, line: 4396, baseType: !209, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !387, file: !198, line: 4398, baseType: !164, size: 32, offset: 96)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !387, file: !198, line: 4400, baseType: !394, size: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !387, file: !198, line: 4402, baseType: !394, size: 32, offset: 160)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !387, file: !198, line: 4404, baseType: !394, size: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !387, file: !198, line: 4406, baseType: !394, size: 32, offset: 224)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !387, file: !198, line: 4408, baseType: !164, size: 32, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !387, file: !198, line: 4413, baseType: !148, size: 8, offset: 288)
!401 = !{!402}
!402 = !DILocalVariable(name: "msgq", arg: 1, scope: !383, file: !198, line: 4649, type: !386)
!403 = !DILocation(line: 4649, column: 66, scope: !383)
!404 = !DILocation(line: 4651, column: 9, scope: !383)
!405 = !DILocation(line: 4651, column: 15, scope: !383)
!406 = !DILocation(line: 4651, column: 26, scope: !383)
!407 = !DILocation(line: 4651, column: 32, scope: !383)
!408 = !DILocation(line: 4651, column: 24, scope: !383)
!409 = !DILocation(line: 4651, column: 2, scope: !383)
!410 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !198, file: !198, line: 4665, type: !384, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !411)
!411 = !{!412}
!412 = !DILocalVariable(name: "msgq", arg: 1, scope: !410, file: !198, line: 4665, type: !386)
!413 = !DILocation(line: 4665, column: 66, scope: !410)
!414 = !DILocation(line: 4667, column: 9, scope: !410)
!415 = !DILocation(line: 4667, column: 15, scope: !410)
!416 = !DILocation(line: 4667, column: 2, scope: !410)
!417 = distinct !DISubprogram(name: "z_data_copy", scope: !418, file: !418, line: 26, type: !419, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !215)
!418 = !DIFile(filename: "kernel/xip.c", directory: "/home/sri/zephyrproject/zephyr")
!419 = !DISubroutineType(types: !420)
!420 = !{null}
!421 = !DILocation(line: 28, column: 2, scope: !417)
!422 = !DILocation(line: 31, column: 2, scope: !417)
!423 = !DILocation(line: 75, column: 1, scope: !417)
!424 = !DISubprogram(name: "z_early_memcpy", scope: !425, file: !425, line: 33, type: !426, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !215)
!425 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!426 = !DISubroutineType(types: !427)
!427 = !{null, !90, !102, !428}
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !429, line: 51, baseType: !89)
!429 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!430 = !DISubprogram(name: "z_timeout_expires", scope: !198, file: !198, line: 642, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !215)
!431 = !DISubroutineType(types: !432)
!432 = !{!259, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!435 = !DISubprogram(name: "z_timeout_remaining", scope: !198, file: !198, line: 643, type: !431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !215)
!436 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !347, file: !347, line: 335, type: !437, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !441)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !440}
!439 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!441 = !{!442}
!442 = !DILocalVariable(name: "list", arg: 1, scope: !436, file: !347, line: 335, type: !440)
!443 = !DILocation(line: 335, column: 55, scope: !436)
!444 = !DILocation(line: 335, column: 92, scope: !436)
!445 = !DILocation(line: 335, column: 71, scope: !436)
!446 = !DILocation(line: 335, column: 98, scope: !436)
!447 = !DILocation(line: 335, column: 63, scope: !436)
!448 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !347, file: !347, line: 255, type: !449, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{!351, !440}
!451 = !{!452}
!452 = !DILocalVariable(name: "list", arg: 1, scope: !448, file: !347, line: 255, type: !440)
!453 = !DILocation(line: 255, column: 64, scope: !448)
!454 = !DILocation(line: 257, column: 9, scope: !448)
!455 = !DILocation(line: 257, column: 15, scope: !448)
!456 = !DILocation(line: 257, column: 2, scope: !448)
