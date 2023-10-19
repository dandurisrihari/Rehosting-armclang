; ModuleID = '../bc_files/swap.bc'
source_filename = "/home/sri/zephyrproject/zephyr/arch/arm/core/cortex_m/swap.c"
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

@_kernel = external dso_local global %struct.z_kernel, align 4
@_k_neg_eagain = external dso_local constant i32, align 4

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !118 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !238, metadata !DIExpression()), !dbg !240
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !239, metadata !DIExpression()), !dbg !241
  %5 = load ptr, ptr %3, align 4, !dbg !242
  %6 = load ptr, ptr %4, align 4, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !245 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load ptr, ptr %2, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !253 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load i8, ptr %2, align 1, !dbg !259
  ret ptr null, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !261 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !265, metadata !DIExpression()), !dbg !267
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !266, metadata !DIExpression()), !dbg !268
  %5 = load i8, ptr %3, align 1, !dbg !269
  %6 = load i32, ptr %4, align 4, !dbg !270
  ret ptr null, !dbg !271
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !272 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !280, metadata !DIExpression()), !dbg !281
  %3 = load ptr, ptr %2, align 4, !dbg !282
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !283
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !284
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #4, !dbg !285
  ret i64 %6, !dbg !286
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !287 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !289, metadata !DIExpression()), !dbg !290
  %3 = load ptr, ptr %2, align 4, !dbg !291
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !292
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !293
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #4, !dbg !294
  ret i64 %6, !dbg !295
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !296 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !322
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #4, !dbg !323
  ret i64 %5, !dbg !324
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !325 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load ptr, ptr %2, align 4, !dbg !329
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !330
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #4, !dbg !331
  ret i64 %5, !dbg !332
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !333 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !339
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !338, metadata !DIExpression()), !dbg !340
  %5 = load ptr, ptr %4, align 4, !dbg !341
  %6 = load ptr, ptr %3, align 4, !dbg !342
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !343
  store ptr %5, ptr %7, align 4, !dbg !344
  ret void, !dbg !345
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !346 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !350, metadata !DIExpression()), !dbg !351
  %3 = load ptr, ptr %2, align 4, !dbg !352
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !353
  %5 = load ptr, ptr %4, align 4, !dbg !353
  ret ptr %5, !dbg !354
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !355 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !377, metadata !DIExpression()), !dbg !378
  %3 = load ptr, ptr %2, align 4, !dbg !379
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !380
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #4, !dbg !381
  %6 = zext i1 %5 to i32, !dbg !382
  ret i32 %6, !dbg !383
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !384 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !394, metadata !DIExpression()), !dbg !395
  %3 = load ptr, ptr %2, align 4, !dbg !396
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !397
  %5 = load i32, ptr %4, align 4, !dbg !397
  ret i32 %5, !dbg !398
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !399 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !418, metadata !DIExpression()), !dbg !419
  %3 = load ptr, ptr %2, align 4, !dbg !420
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !421
  %5 = load i32, ptr %4, align 4, !dbg !421
  %6 = load ptr, ptr %2, align 4, !dbg !422
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !423
  %8 = load i32, ptr %7, align 4, !dbg !423
  %9 = sub i32 %5, %8, !dbg !424
  ret i32 %9, !dbg !425
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !426 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !428, metadata !DIExpression()), !dbg !429
  %3 = load ptr, ptr %2, align 4, !dbg !430
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !431
  %5 = load i32, ptr %4, align 4, !dbg !431
  ret i32 %5, !dbg !432
}

; Function Attrs: nounwind optsize
define hidden i32 @arch_swap(i32 noundef %0) #1 !dbg !433 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !438, metadata !DIExpression()), !dbg !439
  %4 = load i32, ptr %3, align 4, !dbg !440
  %5 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !441
  %6 = getelementptr inbounds %struct.k_thread, ptr %5, i32 0, i32 6, !dbg !442
  %7 = getelementptr inbounds %struct._thread_arch, ptr %6, i32 0, i32 0, !dbg !443
  store i32 %4, ptr %7, align 8, !dbg !444
  %8 = load i32, ptr @_k_neg_eagain, align 4, !dbg !445
  %9 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !446
  %10 = getelementptr inbounds %struct.k_thread, ptr %9, i32 0, i32 6, !dbg !447
  %11 = getelementptr inbounds %struct._thread_arch, ptr %10, i32 0, i32 1, !dbg !448
  store i32 %8, ptr %11, align 4, !dbg !449
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !450
  %13 = or i32 %12, 268435456, !dbg !450
  store volatile i32 %13, ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 1), align 4, !dbg !450
  store i32 0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !451, metadata !DIExpression()), !dbg !457
  %14 = load i32, ptr %2, align 4, !dbg !459
  %15 = icmp ne i32 %14, 0, !dbg !461
  br i1 %15, label %16, label %17, !dbg !462

16:                                               ; preds = %1
  br label %arch_irq_unlock.exit, !dbg !463

17:                                               ; preds = %1
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !465, !srcloc !466
  br label %arch_irq_unlock.exit, !dbg !467

arch_irq_unlock.exit:                             ; preds = %16, %17
  %18 = load ptr, ptr getelementptr inbounds (%struct._cpu, ptr @_kernel, i32 0, i32 2), align 4, !dbg !468
  %19 = getelementptr inbounds %struct.k_thread, ptr %18, i32 0, i32 6, !dbg !469
  %20 = getelementptr inbounds %struct._thread_arch, ptr %19, i32 0, i32 1, !dbg !470
  %21 = load i32, ptr %20, align 4, !dbg !470
  ret i32 %21, !dbg !471
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !472 dso_local i64 @z_timeout_expires(ptr noundef) #3

; Function Attrs: optsize
declare !dbg !477 dso_local i64 @z_timeout_remaining(ptr noundef) #3

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !485
  %3 = load ptr, ptr %2, align 4, !dbg !486
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #4, !dbg !487
  %5 = icmp eq ptr %4, null, !dbg !488
  ret i1 %5, !dbg !489
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !490 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !494, metadata !DIExpression()), !dbg !495
  %3 = load ptr, ptr %2, align 4, !dbg !496
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !497
  %5 = load ptr, ptr %4, align 4, !dbg !497
  ret ptr %5, !dbg !498
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "swap.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!117 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!118 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !119, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !237)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121, !123}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !125, line: 250, size: 896, elements: !126)
!125 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!126 = !{!127, !195, !208, !209, !210, !211, !232}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !124, file: !125, line: 252, baseType: !128, size: 384)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !125, line: 58, size: 384, elements: !129)
!129 = !{!130, !156, !164, !166, !167, !180, !181, !182}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !125, line: 61, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !125, line: 61, size: 64, elements: !132)
!132 = !{!133, !149}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !131, file: !125, line: 62, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !135, line: 55, baseType: !136)
!135 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !135, line: 37, size: 64, elements: !137)
!137 = !{!138, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 38, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 38, size: 32, elements: !140)
!140 = !{!141, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !139, file: !135, line: 39, baseType: !142, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !139, file: !135, line: 40, baseType: !142, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !136, file: !135, line: 42, baseType: !145, size: 32, offset: 32)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !135, line: 42, size: 32, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !145, file: !135, line: 43, baseType: !142, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !135, line: 44, baseType: !142, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !131, file: !125, line: 63, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !151, line: 58, size: 64, elements: !152)
!151 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !150, file: !151, line: 60, baseType: !154, size: 64)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 64, elements: !106)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !128, file: !125, line: 69, baseType: !157, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !159, line: 243, baseType: !160)
!159 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !159, line: 241, size: 64, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !160, file: !159, line: 242, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !135, line: 51, baseType: !136)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !128, file: !125, line: 72, baseType: !165, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 62, baseType: !5)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !128, file: !125, line: 75, baseType: !165, size: 8, offset: 104)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !125, line: 91, baseType: !168, size: 16, offset: 112)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !125, line: 91, size: 16, elements: !169)
!169 = !{!170, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !125, line: 92, baseType: !171, size: 16)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !168, file: !125, line: 92, size: 16, elements: !172)
!172 = !{!173, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !171, file: !125, line: 97, baseType: !174, size: 8)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !96, line: 56, baseType: !175)
!175 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !171, file: !125, line: 98, baseType: !165, size: 8, offset: 8)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !168, file: !125, line: 101, baseType: !178, size: 16)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !96, line: 63, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !128, file: !125, line: 108, baseType: !95, size: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !128, file: !125, line: 132, baseType: !109, size: 32, offset: 160)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !128, file: !125, line: 136, baseType: !183, size: 192, offset: 192)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !159, line: 254, size: 192, elements: !184)
!184 = !{!185, !186, !192}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !183, file: !159, line: 255, baseType: !134, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !183, file: !159, line: 256, baseType: !187, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !159, line: 252, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 32)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !183, file: !159, line: 259, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !96, line: 59, baseType: !194)
!194 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !124, file: !125, line: 255, baseType: !196, size: 288, offset: 384)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !197, line: 25, size: 288, elements: !198)
!197 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !196, file: !197, line: 26, baseType: !95, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !196, file: !197, line: 27, baseType: !95, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !196, file: !197, line: 28, baseType: !95, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !196, file: !197, line: 29, baseType: !95, size: 32, offset: 96)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !196, file: !197, line: 30, baseType: !95, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !196, file: !197, line: 31, baseType: !95, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !196, file: !197, line: 32, baseType: !95, size: 32, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !196, file: !197, line: 33, baseType: !95, size: 32, offset: 224)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !196, file: !197, line: 34, baseType: !95, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !124, file: !125, line: 258, baseType: !109, size: 32, offset: 672)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !124, file: !125, line: 261, baseType: !158, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !124, file: !125, line: 302, baseType: !110, size: 32, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !124, file: !125, line: 333, baseType: !212, size: 32, offset: 800)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !214, line: 5291, size: 160, elements: !215)
!214 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!215 = !{!216, !227, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !213, file: !214, line: 5292, baseType: !217, size: 96)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !218, line: 56, size: 96, elements: !219)
!218 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = !{!220, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !217, file: !218, line: 57, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !218, line: 57, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !217, file: !218, line: 58, baseType: !109, size: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !217, file: !218, line: 59, baseType: !225, size: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !226, line: 46, baseType: !97)
!226 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !213, file: !214, line: 5293, baseType: !158, size: 64, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !213, file: !214, line: 5294, baseType: !229, offset: 160)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !230, line: 45, elements: !231)
!230 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!231 = !{}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !124, file: !125, line: 355, baseType: !233, size: 64, offset: 832)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !197, line: 60, size: 64, elements: !234)
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !233, file: !197, line: 63, baseType: !95, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !233, file: !197, line: 66, baseType: !95, size: 32, offset: 32)
!237 = !{!238, !239}
!238 = !DILocalVariable(name: "object", arg: 1, scope: !118, file: !4, line: 223, type: !121)
!239 = !DILocalVariable(name: "thread", arg: 2, scope: !118, file: !4, line: 224, type: !123)
!240 = !DILocation(line: 223, column: 61, scope: !118)
!241 = !DILocation(line: 224, column: 24, scope: !118)
!242 = !DILocation(line: 226, column: 9, scope: !118)
!243 = !DILocation(line: 227, column: 9, scope: !118)
!244 = !DILocation(line: 228, column: 1, scope: !118)
!245 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !246, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !121}
!248 = !{!249}
!249 = !DILocalVariable(name: "object", arg: 1, scope: !245, file: !4, line: 243, type: !121)
!250 = !DILocation(line: 243, column: 56, scope: !245)
!251 = !DILocation(line: 245, column: 9, scope: !245)
!252 = !DILocation(line: 246, column: 1, scope: !245)
!253 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !254, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!109, !3}
!256 = !{!257}
!257 = !DILocalVariable(name: "otype", arg: 1, scope: !253, file: !4, line: 359, type: !3)
!258 = !DILocation(line: 359, column: 58, scope: !253)
!259 = !DILocation(line: 361, column: 9, scope: !253)
!260 = !DILocation(line: 363, column: 2, scope: !253)
!261 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !262, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!109, !3, !225}
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "otype", arg: 1, scope: !261, file: !4, line: 366, type: !3)
!266 = !DILocalVariable(name: "size", arg: 2, scope: !261, file: !4, line: 367, type: !225)
!267 = !DILocation(line: 366, column: 63, scope: !261)
!268 = !DILocation(line: 367, column: 13, scope: !261)
!269 = !DILocation(line: 369, column: 9, scope: !261)
!270 = !DILocation(line: 370, column: 9, scope: !261)
!271 = !DILocation(line: 372, column: 2, scope: !261)
!272 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !214, file: !214, line: 656, type: !273, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !279)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !277}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !276, line: 46, baseType: !193)
!276 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!279 = !{!280}
!280 = !DILocalVariable(name: "t", arg: 1, scope: !272, file: !214, line: 657, type: !277)
!281 = !DILocation(line: 657, column: 30, scope: !272)
!282 = !DILocation(line: 659, column: 28, scope: !272)
!283 = !DILocation(line: 659, column: 31, scope: !272)
!284 = !DILocation(line: 659, column: 36, scope: !272)
!285 = !DILocation(line: 659, column: 9, scope: !272)
!286 = !DILocation(line: 659, column: 2, scope: !272)
!287 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !214, file: !214, line: 671, type: !273, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!288 = !{!289}
!289 = !DILocalVariable(name: "t", arg: 1, scope: !287, file: !214, line: 672, type: !277)
!290 = !DILocation(line: 672, column: 30, scope: !287)
!291 = !DILocation(line: 674, column: 30, scope: !287)
!292 = !DILocation(line: 674, column: 33, scope: !287)
!293 = !DILocation(line: 674, column: 38, scope: !287)
!294 = !DILocation(line: 674, column: 9, scope: !287)
!295 = !DILocation(line: 674, column: 2, scope: !287)
!296 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !214, file: !214, line: 1634, type: !297, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !318)
!297 = !DISubroutineType(types: !298)
!298 = !{!275, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !214, line: 1439, size: 448, elements: !302)
!302 = !{!303, !304, !305, !310, !311, !316, !317}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !301, file: !214, line: 1445, baseType: !183, size: 192)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !301, file: !214, line: 1448, baseType: !158, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !301, file: !214, line: 1451, baseType: !306, size: 32, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 32)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !301, file: !214, line: 1454, baseType: !306, size: 32, offset: 288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !301, file: !214, line: 1457, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !276, line: 67, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !276, line: 65, size: 64, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !313, file: !276, line: 66, baseType: !275, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !301, file: !214, line: 1460, baseType: !95, size: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !301, file: !214, line: 1463, baseType: !109, size: 32, offset: 416)
!318 = !{!319}
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !296, file: !214, line: 1635, type: !299)
!320 = !DILocation(line: 1635, column: 34, scope: !296)
!321 = !DILocation(line: 1637, column: 28, scope: !296)
!322 = !DILocation(line: 1637, column: 35, scope: !296)
!323 = !DILocation(line: 1637, column: 9, scope: !296)
!324 = !DILocation(line: 1637, column: 2, scope: !296)
!325 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !214, file: !214, line: 1649, type: !297, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !326)
!326 = !{!327}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !325, file: !214, line: 1650, type: !299)
!328 = !DILocation(line: 1650, column: 34, scope: !325)
!329 = !DILocation(line: 1652, column: 30, scope: !325)
!330 = !DILocation(line: 1652, column: 37, scope: !325)
!331 = !DILocation(line: 1652, column: 9, scope: !325)
!332 = !DILocation(line: 1652, column: 2, scope: !325)
!333 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !214, file: !214, line: 1689, type: !334, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !309, !109}
!336 = !{!337, !338}
!337 = !DILocalVariable(name: "timer", arg: 1, scope: !333, file: !214, line: 1689, type: !309)
!338 = !DILocalVariable(name: "user_data", arg: 2, scope: !333, file: !214, line: 1690, type: !109)
!339 = !DILocation(line: 1689, column: 65, scope: !333)
!340 = !DILocation(line: 1690, column: 19, scope: !333)
!341 = !DILocation(line: 1692, column: 21, scope: !333)
!342 = !DILocation(line: 1692, column: 2, scope: !333)
!343 = !DILocation(line: 1692, column: 9, scope: !333)
!344 = !DILocation(line: 1692, column: 19, scope: !333)
!345 = !DILocation(line: 1693, column: 1, scope: !333)
!346 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !214, file: !214, line: 1704, type: !347, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{!109, !299}
!349 = !{!350}
!350 = !DILocalVariable(name: "timer", arg: 1, scope: !346, file: !214, line: 1704, type: !299)
!351 = !DILocation(line: 1704, column: 72, scope: !346)
!352 = !DILocation(line: 1706, column: 9, scope: !346)
!353 = !DILocation(line: 1706, column: 16, scope: !346)
!354 = !DILocation(line: 1706, column: 2, scope: !346)
!355 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !214, file: !214, line: 2071, type: !356, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!356 = !DISubroutineType(types: !357)
!357 = !{!110, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !214, line: 1830, size: 128, elements: !360)
!360 = !{!361, !374, !375}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !359, file: !214, line: 1831, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !363, line: 60, baseType: !364)
!363 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !363, line: 53, size: 64, elements: !365)
!365 = !{!366, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !364, file: !363, line: 54, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !363, line: 50, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !363, line: 44, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !369, file: !363, line: 45, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !363, line: 40, baseType: !95)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !364, file: !363, line: 55, baseType: !367, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !214, line: 1832, baseType: !229, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !359, file: !214, line: 1833, baseType: !158, size: 64, offset: 64)
!376 = !{!377}
!377 = !DILocalVariable(name: "queue", arg: 1, scope: !355, file: !214, line: 2071, type: !358)
!378 = !DILocation(line: 2071, column: 59, scope: !355)
!379 = !DILocation(line: 2073, column: 35, scope: !355)
!380 = !DILocation(line: 2073, column: 42, scope: !355)
!381 = !DILocation(line: 2073, column: 14, scope: !355)
!382 = !DILocation(line: 2073, column: 9, scope: !355)
!383 = !DILocation(line: 2073, column: 2, scope: !355)
!384 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !214, file: !214, line: 3209, type: !385, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!385 = !DISubroutineType(types: !386)
!386 = !{!97, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 32)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !214, line: 3092, size: 128, elements: !389)
!389 = !{!390, !391, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !388, file: !214, line: 3093, baseType: !158, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !388, file: !214, line: 3094, baseType: !97, size: 32, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !388, file: !214, line: 3095, baseType: !97, size: 32, offset: 96)
!393 = !{!394}
!394 = !DILocalVariable(name: "sem", arg: 1, scope: !384, file: !214, line: 3209, type: !387)
!395 = !DILocation(line: 3209, column: 65, scope: !384)
!396 = !DILocation(line: 3211, column: 9, scope: !384)
!397 = !DILocation(line: 3211, column: 14, scope: !384)
!398 = !DILocation(line: 3211, column: 2, scope: !384)
!399 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !214, file: !214, line: 4649, type: !400, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !417)
!400 = !DISubroutineType(types: !401)
!401 = !{!95, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !214, line: 4390, size: 320, elements: !404)
!404 = !{!405, !406, !407, !408, !409, !412, !413, !414, !415, !416}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !403, file: !214, line: 4392, baseType: !158, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !403, file: !214, line: 4394, baseType: !229, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !403, file: !214, line: 4396, baseType: !225, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !403, file: !214, line: 4398, baseType: !95, size: 32, offset: 96)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !403, file: !214, line: 4400, baseType: !410, size: 32, offset: 128)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 32)
!411 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !403, file: !214, line: 4402, baseType: !410, size: 32, offset: 160)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !403, file: !214, line: 4404, baseType: !410, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !403, file: !214, line: 4406, baseType: !410, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !403, file: !214, line: 4408, baseType: !95, size: 32, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !403, file: !214, line: 4413, baseType: !165, size: 8, offset: 288)
!417 = !{!418}
!418 = !DILocalVariable(name: "msgq", arg: 1, scope: !399, file: !214, line: 4649, type: !402)
!419 = !DILocation(line: 4649, column: 66, scope: !399)
!420 = !DILocation(line: 4651, column: 9, scope: !399)
!421 = !DILocation(line: 4651, column: 15, scope: !399)
!422 = !DILocation(line: 4651, column: 26, scope: !399)
!423 = !DILocation(line: 4651, column: 32, scope: !399)
!424 = !DILocation(line: 4651, column: 24, scope: !399)
!425 = !DILocation(line: 4651, column: 2, scope: !399)
!426 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !214, file: !214, line: 4665, type: !400, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!427 = !{!428}
!428 = !DILocalVariable(name: "msgq", arg: 1, scope: !426, file: !214, line: 4665, type: !402)
!429 = !DILocation(line: 4665, column: 66, scope: !426)
!430 = !DILocation(line: 4667, column: 9, scope: !426)
!431 = !DILocation(line: 4667, column: 15, scope: !426)
!432 = !DILocation(line: 4667, column: 2, scope: !426)
!433 = distinct !DISubprogram(name: "arch_swap", scope: !434, file: !434, line: 33, type: !435, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !437)
!434 = !DIFile(filename: "arch/arm/core/cortex_m/swap.c", directory: "/home/sri/zephyrproject/zephyr")
!435 = !DISubroutineType(types: !436)
!436 = !{!110, !97}
!437 = !{!438}
!438 = !DILocalVariable(name: "key", arg: 1, scope: !433, file: !434, line: 33, type: !97)
!439 = !DILocation(line: 33, column: 28, scope: !433)
!440 = !DILocation(line: 36, column: 42, scope: !433)
!441 = !DILocation(line: 36, column: 18, scope: !433)
!442 = !DILocation(line: 36, column: 27, scope: !433)
!443 = !DILocation(line: 36, column: 32, scope: !433)
!444 = !DILocation(line: 36, column: 40, scope: !433)
!445 = !DILocation(line: 37, column: 52, scope: !433)
!446 = !DILocation(line: 37, column: 18, scope: !433)
!447 = !DILocation(line: 37, column: 27, scope: !433)
!448 = !DILocation(line: 37, column: 32, scope: !433)
!449 = !DILocation(line: 37, column: 50, scope: !433)
!450 = !DILocation(line: 40, column: 52, scope: !433)
!451 = !DILocalVariable(name: "key", arg: 1, scope: !452, file: !453, line: 88, type: !97)
!452 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !453, file: !453, line: 88, type: !454, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !456)
!453 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!454 = !DISubroutineType(types: !455)
!455 = !{null, !97}
!456 = !{!451}
!457 = !DILocation(line: 88, column: 80, scope: !452, inlinedAt: !458)
!458 = distinct !DILocation(line: 43, column: 2, scope: !433)
!459 = !DILocation(line: 91, column: 6, scope: !460, inlinedAt: !458)
!460 = distinct !DILexicalBlock(scope: !452, file: !453, line: 91, column: 6)
!461 = !DILocation(line: 91, column: 10, scope: !460, inlinedAt: !458)
!462 = !DILocation(line: 91, column: 6, scope: !452, inlinedAt: !458)
!463 = !DILocation(line: 92, column: 3, scope: !464, inlinedAt: !458)
!464 = distinct !DILexicalBlock(scope: !460, file: !453, line: 91, column: 17)
!465 = !DILocation(line: 94, column: 2, scope: !452, inlinedAt: !458)
!466 = !{i64 67232}
!467 = !DILocation(line: 114, column: 1, scope: !452, inlinedAt: !458)
!468 = !DILocation(line: 48, column: 25, scope: !433)
!469 = !DILocation(line: 48, column: 34, scope: !433)
!470 = !DILocation(line: 48, column: 39, scope: !433)
!471 = !DILocation(line: 48, column: 2, scope: !433)
!472 = !DISubprogram(name: "z_timeout_expires", scope: !214, file: !214, line: 642, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !231)
!473 = !DISubroutineType(types: !474)
!474 = !{!275, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!477 = !DISubprogram(name: "z_timeout_remaining", scope: !214, file: !214, line: 643, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !231)
!478 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !363, file: !363, line: 335, type: !479, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !483)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !482}
!481 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!483 = !{!484}
!484 = !DILocalVariable(name: "list", arg: 1, scope: !478, file: !363, line: 335, type: !482)
!485 = !DILocation(line: 335, column: 55, scope: !478)
!486 = !DILocation(line: 335, column: 92, scope: !478)
!487 = !DILocation(line: 335, column: 71, scope: !478)
!488 = !DILocation(line: 335, column: 98, scope: !478)
!489 = !DILocation(line: 335, column: 63, scope: !478)
!490 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !363, file: !363, line: 255, type: !491, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!367, !482}
!493 = !{!494}
!494 = !DILocalVariable(name: "list", arg: 1, scope: !490, file: !363, line: 255, type: !482)
!495 = !DILocation(line: 255, column: 64, scope: !490)
!496 = !DILocation(line: 257, column: 9, scope: !490)
!497 = !DILocation(line: 257, column: 15, scope: !490)
!498 = !DILocation(line: 257, column: 2, scope: !490)
