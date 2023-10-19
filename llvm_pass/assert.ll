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

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !105 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !230, metadata !DIExpression()), !dbg !232
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !231, metadata !DIExpression()), !dbg !233
  %5 = load ptr, ptr %3, align 4, !dbg !234
  %6 = load ptr, ptr %4, align 4, !dbg !235
  ret void, !dbg !236
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !237 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !241, metadata !DIExpression()), !dbg !242
  %3 = load ptr, ptr %2, align 4, !dbg !243
  ret void, !dbg !244
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !245 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !250
  %3 = load i8, ptr %2, align 1, !dbg !251
  ret ptr null, !dbg !252
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !253 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !257, metadata !DIExpression()), !dbg !259
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !258, metadata !DIExpression()), !dbg !260
  %5 = load i8, ptr %3, align 1, !dbg !261
  %6 = load i32, ptr %4, align 4, !dbg !262
  ret ptr null, !dbg !263
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !264 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !273
  %3 = load ptr, ptr %2, align 4, !dbg !274
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !275
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !276
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #6, !dbg !277
  ret i64 %6, !dbg !278
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !281, metadata !DIExpression()), !dbg !282
  %3 = load ptr, ptr %2, align 4, !dbg !283
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !284
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !285
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #6, !dbg !286
  ret i64 %6, !dbg !287
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !288 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  %3 = load ptr, ptr %2, align 4, !dbg !313
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !314
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #6, !dbg !315
  ret i64 %5, !dbg !316
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !317 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !320
  %3 = load ptr, ptr %2, align 4, !dbg !321
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !322
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #6, !dbg !323
  ret i64 %5, !dbg !324
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !325 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !329, metadata !DIExpression()), !dbg !331
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !330, metadata !DIExpression()), !dbg !332
  %5 = load ptr, ptr %4, align 4, !dbg !333
  %6 = load ptr, ptr %3, align 4, !dbg !334
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !335
  store ptr %5, ptr %7, align 4, !dbg !336
  ret void, !dbg !337
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !343
  %3 = load ptr, ptr %2, align 4, !dbg !344
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !345
  %5 = load ptr, ptr %4, align 4, !dbg !345
  ret ptr %5, !dbg !346
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !347 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !369, metadata !DIExpression()), !dbg !370
  %3 = load ptr, ptr %2, align 4, !dbg !371
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !372
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #6, !dbg !373
  %6 = zext i1 %5 to i32, !dbg !374
  ret i32 %6, !dbg !375
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !376 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !386, metadata !DIExpression()), !dbg !387
  %3 = load ptr, ptr %2, align 4, !dbg !388
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !389
  %5 = load i32, ptr %4, align 4, !dbg !389
  ret i32 %5, !dbg !390
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !391 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !410, metadata !DIExpression()), !dbg !411
  %3 = load ptr, ptr %2, align 4, !dbg !412
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !413
  %5 = load i32, ptr %4, align 4, !dbg !413
  %6 = load ptr, ptr %2, align 4, !dbg !414
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !415
  %8 = load i32, ptr %7, align 4, !dbg !415
  %9 = sub i32 %5, %8, !dbg !416
  ret i32 %9, !dbg !417
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !418 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !420, metadata !DIExpression()), !dbg !421
  %3 = load ptr, ptr %2, align 4, !dbg !422
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !423
  %5 = load i32, ptr %4, align 4, !dbg !423
  ret i32 %5, !dbg !424
}

; Function Attrs: nounwind optsize
define weak hidden void @assert_post_action(ptr noundef %0, i32 noundef %1) #1 !dbg !425 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !432, metadata !DIExpression()), !dbg !435
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !433, metadata !DIExpression()), !dbg !436
  %6 = load ptr, ptr %3, align 4, !dbg !437
  %7 = load i32, ptr %4, align 4, !dbg !438
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %5, metadata !434, metadata !DIExpression()), !dbg !440
  store i32 4, ptr %5, align 4, !dbg !440
  br label %8, !dbg !441

8:                                                ; preds = %2
  %9 = load i32, ptr %5, align 4, !dbg !442
  call void asm sideeffect "cpsie i\0A\09svc $1\0A\09", "{r0},i,~{memory}"(i32 %9, i32 2) #7, !dbg !444, !srcloc !445
  br label %10, !dbg !446

10:                                               ; preds = %8
  br label %11, !dbg !446

11:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @assert_print(ptr noundef %0, ...) #1 !dbg !448 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.__va_list, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !452, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %3, metadata !453, metadata !DIExpression()), !dbg !462
  call void @llvm.va_start(ptr %3), !dbg !463
  %4 = load ptr, ptr %2, align 4, !dbg !464
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !465
  %6 = load [1 x i32], ptr %5, align 4, !dbg !465
  call void @vprintk(ptr noundef %4, [1 x i32] %6) #6, !dbg !465
  call void @llvm.va_end(ptr %3), !dbg !466
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7, !dbg !467
  ret void, !dbg !467
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: optsize
declare !dbg !468 dso_local void @vprintk(ptr noundef, [1 x i32]) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: optsize
declare !dbg !472 dso_local i64 @z_timeout_expires(ptr noundef) #5

; Function Attrs: optsize
declare !dbg !477 dso_local i64 @z_timeout_remaining(ptr noundef) #5

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !478 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !484, metadata !DIExpression()), !dbg !485
  %3 = load ptr, ptr %2, align 4, !dbg !486
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #6, !dbg !487
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
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !95, splitDebugInlining: false, nameTableKind: None)
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
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!104 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!105 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !14, file: !14, line: 223, type: !106, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
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
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !155, line: 62, baseType: !5)
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
!173 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !115, file: !112, line: 132, baseType: !96, size: 32, offset: 160)
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
!200 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !111, file: !112, line: 258, baseType: !96, size: 32, offset: 672)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !111, file: !112, line: 261, baseType: !147, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !111, file: !112, line: 302, baseType: !97, size: 32, offset: 768)
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
!215 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !209, file: !210, line: 58, baseType: !96, size: 32, offset: 32)
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
!229 = !{!230, !231}
!230 = !DILocalVariable(name: "object", arg: 1, scope: !105, file: !14, line: 223, type: !108)
!231 = !DILocalVariable(name: "thread", arg: 2, scope: !105, file: !14, line: 224, type: !110)
!232 = !DILocation(line: 223, column: 61, scope: !105)
!233 = !DILocation(line: 224, column: 24, scope: !105)
!234 = !DILocation(line: 226, column: 9, scope: !105)
!235 = !DILocation(line: 227, column: 9, scope: !105)
!236 = !DILocation(line: 228, column: 1, scope: !105)
!237 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !14, file: !14, line: 243, type: !238, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !108}
!240 = !{!241}
!241 = !DILocalVariable(name: "object", arg: 1, scope: !237, file: !14, line: 243, type: !108)
!242 = !DILocation(line: 243, column: 56, scope: !237)
!243 = !DILocation(line: 245, column: 9, scope: !237)
!244 = !DILocation(line: 246, column: 1, scope: !237)
!245 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !14, file: !14, line: 359, type: !246, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{!96, !13}
!248 = !{!249}
!249 = !DILocalVariable(name: "otype", arg: 1, scope: !245, file: !14, line: 359, type: !13)
!250 = !DILocation(line: 359, column: 58, scope: !245)
!251 = !DILocation(line: 361, column: 9, scope: !245)
!252 = !DILocation(line: 363, column: 2, scope: !245)
!253 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !14, file: !14, line: 366, type: !254, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!96, !13, !217}
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "otype", arg: 1, scope: !253, file: !14, line: 366, type: !13)
!258 = !DILocalVariable(name: "size", arg: 2, scope: !253, file: !14, line: 367, type: !217)
!259 = !DILocation(line: 366, column: 63, scope: !253)
!260 = !DILocation(line: 367, column: 13, scope: !253)
!261 = !DILocation(line: 369, column: 9, scope: !253)
!262 = !DILocation(line: 370, column: 9, scope: !253)
!263 = !DILocation(line: 372, column: 2, scope: !253)
!264 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !206, file: !206, line: 656, type: !265, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !269}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !268, line: 46, baseType: !185)
!268 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!271 = !{!272}
!272 = !DILocalVariable(name: "t", arg: 1, scope: !264, file: !206, line: 657, type: !269)
!273 = !DILocation(line: 657, column: 30, scope: !264)
!274 = !DILocation(line: 659, column: 28, scope: !264)
!275 = !DILocation(line: 659, column: 31, scope: !264)
!276 = !DILocation(line: 659, column: 36, scope: !264)
!277 = !DILocation(line: 659, column: 9, scope: !264)
!278 = !DILocation(line: 659, column: 2, scope: !264)
!279 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !206, file: !206, line: 671, type: !265, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !280)
!280 = !{!281}
!281 = !DILocalVariable(name: "t", arg: 1, scope: !279, file: !206, line: 672, type: !269)
!282 = !DILocation(line: 672, column: 30, scope: !279)
!283 = !DILocation(line: 674, column: 30, scope: !279)
!284 = !DILocation(line: 674, column: 33, scope: !279)
!285 = !DILocation(line: 674, column: 38, scope: !279)
!286 = !DILocation(line: 674, column: 9, scope: !279)
!287 = !DILocation(line: 674, column: 2, scope: !279)
!288 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !206, file: !206, line: 1634, type: !289, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!289 = !DISubroutineType(types: !290)
!290 = !{!267, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !206, line: 1439, size: 448, elements: !294)
!294 = !{!295, !296, !297, !302, !303, !308, !309}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !293, file: !206, line: 1445, baseType: !175, size: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !293, file: !206, line: 1448, baseType: !147, size: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !293, file: !206, line: 1451, baseType: !298, size: 32, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 32)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !293, file: !206, line: 1454, baseType: !298, size: 32, offset: 288)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !293, file: !206, line: 1457, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !268, line: 67, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !268, line: 65, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !305, file: !268, line: 66, baseType: !267, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !293, file: !206, line: 1460, baseType: !171, size: 32, offset: 384)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !293, file: !206, line: 1463, baseType: !96, size: 32, offset: 416)
!310 = !{!311}
!311 = !DILocalVariable(name: "timer", arg: 1, scope: !288, file: !206, line: 1635, type: !291)
!312 = !DILocation(line: 1635, column: 34, scope: !288)
!313 = !DILocation(line: 1637, column: 28, scope: !288)
!314 = !DILocation(line: 1637, column: 35, scope: !288)
!315 = !DILocation(line: 1637, column: 9, scope: !288)
!316 = !DILocation(line: 1637, column: 2, scope: !288)
!317 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !206, file: !206, line: 1649, type: !289, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !318)
!318 = !{!319}
!319 = !DILocalVariable(name: "timer", arg: 1, scope: !317, file: !206, line: 1650, type: !291)
!320 = !DILocation(line: 1650, column: 34, scope: !317)
!321 = !DILocation(line: 1652, column: 30, scope: !317)
!322 = !DILocation(line: 1652, column: 37, scope: !317)
!323 = !DILocation(line: 1652, column: 9, scope: !317)
!324 = !DILocation(line: 1652, column: 2, scope: !317)
!325 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !206, file: !206, line: 1689, type: !326, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !301, !96}
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "timer", arg: 1, scope: !325, file: !206, line: 1689, type: !301)
!330 = !DILocalVariable(name: "user_data", arg: 2, scope: !325, file: !206, line: 1690, type: !96)
!331 = !DILocation(line: 1689, column: 65, scope: !325)
!332 = !DILocation(line: 1690, column: 19, scope: !325)
!333 = !DILocation(line: 1692, column: 21, scope: !325)
!334 = !DILocation(line: 1692, column: 2, scope: !325)
!335 = !DILocation(line: 1692, column: 9, scope: !325)
!336 = !DILocation(line: 1692, column: 19, scope: !325)
!337 = !DILocation(line: 1693, column: 1, scope: !325)
!338 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !206, file: !206, line: 1704, type: !339, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{!96, !291}
!341 = !{!342}
!342 = !DILocalVariable(name: "timer", arg: 1, scope: !338, file: !206, line: 1704, type: !291)
!343 = !DILocation(line: 1704, column: 72, scope: !338)
!344 = !DILocation(line: 1706, column: 9, scope: !338)
!345 = !DILocation(line: 1706, column: 16, scope: !338)
!346 = !DILocation(line: 1706, column: 2, scope: !338)
!347 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !206, file: !206, line: 2071, type: !348, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !368)
!348 = !DISubroutineType(types: !349)
!349 = !{!97, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 32)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !206, line: 1830, size: 128, elements: !352)
!352 = !{!353, !366, !367}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !351, file: !206, line: 1831, baseType: !354, size: 64)
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
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !355, line: 40, baseType: !171)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !356, file: !355, line: 55, baseType: !359, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !206, line: 1832, baseType: !221, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !351, file: !206, line: 1833, baseType: !147, size: 64, offset: 64)
!368 = !{!369}
!369 = !DILocalVariable(name: "queue", arg: 1, scope: !347, file: !206, line: 2071, type: !350)
!370 = !DILocation(line: 2071, column: 59, scope: !347)
!371 = !DILocation(line: 2073, column: 35, scope: !347)
!372 = !DILocation(line: 2073, column: 42, scope: !347)
!373 = !DILocation(line: 2073, column: 14, scope: !347)
!374 = !DILocation(line: 2073, column: 9, scope: !347)
!375 = !DILocation(line: 2073, column: 2, scope: !347)
!376 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !206, file: !206, line: 3209, type: !377, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !385)
!377 = !DISubroutineType(types: !378)
!378 = !{!172, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 32)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !206, line: 3092, size: 128, elements: !381)
!381 = !{!382, !383, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !380, file: !206, line: 3093, baseType: !147, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !380, file: !206, line: 3094, baseType: !172, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !380, file: !206, line: 3095, baseType: !172, size: 32, offset: 96)
!385 = !{!386}
!386 = !DILocalVariable(name: "sem", arg: 1, scope: !376, file: !206, line: 3209, type: !379)
!387 = !DILocation(line: 3209, column: 65, scope: !376)
!388 = !DILocation(line: 3211, column: 9, scope: !376)
!389 = !DILocation(line: 3211, column: 14, scope: !376)
!390 = !DILocation(line: 3211, column: 2, scope: !376)
!391 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !206, file: !206, line: 4649, type: !392, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!392 = !DISubroutineType(types: !393)
!393 = !{!171, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !206, line: 4390, size: 320, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !404, !405, !406, !407, !408}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !395, file: !206, line: 4392, baseType: !147, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !395, file: !206, line: 4394, baseType: !221, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !395, file: !206, line: 4396, baseType: !217, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !395, file: !206, line: 4398, baseType: !171, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !395, file: !206, line: 4400, baseType: !402, size: 32, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 32)
!403 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !395, file: !206, line: 4402, baseType: !402, size: 32, offset: 160)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !395, file: !206, line: 4404, baseType: !402, size: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !395, file: !206, line: 4406, baseType: !402, size: 32, offset: 224)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !395, file: !206, line: 4408, baseType: !171, size: 32, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !395, file: !206, line: 4413, baseType: !154, size: 8, offset: 288)
!409 = !{!410}
!410 = !DILocalVariable(name: "msgq", arg: 1, scope: !391, file: !206, line: 4649, type: !394)
!411 = !DILocation(line: 4649, column: 66, scope: !391)
!412 = !DILocation(line: 4651, column: 9, scope: !391)
!413 = !DILocation(line: 4651, column: 15, scope: !391)
!414 = !DILocation(line: 4651, column: 26, scope: !391)
!415 = !DILocation(line: 4651, column: 32, scope: !391)
!416 = !DILocation(line: 4651, column: 24, scope: !391)
!417 = !DILocation(line: 4651, column: 2, scope: !391)
!418 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !206, file: !206, line: 4665, type: !392, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!419 = !{!420}
!420 = !DILocalVariable(name: "msgq", arg: 1, scope: !418, file: !206, line: 4665, type: !394)
!421 = !DILocation(line: 4665, column: 66, scope: !418)
!422 = !DILocation(line: 4667, column: 9, scope: !418)
!423 = !DILocation(line: 4667, column: 15, scope: !418)
!424 = !DILocation(line: 4667, column: 2, scope: !418)
!425 = distinct !DISubprogram(name: "assert_post_action", scope: !426, file: !426, line: 26, type: !427, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!426 = !DIFile(filename: "lib/os/assert.c", directory: "/home/sri/zephyrproject/zephyr")
!427 = !DISubroutineType(types: !428)
!428 = !{null, !429, !172}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!431 = !{!432, !433, !434}
!432 = !DILocalVariable(name: "file", arg: 1, scope: !425, file: !426, line: 26, type: !429)
!433 = !DILocalVariable(name: "line", arg: 2, scope: !425, file: !426, line: 26, type: !172)
!434 = !DILocalVariable(name: "r0", scope: !425, file: !426, line: 43, type: !171)
!435 = !DILocation(line: 26, column: 63, scope: !425)
!436 = !DILocation(line: 26, column: 82, scope: !425)
!437 = !DILocation(line: 30, column: 9, scope: !425)
!438 = !DILocation(line: 31, column: 9, scope: !425)
!439 = !DILocation(line: 43, column: 2, scope: !425)
!440 = !DILocation(line: 43, column: 20, scope: !425)
!441 = !DILocation(line: 43, column: 59, scope: !425)
!442 = !DILocation(line: 43, column: 122, scope: !443)
!443 = distinct !DILexicalBlock(scope: !425, file: !426, line: 43, column: 62)
!444 = !DILocation(line: 43, column: 64, scope: !443)
!445 = !{i64 158834, i64 158844, i64 158860}
!446 = !DILocation(line: 43, column: 153, scope: !443)
!447 = !DILocation(line: 44, column: 1, scope: !425)
!448 = distinct !DISubprogram(name: "assert_print", scope: !426, file: !426, line: 46, type: !449, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !451)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !429, null}
!451 = !{!452, !453}
!452 = !DILocalVariable(name: "fmt", arg: 1, scope: !448, file: !426, line: 46, type: !429)
!453 = !DILocalVariable(name: "ap", scope: !448, file: !426, line: 48, type: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !455, line: 22, baseType: !456)
!455 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !457, file: !1, line: 48, baseType: !96, size: 32)
!460 = !DILocation(line: 46, column: 31, scope: !448)
!461 = !DILocation(line: 48, column: 2, scope: !448)
!462 = !DILocation(line: 48, column: 10, scope: !448)
!463 = !DILocation(line: 50, column: 2, scope: !448)
!464 = !DILocation(line: 52, column: 10, scope: !448)
!465 = !DILocation(line: 52, column: 2, scope: !448)
!466 = !DILocation(line: 54, column: 2, scope: !448)
!467 = !DILocation(line: 55, column: 1, scope: !448)
!468 = !DISubprogram(name: "vprintk", scope: !469, file: !469, line: 48, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!469 = !DIFile(filename: "include/zephyr/sys/printk.h", directory: "/home/sri/zephyrproject/zephyr")
!470 = !DISubroutineType(types: !471)
!471 = !{null, !429, !454}
!472 = !DISubprogram(name: "z_timeout_expires", scope: !206, file: !206, line: 642, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!473 = !DISubroutineType(types: !474)
!474 = !{!267, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!477 = !DISubprogram(name: "z_timeout_remaining", scope: !206, file: !206, line: 643, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !223)
!478 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !355, file: !355, line: 335, type: !479, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !483)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !482}
!481 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 32)
!483 = !{!484}
!484 = !DILocalVariable(name: "list", arg: 1, scope: !478, file: !355, line: 335, type: !482)
!485 = !DILocation(line: 335, column: 55, scope: !478)
!486 = !DILocation(line: 335, column: 92, scope: !478)
!487 = !DILocation(line: 335, column: 71, scope: !478)
!488 = !DILocation(line: 335, column: 98, scope: !478)
!489 = !DILocation(line: 335, column: 63, scope: !478)
!490 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !355, file: !355, line: 255, type: !491, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!359, !482}
!493 = !{!494}
!494 = !DILocalVariable(name: "list", arg: 1, scope: !490, file: !355, line: 255, type: !482)
!495 = !DILocation(line: 255, column: 64, scope: !490)
!496 = !DILocation(line: 257, column: 9, scope: !490)
!497 = !DILocation(line: 257, column: 15, scope: !490)
!498 = !DILocation(line: 257, column: 2, scope: !490)
