; ModuleID = '../bc_files/prep_c.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/prep_c.c"
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

@_vector_end = external dso_local global [0 x i8], align 1
@_vector_start = external dso_local global [0 x i8], align 1

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !99 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !225
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !224, metadata !DIExpression()), !dbg !226
  %5 = load ptr, ptr %3, align 4, !dbg !227
  %6 = load ptr, ptr %4, align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !234, metadata !DIExpression()), !dbg !235
  %3 = load ptr, ptr %2, align 4, !dbg !236
  ret void, !dbg !237
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !238 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !242, metadata !DIExpression()), !dbg !243
  %3 = load i8, ptr %2, align 1, !dbg !244
  ret ptr null, !dbg !245
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !246 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !252
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !253
  %5 = load i8, ptr %3, align 1, !dbg !254
  %6 = load i32, ptr %4, align 4, !dbg !255
  ret ptr null, !dbg !256
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !257 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load ptr, ptr %2, align 4, !dbg !267
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !268
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !269
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !270
  ret i64 %6, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !274, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr %2, align 4, !dbg !276
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !277
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !278
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !279
  ret i64 %6, !dbg !280
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !281 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !305
  %3 = load ptr, ptr %2, align 4, !dbg !306
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !307
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !308
  ret i64 %5, !dbg !309
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !310 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !312, metadata !DIExpression()), !dbg !313
  %3 = load ptr, ptr %2, align 4, !dbg !314
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !315
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !316
  ret i64 %5, !dbg !317
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !318 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !324
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !323, metadata !DIExpression()), !dbg !325
  %5 = load ptr, ptr %4, align 4, !dbg !326
  %6 = load ptr, ptr %3, align 4, !dbg !327
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !328
  store ptr %5, ptr %7, align 4, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !331 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !336
  %3 = load ptr, ptr %2, align 4, !dbg !337
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !338
  %5 = load ptr, ptr %4, align 4, !dbg !338
  ret ptr %5, !dbg !339
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !340 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !363
  %3 = load ptr, ptr %2, align 4, !dbg !364
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !365
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !366
  %6 = zext i1 %5 to i32, !dbg !367
  ret i32 %6, !dbg !368
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !369 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !379, metadata !DIExpression()), !dbg !380
  %3 = load ptr, ptr %2, align 4, !dbg !381
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !382
  %5 = load i32, ptr %4, align 4, !dbg !382
  ret i32 %5, !dbg !383
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !384 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !403, metadata !DIExpression()), !dbg !404
  %3 = load ptr, ptr %2, align 4, !dbg !405
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !406
  %5 = load i32, ptr %4, align 4, !dbg !406
  %6 = load ptr, ptr %2, align 4, !dbg !407
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !408
  %8 = load i32, ptr %7, align 4, !dbg !408
  %9 = sub i32 %5, %8, !dbg !409
  ret i32 %9, !dbg !410
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !413, metadata !DIExpression()), !dbg !414
  %3 = load ptr, ptr %2, align 4, !dbg !415
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !416
  %5 = load i32, ptr %4, align 4, !dbg !416
  ret i32 %5, !dbg !417
}

; Function Attrs: nounwind optsize
define weak hidden void @relocate_vector_table() #1 !dbg !418 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8, !dbg !424
  call void @llvm.dbg.declare(metadata ptr %1, metadata !423, metadata !DIExpression()), !dbg !425
  store i32 sub (i32 ptrtoint (ptr @_vector_end to i32), i32 ptrtoint (ptr @_vector_start to i32)), ptr %1, align 4, !dbg !425
  %2 = load i32, ptr %1, align 4, !dbg !426
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 null, ptr align 1 @_vector_start, i32 %2, i1 false), !dbg !427
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8, !dbg !428
  ret void, !dbg !428
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden void @z_arm_prep_c() #1 !dbg !429 {
  call void @relocate_vector_table() #7, !dbg !430
  call void @z_bss_zero() #7, !dbg !431
  call void @z_data_copy() #7, !dbg !432
  call void @z_arm_interrupt_init() #7, !dbg !433
  call void @z_cstart() #9, !dbg !434
  unreachable, !dbg !434
}

; Function Attrs: optsize
declare !dbg !435 dso_local void @z_bss_zero() #5

; Function Attrs: optsize
declare !dbg !437 dso_local void @z_data_copy() #5

; Function Attrs: optsize
declare !dbg !438 dso_local void @z_arm_interrupt_init() #5

; Function Attrs: noreturn optsize
declare !dbg !440 dso_local void @z_cstart() #6

; Function Attrs: optsize
declare !dbg !441 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !446 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !447 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !453, metadata !DIExpression()), !dbg !454
  %3 = load ptr, ptr %2, align 4, !dbg !455
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !456
  %5 = icmp eq ptr %4, null, !dbg !457
  ret i1 %5, !dbg !458
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !459 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !463, metadata !DIExpression()), !dbg !464
  %3 = load ptr, ptr %2, align 4, !dbg !465
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !466
  %5 = load ptr, ptr %4, align 4, !dbg !466
  ret ptr %5, !dbg !467
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { noreturn optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "prep_c.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 51, baseType: !89)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
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
!99 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !100, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !104}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !106, line: 250, size: 896, elements: !107)
!106 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!107 = !{!108, !180, !193, !194, !195, !196, !217}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !105, file: !106, line: 252, baseType: !109, size: 384)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !106, line: 58, size: 384, elements: !110)
!110 = !{!111, !139, !147, !150, !151, !164, !166, !167}
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
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !149, line: 62, baseType: !5)
!149 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !109, file: !106, line: 75, baseType: !148, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !106, line: 91, baseType: !152, size: 16, offset: 112)
!152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !106, line: 91, size: 16, elements: !153)
!153 = !{!154, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !106, line: 92, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !152, file: !106, line: 92, size: 16, elements: !156)
!156 = !{!157, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !155, file: !106, line: 97, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !149, line: 56, baseType: !159)
!159 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !155, file: !106, line: 98, baseType: !148, size: 8, offset: 8)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !152, file: !106, line: 101, baseType: !162, size: 16)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !149, line: 63, baseType: !163)
!163 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !109, file: !106, line: 108, baseType: !165, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 64, baseType: !89)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !109, file: !106, line: 132, baseType: !90, size: 32, offset: 160)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !109, file: !106, line: 136, baseType: !168, size: 192, offset: 192)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !142, line: 254, size: 192, elements: !169)
!169 = !{!170, !171, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !142, line: 255, baseType: !115, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !168, file: !142, line: 256, baseType: !172, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !142, line: 252, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 32)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !168, file: !142, line: 259, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !149, line: 59, baseType: !179)
!179 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !105, file: !106, line: 255, baseType: !181, size: 288, offset: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !182, line: 25, size: 288, elements: !183)
!182 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !181, file: !182, line: 26, baseType: !165, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !181, file: !182, line: 27, baseType: !165, size: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !181, file: !182, line: 28, baseType: !165, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !181, file: !182, line: 29, baseType: !165, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !181, file: !182, line: 30, baseType: !165, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !181, file: !182, line: 31, baseType: !165, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !181, file: !182, line: 32, baseType: !165, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !181, file: !182, line: 33, baseType: !165, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !181, file: !182, line: 34, baseType: !165, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !105, file: !106, line: 258, baseType: !90, size: 32, offset: 672)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !105, file: !106, line: 261, baseType: !141, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !105, file: !106, line: 302, baseType: !91, size: 32, offset: 768)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !105, file: !106, line: 333, baseType: !197, size: 32, offset: 800)
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
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !202, file: !203, line: 58, baseType: !90, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !202, file: !203, line: 59, baseType: !210, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 46, baseType: !89)
!211 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !198, file: !199, line: 5293, baseType: !141, size: 64, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !198, file: !199, line: 5294, baseType: !214, offset: 160)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !215, line: 45, elements: !216)
!215 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!216 = !{}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !105, file: !106, line: 355, baseType: !218, size: 64, offset: 832)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !182, line: 60, size: 64, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !218, file: !182, line: 63, baseType: !165, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !218, file: !182, line: 66, baseType: !165, size: 32, offset: 32)
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "object", arg: 1, scope: !99, file: !4, line: 223, type: !102)
!224 = !DILocalVariable(name: "thread", arg: 2, scope: !99, file: !4, line: 224, type: !104)
!225 = !DILocation(line: 223, column: 61, scope: !99)
!226 = !DILocation(line: 224, column: 24, scope: !99)
!227 = !DILocation(line: 226, column: 9, scope: !99)
!228 = !DILocation(line: 227, column: 9, scope: !99)
!229 = !DILocation(line: 228, column: 1, scope: !99)
!230 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !231, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !102}
!233 = !{!234}
!234 = !DILocalVariable(name: "object", arg: 1, scope: !230, file: !4, line: 243, type: !102)
!235 = !DILocation(line: 243, column: 56, scope: !230)
!236 = !DILocation(line: 245, column: 9, scope: !230)
!237 = !DILocation(line: 246, column: 1, scope: !230)
!238 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !239, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!90, !3}
!241 = !{!242}
!242 = !DILocalVariable(name: "otype", arg: 1, scope: !238, file: !4, line: 359, type: !3)
!243 = !DILocation(line: 359, column: 58, scope: !238)
!244 = !DILocation(line: 361, column: 9, scope: !238)
!245 = !DILocation(line: 363, column: 2, scope: !238)
!246 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !247, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{!90, !3, !210}
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "otype", arg: 1, scope: !246, file: !4, line: 366, type: !3)
!251 = !DILocalVariable(name: "size", arg: 2, scope: !246, file: !4, line: 367, type: !210)
!252 = !DILocation(line: 366, column: 63, scope: !246)
!253 = !DILocation(line: 367, column: 13, scope: !246)
!254 = !DILocation(line: 369, column: 9, scope: !246)
!255 = !DILocation(line: 370, column: 9, scope: !246)
!256 = !DILocation(line: 372, column: 2, scope: !246)
!257 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !199, file: !199, line: 656, type: !258, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !262}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !261, line: 46, baseType: !178)
!261 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!264 = !{!265}
!265 = !DILocalVariable(name: "t", arg: 1, scope: !257, file: !199, line: 657, type: !262)
!266 = !DILocation(line: 657, column: 30, scope: !257)
!267 = !DILocation(line: 659, column: 28, scope: !257)
!268 = !DILocation(line: 659, column: 31, scope: !257)
!269 = !DILocation(line: 659, column: 36, scope: !257)
!270 = !DILocation(line: 659, column: 9, scope: !257)
!271 = !DILocation(line: 659, column: 2, scope: !257)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !199, file: !199, line: 671, type: !258, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !199, line: 672, type: !262)
!275 = !DILocation(line: 672, column: 30, scope: !272)
!276 = !DILocation(line: 674, column: 30, scope: !272)
!277 = !DILocation(line: 674, column: 33, scope: !272)
!278 = !DILocation(line: 674, column: 38, scope: !272)
!279 = !DILocation(line: 674, column: 9, scope: !272)
!280 = !DILocation(line: 674, column: 2, scope: !272)
!281 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !199, file: !199, line: 1634, type: !282, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !303)
!282 = !DISubroutineType(types: !283)
!283 = !{!260, !284}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 32)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !199, line: 1439, size: 448, elements: !287)
!287 = !{!288, !289, !290, !295, !296, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !286, file: !199, line: 1445, baseType: !168, size: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !286, file: !199, line: 1448, baseType: !141, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !286, file: !199, line: 1451, baseType: !291, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !286, file: !199, line: 1454, baseType: !291, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !286, file: !199, line: 1457, baseType: !297, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !261, line: 67, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 65, size: 64, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !298, file: !261, line: 66, baseType: !260, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !286, file: !199, line: 1460, baseType: !165, size: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !286, file: !199, line: 1463, baseType: !90, size: 32, offset: 416)
!303 = !{!304}
!304 = !DILocalVariable(name: "timer", arg: 1, scope: !281, file: !199, line: 1635, type: !284)
!305 = !DILocation(line: 1635, column: 34, scope: !281)
!306 = !DILocation(line: 1637, column: 28, scope: !281)
!307 = !DILocation(line: 1637, column: 35, scope: !281)
!308 = !DILocation(line: 1637, column: 9, scope: !281)
!309 = !DILocation(line: 1637, column: 2, scope: !281)
!310 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !199, file: !199, line: 1649, type: !282, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !311)
!311 = !{!312}
!312 = !DILocalVariable(name: "timer", arg: 1, scope: !310, file: !199, line: 1650, type: !284)
!313 = !DILocation(line: 1650, column: 34, scope: !310)
!314 = !DILocation(line: 1652, column: 30, scope: !310)
!315 = !DILocation(line: 1652, column: 37, scope: !310)
!316 = !DILocation(line: 1652, column: 9, scope: !310)
!317 = !DILocation(line: 1652, column: 2, scope: !310)
!318 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !199, file: !199, line: 1689, type: !319, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !294, !90}
!321 = !{!322, !323}
!322 = !DILocalVariable(name: "timer", arg: 1, scope: !318, file: !199, line: 1689, type: !294)
!323 = !DILocalVariable(name: "user_data", arg: 2, scope: !318, file: !199, line: 1690, type: !90)
!324 = !DILocation(line: 1689, column: 65, scope: !318)
!325 = !DILocation(line: 1690, column: 19, scope: !318)
!326 = !DILocation(line: 1692, column: 21, scope: !318)
!327 = !DILocation(line: 1692, column: 2, scope: !318)
!328 = !DILocation(line: 1692, column: 9, scope: !318)
!329 = !DILocation(line: 1692, column: 19, scope: !318)
!330 = !DILocation(line: 1693, column: 1, scope: !318)
!331 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !199, file: !199, line: 1704, type: !332, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!90, !284}
!334 = !{!335}
!335 = !DILocalVariable(name: "timer", arg: 1, scope: !331, file: !199, line: 1704, type: !284)
!336 = !DILocation(line: 1704, column: 72, scope: !331)
!337 = !DILocation(line: 1706, column: 9, scope: !331)
!338 = !DILocation(line: 1706, column: 16, scope: !331)
!339 = !DILocation(line: 1706, column: 2, scope: !331)
!340 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !199, file: !199, line: 2071, type: !341, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!341 = !DISubroutineType(types: !342)
!342 = !{!91, !343}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 32)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !199, line: 1830, size: 128, elements: !345)
!345 = !{!346, !359, !360}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !344, file: !199, line: 1831, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !348, line: 60, baseType: !349)
!348 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !348, line: 53, size: 64, elements: !350)
!350 = !{!351, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !349, file: !348, line: 54, baseType: !352, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !348, line: 50, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !348, line: 44, size: 32, elements: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !354, file: !348, line: 45, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !348, line: 40, baseType: !165)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !349, file: !348, line: 55, baseType: !352, size: 32, offset: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !344, file: !199, line: 1832, baseType: !214, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !344, file: !199, line: 1833, baseType: !141, size: 64, offset: 64)
!361 = !{!362}
!362 = !DILocalVariable(name: "queue", arg: 1, scope: !340, file: !199, line: 2071, type: !343)
!363 = !DILocation(line: 2071, column: 59, scope: !340)
!364 = !DILocation(line: 2073, column: 35, scope: !340)
!365 = !DILocation(line: 2073, column: 42, scope: !340)
!366 = !DILocation(line: 2073, column: 14, scope: !340)
!367 = !DILocation(line: 2073, column: 9, scope: !340)
!368 = !DILocation(line: 2073, column: 2, scope: !340)
!369 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !199, file: !199, line: 3209, type: !370, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !378)
!370 = !DISubroutineType(types: !371)
!371 = !{!89, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !199, line: 3092, size: 128, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !373, file: !199, line: 3093, baseType: !141, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !373, file: !199, line: 3094, baseType: !89, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !373, file: !199, line: 3095, baseType: !89, size: 32, offset: 96)
!378 = !{!379}
!379 = !DILocalVariable(name: "sem", arg: 1, scope: !369, file: !199, line: 3209, type: !372)
!380 = !DILocation(line: 3209, column: 65, scope: !369)
!381 = !DILocation(line: 3211, column: 9, scope: !369)
!382 = !DILocation(line: 3211, column: 14, scope: !369)
!383 = !DILocation(line: 3211, column: 2, scope: !369)
!384 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !199, file: !199, line: 4649, type: !385, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!385 = !DISubroutineType(types: !386)
!386 = !{!165, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !199, line: 4390, size: 320, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !397, !398, !399, !400, !401}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !388, file: !199, line: 4392, baseType: !141, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !199, line: 4394, baseType: !214, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !388, file: !199, line: 4396, baseType: !210, size: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !388, file: !199, line: 4398, baseType: !165, size: 32, offset: 96)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !388, file: !199, line: 4400, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !388, file: !199, line: 4402, baseType: !395, size: 32, offset: 160)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !388, file: !199, line: 4404, baseType: !395, size: 32, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !388, file: !199, line: 4406, baseType: !395, size: 32, offset: 224)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !388, file: !199, line: 4408, baseType: !165, size: 32, offset: 256)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !199, line: 4413, baseType: !148, size: 8, offset: 288)
!402 = !{!403}
!403 = !DILocalVariable(name: "msgq", arg: 1, scope: !384, file: !199, line: 4649, type: !387)
!404 = !DILocation(line: 4649, column: 66, scope: !384)
!405 = !DILocation(line: 4651, column: 9, scope: !384)
!406 = !DILocation(line: 4651, column: 15, scope: !384)
!407 = !DILocation(line: 4651, column: 26, scope: !384)
!408 = !DILocation(line: 4651, column: 32, scope: !384)
!409 = !DILocation(line: 4651, column: 24, scope: !384)
!410 = !DILocation(line: 4651, column: 2, scope: !384)
!411 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !199, file: !199, line: 4665, type: !385, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!412 = !{!413}
!413 = !DILocalVariable(name: "msgq", arg: 1, scope: !411, file: !199, line: 4665, type: !387)
!414 = !DILocation(line: 4665, column: 66, scope: !411)
!415 = !DILocation(line: 4667, column: 9, scope: !411)
!416 = !DILocation(line: 4667, column: 15, scope: !411)
!417 = !DILocation(line: 4667, column: 2, scope: !411)
!418 = distinct !DISubprogram(name: "relocate_vector_table", scope: !419, file: !419, line: 56, type: !420, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !422)
!419 = !DIFile(filename: "arch/arm/core/cortex_m/prep_c.c", directory: "/home/sri/zephyrproject/zephyr")
!420 = !DISubroutineType(types: !421)
!421 = !{null}
!422 = !{!423}
!423 = !DILocalVariable(name: "vector_size", scope: !418, file: !419, line: 60, type: !87)
!424 = !DILocation(line: 60, column: 2, scope: !418)
!425 = !DILocation(line: 60, column: 9, scope: !418)
!426 = !DILocation(line: 61, column: 33, scope: !418)
!427 = !DILocation(line: 61, column: 8, scope: !418)
!428 = !DILocation(line: 65, column: 1, scope: !418)
!429 = distinct !DISubprogram(name: "z_arm_prep_c", scope: !419, file: !419, line: 182, type: !420, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!430 = !DILocation(line: 184, column: 2, scope: !429)
!431 = !DILocation(line: 188, column: 2, scope: !429)
!432 = !DILocation(line: 189, column: 2, scope: !429)
!433 = !DILocation(line: 190, column: 2, scope: !429)
!434 = !DILocation(line: 191, column: 2, scope: !429)
!435 = !DISubprogram(name: "z_bss_zero", scope: !436, file: !436, line: 35, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!436 = !DIFile(filename: "kernel/include/kernel_internal.h", directory: "/home/sri/zephyrproject/zephyr")
!437 = !DISubprogram(name: "z_data_copy", scope: !436, file: !436, line: 37, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!438 = !DISubprogram(name: "z_arm_interrupt_init", scope: !439, file: !439, line: 76, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!439 = !DIFile(filename: "include/zephyr/arch/arm/irq.h", directory: "/home/sri/zephyrproject/zephyr")
!440 = !DISubprogram(name: "z_cstart", scope: !419, file: !419, line: 173, type: !420, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !216)
!441 = !DISubprogram(name: "z_timeout_expires", scope: !199, file: !199, line: 642, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!442 = !DISubroutineType(types: !443)
!443 = !{!260, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!446 = !DISubprogram(name: "z_timeout_remaining", scope: !199, file: !199, line: 643, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !216)
!447 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !348, file: !348, line: 335, type: !448, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !452)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !451}
!450 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 32)
!452 = !{!453}
!453 = !DILocalVariable(name: "list", arg: 1, scope: !447, file: !348, line: 335, type: !451)
!454 = !DILocation(line: 335, column: 55, scope: !447)
!455 = !DILocation(line: 335, column: 92, scope: !447)
!456 = !DILocation(line: 335, column: 71, scope: !447)
!457 = !DILocation(line: 335, column: 98, scope: !447)
!458 = !DILocation(line: 335, column: 63, scope: !447)
!459 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !348, file: !348, line: 255, type: !460, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!352, !451}
!462 = !{!463}
!463 = !DILocalVariable(name: "list", arg: 1, scope: !459, file: !348, line: 255, type: !451)
!464 = !DILocation(line: 255, column: 64, scope: !459)
!465 = !DILocation(line: 257, column: 9, scope: !459)
!466 = !DILocation(line: 257, column: 15, scope: !459)
!467 = !DILocation(line: 257, column: 2, scope: !459)
