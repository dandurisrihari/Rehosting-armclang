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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !104 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !229, metadata !DIExpression()), !dbg !231
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !230, metadata !DIExpression()), !dbg !232
  %5 = load ptr, ptr %3, align 4, !dbg !233
  %6 = load ptr, ptr %4, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !236 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !241
  %3 = load ptr, ptr %2, align 4, !dbg !242
  ret void, !dbg !243
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !244 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !248, metadata !DIExpression()), !dbg !249
  %3 = load i8, ptr %2, align 1, !dbg !250
  ret ptr null, !dbg !251
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !252 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !256, metadata !DIExpression()), !dbg !258
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !257, metadata !DIExpression()), !dbg !259
  %5 = load i8, ptr %3, align 1, !dbg !260
  %6 = load i32, ptr %4, align 4, !dbg !261
  ret ptr null, !dbg !262
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !263 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !271, metadata !DIExpression()), !dbg !272
  %3 = load ptr, ptr %2, align 4, !dbg !273
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !274
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !275
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #4, !dbg !276
  ret i64 %6, !dbg !277
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !278 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !280, metadata !DIExpression()), !dbg !281
  %3 = load ptr, ptr %2, align 4, !dbg !282
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !283
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !284
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #4, !dbg !285
  ret i64 %6, !dbg !286
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !287 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !310, metadata !DIExpression()), !dbg !311
  %3 = load ptr, ptr %2, align 4, !dbg !312
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !313
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #4, !dbg !314
  ret i64 %5, !dbg !315
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !316 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !318, metadata !DIExpression()), !dbg !319
  %3 = load ptr, ptr %2, align 4, !dbg !320
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !321
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #4, !dbg !322
  ret i64 %5, !dbg !323
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !324 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !328, metadata !DIExpression()), !dbg !330
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !329, metadata !DIExpression()), !dbg !331
  %5 = load ptr, ptr %4, align 4, !dbg !332
  %6 = load ptr, ptr %3, align 4, !dbg !333
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !334
  store ptr %5, ptr %7, align 4, !dbg !335
  ret void, !dbg !336
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !342
  %3 = load ptr, ptr %2, align 4, !dbg !343
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !344
  %5 = load ptr, ptr %4, align 4, !dbg !344
  ret ptr %5, !dbg !345
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !369
  %3 = load ptr, ptr %2, align 4, !dbg !370
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !371
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #4, !dbg !372
  %6 = zext i1 %5 to i32, !dbg !373
  ret i32 %6, !dbg !374
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !375 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !385, metadata !DIExpression()), !dbg !386
  %3 = load ptr, ptr %2, align 4, !dbg !387
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !388
  %5 = load i32, ptr %4, align 4, !dbg !388
  ret i32 %5, !dbg !389
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !390 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !408, metadata !DIExpression()), !dbg !409
  %3 = load ptr, ptr %2, align 4, !dbg !410
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !411
  %5 = load i32, ptr %4, align 4, !dbg !411
  %6 = load ptr, ptr %2, align 4, !dbg !412
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !413
  %8 = load i32, ptr %7, align 4, !dbg !413
  %9 = sub i32 %5, %8, !dbg !414
  ret i32 %9, !dbg !415
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !416 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = load ptr, ptr %2, align 4, !dbg !420
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !421
  %5 = load i32, ptr %4, align 4, !dbg !421
  ret i32 %5, !dbg !422
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !445, metadata !DIExpression()), !dbg !446
  %3 = load ptr, ptr %2, align 4, !dbg !447
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #4, !dbg !448
  ret i1 %4, !dbg !449
}

; Function Attrs: nounwind optsize
define hidden void @boot_banner() #1 !dbg !450 {
  call void (ptr, ...) @printk(ptr noundef @.str) #4, !dbg !453
  ret void, !dbg !454
}

; Function Attrs: optsize
declare !dbg !455 dso_local void @printk(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: optsize
declare !dbg !459 dso_local i64 @z_timeout_expires(ptr noundef) #2

; Function Attrs: optsize
declare !dbg !464 dso_local i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !465 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !470, metadata !DIExpression()), !dbg !471
  %3 = load ptr, ptr %2, align 4, !dbg !472
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #4, !dbg !473
  %5 = icmp eq ptr %4, null, !dbg !474
  ret i1 %5, !dbg !475
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !476 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !481
  %3 = load ptr, ptr %2, align 4, !dbg !482
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !483
  %5 = load ptr, ptr %4, align 4, !dbg !483
  ret ptr %5, !dbg !484
}

; Function Attrs: optsize
declare !dbg !485 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #2

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/banner.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 62)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !93, globals: !96, splitDebugInlining: false, nameTableKind: None)
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
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!103 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!104 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !11, file: !11, line: 223, type: !105, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !228)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !109}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !111, line: 250, size: 896, elements: !112)
!111 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!112 = !{!113, !186, !199, !200, !201, !202, !223}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !110, file: !111, line: 252, baseType: !114, size: 384)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !111, line: 58, size: 384, elements: !115)
!115 = !{!116, !144, !152, !155, !156, !169, !172, !173}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !111, line: 61, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !111, line: 61, size: 64, elements: !118)
!118 = !{!119, !135}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !117, file: !111, line: 62, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !121, line: 55, baseType: !122)
!121 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !121, line: 37, size: 64, elements: !123)
!123 = !{!124, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 38, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 38, size: 32, elements: !126)
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !125, file: !121, line: 39, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !125, file: !121, line: 40, baseType: !128, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !121, line: 42, baseType: !131, size: 32, offset: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !122, file: !121, line: 42, size: 32, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !131, file: !121, line: 43, baseType: !128, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !131, file: !121, line: 44, baseType: !128, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !117, file: !111, line: 63, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !137, line: 58, size: 64, elements: !138)
!137 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !136, file: !137, line: 60, baseType: !140, size: 64)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !142)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!142 = !{!143}
!143 = !DISubrange(count: 2)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !114, file: !111, line: 69, baseType: !145, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !147, line: 243, baseType: !148)
!147 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !147, line: 241, size: 64, elements: !149)
!149 = !{!150}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !148, file: !147, line: 242, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !121, line: 51, baseType: !122)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !114, file: !111, line: 72, baseType: !153, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !154, line: 62, baseType: !12)
!154 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !114, file: !111, line: 75, baseType: !153, size: 8, offset: 104)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !111, line: 91, baseType: !157, size: 16, offset: 112)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !111, line: 91, size: 16, elements: !158)
!158 = !{!159, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !157, file: !111, line: 92, baseType: !160, size: 16)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !157, file: !111, line: 92, size: 16, elements: !161)
!161 = !{!162, !165}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !160, file: !111, line: 97, baseType: !163, size: 8)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !154, line: 56, baseType: !164)
!164 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !160, file: !111, line: 98, baseType: !153, size: 8, offset: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !157, file: !111, line: 101, baseType: !167, size: 16)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !154, line: 63, baseType: !168)
!168 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !114, file: !111, line: 108, baseType: !170, size: 32, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !154, line: 64, baseType: !171)
!171 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !114, file: !111, line: 132, baseType: !94, size: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !114, file: !111, line: 136, baseType: !174, size: 192, offset: 192)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !147, line: 254, size: 192, elements: !175)
!175 = !{!176, !177, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !174, file: !147, line: 255, baseType: !120, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !174, file: !147, line: 256, baseType: !178, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !147, line: 252, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 32)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !174, file: !147, line: 259, baseType: !184, size: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !154, line: 59, baseType: !185)
!185 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !110, file: !111, line: 255, baseType: !187, size: 288, offset: 384)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !188, line: 25, size: 288, elements: !189)
!188 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!189 = !{!190, !191, !192, !193, !194, !195, !196, !197, !198}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !187, file: !188, line: 26, baseType: !170, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !187, file: !188, line: 27, baseType: !170, size: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !187, file: !188, line: 28, baseType: !170, size: 32, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !187, file: !188, line: 29, baseType: !170, size: 32, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !187, file: !188, line: 30, baseType: !170, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !187, file: !188, line: 31, baseType: !170, size: 32, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !187, file: !188, line: 32, baseType: !170, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !187, file: !188, line: 33, baseType: !170, size: 32, offset: 224)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !187, file: !188, line: 34, baseType: !170, size: 32, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !110, file: !111, line: 258, baseType: !94, size: 32, offset: 672)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !110, file: !111, line: 261, baseType: !146, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !110, file: !111, line: 302, baseType: !95, size: 32, offset: 768)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !110, file: !111, line: 333, baseType: !203, size: 32, offset: 800)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !205, line: 5291, size: 160, elements: !206)
!205 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!206 = !{!207, !218, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !204, file: !205, line: 5292, baseType: !208, size: 96)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !209, line: 56, size: 96, elements: !210)
!209 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!210 = !{!211, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !208, file: !209, line: 57, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !209, line: 57, flags: DIFlagFwdDecl)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !208, file: !209, line: 58, baseType: !94, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !208, file: !209, line: 59, baseType: !216, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !217, line: 46, baseType: !171)
!217 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !204, file: !205, line: 5293, baseType: !146, size: 64, offset: 96)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !204, file: !205, line: 5294, baseType: !220, offset: 160)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !221, line: 45, elements: !222)
!221 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!222 = !{}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !110, file: !111, line: 355, baseType: !224, size: 64, offset: 832)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !188, line: 60, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !224, file: !188, line: 63, baseType: !170, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !224, file: !188, line: 66, baseType: !170, size: 32, offset: 32)
!228 = !{!229, !230}
!229 = !DILocalVariable(name: "object", arg: 1, scope: !104, file: !11, line: 223, type: !107)
!230 = !DILocalVariable(name: "thread", arg: 2, scope: !104, file: !11, line: 224, type: !109)
!231 = !DILocation(line: 223, column: 61, scope: !104)
!232 = !DILocation(line: 224, column: 24, scope: !104)
!233 = !DILocation(line: 226, column: 9, scope: !104)
!234 = !DILocation(line: 227, column: 9, scope: !104)
!235 = !DILocation(line: 228, column: 1, scope: !104)
!236 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !11, file: !11, line: 243, type: !237, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !239)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !107}
!239 = !{!240}
!240 = !DILocalVariable(name: "object", arg: 1, scope: !236, file: !11, line: 243, type: !107)
!241 = !DILocation(line: 243, column: 56, scope: !236)
!242 = !DILocation(line: 245, column: 9, scope: !236)
!243 = !DILocation(line: 246, column: 1, scope: !236)
!244 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !11, file: !11, line: 359, type: !245, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !247)
!245 = !DISubroutineType(types: !246)
!246 = !{!94, !10}
!247 = !{!248}
!248 = !DILocalVariable(name: "otype", arg: 1, scope: !244, file: !11, line: 359, type: !10)
!249 = !DILocation(line: 359, column: 58, scope: !244)
!250 = !DILocation(line: 361, column: 9, scope: !244)
!251 = !DILocation(line: 363, column: 2, scope: !244)
!252 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !11, file: !11, line: 366, type: !253, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!94, !10, !216}
!255 = !{!256, !257}
!256 = !DILocalVariable(name: "otype", arg: 1, scope: !252, file: !11, line: 366, type: !10)
!257 = !DILocalVariable(name: "size", arg: 2, scope: !252, file: !11, line: 367, type: !216)
!258 = !DILocation(line: 366, column: 63, scope: !252)
!259 = !DILocation(line: 367, column: 13, scope: !252)
!260 = !DILocation(line: 369, column: 9, scope: !252)
!261 = !DILocation(line: 370, column: 9, scope: !252)
!262 = !DILocation(line: 372, column: 2, scope: !252)
!263 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !205, file: !205, line: 656, type: !264, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !270)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !268}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !267, line: 46, baseType: !184)
!267 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 32)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!270 = !{!271}
!271 = !DILocalVariable(name: "t", arg: 1, scope: !263, file: !205, line: 657, type: !268)
!272 = !DILocation(line: 657, column: 30, scope: !263)
!273 = !DILocation(line: 659, column: 28, scope: !263)
!274 = !DILocation(line: 659, column: 31, scope: !263)
!275 = !DILocation(line: 659, column: 36, scope: !263)
!276 = !DILocation(line: 659, column: 9, scope: !263)
!277 = !DILocation(line: 659, column: 2, scope: !263)
!278 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !205, file: !205, line: 671, type: !264, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "t", arg: 1, scope: !278, file: !205, line: 672, type: !268)
!281 = !DILocation(line: 672, column: 30, scope: !278)
!282 = !DILocation(line: 674, column: 30, scope: !278)
!283 = !DILocation(line: 674, column: 33, scope: !278)
!284 = !DILocation(line: 674, column: 38, scope: !278)
!285 = !DILocation(line: 674, column: 9, scope: !278)
!286 = !DILocation(line: 674, column: 2, scope: !278)
!287 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !205, file: !205, line: 1634, type: !288, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !309)
!288 = !DISubroutineType(types: !289)
!289 = !{!266, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !205, line: 1439, size: 448, elements: !293)
!293 = !{!294, !295, !296, !301, !302, !307, !308}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !292, file: !205, line: 1445, baseType: !174, size: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !292, file: !205, line: 1448, baseType: !146, size: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !292, file: !205, line: 1451, baseType: !297, size: 32, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 32)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !292, file: !205, line: 1454, baseType: !297, size: 32, offset: 288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !292, file: !205, line: 1457, baseType: !303, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !267, line: 67, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 65, size: 64, elements: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !304, file: !267, line: 66, baseType: !266, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !292, file: !205, line: 1460, baseType: !170, size: 32, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !292, file: !205, line: 1463, baseType: !94, size: 32, offset: 416)
!309 = !{!310}
!310 = !DILocalVariable(name: "timer", arg: 1, scope: !287, file: !205, line: 1635, type: !290)
!311 = !DILocation(line: 1635, column: 34, scope: !287)
!312 = !DILocation(line: 1637, column: 28, scope: !287)
!313 = !DILocation(line: 1637, column: 35, scope: !287)
!314 = !DILocation(line: 1637, column: 9, scope: !287)
!315 = !DILocation(line: 1637, column: 2, scope: !287)
!316 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !205, file: !205, line: 1649, type: !288, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !317)
!317 = !{!318}
!318 = !DILocalVariable(name: "timer", arg: 1, scope: !316, file: !205, line: 1650, type: !290)
!319 = !DILocation(line: 1650, column: 34, scope: !316)
!320 = !DILocation(line: 1652, column: 30, scope: !316)
!321 = !DILocation(line: 1652, column: 37, scope: !316)
!322 = !DILocation(line: 1652, column: 9, scope: !316)
!323 = !DILocation(line: 1652, column: 2, scope: !316)
!324 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !205, file: !205, line: 1689, type: !325, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !300, !94}
!327 = !{!328, !329}
!328 = !DILocalVariable(name: "timer", arg: 1, scope: !324, file: !205, line: 1689, type: !300)
!329 = !DILocalVariable(name: "user_data", arg: 2, scope: !324, file: !205, line: 1690, type: !94)
!330 = !DILocation(line: 1689, column: 65, scope: !324)
!331 = !DILocation(line: 1690, column: 19, scope: !324)
!332 = !DILocation(line: 1692, column: 21, scope: !324)
!333 = !DILocation(line: 1692, column: 2, scope: !324)
!334 = !DILocation(line: 1692, column: 9, scope: !324)
!335 = !DILocation(line: 1692, column: 19, scope: !324)
!336 = !DILocation(line: 1693, column: 1, scope: !324)
!337 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !205, file: !205, line: 1704, type: !338, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!94, !290}
!340 = !{!341}
!341 = !DILocalVariable(name: "timer", arg: 1, scope: !337, file: !205, line: 1704, type: !290)
!342 = !DILocation(line: 1704, column: 72, scope: !337)
!343 = !DILocation(line: 1706, column: 9, scope: !337)
!344 = !DILocation(line: 1706, column: 16, scope: !337)
!345 = !DILocation(line: 1706, column: 2, scope: !337)
!346 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !205, file: !205, line: 2071, type: !347, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !367)
!347 = !DISubroutineType(types: !348)
!348 = !{!95, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !205, line: 1830, size: 128, elements: !351)
!351 = !{!352, !365, !366}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !350, file: !205, line: 1831, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !354, line: 60, baseType: !355)
!354 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !354, line: 53, size: 64, elements: !356)
!356 = !{!357, !364}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !355, file: !354, line: 54, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !354, line: 50, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !354, line: 44, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !360, file: !354, line: 45, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !354, line: 40, baseType: !170)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !355, file: !354, line: 55, baseType: !358, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !350, file: !205, line: 1832, baseType: !220, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !350, file: !205, line: 1833, baseType: !146, size: 64, offset: 64)
!367 = !{!368}
!368 = !DILocalVariable(name: "queue", arg: 1, scope: !346, file: !205, line: 2071, type: !349)
!369 = !DILocation(line: 2071, column: 59, scope: !346)
!370 = !DILocation(line: 2073, column: 35, scope: !346)
!371 = !DILocation(line: 2073, column: 42, scope: !346)
!372 = !DILocation(line: 2073, column: 14, scope: !346)
!373 = !DILocation(line: 2073, column: 9, scope: !346)
!374 = !DILocation(line: 2073, column: 2, scope: !346)
!375 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !205, file: !205, line: 3209, type: !376, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !384)
!376 = !DISubroutineType(types: !377)
!377 = !{!171, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !205, line: 3092, size: 128, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !379, file: !205, line: 3093, baseType: !146, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !379, file: !205, line: 3094, baseType: !171, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !379, file: !205, line: 3095, baseType: !171, size: 32, offset: 96)
!384 = !{!385}
!385 = !DILocalVariable(name: "sem", arg: 1, scope: !375, file: !205, line: 3209, type: !378)
!386 = !DILocation(line: 3209, column: 65, scope: !375)
!387 = !DILocation(line: 3211, column: 9, scope: !375)
!388 = !DILocation(line: 3211, column: 14, scope: !375)
!389 = !DILocation(line: 3211, column: 2, scope: !375)
!390 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !205, file: !205, line: 4649, type: !391, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !407)
!391 = !DISubroutineType(types: !392)
!392 = !{!170, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 32)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !205, line: 4390, size: 320, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !402, !403, !404, !405, !406}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !394, file: !205, line: 4392, baseType: !146, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !394, file: !205, line: 4394, baseType: !220, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !394, file: !205, line: 4396, baseType: !216, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !394, file: !205, line: 4398, baseType: !170, size: 32, offset: 96)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !394, file: !205, line: 4400, baseType: !401, size: 32, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !394, file: !205, line: 4402, baseType: !401, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !394, file: !205, line: 4404, baseType: !401, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !394, file: !205, line: 4406, baseType: !401, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !394, file: !205, line: 4408, baseType: !170, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !205, line: 4413, baseType: !153, size: 8, offset: 288)
!407 = !{!408}
!408 = !DILocalVariable(name: "msgq", arg: 1, scope: !390, file: !205, line: 4649, type: !393)
!409 = !DILocation(line: 4649, column: 66, scope: !390)
!410 = !DILocation(line: 4651, column: 9, scope: !390)
!411 = !DILocation(line: 4651, column: 15, scope: !390)
!412 = !DILocation(line: 4651, column: 26, scope: !390)
!413 = !DILocation(line: 4651, column: 32, scope: !390)
!414 = !DILocation(line: 4651, column: 24, scope: !390)
!415 = !DILocation(line: 4651, column: 2, scope: !390)
!416 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !205, file: !205, line: 4665, type: !391, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !417)
!417 = !{!418}
!418 = !DILocalVariable(name: "msgq", arg: 1, scope: !416, file: !205, line: 4665, type: !393)
!419 = !DILocation(line: 4665, column: 66, scope: !416)
!420 = !DILocation(line: 4667, column: 9, scope: !416)
!421 = !DILocation(line: 4667, column: 15, scope: !416)
!422 = !DILocation(line: 4667, column: 2, scope: !416)
!423 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !424, file: !424, line: 744, type: !425, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !444)
!424 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !428}
!427 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !424, line: 381, size: 160, elements: !431)
!431 = !{!432, !435, !436, !437, !443}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !424, line: 383, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !430, file: !424, line: 385, baseType: !107, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !430, file: !424, line: 387, baseType: !107, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !430, file: !424, line: 389, baseType: !438, size: 32, offset: 96)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !424, line: 354, size: 16, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !439, file: !424, line: 362, baseType: !153, size: 8)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !439, file: !424, line: 367, baseType: !427, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !430, file: !424, line: 391, baseType: !94, size: 32, offset: 128)
!444 = !{!445}
!445 = !DILocalVariable(name: "dev", arg: 1, scope: !423, file: !424, line: 744, type: !428)
!446 = !DILocation(line: 744, column: 65, scope: !423)
!447 = !DILocation(line: 746, column: 27, scope: !423)
!448 = !DILocation(line: 746, column: 9, scope: !423)
!449 = !DILocation(line: 746, column: 2, scope: !423)
!450 = distinct !DISubprogram(name: "boot_banner", scope: !2, file: !2, line: 27, type: !451, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !222)
!451 = !DISubroutineType(types: !452)
!452 = !{null}
!453 = !DILocation(line: 35, column: 2, scope: !450)
!454 = !DILocation(line: 37, column: 1, scope: !450)
!455 = !DISubprogram(name: "printk", scope: !456, file: !456, line: 47, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!456 = !DIFile(filename: "include/zephyr/sys/printk.h", directory: "/home/sri/zephyrproject/zephyr")
!457 = !DISubroutineType(types: !458)
!458 = !{null, !433, null}
!459 = !DISubprogram(name: "z_timeout_expires", scope: !205, file: !205, line: 642, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!460 = !DISubroutineType(types: !461)
!461 = !{!266, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!464 = !DISubprogram(name: "z_timeout_remaining", scope: !205, file: !205, line: 643, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!465 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !354, file: !354, line: 335, type: !466, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !469)
!466 = !DISubroutineType(types: !467)
!467 = !{!427, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!469 = !{!470}
!470 = !DILocalVariable(name: "list", arg: 1, scope: !465, file: !354, line: 335, type: !468)
!471 = !DILocation(line: 335, column: 55, scope: !465)
!472 = !DILocation(line: 335, column: 92, scope: !465)
!473 = !DILocation(line: 335, column: 71, scope: !465)
!474 = !DILocation(line: 335, column: 98, scope: !465)
!475 = !DILocation(line: 335, column: 63, scope: !465)
!476 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !354, file: !354, line: 255, type: !477, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !479)
!477 = !DISubroutineType(types: !478)
!478 = !{!358, !468}
!479 = !{!480}
!480 = !DILocalVariable(name: "list", arg: 1, scope: !476, file: !354, line: 255, type: !468)
!481 = !DILocation(line: 255, column: 64, scope: !476)
!482 = !DILocation(line: 257, column: 9, scope: !476)
!483 = !DILocation(line: 257, column: 15, scope: !476)
!484 = !DILocation(line: 257, column: 2, scope: !476)
!485 = !DISubprogram(name: "z_device_is_ready", scope: !424, file: !424, line: 724, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
