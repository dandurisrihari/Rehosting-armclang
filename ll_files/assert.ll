; ModuleID = '../bc_files/assert.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/assert.c"
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
%struct.__va_list = type { ptr }

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !107 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !231, metadata !DIExpression()), !dbg !232
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !233, metadata !DIExpression()), !dbg !234
  %5 = load ptr, ptr %3, align 4, !dbg !235
  %6 = load ptr, ptr %4, align 4, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !238 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load ptr, ptr %2, align 4, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !245 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !248, metadata !DIExpression()), !dbg !249
  %3 = load i8, ptr %2, align 1, !dbg !250
  ret ptr null, !dbg !251
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !252 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !256
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !257, metadata !DIExpression()), !dbg !258
  %5 = load i8, ptr %3, align 1, !dbg !259
  %6 = load i32, ptr %4, align 4, !dbg !260
  ret ptr null, !dbg !261
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !262 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !269, metadata !DIExpression()), !dbg !270
  %3 = load ptr, ptr %2, align 4, !dbg !271
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !272
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !273
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !274
  ret i64 %6, !dbg !275
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !276 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !277, metadata !DIExpression()), !dbg !278
  %3 = load ptr, ptr %2, align 4, !dbg !279
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !280
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !281
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !282
  ret i64 %6, !dbg !283
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !284 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !307
  %3 = load ptr, ptr %2, align 4, !dbg !308
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !309
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !310
  ret i64 %5, !dbg !311
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !312 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !313, metadata !DIExpression()), !dbg !314
  %3 = load ptr, ptr %2, align 4, !dbg !315
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !316
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !317
  ret i64 %5, !dbg !318
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !319 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !323
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !324, metadata !DIExpression()), !dbg !325
  %5 = load ptr, ptr %4, align 4, !dbg !326
  %6 = load ptr, ptr %3, align 4, !dbg !327
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !328
  store ptr %5, ptr %7, align 4, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load ptr, ptr %2, align 4, !dbg !336
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !337
  %5 = load ptr, ptr %4, align 4, !dbg !337
  ret ptr %5, !dbg !338
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !339 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !360, metadata !DIExpression()), !dbg !361
  %3 = load ptr, ptr %2, align 4, !dbg !362
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !363
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !364
  %6 = zext i1 %5 to i32, !dbg !365
  ret i32 %6, !dbg !366
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !367 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !376, metadata !DIExpression()), !dbg !377
  %3 = load ptr, ptr %2, align 4, !dbg !378
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !379
  %5 = load i32, ptr %4, align 4, !dbg !379
  ret i32 %5, !dbg !380
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !381 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !399, metadata !DIExpression()), !dbg !400
  %3 = load ptr, ptr %2, align 4, !dbg !401
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !402
  %5 = load i32, ptr %4, align 4, !dbg !402
  %6 = load ptr, ptr %2, align 4, !dbg !403
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !404
  %8 = load i32, ptr %7, align 4, !dbg !404
  %9 = sub i32 %5, %8, !dbg !405
  ret i32 %9, !dbg !406
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !407 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !408, metadata !DIExpression()), !dbg !409
  %3 = load ptr, ptr %2, align 4, !dbg !410
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !411
  %5 = load i32, ptr %4, align 4, !dbg !411
  ret i32 %5, !dbg !412
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @assert_post_action(ptr noundef %0, i32 noundef %1) #0 !dbg !413 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !419, metadata !DIExpression()), !dbg !420
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !422
  %6 = load ptr, ptr %3, align 4, !dbg !423
  %7 = load i32, ptr %4, align 4, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %5, metadata !425, metadata !DIExpression()), !dbg !426
  store i32 4, ptr %5, align 4, !dbg !426
  br label %8, !dbg !427

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4, !dbg !428
  call void asm sideeffect "cpsie i\0A\09svc $1\0A\09", "{r0},i,~{memory}"(i32 %9, i32 2) #4, !dbg !430, !srcloc !431
  br label %10, !dbg !432

10:                                               ; preds = %8
  ret void, !dbg !433
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @assert_print(ptr noundef %0, ...) #0 !dbg !434 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.__va_list, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !439, metadata !DIExpression()), !dbg !446
  call void @llvm.va_start(ptr %3), !dbg !447
  %4 = load ptr, ptr %2, align 4, !dbg !448
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !449
  %6 = load [1 x i32], ptr %5, align 4, !dbg !449
  call void @vprintk(ptr noundef %4, [1 x i32] %6), !dbg !449
  call void @llvm.va_end(ptr %3), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

declare void @vprintk(ptr noundef, [1 x i32]) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

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

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !95, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "assert.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !13}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_fatal_error_reason", file: !4, line: 24, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "include/zephyr/fatal_types.h", directory: "/home/sri/zephyrproject/zephyr")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "K_ERR_CPU_EXCEPTION", value: 0)
!8 = !DIEnumerator(name: "K_ERR_SPURIOUS_IRQ", value: 1)
!9 = !DIEnumerator(name: "K_ERR_STACK_CHK_FAIL", value: 2)
!10 = !DIEnumerator(name: "K_ERR_KERNEL_OOPS", value: 3)
!11 = !DIEnumerator(name: "K_ERR_KERNEL_PANIC", value: 4)
!12 = !DIEnumerator(name: "K_ERR_ARCH_START", value: 16)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !14, line: 29, baseType: !5, size: 8, elements: !15)
!14 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!16 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!17 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!18 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!19 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!20 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!21 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!22 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!23 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!24 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!25 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!26 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!27 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!28 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!29 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!30 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!31 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!32 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!87 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!88 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!89 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!90 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!91 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!92 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!93 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!94 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!97 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!98 = !{i32 7, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 1, !"static_rwdata", i32 1}
!102 = !{i32 1, !"enumsize_buildattr", i32 1}
!103 = !{i32 1, !"armlib_unavailable", i32 0}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!107 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !14, file: !14, line: 223, type: !108, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !110, !112}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !114, line: 250, size: 896, elements: !115)
!114 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!115 = !{!116, !189, !202, !203, !204, !205, !226}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !113, file: !114, line: 252, baseType: !117, size: 384)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !114, line: 58, size: 384, elements: !118)
!118 = !{!119, !147, !155, !158, !159, !172, !175, !176}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !114, line: 61, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !114, line: 61, size: 64, elements: !121)
!121 = !{!122, !138}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !120, file: !114, line: 62, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !124, line: 55, baseType: !125)
!124 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !124, line: 37, size: 64, elements: !126)
!126 = !{!127, !133}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 38, baseType: !128, size: 32)
!128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 38, size: 32, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !128, file: !124, line: 39, baseType: !131, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !128, file: !124, line: 40, baseType: !131, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !124, line: 42, baseType: !134, size: 32, offset: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !124, line: 42, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !134, file: !124, line: 43, baseType: !131, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !124, line: 44, baseType: !131, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !120, file: !114, line: 63, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !140, line: 58, size: 64, elements: !141)
!140 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !139, file: !140, line: 60, baseType: !143, size: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!145 = !{!146}
!146 = !DISubrange(count: 2)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !117, file: !114, line: 69, baseType: !148, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !150, line: 243, baseType: !151)
!150 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 241, size: 64, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !151, file: !150, line: 242, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !124, line: 51, baseType: !125)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !117, file: !114, line: 72, baseType: !156, size: 8, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !157, line: 62, baseType: !5)
!157 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !117, file: !114, line: 75, baseType: !156, size: 8, offset: 104)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !114, line: 91, baseType: !160, size: 16, offset: 112)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !114, line: 91, size: 16, elements: !161)
!161 = !{!162, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !114, line: 92, baseType: !163, size: 16)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !160, file: !114, line: 92, size: 16, elements: !164)
!164 = !{!165, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !163, file: !114, line: 97, baseType: !166, size: 8)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !157, line: 56, baseType: !167)
!167 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !163, file: !114, line: 98, baseType: !156, size: 8, offset: 8)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !160, file: !114, line: 101, baseType: !170, size: 16)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !157, line: 63, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !117, file: !114, line: 108, baseType: !173, size: 32, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !157, line: 64, baseType: !174)
!174 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !117, file: !114, line: 132, baseType: !96, size: 32, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !117, file: !114, line: 136, baseType: !177, size: 192, offset: 192)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !150, line: 254, size: 192, elements: !178)
!178 = !{!179, !180, !186}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !177, file: !150, line: 255, baseType: !123, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !177, file: !150, line: 256, baseType: !181, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !150, line: 252, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !177, file: !150, line: 259, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !157, line: 59, baseType: !188)
!188 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !113, file: !114, line: 255, baseType: !190, size: 288, offset: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !191, line: 25, size: 288, elements: !192)
!191 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !190, file: !191, line: 26, baseType: !173, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !190, file: !191, line: 27, baseType: !173, size: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !190, file: !191, line: 28, baseType: !173, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !190, file: !191, line: 29, baseType: !173, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !190, file: !191, line: 30, baseType: !173, size: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !190, file: !191, line: 31, baseType: !173, size: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !190, file: !191, line: 32, baseType: !173, size: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !190, file: !191, line: 33, baseType: !173, size: 32, offset: 224)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !190, file: !191, line: 34, baseType: !173, size: 32, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !113, file: !114, line: 258, baseType: !96, size: 32, offset: 672)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !113, file: !114, line: 261, baseType: !149, size: 64, offset: 704)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !113, file: !114, line: 302, baseType: !97, size: 32, offset: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !113, file: !114, line: 333, baseType: !206, size: 32, offset: 800)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !208, line: 5291, size: 160, elements: !209)
!208 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210, !221, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !207, file: !208, line: 5292, baseType: !211, size: 96)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !212, line: 56, size: 96, elements: !213)
!212 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!213 = !{!214, !217, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !211, file: !212, line: 57, baseType: !215, size: 32)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 32)
!216 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !212, line: 57, flags: DIFlagFwdDecl)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !211, file: !212, line: 58, baseType: !96, size: 32, offset: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !211, file: !212, line: 59, baseType: !219, size: 32, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 46, baseType: !174)
!220 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !207, file: !208, line: 5293, baseType: !149, size: 64, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !207, file: !208, line: 5294, baseType: !223, offset: 160)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !224, line: 45, elements: !225)
!224 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !{}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !113, file: !114, line: 355, baseType: !227, size: 64, offset: 832)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !191, line: 60, size: 64, elements: !228)
!228 = !{!229, !230}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !227, file: !191, line: 63, baseType: !173, size: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !227, file: !191, line: 66, baseType: !173, size: 32, offset: 32)
!231 = !DILocalVariable(name: "object", arg: 1, scope: !107, file: !14, line: 223, type: !110)
!232 = !DILocation(line: 223, column: 61, scope: !107)
!233 = !DILocalVariable(name: "thread", arg: 2, scope: !107, file: !14, line: 224, type: !112)
!234 = !DILocation(line: 224, column: 24, scope: !107)
!235 = !DILocation(line: 226, column: 9, scope: !107)
!236 = !DILocation(line: 227, column: 9, scope: !107)
!237 = !DILocation(line: 228, column: 1, scope: !107)
!238 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !14, file: !14, line: 243, type: !239, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !110}
!241 = !DILocalVariable(name: "object", arg: 1, scope: !238, file: !14, line: 243, type: !110)
!242 = !DILocation(line: 243, column: 56, scope: !238)
!243 = !DILocation(line: 245, column: 9, scope: !238)
!244 = !DILocation(line: 246, column: 1, scope: !238)
!245 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !14, file: !14, line: 359, type: !246, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!246 = !DISubroutineType(types: !247)
!247 = !{!96, !13}
!248 = !DILocalVariable(name: "otype", arg: 1, scope: !245, file: !14, line: 359, type: !13)
!249 = !DILocation(line: 359, column: 58, scope: !245)
!250 = !DILocation(line: 361, column: 9, scope: !245)
!251 = !DILocation(line: 363, column: 2, scope: !245)
!252 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !14, file: !14, line: 366, type: !253, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!253 = !DISubroutineType(types: !254)
!254 = !{!96, !13, !219}
!255 = !DILocalVariable(name: "otype", arg: 1, scope: !252, file: !14, line: 366, type: !13)
!256 = !DILocation(line: 366, column: 63, scope: !252)
!257 = !DILocalVariable(name: "size", arg: 2, scope: !252, file: !14, line: 367, type: !219)
!258 = !DILocation(line: 367, column: 13, scope: !252)
!259 = !DILocation(line: 369, column: 9, scope: !252)
!260 = !DILocation(line: 370, column: 9, scope: !252)
!261 = !DILocation(line: 372, column: 2, scope: !252)
!262 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !208, file: !208, line: 656, type: !263, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !266, line: 46, baseType: !187)
!266 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!269 = !DILocalVariable(name: "t", arg: 1, scope: !262, file: !208, line: 657, type: !267)
!270 = !DILocation(line: 657, column: 30, scope: !262)
!271 = !DILocation(line: 659, column: 28, scope: !262)
!272 = !DILocation(line: 659, column: 31, scope: !262)
!273 = !DILocation(line: 659, column: 36, scope: !262)
!274 = !DILocation(line: 659, column: 9, scope: !262)
!275 = !DILocation(line: 659, column: 2, scope: !262)
!276 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !208, file: !208, line: 671, type: !263, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!277 = !DILocalVariable(name: "t", arg: 1, scope: !276, file: !208, line: 672, type: !267)
!278 = !DILocation(line: 672, column: 30, scope: !276)
!279 = !DILocation(line: 674, column: 30, scope: !276)
!280 = !DILocation(line: 674, column: 33, scope: !276)
!281 = !DILocation(line: 674, column: 38, scope: !276)
!282 = !DILocation(line: 674, column: 9, scope: !276)
!283 = !DILocation(line: 674, column: 2, scope: !276)
!284 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !208, file: !208, line: 1634, type: !285, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!285 = !DISubroutineType(types: !286)
!286 = !{!265, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !208, line: 1439, size: 448, elements: !290)
!290 = !{!291, !292, !293, !298, !299, !304, !305}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !289, file: !208, line: 1445, baseType: !177, size: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !289, file: !208, line: 1448, baseType: !149, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !289, file: !208, line: 1451, baseType: !294, size: 32, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 32)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !289, file: !208, line: 1454, baseType: !294, size: 32, offset: 288)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !289, file: !208, line: 1457, baseType: !300, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !266, line: 67, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 65, size: 64, elements: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !301, file: !266, line: 66, baseType: !265, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !289, file: !208, line: 1460, baseType: !173, size: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !289, file: !208, line: 1463, baseType: !96, size: 32, offset: 416)
!306 = !DILocalVariable(name: "timer", arg: 1, scope: !284, file: !208, line: 1635, type: !287)
!307 = !DILocation(line: 1635, column: 34, scope: !284)
!308 = !DILocation(line: 1637, column: 28, scope: !284)
!309 = !DILocation(line: 1637, column: 35, scope: !284)
!310 = !DILocation(line: 1637, column: 9, scope: !284)
!311 = !DILocation(line: 1637, column: 2, scope: !284)
!312 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !208, file: !208, line: 1649, type: !285, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!313 = !DILocalVariable(name: "timer", arg: 1, scope: !312, file: !208, line: 1650, type: !287)
!314 = !DILocation(line: 1650, column: 34, scope: !312)
!315 = !DILocation(line: 1652, column: 30, scope: !312)
!316 = !DILocation(line: 1652, column: 37, scope: !312)
!317 = !DILocation(line: 1652, column: 9, scope: !312)
!318 = !DILocation(line: 1652, column: 2, scope: !312)
!319 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !208, file: !208, line: 1689, type: !320, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !297, !96}
!322 = !DILocalVariable(name: "timer", arg: 1, scope: !319, file: !208, line: 1689, type: !297)
!323 = !DILocation(line: 1689, column: 65, scope: !319)
!324 = !DILocalVariable(name: "user_data", arg: 2, scope: !319, file: !208, line: 1690, type: !96)
!325 = !DILocation(line: 1690, column: 19, scope: !319)
!326 = !DILocation(line: 1692, column: 21, scope: !319)
!327 = !DILocation(line: 1692, column: 2, scope: !319)
!328 = !DILocation(line: 1692, column: 9, scope: !319)
!329 = !DILocation(line: 1692, column: 19, scope: !319)
!330 = !DILocation(line: 1693, column: 1, scope: !319)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !208, file: !208, line: 1704, type: !332, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!332 = !DISubroutineType(types: !333)
!333 = !{!96, !287}
!334 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !208, line: 1704, type: !287)
!335 = !DILocation(line: 1704, column: 72, scope: !331)
!336 = !DILocation(line: 1706, column: 9, scope: !331)
!337 = !DILocation(line: 1706, column: 16, scope: !331)
!338 = !DILocation(line: 1706, column: 2, scope: !331)
!339 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !208, file: !208, line: 2071, type: !340, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!340 = !DISubroutineType(types: !341)
!341 = !{!97, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !208, line: 1830, size: 128, elements: !344)
!344 = !{!345, !358, !359}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !343, file: !208, line: 1831, baseType: !346, size: 64)
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
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !347, line: 40, baseType: !173)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !348, file: !347, line: 55, baseType: !351, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !343, file: !208, line: 1832, baseType: !223, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !343, file: !208, line: 1833, baseType: !149, size: 64, offset: 64)
!360 = !DILocalVariable(name: "queue", arg: 1, scope: !339, file: !208, line: 2071, type: !342)
!361 = !DILocation(line: 2071, column: 59, scope: !339)
!362 = !DILocation(line: 2073, column: 35, scope: !339)
!363 = !DILocation(line: 2073, column: 42, scope: !339)
!364 = !DILocation(line: 2073, column: 14, scope: !339)
!365 = !DILocation(line: 2073, column: 9, scope: !339)
!366 = !DILocation(line: 2073, column: 2, scope: !339)
!367 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !208, file: !208, line: 3209, type: !368, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!368 = !DISubroutineType(types: !369)
!369 = !{!174, !370}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !208, line: 3092, size: 128, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !371, file: !208, line: 3093, baseType: !149, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !371, file: !208, line: 3094, baseType: !174, size: 32, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !371, file: !208, line: 3095, baseType: !174, size: 32, offset: 96)
!376 = !DILocalVariable(name: "sem", arg: 1, scope: !367, file: !208, line: 3209, type: !370)
!377 = !DILocation(line: 3209, column: 65, scope: !367)
!378 = !DILocation(line: 3211, column: 9, scope: !367)
!379 = !DILocation(line: 3211, column: 14, scope: !367)
!380 = !DILocation(line: 3211, column: 2, scope: !367)
!381 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !208, file: !208, line: 4649, type: !382, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!382 = !DISubroutineType(types: !383)
!383 = !{!173, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 32)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !208, line: 4390, size: 320, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !394, !395, !396, !397, !398}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !385, file: !208, line: 4392, baseType: !149, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !385, file: !208, line: 4394, baseType: !223, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !385, file: !208, line: 4396, baseType: !219, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !385, file: !208, line: 4398, baseType: !173, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !385, file: !208, line: 4400, baseType: !392, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !385, file: !208, line: 4402, baseType: !392, size: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !385, file: !208, line: 4404, baseType: !392, size: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !385, file: !208, line: 4406, baseType: !392, size: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !385, file: !208, line: 4408, baseType: !173, size: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !208, line: 4413, baseType: !156, size: 8, offset: 288)
!399 = !DILocalVariable(name: "msgq", arg: 1, scope: !381, file: !208, line: 4649, type: !384)
!400 = !DILocation(line: 4649, column: 66, scope: !381)
!401 = !DILocation(line: 4651, column: 9, scope: !381)
!402 = !DILocation(line: 4651, column: 15, scope: !381)
!403 = !DILocation(line: 4651, column: 26, scope: !381)
!404 = !DILocation(line: 4651, column: 32, scope: !381)
!405 = !DILocation(line: 4651, column: 24, scope: !381)
!406 = !DILocation(line: 4651, column: 2, scope: !381)
!407 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !208, file: !208, line: 4665, type: !382, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!408 = !DILocalVariable(name: "msgq", arg: 1, scope: !407, file: !208, line: 4665, type: !384)
!409 = !DILocation(line: 4665, column: 66, scope: !407)
!410 = !DILocation(line: 4667, column: 9, scope: !407)
!411 = !DILocation(line: 4667, column: 15, scope: !407)
!412 = !DILocation(line: 4667, column: 2, scope: !407)
!413 = distinct !DISubprogram(name: "assert_post_action", scope: !414, file: !414, line: 26, type: !415, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !225)
!414 = !DIFile(filename: "lib/os/assert.c", directory: "/home/sri/zephyrproject/zephyr")
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417, !174}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!419 = !DILocalVariable(name: "file", arg: 1, scope: !413, file: !414, line: 26, type: !417)
!420 = !DILocation(line: 26, column: 63, scope: !413)
!421 = !DILocalVariable(name: "line", arg: 2, scope: !413, file: !414, line: 26, type: !174)
!422 = !DILocation(line: 26, column: 82, scope: !413)
!423 = !DILocation(line: 30, column: 9, scope: !413)
!424 = !DILocation(line: 31, column: 9, scope: !413)
!425 = !DILocalVariable(name: "r0", scope: !413, file: !414, line: 43, type: !173)
!426 = !DILocation(line: 43, column: 20, scope: !413)
!427 = !DILocation(line: 43, column: 59, scope: !413)
!428 = !DILocation(line: 43, column: 122, scope: !429)
!429 = distinct !DILexicalBlock(scope: !413, file: !414, line: 43, column: 62)
!430 = !DILocation(line: 43, column: 64, scope: !429)
!431 = !{i64 158834, i64 158844, i64 158860}
!432 = !DILocation(line: 43, column: 153, scope: !429)
!433 = !DILocation(line: 44, column: 1, scope: !413)
!434 = distinct !DISubprogram(name: "assert_print", scope: !414, file: !414, line: 46, type: !435, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !225)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !417, null}
!437 = !DILocalVariable(name: "fmt", arg: 1, scope: !434, file: !414, line: 46, type: !417)
!438 = !DILocation(line: 46, column: 31, scope: !434)
!439 = !DILocalVariable(name: "ap", scope: !434, file: !414, line: 48, type: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !441, line: 22, baseType: !442)
!441 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !443, file: !1, line: 48, baseType: !96, size: 32)
!446 = !DILocation(line: 48, column: 10, scope: !434)
!447 = !DILocation(line: 50, column: 2, scope: !434)
!448 = !DILocation(line: 52, column: 10, scope: !434)
!449 = !DILocation(line: 52, column: 2, scope: !434)
!450 = !DILocation(line: 54, column: 2, scope: !434)
!451 = !DILocation(line: 55, column: 1, scope: !434)
!452 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !347, file: !347, line: 335, type: !453, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !456}
!455 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 32)
!457 = !DILocalVariable(name: "list", arg: 1, scope: !452, file: !347, line: 335, type: !456)
!458 = !DILocation(line: 335, column: 55, scope: !452)
!459 = !DILocation(line: 335, column: 92, scope: !452)
!460 = !DILocation(line: 335, column: 71, scope: !452)
!461 = !DILocation(line: 335, column: 98, scope: !452)
!462 = !DILocation(line: 335, column: 63, scope: !452)
!463 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !347, file: !347, line: 255, type: !464, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !225)
!464 = !DISubroutineType(types: !465)
!465 = !{!351, !456}
!466 = !DILocalVariable(name: "list", arg: 1, scope: !463, file: !347, line: 255, type: !456)
!467 = !DILocation(line: 255, column: 64, scope: !463)
!468 = !DILocation(line: 257, column: 9, scope: !463)
!469 = !DILocation(line: 257, column: 15, scope: !463)
!470 = !DILocation(line: 257, column: 2, scope: !463)
