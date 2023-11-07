; ModuleID = '../bc_files/thread_abort.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/thread_abort.c"
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
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }

@_kernel = external global %struct.z_kernel, align 4

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !120 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !239, metadata !DIExpression()), !dbg !240
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !241, metadata !DIExpression()), !dbg !242
  %5 = load ptr, ptr %3, align 4, !dbg !243
  %6 = load ptr, ptr %4, align 4, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !246 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load ptr, ptr %2, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !253 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !256, metadata !DIExpression()), !dbg !257
  %3 = load i8, ptr %2, align 1, !dbg !258
  ret ptr null, !dbg !259
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !260 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !263, metadata !DIExpression()), !dbg !264
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !265, metadata !DIExpression()), !dbg !266
  %5 = load i8, ptr %3, align 1, !dbg !267
  %6 = load i32, ptr %4, align 4, !dbg !268
  ret ptr null, !dbg !269
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !270 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %2, align 4, !dbg !279
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !280
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !281
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !282
  ret i64 %6, !dbg !283
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !285, metadata !DIExpression()), !dbg !286
  %3 = load ptr, ptr %2, align 4, !dbg !287
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !288
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !289
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !290
  ret i64 %6, !dbg !291
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !292 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !314, metadata !DIExpression()), !dbg !315
  %3 = load ptr, ptr %2, align 4, !dbg !316
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !317
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !318
  ret i64 %5, !dbg !319
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !320 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !322
  %3 = load ptr, ptr %2, align 4, !dbg !323
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !324
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !325
  ret i64 %5, !dbg !326
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !327 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !330, metadata !DIExpression()), !dbg !331
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !332, metadata !DIExpression()), !dbg !333
  %5 = load ptr, ptr %4, align 4, !dbg !334
  %6 = load ptr, ptr %3, align 4, !dbg !335
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !336
  store ptr %5, ptr %7, align 4, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %2, align 4, !dbg !344
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !345
  %5 = load ptr, ptr %4, align 4, !dbg !345
  ret ptr %5, !dbg !346
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !347 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !368, metadata !DIExpression()), !dbg !369
  %3 = load ptr, ptr %2, align 4, !dbg !370
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !371
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !372
  %6 = zext i1 %5 to i32, !dbg !373
  ret i32 %6, !dbg !374
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !375 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !385
  %3 = load ptr, ptr %2, align 4, !dbg !386
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !387
  %5 = load i32, ptr %4, align 4, !dbg !387
  ret i32 %5, !dbg !388
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !389 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !407, metadata !DIExpression()), !dbg !408
  %3 = load ptr, ptr %2, align 4, !dbg !409
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !410
  %5 = load i32, ptr %4, align 4, !dbg !410
  %6 = load ptr, ptr %2, align 4, !dbg !411
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !412
  %8 = load i32, ptr %7, align 4, !dbg !412
  %9 = sub i32 %5, %8, !dbg !413
  ret i32 %9, !dbg !414
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !417
  %3 = load ptr, ptr %2, align 4, !dbg !418
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !419
  ret i32 %5, !dbg !420
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_thread_abort(ptr noundef %0) #0 !dbg !421 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !427
  %4 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !428
  %5 = load ptr, ptr %3, align 4, !dbg !430
  %6 = icmp eq ptr %4, %5, !dbg !431
  br i1 %6, label %7, label %19, !dbg !432

7:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !438
  %8 = call i32 asm sideeffect "MRS $0, ipsr", "=r"() #3, !dbg !448, !srcloc !449
  store i32 %8, ptr %2, align 4, !dbg !448
  %9 = load i32, ptr %2, align 4, !dbg !450
  %10 = icmp ne i32 %9, 0, !dbg !451
  %11 = zext i1 %10 to i64, !dbg !451
  %12 = select i1 %10, i32 1, i32 0, !dbg !451
  br i1 %10, label %13, label %18, !dbg !452

13:                                               ; preds = %7
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !453
  %15 = or i32 %14, 268435456, !dbg !453
  store volatile i32 %15, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !453
  %16 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 8), align 4, !dbg !455
  %17 = and i32 %16, -32769, !dbg !455
  store volatile i32 %17, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 8), align 4, !dbg !455
  br label %18, !dbg !456

18:                                               ; preds = %13, %7
  br label %19, !dbg !457

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr %3, align 4, !dbg !458
  call void @z_thread_abort(ptr noundef %20), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @z_thread_abort(ptr noundef) #2

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !461 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !465, metadata !DIExpression()), !dbg !466
  %3 = load ptr, ptr %2, align 4, !dbg !467
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !468
  %5 = icmp eq ptr %4, null, !dbg !469
  ret i1 %5, !dbg !470
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !471 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !474, metadata !DIExpression()), !dbg !475
  %3 = load ptr, ptr %2, align 4, !dbg !476
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !477
  %5 = load ptr, ptr %4, align 4, !dbg !477
  ret ptr %5, !dbg !478
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "thread_abort.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87, !109, !110}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !89, line: 352, baseType: !90)
!89 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !89, line: 341, size: 320, elements: !91)
!91 = !{!92, !98, !99, !100, !101, !102, !103, !104, !108}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !90, file: !89, line: 343, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 64, baseType: !97)
!96 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !90, file: !89, line: 344, baseType: !94, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !90, file: !89, line: 345, baseType: !95, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !90, file: !89, line: 346, baseType: !94, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !90, file: !89, line: 347, baseType: !94, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !90, file: !89, line: 348, baseType: !94, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !90, file: !89, line: 349, baseType: !95, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !90, file: !89, line: 350, baseType: !105, size: 64, offset: 224)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 2)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !90, file: !89, line: 351, baseType: !94, size: 32, offset: 288)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !{i32 7, !"Dwarf Version", i32 4}
!112 = !{i32 2, !"Debug Info Version", i32 3}
!113 = !{i32 1, !"wchar_size", i32 4}
!114 = !{i32 1, !"static_rwdata", i32 1}
!115 = !{i32 1, !"enumsize_buildattr", i32 1}
!116 = !{i32 1, !"armlib_unavailable", i32 0}
!117 = !{i32 8, !"PIC Level", i32 2}
!118 = !{i32 7, !"PIE Level", i32 2}
!119 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!120 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !121, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, !125}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !127, line: 250, size: 896, elements: !128)
!127 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!128 = !{!129, !197, !210, !211, !212, !213, !234}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !126, file: !127, line: 252, baseType: !130, size: 384)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !127, line: 58, size: 384, elements: !131)
!131 = !{!132, !158, !166, !168, !169, !182, !183, !184}
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !127, line: 61, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !127, line: 61, size: 64, elements: !134)
!134 = !{!135, !151}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !133, file: !127, line: 62, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !137, line: 55, baseType: !138)
!137 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !137, line: 37, size: 64, elements: !139)
!139 = !{!140, !146}
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !137, line: 38, baseType: !141, size: 32)
!141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !137, line: 38, size: 32, elements: !142)
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !141, file: !137, line: 39, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !137, line: 40, baseType: !144, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !138, file: !137, line: 42, baseType: !147, size: 32, offset: 32)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !138, file: !137, line: 42, size: 32, elements: !148)
!148 = !{!149, !150}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !147, file: !137, line: 43, baseType: !144, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !137, line: 44, baseType: !144, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !133, file: !127, line: 63, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !153, line: 58, size: 64, elements: !154)
!153 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !152, file: !153, line: 60, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !106)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !130, file: !127, line: 69, baseType: !159, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !161, line: 243, baseType: !162)
!161 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !161, line: 241, size: 64, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !162, file: !161, line: 242, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !137, line: 51, baseType: !138)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !130, file: !127, line: 72, baseType: !167, size: 8, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 62, baseType: !5)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !130, file: !127, line: 75, baseType: !167, size: 8, offset: 104)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !130, file: !127, line: 91, baseType: !170, size: 16, offset: 112)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !130, file: !127, line: 91, size: 16, elements: !171)
!171 = !{!172, !179}
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !170, file: !127, line: 92, baseType: !173, size: 16)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !170, file: !127, line: 92, size: 16, elements: !174)
!174 = !{!175, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !173, file: !127, line: 97, baseType: !176, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !96, line: 56, baseType: !177)
!177 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !173, file: !127, line: 98, baseType: !167, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !170, file: !127, line: 101, baseType: !180, size: 16)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 63, baseType: !181)
!181 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !130, file: !127, line: 108, baseType: !95, size: 32, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !130, file: !127, line: 132, baseType: !109, size: 32, offset: 160)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !130, file: !127, line: 136, baseType: !185, size: 192, offset: 192)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !161, line: 254, size: 192, elements: !186)
!186 = !{!187, !188, !194}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !185, file: !161, line: 255, baseType: !136, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !185, file: !161, line: 256, baseType: !189, size: 32, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !161, line: 252, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !193}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !185, file: !161, line: 259, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !96, line: 59, baseType: !196)
!196 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !126, file: !127, line: 255, baseType: !198, size: 288, offset: 384)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !199, line: 25, size: 288, elements: !200)
!199 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !209}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !198, file: !199, line: 26, baseType: !95, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !198, file: !199, line: 27, baseType: !95, size: 32, offset: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !198, file: !199, line: 28, baseType: !95, size: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !198, file: !199, line: 29, baseType: !95, size: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !198, file: !199, line: 30, baseType: !95, size: 32, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !198, file: !199, line: 31, baseType: !95, size: 32, offset: 160)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !198, file: !199, line: 32, baseType: !95, size: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !198, file: !199, line: 33, baseType: !95, size: 32, offset: 224)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !198, file: !199, line: 34, baseType: !95, size: 32, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !126, file: !127, line: 258, baseType: !109, size: 32, offset: 672)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !126, file: !127, line: 261, baseType: !160, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !126, file: !127, line: 302, baseType: !110, size: 32, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !126, file: !127, line: 333, baseType: !214, size: 32, offset: 800)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !216, line: 5291, size: 160, elements: !217)
!216 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!217 = !{!218, !229, !230}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !215, file: !216, line: 5292, baseType: !219, size: 96)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !220, line: 56, size: 96, elements: !221)
!220 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!221 = !{!222, !225, !226}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !219, file: !220, line: 57, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!224 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !220, line: 57, flags: DIFlagFwdDecl)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !219, file: !220, line: 58, baseType: !109, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !219, file: !220, line: 59, baseType: !227, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !228, line: 46, baseType: !97)
!228 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !215, file: !216, line: 5293, baseType: !160, size: 64, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !215, file: !216, line: 5294, baseType: !231, offset: 160)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !232, line: 45, elements: !233)
!232 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!233 = !{}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !126, file: !127, line: 355, baseType: !235, size: 64, offset: 832)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !199, line: 60, size: 64, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !235, file: !199, line: 63, baseType: !95, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !235, file: !199, line: 66, baseType: !95, size: 32, offset: 32)
!239 = !DILocalVariable(name: "object", arg: 1, scope: !120, file: !4, line: 223, type: !123)
!240 = !DILocation(line: 223, column: 61, scope: !120)
!241 = !DILocalVariable(name: "thread", arg: 2, scope: !120, file: !4, line: 224, type: !125)
!242 = !DILocation(line: 224, column: 24, scope: !120)
!243 = !DILocation(line: 226, column: 9, scope: !120)
!244 = !DILocation(line: 227, column: 9, scope: !120)
!245 = !DILocation(line: 228, column: 1, scope: !120)
!246 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !247, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !123}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !246, file: !4, line: 243, type: !123)
!250 = !DILocation(line: 243, column: 56, scope: !246)
!251 = !DILocation(line: 245, column: 9, scope: !246)
!252 = !DILocation(line: 246, column: 1, scope: !246)
!253 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !254, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!254 = !DISubroutineType(types: !255)
!255 = !{!109, !3}
!256 = !DILocalVariable(name: "otype", arg: 1, scope: !253, file: !4, line: 359, type: !3)
!257 = !DILocation(line: 359, column: 58, scope: !253)
!258 = !DILocation(line: 361, column: 9, scope: !253)
!259 = !DILocation(line: 363, column: 2, scope: !253)
!260 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !261, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!261 = !DISubroutineType(types: !262)
!262 = !{!109, !3, !227}
!263 = !DILocalVariable(name: "otype", arg: 1, scope: !260, file: !4, line: 366, type: !3)
!264 = !DILocation(line: 366, column: 63, scope: !260)
!265 = !DILocalVariable(name: "size", arg: 2, scope: !260, file: !4, line: 367, type: !227)
!266 = !DILocation(line: 367, column: 13, scope: !260)
!267 = !DILocation(line: 369, column: 9, scope: !260)
!268 = !DILocation(line: 370, column: 9, scope: !260)
!269 = !DILocation(line: 372, column: 2, scope: !260)
!270 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !216, file: !216, line: 656, type: !271, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !274, line: 46, baseType: !195)
!274 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!277 = !DILocalVariable(name: "t", arg: 1, scope: !270, file: !216, line: 657, type: !275)
!278 = !DILocation(line: 657, column: 30, scope: !270)
!279 = !DILocation(line: 659, column: 28, scope: !270)
!280 = !DILocation(line: 659, column: 31, scope: !270)
!281 = !DILocation(line: 659, column: 36, scope: !270)
!282 = !DILocation(line: 659, column: 9, scope: !270)
!283 = !DILocation(line: 659, column: 2, scope: !270)
!284 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !216, file: !216, line: 671, type: !271, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!285 = !DILocalVariable(name: "t", arg: 1, scope: !284, file: !216, line: 672, type: !275)
!286 = !DILocation(line: 672, column: 30, scope: !284)
!287 = !DILocation(line: 674, column: 30, scope: !284)
!288 = !DILocation(line: 674, column: 33, scope: !284)
!289 = !DILocation(line: 674, column: 38, scope: !284)
!290 = !DILocation(line: 674, column: 9, scope: !284)
!291 = !DILocation(line: 674, column: 2, scope: !284)
!292 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !216, file: !216, line: 1634, type: !293, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!293 = !DISubroutineType(types: !294)
!294 = !{!273, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !216, line: 1439, size: 448, elements: !298)
!298 = !{!299, !300, !301, !306, !307, !312, !313}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !297, file: !216, line: 1445, baseType: !185, size: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !297, file: !216, line: 1448, baseType: !160, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !297, file: !216, line: 1451, baseType: !302, size: 32, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 32)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !297, file: !216, line: 1454, baseType: !302, size: 32, offset: 288)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !297, file: !216, line: 1457, baseType: !308, size: 64, offset: 320)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !274, line: 67, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !274, line: 65, size: 64, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !309, file: !274, line: 66, baseType: !273, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !297, file: !216, line: 1460, baseType: !95, size: 32, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !297, file: !216, line: 1463, baseType: !109, size: 32, offset: 416)
!314 = !DILocalVariable(name: "timer", arg: 1, scope: !292, file: !216, line: 1635, type: !295)
!315 = !DILocation(line: 1635, column: 34, scope: !292)
!316 = !DILocation(line: 1637, column: 28, scope: !292)
!317 = !DILocation(line: 1637, column: 35, scope: !292)
!318 = !DILocation(line: 1637, column: 9, scope: !292)
!319 = !DILocation(line: 1637, column: 2, scope: !292)
!320 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !216, file: !216, line: 1649, type: !293, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!321 = !DILocalVariable(name: "timer", arg: 1, scope: !320, file: !216, line: 1650, type: !295)
!322 = !DILocation(line: 1650, column: 34, scope: !320)
!323 = !DILocation(line: 1652, column: 30, scope: !320)
!324 = !DILocation(line: 1652, column: 37, scope: !320)
!325 = !DILocation(line: 1652, column: 9, scope: !320)
!326 = !DILocation(line: 1652, column: 2, scope: !320)
!327 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !216, file: !216, line: 1689, type: !328, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !305, !109}
!330 = !DILocalVariable(name: "timer", arg: 1, scope: !327, file: !216, line: 1689, type: !305)
!331 = !DILocation(line: 1689, column: 65, scope: !327)
!332 = !DILocalVariable(name: "user_data", arg: 2, scope: !327, file: !216, line: 1690, type: !109)
!333 = !DILocation(line: 1690, column: 19, scope: !327)
!334 = !DILocation(line: 1692, column: 21, scope: !327)
!335 = !DILocation(line: 1692, column: 2, scope: !327)
!336 = !DILocation(line: 1692, column: 9, scope: !327)
!337 = !DILocation(line: 1692, column: 19, scope: !327)
!338 = !DILocation(line: 1693, column: 1, scope: !327)
!339 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !216, file: !216, line: 1704, type: !340, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!340 = !DISubroutineType(types: !341)
!341 = !{!109, !295}
!342 = !DILocalVariable(name: "timer", arg: 1, scope: !339, file: !216, line: 1704, type: !295)
!343 = !DILocation(line: 1704, column: 72, scope: !339)
!344 = !DILocation(line: 1706, column: 9, scope: !339)
!345 = !DILocation(line: 1706, column: 16, scope: !339)
!346 = !DILocation(line: 1706, column: 2, scope: !339)
!347 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !216, file: !216, line: 2071, type: !348, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!348 = !DISubroutineType(types: !349)
!349 = !{!110, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !216, line: 1830, size: 128, elements: !352)
!352 = !{!353, !366, !367}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !351, file: !216, line: 1831, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !355, line: 60, baseType: !356)
!355 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !355, line: 53, size: 64, elements: !357)
!357 = !{!358, !365}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !356, file: !355, line: 54, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !355, line: 50, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !355, line: 44, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !361, file: !355, line: 45, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !355, line: 40, baseType: !95)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !356, file: !355, line: 55, baseType: !359, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !216, line: 1832, baseType: !231, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !351, file: !216, line: 1833, baseType: !160, size: 64, offset: 64)
!368 = !DILocalVariable(name: "queue", arg: 1, scope: !347, file: !216, line: 2071, type: !350)
!369 = !DILocation(line: 2071, column: 59, scope: !347)
!370 = !DILocation(line: 2073, column: 35, scope: !347)
!371 = !DILocation(line: 2073, column: 42, scope: !347)
!372 = !DILocation(line: 2073, column: 14, scope: !347)
!373 = !DILocation(line: 2073, column: 9, scope: !347)
!374 = !DILocation(line: 2073, column: 2, scope: !347)
!375 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !216, file: !216, line: 3209, type: !376, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!376 = !DISubroutineType(types: !377)
!377 = !{!97, !378}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 32)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !216, line: 3092, size: 128, elements: !380)
!380 = !{!381, !382, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !379, file: !216, line: 3093, baseType: !160, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !379, file: !216, line: 3094, baseType: !97, size: 32, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !379, file: !216, line: 3095, baseType: !97, size: 32, offset: 96)
!384 = !DILocalVariable(name: "sem", arg: 1, scope: !375, file: !216, line: 3209, type: !378)
!385 = !DILocation(line: 3209, column: 65, scope: !375)
!386 = !DILocation(line: 3211, column: 9, scope: !375)
!387 = !DILocation(line: 3211, column: 14, scope: !375)
!388 = !DILocation(line: 3211, column: 2, scope: !375)
!389 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !216, file: !216, line: 4649, type: !390, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!390 = !DISubroutineType(types: !391)
!391 = !{!95, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !216, line: 4390, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !402, !403, !404, !405, !406}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !216, line: 4392, baseType: !160, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !216, line: 4394, baseType: !231, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !393, file: !216, line: 4396, baseType: !227, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !393, file: !216, line: 4398, baseType: !95, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !393, file: !216, line: 4400, baseType: !400, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32)
!401 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !393, file: !216, line: 4402, baseType: !400, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !393, file: !216, line: 4404, baseType: !400, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !393, file: !216, line: 4406, baseType: !400, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !393, file: !216, line: 4408, baseType: !95, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !216, line: 4413, baseType: !167, size: 8, offset: 288)
!407 = !DILocalVariable(name: "msgq", arg: 1, scope: !389, file: !216, line: 4649, type: !392)
!408 = !DILocation(line: 4649, column: 66, scope: !389)
!409 = !DILocation(line: 4651, column: 9, scope: !389)
!410 = !DILocation(line: 4651, column: 15, scope: !389)
!411 = !DILocation(line: 4651, column: 26, scope: !389)
!412 = !DILocation(line: 4651, column: 32, scope: !389)
!413 = !DILocation(line: 4651, column: 24, scope: !389)
!414 = !DILocation(line: 4651, column: 2, scope: !389)
!415 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !216, file: !216, line: 4665, type: !390, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!416 = !DILocalVariable(name: "msgq", arg: 1, scope: !415, file: !216, line: 4665, type: !392)
!417 = !DILocation(line: 4665, column: 66, scope: !415)
!418 = !DILocation(line: 4667, column: 9, scope: !415)
!419 = !DILocation(line: 4667, column: 15, scope: !415)
!420 = !DILocation(line: 4667, column: 2, scope: !415)
!421 = distinct !DISubprogram(name: "z_impl_k_thread_abort", scope: !422, file: !422, line: 26, type: !423, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !233)
!422 = !DIFile(filename: "arch/arm/core/cortex_m/thread_abort.c", directory: "/home/sri/zephyrproject/zephyr")
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_tid_t", file: !127, line: 359, baseType: !125)
!426 = !DILocalVariable(name: "thread", arg: 1, scope: !421, file: !422, line: 26, type: !425)
!427 = !DILocation(line: 26, column: 36, scope: !421)
!428 = !DILocation(line: 28, column: 22, scope: !429)
!429 = distinct !DILexicalBlock(scope: !421, file: !422, line: 28, column: 6)
!430 = !DILocation(line: 28, column: 33, scope: !429)
!431 = !DILocation(line: 28, column: 30, scope: !429)
!432 = !DILocation(line: 28, column: 6, scope: !421)
!433 = !DILocalVariable(name: "result", scope: !434, file: !435, line: 820, type: !95)
!434 = distinct !DISubprogram(name: "__get_IPSR", scope: !435, file: !435, line: 818, type: !436, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!435 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/cmsis_armclang.h", directory: "/home/sri/zephyrproject")
!436 = !DISubroutineType(types: !437)
!437 = !{!95}
!438 = !DILocation(line: 820, column: 12, scope: !434, inlinedAt: !439)
!439 = distinct !DILocation(line: 48, column: 10, scope: !440, inlinedAt: !445)
!440 = distinct !DISubprogram(name: "arch_is_in_isr", scope: !441, file: !441, line: 46, type: !442, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!441 = !DIFile(filename: "arch/arm/include/cortex_m/exc.h", directory: "/home/sri/zephyrproject/zephyr")
!442 = !DISubroutineType(types: !443)
!443 = !{!444}
!444 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!445 = distinct !DILocation(line: 29, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !422, line: 29, column: 7)
!447 = distinct !DILexicalBlock(scope: !429, file: !422, line: 28, column: 41)
!448 = !DILocation(line: 822, column: 3, scope: !434, inlinedAt: !439)
!449 = !{i64 168344}
!450 = !DILocation(line: 823, column: 10, scope: !434, inlinedAt: !439)
!451 = !DILocation(line: 48, column: 9, scope: !440, inlinedAt: !445)
!452 = !DILocation(line: 29, column: 7, scope: !447)
!453 = !DILocation(line: 41, column: 54, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !422, line: 29, column: 25)
!455 = !DILocation(line: 47, column: 55, scope: !454)
!456 = !DILocation(line: 48, column: 3, scope: !454)
!457 = !DILocation(line: 49, column: 2, scope: !447)
!458 = !DILocation(line: 51, column: 17, scope: !421)
!459 = !DILocation(line: 51, column: 2, scope: !421)
!460 = !DILocation(line: 52, column: 1, scope: !421)
!461 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !355, file: !355, line: 335, type: !462, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!462 = !DISubroutineType(types: !463)
!463 = !{!444, !464}
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!465 = !DILocalVariable(name: "list", arg: 1, scope: !461, file: !355, line: 335, type: !464)
!466 = !DILocation(line: 335, column: 55, scope: !461)
!467 = !DILocation(line: 335, column: 92, scope: !461)
!468 = !DILocation(line: 335, column: 71, scope: !461)
!469 = !DILocation(line: 335, column: 98, scope: !461)
!470 = !DILocation(line: 335, column: 63, scope: !461)
!471 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !355, file: !355, line: 255, type: !472, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !233)
!472 = !DISubroutineType(types: !473)
!473 = !{!359, !464}
!474 = !DILocalVariable(name: "list", arg: 1, scope: !471, file: !355, line: 255, type: !464)
!475 = !DILocation(line: 255, column: 64, scope: !471)
!476 = !DILocation(line: 257, column: 9, scope: !471)
!477 = !DILocation(line: 257, column: 15, scope: !471)
!478 = !DILocation(line: 257, column: 2, scope: !471)
