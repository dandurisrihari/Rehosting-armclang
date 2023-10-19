; ModuleID = '../bc_files/device.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/device.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }

@_device_list_start = external dso_local global [0 x %struct.device], align 4
@_device_list_end = external dso_local global [0 x %struct.device], align 4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !97 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !124, metadata !DIExpression()), !dbg !125
  %3 = load ptr, ptr %2, align 4, !dbg !126
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #4, !dbg !127
  ret i1 %4, !dbg !128
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !129 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !136, metadata !DIExpression()), !dbg !138
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !137, metadata !DIExpression()), !dbg !139
  %5 = load ptr, ptr %3, align 4, !dbg !140
  %6 = load ptr, ptr %4, align 4, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !143 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !147, metadata !DIExpression()), !dbg !148
  %3 = load ptr, ptr %2, align 4, !dbg !149
  ret void, !dbg !150
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !151 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !155, metadata !DIExpression()), !dbg !156
  %3 = load i8, ptr %2, align 1, !dbg !157
  ret ptr null, !dbg !158
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !159 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !165, metadata !DIExpression()), !dbg !167
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !166, metadata !DIExpression()), !dbg !168
  %5 = load i8, ptr %3, align 1, !dbg !169
  %6 = load i32, ptr %4, align 4, !dbg !170
  ret ptr null, !dbg !171
}

; Function Attrs: nounwind optsize
define hidden void @z_device_state_init() #1 !dbg !172 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %1, metadata !177, metadata !DIExpression()), !dbg !181
  store ptr @_device_list_start, ptr %1, align 4, !dbg !181
  br label %3, !dbg !180

3:                                                ; preds = %12, %0
  %4 = load ptr, ptr %1, align 4, !dbg !182
  %5 = icmp ult ptr %4, @_device_list_end, !dbg !185
  %6 = zext i1 %5 to i32, !dbg !185
  store i32 %6, ptr %2, align 4, !dbg !186
  %7 = load i32, ptr %2, align 4, !dbg !188
  %8 = icmp ne i32 %7, 0, !dbg !189
  br i1 %8, label %10, label %9, !dbg !189

9:                                                ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #5, !dbg !190
  br label %15

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 4, !dbg !191
  call void @z_object_init(ptr noundef %11) #4, !dbg !193
  br label %12, !dbg !194

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 4, !dbg !195
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 1, !dbg !195
  store ptr %14, ptr %1, align 4, !dbg !195
  br label %3, !dbg !190, !llvm.loop !196

15:                                               ; preds = %9
  ret void, !dbg !198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: inlinehint nounwind optsize
define internal void @z_object_init(ptr noundef %0) #0 !dbg !199 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !201, metadata !DIExpression()), !dbg !202
  %3 = load ptr, ptr %2, align 4, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden ptr @z_impl_device_get_binding(ptr noundef %0) #1 !dbg !205 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !209, metadata !DIExpression()), !dbg !214
  %9 = load ptr, ptr %3, align 4, !dbg !215
  %10 = icmp eq ptr %9, null, !dbg !217
  br i1 %10, label %17, label %11, !dbg !218

11:                                               ; preds = %1
  %12 = load ptr, ptr %3, align 4, !dbg !219
  %13 = getelementptr inbounds i8, ptr %12, i32 0, !dbg !219
  %14 = load i8, ptr %13, align 1, !dbg !219
  %15 = zext i8 %14 to i32, !dbg !219
  %16 = icmp eq i32 %15, 0, !dbg !220
  br i1 %16, label %17, label %18, !dbg !221

17:                                               ; preds = %11, %1
  store ptr null, ptr %2, align 4, !dbg !222
  br label %70, !dbg !222

18:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %4, metadata !210, metadata !DIExpression()), !dbg !225
  store ptr @_device_list_start, ptr %4, align 4, !dbg !225
  br label %19, !dbg !224

19:                                               ; preds = %38, %18
  %20 = load ptr, ptr %4, align 4, !dbg !226
  %21 = icmp ult ptr %20, @_device_list_end, !dbg !229
  %22 = zext i1 %21 to i32, !dbg !229
  store i32 %22, ptr %5, align 4, !dbg !230
  %23 = load i32, ptr %5, align 4, !dbg !232
  %24 = icmp ne i32 %23, 0, !dbg !233
  br i1 %24, label %26, label %25, !dbg !233

25:                                               ; preds = %19
  store i32 2, ptr %6, align 4
  br label %41, !dbg !233

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 4, !dbg !234
  %28 = call zeroext i1 @z_device_is_ready(ptr noundef %27) #4, !dbg !237
  br i1 %28, label %29, label %37, !dbg !238

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 4, !dbg !239
  %31 = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 0, !dbg !240
  %32 = load ptr, ptr %31, align 4, !dbg !240
  %33 = load ptr, ptr %3, align 4, !dbg !241
  %34 = icmp eq ptr %32, %33, !dbg !242
  br i1 %34, label %35, label %37, !dbg !243

35:                                               ; preds = %29
  %36 = load ptr, ptr %4, align 4, !dbg !244
  store ptr %36, ptr %2, align 4, !dbg !246
  store i32 1, ptr %6, align 4
  br label %41, !dbg !246

37:                                               ; preds = %29, %26
  br label %38, !dbg !247

38:                                               ; preds = %37
  %39 = load ptr, ptr %4, align 4, !dbg !248
  %40 = getelementptr inbounds %struct.device, ptr %39, i32 1, !dbg !248
  store ptr %40, ptr %4, align 4, !dbg !248
  br label %19, !dbg !249, !llvm.loop !250

41:                                               ; preds = %35, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !249
  %42 = load i32, ptr %6, align 4
  switch i32 %42, label %72 [
    i32 2, label %43
    i32 1, label %70
  ]

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %7, metadata !212, metadata !DIExpression()), !dbg !253
  store ptr @_device_list_start, ptr %7, align 4, !dbg !253
  br label %44, !dbg !252

44:                                               ; preds = %64, %43
  %45 = load ptr, ptr %7, align 4, !dbg !254
  %46 = icmp ult ptr %45, @_device_list_end, !dbg !257
  %47 = zext i1 %46 to i32, !dbg !257
  store i32 %47, ptr %8, align 4, !dbg !258
  %48 = load i32, ptr %8, align 4, !dbg !260
  %49 = icmp ne i32 %48, 0, !dbg !261
  br i1 %49, label %51, label %50, !dbg !261

50:                                               ; preds = %44
  store i32 5, ptr %6, align 4
  br label %67, !dbg !261

51:                                               ; preds = %44
  %52 = load ptr, ptr %7, align 4, !dbg !262
  %53 = call zeroext i1 @z_device_is_ready(ptr noundef %52) #4, !dbg !265
  br i1 %53, label %54, label %63, !dbg !266

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 4, !dbg !267
  %56 = load ptr, ptr %7, align 4, !dbg !268
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 0, !dbg !269
  %58 = load ptr, ptr %57, align 4, !dbg !269
  %59 = call i32 @strcmp(ptr noundef %55, ptr noundef %58) #6, !dbg !270
  %60 = icmp eq i32 %59, 0, !dbg !271
  br i1 %60, label %61, label %63, !dbg !272

61:                                               ; preds = %54
  %62 = load ptr, ptr %7, align 4, !dbg !273
  store ptr %62, ptr %2, align 4, !dbg !275
  store i32 1, ptr %6, align 4
  br label %67, !dbg !275

63:                                               ; preds = %54, %51
  br label %64, !dbg !276

64:                                               ; preds = %63
  %65 = load ptr, ptr %7, align 4, !dbg !277
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 1, !dbg !277
  store ptr %66, ptr %7, align 4, !dbg !277
  br label %44, !dbg !278, !llvm.loop !279

67:                                               ; preds = %61, %50
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5, !dbg !278
  %68 = load i32, ptr %6, align 4
  switch i32 %68, label %72 [
    i32 5, label %69
    i32 1, label %70
  ]

69:                                               ; preds = %67
  store ptr null, ptr %2, align 4, !dbg !281
  br label %70, !dbg !281

70:                                               ; preds = %69, %67, %41, %17
  %71 = load ptr, ptr %2, align 4, !dbg !282
  ret ptr %71, !dbg !282

72:                                               ; preds = %67, %41
  unreachable
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @z_device_is_ready(ptr noundef %0) #1 !dbg !283 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !285, metadata !DIExpression()), !dbg !286
  %4 = load ptr, ptr %3, align 4, !dbg !287
  %5 = icmp eq ptr %4, null, !dbg !289
  br i1 %5, label %6, label %7, !dbg !290

6:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !291
  br label %25, !dbg !291

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4, !dbg !293
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3, !dbg !294
  %10 = load ptr, ptr %9, align 4, !dbg !294
  %11 = getelementptr inbounds %struct.device_state, ptr %10, i32 0, i32 1, !dbg !295
  %12 = load i8, ptr %11, align 1, !dbg !295
  %13 = and i8 %12, 1, !dbg !295
  %14 = trunc i8 %13 to i1, !dbg !295
  br i1 %14, label %15, label %23, !dbg !296

15:                                               ; preds = %7
  %16 = load ptr, ptr %3, align 4, !dbg !297
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3, !dbg !298
  %18 = load ptr, ptr %17, align 4, !dbg !298
  %19 = getelementptr inbounds %struct.device_state, ptr %18, i32 0, i32 0, !dbg !299
  %20 = load i8, ptr %19, align 1, !dbg !299
  %21 = zext i8 %20 to i32, !dbg !297
  %22 = icmp eq i32 %21, 0, !dbg !300
  br label %23

23:                                               ; preds = %15, %7
  %24 = phi i1 [ false, %7 ], [ %22, %15 ], !dbg !301
  store i1 %24, ptr %2, align 1, !dbg !302
  br label %25, !dbg !302

25:                                               ; preds = %23, %6
  %26 = load i1, ptr %2, align 1, !dbg !303
  ret i1 %26, !dbg !303
}

; Function Attrs: nounwind optsize
declare !dbg !304 dso_local i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind optsize
define hidden i32 @z_device_get_all_static(ptr noundef %0) #1 !dbg !309 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %3, metadata !315, metadata !DIExpression()), !dbg !318
  br label %4, !dbg !319

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4, !dbg !320
  store ptr @_device_list_start, ptr %5, align 4, !dbg !322
  br label %6, !dbg !323

6:                                                ; preds = %4
  br label %7, !dbg !323

7:                                                ; preds = %6
  br label %8, !dbg !324

8:                                                ; preds = %7
  %9 = udiv i32 sub (i32 ptrtoint (ptr @_device_list_end to i32), i32 ptrtoint (ptr @_device_list_start to i32)), 20, !dbg !325
  store i32 %9, ptr %3, align 4, !dbg !327
  br label %10, !dbg !328

10:                                               ; preds = %8
  br label %11, !dbg !328

11:                                               ; preds = %10
  %12 = load i32, ptr %3, align 4, !dbg !329
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !330
  ret i32 %12, !dbg !331
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { optsize }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "device.c", directory: "/home/sri/zephyrproject/zephyr/build")
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
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !88, line: 102, baseType: !89)
!88 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!89 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!90 = !{i32 7, !"Dwarf Version", i32 4}
!91 = !{i32 2, !"Debug Info Version", i32 3}
!92 = !{i32 1, !"wchar_size", i32 4}
!93 = !{i32 1, !"static_rwdata", i32 1}
!94 = !{i32 1, !"enumsize_buildattr", i32 1}
!95 = !{i32 1, !"armlib_unavailable", i32 0}
!96 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!97 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !98, file: !98, line: 744, type: !99, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!98 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !102}
!101 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !98, line: 381, size: 160, elements: !105)
!105 = !{!106, !110, !113, !114, !121}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !98, line: 383, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !104, file: !98, line: 385, baseType: !111, size: 32, offset: 32)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !104, file: !98, line: 387, baseType: !111, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !104, file: !98, line: 389, baseType: !115, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 32)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !98, line: 354, size: 16, elements: !117)
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !116, file: !98, line: 362, baseType: !119, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !116, file: !98, line: 367, baseType: !101, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !104, file: !98, line: 391, baseType: !122, size: 32, offset: 128)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!123 = !{!124}
!124 = !DILocalVariable(name: "dev", arg: 1, scope: !97, file: !98, line: 744, type: !102)
!125 = !DILocation(line: 744, column: 65, scope: !97)
!126 = !DILocation(line: 746, column: 27, scope: !97)
!127 = !DILocation(line: 746, column: 9, scope: !97)
!128 = !DILocation(line: 746, column: 2, scope: !97)
!129 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !130, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !111, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !134, line: 469, flags: DIFlagFwdDecl)
!134 = !DIFile(filename: "include/zephyr/sys/mem_manage.h", directory: "/home/sri/zephyrproject/zephyr")
!135 = !{!136, !137}
!136 = !DILocalVariable(name: "object", arg: 1, scope: !129, file: !4, line: 223, type: !111)
!137 = !DILocalVariable(name: "thread", arg: 2, scope: !129, file: !4, line: 224, type: !132)
!138 = !DILocation(line: 223, column: 61, scope: !129)
!139 = !DILocation(line: 224, column: 24, scope: !129)
!140 = !DILocation(line: 226, column: 9, scope: !129)
!141 = !DILocation(line: 227, column: 9, scope: !129)
!142 = !DILocation(line: 228, column: 1, scope: !129)
!143 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !144, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !111}
!146 = !{!147}
!147 = !DILocalVariable(name: "object", arg: 1, scope: !143, file: !4, line: 243, type: !111)
!148 = !DILocation(line: 243, column: 56, scope: !143)
!149 = !DILocation(line: 245, column: 9, scope: !143)
!150 = !DILocation(line: 246, column: 1, scope: !143)
!151 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !152, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!122, !3}
!154 = !{!155}
!155 = !DILocalVariable(name: "otype", arg: 1, scope: !151, file: !4, line: 359, type: !3)
!156 = !DILocation(line: 359, column: 58, scope: !151)
!157 = !DILocation(line: 361, column: 9, scope: !151)
!158 = !DILocation(line: 363, column: 2, scope: !151)
!159 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !160, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!160 = !DISubroutineType(types: !161)
!161 = !{!122, !3, !162}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 51, baseType: !89)
!163 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!164 = !{!165, !166}
!165 = !DILocalVariable(name: "otype", arg: 1, scope: !159, file: !4, line: 366, type: !3)
!166 = !DILocalVariable(name: "size", arg: 2, scope: !159, file: !4, line: 367, type: !162)
!167 = !DILocation(line: 366, column: 63, scope: !159)
!168 = !DILocation(line: 367, column: 13, scope: !159)
!169 = !DILocation(line: 369, column: 9, scope: !159)
!170 = !DILocation(line: 370, column: 9, scope: !159)
!171 = !DILocation(line: 372, column: 2, scope: !159)
!172 = distinct !DISubprogram(name: "z_device_state_init", scope: !173, file: !173, line: 21, type: !174, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!173 = !DIFile(filename: "kernel/device.c", directory: "/home/sri/zephyrproject/zephyr")
!174 = !DISubroutineType(types: !175)
!175 = !{null}
!176 = !{!177}
!177 = !DILocalVariable(name: "dev", scope: !178, file: !173, line: 23, type: !179)
!178 = distinct !DILexicalBlock(scope: !172, file: !173, line: 23, column: 86)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!180 = !DILocation(line: 23, column: 91, scope: !178)
!181 = !DILocation(line: 23, column: 107, scope: !178)
!182 = !DILocation(line: 23, column: 141, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !173, line: 23, column: 134)
!184 = distinct !DILexicalBlock(scope: !178, file: !173, line: 23, column: 86)
!185 = !DILocation(line: 23, column: 145, scope: !183)
!186 = !DILocation(line: 23, column: 138, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !173, line: 23, column: 136)
!188 = !DILocation(line: 23, column: 165, scope: !183)
!189 = !DILocation(line: 23, column: 86, scope: !178)
!190 = !DILocation(line: 23, column: 86, scope: !184)
!191 = !DILocation(line: 24, column: 17, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !173, line: 23, column: 176)
!193 = !DILocation(line: 24, column: 3, scope: !192)
!194 = !DILocation(line: 25, column: 2, scope: !192)
!195 = !DILocation(line: 23, column: 172, scope: !184)
!196 = distinct !{!196, !189, !197}
!197 = !DILocation(line: 25, column: 2, scope: !178)
!198 = !DILocation(line: 26, column: 1, scope: !172)
!199 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !144, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!200 = !{!201}
!201 = !DILocalVariable(name: "obj", arg: 1, scope: !199, file: !4, line: 215, type: !111)
!202 = !DILocation(line: 215, column: 46, scope: !199)
!203 = !DILocation(line: 217, column: 9, scope: !199)
!204 = !DILocation(line: 218, column: 1, scope: !199)
!205 = distinct !DISubprogram(name: "z_impl_device_get_binding", scope: !173, file: !173, line: 28, type: !206, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!102, !107}
!208 = !{!209, !210, !212}
!209 = !DILocalVariable(name: "name", arg: 1, scope: !205, file: !173, line: 28, type: !107)
!210 = !DILocalVariable(name: "dev", scope: !211, file: !173, line: 42, type: !179)
!211 = distinct !DILexicalBlock(scope: !205, file: !173, line: 42, column: 86)
!212 = !DILocalVariable(name: "dev", scope: !213, file: !173, line: 48, type: !179)
!213 = distinct !DILexicalBlock(scope: !205, file: !173, line: 48, column: 86)
!214 = !DILocation(line: 28, column: 60, scope: !205)
!215 = !DILocation(line: 33, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !205, file: !173, line: 33, column: 6)
!217 = !DILocation(line: 33, column: 12, scope: !216)
!218 = !DILocation(line: 33, column: 18, scope: !216)
!219 = !DILocation(line: 33, column: 22, scope: !216)
!220 = !DILocation(line: 33, column: 30, scope: !216)
!221 = !DILocation(line: 33, column: 6, scope: !205)
!222 = !DILocation(line: 34, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !216, file: !173, line: 33, column: 40)
!224 = !DILocation(line: 42, column: 91, scope: !211)
!225 = !DILocation(line: 42, column: 107, scope: !211)
!226 = !DILocation(line: 42, column: 141, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !173, line: 42, column: 134)
!228 = distinct !DILexicalBlock(scope: !211, file: !173, line: 42, column: 86)
!229 = !DILocation(line: 42, column: 145, scope: !227)
!230 = !DILocation(line: 42, column: 138, scope: !231)
!231 = distinct !DILexicalBlock(scope: !227, file: !173, line: 42, column: 136)
!232 = !DILocation(line: 42, column: 165, scope: !227)
!233 = !DILocation(line: 42, column: 86, scope: !211)
!234 = !DILocation(line: 43, column: 25, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !173, line: 43, column: 7)
!236 = distinct !DILexicalBlock(scope: !228, file: !173, line: 42, column: 176)
!237 = !DILocation(line: 43, column: 7, scope: !235)
!238 = !DILocation(line: 43, column: 30, scope: !235)
!239 = !DILocation(line: 43, column: 34, scope: !235)
!240 = !DILocation(line: 43, column: 39, scope: !235)
!241 = !DILocation(line: 43, column: 47, scope: !235)
!242 = !DILocation(line: 43, column: 44, scope: !235)
!243 = !DILocation(line: 43, column: 7, scope: !236)
!244 = !DILocation(line: 44, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !235, file: !173, line: 43, column: 54)
!246 = !DILocation(line: 44, column: 4, scope: !245)
!247 = !DILocation(line: 46, column: 2, scope: !236)
!248 = !DILocation(line: 42, column: 172, scope: !228)
!249 = !DILocation(line: 42, column: 86, scope: !228)
!250 = distinct !{!250, !233, !251}
!251 = !DILocation(line: 46, column: 2, scope: !211)
!252 = !DILocation(line: 48, column: 91, scope: !213)
!253 = !DILocation(line: 48, column: 107, scope: !213)
!254 = !DILocation(line: 48, column: 141, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !173, line: 48, column: 134)
!256 = distinct !DILexicalBlock(scope: !213, file: !173, line: 48, column: 86)
!257 = !DILocation(line: 48, column: 145, scope: !255)
!258 = !DILocation(line: 48, column: 138, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !173, line: 48, column: 136)
!260 = !DILocation(line: 48, column: 165, scope: !255)
!261 = !DILocation(line: 48, column: 86, scope: !213)
!262 = !DILocation(line: 49, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !264, file: !173, line: 49, column: 7)
!264 = distinct !DILexicalBlock(scope: !256, file: !173, line: 48, column: 176)
!265 = !DILocation(line: 49, column: 7, scope: !263)
!266 = !DILocation(line: 49, column: 30, scope: !263)
!267 = !DILocation(line: 49, column: 41, scope: !263)
!268 = !DILocation(line: 49, column: 47, scope: !263)
!269 = !DILocation(line: 49, column: 52, scope: !263)
!270 = !DILocation(line: 49, column: 34, scope: !263)
!271 = !DILocation(line: 49, column: 58, scope: !263)
!272 = !DILocation(line: 49, column: 7, scope: !264)
!273 = !DILocation(line: 50, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !263, file: !173, line: 49, column: 65)
!275 = !DILocation(line: 50, column: 4, scope: !274)
!276 = !DILocation(line: 52, column: 2, scope: !264)
!277 = !DILocation(line: 48, column: 172, scope: !256)
!278 = !DILocation(line: 48, column: 86, scope: !256)
!279 = distinct !{!279, !261, !280}
!280 = !DILocation(line: 52, column: 2, scope: !213)
!281 = !DILocation(line: 54, column: 2, scope: !205)
!282 = !DILocation(line: 55, column: 1, scope: !205)
!283 = distinct !DISubprogram(name: "z_device_is_ready", scope: !173, file: !173, line: 90, type: !99, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !284)
!284 = !{!285}
!285 = !DILocalVariable(name: "dev", arg: 1, scope: !283, file: !173, line: 90, type: !102)
!286 = !DILocation(line: 90, column: 46, scope: !283)
!287 = !DILocation(line: 96, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !283, file: !173, line: 96, column: 6)
!289 = !DILocation(line: 96, column: 10, scope: !288)
!290 = !DILocation(line: 96, column: 6, scope: !283)
!291 = !DILocation(line: 97, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !173, line: 96, column: 16)
!293 = !DILocation(line: 100, column: 9, scope: !283)
!294 = !DILocation(line: 100, column: 14, scope: !283)
!295 = !DILocation(line: 100, column: 21, scope: !283)
!296 = !DILocation(line: 100, column: 33, scope: !283)
!297 = !DILocation(line: 100, column: 37, scope: !283)
!298 = !DILocation(line: 100, column: 42, scope: !283)
!299 = !DILocation(line: 100, column: 49, scope: !283)
!300 = !DILocation(line: 100, column: 58, scope: !283)
!301 = !DILocation(line: 0, scope: !283)
!302 = !DILocation(line: 100, column: 2, scope: !283)
!303 = !DILocation(line: 101, column: 1, scope: !283)
!304 = !DISubprogram(name: "strcmp", scope: !163, file: !163, line: 125, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !308)
!305 = !DISubroutineType(types: !306)
!306 = !{!307, !107, !107}
!307 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!308 = !{}
!309 = distinct !DISubprogram(name: "z_device_get_all_static", scope: !173, file: !173, line: 80, type: !310, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !313)
!310 = !DISubroutineType(types: !311)
!311 = !{!162, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 32)
!313 = !{!314, !315}
!314 = !DILocalVariable(name: "devices", arg: 1, scope: !309, file: !173, line: 80, type: !312)
!315 = !DILocalVariable(name: "cnt", scope: !309, file: !173, line: 82, type: !162)
!316 = !DILocation(line: 80, column: 54, scope: !309)
!317 = !DILocation(line: 82, column: 2, scope: !309)
!318 = !DILocation(line: 82, column: 9, scope: !309)
!319 = !DILocation(line: 84, column: 2, scope: !309)
!320 = !DILocation(line: 84, column: 52, scope: !321)
!321 = distinct !DILexicalBlock(scope: !309, file: !173, line: 84, column: 5)
!322 = !DILocation(line: 84, column: 61, scope: !321)
!323 = !DILocation(line: 84, column: 87, scope: !321)
!324 = !DILocation(line: 85, column: 2, scope: !309)
!325 = !DILocation(line: 85, column: 163, scope: !326)
!326 = distinct !DILexicalBlock(scope: !309, file: !173, line: 85, column: 5)
!327 = !DILocation(line: 85, column: 99, scope: !326)
!328 = !DILocation(line: 85, column: 188, scope: !326)
!329 = !DILocation(line: 87, column: 9, scope: !309)
!330 = !DILocation(line: 88, column: 1, scope: !309)
!331 = !DILocation(line: 87, column: 2, scope: !309)
