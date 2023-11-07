; ModuleID = '../bc_files/system_work_q.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/system_work_q.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.k_work_q = type { %struct.k_thread, %struct._slist, %struct._wait_q_t, %struct._wait_q_t, i32 }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._thread_arch = type { i32, i32 }
%struct._slist = type { ptr, ptr }
%struct._wait_q_t = type { %struct._dnode }
%struct.k_work_queue_config = type { ptr, i8 }
%struct.z_thread_stack_element = type { i8 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }

@__init_k_sys_work_q_init = internal constant %struct.init_entry { %union.init_function { ptr @k_sys_work_q_init }, ptr null }, section ".z_init_POST_KERNEL40_0_", align 4, !dbg !0
@k_sys_work_q = hidden global %struct.k_work_q zeroinitializer, align 8, !dbg !95
@.str = private unnamed_addr constant [9 x i8] c"sysworkq\00", align 1, !dbg !232
@__const.k_sys_work_q_init.cfg = private unnamed_addr constant %struct.k_work_queue_config { ptr @.str, i8 0 }, align 4
@sys_work_q_stack = internal global [1024 x %struct.z_thread_stack_element] zeroinitializer, section ".noinit.\22ZEPHYR_BASE/kernel/system_work_q.c\22.0", align 8, !dbg !238
@llvm.used = appending global [1 x ptr] [ptr @__init_k_sys_work_q_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !275 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !281, metadata !DIExpression()), !dbg !282
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !284
  %5 = load ptr, ptr %3, align 4, !dbg !285
  %6 = load ptr, ptr %4, align 4, !dbg !286
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !288 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !291, metadata !DIExpression()), !dbg !292
  %3 = load ptr, ptr %2, align 4, !dbg !293
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !295 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !298, metadata !DIExpression()), !dbg !299
  %3 = load i8, ptr %2, align 1, !dbg !300
  ret ptr null, !dbg !301
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !302 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !305, metadata !DIExpression()), !dbg !306
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !307, metadata !DIExpression()), !dbg !308
  %5 = load i8, ptr %3, align 1, !dbg !309
  %6 = load i32, ptr %4, align 4, !dbg !310
  ret ptr null, !dbg !311
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !312 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !322
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !323
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !324
  ret i64 %6, !dbg !325
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !326 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load ptr, ptr %2, align 4, !dbg !329
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !330
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !331
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !332
  ret i64 %6, !dbg !333
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !334 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !357
  %3 = load ptr, ptr %2, align 4, !dbg !358
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !359
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !360
  ret i64 %5, !dbg !361
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !362 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !363, metadata !DIExpression()), !dbg !364
  %3 = load ptr, ptr %2, align 4, !dbg !365
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !366
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !367
  ret i64 %5, !dbg !368
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !369 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !372, metadata !DIExpression()), !dbg !373
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !374, metadata !DIExpression()), !dbg !375
  %5 = load ptr, ptr %4, align 4, !dbg !376
  %6 = load ptr, ptr %3, align 4, !dbg !377
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !378
  store ptr %5, ptr %7, align 4, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !381 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !385
  %3 = load ptr, ptr %2, align 4, !dbg !386
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !387
  %5 = load ptr, ptr %4, align 4, !dbg !387
  ret ptr %5, !dbg !388
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !389 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !411
  %3 = load ptr, ptr %2, align 4, !dbg !412
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !413
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !414
  %6 = zext i1 %5 to i32, !dbg !415
  ret i32 %6, !dbg !416
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !417 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !427
  %3 = load ptr, ptr %2, align 4, !dbg !428
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !429
  %5 = load i32, ptr %4, align 4, !dbg !429
  ret i32 %5, !dbg !430
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !431 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !448, metadata !DIExpression()), !dbg !449
  %3 = load ptr, ptr %2, align 4, !dbg !450
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !451
  %5 = load i32, ptr %4, align 4, !dbg !451
  %6 = load ptr, ptr %2, align 4, !dbg !452
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !453
  %8 = load i32, ptr %7, align 4, !dbg !453
  %9 = sub i32 %5, %8, !dbg !454
  ret i32 %9, !dbg !455
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !456 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %2, align 4, !dbg !459
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !460
  %5 = load i32, ptr %4, align 4, !dbg !460
  ret i32 %5, !dbg !461
}

; Function Attrs: noinline nounwind optnone
define internal i32 @k_sys_work_q_init() #0 !dbg !462 {
  %1 = alloca %struct.k_work_queue_config, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !463, metadata !DIExpression()), !dbg !471
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %1, ptr align 4 @__const.k_sys_work_q_init.cfg, i32 8, i1 false), !dbg !471
  call void @k_work_queue_start(ptr noundef @k_sys_work_q, ptr noundef @sys_work_q_stack, i32 noundef 1024, i32 noundef -1, ptr noundef %1), !dbg !472
  ret i32 0, !dbg !473
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !474 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = load ptr, ptr %2, align 4, !dbg !480
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !481
  %5 = icmp eq ptr %4, null, !dbg !482
  ret i1 %5, !dbg !483
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !484 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !487, metadata !DIExpression()), !dbg !488
  %3 = load ptr, ptr %2, align 4, !dbg !489
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !490
  %5 = load ptr, ptr %4, align 4, !dbg !490
  ret ptr %5, !dbg !491
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

declare void @k_work_queue_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!266, !267, !268, !269, !270, !271, !272, !273}
!llvm.ident = !{!274}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__init_k_sys_work_q_init", scope: !2, file: !97, line: 36, type: !247, isLocal: true, isDefinition: true, align: 32)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !94, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "system_work_q.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!88 = !{!89, !90, !91}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 46, baseType: !93)
!92 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!93 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!94 = !{!0, !95, !232, !238}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "k_sys_work_q", scope: !2, file: !97, line: 20, type: !98, isLocal: false, isDefinition: true)
!97 = !DIFile(filename: "kernel/system_work_q.c", directory: "/home/sri/zephyrproject/zephyr")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_q", file: !99, line: 3996, size: 1152, elements: !100)
!99 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!100 = !{!101, !216, !229, !230, !231}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !98, file: !99, line: 3998, baseType: !102, size: 896)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !103, line: 250, size: 896, elements: !104)
!103 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!104 = !{!105, !177, !190, !191, !192, !193, !211}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !102, file: !103, line: 252, baseType: !106, size: 384)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !103, line: 58, size: 384, elements: !107)
!107 = !{!108, !136, !144, !147, !148, !161, !163, !164}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 61, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 61, size: 64, elements: !110)
!110 = !{!111, !127}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !109, file: !103, line: 62, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !113, line: 55, baseType: !114)
!113 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !113, line: 37, size: 64, elements: !115)
!115 = !{!116, !122}
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 38, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 38, size: 32, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !117, file: !113, line: 39, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !113, line: 40, baseType: !120, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !114, file: !113, line: 42, baseType: !123, size: 32, offset: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !114, file: !113, line: 42, size: 32, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !123, file: !113, line: 43, baseType: !120, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !123, file: !113, line: 44, baseType: !120, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !109, file: !103, line: 63, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !129, line: 58, size: 64, elements: !130)
!129 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !128, file: !129, line: 60, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !106, file: !103, line: 69, baseType: !137, size: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !139, line: 243, baseType: !140)
!139 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 241, size: 64, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !140, file: !139, line: 242, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !113, line: 51, baseType: !114)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !106, file: !103, line: 72, baseType: !145, size: 8, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !146, line: 62, baseType: !7)
!146 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !106, file: !103, line: 75, baseType: !145, size: 8, offset: 104)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !103, line: 91, baseType: !149, size: 16, offset: 112)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !103, line: 91, size: 16, elements: !150)
!150 = !{!151, !158}
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !103, line: 92, baseType: !152, size: 16)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !103, line: 92, size: 16, elements: !153)
!153 = !{!154, !157}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !152, file: !103, line: 97, baseType: !155, size: 8)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !146, line: 56, baseType: !156)
!156 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !152, file: !103, line: 98, baseType: !145, size: 8, offset: 8)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !149, file: !103, line: 101, baseType: !159, size: 16)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !146, line: 63, baseType: !160)
!160 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !106, file: !103, line: 108, baseType: !162, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !146, line: 64, baseType: !93)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !106, file: !103, line: 132, baseType: !89, size: 32, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !106, file: !103, line: 136, baseType: !165, size: 192, offset: 192)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !139, line: 254, size: 192, elements: !166)
!166 = !{!167, !168, !174}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !165, file: !139, line: 255, baseType: !112, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !165, file: !139, line: 256, baseType: !169, size: 32, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !139, line: 252, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 32)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !165, file: !139, line: 259, baseType: !175, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !146, line: 59, baseType: !176)
!176 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !102, file: !103, line: 255, baseType: !178, size: 288, offset: 384)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !179, line: 25, size: 288, elements: !180)
!179 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !178, file: !179, line: 26, baseType: !162, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !178, file: !179, line: 27, baseType: !162, size: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !178, file: !179, line: 28, baseType: !162, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !178, file: !179, line: 29, baseType: !162, size: 32, offset: 96)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !178, file: !179, line: 30, baseType: !162, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !178, file: !179, line: 31, baseType: !162, size: 32, offset: 160)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !178, file: !179, line: 32, baseType: !162, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !178, file: !179, line: 33, baseType: !162, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !178, file: !179, line: 34, baseType: !162, size: 32, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !102, file: !103, line: 258, baseType: !89, size: 32, offset: 672)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !102, file: !103, line: 261, baseType: !138, size: 64, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !102, file: !103, line: 302, baseType: !90, size: 32, offset: 768)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !102, file: !103, line: 333, baseType: !194, size: 32, offset: 800)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !99, line: 5291, size: 160, elements: !196)
!196 = !{!197, !206, !207}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !195, file: !99, line: 5292, baseType: !198, size: 96)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !199, line: 56, size: 96, elements: !200)
!199 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!200 = !{!201, !204, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !198, file: !199, line: 57, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !199, line: 57, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !198, file: !199, line: 58, baseType: !89, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !198, file: !199, line: 59, baseType: !91, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !195, file: !99, line: 5293, baseType: !138, size: 64, offset: 96)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !195, file: !99, line: 5294, baseType: !208, offset: 160)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !209, line: 45, elements: !210)
!209 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!210 = !{}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !102, file: !103, line: 355, baseType: !212, size: 64, offset: 832)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !179, line: 60, size: 64, elements: !213)
!213 = !{!214, !215}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !212, file: !179, line: 63, baseType: !162, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !212, file: !179, line: 66, baseType: !162, size: 32, offset: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !98, file: !99, line: 4005, baseType: !217, size: 64, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_slist_t", file: !218, line: 49, baseType: !219)
!218 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_slist", file: !218, line: 42, size: 64, elements: !220)
!220 = !{!221, !228}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !219, file: !218, line: 43, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !218, line: 39, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !218, line: 33, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !224, file: !218, line: 34, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !218, line: 44, baseType: !222, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "notifyq", scope: !98, file: !99, line: 4008, baseType: !138, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "drainq", scope: !98, file: !99, line: 4011, baseType: !138, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !98, file: !99, line: 4014, baseType: !162, size: 32, offset: 1088)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !97, line: 25, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 72, elements: !236)
!235 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !{!237}
!237 = !DISubrange(count: 9)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "sys_work_q_stack", scope: !2, file: !97, line: 17, type: !240, isLocal: true, isDefinition: true, align: 64)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 8192, elements: !245)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_thread_stack_element", file: !242, line: 47, size: 8, elements: !243)
!242 = !DIFile(filename: "include/zephyr/kernel/thread_stack.h", directory: "/home/sri/zephyrproject/zephyr")
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !241, file: !242, line: 48, baseType: !235, size: 8)
!245 = !{!246}
!246 = !DISubrange(count: 1024)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !249, line: 92, size: 64, elements: !250)
!249 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!250 = !{!251, !265}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !248, file: !249, line: 94, baseType: !252, size: 32)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !249, line: 59, size: 32, elements: !253)
!253 = !{!254, !258}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !252, file: !249, line: 66, baseType: !255, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 32)
!256 = !DISubroutineType(types: !257)
!257 = !{!90}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !252, file: !249, line: 75, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 32)
!260 = !DISubroutineType(types: !261)
!261 = !{!90, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !249, line: 50, flags: DIFlagFwdDecl)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !248, file: !249, line: 99, baseType: !262, size: 32, offset: 32)
!266 = !{i32 7, !"Dwarf Version", i32 4}
!267 = !{i32 2, !"Debug Info Version", i32 3}
!268 = !{i32 1, !"wchar_size", i32 4}
!269 = !{i32 1, !"static_rwdata", i32 1}
!270 = !{i32 1, !"enumsize_buildattr", i32 1}
!271 = !{i32 1, !"armlib_unavailable", i32 0}
!272 = !{i32 8, !"PIC Level", i32 2}
!273 = !{i32 7, !"PIE Level", i32 2}
!274 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!275 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !276, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !278, !280}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!281 = !DILocalVariable(name: "object", arg: 1, scope: !275, file: !6, line: 223, type: !278)
!282 = !DILocation(line: 223, column: 61, scope: !275)
!283 = !DILocalVariable(name: "thread", arg: 2, scope: !275, file: !6, line: 224, type: !280)
!284 = !DILocation(line: 224, column: 24, scope: !275)
!285 = !DILocation(line: 226, column: 9, scope: !275)
!286 = !DILocation(line: 227, column: 9, scope: !275)
!287 = !DILocation(line: 228, column: 1, scope: !275)
!288 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !289, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !278}
!291 = !DILocalVariable(name: "object", arg: 1, scope: !288, file: !6, line: 243, type: !278)
!292 = !DILocation(line: 243, column: 56, scope: !288)
!293 = !DILocation(line: 245, column: 9, scope: !288)
!294 = !DILocation(line: 246, column: 1, scope: !288)
!295 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !296, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!296 = !DISubroutineType(types: !297)
!297 = !{!89, !5}
!298 = !DILocalVariable(name: "otype", arg: 1, scope: !295, file: !6, line: 359, type: !5)
!299 = !DILocation(line: 359, column: 58, scope: !295)
!300 = !DILocation(line: 361, column: 9, scope: !295)
!301 = !DILocation(line: 363, column: 2, scope: !295)
!302 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !303, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!303 = !DISubroutineType(types: !304)
!304 = !{!89, !5, !91}
!305 = !DILocalVariable(name: "otype", arg: 1, scope: !302, file: !6, line: 366, type: !5)
!306 = !DILocation(line: 366, column: 63, scope: !302)
!307 = !DILocalVariable(name: "size", arg: 2, scope: !302, file: !6, line: 367, type: !91)
!308 = !DILocation(line: 367, column: 13, scope: !302)
!309 = !DILocation(line: 369, column: 9, scope: !302)
!310 = !DILocation(line: 370, column: 9, scope: !302)
!311 = !DILocation(line: 372, column: 2, scope: !302)
!312 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !99, file: !99, line: 656, type: !313, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !317}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !316, line: 46, baseType: !175)
!316 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!319 = !DILocalVariable(name: "t", arg: 1, scope: !312, file: !99, line: 657, type: !317)
!320 = !DILocation(line: 657, column: 30, scope: !312)
!321 = !DILocation(line: 659, column: 28, scope: !312)
!322 = !DILocation(line: 659, column: 31, scope: !312)
!323 = !DILocation(line: 659, column: 36, scope: !312)
!324 = !DILocation(line: 659, column: 9, scope: !312)
!325 = !DILocation(line: 659, column: 2, scope: !312)
!326 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !99, file: !99, line: 671, type: !313, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!327 = !DILocalVariable(name: "t", arg: 1, scope: !326, file: !99, line: 672, type: !317)
!328 = !DILocation(line: 672, column: 30, scope: !326)
!329 = !DILocation(line: 674, column: 30, scope: !326)
!330 = !DILocation(line: 674, column: 33, scope: !326)
!331 = !DILocation(line: 674, column: 38, scope: !326)
!332 = !DILocation(line: 674, column: 9, scope: !326)
!333 = !DILocation(line: 674, column: 2, scope: !326)
!334 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !99, file: !99, line: 1634, type: !335, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!335 = !DISubroutineType(types: !336)
!336 = !{!315, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !99, line: 1439, size: 448, elements: !340)
!340 = !{!341, !342, !343, !348, !349, !354, !355}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !339, file: !99, line: 1445, baseType: !165, size: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !339, file: !99, line: 1448, baseType: !138, size: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !339, file: !99, line: 1451, baseType: !344, size: 32, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 32)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !339, file: !99, line: 1454, baseType: !344, size: 32, offset: 288)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !339, file: !99, line: 1457, baseType: !350, size: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !316, line: 67, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !316, line: 65, size: 64, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !351, file: !316, line: 66, baseType: !315, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !339, file: !99, line: 1460, baseType: !162, size: 32, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !339, file: !99, line: 1463, baseType: !89, size: 32, offset: 416)
!356 = !DILocalVariable(name: "timer", arg: 1, scope: !334, file: !99, line: 1635, type: !337)
!357 = !DILocation(line: 1635, column: 34, scope: !334)
!358 = !DILocation(line: 1637, column: 28, scope: !334)
!359 = !DILocation(line: 1637, column: 35, scope: !334)
!360 = !DILocation(line: 1637, column: 9, scope: !334)
!361 = !DILocation(line: 1637, column: 2, scope: !334)
!362 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !99, file: !99, line: 1649, type: !335, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!363 = !DILocalVariable(name: "timer", arg: 1, scope: !362, file: !99, line: 1650, type: !337)
!364 = !DILocation(line: 1650, column: 34, scope: !362)
!365 = !DILocation(line: 1652, column: 30, scope: !362)
!366 = !DILocation(line: 1652, column: 37, scope: !362)
!367 = !DILocation(line: 1652, column: 9, scope: !362)
!368 = !DILocation(line: 1652, column: 2, scope: !362)
!369 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !99, file: !99, line: 1689, type: !370, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !347, !89}
!372 = !DILocalVariable(name: "timer", arg: 1, scope: !369, file: !99, line: 1689, type: !347)
!373 = !DILocation(line: 1689, column: 65, scope: !369)
!374 = !DILocalVariable(name: "user_data", arg: 2, scope: !369, file: !99, line: 1690, type: !89)
!375 = !DILocation(line: 1690, column: 19, scope: !369)
!376 = !DILocation(line: 1692, column: 21, scope: !369)
!377 = !DILocation(line: 1692, column: 2, scope: !369)
!378 = !DILocation(line: 1692, column: 9, scope: !369)
!379 = !DILocation(line: 1692, column: 19, scope: !369)
!380 = !DILocation(line: 1693, column: 1, scope: !369)
!381 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !99, file: !99, line: 1704, type: !382, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!382 = !DISubroutineType(types: !383)
!383 = !{!89, !337}
!384 = !DILocalVariable(name: "timer", arg: 1, scope: !381, file: !99, line: 1704, type: !337)
!385 = !DILocation(line: 1704, column: 72, scope: !381)
!386 = !DILocation(line: 1706, column: 9, scope: !381)
!387 = !DILocation(line: 1706, column: 16, scope: !381)
!388 = !DILocation(line: 1706, column: 2, scope: !381)
!389 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !99, file: !99, line: 2071, type: !390, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!390 = !DISubroutineType(types: !391)
!391 = !{!90, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !99, line: 1830, size: 128, elements: !394)
!394 = !{!395, !408, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !393, file: !99, line: 1831, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !397, line: 60, baseType: !398)
!397 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !397, line: 53, size: 64, elements: !399)
!399 = !{!400, !407}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !398, file: !397, line: 54, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !397, line: 50, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !397, line: 44, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !403, file: !397, line: 45, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !397, line: 40, baseType: !162)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !398, file: !397, line: 55, baseType: !401, size: 32, offset: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !99, line: 1832, baseType: !208, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !99, line: 1833, baseType: !138, size: 64, offset: 64)
!410 = !DILocalVariable(name: "queue", arg: 1, scope: !389, file: !99, line: 2071, type: !392)
!411 = !DILocation(line: 2071, column: 59, scope: !389)
!412 = !DILocation(line: 2073, column: 35, scope: !389)
!413 = !DILocation(line: 2073, column: 42, scope: !389)
!414 = !DILocation(line: 2073, column: 14, scope: !389)
!415 = !DILocation(line: 2073, column: 9, scope: !389)
!416 = !DILocation(line: 2073, column: 2, scope: !389)
!417 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !99, file: !99, line: 3209, type: !418, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!418 = !DISubroutineType(types: !419)
!419 = !{!93, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 32)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !99, line: 3092, size: 128, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !421, file: !99, line: 3093, baseType: !138, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !421, file: !99, line: 3094, baseType: !93, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !421, file: !99, line: 3095, baseType: !93, size: 32, offset: 96)
!426 = !DILocalVariable(name: "sem", arg: 1, scope: !417, file: !99, line: 3209, type: !420)
!427 = !DILocation(line: 3209, column: 65, scope: !417)
!428 = !DILocation(line: 3211, column: 9, scope: !417)
!429 = !DILocation(line: 3211, column: 14, scope: !417)
!430 = !DILocation(line: 3211, column: 2, scope: !417)
!431 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !99, file: !99, line: 4649, type: !432, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!432 = !DISubroutineType(types: !433)
!433 = !{!162, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 32)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !99, line: 4390, size: 320, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !443, !444, !445, !446, !447}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !435, file: !99, line: 4392, baseType: !138, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !435, file: !99, line: 4394, baseType: !208, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !435, file: !99, line: 4396, baseType: !91, size: 32, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !435, file: !99, line: 4398, baseType: !162, size: 32, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !435, file: !99, line: 4400, baseType: !442, size: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !435, file: !99, line: 4402, baseType: !442, size: 32, offset: 160)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !435, file: !99, line: 4404, baseType: !442, size: 32, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !435, file: !99, line: 4406, baseType: !442, size: 32, offset: 224)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !435, file: !99, line: 4408, baseType: !162, size: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !99, line: 4413, baseType: !145, size: 8, offset: 288)
!448 = !DILocalVariable(name: "msgq", arg: 1, scope: !431, file: !99, line: 4649, type: !434)
!449 = !DILocation(line: 4649, column: 66, scope: !431)
!450 = !DILocation(line: 4651, column: 9, scope: !431)
!451 = !DILocation(line: 4651, column: 15, scope: !431)
!452 = !DILocation(line: 4651, column: 26, scope: !431)
!453 = !DILocation(line: 4651, column: 32, scope: !431)
!454 = !DILocation(line: 4651, column: 24, scope: !431)
!455 = !DILocation(line: 4651, column: 2, scope: !431)
!456 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !99, file: !99, line: 4665, type: !432, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!457 = !DILocalVariable(name: "msgq", arg: 1, scope: !456, file: !99, line: 4665, type: !434)
!458 = !DILocation(line: 4665, column: 66, scope: !456)
!459 = !DILocation(line: 4667, column: 9, scope: !456)
!460 = !DILocation(line: 4667, column: 15, scope: !456)
!461 = !DILocation(line: 4667, column: 2, scope: !456)
!462 = distinct !DISubprogram(name: "k_sys_work_q_init", scope: !97, file: !97, line: 22, type: !256, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!463 = !DILocalVariable(name: "cfg", scope: !462, file: !97, line: 24, type: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_work_queue_config", file: !99, line: 3973, size: 64, elements: !465)
!465 = !{!466, !469}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !99, line: 3978, baseType: !467, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "no_yield", scope: !464, file: !99, line: 3992, baseType: !470, size: 8, offset: 32)
!470 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!471 = !DILocation(line: 24, column: 29, scope: !462)
!472 = !DILocation(line: 29, column: 2, scope: !462)
!473 = !DILocation(line: 33, column: 2, scope: !462)
!474 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !397, file: !397, line: 335, type: !475, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!475 = !DISubroutineType(types: !476)
!476 = !{!470, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!478 = !DILocalVariable(name: "list", arg: 1, scope: !474, file: !397, line: 335, type: !477)
!479 = !DILocation(line: 335, column: 55, scope: !474)
!480 = !DILocation(line: 335, column: 92, scope: !474)
!481 = !DILocation(line: 335, column: 71, scope: !474)
!482 = !DILocation(line: 335, column: 98, scope: !474)
!483 = !DILocation(line: 335, column: 63, scope: !474)
!484 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !397, file: !397, line: 255, type: !485, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !210)
!485 = !DISubroutineType(types: !486)
!486 = !{!401, !477}
!487 = !DILocalVariable(name: "list", arg: 1, scope: !484, file: !397, line: 255, type: !477)
!488 = !DILocation(line: 255, column: 64, scope: !484)
!489 = !DILocation(line: 257, column: 9, scope: !484)
!490 = !DILocation(line: 257, column: 15, scope: !484)
!491 = !DILocation(line: 257, column: 2, scope: !484)
