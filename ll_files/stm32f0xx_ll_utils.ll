; ModuleID = '../bc_files/stm32f0xx_ll_utils.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_ll_utils.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.LL_UTILS_PLLInitTypeDef = type { i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.LL_UTILS_ClkInitTypeDef = type { i32, i32 }

@SystemCoreClock = external dso_local global i32, align 4
@AHBPrescTable = external dso_local constant [16 x i8], align 1

; Function Attrs: nounwind optsize
define hidden void @LL_Init1msTick(i32 noundef %0) #0 !dbg !63 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !68, metadata !DIExpression()), !dbg !69
  %3 = load i32, ptr %2, align 4, !dbg !70
  call void @LL_InitTick(i32 noundef %3, i32 noundef 1000) #4, !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_InitTick(i32 noundef %0, i32 noundef %1) #2 !dbg !73 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !78, metadata !DIExpression()), !dbg !80
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !79, metadata !DIExpression()), !dbg !81
  %5 = load i32, ptr %3, align 4, !dbg !82
  %6 = load i32, ptr %4, align 4, !dbg !83
  %7 = udiv i32 %5, %6, !dbg !84
  %8 = sub i32 %7, 1, !dbg !85
  store volatile i32 %8, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !86
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !87
  store volatile i32 5, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: nounwind optsize
define hidden void @LL_mDelay(i32 noundef %0) #0 !dbg !90 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %3, metadata !93, metadata !DIExpression()), !dbg !96
  %4 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !97
  store volatile i32 %4, ptr %3, align 4, !dbg !96
  %5 = load volatile i32, ptr %3, align 4, !dbg !98
  %6 = load i32, ptr %2, align 4, !dbg !99
  %7 = icmp ult i32 %6, -1, !dbg !101
  br i1 %7, label %8, label %11, !dbg !102

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !dbg !103
  %10 = add i32 %9, 1, !dbg !103
  store i32 %10, ptr %2, align 4, !dbg !103
  br label %11, !dbg !105

11:                                               ; preds = %8, %1
  br label %12, !dbg !106

12:                                               ; preds = %22, %11
  %13 = load i32, ptr %2, align 4, !dbg !107
  %14 = icmp ne i32 %13, 0, !dbg !106
  br i1 %14, label %15, label %23, !dbg !106

15:                                               ; preds = %12
  %16 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !108
  %17 = and i32 %16, 65536, !dbg !111
  %18 = icmp ne i32 %17, 0, !dbg !112
  br i1 %18, label %19, label %22, !dbg !113

19:                                               ; preds = %15
  %20 = load i32, ptr %2, align 4, !dbg !114
  %21 = add i32 %20, -1, !dbg !114
  store i32 %21, ptr %2, align 4, !dbg !114
  br label %22, !dbg !116

22:                                               ; preds = %19, %15
  br label %12, !dbg !106, !llvm.loop !117

23:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !119
  ret void, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define hidden void @LL_SetSystemCoreClock(i32 noundef %0) #0 !dbg !120 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !122, metadata !DIExpression()), !dbg !123
  %3 = load i32, ptr %2, align 4, !dbg !124
  store i32 %3, ptr @SystemCoreClock, align 4, !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @LL_SetFlashLatency(i32 noundef %0) #0 !dbg !127 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !132, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %3, metadata !133, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %4, metadata !134, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %5, metadata !135, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #5, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %6, metadata !136, metadata !DIExpression()), !dbg !145
  store i8 0, ptr %6, align 1, !dbg !145
  %7 = load i32, ptr %2, align 4, !dbg !146
  %8 = icmp eq i32 %7, 0, !dbg !148
  br i1 %8, label %9, label %10, !dbg !149

9:                                                ; preds = %1
  store i8 1, ptr %6, align 1, !dbg !150
  br label %42, !dbg !152

10:                                               ; preds = %1
  %11 = load i32, ptr %2, align 4, !dbg !153
  %12 = icmp ugt i32 %11, 24000000, !dbg !156
  br i1 %12, label %13, label %14, !dbg !157

13:                                               ; preds = %10
  store i32 1, ptr %5, align 4, !dbg !158
  br label %15, !dbg !160

14:                                               ; preds = %10
  store i32 0, ptr %5, align 4, !dbg !161
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i8, ptr %6, align 1, !dbg !163
  %17 = zext i8 %16 to i32, !dbg !163
  %18 = icmp ne i32 %17, 1, !dbg !165
  br i1 %18, label %19, label %41, !dbg !166

19:                                               ; preds = %15
  %20 = load i32, ptr %5, align 4, !dbg !167
  call void @LL_FLASH_SetLatency(i32 noundef %20) #4, !dbg !169
  store i32 2, ptr %3, align 4, !dbg !170
  br label %21, !dbg !171

21:                                               ; preds = %32, %19
  %22 = call i32 @LL_FLASH_GetLatency() #4, !dbg !172
  store i32 %22, ptr %4, align 4, !dbg !174
  %23 = load i32, ptr %3, align 4, !dbg !175
  %24 = add i32 %23, -1, !dbg !175
  store i32 %24, ptr %3, align 4, !dbg !175
  br label %25, !dbg !176

25:                                               ; preds = %21
  %26 = load i32, ptr %4, align 4, !dbg !177
  %27 = load i32, ptr %5, align 4, !dbg !178
  %28 = icmp ne i32 %26, %27, !dbg !179
  br i1 %28, label %29, label %32, !dbg !180

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4, !dbg !181
  %31 = icmp ugt i32 %30, 0, !dbg !182
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ], !dbg !183
  br i1 %33, label %21, label %34, !dbg !176, !llvm.loop !184

34:                                               ; preds = %32
  %35 = load i32, ptr %4, align 4, !dbg !186
  %36 = load i32, ptr %5, align 4, !dbg !188
  %37 = icmp ne i32 %35, %36, !dbg !189
  br i1 %37, label %38, label %39, !dbg !190

38:                                               ; preds = %34
  store i8 1, ptr %6, align 1, !dbg !191
  br label %40, !dbg !193

39:                                               ; preds = %34
  store i8 0, ptr %6, align 1, !dbg !194
  br label %40

40:                                               ; preds = %39, %38
  br label %41, !dbg !196

41:                                               ; preds = %40, %15
  br label %42

42:                                               ; preds = %41, %9
  %43 = load i8, ptr %6, align 1, !dbg !197
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #5, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !198
  ret i8 %43, !dbg !199
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_FLASH_SetLatency(i32 noundef %0) #2 !dbg !200 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !203, metadata !DIExpression()), !dbg !204
  %3 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !205
  %4 = and i32 %3, -2, !dbg !206
  %5 = load i32, ptr %2, align 4, !dbg !207
  %6 = or i32 %4, %5, !dbg !208
  store volatile i32 %6, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_FLASH_GetLatency() #2 !dbg !211 {
  %1 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !215
  %2 = and i32 %1, 1, !dbg !216
  ret i32 %2, !dbg !217
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSI(ptr noundef %0, ptr noundef %1) #0 !dbg !218 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !234, metadata !DIExpression()), !dbg !238
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !235, metadata !DIExpression()), !dbg !239
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #5, !dbg !240
  call void @llvm.dbg.declare(metadata ptr %5, metadata !236, metadata !DIExpression()), !dbg !241
  store i8 0, ptr %5, align 1, !dbg !241
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %6, metadata !237, metadata !DIExpression()), !dbg !243
  store i32 0, ptr %6, align 4, !dbg !243
  %7 = call zeroext i8 @UTILS_PLL_IsBusy() #4, !dbg !244
  %8 = zext i8 %7 to i32, !dbg !244
  %9 = icmp eq i32 %8, 0, !dbg !246
  br i1 %9, label %10, label %31, !dbg !247

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !248
  %12 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef 8000000, ptr noundef %11) #4, !dbg !250
  store i32 %12, ptr %6, align 4, !dbg !251
  %13 = call i32 @LL_RCC_HSI_IsReady() #4, !dbg !252
  %14 = icmp ne i32 %13, 1, !dbg !254
  br i1 %14, label %15, label %21, !dbg !255

15:                                               ; preds = %10
  call void @LL_RCC_HSI_Enable() #4, !dbg !256
  br label %16, !dbg !258

16:                                               ; preds = %19, %15
  %17 = call i32 @LL_RCC_HSI_IsReady() #4, !dbg !259
  %18 = icmp ne i32 %17, 1, !dbg !260
  br i1 %18, label %19, label %20, !dbg !258

19:                                               ; preds = %16
  br label %16, !dbg !258, !llvm.loop !261

20:                                               ; preds = %16
  br label %21, !dbg !263

21:                                               ; preds = %20, %10
  %22 = load ptr, ptr %3, align 4, !dbg !264
  %23 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %22, i32 0, i32 0, !dbg !265
  %24 = load i32, ptr %23, align 4, !dbg !265
  %25 = load ptr, ptr %3, align 4, !dbg !266
  %26 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %25, i32 0, i32 1, !dbg !267
  %27 = load i32, ptr %26, align 4, !dbg !267
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 32768, i32 noundef %24, i32 noundef %27) #4, !dbg !268
  %28 = load i32, ptr %6, align 4, !dbg !269
  %29 = load ptr, ptr %4, align 4, !dbg !270
  %30 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %28, ptr noundef %29) #4, !dbg !271
  store i8 %30, ptr %5, align 1, !dbg !272
  br label %32, !dbg !273

31:                                               ; preds = %2
  store i8 1, ptr %5, align 1, !dbg !274
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i8, ptr %5, align 1, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5, !dbg !277
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #5, !dbg !277
  ret i8 %33, !dbg !278
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @UTILS_PLL_IsBusy() #0 !dbg !279 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %1) #5, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %1, metadata !283, metadata !DIExpression()), !dbg !285
  store i8 0, ptr %1, align 1, !dbg !285
  %2 = call i32 @LL_RCC_PLL_IsReady() #4, !dbg !286
  %3 = icmp ne i32 %2, 0, !dbg !288
  br i1 %3, label %4, label %5, !dbg !289

4:                                                ; preds = %0
  store i8 1, ptr %1, align 1, !dbg !290
  br label %5, !dbg !292

5:                                                ; preds = %4, %0
  %6 = load i8, ptr %1, align 1, !dbg !293
  call void @llvm.lifetime.end.p0(i64 1, ptr %1) #5, !dbg !294
  ret i8 %6, !dbg !295
}

; Function Attrs: nounwind optsize
define internal i32 @UTILS_GetPLLOutputFrequency(i32 noundef %0, ptr noundef %1) #0 !dbg !296 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !300, metadata !DIExpression()), !dbg !303
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !301, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %5, metadata !302, metadata !DIExpression()), !dbg !306
  store i32 0, ptr %5, align 4, !dbg !306
  %6 = load i32, ptr %3, align 4, !dbg !307
  %7 = load ptr, ptr %4, align 4, !dbg !308
  %8 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %7, i32 0, i32 1, !dbg !309
  %9 = load i32, ptr %8, align 4, !dbg !309
  %10 = and i32 %9, 15, !dbg !310
  %11 = add i32 %10, 1, !dbg !311
  %12 = udiv i32 %6, %11, !dbg !312
  %13 = load ptr, ptr %4, align 4, !dbg !313
  %14 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %13, i32 0, i32 0, !dbg !314
  %15 = load i32, ptr %14, align 4, !dbg !314
  %16 = and i32 %15, 3932160, !dbg !315
  %17 = lshr i32 %16, 18, !dbg !316
  %18 = add i32 %17, 2, !dbg !317
  %19 = mul i32 %12, %18, !dbg !318
  store i32 %19, ptr %5, align 4, !dbg !319
  %20 = load i32, ptr %5, align 4, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5, !dbg !321
  ret i32 %20, !dbg !322
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_HSI_IsReady() #2 !dbg !323 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !325
  %2 = and i32 %1, 2, !dbg !326
  %3 = icmp eq i32 %2, 2, !dbg !327
  %4 = zext i1 %3 to i32, !dbg !327
  ret i32 %4, !dbg !328
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSI_Enable() #2 !dbg !329 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !332
  %2 = or i32 %1, 1, !dbg !332
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !332
  ret void, !dbg !333
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 !dbg !334 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !338, metadata !DIExpression()), !dbg !341
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !339, metadata !DIExpression()), !dbg !342
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !343
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !344
  %8 = and i32 %7, -4030465, !dbg !345
  %9 = load i32, ptr %4, align 4, !dbg !346
  %10 = load i32, ptr %5, align 4, !dbg !347
  %11 = or i32 %9, %10, !dbg !348
  %12 = or i32 %8, %11, !dbg !349
  store volatile i32 %12, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !350
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !351
  %14 = and i32 %13, -16, !dbg !352
  %15 = load i32, ptr %6, align 4, !dbg !353
  %16 = or i32 %14, %15, !dbg !354
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !355
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize
define internal zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %0, ptr noundef %1) #0 !dbg !357 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !361, metadata !DIExpression()), !dbg !365
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !362, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #5, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %5, metadata !363, metadata !DIExpression()), !dbg !368
  store i8 0, ptr %5, align 1, !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %6, metadata !364, metadata !DIExpression()), !dbg !370
  store i32 0, ptr %6, align 4, !dbg !370
  %7 = load i32, ptr @SystemCoreClock, align 4, !dbg !371
  %8 = call i32 @LL_RCC_GetAHBPrescaler() #4, !dbg !372
  %9 = lshr i32 %8, 4, !dbg !373
  %10 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %9, !dbg !374
  %11 = load i8, ptr %10, align 1, !dbg !374
  %12 = zext i8 %11 to i32, !dbg !374
  %13 = shl i32 %7, %12, !dbg !375
  store i32 %13, ptr %6, align 4, !dbg !376
  %14 = load i32, ptr %6, align 4, !dbg !377
  %15 = load i32, ptr %3, align 4, !dbg !379
  %16 = icmp ult i32 %14, %15, !dbg !380
  br i1 %16, label %17, label %20, !dbg !381

17:                                               ; preds = %2
  %18 = load i32, ptr %3, align 4, !dbg !382
  %19 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %18) #4, !dbg !384
  store i8 %19, ptr %5, align 1, !dbg !385
  br label %20, !dbg !386

20:                                               ; preds = %17, %2
  %21 = load i8, ptr %5, align 1, !dbg !387
  %22 = zext i8 %21 to i32, !dbg !387
  %23 = icmp eq i32 %22, 0, !dbg !389
  br i1 %23, label %24, label %41, !dbg !390

24:                                               ; preds = %20
  call void @LL_RCC_PLL_Enable() #4, !dbg !391
  br label %25, !dbg !393

25:                                               ; preds = %28, %24
  %26 = call i32 @LL_RCC_PLL_IsReady() #4, !dbg !394
  %27 = icmp ne i32 %26, 1, !dbg !395
  br i1 %27, label %28, label %29, !dbg !393

28:                                               ; preds = %25
  br label %25, !dbg !393, !llvm.loop !396

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 4, !dbg !398
  %31 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %30, i32 0, i32 0, !dbg !399
  %32 = load i32, ptr %31, align 4, !dbg !399
  call void @LL_RCC_SetAHBPrescaler(i32 noundef %32) #4, !dbg !400
  call void @LL_RCC_SetSysClkSource(i32 noundef 2) #4, !dbg !401
  br label %33, !dbg !402

33:                                               ; preds = %36, %29
  %34 = call i32 @LL_RCC_GetSysClkSource() #4, !dbg !403
  %35 = icmp ne i32 %34, 8, !dbg !404
  br i1 %35, label %36, label %37, !dbg !402

36:                                               ; preds = %33
  br label %33, !dbg !402, !llvm.loop !405

37:                                               ; preds = %33
  %38 = load ptr, ptr %4, align 4, !dbg !407
  %39 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %38, i32 0, i32 1, !dbg !408
  %40 = load i32, ptr %39, align 4, !dbg !408
  call void @LL_RCC_SetAPB1Prescaler(i32 noundef %40) #4, !dbg !409
  br label %41, !dbg !410

41:                                               ; preds = %37, %20
  %42 = load i32, ptr %6, align 4, !dbg !411
  %43 = load i32, ptr %3, align 4, !dbg !413
  %44 = icmp ugt i32 %42, %43, !dbg !414
  br i1 %44, label %45, label %48, !dbg !415

45:                                               ; preds = %41
  %46 = load i32, ptr %3, align 4, !dbg !416
  %47 = call zeroext i8 @LL_SetFlashLatency(i32 noundef %46) #4, !dbg !418
  store i8 %47, ptr %5, align 1, !dbg !419
  br label %48, !dbg !420

48:                                               ; preds = %45, %41
  %49 = load i8, ptr %5, align 1, !dbg !421
  %50 = zext i8 %49 to i32, !dbg !421
  %51 = icmp eq i32 %50, 0, !dbg !423
  br i1 %51, label %52, label %63, !dbg !424

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4, !dbg !425
  %54 = load ptr, ptr %4, align 4, !dbg !427
  %55 = getelementptr inbounds %struct.LL_UTILS_ClkInitTypeDef, ptr %54, i32 0, i32 0, !dbg !428
  %56 = load i32, ptr %55, align 4, !dbg !428
  %57 = and i32 %56, 240, !dbg !429
  %58 = lshr i32 %57, 4, !dbg !430
  %59 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %58, !dbg !431
  %60 = load i8, ptr %59, align 1, !dbg !431
  %61 = zext i8 %60 to i32, !dbg !431
  %62 = lshr i32 %53, %61, !dbg !432
  call void @LL_SetSystemCoreClock(i32 noundef %62) #4, !dbg !433
  br label %63, !dbg !434

63:                                               ; preds = %52, %48
  %64 = load i8, ptr %5, align 1, !dbg !435
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5, !dbg !436
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #5, !dbg !436
  ret i8 %64, !dbg !437
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSI48(ptr noundef %0, ptr noundef %1) #0 !dbg !438 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !440, metadata !DIExpression()), !dbg !444
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !441, metadata !DIExpression()), !dbg !445
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #5, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %5, metadata !442, metadata !DIExpression()), !dbg !447
  store i8 0, ptr %5, align 1, !dbg !447
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %6, metadata !443, metadata !DIExpression()), !dbg !449
  store i32 0, ptr %6, align 4, !dbg !449
  %7 = call zeroext i8 @UTILS_PLL_IsBusy() #4, !dbg !450
  %8 = zext i8 %7 to i32, !dbg !450
  %9 = icmp eq i32 %8, 0, !dbg !452
  br i1 %9, label %10, label %31, !dbg !453

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 4, !dbg !454
  %12 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef 48000000, ptr noundef %11) #4, !dbg !456
  store i32 %12, ptr %6, align 4, !dbg !457
  %13 = call i32 @LL_RCC_HSI48_IsReady() #4, !dbg !458
  %14 = icmp ne i32 %13, 1, !dbg !460
  br i1 %14, label %15, label %21, !dbg !461

15:                                               ; preds = %10
  call void @LL_RCC_HSI48_Enable() #4, !dbg !462
  br label %16, !dbg !464

16:                                               ; preds = %19, %15
  %17 = call i32 @LL_RCC_HSI48_IsReady() #4, !dbg !465
  %18 = icmp ne i32 %17, 1, !dbg !466
  br i1 %18, label %19, label %20, !dbg !464

19:                                               ; preds = %16
  br label %16, !dbg !464, !llvm.loop !467

20:                                               ; preds = %16
  br label %21, !dbg !469

21:                                               ; preds = %20, %10
  %22 = load ptr, ptr %3, align 4, !dbg !470
  %23 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %22, i32 0, i32 0, !dbg !471
  %24 = load i32, ptr %23, align 4, !dbg !471
  %25 = load ptr, ptr %3, align 4, !dbg !472
  %26 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %25, i32 0, i32 1, !dbg !473
  %27 = load i32, ptr %26, align 4, !dbg !473
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 98304, i32 noundef %24, i32 noundef %27) #4, !dbg !474
  %28 = load i32, ptr %6, align 4, !dbg !475
  %29 = load ptr, ptr %4, align 4, !dbg !476
  %30 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %28, ptr noundef %29) #4, !dbg !477
  store i8 %30, ptr %5, align 1, !dbg !478
  br label %32, !dbg !479

31:                                               ; preds = %2
  store i8 1, ptr %5, align 1, !dbg !480
  br label %32

32:                                               ; preds = %31, %21
  %33 = load i8, ptr %5, align 1, !dbg !482
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5, !dbg !483
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #5, !dbg !483
  ret i8 %33, !dbg !484
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_HSI48_IsReady() #2 !dbg !485 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !486
  %2 = and i32 %1, 131072, !dbg !487
  %3 = icmp eq i32 %2, 131072, !dbg !488
  %4 = zext i1 %3 to i32, !dbg !488
  ret i32 %4, !dbg !489
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSI48_Enable() #2 !dbg !490 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !491
  %2 = or i32 %1, 65536, !dbg !491
  store volatile i32 %2, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !491
  ret void, !dbg !492
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @LL_PLL_ConfigSystemClock_HSE(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !493 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !497, metadata !DIExpression()), !dbg !503
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !498, metadata !DIExpression()), !dbg !504
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !499, metadata !DIExpression()), !dbg !505
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !500, metadata !DIExpression()), !dbg !506
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #5, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %9, metadata !501, metadata !DIExpression()), !dbg !508
  store i8 0, ptr %9, align 1, !dbg !508
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %10, metadata !502, metadata !DIExpression()), !dbg !510
  store i32 0, ptr %10, align 4, !dbg !510
  %11 = call zeroext i8 @UTILS_PLL_IsBusy() #4, !dbg !511
  %12 = zext i8 %11 to i32, !dbg !511
  %13 = icmp eq i32 %12, 0, !dbg !513
  br i1 %13, label %14, label %41, !dbg !514

14:                                               ; preds = %4
  %15 = load i32, ptr %5, align 4, !dbg !515
  %16 = load ptr, ptr %7, align 4, !dbg !517
  %17 = call i32 @UTILS_GetPLLOutputFrequency(i32 noundef %15, ptr noundef %16) #4, !dbg !518
  store i32 %17, ptr %10, align 4, !dbg !519
  %18 = call i32 @LL_RCC_HSE_IsReady() #4, !dbg !520
  %19 = icmp ne i32 %18, 1, !dbg !522
  br i1 %19, label %20, label %31, !dbg !523

20:                                               ; preds = %14
  %21 = load i32, ptr %6, align 4, !dbg !524
  %22 = icmp eq i32 %21, 1, !dbg !527
  br i1 %22, label %23, label %24, !dbg !528

23:                                               ; preds = %20
  call void @LL_RCC_HSE_EnableBypass() #4, !dbg !529
  br label %25, !dbg !531

24:                                               ; preds = %20
  call void @LL_RCC_HSE_DisableBypass() #4, !dbg !532
  br label %25

25:                                               ; preds = %24, %23
  call void @LL_RCC_HSE_Enable() #4, !dbg !534
  br label %26, !dbg !535

26:                                               ; preds = %29, %25
  %27 = call i32 @LL_RCC_HSE_IsReady() #4, !dbg !536
  %28 = icmp ne i32 %27, 1, !dbg !537
  br i1 %28, label %29, label %30, !dbg !535

29:                                               ; preds = %26
  br label %26, !dbg !535, !llvm.loop !538

30:                                               ; preds = %26
  br label %31, !dbg !540

31:                                               ; preds = %30, %14
  %32 = load ptr, ptr %7, align 4, !dbg !541
  %33 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %32, i32 0, i32 0, !dbg !542
  %34 = load i32, ptr %33, align 4, !dbg !542
  %35 = load ptr, ptr %7, align 4, !dbg !543
  %36 = getelementptr inbounds %struct.LL_UTILS_PLLInitTypeDef, ptr %35, i32 0, i32 1, !dbg !544
  %37 = load i32, ptr %36, align 4, !dbg !544
  call void @LL_RCC_PLL_ConfigDomain_SYS(i32 noundef 65536, i32 noundef %34, i32 noundef %37) #4, !dbg !545
  %38 = load i32, ptr %10, align 4, !dbg !546
  %39 = load ptr, ptr %8, align 4, !dbg !547
  %40 = call zeroext i8 @UTILS_EnablePLLAndSwitchSystem(i32 noundef %38, ptr noundef %39) #4, !dbg !548
  store i8 %40, ptr %9, align 1, !dbg !549
  br label %42, !dbg !550

41:                                               ; preds = %4
  store i8 1, ptr %9, align 1, !dbg !551
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i8, ptr %9, align 1, !dbg !553
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5, !dbg !554
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #5, !dbg !554
  ret i8 %43, !dbg !555
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_HSE_IsReady() #2 !dbg !556 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !557
  %2 = and i32 %1, 131072, !dbg !558
  %3 = icmp eq i32 %2, 131072, !dbg !559
  %4 = zext i1 %3 to i32, !dbg !559
  ret i32 %4, !dbg !560
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSE_EnableBypass() #2 !dbg !561 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !562
  %2 = or i32 %1, 262144, !dbg !562
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !562
  ret void, !dbg !563
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSE_DisableBypass() #2 !dbg !564 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !565
  %2 = and i32 %1, -262145, !dbg !565
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !565
  ret void, !dbg !566
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_HSE_Enable() #2 !dbg !567 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !568
  %2 = or i32 %1, 65536, !dbg !568
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !568
  ret void, !dbg !569
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_PLL_IsReady() #2 !dbg !570 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !571
  %2 = and i32 %1, 33554432, !dbg !572
  %3 = icmp eq i32 %2, 33554432, !dbg !573
  %4 = zext i1 %3 to i32, !dbg !573
  ret i32 %4, !dbg !574
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_GetAHBPrescaler() #2 !dbg !575 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !576
  %2 = and i32 %1, 240, !dbg !577
  ret i32 %2, !dbg !578
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_PLL_Enable() #2 !dbg !579 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !580
  %2 = or i32 %1, 16777216, !dbg !580
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !580
  ret void, !dbg !581
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetAHBPrescaler(i32 noundef %0) #2 !dbg !582 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !584, metadata !DIExpression()), !dbg !585
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !586
  %4 = and i32 %3, -241, !dbg !587
  %5 = load i32, ptr %2, align 4, !dbg !588
  %6 = or i32 %4, %5, !dbg !589
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !590
  ret void, !dbg !591
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetSysClkSource(i32 noundef %0) #2 !dbg !592 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !594, metadata !DIExpression()), !dbg !595
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !596
  %4 = and i32 %3, -4, !dbg !597
  %5 = load i32, ptr %2, align 4, !dbg !598
  %6 = or i32 %4, %5, !dbg !599
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !600
  ret void, !dbg !601
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @LL_RCC_GetSysClkSource() #2 !dbg !602 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !603
  %2 = and i32 %1, 12, !dbg !604
  ret i32 %2, !dbg !605
}

; Function Attrs: inlinehint nounwind optsize
define internal void @LL_RCC_SetAPB1Prescaler(i32 noundef %0) #2 !dbg !606 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !608, metadata !DIExpression()), !dbg !609
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !610
  %4 = and i32 %3, -1793, !dbg !611
  %5 = load i32, ptr %2, align 4, !dbg !612
  %6 = or i32 %4, %5, !dbg !613
  store volatile i32 %6, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !614
  ret void, !dbg !615
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
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
!62 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!63 = distinct !DISubprogram(name: "LL_Init1msTick", scope: !64, file: !64, line: 141, type: !65, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!64 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_ll_utils.c", directory: "/home/sri/zephyrproject")
!65 = !DISubroutineType(types: !66)
!66 = !{null, !17}
!67 = !{!68}
!68 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !63, file: !64, line: 141, type: !17)
!69 = !DILocation(line: 141, column: 30, scope: !63)
!70 = !DILocation(line: 144, column: 15, scope: !63)
!71 = !DILocation(line: 144, column: 3, scope: !63)
!72 = !DILocation(line: 145, column: 1, scope: !63)
!73 = distinct !DISubprogram(name: "LL_InitTick", scope: !74, file: !74, line: 219, type: !75, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!74 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_utils.h", directory: "/home/sri/zephyrproject")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !17, !17}
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !73, file: !74, line: 219, type: !17)
!79 = !DILocalVariable(name: "Ticks", arg: 2, scope: !73, file: !74, line: 219, type: !17)
!80 = !DILocation(line: 219, column: 43, scope: !73)
!81 = !DILocation(line: 219, column: 67, scope: !73)
!82 = !DILocation(line: 222, column: 71, scope: !73)
!83 = !DILocation(line: 222, column: 87, scope: !73)
!84 = !DILocation(line: 222, column: 85, scope: !73)
!85 = !DILocation(line: 222, column: 94, scope: !73)
!86 = !DILocation(line: 222, column: 57, scope: !73)
!87 = !DILocation(line: 223, column: 56, scope: !73)
!88 = !DILocation(line: 224, column: 57, scope: !73)
!89 = !DILocation(line: 226, column: 1, scope: !73)
!90 = distinct !DISubprogram(name: "LL_mDelay", scope: !64, file: !64, line: 157, type: !65, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!91 = !{!92, !93}
!92 = !DILocalVariable(name: "Delay", arg: 1, scope: !90, file: !64, line: 157, type: !17)
!93 = !DILocalVariable(name: "tmp", scope: !90, file: !64, line: 159, type: !16)
!94 = !DILocation(line: 157, column: 25, scope: !90)
!95 = !DILocation(line: 159, column: 3, scope: !90)
!96 = !DILocation(line: 159, column: 21, scope: !90)
!97 = !DILocation(line: 159, column: 76, scope: !90)
!98 = !DILocation(line: 161, column: 10, scope: !90)
!99 = !DILocation(line: 164, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !90, file: !64, line: 164, column: 7)
!101 = !DILocation(line: 164, column: 13, scope: !100)
!102 = !DILocation(line: 164, column: 7, scope: !90)
!103 = !DILocation(line: 166, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !64, line: 165, column: 3)
!105 = !DILocation(line: 167, column: 3, scope: !104)
!106 = !DILocation(line: 169, column: 3, scope: !90)
!107 = !DILocation(line: 169, column: 10, scope: !90)
!108 = !DILocation(line: 171, column: 59, scope: !109)
!109 = distinct !DILexicalBlock(scope: !110, file: !64, line: 171, column: 9)
!110 = distinct !DILexicalBlock(scope: !90, file: !64, line: 170, column: 3)
!111 = !DILocation(line: 171, column: 64, scope: !109)
!112 = !DILocation(line: 171, column: 80, scope: !109)
!113 = !DILocation(line: 171, column: 9, scope: !110)
!114 = !DILocation(line: 173, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !109, file: !64, line: 172, column: 5)
!116 = !DILocation(line: 174, column: 5, scope: !115)
!117 = distinct !{!117, !106, !118}
!118 = !DILocation(line: 175, column: 3, scope: !90)
!119 = !DILocation(line: 176, column: 1, scope: !90)
!120 = distinct !DISubprogram(name: "LL_SetSystemCoreClock", scope: !64, file: !64, line: 213, type: !65, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122}
!122 = !DILocalVariable(name: "HCLKFrequency", arg: 1, scope: !120, file: !64, line: 213, type: !17)
!123 = !DILocation(line: 213, column: 37, scope: !120)
!124 = !DILocation(line: 216, column: 21, scope: !120)
!125 = !DILocation(line: 216, column: 19, scope: !120)
!126 = !DILocation(line: 217, column: 1, scope: !120)
!127 = distinct !DISubprogram(name: "LL_SetFlashLatency", scope: !64, file: !64, line: 228, type: !128, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !17}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorStatus", file: !4, line: 184, baseType: !3)
!131 = !{!132, !133, !134, !135, !136}
!132 = !DILocalVariable(name: "Frequency", arg: 1, scope: !127, file: !64, line: 228, type: !17)
!133 = !DILocalVariable(name: "timeout", scope: !127, file: !64, line: 230, type: !17)
!134 = !DILocalVariable(name: "getlatency", scope: !127, file: !64, line: 231, type: !17)
!135 = !DILocalVariable(name: "latency", scope: !127, file: !64, line: 232, type: !17)
!136 = !DILocalVariable(name: "status", scope: !127, file: !64, line: 233, type: !130)
!137 = !DILocation(line: 228, column: 41, scope: !127)
!138 = !DILocation(line: 230, column: 3, scope: !127)
!139 = !DILocation(line: 230, column: 12, scope: !127)
!140 = !DILocation(line: 231, column: 3, scope: !127)
!141 = !DILocation(line: 231, column: 12, scope: !127)
!142 = !DILocation(line: 232, column: 3, scope: !127)
!143 = !DILocation(line: 232, column: 12, scope: !127)
!144 = !DILocation(line: 233, column: 3, scope: !127)
!145 = !DILocation(line: 233, column: 15, scope: !127)
!146 = !DILocation(line: 236, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !127, file: !64, line: 236, column: 7)
!148 = !DILocation(line: 236, column: 17, scope: !147)
!149 = !DILocation(line: 236, column: 7, scope: !127)
!150 = !DILocation(line: 238, column: 12, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !64, line: 237, column: 3)
!152 = !DILocation(line: 239, column: 3, scope: !151)
!153 = !DILocation(line: 242, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !64, line: 242, column: 9)
!155 = distinct !DILexicalBlock(scope: !147, file: !64, line: 241, column: 3)
!156 = !DILocation(line: 242, column: 19, scope: !154)
!157 = !DILocation(line: 242, column: 9, scope: !155)
!158 = !DILocation(line: 245, column: 15, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !64, line: 243, column: 5)
!160 = !DILocation(line: 246, column: 5, scope: !159)
!161 = !DILocation(line: 250, column: 15, scope: !162)
!162 = distinct !DILexicalBlock(scope: !154, file: !64, line: 248, column: 5)
!163 = !DILocation(line: 252, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !155, file: !64, line: 252, column: 9)
!165 = !DILocation(line: 252, column: 16, scope: !164)
!166 = !DILocation(line: 252, column: 9, scope: !155)
!167 = !DILocation(line: 254, column: 27, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !64, line: 253, column: 5)
!169 = !DILocation(line: 254, column: 7, scope: !168)
!170 = !DILocation(line: 258, column: 15, scope: !168)
!171 = !DILocation(line: 259, column: 7, scope: !168)
!172 = !DILocation(line: 262, column: 20, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !64, line: 260, column: 7)
!174 = !DILocation(line: 262, column: 18, scope: !173)
!175 = !DILocation(line: 263, column: 14, scope: !173)
!176 = !DILocation(line: 264, column: 7, scope: !173)
!177 = !DILocation(line: 264, column: 17, scope: !168)
!178 = !DILocation(line: 264, column: 31, scope: !168)
!179 = !DILocation(line: 264, column: 28, scope: !168)
!180 = !DILocation(line: 264, column: 40, scope: !168)
!181 = !DILocation(line: 264, column: 44, scope: !168)
!182 = !DILocation(line: 264, column: 52, scope: !168)
!183 = !DILocation(line: 0, scope: !168)
!184 = distinct !{!184, !171, !185}
!185 = !DILocation(line: 264, column: 56, scope: !168)
!186 = !DILocation(line: 266, column: 10, scope: !187)
!187 = distinct !DILexicalBlock(scope: !168, file: !64, line: 266, column: 10)
!188 = !DILocation(line: 266, column: 24, scope: !187)
!189 = !DILocation(line: 266, column: 21, scope: !187)
!190 = !DILocation(line: 266, column: 10, scope: !168)
!191 = !DILocation(line: 268, column: 16, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !64, line: 267, column: 7)
!193 = !DILocation(line: 269, column: 7, scope: !192)
!194 = !DILocation(line: 272, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !64, line: 271, column: 7)
!196 = !DILocation(line: 274, column: 5, scope: !168)
!197 = !DILocation(line: 277, column: 10, scope: !127)
!198 = !DILocation(line: 278, column: 1, scope: !127)
!199 = !DILocation(line: 277, column: 3, scope: !127)
!200 = distinct !DISubprogram(name: "LL_FLASH_SetLatency", scope: !201, file: !201, line: 1778, type: !65, scopeLine: 1779, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!201 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_system.h", directory: "/home/sri/zephyrproject")
!202 = !{!203}
!203 = !DILocalVariable(name: "Latency", arg: 1, scope: !200, file: !201, line: 1778, type: !17)
!204 = !DILocation(line: 1778, column: 51, scope: !200)
!205 = !DILocation(line: 1780, column: 156, scope: !200)
!206 = !DILocation(line: 1780, column: 163, scope: !200)
!207 = !DILocation(line: 1780, column: 190, scope: !200)
!208 = !DILocation(line: 1780, column: 187, scope: !200)
!209 = !DILocation(line: 1780, column: 80, scope: !200)
!210 = !DILocation(line: 1781, column: 1, scope: !200)
!211 = distinct !DISubprogram(name: "LL_FLASH_GetLatency", scope: !201, file: !201, line: 1790, type: !212, scopeLine: 1791, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!17}
!214 = !{}
!215 = !DILocation(line: 1792, column: 91, scope: !211)
!216 = !DILocation(line: 1792, column: 96, scope: !211)
!217 = !DILocation(line: 1792, column: 3, scope: !211)
!218 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSI", scope: !64, file: !64, line: 298, type: !219, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!219 = !DISubroutineType(types: !220)
!220 = !{!130, !221, !227}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "LL_UTILS_PLLInitTypeDef", file: !74, line: 111, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 90, size: 64, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMul", scope: !223, file: !74, line: 92, baseType: !17, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "PLLDiv", scope: !223, file: !74, line: 99, baseType: !17, size: 32, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "LL_UTILS_ClkInitTypeDef", file: !74, line: 129, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !74, line: 116, size: 64, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !229, file: !74, line: 118, baseType: !17, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !229, file: !74, line: 124, baseType: !17, size: 32, offset: 32)
!233 = !{!234, !235, !236, !237}
!234 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 1, scope: !218, file: !64, line: 298, type: !221)
!235 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !218, file: !64, line: 299, type: !227)
!236 = !DILocalVariable(name: "status", scope: !218, file: !64, line: 301, type: !130)
!237 = !DILocalVariable(name: "pllfreq", scope: !218, file: !64, line: 302, type: !17)
!238 = !DILocation(line: 298, column: 67, scope: !218)
!239 = !DILocation(line: 299, column: 67, scope: !218)
!240 = !DILocation(line: 301, column: 3, scope: !218)
!241 = !DILocation(line: 301, column: 15, scope: !218)
!242 = !DILocation(line: 302, column: 3, scope: !218)
!243 = !DILocation(line: 302, column: 12, scope: !218)
!244 = !DILocation(line: 305, column: 7, scope: !245)
!245 = distinct !DILexicalBlock(scope: !218, file: !64, line: 305, column: 7)
!246 = !DILocation(line: 305, column: 26, scope: !245)
!247 = !DILocation(line: 305, column: 7, scope: !218)
!248 = !DILocation(line: 315, column: 53, scope: !249)
!249 = distinct !DILexicalBlock(scope: !245, file: !64, line: 306, column: 3)
!250 = !DILocation(line: 315, column: 15, scope: !249)
!251 = !DILocation(line: 315, column: 13, scope: !249)
!252 = !DILocation(line: 318, column: 9, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !64, line: 318, column: 9)
!254 = !DILocation(line: 318, column: 30, scope: !253)
!255 = !DILocation(line: 318, column: 9, scope: !249)
!256 = !DILocation(line: 320, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !64, line: 319, column: 5)
!258 = !DILocation(line: 321, column: 7, scope: !257)
!259 = !DILocation(line: 321, column: 14, scope: !257)
!260 = !DILocation(line: 321, column: 35, scope: !257)
!261 = distinct !{!261, !258, !262}
!262 = !DILocation(line: 324, column: 7, scope: !257)
!263 = !DILocation(line: 325, column: 5, scope: !257)
!264 = !DILocation(line: 329, column: 48, scope: !249)
!265 = !DILocation(line: 329, column: 69, scope: !249)
!266 = !DILocation(line: 329, column: 77, scope: !249)
!267 = !DILocation(line: 329, column: 98, scope: !249)
!268 = !DILocation(line: 329, column: 5, scope: !249)
!269 = !DILocation(line: 335, column: 45, scope: !249)
!270 = !DILocation(line: 335, column: 54, scope: !249)
!271 = !DILocation(line: 335, column: 14, scope: !249)
!272 = !DILocation(line: 335, column: 12, scope: !249)
!273 = !DILocation(line: 336, column: 3, scope: !249)
!274 = !DILocation(line: 340, column: 12, scope: !275)
!275 = distinct !DILexicalBlock(scope: !245, file: !64, line: 338, column: 3)
!276 = !DILocation(line: 343, column: 10, scope: !218)
!277 = !DILocation(line: 344, column: 1, scope: !218)
!278 = !DILocation(line: 343, column: 3, scope: !218)
!279 = distinct !DISubprogram(name: "UTILS_PLL_IsBusy", scope: !64, file: !64, line: 530, type: !280, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!130}
!282 = !{!283}
!283 = !DILocalVariable(name: "status", scope: !279, file: !64, line: 532, type: !130)
!284 = !DILocation(line: 532, column: 3, scope: !279)
!285 = !DILocation(line: 532, column: 15, scope: !279)
!286 = !DILocation(line: 535, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !64, line: 535, column: 7)
!288 = !DILocation(line: 535, column: 28, scope: !287)
!289 = !DILocation(line: 535, column: 7, scope: !279)
!290 = !DILocation(line: 538, column: 12, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !64, line: 536, column: 3)
!292 = !DILocation(line: 539, column: 3, scope: !291)
!293 = !DILocation(line: 541, column: 10, scope: !279)
!294 = !DILocation(line: 542, column: 1, scope: !279)
!295 = !DILocation(line: 541, column: 3, scope: !279)
!296 = distinct !DISubprogram(name: "UTILS_GetPLLOutputFrequency", scope: !64, file: !64, line: 504, type: !297, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!297 = !DISubroutineType(types: !298)
!298 = !{!17, !17, !221}
!299 = !{!300, !301, !302}
!300 = !DILocalVariable(name: "PLL_InputFrequency", arg: 1, scope: !296, file: !64, line: 504, type: !17)
!301 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 2, scope: !296, file: !64, line: 504, type: !221)
!302 = !DILocalVariable(name: "pllfreq", scope: !296, file: !64, line: 506, type: !17)
!303 = !DILocation(line: 504, column: 54, scope: !296)
!304 = !DILocation(line: 504, column: 99, scope: !296)
!305 = !DILocation(line: 506, column: 3, scope: !296)
!306 = !DILocation(line: 506, column: 12, scope: !296)
!307 = !DILocation(line: 515, column: 16, scope: !296)
!308 = !DILocation(line: 515, column: 42, scope: !296)
!309 = !DILocation(line: 515, column: 63, scope: !296)
!310 = !DILocation(line: 515, column: 71, scope: !296)
!311 = !DILocation(line: 515, column: 90, scope: !296)
!312 = !DILocation(line: 515, column: 36, scope: !296)
!313 = !DILocation(line: 515, column: 104, scope: !296)
!314 = !DILocation(line: 515, column: 125, scope: !296)
!315 = !DILocation(line: 515, column: 133, scope: !296)
!316 = !DILocation(line: 515, column: 153, scope: !296)
!317 = !DILocation(line: 515, column: 171, scope: !296)
!318 = !DILocation(line: 515, column: 98, scope: !296)
!319 = !DILocation(line: 515, column: 11, scope: !296)
!320 = !DILocation(line: 521, column: 10, scope: !296)
!321 = !DILocation(line: 522, column: 1, scope: !296)
!322 = !DILocation(line: 521, column: 3, scope: !296)
!323 = distinct !DISubprogram(name: "LL_RCC_HSI_IsReady", scope: !324, file: !324, line: 766, type: !212, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!324 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_ll_rcc.h", directory: "/home/sri/zephyrproject")
!325 = !DILocation(line: 768, column: 79, scope: !323)
!326 = !DILocation(line: 768, column: 83, scope: !323)
!327 = !DILocation(line: 768, column: 104, scope: !323)
!328 = !DILocation(line: 768, column: 3, scope: !323)
!329 = distinct !DISubprogram(name: "LL_RCC_HSI_Enable", scope: !324, file: !324, line: 746, type: !330, scopeLine: 747, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!330 = !DISubroutineType(types: !331)
!331 = !{null}
!332 = !DILocation(line: 748, column: 75, scope: !329)
!333 = !DILocation(line: 749, column: 1, scope: !329)
!334 = distinct !DISubprogram(name: "LL_RCC_PLL_ConfigDomain_SYS", scope: !324, file: !324, line: 1578, type: !335, scopeLine: 1579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !17, !17, !17}
!337 = !{!338, !339, !340}
!338 = !DILocalVariable(name: "Source", arg: 1, scope: !334, file: !324, line: 1578, type: !17)
!339 = !DILocalVariable(name: "PLLMul", arg: 2, scope: !334, file: !324, line: 1578, type: !17)
!340 = !DILocalVariable(name: "PLLDiv", arg: 3, scope: !334, file: !324, line: 1578, type: !17)
!341 = !DILocation(line: 1578, column: 59, scope: !334)
!342 = !DILocation(line: 1578, column: 76, scope: !334)
!343 = !DILocation(line: 1578, column: 93, scope: !334)
!344 = !DILocation(line: 1580, column: 153, scope: !334)
!345 = !DILocation(line: 1580, column: 161, scope: !334)
!346 = !DILocation(line: 1580, column: 208, scope: !334)
!347 = !DILocation(line: 1580, column: 217, scope: !334)
!348 = !DILocation(line: 1580, column: 215, scope: !334)
!349 = !DILocation(line: 1580, column: 205, scope: !334)
!350 = !DILocation(line: 1580, column: 79, scope: !334)
!351 = !DILocation(line: 1581, column: 154, scope: !334)
!352 = !DILocation(line: 1581, column: 163, scope: !334)
!353 = !DILocation(line: 1581, column: 190, scope: !334)
!354 = !DILocation(line: 1581, column: 187, scope: !334)
!355 = !DILocation(line: 1581, column: 80, scope: !334)
!356 = !DILocation(line: 1582, column: 1, scope: !334)
!357 = distinct !DISubprogram(name: "UTILS_EnablePLLAndSwitchSystem", scope: !64, file: !64, line: 553, type: !358, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!130, !17, !227}
!360 = !{!361, !362, !363, !364}
!361 = !DILocalVariable(name: "SYSCLK_Frequency", arg: 1, scope: !357, file: !64, line: 553, type: !17)
!362 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !357, file: !64, line: 553, type: !227)
!363 = !DILocalVariable(name: "status", scope: !357, file: !64, line: 555, type: !130)
!364 = !DILocalVariable(name: "sysclk_frequency_current", scope: !357, file: !64, line: 556, type: !17)
!365 = !DILocation(line: 553, column: 60, scope: !357)
!366 = !DILocation(line: 553, column: 103, scope: !357)
!367 = !DILocation(line: 555, column: 3, scope: !357)
!368 = !DILocation(line: 555, column: 15, scope: !357)
!369 = !DILocation(line: 556, column: 3, scope: !357)
!370 = !DILocation(line: 556, column: 12, scope: !357)
!371 = !DILocation(line: 562, column: 31, scope: !357)
!372 = !DILocation(line: 562, column: 64, scope: !357)
!373 = !DILocation(line: 562, column: 89, scope: !357)
!374 = !DILocation(line: 562, column: 50, scope: !357)
!375 = !DILocation(line: 562, column: 47, scope: !357)
!376 = !DILocation(line: 562, column: 28, scope: !357)
!377 = !DILocation(line: 565, column: 7, scope: !378)
!378 = distinct !DILexicalBlock(scope: !357, file: !64, line: 565, column: 7)
!379 = !DILocation(line: 565, column: 34, scope: !378)
!380 = !DILocation(line: 565, column: 32, scope: !378)
!381 = !DILocation(line: 565, column: 7, scope: !357)
!382 = !DILocation(line: 568, column: 33, scope: !383)
!383 = distinct !DILexicalBlock(scope: !378, file: !64, line: 566, column: 3)
!384 = !DILocation(line: 568, column: 14, scope: !383)
!385 = !DILocation(line: 568, column: 12, scope: !383)
!386 = !DILocation(line: 569, column: 3, scope: !383)
!387 = !DILocation(line: 572, column: 7, scope: !388)
!388 = distinct !DILexicalBlock(scope: !357, file: !64, line: 572, column: 7)
!389 = !DILocation(line: 572, column: 14, scope: !388)
!390 = !DILocation(line: 572, column: 7, scope: !357)
!391 = !DILocation(line: 575, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !64, line: 573, column: 3)
!393 = !DILocation(line: 576, column: 5, scope: !392)
!394 = !DILocation(line: 576, column: 12, scope: !392)
!395 = !DILocation(line: 576, column: 33, scope: !392)
!396 = distinct !{!396, !393, !397}
!397 = !DILocation(line: 579, column: 5, scope: !392)
!398 = !DILocation(line: 582, column: 28, scope: !392)
!399 = !DILocation(line: 582, column: 49, scope: !392)
!400 = !DILocation(line: 582, column: 5, scope: !392)
!401 = !DILocation(line: 583, column: 5, scope: !392)
!402 = !DILocation(line: 584, column: 5, scope: !392)
!403 = !DILocation(line: 584, column: 12, scope: !392)
!404 = !DILocation(line: 584, column: 37, scope: !392)
!405 = distinct !{!405, !402, !406}
!406 = !DILocation(line: 587, column: 5, scope: !392)
!407 = !DILocation(line: 590, column: 29, scope: !392)
!408 = !DILocation(line: 590, column: 50, scope: !392)
!409 = !DILocation(line: 590, column: 5, scope: !392)
!410 = !DILocation(line: 591, column: 3, scope: !392)
!411 = !DILocation(line: 594, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !357, file: !64, line: 594, column: 7)
!413 = !DILocation(line: 594, column: 34, scope: !412)
!414 = !DILocation(line: 594, column: 32, scope: !412)
!415 = !DILocation(line: 594, column: 7, scope: !357)
!416 = !DILocation(line: 597, column: 33, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !64, line: 595, column: 3)
!418 = !DILocation(line: 597, column: 14, scope: !417)
!419 = !DILocation(line: 597, column: 12, scope: !417)
!420 = !DILocation(line: 598, column: 3, scope: !417)
!421 = !DILocation(line: 601, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !357, file: !64, line: 601, column: 7)
!423 = !DILocation(line: 601, column: 14, scope: !422)
!424 = !DILocation(line: 601, column: 7, scope: !357)
!425 = !DILocation(line: 603, column: 29, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !64, line: 602, column: 3)
!427 = !DILocation(line: 603, column: 66, scope: !426)
!428 = !DILocation(line: 603, column: 87, scope: !426)
!429 = !DILocation(line: 603, column: 102, scope: !426)
!430 = !DILocation(line: 603, column: 121, scope: !426)
!431 = !DILocation(line: 603, column: 50, scope: !426)
!432 = !DILocation(line: 603, column: 47, scope: !426)
!433 = !DILocation(line: 603, column: 5, scope: !426)
!434 = !DILocation(line: 604, column: 3, scope: !426)
!435 = !DILocation(line: 606, column: 10, scope: !357)
!436 = !DILocation(line: 607, column: 1, scope: !357)
!437 = !DILocation(line: 606, column: 3, scope: !357)
!438 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSI48", scope: !64, file: !64, line: 362, type: !219, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !439)
!439 = !{!440, !441, !442, !443}
!440 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 1, scope: !438, file: !64, line: 362, type: !221)
!441 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 2, scope: !438, file: !64, line: 363, type: !227)
!442 = !DILocalVariable(name: "status", scope: !438, file: !64, line: 365, type: !130)
!443 = !DILocalVariable(name: "pllfreq", scope: !438, file: !64, line: 366, type: !17)
!444 = !DILocation(line: 362, column: 69, scope: !438)
!445 = !DILocation(line: 363, column: 67, scope: !438)
!446 = !DILocation(line: 365, column: 3, scope: !438)
!447 = !DILocation(line: 365, column: 15, scope: !438)
!448 = !DILocation(line: 366, column: 3, scope: !438)
!449 = !DILocation(line: 366, column: 12, scope: !438)
!450 = !DILocation(line: 369, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !438, file: !64, line: 369, column: 7)
!452 = !DILocation(line: 369, column: 26, scope: !451)
!453 = !DILocation(line: 369, column: 7, scope: !438)
!454 = !DILocation(line: 375, column: 54, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !64, line: 370, column: 3)
!456 = !DILocation(line: 375, column: 15, scope: !455)
!457 = !DILocation(line: 375, column: 13, scope: !455)
!458 = !DILocation(line: 378, column: 9, scope: !459)
!459 = distinct !DILexicalBlock(scope: !455, file: !64, line: 378, column: 9)
!460 = !DILocation(line: 378, column: 32, scope: !459)
!461 = !DILocation(line: 378, column: 9, scope: !455)
!462 = !DILocation(line: 380, column: 7, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !64, line: 379, column: 5)
!464 = !DILocation(line: 381, column: 7, scope: !463)
!465 = !DILocation(line: 381, column: 14, scope: !463)
!466 = !DILocation(line: 381, column: 37, scope: !463)
!467 = distinct !{!467, !464, !468}
!468 = !DILocation(line: 384, column: 7, scope: !463)
!469 = !DILocation(line: 385, column: 5, scope: !463)
!470 = !DILocation(line: 388, column: 48, scope: !455)
!471 = !DILocation(line: 388, column: 69, scope: !455)
!472 = !DILocation(line: 388, column: 77, scope: !455)
!473 = !DILocation(line: 388, column: 98, scope: !455)
!474 = !DILocation(line: 388, column: 5, scope: !455)
!475 = !DILocation(line: 391, column: 45, scope: !455)
!476 = !DILocation(line: 391, column: 54, scope: !455)
!477 = !DILocation(line: 391, column: 14, scope: !455)
!478 = !DILocation(line: 391, column: 12, scope: !455)
!479 = !DILocation(line: 392, column: 3, scope: !455)
!480 = !DILocation(line: 396, column: 12, scope: !481)
!481 = distinct !DILexicalBlock(scope: !451, file: !64, line: 394, column: 3)
!482 = !DILocation(line: 399, column: 10, scope: !438)
!483 = !DILocation(line: 400, column: 1, scope: !438)
!484 = !DILocation(line: 399, column: 3, scope: !438)
!485 = distinct !DISubprogram(name: "LL_RCC_HSI48_IsReady", scope: !324, file: !324, line: 841, type: !212, scopeLine: 842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!486 = !DILocation(line: 843, column: 79, scope: !485)
!487 = !DILocation(line: 843, column: 84, scope: !485)
!488 = !DILocation(line: 843, column: 106, scope: !485)
!489 = !DILocation(line: 843, column: 3, scope: !485)
!490 = distinct !DISubprogram(name: "LL_RCC_HSI48_Enable", scope: !324, file: !324, line: 821, type: !330, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!491 = !DILocation(line: 823, column: 76, scope: !490)
!492 = !DILocation(line: 824, column: 1, scope: !490)
!493 = distinct !DISubprogram(name: "LL_PLL_ConfigSystemClock_HSE", scope: !64, file: !64, line: 423, type: !494, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!130, !17, !17, !221, !227}
!496 = !{!497, !498, !499, !500, !501, !502}
!497 = !DILocalVariable(name: "HSEFrequency", arg: 1, scope: !493, file: !64, line: 423, type: !17)
!498 = !DILocalVariable(name: "HSEBypass", arg: 2, scope: !493, file: !64, line: 423, type: !17)
!499 = !DILocalVariable(name: "UTILS_PLLInitStruct", arg: 3, scope: !493, file: !64, line: 424, type: !221)
!500 = !DILocalVariable(name: "UTILS_ClkInitStruct", arg: 4, scope: !493, file: !64, line: 424, type: !227)
!501 = !DILocalVariable(name: "status", scope: !493, file: !64, line: 426, type: !130)
!502 = !DILocalVariable(name: "pllfreq", scope: !493, file: !64, line: 427, type: !17)
!503 = !DILocation(line: 423, column: 51, scope: !493)
!504 = !DILocation(line: 423, column: 74, scope: !493)
!505 = !DILocation(line: 424, column: 67, scope: !493)
!506 = !DILocation(line: 424, column: 113, scope: !493)
!507 = !DILocation(line: 426, column: 3, scope: !493)
!508 = !DILocation(line: 426, column: 15, scope: !493)
!509 = !DILocation(line: 427, column: 3, scope: !493)
!510 = !DILocation(line: 427, column: 12, scope: !493)
!511 = !DILocation(line: 434, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !493, file: !64, line: 434, column: 7)
!513 = !DILocation(line: 434, column: 26, scope: !512)
!514 = !DILocation(line: 434, column: 7, scope: !493)
!515 = !DILocation(line: 444, column: 43, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !64, line: 435, column: 3)
!517 = !DILocation(line: 444, column: 57, scope: !516)
!518 = !DILocation(line: 444, column: 15, scope: !516)
!519 = !DILocation(line: 444, column: 13, scope: !516)
!520 = !DILocation(line: 447, column: 9, scope: !521)
!521 = distinct !DILexicalBlock(scope: !516, file: !64, line: 447, column: 9)
!522 = !DILocation(line: 447, column: 30, scope: !521)
!523 = !DILocation(line: 447, column: 9, scope: !516)
!524 = !DILocation(line: 450, column: 11, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !64, line: 450, column: 11)
!526 = distinct !DILexicalBlock(scope: !521, file: !64, line: 448, column: 5)
!527 = !DILocation(line: 450, column: 21, scope: !525)
!528 = !DILocation(line: 450, column: 11, scope: !526)
!529 = !DILocation(line: 452, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !64, line: 451, column: 7)
!531 = !DILocation(line: 453, column: 7, scope: !530)
!532 = !DILocation(line: 456, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !525, file: !64, line: 455, column: 7)
!534 = !DILocation(line: 460, column: 7, scope: !526)
!535 = !DILocation(line: 461, column: 7, scope: !526)
!536 = !DILocation(line: 461, column: 14, scope: !526)
!537 = !DILocation(line: 461, column: 35, scope: !526)
!538 = distinct !{!538, !535, !539}
!539 = !DILocation(line: 464, column: 7, scope: !526)
!540 = !DILocation(line: 465, column: 5, scope: !526)
!541 = !DILocation(line: 469, column: 50, scope: !516)
!542 = !DILocation(line: 469, column: 71, scope: !516)
!543 = !DILocation(line: 469, column: 79, scope: !516)
!544 = !DILocation(line: 469, column: 100, scope: !516)
!545 = !DILocation(line: 469, column: 7, scope: !516)
!546 = !DILocation(line: 475, column: 45, scope: !516)
!547 = !DILocation(line: 475, column: 54, scope: !516)
!548 = !DILocation(line: 475, column: 14, scope: !516)
!549 = !DILocation(line: 475, column: 12, scope: !516)
!550 = !DILocation(line: 476, column: 3, scope: !516)
!551 = !DILocation(line: 480, column: 12, scope: !552)
!552 = distinct !DILexicalBlock(scope: !512, file: !64, line: 478, column: 3)
!553 = !DILocation(line: 483, column: 10, scope: !493)
!554 = !DILocation(line: 484, column: 1, scope: !493)
!555 = !DILocation(line: 483, column: 3, scope: !493)
!556 = distinct !DISubprogram(name: "LL_RCC_HSE_IsReady", scope: !324, file: !324, line: 728, type: !212, scopeLine: 729, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!557 = !DILocation(line: 730, column: 79, scope: !556)
!558 = !DILocation(line: 730, column: 83, scope: !556)
!559 = !DILocation(line: 730, column: 105, scope: !556)
!560 = !DILocation(line: 730, column: 3, scope: !556)
!561 = distinct !DISubprogram(name: "LL_RCC_HSE_EnableBypass", scope: !324, file: !324, line: 688, type: !330, scopeLine: 689, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!562 = !DILocation(line: 690, column: 75, scope: !561)
!563 = !DILocation(line: 691, column: 1, scope: !561)
!564 = distinct !DISubprogram(name: "LL_RCC_HSE_DisableBypass", scope: !324, file: !324, line: 698, type: !330, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!565 = !DILocation(line: 700, column: 75, scope: !564)
!566 = !DILocation(line: 701, column: 1, scope: !564)
!567 = distinct !DISubprogram(name: "LL_RCC_HSE_Enable", scope: !324, file: !324, line: 708, type: !330, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!568 = !DILocation(line: 710, column: 75, scope: !567)
!569 = !DILocation(line: 711, column: 1, scope: !567)
!570 = distinct !DISubprogram(name: "LL_RCC_PLL_IsReady", scope: !324, file: !324, line: 1526, type: !212, scopeLine: 1527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!571 = !DILocation(line: 1528, column: 79, scope: !570)
!572 = !DILocation(line: 1528, column: 83, scope: !570)
!573 = !DILocation(line: 1528, column: 105, scope: !570)
!574 = !DILocation(line: 1528, column: 3, scope: !570)
!575 = distinct !DISubprogram(name: "LL_RCC_GetAHBPrescaler", scope: !324, file: !324, line: 1169, type: !212, scopeLine: 1170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!576 = !DILocation(line: 1171, column: 89, scope: !575)
!577 = !DILocation(line: 1171, column: 95, scope: !575)
!578 = !DILocation(line: 1171, column: 3, scope: !575)
!579 = distinct !DISubprogram(name: "LL_RCC_PLL_Enable", scope: !324, file: !324, line: 1505, type: !330, scopeLine: 1506, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!580 = !DILocation(line: 1507, column: 75, scope: !579)
!581 = !DILocation(line: 1508, column: 1, scope: !579)
!582 = distinct !DISubprogram(name: "LL_RCC_SetAHBPrescaler", scope: !324, file: !324, line: 1134, type: !65, scopeLine: 1135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !583)
!583 = !{!584}
!584 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !582, file: !324, line: 1134, type: !17)
!585 = !DILocation(line: 1134, column: 54, scope: !582)
!586 = !DILocation(line: 1136, column: 153, scope: !582)
!587 = !DILocation(line: 1136, column: 161, scope: !582)
!588 = !DILocation(line: 1136, column: 188, scope: !582)
!589 = !DILocation(line: 1136, column: 185, scope: !582)
!590 = !DILocation(line: 1136, column: 79, scope: !582)
!591 = !DILocation(line: 1137, column: 1, scope: !582)
!592 = distinct !DISubprogram(name: "LL_RCC_SetSysClkSource", scope: !324, file: !324, line: 1098, type: !65, scopeLine: 1099, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !593)
!593 = !{!594}
!594 = !DILocalVariable(name: "Source", arg: 1, scope: !592, file: !324, line: 1098, type: !17)
!595 = !DILocation(line: 1098, column: 54, scope: !592)
!596 = !DILocation(line: 1100, column: 153, scope: !592)
!597 = !DILocation(line: 1100, column: 161, scope: !592)
!598 = !DILocation(line: 1100, column: 188, scope: !592)
!599 = !DILocation(line: 1100, column: 185, scope: !592)
!600 = !DILocation(line: 1100, column: 79, scope: !592)
!601 = !DILocation(line: 1101, column: 1, scope: !592)
!602 = distinct !DISubprogram(name: "LL_RCC_GetSysClkSource", scope: !324, file: !324, line: 1114, type: !212, scopeLine: 1115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!603 = !DILocation(line: 1116, column: 89, scope: !602)
!604 = !DILocation(line: 1116, column: 95, scope: !602)
!605 = !DILocation(line: 1116, column: 3, scope: !602)
!606 = distinct !DISubprogram(name: "LL_RCC_SetAPB1Prescaler", scope: !324, file: !324, line: 1150, type: !65, scopeLine: 1151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !607)
!607 = !{!608}
!608 = !DILocalVariable(name: "Prescaler", arg: 1, scope: !606, file: !324, line: 1150, type: !17)
!609 = !DILocation(line: 1150, column: 55, scope: !606)
!610 = !DILocation(line: 1152, column: 153, scope: !606)
!611 = !DILocation(line: 1152, column: 161, scope: !606)
!612 = !DILocation(line: 1152, column: 188, scope: !606)
!613 = !DILocation(line: 1152, column: 185, scope: !606)
!614 = !DILocation(line: 1152, column: 79, scope: !606)
!615 = !DILocation(line: 1153, column: 1, scope: !606)
