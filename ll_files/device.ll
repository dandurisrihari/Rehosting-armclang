; ModuleID = '../bc_files/device.bc'
source_filename = "/home/sri/zephyrproject/zephyr/kernel/device.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }

@_device_list_start = external global [0 x %struct.device], align 4
@_device_list_end = external global [0 x %struct.device], align 4

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !99 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !126, metadata !DIExpression()), !dbg !127
  %3 = load ptr, ptr %2, align 4, !dbg !128
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !129
  ret i1 %4, !dbg !130
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !131 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !137, metadata !DIExpression()), !dbg !138
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !139, metadata !DIExpression()), !dbg !140
  %5 = load ptr, ptr %3, align 4, !dbg !141
  %6 = load ptr, ptr %4, align 4, !dbg !142
  ret void, !dbg !143
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !144 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !147, metadata !DIExpression()), !dbg !148
  %3 = load ptr, ptr %2, align 4, !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !151 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !154, metadata !DIExpression()), !dbg !155
  %3 = load i8, ptr %2, align 1, !dbg !156
  ret ptr null, !dbg !157
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !158 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !165, metadata !DIExpression()), !dbg !166
  %5 = load i8, ptr %3, align 1, !dbg !167
  %6 = load i32, ptr %4, align 4, !dbg !168
  ret ptr null, !dbg !169
}

; Function Attrs: noinline nounwind optnone
define hidden void @z_device_state_init() #0 !dbg !170 {
  %1 = alloca ptr, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !174, metadata !DIExpression()), !dbg !177
  store ptr @_device_list_start, ptr %1, align 4, !dbg !177
  br label %3, !dbg !178

3:                                                ; preds = %11, %0
  %4 = load ptr, ptr %1, align 4, !dbg !179
  %5 = icmp ult ptr %4, @_device_list_end, !dbg !182
  %6 = zext i1 %5 to i32, !dbg !182
  store i32 %6, ptr %2, align 4, !dbg !183
  %7 = load i32, ptr %2, align 4, !dbg !185
  %8 = icmp ne i32 %7, 0, !dbg !186
  br i1 %8, label %9, label %14, !dbg !186

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 4, !dbg !187
  call void @z_object_init(ptr noundef %10), !dbg !189
  br label %11, !dbg !190

11:                                               ; preds = %9
  %12 = load ptr, ptr %1, align 4, !dbg !191
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 1, !dbg !191
  store ptr %13, ptr %1, align 4, !dbg !191
  br label %3, !dbg !192, !llvm.loop !193

14:                                               ; preds = %3
  ret void, !dbg !195
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @z_object_init(ptr noundef %0) #0 !dbg !196 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !197, metadata !DIExpression()), !dbg !198
  %3 = load ptr, ptr %2, align 4, !dbg !199
  ret void, !dbg !200
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @z_impl_device_get_binding(ptr noundef %0) #0 !dbg !201 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !204, metadata !DIExpression()), !dbg !205
  %8 = load ptr, ptr %3, align 4, !dbg !206
  %9 = icmp eq ptr %8, null, !dbg !208
  br i1 %9, label %16, label %10, !dbg !209

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4, !dbg !210
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !210
  %13 = load i8, ptr %12, align 1, !dbg !210
  %14 = zext i8 %13 to i32, !dbg !210
  %15 = icmp eq i32 %14, 0, !dbg !211
  br i1 %15, label %16, label %17, !dbg !212

16:                                               ; preds = %10, %1
  store ptr null, ptr %2, align 4, !dbg !213
  br label %63, !dbg !213

17:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %4, metadata !215, metadata !DIExpression()), !dbg !217
  store ptr @_device_list_start, ptr %4, align 4, !dbg !217
  br label %18, !dbg !218

18:                                               ; preds = %36, %17
  %19 = load ptr, ptr %4, align 4, !dbg !219
  %20 = icmp ult ptr %19, @_device_list_end, !dbg !222
  %21 = zext i1 %20 to i32, !dbg !222
  store i32 %21, ptr %5, align 4, !dbg !223
  %22 = load i32, ptr %5, align 4, !dbg !225
  %23 = icmp ne i32 %22, 0, !dbg !226
  br i1 %23, label %24, label %39, !dbg !226

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 4, !dbg !227
  %26 = call zeroext i1 @z_device_is_ready(ptr noundef %25), !dbg !230
  br i1 %26, label %27, label %35, !dbg !231

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 4, !dbg !232
  %29 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 0, !dbg !233
  %30 = load ptr, ptr %29, align 4, !dbg !233
  %31 = load ptr, ptr %3, align 4, !dbg !234
  %32 = icmp eq ptr %30, %31, !dbg !235
  br i1 %32, label %33, label %35, !dbg !236

33:                                               ; preds = %27
  %34 = load ptr, ptr %4, align 4, !dbg !237
  store ptr %34, ptr %2, align 4, !dbg !239
  br label %63, !dbg !239

35:                                               ; preds = %27, %24
  br label %36, !dbg !240

36:                                               ; preds = %35
  %37 = load ptr, ptr %4, align 4, !dbg !241
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 1, !dbg !241
  store ptr %38, ptr %4, align 4, !dbg !241
  br label %18, !dbg !242, !llvm.loop !243

39:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %6, metadata !245, metadata !DIExpression()), !dbg !247
  store ptr @_device_list_start, ptr %6, align 4, !dbg !247
  br label %40, !dbg !248

40:                                               ; preds = %59, %39
  %41 = load ptr, ptr %6, align 4, !dbg !249
  %42 = icmp ult ptr %41, @_device_list_end, !dbg !252
  %43 = zext i1 %42 to i32, !dbg !252
  store i32 %43, ptr %7, align 4, !dbg !253
  %44 = load i32, ptr %7, align 4, !dbg !255
  %45 = icmp ne i32 %44, 0, !dbg !256
  br i1 %45, label %46, label %62, !dbg !256

46:                                               ; preds = %40
  %47 = load ptr, ptr %6, align 4, !dbg !257
  %48 = call zeroext i1 @z_device_is_ready(ptr noundef %47), !dbg !260
  br i1 %48, label %49, label %58, !dbg !261

49:                                               ; preds = %46
  %50 = load ptr, ptr %3, align 4, !dbg !262
  %51 = load ptr, ptr %6, align 4, !dbg !263
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 0, !dbg !264
  %53 = load ptr, ptr %52, align 4, !dbg !264
  %54 = call i32 @strcmp(ptr noundef %50, ptr noundef %53) #3, !dbg !265
  %55 = icmp eq i32 %54, 0, !dbg !266
  br i1 %55, label %56, label %58, !dbg !267

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 4, !dbg !268
  store ptr %57, ptr %2, align 4, !dbg !270
  br label %63, !dbg !270

58:                                               ; preds = %49, %46
  br label %59, !dbg !271

59:                                               ; preds = %58
  %60 = load ptr, ptr %6, align 4, !dbg !272
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 1, !dbg !272
  store ptr %61, ptr %6, align 4, !dbg !272
  br label %40, !dbg !273, !llvm.loop !274

62:                                               ; preds = %40
  store ptr null, ptr %2, align 4, !dbg !276
  br label %63, !dbg !276

63:                                               ; preds = %62, %56, %33, %16
  %64 = load ptr, ptr %2, align 4, !dbg !277
  ret ptr %64, !dbg !277
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @z_device_is_ready(ptr noundef %0) #0 !dbg !278 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !279, metadata !DIExpression()), !dbg !280
  %4 = load ptr, ptr %3, align 4, !dbg !281
  %5 = icmp eq ptr %4, null, !dbg !283
  br i1 %5, label %6, label %7, !dbg !284

6:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !285
  br label %25, !dbg !285

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4, !dbg !287
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3, !dbg !288
  %10 = load ptr, ptr %9, align 4, !dbg !288
  %11 = getelementptr inbounds %struct.device_state, ptr %10, i32 0, i32 1, !dbg !289
  %12 = load i8, ptr %11, align 1, !dbg !289
  %13 = and i8 %12, 1, !dbg !289
  %14 = trunc i8 %13 to i1, !dbg !289
  br i1 %14, label %15, label %23, !dbg !290

15:                                               ; preds = %7
  %16 = load ptr, ptr %3, align 4, !dbg !291
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3, !dbg !292
  %18 = load ptr, ptr %17, align 4, !dbg !292
  %19 = getelementptr inbounds %struct.device_state, ptr %18, i32 0, i32 0, !dbg !293
  %20 = load i8, ptr %19, align 1, !dbg !293
  %21 = zext i8 %20 to i32, !dbg !291
  %22 = icmp eq i32 %21, 0, !dbg !294
  br label %23

23:                                               ; preds = %15, %7
  %24 = phi i1 [ false, %7 ], [ %22, %15 ], !dbg !295
  store i1 %24, ptr %2, align 1, !dbg !296
  br label %25, !dbg !296

25:                                               ; preds = %23, %6
  %26 = load i1, ptr %2, align 1, !dbg !297
  ret i1 %26, !dbg !297
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_device_get_all_static(ptr noundef %0) #0 !dbg !298 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !302, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !305
  br label %4, !dbg !306

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4, !dbg !307
  store ptr @_device_list_start, ptr %5, align 4, !dbg !309
  br label %6, !dbg !310

6:                                                ; preds = %4
  br label %7, !dbg !311

7:                                                ; preds = %6
  %8 = udiv i32 sub (i32 ptrtoint (ptr @_device_list_end to i32), i32 ptrtoint (ptr @_device_list_start to i32)), 20, !dbg !312
  store i32 %8, ptr %3, align 4, !dbg !314
  br label %9, !dbg !315

9:                                                ; preds = %7
  %10 = load i32, ptr %3, align 4, !dbg !316
  ret i32 %10, !dbg !317
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !86, splitDebugInlining: false, nameTableKind: None)
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
!96 = !{i32 8, !"PIC Level", i32 2}
!97 = !{i32 7, !"PIE Level", i32 2}
!98 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!99 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !100, file: !100, line: 744, type: !101, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!100 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!101 = !DISubroutineType(types: !102)
!102 = !{!103, !104}
!103 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 381, size: 160, elements: !107)
!107 = !{!108, !112, !115, !116, !123}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !100, line: 383, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !106, file: !100, line: 385, baseType: !113, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !106, file: !100, line: 387, baseType: !113, size: 32, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !106, file: !100, line: 389, baseType: !117, size: 32, offset: 96)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !100, line: 354, size: 16, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !118, file: !100, line: 362, baseType: !121, size: 8)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !88, line: 62, baseType: !5)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !118, file: !100, line: 367, baseType: !103, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !106, file: !100, line: 391, baseType: !124, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!125 = !{}
!126 = !DILocalVariable(name: "dev", arg: 1, scope: !99, file: !100, line: 744, type: !104)
!127 = !DILocation(line: 744, column: 65, scope: !99)
!128 = !DILocation(line: 746, column: 27, scope: !99)
!129 = !DILocation(line: 746, column: 9, scope: !99)
!130 = !DILocation(line: 746, column: 2, scope: !99)
!131 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !4, file: !4, line: 223, type: !132, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !113, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 32)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !136, line: 469, flags: DIFlagFwdDecl)
!136 = !DIFile(filename: "include/zephyr/sys/mem_manage.h", directory: "/home/sri/zephyrproject/zephyr")
!137 = !DILocalVariable(name: "object", arg: 1, scope: !131, file: !4, line: 223, type: !113)
!138 = !DILocation(line: 223, column: 61, scope: !131)
!139 = !DILocalVariable(name: "thread", arg: 2, scope: !131, file: !4, line: 224, type: !134)
!140 = !DILocation(line: 224, column: 24, scope: !131)
!141 = !DILocation(line: 226, column: 9, scope: !131)
!142 = !DILocation(line: 227, column: 9, scope: !131)
!143 = !DILocation(line: 228, column: 1, scope: !131)
!144 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !4, file: !4, line: 243, type: !145, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !113}
!147 = !DILocalVariable(name: "object", arg: 1, scope: !144, file: !4, line: 243, type: !113)
!148 = !DILocation(line: 243, column: 56, scope: !144)
!149 = !DILocation(line: 245, column: 9, scope: !144)
!150 = !DILocation(line: 246, column: 1, scope: !144)
!151 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !4, file: !4, line: 359, type: !152, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!152 = !DISubroutineType(types: !153)
!153 = !{!124, !3}
!154 = !DILocalVariable(name: "otype", arg: 1, scope: !151, file: !4, line: 359, type: !3)
!155 = !DILocation(line: 359, column: 58, scope: !151)
!156 = !DILocation(line: 361, column: 9, scope: !151)
!157 = !DILocation(line: 363, column: 2, scope: !151)
!158 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !4, file: !4, line: 366, type: !159, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!159 = !DISubroutineType(types: !160)
!160 = !{!124, !3, !161}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !162, line: 51, baseType: !89)
!162 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!163 = !DILocalVariable(name: "otype", arg: 1, scope: !158, file: !4, line: 366, type: !3)
!164 = !DILocation(line: 366, column: 63, scope: !158)
!165 = !DILocalVariable(name: "size", arg: 2, scope: !158, file: !4, line: 367, type: !161)
!166 = !DILocation(line: 367, column: 13, scope: !158)
!167 = !DILocation(line: 369, column: 9, scope: !158)
!168 = !DILocation(line: 370, column: 9, scope: !158)
!169 = !DILocation(line: 372, column: 2, scope: !158)
!170 = distinct !DISubprogram(name: "z_device_state_init", scope: !171, file: !171, line: 21, type: !172, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!171 = !DIFile(filename: "kernel/device.c", directory: "/home/sri/zephyrproject/zephyr")
!172 = !DISubroutineType(types: !173)
!173 = !{null}
!174 = !DILocalVariable(name: "dev", scope: !175, file: !171, line: 23, type: !176)
!175 = distinct !DILexicalBlock(scope: !170, file: !171, line: 23, column: 86)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!177 = !DILocation(line: 23, column: 107, scope: !175)
!178 = !DILocation(line: 23, column: 91, scope: !175)
!179 = !DILocation(line: 23, column: 141, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !171, line: 23, column: 134)
!181 = distinct !DILexicalBlock(scope: !175, file: !171, line: 23, column: 86)
!182 = !DILocation(line: 23, column: 145, scope: !180)
!183 = !DILocation(line: 23, column: 138, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !171, line: 23, column: 136)
!185 = !DILocation(line: 23, column: 165, scope: !180)
!186 = !DILocation(line: 23, column: 86, scope: !175)
!187 = !DILocation(line: 24, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !181, file: !171, line: 23, column: 176)
!189 = !DILocation(line: 24, column: 3, scope: !188)
!190 = !DILocation(line: 25, column: 2, scope: !188)
!191 = !DILocation(line: 23, column: 172, scope: !181)
!192 = !DILocation(line: 23, column: 86, scope: !181)
!193 = distinct !{!193, !186, !194}
!194 = !DILocation(line: 25, column: 2, scope: !175)
!195 = !DILocation(line: 26, column: 1, scope: !170)
!196 = distinct !DISubprogram(name: "z_object_init", scope: !4, file: !4, line: 215, type: !145, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !125)
!197 = !DILocalVariable(name: "obj", arg: 1, scope: !196, file: !4, line: 215, type: !113)
!198 = !DILocation(line: 215, column: 46, scope: !196)
!199 = !DILocation(line: 217, column: 9, scope: !196)
!200 = !DILocation(line: 218, column: 1, scope: !196)
!201 = distinct !DISubprogram(name: "z_impl_device_get_binding", scope: !171, file: !171, line: 28, type: !202, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!202 = !DISubroutineType(types: !203)
!203 = !{!104, !109}
!204 = !DILocalVariable(name: "name", arg: 1, scope: !201, file: !171, line: 28, type: !109)
!205 = !DILocation(line: 28, column: 60, scope: !201)
!206 = !DILocation(line: 33, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !201, file: !171, line: 33, column: 6)
!208 = !DILocation(line: 33, column: 12, scope: !207)
!209 = !DILocation(line: 33, column: 18, scope: !207)
!210 = !DILocation(line: 33, column: 22, scope: !207)
!211 = !DILocation(line: 33, column: 30, scope: !207)
!212 = !DILocation(line: 33, column: 6, scope: !201)
!213 = !DILocation(line: 34, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !171, line: 33, column: 40)
!215 = !DILocalVariable(name: "dev", scope: !216, file: !171, line: 42, type: !176)
!216 = distinct !DILexicalBlock(scope: !201, file: !171, line: 42, column: 86)
!217 = !DILocation(line: 42, column: 107, scope: !216)
!218 = !DILocation(line: 42, column: 91, scope: !216)
!219 = !DILocation(line: 42, column: 141, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !171, line: 42, column: 134)
!221 = distinct !DILexicalBlock(scope: !216, file: !171, line: 42, column: 86)
!222 = !DILocation(line: 42, column: 145, scope: !220)
!223 = !DILocation(line: 42, column: 138, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !171, line: 42, column: 136)
!225 = !DILocation(line: 42, column: 165, scope: !220)
!226 = !DILocation(line: 42, column: 86, scope: !216)
!227 = !DILocation(line: 43, column: 25, scope: !228)
!228 = distinct !DILexicalBlock(scope: !229, file: !171, line: 43, column: 7)
!229 = distinct !DILexicalBlock(scope: !221, file: !171, line: 42, column: 176)
!230 = !DILocation(line: 43, column: 7, scope: !228)
!231 = !DILocation(line: 43, column: 30, scope: !228)
!232 = !DILocation(line: 43, column: 34, scope: !228)
!233 = !DILocation(line: 43, column: 39, scope: !228)
!234 = !DILocation(line: 43, column: 47, scope: !228)
!235 = !DILocation(line: 43, column: 44, scope: !228)
!236 = !DILocation(line: 43, column: 7, scope: !229)
!237 = !DILocation(line: 44, column: 11, scope: !238)
!238 = distinct !DILexicalBlock(scope: !228, file: !171, line: 43, column: 54)
!239 = !DILocation(line: 44, column: 4, scope: !238)
!240 = !DILocation(line: 46, column: 2, scope: !229)
!241 = !DILocation(line: 42, column: 172, scope: !221)
!242 = !DILocation(line: 42, column: 86, scope: !221)
!243 = distinct !{!243, !226, !244}
!244 = !DILocation(line: 46, column: 2, scope: !216)
!245 = !DILocalVariable(name: "dev", scope: !246, file: !171, line: 48, type: !176)
!246 = distinct !DILexicalBlock(scope: !201, file: !171, line: 48, column: 86)
!247 = !DILocation(line: 48, column: 107, scope: !246)
!248 = !DILocation(line: 48, column: 91, scope: !246)
!249 = !DILocation(line: 48, column: 141, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !171, line: 48, column: 134)
!251 = distinct !DILexicalBlock(scope: !246, file: !171, line: 48, column: 86)
!252 = !DILocation(line: 48, column: 145, scope: !250)
!253 = !DILocation(line: 48, column: 138, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !171, line: 48, column: 136)
!255 = !DILocation(line: 48, column: 165, scope: !250)
!256 = !DILocation(line: 48, column: 86, scope: !246)
!257 = !DILocation(line: 49, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !171, line: 49, column: 7)
!259 = distinct !DILexicalBlock(scope: !251, file: !171, line: 48, column: 176)
!260 = !DILocation(line: 49, column: 7, scope: !258)
!261 = !DILocation(line: 49, column: 30, scope: !258)
!262 = !DILocation(line: 49, column: 41, scope: !258)
!263 = !DILocation(line: 49, column: 47, scope: !258)
!264 = !DILocation(line: 49, column: 52, scope: !258)
!265 = !DILocation(line: 49, column: 34, scope: !258)
!266 = !DILocation(line: 49, column: 58, scope: !258)
!267 = !DILocation(line: 49, column: 7, scope: !259)
!268 = !DILocation(line: 50, column: 11, scope: !269)
!269 = distinct !DILexicalBlock(scope: !258, file: !171, line: 49, column: 65)
!270 = !DILocation(line: 50, column: 4, scope: !269)
!271 = !DILocation(line: 52, column: 2, scope: !259)
!272 = !DILocation(line: 48, column: 172, scope: !251)
!273 = !DILocation(line: 48, column: 86, scope: !251)
!274 = distinct !{!274, !256, !275}
!275 = !DILocation(line: 52, column: 2, scope: !246)
!276 = !DILocation(line: 54, column: 2, scope: !201)
!277 = !DILocation(line: 55, column: 1, scope: !201)
!278 = distinct !DISubprogram(name: "z_device_is_ready", scope: !171, file: !171, line: 90, type: !101, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!279 = !DILocalVariable(name: "dev", arg: 1, scope: !278, file: !171, line: 90, type: !104)
!280 = !DILocation(line: 90, column: 46, scope: !278)
!281 = !DILocation(line: 96, column: 6, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !171, line: 96, column: 6)
!283 = !DILocation(line: 96, column: 10, scope: !282)
!284 = !DILocation(line: 96, column: 6, scope: !278)
!285 = !DILocation(line: 97, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !171, line: 96, column: 16)
!287 = !DILocation(line: 100, column: 9, scope: !278)
!288 = !DILocation(line: 100, column: 14, scope: !278)
!289 = !DILocation(line: 100, column: 21, scope: !278)
!290 = !DILocation(line: 100, column: 33, scope: !278)
!291 = !DILocation(line: 100, column: 37, scope: !278)
!292 = !DILocation(line: 100, column: 42, scope: !278)
!293 = !DILocation(line: 100, column: 49, scope: !278)
!294 = !DILocation(line: 100, column: 58, scope: !278)
!295 = !DILocation(line: 0, scope: !278)
!296 = !DILocation(line: 100, column: 2, scope: !278)
!297 = !DILocation(line: 101, column: 1, scope: !278)
!298 = distinct !DISubprogram(name: "z_device_get_all_static", scope: !171, file: !171, line: 80, type: !299, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !125)
!299 = !DISubroutineType(types: !300)
!300 = !{!161, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 32)
!302 = !DILocalVariable(name: "devices", arg: 1, scope: !298, file: !171, line: 80, type: !301)
!303 = !DILocation(line: 80, column: 54, scope: !298)
!304 = !DILocalVariable(name: "cnt", scope: !298, file: !171, line: 82, type: !161)
!305 = !DILocation(line: 82, column: 9, scope: !298)
!306 = !DILocation(line: 84, column: 2, scope: !298)
!307 = !DILocation(line: 84, column: 52, scope: !308)
!308 = distinct !DILexicalBlock(scope: !298, file: !171, line: 84, column: 5)
!309 = !DILocation(line: 84, column: 61, scope: !308)
!310 = !DILocation(line: 84, column: 87, scope: !308)
!311 = !DILocation(line: 85, column: 2, scope: !298)
!312 = !DILocation(line: 85, column: 163, scope: !313)
!313 = distinct !DILexicalBlock(scope: !298, file: !171, line: 85, column: 5)
!314 = !DILocation(line: 85, column: 99, scope: !313)
!315 = !DILocation(line: 85, column: 188, scope: !313)
!316 = !DILocation(line: 87, column: 9, scope: !298)
!317 = !DILocation(line: 87, column: 2, scope: !298)
