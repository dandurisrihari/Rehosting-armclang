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
@_kernel = external dso_local global %struct.z_kernel, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !103 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !228, metadata !DIExpression()), !dbg !230
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !229, metadata !DIExpression()), !dbg !231
  %5 = load ptr, ptr %3, align 4, !dbg !232
  %6 = load ptr, ptr %4, align 4, !dbg !233
  ret void, !dbg !234
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !235 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 4, !dbg !241
  ret void, !dbg !242
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !243 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !247, metadata !DIExpression()), !dbg !248
  %3 = load i8, ptr %2, align 1, !dbg !249
  ret ptr null, !dbg !250
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !251 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !255, metadata !DIExpression()), !dbg !257
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !256, metadata !DIExpression()), !dbg !258
  %5 = load i8, ptr %3, align 1, !dbg !259
  %6 = load i32, ptr %4, align 4, !dbg !260
  ret ptr null, !dbg !261
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !262 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !270, metadata !DIExpression()), !dbg !271
  %3 = load ptr, ptr %2, align 4, !dbg !272
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !273
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !274
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #5, !dbg !275
  ret i64 %6, !dbg !276
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !277 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !279, metadata !DIExpression()), !dbg !280
  %3 = load ptr, ptr %2, align 4, !dbg !281
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !282
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !283
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #5, !dbg !284
  ret i64 %6, !dbg !285
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !286 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !309, metadata !DIExpression()), !dbg !310
  %3 = load ptr, ptr %2, align 4, !dbg !311
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !312
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #5, !dbg !313
  ret i64 %5, !dbg !314
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !315 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !317, metadata !DIExpression()), !dbg !318
  %3 = load ptr, ptr %2, align 4, !dbg !319
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !320
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #5, !dbg !321
  ret i64 %5, !dbg !322
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !323 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !329
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !328, metadata !DIExpression()), !dbg !330
  %5 = load ptr, ptr %4, align 4, !dbg !331
  %6 = load ptr, ptr %3, align 4, !dbg !332
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !333
  store ptr %5, ptr %7, align 4, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !336 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !341
  %3 = load ptr, ptr %2, align 4, !dbg !342
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !343
  %5 = load ptr, ptr %4, align 4, !dbg !343
  ret ptr %5, !dbg !344
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !367, metadata !DIExpression()), !dbg !368
  %3 = load ptr, ptr %2, align 4, !dbg !369
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !370
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #5, !dbg !371
  %6 = zext i1 %5 to i32, !dbg !372
  ret i32 %6, !dbg !373
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !374 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !384, metadata !DIExpression()), !dbg !385
  %3 = load ptr, ptr %2, align 4, !dbg !386
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !387
  %5 = load i32, ptr %4, align 4, !dbg !387
  ret i32 %5, !dbg !388
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !389 {
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

; Function Attrs: nounwind optsize
define hidden void @__stdout_hook_install(ptr noundef %0) #1 !dbg !423 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !427, metadata !DIExpression()), !dbg !428
  %3 = load ptr, ptr %2, align 4, !dbg !429
  store ptr %3, ptr @_stdout_hook, align 4, !dbg !430
  ret void, !dbg !431
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize willreturn memory(none)
define hidden ptr @__aeabi_errno_addr() #3 !dbg !432 {
  %1 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !437
  %2 = getelementptr inbounds %struct.k_thread, ptr %1, i32 0, i32 4, !dbg !438
  ret ptr %2, !dbg !439
}

; Function Attrs: nounwind optsize
define hidden i32 @fputc(i32 noundef %0, ptr noundef nonnull %1) #1 !dbg !440 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !458, metadata !DIExpression()), !dbg !460
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !459, metadata !DIExpression()), !dbg !461
  %5 = load ptr, ptr @_stdout_hook, align 4, !dbg !462
  %6 = load i32, ptr %3, align 4, !dbg !463
  %7 = call i32 %5(i32 noundef %6) #5, !dbg !464
  ret i32 %7, !dbg !465
}

; Function Attrs: optsize
declare !dbg !466 dso_local i64 @z_timeout_expires(ptr noundef) #4

; Function Attrs: optsize
declare !dbg !471 dso_local i64 @z_timeout_remaining(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !472 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = load ptr, ptr %2, align 4, !dbg !480
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #5, !dbg !481
  %5 = icmp eq ptr %4, null, !dbg !482
  ret i1 %5, !dbg !483
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !484 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !488, metadata !DIExpression()), !dbg !489
  %3 = load ptr, ptr %2, align 4, !dbg !490
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !491
  %5 = load ptr, ptr %4, align 4, !dbg !491
  ret ptr %5, !dbg !492
}

; Function Attrs: nounwind optsize
define internal i32 @_stdout_hook_default(i32 noundef %0) #1 !dbg !493 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !495, metadata !DIExpression()), !dbg !496
  %3 = load i32, ptr %2, align 4, !dbg !497
  ret i32 -1, !dbg !498
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize willreturn memory(none) "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_stdout_hook", scope: !2, file: !92, line: 17, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
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
!102 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!103 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !104, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !106, !108}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 32)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !110, line: 250, size: 896, elements: !111)
!110 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!111 = !{!112, !185, !198, !199, !200, !201, !222}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !109, file: !110, line: 252, baseType: !113, size: 384)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !110, line: 58, size: 384, elements: !114)
!114 = !{!115, !143, !151, !154, !155, !168, !171, !172}
!115 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 61, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 61, size: 64, elements: !117)
!117 = !{!118, !134}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !116, file: !110, line: 62, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !120, line: 55, baseType: !121)
!120 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !120, line: 37, size: 64, elements: !122)
!122 = !{!123, !129}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 38, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 38, size: 32, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !124, file: !120, line: 39, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !120, line: 40, baseType: !127, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !120, line: 42, baseType: !130, size: 32, offset: 32)
!130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !120, line: 42, size: 32, elements: !131)
!131 = !{!132, !133}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !130, file: !120, line: 43, baseType: !127, size: 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !130, file: !120, line: 44, baseType: !127, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !116, file: !110, line: 63, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !136, line: 58, size: 64, elements: !137)
!136 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !135, file: !136, line: 60, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !113, file: !110, line: 69, baseType: !144, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !146, line: 243, baseType: !147)
!146 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 241, size: 64, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !147, file: !146, line: 242, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !120, line: 51, baseType: !121)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !113, file: !110, line: 72, baseType: !152, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !153, line: 62, baseType: !7)
!153 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !113, file: !110, line: 75, baseType: !152, size: 8, offset: 104)
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !113, file: !110, line: 91, baseType: !156, size: 16, offset: 112)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !113, file: !110, line: 91, size: 16, elements: !157)
!157 = !{!158, !165}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !110, line: 92, baseType: !159, size: 16)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !156, file: !110, line: 92, size: 16, elements: !160)
!160 = !{!161, !164}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !159, file: !110, line: 97, baseType: !162, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !153, line: 56, baseType: !163)
!163 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !159, file: !110, line: 98, baseType: !152, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !156, file: !110, line: 101, baseType: !166, size: 16)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !153, line: 63, baseType: !167)
!167 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !113, file: !110, line: 108, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 64, baseType: !170)
!170 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !113, file: !110, line: 132, baseType: !89, size: 32, offset: 160)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !113, file: !110, line: 136, baseType: !173, size: 192, offset: 192)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !146, line: 254, size: 192, elements: !174)
!174 = !{!175, !176, !182}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !173, file: !146, line: 255, baseType: !119, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !173, file: !146, line: 256, baseType: !177, size: 32, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !146, line: 252, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 32)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !173, file: !146, line: 259, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !153, line: 59, baseType: !184)
!184 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !109, file: !110, line: 255, baseType: !186, size: 288, offset: 384)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !187, line: 25, size: 288, elements: !188)
!187 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !186, file: !187, line: 26, baseType: !169, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !186, file: !187, line: 27, baseType: !169, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !186, file: !187, line: 28, baseType: !169, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !186, file: !187, line: 29, baseType: !169, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !186, file: !187, line: 30, baseType: !169, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !186, file: !187, line: 31, baseType: !169, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !186, file: !187, line: 32, baseType: !169, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !186, file: !187, line: 33, baseType: !169, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !186, file: !187, line: 34, baseType: !169, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !109, file: !110, line: 258, baseType: !89, size: 32, offset: 672)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !109, file: !110, line: 261, baseType: !145, size: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !109, file: !110, line: 302, baseType: !90, size: 32, offset: 768)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !109, file: !110, line: 333, baseType: !202, size: 32, offset: 800)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !204, line: 5291, size: 160, elements: !205)
!204 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!205 = !{!206, !217, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !203, file: !204, line: 5292, baseType: !207, size: 96)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !208, line: 56, size: 96, elements: !209)
!208 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!209 = !{!210, !213, !214}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !207, file: !208, line: 57, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !208, line: 57, flags: DIFlagFwdDecl)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !207, file: !208, line: 58, baseType: !89, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !207, file: !208, line: 59, baseType: !215, size: 32, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !216, line: 46, baseType: !170)
!216 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !203, file: !204, line: 5293, baseType: !145, size: 64, offset: 96)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !203, file: !204, line: 5294, baseType: !219, offset: 160)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !220, line: 45, elements: !221)
!220 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!221 = !{}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !109, file: !110, line: 355, baseType: !223, size: 64, offset: 832)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !187, line: 60, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !223, file: !187, line: 63, baseType: !169, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !223, file: !187, line: 66, baseType: !169, size: 32, offset: 32)
!227 = !{!228, !229}
!228 = !DILocalVariable(name: "object", arg: 1, scope: !103, file: !6, line: 223, type: !106)
!229 = !DILocalVariable(name: "thread", arg: 2, scope: !103, file: !6, line: 224, type: !108)
!230 = !DILocation(line: 223, column: 61, scope: !103)
!231 = !DILocation(line: 224, column: 24, scope: !103)
!232 = !DILocation(line: 226, column: 9, scope: !103)
!233 = !DILocation(line: 227, column: 9, scope: !103)
!234 = !DILocation(line: 228, column: 1, scope: !103)
!235 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !236, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !106}
!238 = !{!239}
!239 = !DILocalVariable(name: "object", arg: 1, scope: !235, file: !6, line: 243, type: !106)
!240 = !DILocation(line: 243, column: 56, scope: !235)
!241 = !DILocation(line: 245, column: 9, scope: !235)
!242 = !DILocation(line: 246, column: 1, scope: !235)
!243 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !244, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!89, !5}
!246 = !{!247}
!247 = !DILocalVariable(name: "otype", arg: 1, scope: !243, file: !6, line: 359, type: !5)
!248 = !DILocation(line: 359, column: 58, scope: !243)
!249 = !DILocation(line: 361, column: 9, scope: !243)
!250 = !DILocation(line: 363, column: 2, scope: !243)
!251 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !252, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!89, !5, !215}
!254 = !{!255, !256}
!255 = !DILocalVariable(name: "otype", arg: 1, scope: !251, file: !6, line: 366, type: !5)
!256 = !DILocalVariable(name: "size", arg: 2, scope: !251, file: !6, line: 367, type: !215)
!257 = !DILocation(line: 366, column: 63, scope: !251)
!258 = !DILocation(line: 367, column: 13, scope: !251)
!259 = !DILocation(line: 369, column: 9, scope: !251)
!260 = !DILocation(line: 370, column: 9, scope: !251)
!261 = !DILocation(line: 372, column: 2, scope: !251)
!262 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !204, file: !204, line: 656, type: !263, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !266, line: 46, baseType: !183)
!266 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!269 = !{!270}
!270 = !DILocalVariable(name: "t", arg: 1, scope: !262, file: !204, line: 657, type: !267)
!271 = !DILocation(line: 657, column: 30, scope: !262)
!272 = !DILocation(line: 659, column: 28, scope: !262)
!273 = !DILocation(line: 659, column: 31, scope: !262)
!274 = !DILocation(line: 659, column: 36, scope: !262)
!275 = !DILocation(line: 659, column: 9, scope: !262)
!276 = !DILocation(line: 659, column: 2, scope: !262)
!277 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !204, file: !204, line: 671, type: !263, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!278 = !{!279}
!279 = !DILocalVariable(name: "t", arg: 1, scope: !277, file: !204, line: 672, type: !267)
!280 = !DILocation(line: 672, column: 30, scope: !277)
!281 = !DILocation(line: 674, column: 30, scope: !277)
!282 = !DILocation(line: 674, column: 33, scope: !277)
!283 = !DILocation(line: 674, column: 38, scope: !277)
!284 = !DILocation(line: 674, column: 9, scope: !277)
!285 = !DILocation(line: 674, column: 2, scope: !277)
!286 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !204, file: !204, line: 1634, type: !287, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!287 = !DISubroutineType(types: !288)
!288 = !{!265, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !204, line: 1439, size: 448, elements: !292)
!292 = !{!293, !294, !295, !300, !301, !306, !307}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !291, file: !204, line: 1445, baseType: !173, size: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !291, file: !204, line: 1448, baseType: !145, size: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !291, file: !204, line: 1451, baseType: !296, size: 32, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 32)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !291, file: !204, line: 1454, baseType: !296, size: 32, offset: 288)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !291, file: !204, line: 1457, baseType: !302, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !266, line: 67, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !266, line: 65, size: 64, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !303, file: !266, line: 66, baseType: !265, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !291, file: !204, line: 1460, baseType: !169, size: 32, offset: 384)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !291, file: !204, line: 1463, baseType: !89, size: 32, offset: 416)
!308 = !{!309}
!309 = !DILocalVariable(name: "timer", arg: 1, scope: !286, file: !204, line: 1635, type: !289)
!310 = !DILocation(line: 1635, column: 34, scope: !286)
!311 = !DILocation(line: 1637, column: 28, scope: !286)
!312 = !DILocation(line: 1637, column: 35, scope: !286)
!313 = !DILocation(line: 1637, column: 9, scope: !286)
!314 = !DILocation(line: 1637, column: 2, scope: !286)
!315 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !204, file: !204, line: 1649, type: !287, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!316 = !{!317}
!317 = !DILocalVariable(name: "timer", arg: 1, scope: !315, file: !204, line: 1650, type: !289)
!318 = !DILocation(line: 1650, column: 34, scope: !315)
!319 = !DILocation(line: 1652, column: 30, scope: !315)
!320 = !DILocation(line: 1652, column: 37, scope: !315)
!321 = !DILocation(line: 1652, column: 9, scope: !315)
!322 = !DILocation(line: 1652, column: 2, scope: !315)
!323 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !204, file: !204, line: 1689, type: !324, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !299, !89}
!326 = !{!327, !328}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !323, file: !204, line: 1689, type: !299)
!328 = !DILocalVariable(name: "user_data", arg: 2, scope: !323, file: !204, line: 1690, type: !89)
!329 = !DILocation(line: 1689, column: 65, scope: !323)
!330 = !DILocation(line: 1690, column: 19, scope: !323)
!331 = !DILocation(line: 1692, column: 21, scope: !323)
!332 = !DILocation(line: 1692, column: 2, scope: !323)
!333 = !DILocation(line: 1692, column: 9, scope: !323)
!334 = !DILocation(line: 1692, column: 19, scope: !323)
!335 = !DILocation(line: 1693, column: 1, scope: !323)
!336 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !204, file: !204, line: 1704, type: !337, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!89, !289}
!339 = !{!340}
!340 = !DILocalVariable(name: "timer", arg: 1, scope: !336, file: !204, line: 1704, type: !289)
!341 = !DILocation(line: 1704, column: 72, scope: !336)
!342 = !DILocation(line: 1706, column: 9, scope: !336)
!343 = !DILocation(line: 1706, column: 16, scope: !336)
!344 = !DILocation(line: 1706, column: 2, scope: !336)
!345 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !204, file: !204, line: 2071, type: !346, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!346 = !DISubroutineType(types: !347)
!347 = !{!90, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 32)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !204, line: 1830, size: 128, elements: !350)
!350 = !{!351, !364, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !349, file: !204, line: 1831, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !353, line: 60, baseType: !354)
!353 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !353, line: 53, size: 64, elements: !355)
!355 = !{!356, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !354, file: !353, line: 54, baseType: !357, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !353, line: 50, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !353, line: 44, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !359, file: !353, line: 45, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !353, line: 40, baseType: !169)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !354, file: !353, line: 55, baseType: !357, size: 32, offset: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !349, file: !204, line: 1832, baseType: !219, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !349, file: !204, line: 1833, baseType: !145, size: 64, offset: 64)
!366 = !{!367}
!367 = !DILocalVariable(name: "queue", arg: 1, scope: !345, file: !204, line: 2071, type: !348)
!368 = !DILocation(line: 2071, column: 59, scope: !345)
!369 = !DILocation(line: 2073, column: 35, scope: !345)
!370 = !DILocation(line: 2073, column: 42, scope: !345)
!371 = !DILocation(line: 2073, column: 14, scope: !345)
!372 = !DILocation(line: 2073, column: 9, scope: !345)
!373 = !DILocation(line: 2073, column: 2, scope: !345)
!374 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !204, file: !204, line: 3209, type: !375, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!375 = !DISubroutineType(types: !376)
!376 = !{!170, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !204, line: 3092, size: 128, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !378, file: !204, line: 3093, baseType: !145, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !378, file: !204, line: 3094, baseType: !170, size: 32, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !378, file: !204, line: 3095, baseType: !170, size: 32, offset: 96)
!383 = !{!384}
!384 = !DILocalVariable(name: "sem", arg: 1, scope: !374, file: !204, line: 3209, type: !377)
!385 = !DILocation(line: 3209, column: 65, scope: !374)
!386 = !DILocation(line: 3211, column: 9, scope: !374)
!387 = !DILocation(line: 3211, column: 14, scope: !374)
!388 = !DILocation(line: 3211, column: 2, scope: !374)
!389 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !204, file: !204, line: 4649, type: !390, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!390 = !DISubroutineType(types: !391)
!391 = !{!169, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 32)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !204, line: 4390, size: 320, elements: !394)
!394 = !{!395, !396, !397, !398, !399, !402, !403, !404, !405, !406}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !393, file: !204, line: 4392, baseType: !145, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !393, file: !204, line: 4394, baseType: !219, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !393, file: !204, line: 4396, baseType: !215, size: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !393, file: !204, line: 4398, baseType: !169, size: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !393, file: !204, line: 4400, baseType: !400, size: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32)
!401 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !393, file: !204, line: 4402, baseType: !400, size: 32, offset: 160)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !393, file: !204, line: 4404, baseType: !400, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !393, file: !204, line: 4406, baseType: !400, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !393, file: !204, line: 4408, baseType: !169, size: 32, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !393, file: !204, line: 4413, baseType: !152, size: 8, offset: 288)
!407 = !{!408}
!408 = !DILocalVariable(name: "msgq", arg: 1, scope: !389, file: !204, line: 4649, type: !392)
!409 = !DILocation(line: 4649, column: 66, scope: !389)
!410 = !DILocation(line: 4651, column: 9, scope: !389)
!411 = !DILocation(line: 4651, column: 15, scope: !389)
!412 = !DILocation(line: 4651, column: 26, scope: !389)
!413 = !DILocation(line: 4651, column: 32, scope: !389)
!414 = !DILocation(line: 4651, column: 24, scope: !389)
!415 = !DILocation(line: 4651, column: 2, scope: !389)
!416 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !204, file: !204, line: 4665, type: !390, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!417 = !{!418}
!418 = !DILocalVariable(name: "msgq", arg: 1, scope: !416, file: !204, line: 4665, type: !392)
!419 = !DILocation(line: 4665, column: 66, scope: !416)
!420 = !DILocation(line: 4667, column: 9, scope: !416)
!421 = !DILocation(line: 4667, column: 15, scope: !416)
!422 = !DILocation(line: 4667, column: 2, scope: !416)
!423 = distinct !DISubprogram(name: "__stdout_hook_install", scope: !92, file: !92, line: 19, type: !424, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !93}
!426 = !{!427}
!427 = !DILocalVariable(name: "hook", arg: 1, scope: !423, file: !92, line: 19, type: !93)
!428 = !DILocation(line: 19, column: 34, scope: !423)
!429 = !DILocation(line: 21, column: 17, scope: !423)
!430 = !DILocation(line: 21, column: 15, scope: !423)
!431 = !DILocation(line: 22, column: 1, scope: !423)
!432 = distinct !DISubprogram(name: "__aeabi_errno_addr", scope: !92, file: !92, line: 24, type: !433, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!433 = !DISubroutineType(types: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !90)
!437 = !DILocation(line: 26, column: 26, scope: !432)
!438 = !DILocation(line: 26, column: 35, scope: !432)
!439 = !DILocation(line: 26, column: 2, scope: !432)
!440 = distinct !DISubprogram(name: "fputc", scope: !92, file: !92, line: 29, type: !441, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!441 = !DISubroutineType(types: !442)
!442 = !{!90, !90, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !445, line: 108, baseType: !446)
!445 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdio.h", directory: "")
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__FILE", file: !445, line: 119, size: 672, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_opaque", scope: !446, file: !445, line: 127, baseType: !449, size: 672)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !446, file: !445, line: 120, size: 672, elements: !450)
!450 = !{!451, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_alignment", scope: !449, file: !445, line: 121, baseType: !452, size: 32)
!452 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "__FILE_size", scope: !449, file: !445, line: 125, baseType: !454, size: 672)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 672, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 84)
!457 = !{!458, !459}
!458 = !DILocalVariable(name: "c", arg: 1, scope: !440, file: !92, line: 29, type: !90)
!459 = !DILocalVariable(name: "f", arg: 2, scope: !440, file: !92, line: 29, type: !443)
!460 = !DILocation(line: 29, column: 15, scope: !440)
!461 = !DILocation(line: 29, column: 24, scope: !440)
!462 = !DILocation(line: 31, column: 10, scope: !440)
!463 = !DILocation(line: 31, column: 24, scope: !440)
!464 = !DILocation(line: 31, column: 9, scope: !440)
!465 = !DILocation(line: 31, column: 2, scope: !440)
!466 = !DISubprogram(name: "z_timeout_expires", scope: !204, file: !204, line: 642, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!467 = !DISubroutineType(types: !468)
!468 = !{!265, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!471 = !DISubprogram(name: "z_timeout_remaining", scope: !204, file: !204, line: 643, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !221)
!472 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !353, file: !353, line: 335, type: !473, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !476}
!475 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 32)
!477 = !{!478}
!478 = !DILocalVariable(name: "list", arg: 1, scope: !472, file: !353, line: 335, type: !476)
!479 = !DILocation(line: 335, column: 55, scope: !472)
!480 = !DILocation(line: 335, column: 92, scope: !472)
!481 = !DILocation(line: 335, column: 71, scope: !472)
!482 = !DILocation(line: 335, column: 98, scope: !472)
!483 = !DILocation(line: 335, column: 63, scope: !472)
!484 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !353, file: !353, line: 255, type: !485, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !487)
!485 = !DISubroutineType(types: !486)
!486 = !{!357, !476}
!487 = !{!488}
!488 = !DILocalVariable(name: "list", arg: 1, scope: !484, file: !353, line: 255, type: !476)
!489 = !DILocation(line: 255, column: 64, scope: !484)
!490 = !DILocation(line: 257, column: 9, scope: !484)
!491 = !DILocation(line: 257, column: 15, scope: !484)
!492 = !DILocation(line: 257, column: 2, scope: !484)
!493 = distinct !DISubprogram(name: "_stdout_hook_default", scope: !92, file: !92, line: 10, type: !94, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!494 = !{!495}
!495 = !DILocalVariable(name: "c", arg: 1, scope: !493, file: !92, line: 10, type: !90)
!496 = !DILocation(line: 10, column: 37, scope: !493)
!497 = !DILocation(line: 12, column: 9, scope: !493)
!498 = !DILocation(line: 14, column: 2, scope: !493)
