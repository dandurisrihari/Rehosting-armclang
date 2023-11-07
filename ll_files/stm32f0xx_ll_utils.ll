; ModuleID = '../bc_files/stm32f0xx_ll_utils.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_ll_utils.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.LL_UTILS_PLLInitTypeDef = type { i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.LL_UTILS_ClkInitTypeDef = type { i32, i32 }

@SystemCoreClock = external global i32, align 4
@AHBPrescTable = external constant [16 x i8], align 1

; Function Attrs: noinline nounwind optnone
define hidden void @LL_Init1msTick(i32 noundef %0) #0 !dbg !65 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !70, metadata !DIExpression()), !dbg !71
  %3 = load i32, ptr %2, align 4, !dbg !72
  call void @LL_InitTick(i32 noundef %3, i32 noundef 1000), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @LL_InitTick(i32 noundef %0, i32 noundef %1) #0 !dbg !75 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !79, metadata !DIExpression()), !dbg !80
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !81, metadata !DIExpression()), !dbg !82
  %5 = load i32, ptr %3, align 4, !dbg !83
  %6 = load i32, ptr %4, align 4, !dbg !84
  %7 = udiv i32 %5, %6, !dbg !85
  %8 = sub i32 %7, 1, !dbg !86
  store volatile i32 %8, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !87
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !88
  store volatile i32 5, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone
define hidden void @LL_mDelay(i32 noundef %0) #0 !dbg !91 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata ptr %3, metadata !94, metadata !DIExpression()), !dbg !95
  %4 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !96
  store volatile i32 %4, ptr %3, align 4, !dbg !95
  %5 = load volatile i32, ptr %3, align 4, !dbg !97
  %6 = load i32, ptr %2, align 4, !dbg !98
  %7 = icmp ult i32 %6, -1, !dbg !100
  br i1 %7, label %8, label %11, !dbg !101

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !dbg !102
  %10 = add i32 %9, 1, !dbg !102
  store i32 %10, ptr %2, align 4, !dbg !102
  br label %11, !dbg !104

11:                                               ; preds = %8, %1
  br label %12, !dbg !105

12:                                               ; preds = %22, %11
  %13 = load i32, ptr %2, align 4, !dbg !106
  %14 = icmp ne i32 %13, 0, !dbg !105
  br i1 %14, label %15, label %23, !dbg !105

15:                                               ; preds = %12
  %16 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !107
  %17 = and i32 %16, 65536, !dbg !110
  %18 = icmp ne i32 %17, 0, !dbg !111
  br i1 %18, label %19, label %22, !dbg !112

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4, !dbg !113
  %21 = add i32 %20, -1, !dbg !113
  store i32 %21, ptr %2, align 4, !dbg !113
  br label %22, !dbg !115

22:                                               ; preds = %19, %15
  br label %12, !dbg !105, !llvm.loop !116

23:                                               ; preds = %12
  ret void, !dbg !118
}

; Function Attrs: noinline nounwind optnone
define hidden void @LL_SetSystemCoreClock(i32 noundef %0) #0 !dbg !119 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !120, metadata !DIExpression()), !dbg !121
  %3 = load i32, ptr %2, align 4, !dbg !122
  store i32 %3, ptr @SystemCoreClock, align 4, !dbg !123
  ret void, !dbg !124
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @LL_SetFlashLatency(i32 noundef %0) #0 !dbg !125 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata ptr %3, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata ptr %4, metadata !133, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata ptr %5, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata ptr %6, metadata !137, metadata !DIExpression()), !dbg !138
  store i8 0, ptr %6, align 1, !dbg !138
  %7 = load i32, ptr %2, align 4, !dbg !139
  %8 = icmp eq i32 %7, 0, !dbg !141
  br i1 %8, label %9, label %10, !dbg !142

9:                                                ; preds = %1
  store i8 1, ptr %6, align 1, !dbg !143
  br label %42, !dbg !145

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4, !dbg !146
  %12 = icmp ugt i32 %11, 24000000, !dbg !149
  br i1 %12, label %13, label %14, !dbg !150

13:                                               ; preds = %10
  store i32 1, ptr %5, align 4, !dbg !151
  br label %15, !dbg !153

14:                                               ; preds = %10
  store i32 0, ptr %5, align 4, !dbg !154
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i8, ptr %6, align 1, !dbg !156
  %17 = zext i8 %16 to i32, !dbg !156
  %18 = icmp ne i32 %17, 1, !dbg !158
  br i1 %18, label %19, label %41, !dbg !159

19:                                               ; preds = %15
  %20 = load i32, ptr %5, align 4, !dbg !160
  call void @LL_FLASH_SetLatency(i32 noundef %20), !dbg !162
  store i32 2, ptr %3, align 4, !dbg !163
  br label %21, !dbg !164

21:                                               ; preds = %32, %19
  %22 = call i32 @LL_FLASH_GetLatency(), !dbg !165
  store i32 %22, ptr %4, align 4, !dbg !167
  %23 = load i32, ptr %3, align 4, !dbg !168
  %24 = add i32 %23, -1, !dbg !168
  store i32 %24, ptr %3, align 4, !dbg !168
  br label %25, !dbg !169

25:                                               ; preds = %21
  %26 = load i32, ptr %4, align 4, !dbg !170
  %27 = load i32, ptr %5, align 4, !dbg !171
  %28 = icmp ne i32 %26, %27, !dbg !172
  br i1 %28, label %29, label %32, !dbg !173

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4, !dbg !174
  %31 = icmp ugt i32 %30, 0, !dbg !175
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ], !dbg !176
  br i1 %33, label %21, label %34, !dbg !169, !llvm.loop !177

34:                                               ; preds = %32
  %35 = load i32, ptr %4, align 4, !dbg !179
  %36 = load i32, ptr %5, align 4, !dbg !181
  %37 = icmp ne i32 %35, %36, !dbg !182
  br i1 %37, label %38, label %39, !dbg !183

38:                                               ; preds = %34
  store i8 1, ptr %6, align 1, !dbg !184
  br label %40, !dbg !186

39:                                               ; preds = %34
  store i8 0, ptr %6, align 1, !dbg !187
  br label %40

40:                                               ; preds = %39, %38
  br label %41, !dbg !189

41:                                               ; preds = %40, %15
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i8, ptr %6, align 1, !dbg !190
  ret i8 %43, !dbg !191
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_FLASH_SetLatency(i32 noundef %0) #0 !dbg !192 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !194, metadata !DIExpression()), !dbg !195
  %3 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !196
  %4 = and i32 %3, -2, !dbg !197
  %5 = load i32, ptr %2, align 4, !dbg !198
  %6 = or i32 %4, %5, !dbg !199
  store volatile i32 %6, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_FLASH_GetLatency() #0 !dbg !202 {
  %1 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !205
  %2 = and i32 %1, 1, !dbg !206
  ret i32 %2, !dbg !207
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSI(ptr noundef %0, ptr noundef %1) #0 !dbg !208 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !224
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata ptr %5, metadata !227, metadata !DIExpression()), !dbg !228
  store i8 0, ptr %5, align 1, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %6, metadata !229, metadata !DIExpression()), !dbg !230
  store i32 0, ptr %6, align 4, !dbg !230
  %7 = call zeroext i8 @UTILS_PLL_IsBusy(), !dbg !231
  %8 = zext i8 %7 to i32, !dbg !231
  %9 = icmp eq i32 %8, 0, !dbg !233
  br i1 %9, label %10, label %31, !dbg !234

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !235
  %12 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef 8000000, ptr noundef %11), !dbg !237
  store i32 %12, ptr %6, align 4, !dbg !238
  %13 = call i32 @LL_RCC_HSI_IsReady(), !dbg !239
  %14 = icmp ne i32 %13, 1, !dbg !241
  br i1 %14, label %15, label %21, !dbg !242

15:                                               ; preds = %10
  call void @LL_RCC_HSI_Enable(), !dbg !243
  br label %16, !dbg !245

16:                                               ; preds = %19, %15
  %17 = call i32 @LL_RCC_HSI_IsReady(), !dbg !246
  %18 = icmp ne i32 %17, 1, !dbg !247
  br i1 %18, label %19, label %20, !dbg !245

19:                                               ; preds = %16
  br label %16, !dbg !245, !llvm.loop !248

20:                                               ; preds = %16
  br label %21, !dbg !250

21:                                               ; preds = %20, %10
  %22 = load ptr, ptr %3, align 4, !dbg !251
  %23 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %22, i32 0, i32 0, !dbg !252
  %24 = load i32, ptr %23, align 4, !dbg !252
  %25 = load ptr, ptr %3, align 4, !dbg !253
  %26 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %25, i32 0, i32 1, !dbg !254
  %27 = load i32, ptr %26, align 4, !dbg !254
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 32768, i32 noundef %24, i32 noundef %27), !dbg !255
  %28 = load i32, ptr %6, align 4, !dbg !256
  %29 = load ptr, ptr %4, align 4, !dbg !257
  %30 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %28, ptr noundef %29), !dbg !258
  store i8 %30, ptr %5, align 1, !dbg !259
  br label %32, !dbg !260

31:                                               ; preds = %2
  store i8 1, ptr %5, align 1, !dbg !261
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i8, ptr %5, align 1, !dbg !263
  ret i8 %33, !dbg !264
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @UTILS_PLL_IsBusy() #0 !dbg !265 {
  %1 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata ptr %1, metadata !268, metadata !DIExpression()), !dbg !269
  store i8 0, ptr %1, align 1, !dbg !269
  %2 = call i32 @LL_RCC_PLL_IsReady(), !dbg !270
  %3 = icmp ne i32 %2, 0, !dbg !272
  br i1 %3, label %4, label %5, !dbg !273

4:                                                ; preds = %0
  store i8 1, ptr %1, align 1, !dbg !274
  br label %5, !dbg !276

5:                                                ; preds = %4, %0
  %6 = load i8, ptr %1, align 1, !dbg !277
  ret i8 %6, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define internal i32 @UTILS_GetPLLOutputFrequency(i32 noundef %0, ptr noundef %1) #0 !dbg !279 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !282, metadata !DIExpression()), !dbg !283
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr %5, metadata !286, metadata !DIExpression()), !dbg !287
  store i32 0, ptr %5, align 4, !dbg !287
  %6 = load i32, ptr %3, align 4, !dbg !288
  %7 = load ptr, ptr %4, align 4, !dbg !289
  %8 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %7, i32 0, i32 1, !dbg !290
  %9 = load i32, ptr %8, align 4, !dbg !290
  %10 = and i32 %9, 15, !dbg !291
  %11 = add i32 %10, 1, !dbg !292
  %12 = udiv i32 %6, %11, !dbg !293
  %13 = load ptr, ptr %4, align 4, !dbg !294
  %14 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %13, i32 0, i32 0, !dbg !295
  %15 = load i32, ptr %14, align 4, !dbg !295
  %16 = and i32 %15, 3932160, !dbg !296
  %17 = lshr i32 %16, 18, !dbg !297
  %18 = add i32 %17, 2, !dbg !298
  %19 = mul i32 %12, %18, !dbg !299
  store i32 %19, ptr %5, align 4, !dbg !300
  %20 = load i32, ptr %5, align 4, !dbg !301
  ret i32 %20, !dbg !302
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_HSI_IsReady() #0 !dbg !303 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !305
  %2 = and i32 %1, 2, !dbg !306
  %3 = icmp eq i32 %2, 2, !dbg !307
  %4 = zext i1 %3 to i32, !dbg !307
  ret i32 %4, !dbg !308
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSI_Enable() #0 !dbg !309 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !312
  %2 = or i32 %1, 1, !dbg !312
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !314 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !317, metadata !DIExpression()), !dbg !318
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !319, metadata !DIExpression()), !dbg !320
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !321, metadata !DIExpression()), !dbg !322
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !323
  %8 = and i32 %7, -4030465, !dbg !324
  %9 = load i32, ptr %4, align 4, !dbg !325
  %10 = load i32, ptr %5, align 4, !dbg !326
  %11 = or i32 %9, %10, !dbg !327
  %12 = or i32 %8, %11, !dbg !328
  store volatile i32 %12, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !329
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !330
  %14 = and i32 %13, -16, !dbg !331
  %15 = load i32, ptr %6, align 4, !dbg !332
  %16 = or i32 %14, %15, !dbg !333
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %0, ptr noundef %1) #0 !dbg !336 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !339, metadata !DIExpression()), !dbg !340
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata ptr %5, metadata !343, metadata !DIExpression()), !dbg !344
  store i8 0, ptr %5, align 1, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %6, metadata !345, metadata !DIExpression()), !dbg !346
  store i32 0, ptr %6, align 4, !dbg !346
  %7 = load i32, ptr @SystemCoreClock, align 4, !dbg !347
  %8 = call i32 @LL_RCC_GetAHBPrescaler(), !dbg !348
  %9 = lshr i32 %8, 4, !dbg !349
  %10 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %9, !dbg !350
  %11 = load i8, ptr %10, align 1, !dbg !350
  %12 = zext i8 %11 to i32, !dbg !350
  %13 = shl i32 %7, %12, !dbg !351
  store i32 %13, ptr %6, align 4, !dbg !352
  %14 = load i32, ptr %6, align 4, !dbg !353
  %15 = load i32, ptr %3, align 4, !dbg !355
  %16 = icmp ult i32 %14, %15, !dbg !356
  br i1 %16, label %17, label %20, !dbg !357

17:                                               ; preds = %2
  %18 = load i32, ptr %3, align 4, !dbg !358
  %19 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %18), !dbg !360
  store i8 %19, ptr %5, align 1, !dbg !361
  br label %20, !dbg !362

20:                                               ; preds = %17, %2
  %21 = load i8, ptr %5, align 1, !dbg !363
  %22 = zext i8 %21 to i32, !dbg !363
  %23 = icmp eq i32 %22, 0, !dbg !365
  br i1 %23, label %24, label %41, !dbg !366

24:                                               ; preds = %20
  call void @LL_RCC_PLL_Enable(), !dbg !367
  br label %25, !dbg !369

25:                                               ; preds = %28, %24
  %26 = call i32 @LL_RCC_PLL_IsReady(), !dbg !370
  %27 = icmp ne i32 %26, 1, !dbg !371
  br i1 %27, label %28, label %29, !dbg !369

28:                                               ; preds = %25
  br label %25, !dbg !369, !llvm.loop !372

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4, !dbg !374
  %31 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %30, i32 0, i32 0, !dbg !375
  %32 = load i32, ptr %31, align 4, !dbg !375
  call void @LL_RCC_SetAHBPrescaler(i32 noundef %32), !dbg !376
  call void @LL_RCC_SetSysClkSource(i32 noundef 2), !dbg !377
  br label %33, !dbg !378

33:                                               ; preds = %36, %29
  %34 = call i32 @LL_RCC_GetSysClkSource(), !dbg !379
  %35 = icmp ne i32 %34, 8, !dbg !380
  br i1 %35, label %36, label %37, !dbg !378

36:                                               ; preds = %33
  br label %33, !dbg !378, !llvm.loop !381

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4, !dbg !383
  %39 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %38, i32 0, i32 1, !dbg !384
  %40 = load i32, ptr %39, align 4, !dbg !384
  call void @LL_RCC_SetAPB1Prescaler(i32 noundef %40), !dbg !385
  br label %41, !dbg !386

41:                                               ; preds = %37, %20
  %42 = load i32, ptr %6, align 4, !dbg !387
  %43 = load i32, ptr %3, align 4, !dbg !389
  %44 = icmp ugt i32 %42, %43, !dbg !390
  br i1 %44, label %45, label %48, !dbg !391

45:                                               ; preds = %41
  %46 = load i32, ptr %3, align 4, !dbg !392
  %47 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %46), !dbg !394
  store i8 %47, ptr %5, align 1, !dbg !395
  br label %48, !dbg !396

48:                                               ; preds = %45, %41
  %49 = load i8, ptr %5, align 1, !dbg !397
  %50 = zext i8 %49 to i32, !dbg !397
  %51 = icmp eq i32 %50, 0, !dbg !399
  br i1 %51, label %52, label %63, !dbg !400

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4, !dbg !401
  %54 = load ptr, ptr %4, align 4, !dbg !403
  %55 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %54, i32 0, i32 0, !dbg !404
  %56 = load i32, ptr %55, align 4, !dbg !404
  %57 = and i32 %56, 240, !dbg !405
  %58 = lshr i32 %57, 4, !dbg !406
  %59 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %58, !dbg !407
  %60 = load i8, ptr %59, align 1, !dbg !407
  %61 = zext i8 %60 to i32, !dbg !407
  %62 = lshr i32 %53, %61, !dbg !408
  call void @LL_SetSystemCoreClock(i32 noundef %62), !dbg !409
  br label %63, !dbg !410

63:                                               ; preds = %52, %48
  %64 = load i8, ptr %5, align 1, !dbg !411
  ret i8 %64, !dbg !412
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSI48(ptr noundef %0, ptr noundef %1) #0 !dbg !413 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !414, metadata !DIExpression()), !dbg !415
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata ptr %5, metadata !418, metadata !DIExpression()), !dbg !419
  store i8 0, ptr %5, align 1, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %6, metadata !420, metadata !DIExpression()), !dbg !421
  store i32 0, ptr %6, align 4, !dbg !421
  %7 = call zeroext i8 @UTILS_PLL_IsBusy(), !dbg !422
  %8 = zext i8 %7 to i32, !dbg !422
  %9 = icmp eq i32 %8, 0, !dbg !424
  br i1 %9, label %10, label %31, !dbg !425

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !426
  %12 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef 48000000, ptr noundef %11), !dbg !428
  store i32 %12, ptr %6, align 4, !dbg !429
  %13 = call i32 @LL_RCC_HSI48_IsReady(), !dbg !430
  %14 = icmp ne i32 %13, 1, !dbg !432
  br i1 %14, label %15, label %21, !dbg !433

15:                                               ; preds = %10
  call void @LL_RCC_HSI48_Enable(), !dbg !434
  br label %16, !dbg !436

16:                                               ; preds = %19, %15
  %17 = call i32 @LL_RCC_HSI48_IsReady(), !dbg !437
  %18 = icmp ne i32 %17, 1, !dbg !438
  br i1 %18, label %19, label %20, !dbg !436

19:                                               ; preds = %16
  br label %16, !dbg !436, !llvm.loop !439

20:                                               ; preds = %16
  br label %21, !dbg !441

21:                                               ; preds = %20, %10
  %22 = load ptr, ptr %3, align 4, !dbg !442
  %23 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %22, i32 0, i32 0, !dbg !443
  %24 = load i32, ptr %23, align 4, !dbg !443
  %25 = load ptr, ptr %3, align 4, !dbg !444
  %26 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %25, i32 0, i32 1, !dbg !445
  %27 = load i32, ptr %26, align 4, !dbg !445
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 98304, i32 noundef %24, i32 noundef %27), !dbg !446
  %28 = load i32, ptr %6, align 4, !dbg !447
  %29 = load ptr, ptr %4, align 4, !dbg !448
  %30 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %28, ptr noundef %29), !dbg !449
  store i8 %30, ptr %5, align 1, !dbg !450
  br label %32, !dbg !451

31:                                               ; preds = %2
  store i8 1, ptr %5, align 1, !dbg !452
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i8, ptr %5, align 1, !dbg !454
  ret i8 %33, !dbg !455
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_HSI48_IsReady() #0 !dbg !456 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !457
  %2 = and i32 %1, 131072, !dbg !458
  %3 = icmp eq i32 %2, 131072, !dbg !459
  %4 = zext i1 %3 to i32, !dbg !459
  ret i32 %4, !dbg !460
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSI48_Enable() #0 !dbg !461 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !462
  %2 = or i32 %1, 65536, !dbg !462
  store volatile i32 %2, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSE(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !464 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !468
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !469, metadata !DIExpression()), !dbg !470
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !472
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata ptr %9, metadata !475, metadata !DIExpression()), !dbg !476
  store i8 0, ptr %9, align 1, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %10, metadata !477, metadata !DIExpression()), !dbg !478
  store i32 0, ptr %10, align 4, !dbg !478
  %11 = call zeroext i8 @UTILS_PLL_IsBusy(), !dbg !479
  %12 = zext i8 %11 to i32, !dbg !479
  %13 = icmp eq i32 %12, 0, !dbg !481
  br i1 %13, label %14, label %41, !dbg !482

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4, !dbg !483
  %16 = load ptr, ptr %7, align 4, !dbg !485
  %17 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef %15, ptr noundef %16), !dbg !486
  store i32 %17, ptr %10, align 4, !dbg !487
  %18 = call i32 @LL_RCC_HSE_IsReady(), !dbg !488
  %19 = icmp ne i32 %18, 1, !dbg !490
  br i1 %19, label %20, label %31, !dbg !491

20:                                               ; preds = %14
  %21 = load i32, ptr %6, align 4, !dbg !492
  %22 = icmp eq i32 %21, 1, !dbg !495
  br i1 %22, label %23, label %24, !dbg !496

23:                                               ; preds = %20
  call void @LL_RCC_HSE_EnableBypass(), !dbg !497
  br label %25, !dbg !499

24:                                               ; preds = %20
  call void @LL_RCC_HSE_DisableBypass(), !dbg !500
  br label %25

25:                                               ; preds = %24, %23
  call void @LL_RCC_HSE_Enable(), !dbg !502
  br label %26, !dbg !503

26:                                               ; preds = %29, %25
  %27 = call i32 @LL_RCC_HSE_IsReady(), !dbg !504
  %28 = icmp ne i32 %27, 1, !dbg !505
  br i1 %28, label %29, label %30, !dbg !503

29:                                               ; preds = %26
  br label %26, !dbg !503, !llvm.loop !506

30:                                               ; preds = %26
  br label %31, !dbg !508

31:                                               ; preds = %30, %14
  %32 = load ptr, ptr %7, align 4, !dbg !509
  %33 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %32, i32 0, i32 0, !dbg !510
  %34 = load i32, ptr %33, align 4, !dbg !510
  %35 = load ptr, ptr %7, align 4, !dbg !511
  %36 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %35, i32 0, i32 1, !dbg !512
  %37 = load i32, ptr %36, align 4, !dbg !512
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 65536, i32 noundef %34, i32 noundef %37), !dbg !513
  %38 = load i32, ptr %10, align 4, !dbg !514
  %39 = load ptr, ptr %8, align 4, !dbg !515
  %40 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %38, ptr noundef %39), !dbg !516
  store i8 %40, ptr %9, align 1, !dbg !517
  br label %42, !dbg !518

41:                                               ; preds = %4
  store i8 1, ptr %9, align 1, !dbg !519
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8, ptr %9, align 1, !dbg !521
  ret i8 %43, !dbg !522
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_HSE_IsReady() #0 !dbg !523 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !524
  %2 = and i32 %1, 131072, !dbg !525
  %3 = icmp eq i32 %2, 131072, !dbg !526
  %4 = zext i1 %3 to i32, !dbg !526
  ret i32 %4, !dbg !527
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSE_EnableBypass() #0 !dbg !528 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !529
  %2 = or i32 %1, 262144, !dbg !529
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSE_DisableBypass() #0 !dbg !531 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !532
  %2 = and i32 %1, -262145, !dbg !532
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_HSE_Enable() #0 !dbg !534 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !535
  %2 = or i32 %1, 65536, !dbg !535
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !535
  ret void, !dbg !536
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_PLL_IsReady() #0 !dbg !537 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !538
  %2 = and i32 %1, 33554432, !dbg !539
  %3 = icmp eq i32 %2, 33554432, !dbg !540
  %4 = zext i1 %3 to i32, !dbg !540
  ret i32 %4, !dbg !541
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_GetAHBPrescaler() #0 !dbg !542 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !543
  %2 = and i32 %1, 240, !dbg !544
  ret i32 %2, !dbg !545
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_PLL_Enable() #0 !dbg !546 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !547
  %2 = or i32 %1, 16777216, !dbg !547
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetAHBPrescaler(i32 noundef %0) #0 !dbg !549 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !550, metadata !DIExpression()), !dbg !551
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !552
  %4 = and i32 %3, -241, !dbg !553
  %5 = load i32, ptr %2, align 4, !dbg !554
  %6 = or i32 %4, %5, !dbg !555
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetSysClkSource(i32 noundef %0) #0 !dbg !558 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !559, metadata !DIExpression()), !dbg !560
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !561
  %4 = and i32 %3, -4, !dbg !562
  %5 = load i32, ptr %2, align 4, !dbg !563
  %6 = or i32 %4, %5, !dbg !564
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !565
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone
define internal i32 @LL_RCC_GetSysClkSource() #0 !dbg !567 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !568
  %2 = and i32 %1, 12, !dbg !569
  ret i32 %2, !dbg !570
}

; Function Attrs: noinline nounwind optnone
define internal void @LL_RCC_SetAPB1Prescaler(i32 noundef %0) #0 !dbg !571 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !572, metadata !DIExpression()), !dbg !573
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !574
  %4 = and i32 %3, -1793, !dbg !575
  %5 = load i32, ptr %2, align 4, !dbg !576
  %6 = or i32 %4, %5, !dbg !577
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !578
  ret void, !dbg !579
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stm32f0xx_ll_utils.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 180, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f0xx.h", directory: "/home/sri/zephyrproject")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "SUCCESS", value: 0)
!8 = !DIEnumerator(name: "ERROR", value: 1)
!9 = !{!10, !17, !24, !38}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !12, line: 454, baseType: !13)
!12 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 448, size: 128, elements: !14)
!14 = !{!15, !20, !21, !22}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !13, file: !12, line: 450, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !18, line: 64, baseType: !19)
!18 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !13, file: !12, line: 451, baseType: !16, size: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !13, file: !12, line: 452, baseType: !16, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !13, file: !12, line: 453, baseType: !23, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !26, line: 350, baseType: !27)
!26 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 339, size: 288, elements: !28)
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !27, file: !26, line: 341, baseType: !16, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !27, file: !26, line: 342, baseType: !16, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !27, file: !26, line: 343, baseType: !16, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !27, file: !26, line: 344, baseType: !16, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !27, file: !26, line: 345, baseType: !16, size: 32, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !27, file: !26, line: 346, baseType: !16, size: 32, offset: 160)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !27, file: !26, line: 347, baseType: !16, size: 32, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !27, file: !26, line: 348, baseType: !16, size: 32, offset: 224)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !27, file: !26, line: 349, baseType: !16, size: 32, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !26, line: 461, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 445, size: 448, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !40, file: !26, line: 447, baseType: !16, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !40, file: !26, line: 448, baseType: !16, size: 32, offset: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !40, file: !26, line: 449, baseType: !16, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !40, file: !26, line: 450, baseType: !16, size: 32, offset: 96)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !40, file: !26, line: 451, baseType: !16, size: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !40, file: !26, line: 452, baseType: !16, size: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !40, file: !26, line: 453, baseType: !16, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !40, file: !26, line: 454, baseType: !16, size: 32, offset: 224)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !40, file: !26, line: 455, baseType: !16, size: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !40, file: !26, line: 456, baseType: !16, size: 32, offset: 288)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !40, file: !26, line: 457, baseType: !16, size: 32, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !40, file: !26, line: 458, baseType: !16, size: 32, offset: 352)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !40, file: !26, line: 459, baseType: !16, size: 32, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !40, file: !26, line: 460, baseType: !16, size: 32, offset: 416)
!56 = !{i32 7, !"Dwarf Version", i32 4}
!57 = !{i32 2, !"Debug Info Version", i32 3}
!58 = !{i32 1, !"wchar_size", i32 4}
!59 = !{i32 1, !"static_rwdata", i32 1}
!60 = !{i32 1, !"enumsize_buildattr", i32 1}
!61 = !{i32 1, !"armlib_unavailable", i32 0}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!65 = distinct !DISubprogram(name: "LL_Init1msTick", scope: !66, file: !66, line: 141, type: !67, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!66 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_ll_utils.c", directory: "/home/sri/zephyrproject")
!67 = !DISubroutineType(types: !68)
!68 = !{null, !17}
!69 = !{}
!70 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !65, file: !66, line: 141, type: !17)
!71 = !DILocation(line: 141, column: 30, scope: !65)
!72 = !DILocation(line: 144, column: 15, scope: !65)
!73 = !DILocation(line: 144, column: 3, scope: !65)
!74 = !DILocation(line: 145, column: 1, scope: !65)
!75 = distinct !DISubprogram(name: "LL_InitTick", scope: !76, file: !76, line: 219, type: !77, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!76 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_utils.h", directory: "/home/sri/zephyrproject")
!77 = !DISubroutineType(types: !78)
!78 = !{null, !17, !17}
!79 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !75, file: !76, line: 219, type: !17)
!80 = !DILocation(line: 219, column: 43, scope: !75)
!81 = !DILocalVariable(name: "Ticks", arg: 2, scope: !75, file: !76, line: 219, type: !17)
!82 = !DILocation(line: 219, column: 67, scope: !75)
!83 = !DILocation(line: 222, column: 71, scope: !75)
!84 = !DILocation(line: 222, column: 87, scope: !75)
!85 = !DILocation(line: 222, column: 85, scope: !75)
!86 = !DILocation(line: 222, column: 94, scope: !75)
!87 = !DILocation(line: 222, column: 57, scope: !75)
!88 = !DILocation(line: 223, column: 56, scope: !75)
!89 = !DILocation(line: 224, column: 57, scope: !75)
!90 = !DILocation(line: 226, column: 1, scope: !75)
!91 = distinct !DISubprogram(name: "LL_mDelay", scope: !66, file: !66, line: 157, type: !67, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!92 = !DILocalVariable(name: "Delay", arg: 1, scope: !91, file: !66, line: 157, type: !17)
!93 = !DILocation(line: 157, column: 25, scope: !91)
!94 = !DILocalVariable(name: "tmp", scope: !91, file: !66, line: 159, type: !16)
!95 = !DILocation(line: 159, column: 21, scope: !91)
!96 = !DILocation(line: 159, column: 76, scope: !91)
!97 = !DILocation(line: 161, column: 10, scope: !91)
!98 = !DILocation(line: 164, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !66, line: 164, column: 7)
!100 = !DILocation(line: 164, column: 13, scope: !99)
!101 = !DILocation(line: 164, column: 7, scope: !91)
!102 = !DILocation(line: 166, column: 10, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !66, line: 165, column: 3)
!104 = !DILocation(line: 167, column: 3, scope: !103)
!105 = !DILocation(line: 169, column: 3, scope: !91)
!106 = !DILocation(line: 169, column: 10, scope: !91)
!107 = !DILocation(line: 171, column: 59, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !66, line: 171, column: 9)
!109 = distinct !DILexicalBlock(scope: !91, file: !66, line: 170, column: 3)
!110 = !DILocation(line: 171, column: 64, scope: !108)
!111 = !DILocation(line: 171, column: 80, scope: !108)
!112 = !DILocation(line: 171, column: 9, scope: !109)
!113 = !DILocation(line: 173, column: 12, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !66, line: 172, column: 5)
!115 = !DILocation(line: 174, column: 5, scope: !114)
!116 = distinct !{!116, !105, !117}
!117 = !DILocation(line: 175, column: 3, scope: !91)
!118 = !DILocation(line: 176, column: 1, scope: !91)
!119 = distinct !DISubprogram(name: "LL_SetSystemCoreClock", scope: !66, file: !66, line: 213, type: !67, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!120 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !119, file: !66, line: 213, type: !17)
!121 = !DILocation(line: 213, column: 37, scope: !119)
!122 = !DILocation(line: 216, column: 21, scope: !119)
!123 = !DILocation(line: 216, column: 19, scope: !119)
!124 = !DILocation(line: 217, column: 1, scope: !119)
!125 = distinct !DISubprogram(name: "LL_SetFlashLatency", scope: !66, file: !66, line: 228, type: !126, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !17}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorStatus", file: !4, line: 184, baseType: !3)
!129 = !DILocalVariable(name: "Frequency", arg: 1, scope: !125, file: !66, line: 228, type: !17)
!130 = !DILocation(line: 228, column: 41, scope: !125)
!131 = !DILocalVariable(name: "timeout", scope: !125, file: !66, line: 230, type: !17)
!132 = !DILocation(line: 230, column: 12, scope: !125)
!133 = !DILocalVariable(name: "getlatency", scope: !125, file: !66, line: 231, type: !17)
!134 = !DILocation(line: 231, column: 12, scope: !125)
!135 = !DILocalVariable(name: "latency", scope: !125, file: !66, line: 232, type: !17)
!136 = !DILocation(line: 232, column: 12, scope: !125)
!137 = !DILocalVariable(name: "status", scope: !125, file: !66, line: 233, type: !128)
!138 = !DILocation(line: 233, column: 15, scope: !125)
!139 = !DILocation(line: 236, column: 7, scope: !140)
!140 = distinct !DILexicalBlock(scope: !125, file: !66, line: 236, column: 7)
!141 = !DILocation(line: 236, column: 17, scope: !140)
!142 = !DILocation(line: 236, column: 7, scope: !125)
!143 = !DILocation(line: 238, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !66, line: 237, column: 3)
!145 = !DILocation(line: 239, column: 3, scope: !144)
!146 = !DILocation(line: 242, column: 9, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !66, line: 242, column: 9)
!148 = distinct !DILexicalBlock(scope: !140, file: !66, line: 241, column: 3)
!149 = !DILocation(line: 242, column: 19, scope: !147)
!150 = !DILocation(line: 242, column: 9, scope: !148)
!151 = !DILocation(line: 245, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !66, line: 243, column: 5)
!153 = !DILocation(line: 246, column: 5, scope: !152)
!154 = !DILocation(line: 250, column: 15, scope: !155)
!155 = distinct !DILexicalBlock(scope: !147, file: !66, line: 248, column: 5)
!156 = !DILocation(line: 252, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !148, file: !66, line: 252, column: 9)
!158 = !DILocation(line: 252, column: 16, scope: !157)
!159 = !DILocation(line: 252, column: 9, scope: !148)
!160 = !DILocation(line: 254, column: 27, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !66, line: 253, column: 5)
!162 = !DILocation(line: 254, column: 7, scope: !161)
!163 = !DILocation(line: 258, column: 15, scope: !161)
!164 = !DILocation(line: 259, column: 7, scope: !161)
!165 = !DILocation(line: 262, column: 20, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !66, line: 260, column: 7)
!167 = !DILocation(line: 262, column: 18, scope: !166)
!168 = !DILocation(line: 263, column: 14, scope: !166)
!169 = !DILocation(line: 264, column: 7, scope: !166)
!170 = !DILocation(line: 264, column: 17, scope: !161)
!171 = !DILocation(line: 264, column: 31, scope: !161)
!172 = !DILocation(line: 264, column: 28, scope: !161)
!173 = !DILocation(line: 264, column: 40, scope: !161)
!174 = !DILocation(line: 264, column: 44, scope: !161)
!175 = !DILocation(line: 264, column: 52, scope: !161)
!176 = !DILocation(line: 0, scope: !161)
!177 = distinct !{!177, !164, !178}
!178 = !DILocation(line: 264, column: 56, scope: !161)
!179 = !DILocation(line: 266, column: 10, scope: !180)
!180 = distinct !DILexicalBlock(scope: !161, file: !66, line: 266, column: 10)
!181 = !DILocation(line: 266, column: 24, scope: !180)
!182 = !DILocation(line: 266, column: 21, scope: !180)
!183 = !DILocation(line: 266, column: 10, scope: !161)
!184 = !DILocation(line: 268, column: 16, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !66, line: 267, column: 7)
!186 = !DILocation(line: 269, column: 7, scope: !185)
!187 = !DILocation(line: 272, column: 16, scope: !188)
!188 = distinct !DILexicalBlock(scope: !180, file: !66, line: 271, column: 7)
!189 = !DILocation(line: 274, column: 5, scope: !161)
!190 = !DILocation(line: 277, column: 10, scope: !125)
!191 = !DILocation(line: 277, column: 3, scope: !125)
!192 = distinct !DISubprogram(name: "LL_FLASH_SetLatency", scope: !193, file: !193, line: 1778, type: !67, scopeLine: 1779, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!193 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!194 = !DILocalVariable(name: "Latency", arg: 1, scope: !192, file: !193, line: 1778, type: !17)
!195 = !DILocation(line: 1778, column: 51, scope: !192)
!196 = !DILocation(line: 1780, column: 156, scope: !192)
!197 = !DILocation(line: 1780, column: 163, scope: !192)
!198 = !DILocation(line: 1780, column: 190, scope: !192)
!199 = !DILocation(line: 1780, column: 187, scope: !192)
!200 = !DILocation(line: 1780, column: 80, scope: !192)
!201 = !DILocation(line: 1781, column: 1, scope: !192)
!202 = distinct !DISubprogram(name: "LL_FLASH_GetLatency", scope: !193, file: !193, line: 1790, type: !203, scopeLine: 1791, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!203 = !DISubroutineType(types: !204)
!204 = !{!17}
!205 = !DILocation(line: 1792, column: 91, scope: !202)
!206 = !DILocation(line: 1792, column: 96, scope: !202)
!207 = !DILocation(line: 1792, column: 3, scope: !202)
!208 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSI", scope: !66, file: !66, line: 298, type: !209, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!209 = !DISubroutineType(types: !210)
!210 = !{!128, !211, !217}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "LL_UTILS_PLLInitTypeDef", file: !76, line: 111, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 90, size: 64, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMul", scope: !213, file: !76, line: 92, baseType: !17, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "PLLDiv", scope: !213, file: !76, line: 99, baseType: !17, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "LL_UTILS_ClkInitTypeDef", file: !76, line: 129, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 116, size: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !219, file: !76, line: 118, baseType: !17, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !219, file: !76, line: 124, baseType: !17, size: 32, offset: 32)
!223 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 1, scope: !208, file: !66, line: 298, type: !211)
!224 = !DILocation(line: 298, column: 67, scope: !208)
!225 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !208, file: !66, line: 299, type: !217)
!226 = !DILocation(line: 299, column: 67, scope: !208)
!227 = !DILocalVariable(name: "status", scope: !208, file: !66, line: 301, type: !128)
!228 = !DILocation(line: 301, column: 15, scope: !208)
!229 = !DILocalVariable(name: "pllfreq", scope: !208, file: !66, line: 302, type: !17)
!230 = !DILocation(line: 302, column: 12, scope: !208)
!231 = !DILocation(line: 305, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !208, file: !66, line: 305, column: 7)
!233 = !DILocation(line: 305, column: 26, scope: !232)
!234 = !DILocation(line: 305, column: 7, scope: !208)
!235 = !DILocation(line: 315, column: 53, scope: !236)
!236 = distinct !DILexicalBlock(scope: !232, file: !66, line: 306, column: 3)
!237 = !DILocation(line: 315, column: 15, scope: !236)
!238 = !DILocation(line: 315, column: 13, scope: !236)
!239 = !DILocation(line: 318, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !236, file: !66, line: 318, column: 9)
!241 = !DILocation(line: 318, column: 30, scope: !240)
!242 = !DILocation(line: 318, column: 9, scope: !236)
!243 = !DILocation(line: 320, column: 7, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !66, line: 319, column: 5)
!245 = !DILocation(line: 321, column: 7, scope: !244)
!246 = !DILocation(line: 321, column: 14, scope: !244)
!247 = !DILocation(line: 321, column: 35, scope: !244)
!248 = distinct !{!248, !245, !249}
!249 = !DILocation(line: 324, column: 7, scope: !244)
!250 = !DILocation(line: 325, column: 5, scope: !244)
!251 = !DILocation(line: 329, column: 48, scope: !236)
!252 = !DILocation(line: 329, column: 69, scope: !236)
!253 = !DILocation(line: 329, column: 77, scope: !236)
!254 = !DILocation(line: 329, column: 98, scope: !236)
!255 = !DILocation(line: 329, column: 5, scope: !236)
!256 = !DILocation(line: 335, column: 45, scope: !236)
!257 = !DILocation(line: 335, column: 54, scope: !236)
!258 = !DILocation(line: 335, column: 14, scope: !236)
!259 = !DILocation(line: 335, column: 12, scope: !236)
!260 = !DILocation(line: 336, column: 3, scope: !236)
!261 = !DILocation(line: 340, column: 12, scope: !262)
!262 = distinct !DILexicalBlock(scope: !232, file: !66, line: 338, column: 3)
!263 = !DILocation(line: 343, column: 10, scope: !208)
!264 = !DILocation(line: 343, column: 3, scope: !208)
!265 = distinct !DISubprogram(name: "UTILS_PLL_IsBusy", scope: !66, file: !66, line: 530, type: !266, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!266 = !DISubroutineType(types: !267)
!267 = !{!128}
!268 = !DILocalVariable(name: "status", scope: !265, file: !66, line: 532, type: !128)
!269 = !DILocation(line: 532, column: 15, scope: !265)
!270 = !DILocation(line: 535, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !265, file: !66, line: 535, column: 7)
!272 = !DILocation(line: 535, column: 28, scope: !271)
!273 = !DILocation(line: 535, column: 7, scope: !265)
!274 = !DILocation(line: 538, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !66, line: 536, column: 3)
!276 = !DILocation(line: 539, column: 3, scope: !275)
!277 = !DILocation(line: 541, column: 10, scope: !265)
!278 = !DILocation(line: 541, column: 3, scope: !265)
!279 = distinct !DISubprogram(name: "UTILS_GetPLLOutputFrequency", scope: !66, file: !66, line: 504, type: !280, scopeLine: 505, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!280 = !DISubroutineType(types: !281)
!281 = !{!17, !17, !211}
!282 = !DILocalVariable(name: "PLL_InputFrequency", arg: 1, scope: !279, file: !66, line: 504, type: !17)
!283 = !DILocation(line: 504, column: 54, scope: !279)
!284 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 2, scope: !279, file: !66, line: 504, type: !211)
!285 = !DILocation(line: 504, column: 99, scope: !279)
!286 = !DILocalVariable(name: "pllfreq", scope: !279, file: !66, line: 506, type: !17)
!287 = !DILocation(line: 506, column: 12, scope: !279)
!288 = !DILocation(line: 515, column: 16, scope: !279)
!289 = !DILocation(line: 515, column: 42, scope: !279)
!290 = !DILocation(line: 515, column: 63, scope: !279)
!291 = !DILocation(line: 515, column: 71, scope: !279)
!292 = !DILocation(line: 515, column: 90, scope: !279)
!293 = !DILocation(line: 515, column: 36, scope: !279)
!294 = !DILocation(line: 515, column: 104, scope: !279)
!295 = !DILocation(line: 515, column: 125, scope: !279)
!296 = !DILocation(line: 515, column: 133, scope: !279)
!297 = !DILocation(line: 515, column: 153, scope: !279)
!298 = !DILocation(line: 515, column: 171, scope: !279)
!299 = !DILocation(line: 515, column: 98, scope: !279)
!300 = !DILocation(line: 515, column: 11, scope: !279)
!301 = !DILocation(line: 521, column: 10, scope: !279)
!302 = !DILocation(line: 521, column: 3, scope: !279)
!303 = distinct !DISubprogram(name: "LL_RCC_HSI_IsReady", scope: !304, file: !304, line: 766, type: !203, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!304 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!305 = !DILocation(line: 768, column: 79, scope: !303)
!306 = !DILocation(line: 768, column: 83, scope: !303)
!307 = !DILocation(line: 768, column: 104, scope: !303)
!308 = !DILocation(line: 768, column: 3, scope: !303)
!309 = distinct !DISubprogram(name: "LL_RCC_HSI_Enable", scope: !304, file: !304, line: 746, type: !310, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!310 = !DISubroutineType(types: !311)
!311 = !{null}
!312 = !DILocation(line: 748, column: 75, scope: !309)
!313 = !DILocation(line: 749, column: 1, scope: !309)
!314 = distinct !DISubprogram(name: "LL_RCC_PLL_ConfigDomain_SYS", scope: !304, file: !304, line: 1578, type: !315, scopeLine: 1579, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !17, !17, !17}
!317 = !DILocalVariable(name: "Source", arg: 1, scope: !314, file: !304, line: 1578, type: !17)
!318 = !DILocation(line: 1578, column: 59, scope: !314)
!319 = !DILocalVariable(name: "PLLMul", arg: 2, scope: !314, file: !304, line: 1578, type: !17)
!320 = !DILocation(line: 1578, column: 76, scope: !314)
!321 = !DILocalVariable(name: "PLLDiv", arg: 3, scope: !314, file: !304, line: 1578, type: !17)
!322 = !DILocation(line: 1578, column: 93, scope: !314)
!323 = !DILocation(line: 1580, column: 153, scope: !314)
!324 = !DILocation(line: 1580, column: 161, scope: !314)
!325 = !DILocation(line: 1580, column: 208, scope: !314)
!326 = !DILocation(line: 1580, column: 217, scope: !314)
!327 = !DILocation(line: 1580, column: 215, scope: !314)
!328 = !DILocation(line: 1580, column: 205, scope: !314)
!329 = !DILocation(line: 1580, column: 79, scope: !314)
!330 = !DILocation(line: 1581, column: 154, scope: !314)
!331 = !DILocation(line: 1581, column: 163, scope: !314)
!332 = !DILocation(line: 1581, column: 190, scope: !314)
!333 = !DILocation(line: 1581, column: 187, scope: !314)
!334 = !DILocation(line: 1581, column: 80, scope: !314)
!335 = !DILocation(line: 1582, column: 1, scope: !314)
!336 = distinct !DISubprogram(name: "UTILS_EnablePLLAndSwitchSystem", scope: !66, file: !66, line: 553, type: !337, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!337 = !DISubroutineType(types: !338)
!338 = !{!128, !17, !217}
!339 = !DILocalVariable(name: "SYSCLK_Frequency", arg: 1, scope: !336, file: !66, line: 553, type: !17)
!340 = !DILocation(line: 553, column: 60, scope: !336)
!341 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !336, file: !66, line: 553, type: !217)
!342 = !DILocation(line: 553, column: 103, scope: !336)
!343 = !DILocalVariable(name: "status", scope: !336, file: !66, line: 555, type: !128)
!344 = !DILocation(line: 555, column: 15, scope: !336)
!345 = !DILocalVariable(name: "sysclk_frequency_current", scope: !336, file: !66, line: 556, type: !17)
!346 = !DILocation(line: 556, column: 12, scope: !336)
!347 = !DILocation(line: 562, column: 31, scope: !336)
!348 = !DILocation(line: 562, column: 64, scope: !336)
!349 = !DILocation(line: 562, column: 89, scope: !336)
!350 = !DILocation(line: 562, column: 50, scope: !336)
!351 = !DILocation(line: 562, column: 47, scope: !336)
!352 = !DILocation(line: 562, column: 28, scope: !336)
!353 = !DILocation(line: 565, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !336, file: !66, line: 565, column: 7)
!355 = !DILocation(line: 565, column: 34, scope: !354)
!356 = !DILocation(line: 565, column: 32, scope: !354)
!357 = !DILocation(line: 565, column: 7, scope: !336)
!358 = !DILocation(line: 568, column: 33, scope: !359)
!359 = distinct !DILexicalBlock(scope: !354, file: !66, line: 566, column: 3)
!360 = !DILocation(line: 568, column: 14, scope: !359)
!361 = !DILocation(line: 568, column: 12, scope: !359)
!362 = !DILocation(line: 569, column: 3, scope: !359)
!363 = !DILocation(line: 572, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !336, file: !66, line: 572, column: 7)
!365 = !DILocation(line: 572, column: 14, scope: !364)
!366 = !DILocation(line: 572, column: 7, scope: !336)
!367 = !DILocation(line: 575, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !66, line: 573, column: 3)
!369 = !DILocation(line: 576, column: 5, scope: !368)
!370 = !DILocation(line: 576, column: 12, scope: !368)
!371 = !DILocation(line: 576, column: 33, scope: !368)
!372 = distinct !{!372, !369, !373}
!373 = !DILocation(line: 579, column: 5, scope: !368)
!374 = !DILocation(line: 582, column: 28, scope: !368)
!375 = !DILocation(line: 582, column: 49, scope: !368)
!376 = !DILocation(line: 582, column: 5, scope: !368)
!377 = !DILocation(line: 583, column: 5, scope: !368)
!378 = !DILocation(line: 584, column: 5, scope: !368)
!379 = !DILocation(line: 584, column: 12, scope: !368)
!380 = !DILocation(line: 584, column: 37, scope: !368)
!381 = distinct !{!381, !378, !382}
!382 = !DILocation(line: 587, column: 5, scope: !368)
!383 = !DILocation(line: 590, column: 29, scope: !368)
!384 = !DILocation(line: 590, column: 50, scope: !368)
!385 = !DILocation(line: 590, column: 5, scope: !368)
!386 = !DILocation(line: 591, column: 3, scope: !368)
!387 = !DILocation(line: 594, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !336, file: !66, line: 594, column: 7)
!389 = !DILocation(line: 594, column: 34, scope: !388)
!390 = !DILocation(line: 594, column: 32, scope: !388)
!391 = !DILocation(line: 594, column: 7, scope: !336)
!392 = !DILocation(line: 597, column: 33, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !66, line: 595, column: 3)
!394 = !DILocation(line: 597, column: 14, scope: !393)
!395 = !DILocation(line: 597, column: 12, scope: !393)
!396 = !DILocation(line: 598, column: 3, scope: !393)
!397 = !DILocation(line: 601, column: 7, scope: !398)
!398 = distinct !DILexicalBlock(scope: !336, file: !66, line: 601, column: 7)
!399 = !DILocation(line: 601, column: 14, scope: !398)
!400 = !DILocation(line: 601, column: 7, scope: !336)
!401 = !DILocation(line: 603, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !66, line: 602, column: 3)
!403 = !DILocation(line: 603, column: 66, scope: !402)
!404 = !DILocation(line: 603, column: 87, scope: !402)
!405 = !DILocation(line: 603, column: 102, scope: !402)
!406 = !DILocation(line: 603, column: 121, scope: !402)
!407 = !DILocation(line: 603, column: 50, scope: !402)
!408 = !DILocation(line: 603, column: 47, scope: !402)
!409 = !DILocation(line: 603, column: 5, scope: !402)
!410 = !DILocation(line: 604, column: 3, scope: !402)
!411 = !DILocation(line: 606, column: 10, scope: !336)
!412 = !DILocation(line: 606, column: 3, scope: !336)
!413 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSI48", scope: !66, file: !66, line: 362, type: !209, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!414 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 1, scope: !413, file: !66, line: 362, type: !211)
!415 = !DILocation(line: 362, column: 69, scope: !413)
!416 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !413, file: !66, line: 363, type: !217)
!417 = !DILocation(line: 363, column: 67, scope: !413)
!418 = !DILocalVariable(name: "status", scope: !413, file: !66, line: 365, type: !128)
!419 = !DILocation(line: 365, column: 15, scope: !413)
!420 = !DILocalVariable(name: "pllfreq", scope: !413, file: !66, line: 366, type: !17)
!421 = !DILocation(line: 366, column: 12, scope: !413)
!422 = !DILocation(line: 369, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !413, file: !66, line: 369, column: 7)
!424 = !DILocation(line: 369, column: 26, scope: !423)
!425 = !DILocation(line: 369, column: 7, scope: !413)
!426 = !DILocation(line: 375, column: 54, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !66, line: 370, column: 3)
!428 = !DILocation(line: 375, column: 15, scope: !427)
!429 = !DILocation(line: 375, column: 13, scope: !427)
!430 = !DILocation(line: 378, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !427, file: !66, line: 378, column: 9)
!432 = !DILocation(line: 378, column: 32, scope: !431)
!433 = !DILocation(line: 378, column: 9, scope: !427)
!434 = !DILocation(line: 380, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !431, file: !66, line: 379, column: 5)
!436 = !DILocation(line: 381, column: 7, scope: !435)
!437 = !DILocation(line: 381, column: 14, scope: !435)
!438 = !DILocation(line: 381, column: 37, scope: !435)
!439 = distinct !{!439, !436, !440}
!440 = !DILocation(line: 384, column: 7, scope: !435)
!441 = !DILocation(line: 385, column: 5, scope: !435)
!442 = !DILocation(line: 388, column: 48, scope: !427)
!443 = !DILocation(line: 388, column: 69, scope: !427)
!444 = !DILocation(line: 388, column: 77, scope: !427)
!445 = !DILocation(line: 388, column: 98, scope: !427)
!446 = !DILocation(line: 388, column: 5, scope: !427)
!447 = !DILocation(line: 391, column: 45, scope: !427)
!448 = !DILocation(line: 391, column: 54, scope: !427)
!449 = !DILocation(line: 391, column: 14, scope: !427)
!450 = !DILocation(line: 391, column: 12, scope: !427)
!451 = !DILocation(line: 392, column: 3, scope: !427)
!452 = !DILocation(line: 396, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !423, file: !66, line: 394, column: 3)
!454 = !DILocation(line: 399, column: 10, scope: !413)
!455 = !DILocation(line: 399, column: 3, scope: !413)
!456 = distinct !DISubprogram(name: "LL_RCC_HSI48_IsReady", scope: !304, file: !304, line: 841, type: !203, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!457 = !DILocation(line: 843, column: 79, scope: !456)
!458 = !DILocation(line: 843, column: 84, scope: !456)
!459 = !DILocation(line: 843, column: 106, scope: !456)
!460 = !DILocation(line: 843, column: 3, scope: !456)
!461 = distinct !DISubprogram(name: "LL_RCC_HSI48_Enable", scope: !304, file: !304, line: 821, type: !310, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!462 = !DILocation(line: 823, column: 76, scope: !461)
!463 = !DILocation(line: 824, column: 1, scope: !461)
!464 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSE", scope: !66, file: !66, line: 423, type: !465, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !69)
!465 = !DISubroutineType(types: !466)
!466 = !{!128, !17, !17, !211, !217}
!467 = !DILocalVariable(name: "HSEFrequency", arg: 1, scope: !464, file: !66, line: 423, type: !17)
!468 = !DILocation(line: 423, column: 51, scope: !464)
!469 = !DILocalVariable(name: "HSEBypass", arg: 2, scope: !464, file: !66, line: 423, type: !17)
!470 = !DILocation(line: 423, column: 74, scope: !464)
!471 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 3, scope: !464, file: !66, line: 424, type: !211)
!472 = !DILocation(line: 424, column: 67, scope: !464)
!473 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 4, scope: !464, file: !66, line: 424, type: !217)
!474 = !DILocation(line: 424, column: 113, scope: !464)
!475 = !DILocalVariable(name: "status", scope: !464, file: !66, line: 426, type: !128)
!476 = !DILocation(line: 426, column: 15, scope: !464)
!477 = !DILocalVariable(name: "pllfreq", scope: !464, file: !66, line: 427, type: !17)
!478 = !DILocation(line: 427, column: 12, scope: !464)
!479 = !DILocation(line: 434, column: 7, scope: !480)
!480 = distinct !DILexicalBlock(scope: !464, file: !66, line: 434, column: 7)
!481 = !DILocation(line: 434, column: 26, scope: !480)
!482 = !DILocation(line: 434, column: 7, scope: !464)
!483 = !DILocation(line: 444, column: 43, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !66, line: 435, column: 3)
!485 = !DILocation(line: 444, column: 57, scope: !484)
!486 = !DILocation(line: 444, column: 15, scope: !484)
!487 = !DILocation(line: 444, column: 13, scope: !484)
!488 = !DILocation(line: 447, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !484, file: !66, line: 447, column: 9)
!490 = !DILocation(line: 447, column: 30, scope: !489)
!491 = !DILocation(line: 447, column: 9, scope: !484)
!492 = !DILocation(line: 450, column: 11, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !66, line: 450, column: 11)
!494 = distinct !DILexicalBlock(scope: !489, file: !66, line: 448, column: 5)
!495 = !DILocation(line: 450, column: 21, scope: !493)
!496 = !DILocation(line: 450, column: 11, scope: !494)
!497 = !DILocation(line: 452, column: 9, scope: !498)
!498 = distinct !DILexicalBlock(scope: !493, file: !66, line: 451, column: 7)
!499 = !DILocation(line: 453, column: 7, scope: !498)
!500 = !DILocation(line: 456, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !493, file: !66, line: 455, column: 7)
!502 = !DILocation(line: 460, column: 7, scope: !494)
!503 = !DILocation(line: 461, column: 7, scope: !494)
!504 = !DILocation(line: 461, column: 14, scope: !494)
!505 = !DILocation(line: 461, column: 35, scope: !494)
!506 = distinct !{!506, !503, !507}
!507 = !DILocation(line: 464, column: 7, scope: !494)
!508 = !DILocation(line: 465, column: 5, scope: !494)
!509 = !DILocation(line: 469, column: 50, scope: !484)
!510 = !DILocation(line: 469, column: 71, scope: !484)
!511 = !DILocation(line: 469, column: 79, scope: !484)
!512 = !DILocation(line: 469, column: 100, scope: !484)
!513 = !DILocation(line: 469, column: 7, scope: !484)
!514 = !DILocation(line: 475, column: 45, scope: !484)
!515 = !DILocation(line: 475, column: 54, scope: !484)
!516 = !DILocation(line: 475, column: 14, scope: !484)
!517 = !DILocation(line: 475, column: 12, scope: !484)
!518 = !DILocation(line: 476, column: 3, scope: !484)
!519 = !DILocation(line: 480, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !480, file: !66, line: 478, column: 3)
!521 = !DILocation(line: 483, column: 10, scope: !464)
!522 = !DILocation(line: 483, column: 3, scope: !464)
!523 = distinct !DISubprogram(name: "LL_RCC_HSE_IsReady", scope: !304, file: !304, line: 728, type: !203, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!524 = !DILocation(line: 730, column: 79, scope: !523)
!525 = !DILocation(line: 730, column: 83, scope: !523)
!526 = !DILocation(line: 730, column: 105, scope: !523)
!527 = !DILocation(line: 730, column: 3, scope: !523)
!528 = distinct !DISubprogram(name: "LL_RCC_HSE_EnableBypass", scope: !304, file: !304, line: 688, type: !310, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!529 = !DILocation(line: 690, column: 75, scope: !528)
!530 = !DILocation(line: 691, column: 1, scope: !528)
!531 = distinct !DISubprogram(name: "LL_RCC_HSE_DisableBypass", scope: !304, file: !304, line: 698, type: !310, scopeLine: 699, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!532 = !DILocation(line: 700, column: 75, scope: !531)
!533 = !DILocation(line: 701, column: 1, scope: !531)
!534 = distinct !DISubprogram(name: "LL_RCC_HSE_Enable", scope: !304, file: !304, line: 708, type: !310, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!535 = !DILocation(line: 710, column: 75, scope: !534)
!536 = !DILocation(line: 711, column: 1, scope: !534)
!537 = distinct !DISubprogram(name: "LL_RCC_PLL_IsReady", scope: !304, file: !304, line: 1526, type: !203, scopeLine: 1527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!538 = !DILocation(line: 1528, column: 79, scope: !537)
!539 = !DILocation(line: 1528, column: 83, scope: !537)
!540 = !DILocation(line: 1528, column: 105, scope: !537)
!541 = !DILocation(line: 1528, column: 3, scope: !537)
!542 = distinct !DISubprogram(name: "LL_RCC_GetAHBPrescaler", scope: !304, file: !304, line: 1169, type: !203, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!543 = !DILocation(line: 1171, column: 89, scope: !542)
!544 = !DILocation(line: 1171, column: 95, scope: !542)
!545 = !DILocation(line: 1171, column: 3, scope: !542)
!546 = distinct !DISubprogram(name: "LL_RCC_PLL_Enable", scope: !304, file: !304, line: 1505, type: !310, scopeLine: 1506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!547 = !DILocation(line: 1507, column: 75, scope: !546)
!548 = !DILocation(line: 1508, column: 1, scope: !546)
!549 = distinct !DISubprogram(name: "LL_RCC_SetAHBPrescaler", scope: !304, file: !304, line: 1134, type: !67, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!550 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !549, file: !304, line: 1134, type: !17)
!551 = !DILocation(line: 1134, column: 54, scope: !549)
!552 = !DILocation(line: 1136, column: 153, scope: !549)
!553 = !DILocation(line: 1136, column: 161, scope: !549)
!554 = !DILocation(line: 1136, column: 188, scope: !549)
!555 = !DILocation(line: 1136, column: 185, scope: !549)
!556 = !DILocation(line: 1136, column: 79, scope: !549)
!557 = !DILocation(line: 1137, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "LL_RCC_SetSysClkSource", scope: !304, file: !304, line: 1098, type: !67, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!559 = !DILocalVariable(name: "Source", arg: 1, scope: !558, file: !304, line: 1098, type: !17)
!560 = !DILocation(line: 1098, column: 54, scope: !558)
!561 = !DILocation(line: 1100, column: 153, scope: !558)
!562 = !DILocation(line: 1100, column: 161, scope: !558)
!563 = !DILocation(line: 1100, column: 188, scope: !558)
!564 = !DILocation(line: 1100, column: 185, scope: !558)
!565 = !DILocation(line: 1100, column: 79, scope: !558)
!566 = !DILocation(line: 1101, column: 1, scope: !558)
!567 = distinct !DISubprogram(name: "LL_RCC_GetSysClkSource", scope: !304, file: !304, line: 1114, type: !203, scopeLine: 1115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!568 = !DILocation(line: 1116, column: 89, scope: !567)
!569 = !DILocation(line: 1116, column: 95, scope: !567)
!570 = !DILocation(line: 1116, column: 3, scope: !567)
!571 = distinct !DISubprogram(name: "LL_RCC_SetAPB1Prescaler", scope: !304, file: !304, line: 1150, type: !67, scopeLine: 1151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !69)
!572 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !571, file: !304, line: 1150, type: !17)
!573 = !DILocation(line: 1150, column: 55, scope: !571)
!574 = !DILocation(line: 1152, column: 153, scope: !571)
!575 = !DILocation(line: 1152, column: 161, scope: !571)
!576 = !DILocation(line: 1152, column: 188, scope: !571)
!577 = !DILocation(line: 1152, column: 185, scope: !571)
!578 = !DILocation(line: 1152, column: 79, scope: !571)
!579 = !DILocation(line: 1153, column: 1, scope: !571)
