; ModuleID = '../bc_files/stm32f0xx_hal.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DBGMCU_TypeDef = type { i32, i32, i32, i32 }

@uwTickPrio = hidden global i32 4, align 4, !dbg !0
@uwTickFreq = hidden global i8 1, align 1, !dbg !116
@SystemCoreClock = external global i32, align 4
@uwTick = hidden global i32 0, align 4, !dbg !120

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_Init() #0 !dbg !131 {
  %1 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !136
  %2 = or i32 %1, 16, !dbg !136
  store volatile i32 %2, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !136
  %3 = call zeroext i8 @HAL_InitTick(i32 noundef 3), !dbg !137
  call void @HAL_MspInit(), !dbg !138
  ret i8 0, !dbg !139
}

; Function Attrs: noinline nounwind optnone
define weak hidden zeroext i8 @HAL_InitTick(i32 noundef %0) #0 !dbg !140 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !143, metadata !DIExpression()), !dbg !144
  %4 = load i32, ptr @SystemCoreClock, align 4, !dbg !145
  %5 = load i8, ptr @uwTickFreq, align 1, !dbg !147
  %6 = zext i8 %5 to i32, !dbg !147
  %7 = udiv i32 1000, %6, !dbg !148
  %8 = udiv i32 %4, %7, !dbg !149
  %9 = call i32 @HAL_SYSTICK_Config(i32 noundef %8), !dbg !150
  %10 = icmp ugt i32 %9, 0, !dbg !151
  br i1 %10, label %11, label %12, !dbg !152

11:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !153
  br label %20, !dbg !153

12:                                               ; preds = %1
  %13 = load i32, ptr %3, align 4, !dbg !155
  %14 = icmp ult i32 %13, 4, !dbg !157
  br i1 %14, label %15, label %18, !dbg !158

15:                                               ; preds = %12
  %16 = load i32, ptr %3, align 4, !dbg !159
  call void @HAL_NVIC_SetPriority(i8 noundef signext -1, i32 noundef %16, i32 noundef 0), !dbg !161
  %17 = load i32, ptr %3, align 4, !dbg !162
  store i32 %17, ptr @uwTickPrio, align 4, !dbg !163
  br label %19, !dbg !164

18:                                               ; preds = %12
  store i8 1, ptr %2, align 1, !dbg !165
  br label %20, !dbg !165

19:                                               ; preds = %15
  store i8 0, ptr %2, align 1, !dbg !167
  br label %20, !dbg !167

20:                                               ; preds = %19, %18, %11
  %21 = load i8, ptr %2, align 1, !dbg !168
  ret i8 %21, !dbg !168
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_MspInit() #0 !dbg !169 {
  ret void, !dbg !172
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_DeInit() #0 !dbg !173 {
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !174
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !175
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 3), align 4, !dbg !176
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 3), align 4, !dbg !177
  store volatile i32 -1, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 10), align 4, !dbg !178
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 10), align 4, !dbg !179
  call void @HAL_MspDeInit(), !dbg !180
  ret i8 0, !dbg !181
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_MspDeInit() #0 !dbg !182 {
  ret void, !dbg !183
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @HAL_SYSTICK_Config(i32 noundef) #2

declare void @HAL_NVIC_SetPriority(i8 noundef signext, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_IncTick() #0 !dbg !184 {
  %1 = load i8, ptr @uwTickFreq, align 1, !dbg !185
  %2 = zext i8 %1 to i32, !dbg !185
  %3 = load volatile i32, ptr @uwTick, align 4, !dbg !186
  %4 = add i32 %3, %2, !dbg !186
  store volatile i32 %4, ptr @uwTick, align 4, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone
define weak hidden i32 @HAL_GetTick() #0 !dbg !188 {
  %1 = load volatile i32, ptr @uwTick, align 4, !dbg !191
  ret i32 %1, !dbg !192
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetTickPrio() #0 !dbg !193 {
  %1 = load i32, ptr @uwTickPrio, align 4, !dbg !194
  ret i32 %1, !dbg !195
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_SetTickFreq(i8 noundef zeroext %0) #0 !dbg !196 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata ptr %3, metadata !201, metadata !DIExpression()), !dbg !202
  store i8 0, ptr %3, align 1, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %4, metadata !203, metadata !DIExpression()), !dbg !204
  %5 = load i8, ptr @uwTickFreq, align 1, !dbg !205
  %6 = zext i8 %5 to i32, !dbg !205
  %7 = load i8, ptr %2, align 1, !dbg !207
  %8 = zext i8 %7 to i32, !dbg !207
  %9 = icmp ne i32 %6, %8, !dbg !208
  br i1 %9, label %10, label %21, !dbg !209

10:                                               ; preds = %1
  %11 = load i8, ptr @uwTickFreq, align 1, !dbg !210
  store i8 %11, ptr %4, align 1, !dbg !212
  %12 = load i8, ptr %2, align 1, !dbg !213
  store i8 %12, ptr @uwTickFreq, align 1, !dbg !214
  %13 = load i32, ptr @uwTickPrio, align 4, !dbg !215
  %14 = call zeroext i8 @HAL_InitTick(i32 noundef %13), !dbg !216
  store i8 %14, ptr %3, align 1, !dbg !217
  %15 = load i8, ptr %3, align 1, !dbg !218
  %16 = zext i8 %15 to i32, !dbg !218
  %17 = icmp ne i32 %16, 0, !dbg !220
  br i1 %17, label %18, label %20, !dbg !221

18:                                               ; preds = %10
  %19 = load i8, ptr %4, align 1, !dbg !222
  store i8 %19, ptr @uwTickFreq, align 1, !dbg !224
  br label %20, !dbg !225

20:                                               ; preds = %18, %10
  br label %21, !dbg !226

21:                                               ; preds = %20, %1
  %22 = load i8, ptr %3, align 1, !dbg !227
  ret i8 %22, !dbg !228
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_GetTickFreq() #0 !dbg !229 {
  %1 = load i8, ptr @uwTickFreq, align 1, !dbg !232
  ret i8 %1, !dbg !233
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_Delay(i32 noundef %0) #0 !dbg !234 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %3, metadata !239, metadata !DIExpression()), !dbg !240
  %5 = call i32 @HAL_GetTick(), !dbg !241
  store i32 %5, ptr %3, align 4, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %4, metadata !242, metadata !DIExpression()), !dbg !243
  %6 = load i32, ptr %2, align 4, !dbg !244
  store i32 %6, ptr %4, align 4, !dbg !243
  %7 = load i32, ptr %4, align 4, !dbg !245
  %8 = icmp ult i32 %7, -1, !dbg !247
  br i1 %8, label %9, label %14, !dbg !248

9:                                                ; preds = %1
  %10 = load i8, ptr @uwTickFreq, align 1, !dbg !249
  %11 = zext i8 %10 to i32, !dbg !251
  %12 = load i32, ptr %4, align 4, !dbg !252
  %13 = add i32 %12, %11, !dbg !252
  store i32 %13, ptr %4, align 4, !dbg !252
  br label %14, !dbg !253

14:                                               ; preds = %9, %1
  br label %15, !dbg !254

15:                                               ; preds = %21, %14
  %16 = call i32 @HAL_GetTick(), !dbg !255
  %17 = load i32, ptr %3, align 4, !dbg !256
  %18 = sub i32 %16, %17, !dbg !257
  %19 = load i32, ptr %4, align 4, !dbg !258
  %20 = icmp ult i32 %18, %19, !dbg !259
  br i1 %20, label %21, label %22, !dbg !254

21:                                               ; preds = %15
  br label %15, !dbg !254, !llvm.loop !260

22:                                               ; preds = %15
  ret void, !dbg !262
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_SuspendTick() #0 !dbg !263 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !264
  %2 = and i32 %1, -3, !dbg !264
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !264
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_ResumeTick() #0 !dbg !266 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !267
  %2 = or i32 %1, 2, !dbg !267
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetHalVersion() #0 !dbg !269 {
  ret i32 17237760, !dbg !270
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetREVID() #0 !dbg !271 {
  %1 = load volatile i32, ptr inttoptr (i32 1073829888 to ptr), align 4, !dbg !272
  %2 = lshr i32 %1, 16, !dbg !273
  ret i32 %2, !dbg !274
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetDEVID() #0 !dbg !275 {
  %1 = load volatile i32, ptr inttoptr (i32 1073829888 to ptr), align 4, !dbg !276
  %2 = and i32 %1, 4095, !dbg !277
  ret i32 %2, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetUIDw0() #0 !dbg !279 {
  %1 = load i32, ptr inttoptr (i32 536868780 to ptr), align 4, !dbg !280
  ret i32 %1, !dbg !281
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetUIDw1() #0 !dbg !282 {
  %1 = load i32, ptr inttoptr (i32 536868784 to ptr), align 4, !dbg !283
  ret i32 %1, !dbg !284
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_GetUIDw2() #0 !dbg !285 {
  %1 = load i32, ptr inttoptr (i32 536868788 to ptr), align 4, !dbg !286
  ret i32 %1, !dbg !287
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_DBGMCU_EnableDBGStopMode() #0 !dbg !288 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !289
  %2 = or i32 %1, 2, !dbg !289
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_DBGMCU_DisableDBGStopMode() #0 !dbg !291 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !292
  %2 = and i32 %1, -3, !dbg !292
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_DBGMCU_EnableDBGStandbyMode() #0 !dbg !294 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !295
  %2 = or i32 %1, 4, !dbg !295
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_DBGMCU_DisableDBGStandbyMode() #0 !dbg !297 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !298
  %2 = and i32 %1, -5, !dbg !298
  store volatile i32 %2, ptr getelementptr inbounds (%struct.DBGMCU_TypeDef, ptr inttoptr (i32 1073829888 to ptr), i32 0, i32 1), align 4, !dbg !298
  ret void, !dbg !299
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "uwTickPrio", scope: !2, file: !118, line: 84, type: !67, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !115, splitDebugInlining: false, nameTableKind: None)
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
!128 = !{i32 8, !"PIC Level", i32 2}
!129 = !{i32 7, !"PIE Level", i32 2}
!130 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!131 = distinct !DISubprogram(name: "HAL_Init", scope: !118, file: !118, line: 141, type: !132, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!132 = !DISubroutineType(types: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !14, line: 44, baseType: !13)
!135 = !{}
!136 = !DILocation(line: 145, column: 76, scope: !131)
!137 = !DILocation(line: 150, column: 3, scope: !131)
!138 = !DILocation(line: 153, column: 3, scope: !131)
!139 = !DILocation(line: 156, column: 3, scope: !131)
!140 = distinct !DISubprogram(name: "HAL_InitTick", scope: !118, file: !118, line: 222, type: !141, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!141 = !DISubroutineType(types: !142)
!142 = !{!134, !67}
!143 = !DILocalVariable(name: "TickPriority", arg: 1, scope: !140, file: !118, line: 222, type: !67)
!144 = !DILocation(line: 222, column: 63, scope: !140)
!145 = !DILocation(line: 225, column: 26, scope: !146)
!146 = distinct !DILexicalBlock(scope: !140, file: !118, line: 225, column: 7)
!147 = !DILocation(line: 225, column: 53, scope: !146)
!148 = !DILocation(line: 225, column: 51, scope: !146)
!149 = !DILocation(line: 225, column: 42, scope: !146)
!150 = !DILocation(line: 225, column: 7, scope: !146)
!151 = !DILocation(line: 225, column: 66, scope: !146)
!152 = !DILocation(line: 225, column: 7, scope: !140)
!153 = !DILocation(line: 227, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !146, file: !118, line: 226, column: 3)
!155 = !DILocation(line: 231, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !140, file: !118, line: 231, column: 7)
!157 = !DILocation(line: 231, column: 20, scope: !156)
!158 = !DILocation(line: 231, column: 7, scope: !140)
!159 = !DILocation(line: 233, column: 40, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !118, line: 232, column: 3)
!161 = !DILocation(line: 233, column: 5, scope: !160)
!162 = !DILocation(line: 234, column: 18, scope: !160)
!163 = !DILocation(line: 234, column: 16, scope: !160)
!164 = !DILocation(line: 235, column: 3, scope: !160)
!165 = !DILocation(line: 238, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !156, file: !118, line: 237, column: 3)
!167 = !DILocation(line: 242, column: 3, scope: !140)
!168 = !DILocation(line: 243, column: 1, scope: !140)
!169 = distinct !DISubprogram(name: "HAL_MspInit", scope: !118, file: !118, line: 188, type: !170, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!170 = !DISubroutineType(types: !171)
!171 = !{null}
!172 = !DILocation(line: 193, column: 1, scope: !169)
!173 = distinct !DISubprogram(name: "HAL_DeInit", scope: !118, file: !118, line: 165, type: !132, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!174 = !DILocation(line: 168, column: 79, scope: !173)
!175 = !DILocation(line: 169, column: 79, scope: !173)
!176 = !DILocation(line: 171, column: 79, scope: !173)
!177 = !DILocation(line: 172, column: 79, scope: !173)
!178 = !DILocation(line: 174, column: 78, scope: !173)
!179 = !DILocation(line: 175, column: 78, scope: !173)
!180 = !DILocation(line: 178, column: 3, scope: !173)
!181 = !DILocation(line: 181, column: 3, scope: !173)
!182 = distinct !DISubprogram(name: "HAL_MspDeInit", scope: !118, file: !118, line: 199, type: !170, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!183 = !DILocation(line: 204, column: 1, scope: !182)
!184 = distinct !DISubprogram(name: "HAL_IncTick", scope: !118, file: !118, line: 281, type: !170, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!185 = !DILocation(line: 283, column: 13, scope: !184)
!186 = !DILocation(line: 283, column: 10, scope: !184)
!187 = !DILocation(line: 284, column: 1, scope: !184)
!188 = distinct !DISubprogram(name: "HAL_GetTick", scope: !118, file: !118, line: 292, type: !189, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!189 = !DISubroutineType(types: !190)
!190 = !{!67}
!191 = !DILocation(line: 294, column: 10, scope: !188)
!192 = !DILocation(line: 294, column: 3, scope: !188)
!193 = distinct !DISubprogram(name: "HAL_GetTickPrio", scope: !118, file: !118, line: 301, type: !189, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!194 = !DILocation(line: 303, column: 10, scope: !193)
!195 = !DILocation(line: 303, column: 3, scope: !193)
!196 = distinct !DISubprogram(name: "HAL_SetTickFreq", scope: !118, file: !118, line: 310, type: !197, scopeLine: 311, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!197 = !DISubroutineType(types: !198)
!198 = !{!134, !119}
!199 = !DILocalVariable(name: "Freq", arg: 1, scope: !196, file: !118, line: 310, type: !119)
!200 = !DILocation(line: 310, column: 55, scope: !196)
!201 = !DILocalVariable(name: "status", scope: !196, file: !118, line: 312, type: !134)
!202 = !DILocation(line: 312, column: 21, scope: !196)
!203 = !DILocalVariable(name: "prevTickFreq", scope: !196, file: !118, line: 313, type: !119)
!204 = !DILocation(line: 313, column: 23, scope: !196)
!205 = !DILocation(line: 317, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !196, file: !118, line: 317, column: 7)
!207 = !DILocation(line: 317, column: 21, scope: !206)
!208 = !DILocation(line: 317, column: 18, scope: !206)
!209 = !DILocation(line: 317, column: 7, scope: !196)
!210 = !DILocation(line: 320, column: 20, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !118, line: 318, column: 3)
!212 = !DILocation(line: 320, column: 18, scope: !211)
!213 = !DILocation(line: 323, column: 18, scope: !211)
!214 = !DILocation(line: 323, column: 16, scope: !211)
!215 = !DILocation(line: 326, column: 27, scope: !211)
!216 = !DILocation(line: 326, column: 14, scope: !211)
!217 = !DILocation(line: 326, column: 12, scope: !211)
!218 = !DILocation(line: 328, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !211, file: !118, line: 328, column: 9)
!220 = !DILocation(line: 328, column: 16, scope: !219)
!221 = !DILocation(line: 328, column: 9, scope: !211)
!222 = !DILocation(line: 331, column: 20, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !118, line: 329, column: 5)
!224 = !DILocation(line: 331, column: 18, scope: !223)
!225 = !DILocation(line: 332, column: 5, scope: !223)
!226 = !DILocation(line: 333, column: 3, scope: !211)
!227 = !DILocation(line: 335, column: 10, scope: !196)
!228 = !DILocation(line: 335, column: 3, scope: !196)
!229 = distinct !DISubprogram(name: "HAL_GetTickFreq", scope: !118, file: !118, line: 343, type: !230, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!230 = !DISubroutineType(types: !231)
!231 = !{!119}
!232 = !DILocation(line: 345, column: 10, scope: !229)
!233 = !DILocation(line: 345, column: 3, scope: !229)
!234 = distinct !DISubprogram(name: "HAL_Delay", scope: !118, file: !118, line: 359, type: !235, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !67}
!237 = !DILocalVariable(name: "Delay", arg: 1, scope: !234, file: !118, line: 359, type: !67)
!238 = !DILocation(line: 359, column: 47, scope: !234)
!239 = !DILocalVariable(name: "tickstart", scope: !234, file: !118, line: 361, type: !67)
!240 = !DILocation(line: 361, column: 12, scope: !234)
!241 = !DILocation(line: 361, column: 24, scope: !234)
!242 = !DILocalVariable(name: "wait", scope: !234, file: !118, line: 362, type: !67)
!243 = !DILocation(line: 362, column: 12, scope: !234)
!244 = !DILocation(line: 362, column: 19, scope: !234)
!245 = !DILocation(line: 365, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !234, file: !118, line: 365, column: 7)
!247 = !DILocation(line: 365, column: 12, scope: !246)
!248 = !DILocation(line: 365, column: 7, scope: !234)
!249 = !DILocation(line: 367, column: 24, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !118, line: 366, column: 3)
!251 = !DILocation(line: 367, column: 13, scope: !250)
!252 = !DILocation(line: 367, column: 10, scope: !250)
!253 = !DILocation(line: 368, column: 3, scope: !250)
!254 = !DILocation(line: 370, column: 3, scope: !234)
!255 = !DILocation(line: 370, column: 10, scope: !234)
!256 = !DILocation(line: 370, column: 26, scope: !234)
!257 = !DILocation(line: 370, column: 24, scope: !234)
!258 = !DILocation(line: 370, column: 39, scope: !234)
!259 = !DILocation(line: 370, column: 37, scope: !234)
!260 = distinct !{!260, !254, !261}
!261 = !DILocation(line: 372, column: 3, scope: !234)
!262 = !DILocation(line: 373, column: 1, scope: !234)
!263 = distinct !DISubprogram(name: "HAL_SuspendTick", scope: !118, file: !118, line: 385, type: !170, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!264 = !DILocation(line: 389, column: 60, scope: !263)
!265 = !DILocation(line: 390, column: 1, scope: !263)
!266 = distinct !DISubprogram(name: "HAL_ResumeTick", scope: !118, file: !118, line: 402, type: !170, scopeLine: 403, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!267 = !DILocation(line: 405, column: 60, scope: !266)
!268 = !DILocation(line: 406, column: 1, scope: !266)
!269 = distinct !DISubprogram(name: "HAL_GetHalVersion", scope: !118, file: !118, line: 412, type: !189, scopeLine: 413, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!270 = !DILocation(line: 414, column: 2, scope: !269)
!271 = distinct !DISubprogram(name: "HAL_GetREVID", scope: !118, file: !118, line: 421, type: !189, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!272 = !DILocation(line: 423, column: 64, scope: !271)
!273 = !DILocation(line: 423, column: 72, scope: !271)
!274 = !DILocation(line: 423, column: 4, scope: !271)
!275 = distinct !DISubprogram(name: "HAL_GetDEVID", scope: !118, file: !118, line: 430, type: !189, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!276 = !DILocation(line: 432, column: 64, scope: !275)
!277 = !DILocation(line: 432, column: 72, scope: !275)
!278 = !DILocation(line: 432, column: 4, scope: !275)
!279 = distinct !DISubprogram(name: "HAL_GetUIDw0", scope: !118, file: !118, line: 439, type: !189, scopeLine: 440, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!280 = !DILocation(line: 441, column: 13, scope: !279)
!281 = !DILocation(line: 441, column: 4, scope: !279)
!282 = distinct !DISubprogram(name: "HAL_GetUIDw1", scope: !118, file: !118, line: 448, type: !189, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!283 = !DILocation(line: 450, column: 13, scope: !282)
!284 = !DILocation(line: 450, column: 4, scope: !282)
!285 = distinct !DISubprogram(name: "HAL_GetUIDw2", scope: !118, file: !118, line: 457, type: !189, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!286 = !DILocation(line: 459, column: 13, scope: !285)
!287 = !DILocation(line: 459, column: 4, scope: !285)
!288 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStopMode", scope: !118, file: !118, line: 466, type: !170, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!289 = !DILocation(line: 468, column: 61, scope: !288)
!290 = !DILocation(line: 469, column: 1, scope: !288)
!291 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStopMode", scope: !118, file: !118, line: 475, type: !170, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!292 = !DILocation(line: 477, column: 61, scope: !291)
!293 = !DILocation(line: 478, column: 1, scope: !291)
!294 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStandbyMode", scope: !118, file: !118, line: 484, type: !170, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!295 = !DILocation(line: 486, column: 61, scope: !294)
!296 = !DILocation(line: 487, column: 1, scope: !294)
!297 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStandbyMode", scope: !118, file: !118, line: 493, type: !170, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!298 = !DILocation(line: 495, column: 61, scope: !297)
!299 = !DILocation(line: 496, column: 1, scope: !297)
