; ModuleID = '../bc_files/libc-hooks.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/libc/armstdc/src/libc-hooks.c"
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

@_stdout_hook = internal global ptr @_stdout_hook_default, align 4, !dbg !0
@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !105 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !229, metadata !DIExpression()), !dbg !230
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !231, metadata !DIExpression()), !dbg !232
  %5 = load ptr, ptr %3, align 4, !dbg !233
  %6 = load ptr, ptr %4, align 4, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !236 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 4, !dbg !241
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !243 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !246, metadata !DIExpression()), !dbg !247
  %3 = load i8, ptr %2, align 1, !dbg !248
  ret ptr null, !dbg !249
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !250 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !254
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !256
  %5 = load i8, ptr %3, align 1, !dbg !257
  %6 = load i32, ptr %4, align 4, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !260 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !267, metadata !DIExpression()), !dbg !268
  %3 = load ptr, ptr %2, align 4, !dbg !269
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !270
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !271
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !272
  ret i64 %6, !dbg !273
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !274 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !275, metadata !DIExpression()), !dbg !276
  %3 = load ptr, ptr %2, align 4, !dbg !277
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !278
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !279
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !280
  ret i64 %6, !dbg !281
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !282 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  %3 = load ptr, ptr %2, align 4, !dbg !313
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !314
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !315
  ret i64 %5, !dbg !316
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !317 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !320, metadata !DIExpression()), !dbg !321
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !322, metadata !DIExpression()), !dbg !323
  %5 = load ptr, ptr %4, align 4, !dbg !324
  %6 = load ptr, ptr %3, align 4, !dbg !325
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !326
  store ptr %5, ptr %7, align 4, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !329 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !332, metadata !DIExpression()), !dbg !333
  %3 = load ptr, ptr %2, align 4, !dbg !334
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !335
  %5 = load ptr, ptr %4, align 4, !dbg !335
  ret ptr %5, !dbg !336
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !337 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  %3 = load ptr, ptr %2, align 4, !dbg !360
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !361
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !362
  %6 = zext i1 %5 to i32, !dbg !363
  ret i32 %6, !dbg !364
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !365 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !374, metadata !DIExpression()), !dbg !375
  %3 = load ptr, ptr %2, align 4, !dbg !376
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !377
  %5 = load i32, ptr %4, align 4, !dbg !377
  ret i32 %5, !dbg !378
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !379 {
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
define hidden void @__stdout_hook_install(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load ptr, ptr %2, align 4, !dbg !416
  store ptr %3, ptr @_stdout_hook, align 4, !dbg !417
  ret void, !dbg !418
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone willreturn memory(none)
define hidden ptr @__aeabi_errno_addr() #2 !dbg !419 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !424
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 4, !dbg !425
  ret ptr %2, !dbg !426
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @fputc(i32 noundef %0, ptr noundef nonnull %1) #0 !dbg !427 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !444, metadata !DIExpression()), !dbg !445
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !446, metadata !DIExpression()), !dbg !447
  %5 = load ptr, ptr @_stdout_hook, align 4, !dbg !448
  %6 = load i32, ptr %3, align 4, !dbg !449
  %7 = call i32 %5(i32 noundef %6), !dbg !450
  ret i32 %7, !dbg !451
}

declare i64 @z_timeout_expires(ptr noundef) #3

declare i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !452 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !460
  %5 = icmp eq ptr %4, null, !dbg !461
  ret i1 %5, !dbg !462
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !463 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !466, metadata !DIExpression()), !dbg !467
  %3 = load ptr, ptr %2, align 4, !dbg !468
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !469
  %5 = load ptr, ptr %4, align 4, !dbg !469
  ret ptr %5, !dbg !470
}

; Function Attrs: noinline nounwind optnone
define internal i32 @_stdout_hook_default(i32 noundef %0) #0 !dbg !471 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !472, metadata !DIExpression()), !dbg !473
  %3 = load i32, ptr %2, align 4, !dbg !474
  ret i32 -1, !dbg !475
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline nounwind optnone willreturn memory(none) "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_stdout_hook", scope: !2, file: !92, line: 17, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "libc-hooks.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!92 = !DIFile(filename: "lib/libc/armstdc/src/libc-hooks.c", directory: "/home/sri/zephyrproject/zephyr")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 32)
!94 = !DISubroutineType(types: !95)
!95 = !{!90, !90}
!96 = !{i32 7, !"Dwarf Version", i32 4}
!97 = !{i32 2, !"Debug Info Version", i32 3}
!98 = !{i32 1, !"wchar_size", i32 4}
!99 = !{i32 1, !"static_rwdata", i32 1}
!100 = !{i32 1, !"enumsize_buildattr", i32 1}
!101 = !{i32 1, !"armlib_unavailable", i32 0}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!105 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !106, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !110}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !112, line: 250, size: 896, elements: !113)
!112 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!113 = !{!114, !187, !200, !201, !202, !203, !224}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !111, file: !112, line: 252, baseType: !115, size: 384)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !112, line: 58, size: 384, elements: !116)
!116 = !{!117, !145, !153, !156, !157, !170, !173, !174}
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
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !155, line: 62, baseType: !7)
!155 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !115, file: !112, line: 75, baseType: !154, size: 8, offset: 104)
!157 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !112, line: 91, baseType: !158, size: 16, offset: 112)
!158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !112, line: 91, size: 16, elements: !159)
!159 = !{!160, !167}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !112, line: 92, baseType: !161, size: 16)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !158, file: !112, line: 92, size: 16, elements: !162)
!162 = !{!163, !166}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !161, file: !112, line: 97, baseType: !164, size: 8)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !155, line: 56, baseType: !165)
!165 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !161, file: !112, line: 98, baseType: !154, size: 8, offset: 8)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !158, file: !112, line: 101, baseType: !168, size: 16)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !155, line: 63, baseType: !169)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !115, file: !112, line: 108, baseType: !171, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 64, baseType: !172)
!172 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !115, file: !112, line: 132, baseType: !89, size: 32, offset: 160)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !115, file: !112, line: 136, baseType: !175, size: 192, offset: 192)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !148, line: 254, size: 192, elements: !176)
!176 = !{!177, !178, !184}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !175, file: !148, line: 255, baseType: !121, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !175, file: !148, line: 256, baseType: !179, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !148, line: 252, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 32)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !175, file: !148, line: 259, baseType: !185, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !155, line: 59, baseType: !186)
!186 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !111, file: !112, line: 255, baseType: !188, size: 288, offset: 384)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !189, line: 25, size: 288, elements: !190)
!189 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !188, file: !189, line: 26, baseType: !171, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !188, file: !189, line: 27, baseType: !171, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !188, file: !189, line: 28, baseType: !171, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !188, file: !189, line: 29, baseType: !171, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !188, file: !189, line: 30, baseType: !171, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !188, file: !189, line: 31, baseType: !171, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !188, file: !189, line: 32, baseType: !171, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !188, file: !189, line: 33, baseType: !171, size: 32, offset: 224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !188, file: !189, line: 34, baseType: !171, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !111, file: !112, line: 258, baseType: !89, size: 32, offset: 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !111, file: !112, line: 261, baseType: !147, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !111, file: !112, line: 302, baseType: !90, size: 32, offset: 768)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !111, file: !112, line: 333, baseType: !204, size: 32, offset: 800)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !206, line: 5291, size: 160, elements: !207)
!206 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!207 = !{!208, !219, !220}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !205, file: !206, line: 5292, baseType: !209, size: 96)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !210, line: 56, size: 96, elements: !211)
!210 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!211 = !{!212, !215, !216}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !209, file: !210, line: 57, baseType: !213, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 32)
!214 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !210, line: 57, flags: DIFlagFwdDecl)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !209, file: !210, line: 58, baseType: !89, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !209, file: !210, line: 59, baseType: !217, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !218, line: 46, baseType: !172)
!218 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !205, file: !206, line: 5293, baseType: !147, size: 64, offset: 96)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !205, file: !206, line: 5294, baseType: !221, offset: 160)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !222, line: 45, elements: !223)
!222 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !{}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !111, file: !112, line: 355, baseType: !225, size: 64, offset: 832)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !189, line: 60, size: 64, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !225, file: !189, line: 63, baseType: !171, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !225, file: !189, line: 66, baseType: !171, size: 32, offset: 32)
!229 = !DILocalVariable(name: "object", arg: 1, scope: !105, file: !6, line: 223, type: !108)
!230 = !DILocation(line: 223, column: 61, scope: !105)
!231 = !DILocalVariable(name: "thread", arg: 2, scope: !105, file: !6, line: 224, type: !110)
!232 = !DILocation(line: 224, column: 24, scope: !105)
!233 = !DILocation(line: 226, column: 9, scope: !105)
!234 = !DILocation(line: 227, column: 9, scope: !105)
!235 = !DILocation(line: 228, column: 1, scope: !105)
!236 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !237, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !108}
!239 = !DILocalVariable(name: "object", arg: 1, scope: !236, file: !6, line: 243, type: !108)
!240 = !DILocation(line: 243, column: 56, scope: !236)
!241 = !DILocation(line: 245, column: 9, scope: !236)
!242 = !DILocation(line: 246, column: 1, scope: !236)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !244, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!244 = !DISubroutineType(types: !245)
!245 = !{!89, !5}
!246 = !DILocalVariable(name: "otype", arg: 1, scope: !243, file: !6, line: 359, type: !5)
!247 = !DILocation(line: 359, column: 58, scope: !243)
!248 = !DILocation(line: 361, column: 9, scope: !243)
!249 = !DILocation(line: 363, column: 2, scope: !243)
!250 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !251, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!251 = !DISubroutineType(types: !252)
!252 = !{!89, !5, !217}
!253 = !DILocalVariable(name: "otype", arg: 1, scope: !250, file: !6, line: 366, type: !5)
!254 = !DILocation(line: 366, column: 63, scope: !250)
!255 = !DILocalVariable(name: "size", arg: 2, scope: !250, file: !6, line: 367, type: !217)
!256 = !DILocation(line: 367, column: 13, scope: !250)
!257 = !DILocation(line: 369, column: 9, scope: !250)
!258 = !DILocation(line: 370, column: 9, scope: !250)
!259 = !DILocation(line: 372, column: 2, scope: !250)
!260 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !206, file: !206, line: 656, type: !261, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !265}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !264, line: 46, baseType: !185)
!264 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!267 = !DILocalVariable(name: "t", arg: 1, scope: !260, file: !206, line: 657, type: !265)
!268 = !DILocation(line: 657, column: 30, scope: !260)
!269 = !DILocation(line: 659, column: 28, scope: !260)
!270 = !DILocation(line: 659, column: 31, scope: !260)
!271 = !DILocation(line: 659, column: 36, scope: !260)
!272 = !DILocation(line: 659, column: 9, scope: !260)
!273 = !DILocation(line: 659, column: 2, scope: !260)
!274 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !206, file: !206, line: 671, type: !261, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!275 = !DILocalVariable(name: "t", arg: 1, scope: !274, file: !206, line: 672, type: !265)
!276 = !DILocation(line: 672, column: 30, scope: !274)
!277 = !DILocation(line: 674, column: 30, scope: !274)
!278 = !DILocation(line: 674, column: 33, scope: !274)
!279 = !DILocation(line: 674, column: 38, scope: !274)
!280 = !DILocation(line: 674, column: 9, scope: !274)
!281 = !DILocation(line: 674, column: 2, scope: !274)
!282 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !206, file: !206, line: 1634, type: !283, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!283 = !DISubroutineType(types: !284)
!284 = !{!263, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !206, line: 1439, size: 448, elements: !288)
!288 = !{!289, !290, !291, !296, !297, !302, !303}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !287, file: !206, line: 1445, baseType: !175, size: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !287, file: !206, line: 1448, baseType: !147, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !287, file: !206, line: 1451, baseType: !292, size: 32, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 32)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !287, file: !206, line: 1454, baseType: !292, size: 32, offset: 288)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !287, file: !206, line: 1457, baseType: !298, size: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !264, line: 67, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 65, size: 64, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !299, file: !264, line: 66, baseType: !263, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !287, file: !206, line: 1460, baseType: !171, size: 32, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !287, file: !206, line: 1463, baseType: !89, size: 32, offset: 416)
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !282, file: !206, line: 1635, type: !285)
!305 = !DILocation(line: 1635, column: 34, scope: !282)
!306 = !DILocation(line: 1637, column: 28, scope: !282)
!307 = !DILocation(line: 1637, column: 35, scope: !282)
!308 = !DILocation(line: 1637, column: 9, scope: !282)
!309 = !DILocation(line: 1637, column: 2, scope: !282)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !206, file: !206, line: 1649, type: !283, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!311 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !206, line: 1650, type: !285)
!312 = !DILocation(line: 1650, column: 34, scope: !310)
!313 = !DILocation(line: 1652, column: 30, scope: !310)
!314 = !DILocation(line: 1652, column: 37, scope: !310)
!315 = !DILocation(line: 1652, column: 9, scope: !310)
!316 = !DILocation(line: 1652, column: 2, scope: !310)
!317 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !206, file: !206, line: 1689, type: !318, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !295, !89}
!320 = !DILocalVariable(name: "timer", arg: 1, scope: !317, file: !206, line: 1689, type: !295)
!321 = !DILocation(line: 1689, column: 65, scope: !317)
!322 = !DILocalVariable(name: "user_data", arg: 2, scope: !317, file: !206, line: 1690, type: !89)
!323 = !DILocation(line: 1690, column: 19, scope: !317)
!324 = !DILocation(line: 1692, column: 21, scope: !317)
!325 = !DILocation(line: 1692, column: 2, scope: !317)
!326 = !DILocation(line: 1692, column: 9, scope: !317)
!327 = !DILocation(line: 1692, column: 19, scope: !317)
!328 = !DILocation(line: 1693, column: 1, scope: !317)
!329 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !206, file: !206, line: 1704, type: !330, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!330 = !DISubroutineType(types: !331)
!331 = !{!89, !285}
!332 = !DILocalVariable(name: "timer", arg: 1, scope: !329, file: !206, line: 1704, type: !285)
!333 = !DILocation(line: 1704, column: 72, scope: !329)
!334 = !DILocation(line: 1706, column: 9, scope: !329)
!335 = !DILocation(line: 1706, column: 16, scope: !329)
!336 = !DILocation(line: 1706, column: 2, scope: !329)
!337 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !206, file: !206, line: 2071, type: !338, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!338 = !DISubroutineType(types: !339)
!339 = !{!90, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !206, line: 1830, size: 128, elements: !342)
!342 = !{!343, !356, !357}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !341, file: !206, line: 1831, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !345, line: 60, baseType: !346)
!345 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !345, line: 53, size: 64, elements: !347)
!347 = !{!348, !355}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !346, file: !345, line: 54, baseType: !349, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !345, line: 50, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !345, line: 44, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !351, file: !345, line: 45, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !345, line: 40, baseType: !171)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !346, file: !345, line: 55, baseType: !349, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !341, file: !206, line: 1832, baseType: !221, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !341, file: !206, line: 1833, baseType: !147, size: 64, offset: 64)
!358 = !DILocalVariable(name: "queue", arg: 1, scope: !337, file: !206, line: 2071, type: !340)
!359 = !DILocation(line: 2071, column: 59, scope: !337)
!360 = !DILocation(line: 2073, column: 35, scope: !337)
!361 = !DILocation(line: 2073, column: 42, scope: !337)
!362 = !DILocation(line: 2073, column: 14, scope: !337)
!363 = !DILocation(line: 2073, column: 9, scope: !337)
!364 = !DILocation(line: 2073, column: 2, scope: !337)
!365 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !206, file: !206, line: 3209, type: !366, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!366 = !DISubroutineType(types: !367)
!367 = !{!172, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !206, line: 3092, size: 128, elements: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !369, file: !206, line: 3093, baseType: !147, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !369, file: !206, line: 3094, baseType: !172, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !369, file: !206, line: 3095, baseType: !172, size: 32, offset: 96)
!374 = !DILocalVariable(name: "sem", arg: 1, scope: !365, file: !206, line: 3209, type: !368)
!375 = !DILocation(line: 3209, column: 65, scope: !365)
!376 = !DILocation(line: 3211, column: 9, scope: !365)
!377 = !DILocation(line: 3211, column: 14, scope: !365)
!378 = !DILocation(line: 3211, column: 2, scope: !365)
!379 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !206, file: !206, line: 4649, type: !380, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!380 = !DISubroutineType(types: !381)
!381 = !{!171, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !206, line: 4390, size: 320, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !392, !393, !394, !395, !396}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !383, file: !206, line: 4392, baseType: !147, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !383, file: !206, line: 4394, baseType: !221, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !383, file: !206, line: 4396, baseType: !217, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !383, file: !206, line: 4398, baseType: !171, size: 32, offset: 96)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !383, file: !206, line: 4400, baseType: !390, size: 32, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 32)
!391 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !383, file: !206, line: 4402, baseType: !390, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !383, file: !206, line: 4404, baseType: !390, size: 32, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !383, file: !206, line: 4406, baseType: !390, size: 32, offset: 224)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !383, file: !206, line: 4408, baseType: !171, size: 32, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !383, file: !206, line: 4413, baseType: !154, size: 8, offset: 288)
!397 = !DILocalVariable(name: "msgq", arg: 1, scope: !379, file: !206, line: 4649, type: !382)
!398 = !DILocation(line: 4649, column: 66, scope: !379)
!399 = !DILocation(line: 4651, column: 9, scope: !379)
!400 = !DILocation(line: 4651, column: 15, scope: !379)
!401 = !DILocation(line: 4651, column: 26, scope: !379)
!402 = !DILocation(line: 4651, column: 32, scope: !379)
!403 = !DILocation(line: 4651, column: 24, scope: !379)
!404 = !DILocation(line: 4651, column: 2, scope: !379)
!405 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !206, file: !206, line: 4665, type: !380, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!406 = !DILocalVariable(name: "msgq", arg: 1, scope: !405, file: !206, line: 4665, type: !382)
!407 = !DILocation(line: 4665, column: 66, scope: !405)
!408 = !DILocation(line: 4667, column: 9, scope: !405)
!409 = !DILocation(line: 4667, column: 15, scope: !405)
!410 = !DILocation(line: 4667, column: 2, scope: !405)
!411 = distinct !DISubprogram(name: "__stdout_hook_install", scope: !92, file: !92, line: 19, type: !412, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !93}
!414 = !DILocalVariable(name: "hook", arg: 1, scope: !411, file: !92, line: 19, type: !93)
!415 = !DILocation(line: 19, column: 34, scope: !411)
!416 = !DILocation(line: 21, column: 17, scope: !411)
!417 = !DILocation(line: 21, column: 15, scope: !411)
!418 = !DILocation(line: 22, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "__aeabi_errno_addr", scope: !92, file: !92, line: 24, type: !420, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!420 = !DISubroutineType(types: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!424 = !DILocation(line: 26, column: 26, scope: !419)
!425 = !DILocation(line: 26, column: 35, scope: !419)
!426 = !DILocation(line: 26, column: 2, scope: !419)
!427 = distinct !DISubprogram(name: "fputc", scope: !92, file: !92, line: 29, type: !428, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !223)
!428 = !DISubroutineType(types: !429)
!429 = !{!90, !90, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !432, line: 108, baseType: !433)
!432 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__FILE", file: !432, line: 119, size: 672, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_opaque", scope: !433, file: !432, line: 127, baseType: !436, size: 672)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !432, line: 120, size: 672, elements: !437)
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_alignment", scope: !436, file: !432, line: 121, baseType: !439, size: 32)
!439 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_size", scope: !436, file: !432, line: 125, baseType: !441, size: 672)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 672, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 84)
!444 = !DILocalVariable(name: "c", arg: 1, scope: !427, file: !92, line: 29, type: !90)
!445 = !DILocation(line: 29, column: 15, scope: !427)
!446 = !DILocalVariable(name: "f", arg: 2, scope: !427, file: !92, line: 29, type: !430)
!447 = !DILocation(line: 29, column: 24, scope: !427)
!448 = !DILocation(line: 31, column: 10, scope: !427)
!449 = !DILocation(line: 31, column: 24, scope: !427)
!450 = !DILocation(line: 31, column: 9, scope: !427)
!451 = !DILocation(line: 31, column: 2, scope: !427)
!452 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !345, file: !345, line: 335, type: !453, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !456}
!455 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!457 = !DILocalVariable(name: "list", arg: 1, scope: !452, file: !345, line: 335, type: !456)
!458 = !DILocation(line: 335, column: 55, scope: !452)
!459 = !DILocation(line: 335, column: 92, scope: !452)
!460 = !DILocation(line: 335, column: 71, scope: !452)
!461 = !DILocation(line: 335, column: 98, scope: !452)
!462 = !DILocation(line: 335, column: 63, scope: !452)
!463 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !345, file: !345, line: 255, type: !464, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!464 = !DISubroutineType(types: !465)
!465 = !{!349, !456}
!466 = !DILocalVariable(name: "list", arg: 1, scope: !463, file: !345, line: 255, type: !456)
!467 = !DILocation(line: 255, column: 64, scope: !463)
!468 = !DILocation(line: 257, column: 9, scope: !463)
!469 = !DILocation(line: 257, column: 15, scope: !463)
!470 = !DILocation(line: 257, column: 2, scope: !463)
!471 = distinct !DISubprogram(name: "_stdout_hook_default", scope: !92, file: !92, line: 10, type: !94, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !223)
!472 = !DILocalVariable(name: "c", arg: 1, scope: !471, file: !92, line: 10, type: !90)
!473 = !DILocation(line: 10, column: 37, scope: !471)
!474 = !DILocation(line: 12, column: 9, scope: !471)
!475 = !DILocation(line: 14, column: 2, scope: !471)
