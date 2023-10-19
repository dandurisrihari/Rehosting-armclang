; ModuleID = '../bc_files/stm32f0xx_hal.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DBGMCU_TypeDef = type { i32, i32, i32, i32 }

@uwTickPrio = hidden global i32 4, align 4, !dbg !0
@uwTickFreq = hidden global i8 1, align 1, !dbg !116
@SystemCoreClock = external dso_local global i32, align 4
@uwTick = hidden global i32 0, align 4, !dbg !120

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_Init() #0 !dbg !129 {
  %1 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !134
  %2 = or i32 %1, 16, !dbg !134
  store volatile i32 %2, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !134
  %3 = call zeroext i8 @HAL_InitTick(i32 noundef 3) #4, !dbg !135
  call void @HAL_MspInit() #4, !dbg !136
  ret i8 0, !dbg !137
}

; Function Attrs: nounwind optsize
define weak hidden zeroext i8 @HAL_InitTick(i32 noundef %0) #0 !dbg !138 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !142, metadata !DIExpression()), !dbg !143
  %4 = load i32, ptr @SystemCoreClock, align 4, !dbg !144
  %5 = load i8, ptr @uwTickFreq, align 1, !dbg !146
  %6 = zext i8 %5 to i32, !dbg !146
  %7 = udiv i32 1000, %6, !dbg !147
  %8 = udiv i32 %4, %7, !dbg !148
  %9 = call i32 @HAL_SYSTICK_Config(i32 noundef %8) #4, !dbg !149
  %10 = icmp ugt i32 %9, 0, !dbg !150
  br i1 %10, label %11, label %12, !dbg !151

11:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !152
  br label %20, !dbg !152

12:                                               ; preds = %1
  %13 = load i32, ptr %3, align 4, !dbg !154
  %14 = icmp ult i32 %13, 4, !dbg !156
  br i1 %14, label %15, label %18, !dbg !157

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4, !dbg !158
  call void @HAL_NVIC_SetPriority(i8 noundef signext -1, i32 noundef %16, i32 noundef 0) #4, !dbg !160
  %17 = load i32, ptr %3, align 4, !dbg !161
  store i32 %17, ptr @uwTickPrio, align 4, !dbg !162
  br label %19, !dbg !163

18:                                               ; preds = %12
  store i8 1, ptr %2, align 1, !dbg !164
  br label %20, !dbg !164

19:                                               ; preds = %15
  store i8 0, ptr %2, align 1, !dbg !166
  br label %20, !dbg !166

20:                                               ; preds = %19, %18, %11
  %21 = load i8, ptr %2, align 1, !dbg !167
  ret i8 %21, !dbg !167
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_MspInit() #0 !dbg !168 {
  ret void, !dbg !171
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_DeInit() #0 !dbg !172 {
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !173
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !174
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 3), align 4, !dbg !175
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 3), align 4, !dbg !176
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 10), align 4, !dbg !177
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 10), align 4, !dbg !178
  call void @HAL_MspDeInit() #4, !dbg !179
  ret i8 0, !dbg !180
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_MspDeInit() #0 !dbg !181 {
  ret void, !dbg !182
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare !dbg !183 dso_local i32 @HAL_SYSTICK_Config(i32 noundef) #2

; Function Attrs: optsize
declare !dbg !187 dso_local void @HAL_NVIC_SetPriority(i8 noundef signext, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind optsize
define weak hidden void @HAL_IncTick() #0 !dbg !191 {
  %1 = load i8, ptr @uwTickFreq, align 1, !dbg !192
  %2 = zext i8 %1 to i32, !dbg !192
  %3 = load volatile i32, ptr @uwTick, align 4, !dbg !193
  %4 = add i32 %3, %2, !dbg !193
  store volatile i32 %4, ptr @uwTick, align 4, !dbg !193
  ret void, !dbg !194
}

; Function Attrs: nounwind optsize
define weak hidden i32 @HAL_GetTick() #0 !dbg !195 {
  %1 = load volatile i32, ptr @uwTick, align 4, !dbg !198
  ret i32 %1, !dbg !199
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetTickPrio() #0 !dbg !200 {
  %1 = load i32, ptr @uwTickPrio, align 4, !dbg !201
  ret i32 %1, !dbg !202
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_SetTickFreq(i8 noundef zeroext %0) #0 !dbg !203 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !207, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #5, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !212
  store i8 0, ptr %3, align 1, !dbg !212
  call void @llvm.lifetime.start.p0(i64 1, ptr %4) #5, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %4, metadata !209, metadata !DIExpression()), !dbg !214
  %5 = load i8, ptr @uwTickFreq, align 1, !dbg !215
  %6 = zext i8 %5 to i32, !dbg !215
  %7 = load i8, ptr %2, align 1, !dbg !217
  %8 = zext i8 %7 to i32, !dbg !217
  %9 = icmp ne i32 %6, %8, !dbg !218
  br i1 %9, label %10, label %21, !dbg !219

10:                                               ; preds = %1
  %11 = load i8, ptr @uwTickFreq, align 1, !dbg !220
  store i8 %11, ptr %4, align 1, !dbg !222
  %12 = load i8, ptr %2, align 1, !dbg !223
  store i8 %12, ptr @uwTickFreq, align 1, !dbg !224
  %13 = load i32, ptr @uwTickPrio, align 4, !dbg !225
  %14 = call zeroext i8 @HAL_InitTick(i32 noundef %13) #4, !dbg !226
  store i8 %14, ptr %3, align 1, !dbg !227
  %15 = load i8, ptr %3, align 1, !dbg !228
  %16 = zext i8 %15 to i32, !dbg !228
  %17 = icmp ne i32 %16, 0, !dbg !230
  br i1 %17, label %18, label %20, !dbg !231

18:                                               ; preds = %10
  %19 = load i8, ptr %4, align 1, !dbg !232
  store i8 %19, ptr @uwTickFreq, align 1, !dbg !234
  br label %20, !dbg !235

20:                                               ; preds = %18, %10
  br label %21, !dbg !236

21:                                               ; preds = %20, %1
  %22 = load i8, ptr %3, align 1, !dbg !237
  call void @llvm.lifetime.end.p0(i64 1, ptr %4) #5, !dbg !238
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #5, !dbg !238
  ret i8 %22, !dbg !239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_GetTickFreq() #0 !dbg !240 {
  %1 = load i8, ptr @uwTickFreq, align 1, !dbg !243
  ret i8 %1, !dbg !244
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_Delay(i32 noundef %0) #0 !dbg !245 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %3, metadata !250, metadata !DIExpression()), !dbg !254
  %5 = call i32 @HAL_GetTick() #4, !dbg !255
  store i32 %5, ptr %3, align 4, !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %4, metadata !251, metadata !DIExpression()), !dbg !257
  %6 = load i32, ptr %2, align 4, !dbg !258
  store i32 %6, ptr %4, align 4, !dbg !257
  %7 = load i32, ptr %4, align 4, !dbg !259
  %8 = icmp ult i32 %7, -1, !dbg !261
  br i1 %8, label %9, label %14, !dbg !262

9:                                                ; preds = %1
  %10 = load i8, ptr @uwTickFreq, align 1, !dbg !263
  %11 = zext i8 %10 to i32, !dbg !265
  %12 = load i32, ptr %4, align 4, !dbg !266
  %13 = add i32 %12, %11, !dbg !266
  store i32 %13, ptr %4, align 4, !dbg !266
  br label %14, !dbg !267

14:                                               ; preds = %9, %1
  br label %15, !dbg !268

15:                                               ; preds = %21, %14
  %16 = call i32 @HAL_GetTick() #4, !dbg !269
  %17 = load i32, ptr %3, align 4, !dbg !270
  %18 = sub i32 %16, %17, !dbg !271
  %19 = load i32, ptr %4, align 4, !dbg !272
  %20 = icmp ult i32 %18, %19, !dbg !273
  br i1 %20, label %21, label %22, !dbg !268

21:                                               ; preds = %15
  br label %15, !dbg !268, !llvm.loop !274

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !276
  ret void, !dbg !276
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_SuspendTick() #0 !dbg !277 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !278
  %2 = and i32 %1, -3, !dbg !278
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_ResumeTick() #0 !dbg !280 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !281
  %2 = or i32 %1, 2, !dbg !281
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !281
  ret void, !dbg !282
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetHalVersion() #0 !dbg !283 {
  ret i32 17237760, !dbg !284
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetREVID() #0 !dbg !285 {
  %1 = load volatile i32, ptr inttoptr (i32 1073829888 to ptr), align 4, !dbg !286
  %2 = lshr i32 %1, 16, !dbg !287
  ret i32 %2, !dbg !288
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetDEVID() #0 !dbg !289 {
  %1 = load volatile i32, ptr inttoptr (i32 1073829888 to ptr), align 4, !dbg !290
  %2 = and i32 %1, 4095, !dbg !291
  ret i32 %2, !dbg !292
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetUIDw0() #0 !dbg !293 {
  %1 = load i32, ptr inttoptr (i32 536868780 to ptr), align 4, !dbg !294
  ret i32 %1, !dbg !295
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetUIDw1() #0 !dbg !296 {
  %1 = load i32, ptr inttoptr (i32 536868784 to ptr), align 4, !dbg !297
  ret i32 %1, !dbg !298
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_GetUIDw2() #0 !dbg !299 {
  %1 = load i32, ptr inttoptr (i32 536868788 to ptr), align 4, !dbg !300
  ret i32 %1, !dbg !301
}

; Function Attrs: nounwind optsize
define hidden void @HAL_DBGMCU_EnableDBGStopMode() #0 !dbg !302 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !303
  %2 = or i32 %1, 2, !dbg !303
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !303
  ret void, !dbg !304
}

; Function Attrs: nounwind optsize
define hidden void @HAL_DBGMCU_DisableDBGStopMode() #0 !dbg !305 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !306
  %2 = and i32 %1, -3, !dbg !306
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !306
  ret void, !dbg !307
}

; Function Attrs: nounwind optsize
define hidden void @HAL_DBGMCU_EnableDBGStandbyMode() #0 !dbg !308 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !309
  %2 = or i32 %1, 4, !dbg !309
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: nounwind optsize
define hidden void @HAL_DBGMCU_DisableDBGStandbyMode() #0 !dbg !311 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !312
  %2 = and i32 %1, -5, !dbg !312
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !312
  ret void, !dbg !313
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "uwTickPrio", scope: !2, file: !118, line: 84, type: !67, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !115, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "stm32f0xx_hal.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !13, !20}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 79, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal.h", directory: "/home/sri/zephyrproject")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "HAL_TICK_FREQ_10HZ", value: 100)
!10 = !DIEnumerator(name: "HAL_TICK_FREQ_100HZ", value: 10)
!11 = !DIEnumerator(name: "HAL_TICK_FREQ_1KHZ", value: 1)
!12 = !DIEnumerator(name: "HAL_TICK_FREQ_DEFAULT", value: 1)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 38, baseType: !7, size: 8, elements: !15)
!14 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_def.h", directory: "/home/sri/zephyrproject")
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "HAL_OK", value: 0)
!17 = !DIEnumerator(name: "HAL_ERROR", value: 1)
!18 = !DIEnumerator(name: "HAL_BUSY", value: 2)
!19 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 66, baseType: !22, size: 8, elements: !23)
!21 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!22 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!24 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!25 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!26 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!27 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!28 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!29 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!30 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!31 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!32 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!33 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!34 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!35 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!36 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!37 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!38 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!39 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!40 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!41 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!42 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!43 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!44 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!45 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!46 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!47 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!48 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!49 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!50 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!51 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!52 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!53 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!54 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!55 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!56 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!57 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!58 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!59 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!60 = !{!61, !67, !78, !96, !106, !114}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !21, line: 350, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 339, size: 288, elements: !64)
!64 = !{!65, !70, !71, !72, !73, !74, !75, !76, !77}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !63, file: !21, line: 341, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !68, line: 64, baseType: !69)
!68 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !63, file: !21, line: 342, baseType: !66, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !63, file: !21, line: 343, baseType: !66, size: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !63, file: !21, line: 344, baseType: !66, size: 32, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !63, file: !21, line: 345, baseType: !66, size: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !63, file: !21, line: 346, baseType: !66, size: 32, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !63, file: !21, line: 347, baseType: !66, size: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !63, file: !21, line: 348, baseType: !66, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !63, file: !21, line: 349, baseType: !66, size: 32, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !21, line: 461, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 445, size: 448, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !80, file: !21, line: 447, baseType: !66, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !80, file: !21, line: 448, baseType: !66, size: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !80, file: !21, line: 449, baseType: !66, size: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !80, file: !21, line: 450, baseType: !66, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !80, file: !21, line: 451, baseType: !66, size: 32, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !80, file: !21, line: 452, baseType: !66, size: 32, offset: 160)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !80, file: !21, line: 453, baseType: !66, size: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !80, file: !21, line: 454, baseType: !66, size: 32, offset: 224)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !80, file: !21, line: 455, baseType: !66, size: 32, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !80, file: !21, line: 456, baseType: !66, size: 32, offset: 288)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !80, file: !21, line: 457, baseType: !66, size: 32, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !80, file: !21, line: 458, baseType: !66, size: 32, offset: 352)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !80, file: !21, line: 459, baseType: !66, size: 32, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !80, file: !21, line: 460, baseType: !66, size: 32, offset: 416)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !98, line: 454, baseType: !99)
!98 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 448, size: 128, elements: !100)
!100 = !{!101, !102, !103, !104}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !99, file: !98, line: 450, baseType: !66, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !99, file: !98, line: 451, baseType: !66, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !99, file: !98, line: 452, baseType: !66, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !99, file: !98, line: 453, baseType: !105, size: 32, offset: 96)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBGMCU_TypeDef", file: !21, line: 300, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 294, size: 128, elements: !109)
!109 = !{!110, !111, !112, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "IDCODE", scope: !108, file: !21, line: 296, baseType: !66, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !108, file: !21, line: 297, baseType: !66, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "APB1FZ", scope: !108, file: !21, line: 298, baseType: !66, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "APB2FZ", scope: !108, file: !21, line: 299, baseType: !66, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!115 = !{!0, !116, !120}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "uwTickFreq", scope: !2, file: !118, line: 85, type: !119, isLocal: false, isDefinition: true)
!118 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal.c", directory: "/home/sri/zephyrproject")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_TickFreqTypeDef", file: !6, line: 85, baseType: !5)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "uwTick", scope: !2, file: !118, line: 83, type: !66, isLocal: false, isDefinition: true)
!122 = !{i32 7, !"Dwarf Version", i32 4}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 1, !"static_rwdata", i32 1}
!126 = !{i32 1, !"enumsize_buildattr", i32 1}
!127 = !{i32 1, !"armlib_unavailable", i32 0}
!128 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!129 = distinct !DISubprogram(name: "HAL_Init", scope: !118, file: !118, line: 141, type: !130, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!130 = !DISubroutineType(types: !131)
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !14, line: 44, baseType: !13)
!133 = !{}
!134 = !DILocation(line: 145, column: 76, scope: !129)
!135 = !DILocation(line: 150, column: 3, scope: !129)
!136 = !DILocation(line: 153, column: 3, scope: !129)
!137 = !DILocation(line: 156, column: 3, scope: !129)
!138 = distinct !DISubprogram(name: "HAL_InitTick", scope: !118, file: !118, line: 222, type: !139, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{!132, !67}
!141 = !{!142}
!142 = !DILocalVariable(name: "TickPriority", arg: 1, scope: !138, file: !118, line: 222, type: !67)
!143 = !DILocation(line: 222, column: 63, scope: !138)
!144 = !DILocation(line: 225, column: 26, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !118, line: 225, column: 7)
!146 = !DILocation(line: 225, column: 53, scope: !145)
!147 = !DILocation(line: 225, column: 51, scope: !145)
!148 = !DILocation(line: 225, column: 42, scope: !145)
!149 = !DILocation(line: 225, column: 7, scope: !145)
!150 = !DILocation(line: 225, column: 66, scope: !145)
!151 = !DILocation(line: 225, column: 7, scope: !138)
!152 = !DILocation(line: 227, column: 5, scope: !153)
!153 = distinct !DILexicalBlock(scope: !145, file: !118, line: 226, column: 3)
!154 = !DILocation(line: 231, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !138, file: !118, line: 231, column: 7)
!156 = !DILocation(line: 231, column: 20, scope: !155)
!157 = !DILocation(line: 231, column: 7, scope: !138)
!158 = !DILocation(line: 233, column: 40, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !118, line: 232, column: 3)
!160 = !DILocation(line: 233, column: 5, scope: !159)
!161 = !DILocation(line: 234, column: 18, scope: !159)
!162 = !DILocation(line: 234, column: 16, scope: !159)
!163 = !DILocation(line: 235, column: 3, scope: !159)
!164 = !DILocation(line: 238, column: 5, scope: !165)
!165 = distinct !DILexicalBlock(scope: !155, file: !118, line: 237, column: 3)
!166 = !DILocation(line: 242, column: 3, scope: !138)
!167 = !DILocation(line: 243, column: 1, scope: !138)
!168 = distinct !DISubprogram(name: "HAL_MspInit", scope: !118, file: !118, line: 188, type: !169, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!169 = !DISubroutineType(types: !170)
!170 = !{null}
!171 = !DILocation(line: 193, column: 1, scope: !168)
!172 = distinct !DISubprogram(name: "HAL_DeInit", scope: !118, file: !118, line: 165, type: !130, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!173 = !DILocation(line: 168, column: 79, scope: !172)
!174 = !DILocation(line: 169, column: 79, scope: !172)
!175 = !DILocation(line: 171, column: 79, scope: !172)
!176 = !DILocation(line: 172, column: 79, scope: !172)
!177 = !DILocation(line: 174, column: 78, scope: !172)
!178 = !DILocation(line: 175, column: 78, scope: !172)
!179 = !DILocation(line: 178, column: 3, scope: !172)
!180 = !DILocation(line: 181, column: 3, scope: !172)
!181 = distinct !DISubprogram(name: "HAL_MspDeInit", scope: !118, file: !118, line: 199, type: !169, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!182 = !DILocation(line: 204, column: 1, scope: !181)
!183 = !DISubprogram(name: "HAL_SYSTICK_Config", scope: !184, file: !184, line: 73, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!184 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_cortex.h", directory: "/home/sri/zephyrproject")
!185 = !DISubroutineType(types: !186)
!186 = !{!67, !67}
!187 = !DISubprogram(name: "HAL_NVIC_SetPriority", scope: !184, file: !184, line: 69, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !133)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !190, !67, !67}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !21, line: 107, baseType: !20)
!191 = distinct !DISubprogram(name: "HAL_IncTick", scope: !118, file: !118, line: 281, type: !169, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!192 = !DILocation(line: 283, column: 13, scope: !191)
!193 = !DILocation(line: 283, column: 10, scope: !191)
!194 = !DILocation(line: 284, column: 1, scope: !191)
!195 = distinct !DISubprogram(name: "HAL_GetTick", scope: !118, file: !118, line: 292, type: !196, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!196 = !DISubroutineType(types: !197)
!197 = !{!67}
!198 = !DILocation(line: 294, column: 10, scope: !195)
!199 = !DILocation(line: 294, column: 3, scope: !195)
!200 = distinct !DISubprogram(name: "HAL_GetTickPrio", scope: !118, file: !118, line: 301, type: !196, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!201 = !DILocation(line: 303, column: 10, scope: !200)
!202 = !DILocation(line: 303, column: 3, scope: !200)
!203 = distinct !DISubprogram(name: "HAL_SetTickFreq", scope: !118, file: !118, line: 310, type: !204, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !206)
!204 = !DISubroutineType(types: !205)
!205 = !{!132, !119}
!206 = !{!207, !208, !209}
!207 = !DILocalVariable(name: "Freq", arg: 1, scope: !203, file: !118, line: 310, type: !119)
!208 = !DILocalVariable(name: "status", scope: !203, file: !118, line: 312, type: !132)
!209 = !DILocalVariable(name: "prevTickFreq", scope: !203, file: !118, line: 313, type: !119)
!210 = !DILocation(line: 310, column: 55, scope: !203)
!211 = !DILocation(line: 312, column: 3, scope: !203)
!212 = !DILocation(line: 312, column: 21, scope: !203)
!213 = !DILocation(line: 313, column: 3, scope: !203)
!214 = !DILocation(line: 313, column: 23, scope: !203)
!215 = !DILocation(line: 317, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !203, file: !118, line: 317, column: 7)
!217 = !DILocation(line: 317, column: 21, scope: !216)
!218 = !DILocation(line: 317, column: 18, scope: !216)
!219 = !DILocation(line: 317, column: 7, scope: !203)
!220 = !DILocation(line: 320, column: 20, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !118, line: 318, column: 3)
!222 = !DILocation(line: 320, column: 18, scope: !221)
!223 = !DILocation(line: 323, column: 18, scope: !221)
!224 = !DILocation(line: 323, column: 16, scope: !221)
!225 = !DILocation(line: 326, column: 27, scope: !221)
!226 = !DILocation(line: 326, column: 14, scope: !221)
!227 = !DILocation(line: 326, column: 12, scope: !221)
!228 = !DILocation(line: 328, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !221, file: !118, line: 328, column: 9)
!230 = !DILocation(line: 328, column: 16, scope: !229)
!231 = !DILocation(line: 328, column: 9, scope: !221)
!232 = !DILocation(line: 331, column: 20, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !118, line: 329, column: 5)
!234 = !DILocation(line: 331, column: 18, scope: !233)
!235 = !DILocation(line: 332, column: 5, scope: !233)
!236 = !DILocation(line: 333, column: 3, scope: !221)
!237 = !DILocation(line: 335, column: 10, scope: !203)
!238 = !DILocation(line: 336, column: 1, scope: !203)
!239 = !DILocation(line: 335, column: 3, scope: !203)
!240 = distinct !DISubprogram(name: "HAL_GetTickFreq", scope: !118, file: !118, line: 343, type: !241, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!241 = !DISubroutineType(types: !242)
!242 = !{!119}
!243 = !DILocation(line: 345, column: 10, scope: !240)
!244 = !DILocation(line: 345, column: 3, scope: !240)
!245 = distinct !DISubprogram(name: "HAL_Delay", scope: !118, file: !118, line: 359, type: !246, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !67}
!248 = !{!249, !250, !251}
!249 = !DILocalVariable(name: "Delay", arg: 1, scope: !245, file: !118, line: 359, type: !67)
!250 = !DILocalVariable(name: "tickstart", scope: !245, file: !118, line: 361, type: !67)
!251 = !DILocalVariable(name: "wait", scope: !245, file: !118, line: 362, type: !67)
!252 = !DILocation(line: 359, column: 47, scope: !245)
!253 = !DILocation(line: 361, column: 3, scope: !245)
!254 = !DILocation(line: 361, column: 12, scope: !245)
!255 = !DILocation(line: 361, column: 24, scope: !245)
!256 = !DILocation(line: 362, column: 3, scope: !245)
!257 = !DILocation(line: 362, column: 12, scope: !245)
!258 = !DILocation(line: 362, column: 19, scope: !245)
!259 = !DILocation(line: 365, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !245, file: !118, line: 365, column: 7)
!261 = !DILocation(line: 365, column: 12, scope: !260)
!262 = !DILocation(line: 365, column: 7, scope: !245)
!263 = !DILocation(line: 367, column: 24, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !118, line: 366, column: 3)
!265 = !DILocation(line: 367, column: 13, scope: !264)
!266 = !DILocation(line: 367, column: 10, scope: !264)
!267 = !DILocation(line: 368, column: 3, scope: !264)
!268 = !DILocation(line: 370, column: 3, scope: !245)
!269 = !DILocation(line: 370, column: 10, scope: !245)
!270 = !DILocation(line: 370, column: 26, scope: !245)
!271 = !DILocation(line: 370, column: 24, scope: !245)
!272 = !DILocation(line: 370, column: 39, scope: !245)
!273 = !DILocation(line: 370, column: 37, scope: !245)
!274 = distinct !{!274, !268, !275}
!275 = !DILocation(line: 372, column: 3, scope: !245)
!276 = !DILocation(line: 373, column: 1, scope: !245)
!277 = distinct !DISubprogram(name: "HAL_SuspendTick", scope: !118, file: !118, line: 385, type: !169, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!278 = !DILocation(line: 389, column: 60, scope: !277)
!279 = !DILocation(line: 390, column: 1, scope: !277)
!280 = distinct !DISubprogram(name: "HAL_ResumeTick", scope: !118, file: !118, line: 402, type: !169, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!281 = !DILocation(line: 405, column: 60, scope: !280)
!282 = !DILocation(line: 406, column: 1, scope: !280)
!283 = distinct !DISubprogram(name: "HAL_GetHalVersion", scope: !118, file: !118, line: 412, type: !196, scopeLine: 413, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!284 = !DILocation(line: 414, column: 2, scope: !283)
!285 = distinct !DISubprogram(name: "HAL_GetREVID", scope: !118, file: !118, line: 421, type: !196, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!286 = !DILocation(line: 423, column: 64, scope: !285)
!287 = !DILocation(line: 423, column: 72, scope: !285)
!288 = !DILocation(line: 423, column: 4, scope: !285)
!289 = distinct !DISubprogram(name: "HAL_GetDEVID", scope: !118, file: !118, line: 430, type: !196, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!290 = !DILocation(line: 432, column: 64, scope: !289)
!291 = !DILocation(line: 432, column: 72, scope: !289)
!292 = !DILocation(line: 432, column: 4, scope: !289)
!293 = distinct !DISubprogram(name: "HAL_GetUIDw0", scope: !118, file: !118, line: 439, type: !196, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!294 = !DILocation(line: 441, column: 13, scope: !293)
!295 = !DILocation(line: 441, column: 4, scope: !293)
!296 = distinct !DISubprogram(name: "HAL_GetUIDw1", scope: !118, file: !118, line: 448, type: !196, scopeLine: 449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!297 = !DILocation(line: 450, column: 13, scope: !296)
!298 = !DILocation(line: 450, column: 4, scope: !296)
!299 = distinct !DISubprogram(name: "HAL_GetUIDw2", scope: !118, file: !118, line: 457, type: !196, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!300 = !DILocation(line: 459, column: 13, scope: !299)
!301 = !DILocation(line: 459, column: 4, scope: !299)
!302 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStopMode", scope: !118, file: !118, line: 466, type: !169, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!303 = !DILocation(line: 468, column: 61, scope: !302)
!304 = !DILocation(line: 469, column: 1, scope: !302)
!305 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStopMode", scope: !118, file: !118, line: 475, type: !169, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!306 = !DILocation(line: 477, column: 61, scope: !305)
!307 = !DILocation(line: 478, column: 1, scope: !305)
!308 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStandbyMode", scope: !118, file: !118, line: 484, type: !169, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!309 = !DILocation(line: 486, column: 61, scope: !308)
!310 = !DILocation(line: 487, column: 1, scope: !308)
!311 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStandbyMode", scope: !118, file: !118, line: 493, type: !169, scopeLine: 494, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !133)
!312 = !DILocation(line: 495, column: 61, scope: !311)
!313 = !DILocation(line: 496, column: 1, scope: !311)
