; ModuleID = '../bc_files/stm32f0xx_hal_rcc.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32, i32 }
%struct.RCC_ClkInitTypeDef = type { i32, i32, i32, i32 }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }

@SystemCoreClock = external global i32, align 4
@uwTickPrio = external global i32, align 4
@AHBPrescTable = external constant [16 x i8], align 1
@HAL_RCC_GetSysClockFreq.aPLLMULFactorTable = internal constant [16 x i8] c"\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10", align 1, !dbg !0
@HAL_RCC_GetSysClockFreq.aPredivFactorTable = internal constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 1, !dbg !91
@APBPrescTable = external constant [8 x i8], align 1

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_RCC_DeInit() #0 !dbg !107 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !111, metadata !DIExpression()), !dbg !112
  %3 = call i32 @HAL_GetTick(), !dbg !113
  store i32 %3, ptr %2, align 4, !dbg !114
  %4 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !115
  %5 = or i32 %4, 129, !dbg !115
  store volatile i32 %5, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !115
  br label %6, !dbg !116

6:                                                ; preds = %16, %0
  %7 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !117
  %8 = and i32 %7, 2, !dbg !118
  %9 = icmp eq i32 %8, 0, !dbg !119
  br i1 %9, label %10, label %17, !dbg !116

10:                                               ; preds = %6
  %11 = call i32 @HAL_GetTick(), !dbg !120
  %12 = load i32, ptr %2, align 4, !dbg !123
  %13 = sub i32 %11, %12, !dbg !124
  %14 = icmp ugt i32 %13, 2, !dbg !125
  br i1 %14, label %15, label %16, !dbg !126

15:                                               ; preds = %10
  store i8 3, ptr %1, align 1, !dbg !127
  br label %57, !dbg !127

16:                                               ; preds = %10
  br label %6, !dbg !116, !llvm.loop !129

17:                                               ; preds = %6
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !131
  %19 = and i32 %18, -251660276, !dbg !131
  store volatile i32 %19, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !131
  br label %20, !dbg !132

20:                                               ; preds = %30, %17
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !133
  %22 = and i32 %21, 12, !dbg !134
  %23 = icmp ne i32 %22, 0, !dbg !135
  br i1 %23, label %24, label %31, !dbg !132

24:                                               ; preds = %20
  %25 = call i32 @HAL_GetTick(), !dbg !136
  %26 = load i32, ptr %2, align 4, !dbg !139
  %27 = sub i32 %25, %26, !dbg !140
  %28 = icmp ugt i32 %27, 5000, !dbg !141
  br i1 %28, label %29, label %30, !dbg !142

29:                                               ; preds = %24
  store i8 3, ptr %1, align 1, !dbg !143
  br label %57, !dbg !143

30:                                               ; preds = %24
  br label %20, !dbg !132, !llvm.loop !145

31:                                               ; preds = %20
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !147
  %32 = load i32, ptr @uwTickPrio, align 4, !dbg !148
  %33 = call zeroext i8 @HAL_InitTick(i32 noundef %32), !dbg !150
  %34 = zext i8 %33 to i32, !dbg !150
  %35 = icmp ne i32 %34, 0, !dbg !151
  br i1 %35, label %36, label %37, !dbg !152

36:                                               ; preds = %31
  store i8 1, ptr %1, align 1, !dbg !153
  br label %57, !dbg !153

37:                                               ; preds = %31
  %38 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !155
  %39 = and i32 %38, -17367041, !dbg !155
  store volatile i32 %39, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !155
  %40 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !156
  %41 = and i32 %40, -262145, !dbg !156
  store volatile i32 %41, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !156
  %42 = call i32 @HAL_GetTick(), !dbg !157
  store i32 %42, ptr %2, align 4, !dbg !158
  br label %43, !dbg !159

43:                                               ; preds = %53, %37
  %44 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !160
  %45 = and i32 %44, 33554432, !dbg !161
  %46 = icmp ne i32 %45, 0, !dbg !162
  br i1 %46, label %47, label %54, !dbg !159

47:                                               ; preds = %43
  %48 = call i32 @HAL_GetTick(), !dbg !163
  %49 = load i32, ptr %2, align 4, !dbg !166
  %50 = sub i32 %48, %49, !dbg !167
  %51 = icmp ugt i32 %50, 2, !dbg !168
  br i1 %51, label %52, label %53, !dbg !169

52:                                               ; preds = %47
  store i8 3, ptr %1, align 1, !dbg !170
  br label %57, !dbg !170

53:                                               ; preds = %47
  br label %43, !dbg !159, !llvm.loop !172

54:                                               ; preds = %43
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !174
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !175
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !176
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 2), align 4, !dbg !177
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !178
  %56 = or i32 %55, 16777216, !dbg !178
  store volatile i32 %56, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !178
  store i8 0, ptr %1, align 1, !dbg !179
  br label %57, !dbg !179

57:                                               ; preds = %54, %52, %36, %29, %15
  %58 = load i8, ptr %1, align 1, !dbg !180
  ret i8 %58, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @HAL_GetTick() #2

declare zeroext i8 @HAL_InitTick(i32 noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_RCC_OscConfig(ptr noundef %0) #0 !dbg !181 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata ptr %4, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata ptr %5, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata ptr %6, metadata !212, metadata !DIExpression()), !dbg !213
  %9 = load ptr, ptr %3, align 4, !dbg !214
  %10 = icmp eq ptr %9, null, !dbg !216
  br i1 %10, label %11, label %12, !dbg !217

11:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !218
  br label %618, !dbg !218

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4, !dbg !220
  %14 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %13, i32 0, i32 0, !dbg !222
  %15 = load i32, ptr %14, align 4, !dbg !222
  %16 = and i32 %15, 1, !dbg !223
  %17 = icmp eq i32 %16, 1, !dbg !224
  br i1 %17, label %18, label %113, !dbg !225

18:                                               ; preds = %12
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !226
  %20 = and i32 %19, 12, !dbg !229
  %21 = icmp eq i32 %20, 4, !dbg !230
  br i1 %21, label %30, label %22, !dbg !231

22:                                               ; preds = %18
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !232
  %24 = and i32 %23, 12, !dbg !233
  %25 = icmp eq i32 %24, 8, !dbg !234
  br i1 %25, label %26, label %41, !dbg !235

26:                                               ; preds = %22
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !236
  %28 = and i32 %27, 98304, !dbg !237
  %29 = icmp eq i32 %28, 65536, !dbg !238
  br i1 %29, label %30, label %41, !dbg !239

30:                                               ; preds = %26, %18
  %31 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !240
  %32 = and i32 %31, 131072, !dbg !243
  %33 = icmp ne i32 %32, 0, !dbg !244
  br i1 %33, label %34, label %40, !dbg !245

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4, !dbg !246
  %36 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %35, i32 0, i32 1, !dbg !247
  %37 = load i32, ptr %36, align 4, !dbg !247
  %38 = icmp eq i32 %37, 0, !dbg !248
  br i1 %38, label %39, label %40, !dbg !249

39:                                               ; preds = %34
  store i8 1, ptr %2, align 1, !dbg !250
  br label %618, !dbg !250

40:                                               ; preds = %34, %30
  br label %112, !dbg !252

41:                                               ; preds = %26, %22
  br label %42, !dbg !253

42:                                               ; preds = %41
  %43 = load ptr, ptr %3, align 4, !dbg !255
  %44 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %43, i32 0, i32 1, !dbg !258
  %45 = load i32, ptr %44, align 4, !dbg !258
  %46 = icmp eq i32 %45, 1, !dbg !259
  br i1 %46, label %47, label %50, !dbg !260

47:                                               ; preds = %42
  %48 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !261
  %49 = or i32 %48, 65536, !dbg !261
  store volatile i32 %49, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !261
  br label %77, !dbg !263

50:                                               ; preds = %42
  %51 = load ptr, ptr %3, align 4, !dbg !264
  %52 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %51, i32 0, i32 1, !dbg !266
  %53 = load i32, ptr %52, align 4, !dbg !266
  %54 = icmp eq i32 %53, 0, !dbg !267
  br i1 %54, label %55, label %60, !dbg !268

55:                                               ; preds = %50
  %56 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !269
  %57 = and i32 %56, -65537, !dbg !269
  store volatile i32 %57, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !269
  %58 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !271
  %59 = and i32 %58, -262145, !dbg !271
  store volatile i32 %59, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !271
  br label %76, !dbg !272

60:                                               ; preds = %50
  %61 = load ptr, ptr %3, align 4, !dbg !273
  %62 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %61, i32 0, i32 1, !dbg !275
  %63 = load i32, ptr %62, align 4, !dbg !275
  %64 = icmp eq i32 %63, 5, !dbg !276
  br i1 %64, label %65, label %70, !dbg !277

65:                                               ; preds = %60
  %66 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !278
  %67 = or i32 %66, 262144, !dbg !278
  store volatile i32 %67, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !278
  %68 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !280
  %69 = or i32 %68, 65536, !dbg !280
  store volatile i32 %69, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !280
  br label %75, !dbg !281

70:                                               ; preds = %60
  %71 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !282
  %72 = and i32 %71, -65537, !dbg !282
  store volatile i32 %72, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !282
  %73 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !284
  %74 = and i32 %73, -262145, !dbg !284
  store volatile i32 %74, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !284
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %55
  br label %77

77:                                               ; preds = %76, %47
  br label %78, !dbg !285

78:                                               ; preds = %77
  %79 = load ptr, ptr %3, align 4, !dbg !286
  %80 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %79, i32 0, i32 1, !dbg !288
  %81 = load i32, ptr %80, align 4, !dbg !288
  %82 = icmp ne i32 %81, 0, !dbg !289
  br i1 %82, label %83, label %97, !dbg !290

83:                                               ; preds = %78
  %84 = call i32 @HAL_GetTick(), !dbg !291
  store i32 %84, ptr %4, align 4, !dbg !293
  br label %85, !dbg !294

85:                                               ; preds = %95, %83
  %86 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !295
  %87 = and i32 %86, 131072, !dbg !296
  %88 = icmp eq i32 %87, 0, !dbg !297
  br i1 %88, label %89, label %96, !dbg !294

89:                                               ; preds = %85
  %90 = call i32 @HAL_GetTick(), !dbg !298
  %91 = load i32, ptr %4, align 4, !dbg !301
  %92 = sub i32 %90, %91, !dbg !302
  %93 = icmp ugt i32 %92, 100, !dbg !303
  br i1 %93, label %94, label %95, !dbg !304

94:                                               ; preds = %89
  store i8 3, ptr %2, align 1, !dbg !305
  br label %618, !dbg !305

95:                                               ; preds = %89
  br label %85, !dbg !294, !llvm.loop !307

96:                                               ; preds = %85
  br label %111, !dbg !309

97:                                               ; preds = %78
  %98 = call i32 @HAL_GetTick(), !dbg !310
  store i32 %98, ptr %4, align 4, !dbg !312
  br label %99, !dbg !313

99:                                               ; preds = %109, %97
  %100 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !314
  %101 = and i32 %100, 131072, !dbg !315
  %102 = icmp ne i32 %101, 0, !dbg !316
  br i1 %102, label %103, label %110, !dbg !313

103:                                              ; preds = %99
  %104 = call i32 @HAL_GetTick(), !dbg !317
  %105 = load i32, ptr %4, align 4, !dbg !320
  %106 = sub i32 %104, %105, !dbg !321
  %107 = icmp ugt i32 %106, 100, !dbg !322
  br i1 %107, label %108, label %109, !dbg !323

108:                                              ; preds = %103
  store i8 3, ptr %2, align 1, !dbg !324
  br label %618, !dbg !324

109:                                              ; preds = %103
  br label %99, !dbg !313, !llvm.loop !326

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %40
  br label %113, !dbg !328

113:                                              ; preds = %112, %12
  %114 = load ptr, ptr %3, align 4, !dbg !329
  %115 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %114, i32 0, i32 0, !dbg !331
  %116 = load i32, ptr %115, align 4, !dbg !331
  %117 = and i32 %116, 2, !dbg !332
  %118 = icmp eq i32 %117, 2, !dbg !333
  br i1 %118, label %119, label %196, !dbg !334

119:                                              ; preds = %113
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !335
  %121 = and i32 %120, 12, !dbg !338
  %122 = icmp eq i32 %121, 0, !dbg !339
  br i1 %122, label %131, label %123, !dbg !340

123:                                              ; preds = %119
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !341
  %125 = and i32 %124, 12, !dbg !342
  %126 = icmp eq i32 %125, 8, !dbg !343
  br i1 %126, label %127, label %150, !dbg !344

127:                                              ; preds = %123
  %128 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !345
  %129 = and i32 %128, 98304, !dbg !346
  %130 = icmp eq i32 %129, 32768, !dbg !347
  br i1 %130, label %131, label %150, !dbg !348

131:                                              ; preds = %127, %119
  %132 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !349
  %133 = and i32 %132, 2, !dbg !352
  %134 = icmp ne i32 %133, 0, !dbg !353
  br i1 %134, label %135, label %141, !dbg !354

135:                                              ; preds = %131
  %136 = load ptr, ptr %3, align 4, !dbg !355
  %137 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %136, i32 0, i32 3, !dbg !356
  %138 = load i32, ptr %137, align 4, !dbg !356
  %139 = icmp ne i32 %138, 1, !dbg !357
  br i1 %139, label %140, label %141, !dbg !358

140:                                              ; preds = %135
  store i8 1, ptr %2, align 1, !dbg !359
  br label %618, !dbg !359

141:                                              ; preds = %135, %131
  %142 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !361
  %143 = and i32 %142, -249, !dbg !363
  %144 = load ptr, ptr %3, align 4, !dbg !364
  %145 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %144, i32 0, i32 4, !dbg !365
  %146 = load i32, ptr %145, align 4, !dbg !365
  %147 = shl i32 %146, 3, !dbg !366
  %148 = or i32 %143, %147, !dbg !367
  store volatile i32 %148, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !368
  br label %149

149:                                              ; preds = %141
  br label %195, !dbg !369

150:                                              ; preds = %127, %123
  %151 = load ptr, ptr %3, align 4, !dbg !370
  %152 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %151, i32 0, i32 3, !dbg !373
  %153 = load i32, ptr %152, align 4, !dbg !373
  %154 = icmp ne i32 %153, 0, !dbg !374
  br i1 %154, label %155, label %178, !dbg !375

155:                                              ; preds = %150
  %156 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !376
  %157 = or i32 %156, 1, !dbg !376
  store volatile i32 %157, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !376
  %158 = call i32 @HAL_GetTick(), !dbg !378
  store i32 %158, ptr %4, align 4, !dbg !379
  br label %159, !dbg !380

159:                                              ; preds = %169, %155
  %160 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !381
  %161 = and i32 %160, 2, !dbg !382
  %162 = icmp eq i32 %161, 0, !dbg !383
  br i1 %162, label %163, label %170, !dbg !380

163:                                              ; preds = %159
  %164 = call i32 @HAL_GetTick(), !dbg !384
  %165 = load i32, ptr %4, align 4, !dbg !387
  %166 = sub i32 %164, %165, !dbg !388
  %167 = icmp ugt i32 %166, 2, !dbg !389
  br i1 %167, label %168, label %169, !dbg !390

168:                                              ; preds = %163
  store i8 3, ptr %2, align 1, !dbg !391
  br label %618, !dbg !391

169:                                              ; preds = %163
  br label %159, !dbg !380, !llvm.loop !393

170:                                              ; preds = %159
  %171 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !395
  %172 = and i32 %171, -249, !dbg !396
  %173 = load ptr, ptr %3, align 4, !dbg !397
  %174 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %173, i32 0, i32 4, !dbg !398
  %175 = load i32, ptr %174, align 4, !dbg !398
  %176 = shl i32 %175, 3, !dbg !399
  %177 = or i32 %172, %176, !dbg !400
  store volatile i32 %177, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !401
  br label %194, !dbg !402

178:                                              ; preds = %150
  %179 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !403
  %180 = and i32 %179, -2, !dbg !403
  store volatile i32 %180, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !403
  %181 = call i32 @HAL_GetTick(), !dbg !405
  store i32 %181, ptr %4, align 4, !dbg !406
  br label %182, !dbg !407

182:                                              ; preds = %192, %178
  %183 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !408
  %184 = and i32 %183, 2, !dbg !409
  %185 = icmp ne i32 %184, 0, !dbg !410
  br i1 %185, label %186, label %193, !dbg !407

186:                                              ; preds = %182
  %187 = call i32 @HAL_GetTick(), !dbg !411
  %188 = load i32, ptr %4, align 4, !dbg !414
  %189 = sub i32 %187, %188, !dbg !415
  %190 = icmp ugt i32 %189, 2, !dbg !416
  br i1 %190, label %191, label %192, !dbg !417

191:                                              ; preds = %186
  store i8 3, ptr %2, align 1, !dbg !418
  br label %618, !dbg !418

192:                                              ; preds = %186
  br label %182, !dbg !407, !llvm.loop !420

193:                                              ; preds = %182
  br label %194

194:                                              ; preds = %193, %170
  br label %195

195:                                              ; preds = %194, %149
  br label %196, !dbg !422

196:                                              ; preds = %195, %113
  %197 = load ptr, ptr %3, align 4, !dbg !423
  %198 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %197, i32 0, i32 0, !dbg !425
  %199 = load i32, ptr %198, align 4, !dbg !425
  %200 = and i32 %199, 8, !dbg !426
  %201 = icmp eq i32 %200, 8, !dbg !427
  br i1 %201, label %202, label %240, !dbg !428

202:                                              ; preds = %196
  %203 = load ptr, ptr %3, align 4, !dbg !429
  %204 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %203, i32 0, i32 7, !dbg !432
  %205 = load i32, ptr %204, align 4, !dbg !432
  %206 = icmp ne i32 %205, 0, !dbg !433
  br i1 %206, label %207, label %223, !dbg !434

207:                                              ; preds = %202
  %208 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !435
  %209 = or i32 %208, 1, !dbg !435
  store volatile i32 %209, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !435
  %210 = call i32 @HAL_GetTick(), !dbg !437
  store i32 %210, ptr %4, align 4, !dbg !438
  br label %211, !dbg !439

211:                                              ; preds = %221, %207
  %212 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !440
  %213 = and i32 %212, 2, !dbg !441
  %214 = icmp eq i32 %213, 0, !dbg !442
  br i1 %214, label %215, label %222, !dbg !439

215:                                              ; preds = %211
  %216 = call i32 @HAL_GetTick(), !dbg !443
  %217 = load i32, ptr %4, align 4, !dbg !446
  %218 = sub i32 %216, %217, !dbg !447
  %219 = icmp ugt i32 %218, 2, !dbg !448
  br i1 %219, label %220, label %221, !dbg !449

220:                                              ; preds = %215
  store i8 3, ptr %2, align 1, !dbg !450
  br label %618, !dbg !450

221:                                              ; preds = %215
  br label %211, !dbg !439, !llvm.loop !452

222:                                              ; preds = %211
  br label %239, !dbg !454

223:                                              ; preds = %202
  %224 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !455
  %225 = and i32 %224, -2, !dbg !455
  store volatile i32 %225, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !455
  %226 = call i32 @HAL_GetTick(), !dbg !457
  store i32 %226, ptr %4, align 4, !dbg !458
  br label %227, !dbg !459

227:                                              ; preds = %237, %223
  %228 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !460
  %229 = and i32 %228, 2, !dbg !461
  %230 = icmp ne i32 %229, 0, !dbg !462
  br i1 %230, label %231, label %238, !dbg !459

231:                                              ; preds = %227
  %232 = call i32 @HAL_GetTick(), !dbg !463
  %233 = load i32, ptr %4, align 4, !dbg !466
  %234 = sub i32 %232, %233, !dbg !467
  %235 = icmp ugt i32 %234, 2, !dbg !468
  br i1 %235, label %236, label %237, !dbg !469

236:                                              ; preds = %231
  store i8 3, ptr %2, align 1, !dbg !470
  br label %618, !dbg !470

237:                                              ; preds = %231
  br label %227, !dbg !459, !llvm.loop !472

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238, %222
  br label %240, !dbg !474

240:                                              ; preds = %239, %196
  %241 = load ptr, ptr %3, align 4, !dbg !475
  %242 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %241, i32 0, i32 0, !dbg !477
  %243 = load i32, ptr %242, align 4, !dbg !477
  %244 = and i32 %243, 4, !dbg !478
  %245 = icmp eq i32 %244, 4, !dbg !479
  br i1 %245, label %246, label %356, !dbg !480

246:                                              ; preds = %240
  call void @llvm.dbg.declare(metadata ptr %7, metadata !481, metadata !DIExpression()), !dbg !484
  store i8 0, ptr %7, align 1, !dbg !484
  %247 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !485
  %248 = and i32 %247, 268435456, !dbg !487
  %249 = icmp eq i32 %248, 0, !dbg !488
  br i1 %249, label %250, label %258, !dbg !489

250:                                              ; preds = %246
  br label %251, !dbg !490

251:                                              ; preds = %250
  call void @llvm.dbg.declare(metadata ptr %8, metadata !492, metadata !DIExpression()), !dbg !494
  %252 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !495
  %253 = or i32 %252, 268435456, !dbg !495
  store volatile i32 %253, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !495
  %254 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !496
  %255 = and i32 %254, 268435456, !dbg !497
  store volatile i32 %255, ptr %8, align 4, !dbg !498
  %256 = load volatile i32, ptr %8, align 4, !dbg !499
  br label %257, !dbg !500

257:                                              ; preds = %251
  store i8 1, ptr %7, align 1, !dbg !501
  br label %258, !dbg !502

258:                                              ; preds = %257, %246
  %259 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !503
  %260 = and i32 %259, 256, !dbg !505
  %261 = icmp eq i32 %260, 0, !dbg !506
  br i1 %261, label %262, label %278, !dbg !507

262:                                              ; preds = %258
  %263 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !508
  %264 = or i32 %263, 256, !dbg !508
  store volatile i32 %264, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !508
  %265 = call i32 @HAL_GetTick(), !dbg !510
  store i32 %265, ptr %4, align 4, !dbg !511
  br label %266, !dbg !512

266:                                              ; preds = %276, %262
  %267 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !513
  %268 = and i32 %267, 256, !dbg !514
  %269 = icmp eq i32 %268, 0, !dbg !515
  br i1 %269, label %270, label %277, !dbg !512

270:                                              ; preds = %266
  %271 = call i32 @HAL_GetTick(), !dbg !516
  %272 = load i32, ptr %4, align 4, !dbg !519
  %273 = sub i32 %271, %272, !dbg !520
  %274 = icmp ugt i32 %273, 100, !dbg !521
  br i1 %274, label %275, label %276, !dbg !522

275:                                              ; preds = %270
  store i8 3, ptr %2, align 1, !dbg !523
  br label %618, !dbg !523

276:                                              ; preds = %270
  br label %266, !dbg !512, !llvm.loop !525

277:                                              ; preds = %266
  br label %278, !dbg !527

278:                                              ; preds = %277, %258
  br label %279, !dbg !528

279:                                              ; preds = %278
  %280 = load ptr, ptr %3, align 4, !dbg !529
  %281 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %280, i32 0, i32 2, !dbg !532
  %282 = load i32, ptr %281, align 4, !dbg !532
  %283 = icmp eq i32 %282, 1, !dbg !533
  br i1 %283, label %284, label %287, !dbg !534

284:                                              ; preds = %279
  %285 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !535
  %286 = or i32 %285, 1, !dbg !535
  store volatile i32 %286, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !535
  br label %314, !dbg !537

287:                                              ; preds = %279
  %288 = load ptr, ptr %3, align 4, !dbg !538
  %289 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %288, i32 0, i32 2, !dbg !540
  %290 = load i32, ptr %289, align 4, !dbg !540
  %291 = icmp eq i32 %290, 0, !dbg !541
  br i1 %291, label %292, label %297, !dbg !542

292:                                              ; preds = %287
  %293 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !543
  %294 = and i32 %293, -2, !dbg !543
  store volatile i32 %294, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !543
  %295 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !545
  %296 = and i32 %295, -5, !dbg !545
  store volatile i32 %296, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !545
  br label %313, !dbg !546

297:                                              ; preds = %287
  %298 = load ptr, ptr %3, align 4, !dbg !547
  %299 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %298, i32 0, i32 2, !dbg !549
  %300 = load i32, ptr %299, align 4, !dbg !549
  %301 = icmp eq i32 %300, 5, !dbg !550
  br i1 %301, label %302, label %307, !dbg !551

302:                                              ; preds = %297
  %303 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !552
  %304 = or i32 %303, 4, !dbg !552
  store volatile i32 %304, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !552
  %305 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !554
  %306 = or i32 %305, 1, !dbg !554
  store volatile i32 %306, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !554
  br label %312, !dbg !555

307:                                              ; preds = %297
  %308 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !556
  %309 = and i32 %308, -2, !dbg !556
  store volatile i32 %309, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !556
  %310 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !558
  %311 = and i32 %310, -5, !dbg !558
  store volatile i32 %311, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !558
  br label %312

312:                                              ; preds = %307, %302
  br label %313

313:                                              ; preds = %312, %292
  br label %314

314:                                              ; preds = %313, %284
  br label %315, !dbg !559

315:                                              ; preds = %314
  %316 = load ptr, ptr %3, align 4, !dbg !560
  %317 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %316, i32 0, i32 2, !dbg !562
  %318 = load i32, ptr %317, align 4, !dbg !562
  %319 = icmp ne i32 %318, 0, !dbg !563
  br i1 %319, label %320, label %334, !dbg !564

320:                                              ; preds = %315
  %321 = call i32 @HAL_GetTick(), !dbg !565
  store i32 %321, ptr %4, align 4, !dbg !567
  br label %322, !dbg !568

322:                                              ; preds = %332, %320
  %323 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !569
  %324 = and i32 %323, 2, !dbg !570
  %325 = icmp eq i32 %324, 0, !dbg !571
  br i1 %325, label %326, label %333, !dbg !568

326:                                              ; preds = %322
  %327 = call i32 @HAL_GetTick(), !dbg !572
  %328 = load i32, ptr %4, align 4, !dbg !575
  %329 = sub i32 %327, %328, !dbg !576
  %330 = icmp ugt i32 %329, 5000, !dbg !577
  br i1 %330, label %331, label %332, !dbg !578

331:                                              ; preds = %326
  store i8 3, ptr %2, align 1, !dbg !579
  br label %618, !dbg !579

332:                                              ; preds = %326
  br label %322, !dbg !568, !llvm.loop !581

333:                                              ; preds = %322
  br label %348, !dbg !583

334:                                              ; preds = %315
  %335 = call i32 @HAL_GetTick(), !dbg !584
  store i32 %335, ptr %4, align 4, !dbg !586
  br label %336, !dbg !587

336:                                              ; preds = %346, %334
  %337 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !588
  %338 = and i32 %337, 2, !dbg !589
  %339 = icmp ne i32 %338, 0, !dbg !590
  br i1 %339, label %340, label %347, !dbg !587

340:                                              ; preds = %336
  %341 = call i32 @HAL_GetTick(), !dbg !591
  %342 = load i32, ptr %4, align 4, !dbg !594
  %343 = sub i32 %341, %342, !dbg !595
  %344 = icmp ugt i32 %343, 5000, !dbg !596
  br i1 %344, label %345, label %346, !dbg !597

345:                                              ; preds = %340
  store i8 3, ptr %2, align 1, !dbg !598
  br label %618, !dbg !598

346:                                              ; preds = %340
  br label %336, !dbg !587, !llvm.loop !600

347:                                              ; preds = %336
  br label %348

348:                                              ; preds = %347, %333
  %349 = load i8, ptr %7, align 1, !dbg !602
  %350 = zext i8 %349 to i32, !dbg !602
  %351 = icmp eq i32 %350, 1, !dbg !604
  br i1 %351, label %352, label %355, !dbg !605

352:                                              ; preds = %348
  %353 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !606
  %354 = and i32 %353, -268435457, !dbg !606
  store volatile i32 %354, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !606
  br label %355, !dbg !608

355:                                              ; preds = %352, %348
  br label %356, !dbg !609

356:                                              ; preds = %355, %240
  %357 = load ptr, ptr %3, align 4, !dbg !610
  %358 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %357, i32 0, i32 0, !dbg !612
  %359 = load i32, ptr %358, align 4, !dbg !612
  %360 = and i32 %359, 16, !dbg !613
  %361 = icmp eq i32 %360, 16, !dbg !614
  br i1 %361, label %362, label %427, !dbg !615

362:                                              ; preds = %356
  %363 = load ptr, ptr %3, align 4, !dbg !616
  %364 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %363, i32 0, i32 5, !dbg !619
  %365 = load i32, ptr %364, align 4, !dbg !619
  %366 = icmp eq i32 %365, 1, !dbg !620
  br i1 %366, label %367, label %392, !dbg !621

367:                                              ; preds = %362
  %368 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !622
  %369 = or i32 %368, 4, !dbg !622
  store volatile i32 %369, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !622
  %370 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !624
  %371 = or i32 %370, 1, !dbg !624
  store volatile i32 %371, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !624
  %372 = call i32 @HAL_GetTick(), !dbg !625
  store i32 %372, ptr %4, align 4, !dbg !626
  br label %373, !dbg !627

373:                                              ; preds = %383, %367
  %374 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !628
  %375 = and i32 %374, 2, !dbg !629
  %376 = icmp eq i32 %375, 0, !dbg !630
  br i1 %376, label %377, label %384, !dbg !627

377:                                              ; preds = %373
  %378 = call i32 @HAL_GetTick(), !dbg !631
  %379 = load i32, ptr %4, align 4, !dbg !634
  %380 = sub i32 %378, %379, !dbg !635
  %381 = icmp ugt i32 %380, 2, !dbg !636
  br i1 %381, label %382, label %383, !dbg !637

382:                                              ; preds = %377
  store i8 3, ptr %2, align 1, !dbg !638
  br label %618, !dbg !638

383:                                              ; preds = %377
  br label %373, !dbg !627, !llvm.loop !640

384:                                              ; preds = %373
  %385 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !642
  %386 = and i32 %385, -249, !dbg !643
  %387 = load ptr, ptr %3, align 4, !dbg !644
  %388 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %387, i32 0, i32 6, !dbg !645
  %389 = load i32, ptr %388, align 4, !dbg !645
  %390 = shl i32 %389, 3, !dbg !646
  %391 = or i32 %386, %390, !dbg !647
  store volatile i32 %391, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !648
  br label %426, !dbg !649

392:                                              ; preds = %362
  %393 = load ptr, ptr %3, align 4, !dbg !650
  %394 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %393, i32 0, i32 5, !dbg !652
  %395 = load i32, ptr %394, align 4, !dbg !652
  %396 = icmp eq i32 %395, -5, !dbg !653
  br i1 %396, label %397, label %407, !dbg !654

397:                                              ; preds = %392
  %398 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !655
  %399 = and i32 %398, -5, !dbg !655
  store volatile i32 %399, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !655
  %400 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !657
  %401 = and i32 %400, -249, !dbg !658
  %402 = load ptr, ptr %3, align 4, !dbg !659
  %403 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %402, i32 0, i32 6, !dbg !660
  %404 = load i32, ptr %403, align 4, !dbg !660
  %405 = shl i32 %404, 3, !dbg !661
  %406 = or i32 %401, %405, !dbg !662
  store volatile i32 %406, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !663
  br label %425, !dbg !664

407:                                              ; preds = %392
  %408 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !665
  %409 = or i32 %408, 4, !dbg !665
  store volatile i32 %409, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !665
  %410 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !667
  %411 = and i32 %410, -2, !dbg !667
  store volatile i32 %411, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !667
  %412 = call i32 @HAL_GetTick(), !dbg !668
  store i32 %412, ptr %4, align 4, !dbg !669
  br label %413, !dbg !670

413:                                              ; preds = %423, %407
  %414 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !671
  %415 = and i32 %414, 2, !dbg !672
  %416 = icmp ne i32 %415, 0, !dbg !673
  br i1 %416, label %417, label %424, !dbg !670

417:                                              ; preds = %413
  %418 = call i32 @HAL_GetTick(), !dbg !674
  %419 = load i32, ptr %4, align 4, !dbg !677
  %420 = sub i32 %418, %419, !dbg !678
  %421 = icmp ugt i32 %420, 2, !dbg !679
  br i1 %421, label %422, label %423, !dbg !680

422:                                              ; preds = %417
  store i8 3, ptr %2, align 1, !dbg !681
  br label %618, !dbg !681

423:                                              ; preds = %417
  br label %413, !dbg !670, !llvm.loop !683

424:                                              ; preds = %413
  br label %425

425:                                              ; preds = %424, %397
  br label %426

426:                                              ; preds = %425, %384
  br label %427, !dbg !685

427:                                              ; preds = %426, %356
  %428 = load ptr, ptr %3, align 4, !dbg !686
  %429 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %428, i32 0, i32 0, !dbg !688
  %430 = load i32, ptr %429, align 4, !dbg !688
  %431 = and i32 %430, 32, !dbg !689
  %432 = icmp eq i32 %431, 32, !dbg !690
  br i1 %432, label %433, label %495, !dbg !691

433:                                              ; preds = %427
  %434 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !692
  %435 = and i32 %434, 12, !dbg !695
  %436 = icmp eq i32 %435, 12, !dbg !696
  br i1 %436, label %445, label %437, !dbg !697

437:                                              ; preds = %433
  %438 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !698
  %439 = and i32 %438, 12, !dbg !699
  %440 = icmp eq i32 %439, 8, !dbg !700
  br i1 %440, label %441, label %456, !dbg !701

441:                                              ; preds = %437
  %442 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !702
  %443 = and i32 %442, 98304, !dbg !703
  %444 = icmp eq i32 %443, 98304, !dbg !704
  br i1 %444, label %445, label %456, !dbg !705

445:                                              ; preds = %441, %433
  %446 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !706
  %447 = and i32 %446, 131072, !dbg !709
  %448 = icmp ne i32 %447, 0, !dbg !710
  br i1 %448, label %449, label %455, !dbg !711

449:                                              ; preds = %445
  %450 = load ptr, ptr %3, align 4, !dbg !712
  %451 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %450, i32 0, i32 8, !dbg !713
  %452 = load i32, ptr %451, align 4, !dbg !713
  %453 = icmp ne i32 %452, 1, !dbg !714
  br i1 %453, label %454, label %455, !dbg !715

454:                                              ; preds = %449
  store i8 1, ptr %2, align 1, !dbg !716
  br label %618, !dbg !716

455:                                              ; preds = %449, %445
  br label %494, !dbg !718

456:                                              ; preds = %441, %437
  %457 = load ptr, ptr %3, align 4, !dbg !719
  %458 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %457, i32 0, i32 8, !dbg !722
  %459 = load i32, ptr %458, align 4, !dbg !722
  %460 = icmp ne i32 %459, 0, !dbg !723
  br i1 %460, label %461, label %477, !dbg !724

461:                                              ; preds = %456
  %462 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !725
  %463 = or i32 %462, 65536, !dbg !725
  store volatile i32 %463, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !725
  %464 = call i32 @HAL_GetTick(), !dbg !727
  store i32 %464, ptr %4, align 4, !dbg !728
  br label %465, !dbg !729

465:                                              ; preds = %475, %461
  %466 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !730
  %467 = and i32 %466, 131072, !dbg !731
  %468 = icmp eq i32 %467, 0, !dbg !732
  br i1 %468, label %469, label %476, !dbg !729

469:                                              ; preds = %465
  %470 = call i32 @HAL_GetTick(), !dbg !733
  %471 = load i32, ptr %4, align 4, !dbg !736
  %472 = sub i32 %470, %471, !dbg !737
  %473 = icmp ugt i32 %472, 2, !dbg !738
  br i1 %473, label %474, label %475, !dbg !739

474:                                              ; preds = %469
  store i8 3, ptr %2, align 1, !dbg !740
  br label %618, !dbg !740

475:                                              ; preds = %469
  br label %465, !dbg !729, !llvm.loop !742

476:                                              ; preds = %465
  br label %493, !dbg !744

477:                                              ; preds = %456
  %478 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !745
  %479 = and i32 %478, -65537, !dbg !745
  store volatile i32 %479, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !745
  %480 = call i32 @HAL_GetTick(), !dbg !747
  store i32 %480, ptr %4, align 4, !dbg !748
  br label %481, !dbg !749

481:                                              ; preds = %491, %477
  %482 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !750
  %483 = and i32 %482, 131072, !dbg !751
  %484 = icmp ne i32 %483, 0, !dbg !752
  br i1 %484, label %485, label %492, !dbg !749

485:                                              ; preds = %481
  %486 = call i32 @HAL_GetTick(), !dbg !753
  %487 = load i32, ptr %4, align 4, !dbg !756
  %488 = sub i32 %486, %487, !dbg !757
  %489 = icmp ugt i32 %488, 2, !dbg !758
  br i1 %489, label %490, label %491, !dbg !759

490:                                              ; preds = %485
  store i8 3, ptr %2, align 1, !dbg !760
  br label %618, !dbg !760

491:                                              ; preds = %485
  br label %481, !dbg !749, !llvm.loop !762

492:                                              ; preds = %481
  br label %493

493:                                              ; preds = %492, %476
  br label %494

494:                                              ; preds = %493, %455
  br label %495, !dbg !764

495:                                              ; preds = %494, %427
  %496 = load ptr, ptr %3, align 4, !dbg !765
  %497 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %496, i32 0, i32 9, !dbg !767
  %498 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %497, i32 0, i32 0, !dbg !768
  %499 = load i32, ptr %498, align 4, !dbg !768
  %500 = icmp ne i32 %499, 0, !dbg !769
  br i1 %500, label %501, label %617, !dbg !770

501:                                              ; preds = %495
  %502 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !771
  %503 = and i32 %502, 12, !dbg !774
  %504 = icmp ne i32 %503, 8, !dbg !775
  br i1 %504, label %505, label %580, !dbg !776

505:                                              ; preds = %501
  %506 = load ptr, ptr %3, align 4, !dbg !777
  %507 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %506, i32 0, i32 9, !dbg !780
  %508 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %507, i32 0, i32 0, !dbg !781
  %509 = load i32, ptr %508, align 4, !dbg !781
  %510 = icmp eq i32 %509, 2, !dbg !782
  br i1 %510, label %511, label %563, !dbg !783

511:                                              ; preds = %505
  %512 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !784
  %513 = and i32 %512, -16777217, !dbg !784
  store volatile i32 %513, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !784
  %514 = call i32 @HAL_GetTick(), !dbg !786
  store i32 %514, ptr %4, align 4, !dbg !787
  br label %515, !dbg !788

515:                                              ; preds = %525, %511
  %516 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !789
  %517 = and i32 %516, 33554432, !dbg !790
  %518 = icmp ne i32 %517, 0, !dbg !791
  br i1 %518, label %519, label %526, !dbg !788

519:                                              ; preds = %515
  %520 = call i32 @HAL_GetTick(), !dbg !792
  %521 = load i32, ptr %4, align 4, !dbg !795
  %522 = sub i32 %520, %521, !dbg !796
  %523 = icmp ugt i32 %522, 2, !dbg !797
  br i1 %523, label %524, label %525, !dbg !798

524:                                              ; preds = %519
  store i8 3, ptr %2, align 1, !dbg !799
  br label %618, !dbg !799

525:                                              ; preds = %519
  br label %515, !dbg !788, !llvm.loop !801

526:                                              ; preds = %515
  br label %527, !dbg !803

527:                                              ; preds = %526
  %528 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !804
  %529 = and i32 %528, -16, !dbg !806
  %530 = load ptr, ptr %3, align 4, !dbg !807
  %531 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %530, i32 0, i32 9, !dbg !808
  %532 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %531, i32 0, i32 3, !dbg !809
  %533 = load i32, ptr %532, align 4, !dbg !809
  %534 = or i32 %529, %533, !dbg !810
  store volatile i32 %534, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !811
  %535 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !812
  %536 = and i32 %535, -4030465, !dbg !813
  %537 = load ptr, ptr %3, align 4, !dbg !814
  %538 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %537, i32 0, i32 9, !dbg !815
  %539 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %538, i32 0, i32 2, !dbg !816
  %540 = load i32, ptr %539, align 4, !dbg !816
  %541 = load ptr, ptr %3, align 4, !dbg !817
  %542 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %541, i32 0, i32 9, !dbg !818
  %543 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %542, i32 0, i32 1, !dbg !819
  %544 = load i32, ptr %543, align 4, !dbg !819
  %545 = or i32 %540, %544, !dbg !820
  %546 = or i32 %536, %545, !dbg !821
  store volatile i32 %546, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !822
  br label %547, !dbg !823

547:                                              ; preds = %527
  %548 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !824
  %549 = or i32 %548, 16777216, !dbg !824
  store volatile i32 %549, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !824
  %550 = call i32 @HAL_GetTick(), !dbg !825
  store i32 %550, ptr %4, align 4, !dbg !826
  br label %551, !dbg !827

551:                                              ; preds = %561, %547
  %552 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !828
  %553 = and i32 %552, 33554432, !dbg !829
  %554 = icmp eq i32 %553, 0, !dbg !830
  br i1 %554, label %555, label %562, !dbg !827

555:                                              ; preds = %551
  %556 = call i32 @HAL_GetTick(), !dbg !831
  %557 = load i32, ptr %4, align 4, !dbg !834
  %558 = sub i32 %556, %557, !dbg !835
  %559 = icmp ugt i32 %558, 2, !dbg !836
  br i1 %559, label %560, label %561, !dbg !837

560:                                              ; preds = %555
  store i8 3, ptr %2, align 1, !dbg !838
  br label %618, !dbg !838

561:                                              ; preds = %555
  br label %551, !dbg !827, !llvm.loop !840

562:                                              ; preds = %551
  br label %579, !dbg !842

563:                                              ; preds = %505
  %564 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !843
  %565 = and i32 %564, -16777217, !dbg !843
  store volatile i32 %565, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !843
  %566 = call i32 @HAL_GetTick(), !dbg !845
  store i32 %566, ptr %4, align 4, !dbg !846
  br label %567, !dbg !847

567:                                              ; preds = %577, %563
  %568 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !848
  %569 = and i32 %568, 33554432, !dbg !849
  %570 = icmp ne i32 %569, 0, !dbg !850
  br i1 %570, label %571, label %578, !dbg !847

571:                                              ; preds = %567
  %572 = call i32 @HAL_GetTick(), !dbg !851
  %573 = load i32, ptr %4, align 4, !dbg !854
  %574 = sub i32 %572, %573, !dbg !855
  %575 = icmp ugt i32 %574, 2, !dbg !856
  br i1 %575, label %576, label %577, !dbg !857

576:                                              ; preds = %571
  store i8 3, ptr %2, align 1, !dbg !858
  br label %618, !dbg !858

577:                                              ; preds = %571
  br label %567, !dbg !847, !llvm.loop !860

578:                                              ; preds = %567
  br label %579

579:                                              ; preds = %578, %562
  br label %616, !dbg !862

580:                                              ; preds = %501
  %581 = load ptr, ptr %3, align 4, !dbg !863
  %582 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %581, i32 0, i32 9, !dbg !866
  %583 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %582, i32 0, i32 0, !dbg !867
  %584 = load i32, ptr %583, align 4, !dbg !867
  %585 = icmp eq i32 %584, 1, !dbg !868
  br i1 %585, label %586, label %587, !dbg !869

586:                                              ; preds = %580
  store i8 1, ptr %2, align 1, !dbg !870
  br label %618, !dbg !870

587:                                              ; preds = %580
  %588 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !872
  store i32 %588, ptr %5, align 4, !dbg !874
  %589 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !875
  store i32 %589, ptr %6, align 4, !dbg !876
  %590 = load i32, ptr %5, align 4, !dbg !877
  %591 = and i32 %590, 98304, !dbg !879
  %592 = load ptr, ptr %3, align 4, !dbg !880
  %593 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %592, i32 0, i32 9, !dbg !881
  %594 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %593, i32 0, i32 1, !dbg !882
  %595 = load i32, ptr %594, align 4, !dbg !882
  %596 = icmp ne i32 %591, %595, !dbg !883
  br i1 %596, label %613, label %597, !dbg !884

597:                                              ; preds = %587
  %598 = load i32, ptr %6, align 4, !dbg !885
  %599 = and i32 %598, 15, !dbg !886
  %600 = load ptr, ptr %3, align 4, !dbg !887
  %601 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %600, i32 0, i32 9, !dbg !888
  %602 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %601, i32 0, i32 3, !dbg !889
  %603 = load i32, ptr %602, align 4, !dbg !889
  %604 = icmp ne i32 %599, %603, !dbg !890
  br i1 %604, label %613, label %605, !dbg !891

605:                                              ; preds = %597
  %606 = load i32, ptr %5, align 4, !dbg !892
  %607 = and i32 %606, 3932160, !dbg !893
  %608 = load ptr, ptr %3, align 4, !dbg !894
  %609 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %608, i32 0, i32 9, !dbg !895
  %610 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %609, i32 0, i32 2, !dbg !896
  %611 = load i32, ptr %610, align 4, !dbg !896
  %612 = icmp ne i32 %607, %611, !dbg !897
  br i1 %612, label %613, label %614, !dbg !898

613:                                              ; preds = %605, %597, %587
  store i8 1, ptr %2, align 1, !dbg !899
  br label %618, !dbg !899

614:                                              ; preds = %605
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615, %579
  br label %617, !dbg !901

617:                                              ; preds = %616, %495
  store i8 0, ptr %2, align 1, !dbg !902
  br label %618, !dbg !902

618:                                              ; preds = %617, %613, %586, %576, %560, %524, %490, %474, %454, %422, %382, %345, %331, %275, %236, %220, %191, %168, %140, %108, %94, %39, %11
  %619 = load i8, ptr %2, align 1, !dbg !903
  ret i8 %619, !dbg !903
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_RCC_ClockConfig(ptr noundef %0, i32 noundef %1) #0 !dbg !904 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !915, metadata !DIExpression()), !dbg !916
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !917, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.declare(metadata ptr %6, metadata !919, metadata !DIExpression()), !dbg !920
  %7 = load ptr, ptr %4, align 4, !dbg !921
  %8 = icmp eq ptr %7, null, !dbg !923
  br i1 %8, label %9, label %10, !dbg !924

9:                                                ; preds = %2
  store i8 1, ptr %3, align 1, !dbg !925
  br label %159, !dbg !925

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4, !dbg !927
  %12 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !929
  %13 = and i32 %12, 1, !dbg !930
  %14 = icmp ugt i32 %11, %13, !dbg !931
  br i1 %14, label %15, label %26, !dbg !932

15:                                               ; preds = %10
  %16 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !933
  %17 = and i32 %16, -2, !dbg !935
  %18 = load i32, ptr %5, align 4, !dbg !936
  %19 = or i32 %17, %18, !dbg !937
  store volatile i32 %19, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !938
  %20 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !939
  %21 = and i32 %20, 1, !dbg !941
  %22 = load i32, ptr %5, align 4, !dbg !942
  %23 = icmp ne i32 %21, %22, !dbg !943
  br i1 %23, label %24, label %25, !dbg !944

24:                                               ; preds = %15
  store i8 1, ptr %3, align 1, !dbg !945
  br label %159, !dbg !945

25:                                               ; preds = %15
  br label %26, !dbg !947

26:                                               ; preds = %25, %10
  %27 = load ptr, ptr %4, align 4, !dbg !948
  %28 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %27, i32 0, i32 0, !dbg !950
  %29 = load i32, ptr %28, align 4, !dbg !950
  %30 = and i32 %29, 2, !dbg !951
  %31 = icmp eq i32 %30, 2, !dbg !952
  br i1 %31, label %32, label %49, !dbg !953

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4, !dbg !954
  %34 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %33, i32 0, i32 0, !dbg !957
  %35 = load i32, ptr %34, align 4, !dbg !957
  %36 = and i32 %35, 4, !dbg !958
  %37 = icmp eq i32 %36, 4, !dbg !959
  br i1 %37, label %38, label %42, !dbg !960

38:                                               ; preds = %32
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !961
  %40 = and i32 %39, -1793, !dbg !963
  %41 = or i32 %40, 1792, !dbg !964
  store volatile i32 %41, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !965
  br label %42, !dbg !966

42:                                               ; preds = %38, %32
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !967
  %44 = and i32 %43, -241, !dbg !968
  %45 = load ptr, ptr %4, align 4, !dbg !969
  %46 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %45, i32 0, i32 2, !dbg !970
  %47 = load i32, ptr %46, align 4, !dbg !970
  %48 = or i32 %44, %47, !dbg !971
  store volatile i32 %48, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !972
  br label %49, !dbg !973

49:                                               ; preds = %42, %26
  %50 = load ptr, ptr %4, align 4, !dbg !974
  %51 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %50, i32 0, i32 0, !dbg !976
  %52 = load i32, ptr %51, align 4, !dbg !976
  %53 = and i32 %52, 1, !dbg !977
  %54 = icmp eq i32 %53, 1, !dbg !978
  br i1 %54, label %55, label %120, !dbg !979

55:                                               ; preds = %49
  %56 = load ptr, ptr %4, align 4, !dbg !980
  %57 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %56, i32 0, i32 1, !dbg !983
  %58 = load i32, ptr %57, align 4, !dbg !983
  %59 = icmp eq i32 %58, 1, !dbg !984
  br i1 %59, label %60, label %66, !dbg !985

60:                                               ; preds = %55
  %61 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !986
  %62 = and i32 %61, 131072, !dbg !989
  %63 = icmp eq i32 %62, 0, !dbg !990
  br i1 %63, label %64, label %65, !dbg !991

64:                                               ; preds = %60
  store i8 1, ptr %3, align 1, !dbg !992
  br label %159, !dbg !992

65:                                               ; preds = %60
  br label %96, !dbg !994

66:                                               ; preds = %55
  %67 = load ptr, ptr %4, align 4, !dbg !995
  %68 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %67, i32 0, i32 1, !dbg !997
  %69 = load i32, ptr %68, align 4, !dbg !997
  %70 = icmp eq i32 %69, 2, !dbg !998
  br i1 %70, label %71, label %77, !dbg !999

71:                                               ; preds = %66
  %72 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1000
  %73 = and i32 %72, 33554432, !dbg !1003
  %74 = icmp eq i32 %73, 0, !dbg !1004
  br i1 %74, label %75, label %76, !dbg !1005

75:                                               ; preds = %71
  store i8 1, ptr %3, align 1, !dbg !1006
  br label %159, !dbg !1006

76:                                               ; preds = %71
  br label %95, !dbg !1008

77:                                               ; preds = %66
  %78 = load ptr, ptr %4, align 4, !dbg !1009
  %79 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %78, i32 0, i32 1, !dbg !1011
  %80 = load i32, ptr %79, align 4, !dbg !1011
  %81 = icmp eq i32 %80, 3, !dbg !1012
  br i1 %81, label %82, label %88, !dbg !1013

82:                                               ; preds = %77
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1014
  %84 = and i32 %83, 131072, !dbg !1017
  %85 = icmp eq i32 %84, 0, !dbg !1018
  br i1 %85, label %86, label %87, !dbg !1019

86:                                               ; preds = %82
  store i8 1, ptr %3, align 1, !dbg !1020
  br label %159, !dbg !1020

87:                                               ; preds = %82
  br label %94, !dbg !1022

88:                                               ; preds = %77
  %89 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1023
  %90 = and i32 %89, 2, !dbg !1026
  %91 = icmp eq i32 %90, 0, !dbg !1027
  br i1 %91, label %92, label %93, !dbg !1028

92:                                               ; preds = %88
  store i8 1, ptr %3, align 1, !dbg !1029
  br label %159, !dbg !1029

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %87
  br label %95

95:                                               ; preds = %94, %76
  br label %96

96:                                               ; preds = %95, %65
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1031
  %98 = and i32 %97, -4, !dbg !1032
  %99 = load ptr, ptr %4, align 4, !dbg !1033
  %100 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %99, i32 0, i32 1, !dbg !1034
  %101 = load i32, ptr %100, align 4, !dbg !1034
  %102 = or i32 %98, %101, !dbg !1035
  store volatile i32 %102, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1036
  %103 = call i32 @HAL_GetTick(), !dbg !1037
  store i32 %103, ptr %6, align 4, !dbg !1038
  br label %104, !dbg !1039

104:                                              ; preds = %118, %96
  %105 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1040
  %106 = and i32 %105, 12, !dbg !1041
  %107 = load ptr, ptr %4, align 4, !dbg !1042
  %108 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %107, i32 0, i32 1, !dbg !1043
  %109 = load i32, ptr %108, align 4, !dbg !1043
  %110 = shl i32 %109, 2, !dbg !1044
  %111 = icmp ne i32 %106, %110, !dbg !1045
  br i1 %111, label %112, label %119, !dbg !1039

112:                                              ; preds = %104
  %113 = call i32 @HAL_GetTick(), !dbg !1046
  %114 = load i32, ptr %6, align 4, !dbg !1049
  %115 = sub i32 %113, %114, !dbg !1050
  %116 = icmp ugt i32 %115, 5000, !dbg !1051
  br i1 %116, label %117, label %118, !dbg !1052

117:                                              ; preds = %112
  store i8 3, ptr %3, align 1, !dbg !1053
  br label %159, !dbg !1053

118:                                              ; preds = %112
  br label %104, !dbg !1039, !llvm.loop !1055

119:                                              ; preds = %104
  br label %120, !dbg !1057

120:                                              ; preds = %119, %49
  %121 = load i32, ptr %5, align 4, !dbg !1058
  %122 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1060
  %123 = and i32 %122, 1, !dbg !1061
  %124 = icmp ult i32 %121, %123, !dbg !1062
  br i1 %124, label %125, label %136, !dbg !1063

125:                                              ; preds = %120
  %126 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1064
  %127 = and i32 %126, -2, !dbg !1066
  %128 = load i32, ptr %5, align 4, !dbg !1067
  %129 = or i32 %127, %128, !dbg !1068
  store volatile i32 %129, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1069
  %130 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1070
  %131 = and i32 %130, 1, !dbg !1072
  %132 = load i32, ptr %5, align 4, !dbg !1073
  %133 = icmp ne i32 %131, %132, !dbg !1074
  br i1 %133, label %134, label %135, !dbg !1075

134:                                              ; preds = %125
  store i8 1, ptr %3, align 1, !dbg !1076
  br label %159, !dbg !1076

135:                                              ; preds = %125
  br label %136, !dbg !1078

136:                                              ; preds = %135, %120
  %137 = load ptr, ptr %4, align 4, !dbg !1079
  %138 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %137, i32 0, i32 0, !dbg !1081
  %139 = load i32, ptr %138, align 4, !dbg !1081
  %140 = and i32 %139, 4, !dbg !1082
  %141 = icmp eq i32 %140, 4, !dbg !1083
  br i1 %141, label %142, label %149, !dbg !1084

142:                                              ; preds = %136
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1085
  %144 = and i32 %143, -1793, !dbg !1087
  %145 = load ptr, ptr %4, align 4, !dbg !1088
  %146 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %145, i32 0, i32 3, !dbg !1089
  %147 = load i32, ptr %146, align 4, !dbg !1089
  %148 = or i32 %144, %147, !dbg !1090
  store volatile i32 %148, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1091
  br label %149, !dbg !1092

149:                                              ; preds = %142, %136
  %150 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !1093
  %151 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1094
  %152 = and i32 %151, 240, !dbg !1095
  %153 = lshr i32 %152, 4, !dbg !1096
  %154 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %153, !dbg !1097
  %155 = load i8, ptr %154, align 1, !dbg !1097
  %156 = zext i8 %155 to i32, !dbg !1097
  %157 = lshr i32 %150, %156, !dbg !1098
  store i32 %157, ptr @SystemCoreClock, align 4, !dbg !1099
  %158 = call zeroext i8 @HAL_InitTick(i32 noundef 3), !dbg !1100
  store i8 0, ptr %3, align 1, !dbg !1101
  br label %159, !dbg !1101

159:                                              ; preds = %149, %134, %117, %92, %86, %75, %64, %24, %9
  %160 = load i8, ptr %3, align 1, !dbg !1102
  ret i8 %160, !dbg !1102
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_RCC_GetSysClockFreq() #0 !dbg !2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1103, metadata !DIExpression()), !dbg !1104
  store i32 0, ptr %1, align 4, !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1105, metadata !DIExpression()), !dbg !1106
  store i32 0, ptr %2, align 4, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1107, metadata !DIExpression()), !dbg !1108
  store i32 0, ptr %3, align 4, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i32 0, ptr %4, align 4, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1111, metadata !DIExpression()), !dbg !1112
  store i32 0, ptr %5, align 4, !dbg !1112
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1113
  store i32 %6, ptr %1, align 4, !dbg !1114
  %7 = load i32, ptr %1, align 4, !dbg !1115
  %8 = and i32 %7, 12, !dbg !1116
  switch i32 %8, label %65 [
    i32 4, label %9
    i32 8, label %10
    i32 12, label %63
    i32 0, label %64
  ], !dbg !1117

9:                                                ; preds = %0
  store i32 8000000, ptr %5, align 4, !dbg !1118
  br label %66, !dbg !1121

10:                                               ; preds = %0
  %11 = load i32, ptr %1, align 4, !dbg !1122
  %12 = and i32 %11, 3932160, !dbg !1124
  %13 = lshr i32 %12, 18, !dbg !1125
  %14 = getelementptr inbounds [16 x i8], ptr @HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, i32 0, i32 %13, !dbg !1126
  %15 = load i8, ptr %14, align 1, !dbg !1126
  %16 = zext i8 %15 to i32, !dbg !1126
  store i32 %16, ptr %4, align 4, !dbg !1127
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !1128
  %18 = and i32 %17, 15, !dbg !1129
  %19 = lshr i32 %18, 0, !dbg !1130
  %20 = getelementptr inbounds [16 x i8], ptr @HAL_RCC_GetSysClockFreq.aPredivFactorTable, i32 0, i32 %19, !dbg !1131
  %21 = load i8, ptr %20, align 1, !dbg !1131
  %22 = zext i8 %21 to i32, !dbg !1131
  store i32 %22, ptr %2, align 4, !dbg !1132
  %23 = load i32, ptr %1, align 4, !dbg !1133
  %24 = and i32 %23, 98304, !dbg !1135
  %25 = icmp eq i32 %24, 65536, !dbg !1136
  br i1 %25, label %26, label %36, !dbg !1137

26:                                               ; preds = %10
  %27 = load i32, ptr %2, align 4, !dbg !1138
  %28 = zext i32 %27 to i64, !dbg !1140
  %29 = udiv i64 8000000, %28, !dbg !1141
  %30 = trunc i64 %29 to i32, !dbg !1142
  %31 = zext i32 %30 to i64, !dbg !1142
  %32 = load i32, ptr %4, align 4, !dbg !1143
  %33 = zext i32 %32 to i64, !dbg !1144
  %34 = mul i64 %31, %33, !dbg !1145
  %35 = trunc i64 %34 to i32, !dbg !1142
  store i32 %35, ptr %3, align 4, !dbg !1146
  br label %61, !dbg !1147

36:                                               ; preds = %10
  %37 = load i32, ptr %1, align 4, !dbg !1148
  %38 = and i32 %37, 98304, !dbg !1150
  %39 = icmp eq i32 %38, 98304, !dbg !1151
  br i1 %39, label %40, label %50, !dbg !1152

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4, !dbg !1153
  %42 = zext i32 %41 to i64, !dbg !1155
  %43 = udiv i64 48000000, %42, !dbg !1156
  %44 = trunc i64 %43 to i32, !dbg !1157
  %45 = zext i32 %44 to i64, !dbg !1157
  %46 = load i32, ptr %4, align 4, !dbg !1158
  %47 = zext i32 %46 to i64, !dbg !1159
  %48 = mul i64 %45, %47, !dbg !1160
  %49 = trunc i64 %48 to i32, !dbg !1157
  store i32 %49, ptr %3, align 4, !dbg !1161
  br label %60, !dbg !1162

50:                                               ; preds = %36
  %51 = load i32, ptr %2, align 4, !dbg !1163
  %52 = zext i32 %51 to i64, !dbg !1165
  %53 = udiv i64 8000000, %52, !dbg !1166
  %54 = trunc i64 %53 to i32, !dbg !1167
  %55 = zext i32 %54 to i64, !dbg !1167
  %56 = load i32, ptr %4, align 4, !dbg !1168
  %57 = zext i32 %56 to i64, !dbg !1169
  %58 = mul i64 %55, %57, !dbg !1170
  %59 = trunc i64 %58 to i32, !dbg !1167
  store i32 %59, ptr %3, align 4, !dbg !1171
  br label %60

60:                                               ; preds = %50, %40
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, ptr %3, align 4, !dbg !1172
  store i32 %62, ptr %5, align 4, !dbg !1173
  br label %66, !dbg !1174

63:                                               ; preds = %0
  store i32 48000000, ptr %5, align 4, !dbg !1175
  br label %66, !dbg !1177

64:                                               ; preds = %0
  br label %65, !dbg !1178

65:                                               ; preds = %0, %64
  store i32 8000000, ptr %5, align 4, !dbg !1179
  br label %66, !dbg !1181

66:                                               ; preds = %65, %63, %61, %9
  %67 = load i32, ptr %5, align 4, !dbg !1182
  ret i32 %67, !dbg !1183
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_MCOConfig(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1184 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.GPIO_InitTypeDef, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1187, metadata !DIExpression()), !dbg !1188
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1189, metadata !DIExpression()), !dbg !1190
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1191, metadata !DIExpression()), !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1193, metadata !DIExpression()), !dbg !1203
  %9 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 1, !dbg !1204
  store i32 2, ptr %9, align 4, !dbg !1205
  %10 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 3, !dbg !1206
  store i32 3, ptr %10, align 4, !dbg !1207
  %11 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 2, !dbg !1208
  store i32 0, ptr %11, align 4, !dbg !1209
  %12 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 0, !dbg !1210
  store i32 256, ptr %12, align 4, !dbg !1211
  %13 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 4, !dbg !1212
  store i32 0, ptr %13, align 4, !dbg !1213
  br label %14, !dbg !1214

14:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1215, metadata !DIExpression()), !dbg !1217
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1218
  %16 = or i32 %15, 131072, !dbg !1218
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1218
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1219
  %18 = and i32 %17, 131072, !dbg !1220
  store volatile i32 %18, ptr %8, align 4, !dbg !1221
  %19 = load volatile i32, ptr %8, align 4, !dbg !1222
  br label %20, !dbg !1223

20:                                               ; preds = %14
  call void @HAL_GPIO_Init(ptr noundef inttoptr (i32 1207959552 to ptr), ptr noundef %7), !dbg !1224
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1225
  %22 = and i32 %21, -2130706433, !dbg !1226
  %23 = load i32, ptr %5, align 4, !dbg !1227
  %24 = load i32, ptr %6, align 4, !dbg !1228
  %25 = or i32 %23, %24, !dbg !1229
  %26 = or i32 %22, %25, !dbg !1230
  store volatile i32 %26, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1231
  ret void, !dbg !1232
}

declare void @HAL_GPIO_Init(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_EnableCSS() #0 !dbg !1233 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1236
  %2 = or i32 %1, 524288, !dbg !1236
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1236
  ret void, !dbg !1237
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_DisableCSS() #0 !dbg !1238 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1239
  %2 = and i32 %1, -524289, !dbg !1239
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_RCC_GetHCLKFreq() #0 !dbg !1241 {
  %1 = load i32, ptr @SystemCoreClock, align 4, !dbg !1242
  ret i32 %1, !dbg !1243
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_RCC_GetPCLK1Freq() #0 !dbg !1244 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq(), !dbg !1245
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1246
  %3 = and i32 %2, 1792, !dbg !1247
  %4 = lshr i32 %3, 8, !dbg !1248
  %5 = getelementptr inbounds [8 x i8], ptr @APBPrescTable, i32 0, i32 %4, !dbg !1249
  %6 = load i8, ptr %5, align 1, !dbg !1249
  %7 = zext i8 %6 to i32, !dbg !1249
  %8 = lshr i32 %1, %7, !dbg !1250
  ret i32 %8, !dbg !1251
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_GetOscConfig(ptr noundef %0) #0 !dbg !1252 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1255, metadata !DIExpression()), !dbg !1256
  %3 = load ptr, ptr %2, align 4, !dbg !1257
  %4 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %3, i32 0, i32 0, !dbg !1258
  store i32 31, ptr %4, align 4, !dbg !1259
  %5 = load ptr, ptr %2, align 4, !dbg !1260
  %6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %5, i32 0, i32 0, !dbg !1261
  %7 = load i32, ptr %6, align 4, !dbg !1262
  %8 = or i32 %7, 32, !dbg !1262
  store i32 %8, ptr %6, align 4, !dbg !1262
  %9 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1263
  %10 = and i32 %9, 262144, !dbg !1265
  %11 = icmp eq i32 %10, 262144, !dbg !1266
  br i1 %11, label %12, label %15, !dbg !1267

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4, !dbg !1268
  %14 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %13, i32 0, i32 1, !dbg !1270
  store i32 5, ptr %14, align 4, !dbg !1271
  br label %26, !dbg !1272

15:                                               ; preds = %1
  %16 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1273
  %17 = and i32 %16, 65536, !dbg !1275
  %18 = icmp eq i32 %17, 65536, !dbg !1276
  br i1 %18, label %19, label %22, !dbg !1277

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4, !dbg !1278
  %21 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %20, i32 0, i32 1, !dbg !1280
  store i32 1, ptr %21, align 4, !dbg !1281
  br label %25, !dbg !1282

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 4, !dbg !1283
  %24 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %23, i32 0, i32 1, !dbg !1285
  store i32 0, ptr %24, align 4, !dbg !1286
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1287
  %28 = and i32 %27, 1, !dbg !1289
  %29 = icmp eq i32 %28, 1, !dbg !1290
  br i1 %29, label %30, label %33, !dbg !1291

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4, !dbg !1292
  %32 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %31, i32 0, i32 3, !dbg !1294
  store i32 1, ptr %32, align 4, !dbg !1295
  br label %36, !dbg !1296

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 4, !dbg !1297
  %35 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %34, i32 0, i32 3, !dbg !1299
  store i32 0, ptr %35, align 4, !dbg !1300
  br label %36

36:                                               ; preds = %33, %30
  %37 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1301
  %38 = and i32 %37, 248, !dbg !1302
  %39 = lshr i32 %38, 3, !dbg !1303
  %40 = load ptr, ptr %2, align 4, !dbg !1304
  %41 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %40, i32 0, i32 4, !dbg !1305
  store i32 %39, ptr %41, align 4, !dbg !1306
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !1307
  %43 = and i32 %42, 4, !dbg !1309
  %44 = icmp eq i32 %43, 4, !dbg !1310
  br i1 %44, label %45, label %48, !dbg !1311

45:                                               ; preds = %36
  %46 = load ptr, ptr %2, align 4, !dbg !1312
  %47 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %46, i32 0, i32 2, !dbg !1314
  store i32 5, ptr %47, align 4, !dbg !1315
  br label %59, !dbg !1316

48:                                               ; preds = %36
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !1317
  %50 = and i32 %49, 1, !dbg !1319
  %51 = icmp eq i32 %50, 1, !dbg !1320
  br i1 %51, label %52, label %55, !dbg !1321

52:                                               ; preds = %48
  %53 = load ptr, ptr %2, align 4, !dbg !1322
  %54 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %53, i32 0, i32 2, !dbg !1324
  store i32 1, ptr %54, align 4, !dbg !1325
  br label %58, !dbg !1326

55:                                               ; preds = %48
  %56 = load ptr, ptr %2, align 4, !dbg !1327
  %57 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %56, i32 0, i32 2, !dbg !1329
  store i32 0, ptr %57, align 4, !dbg !1330
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %45
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !1331
  %61 = and i32 %60, 1, !dbg !1333
  %62 = icmp eq i32 %61, 1, !dbg !1334
  br i1 %62, label %63, label %66, !dbg !1335

63:                                               ; preds = %59
  %64 = load ptr, ptr %2, align 4, !dbg !1336
  %65 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %64, i32 0, i32 7, !dbg !1338
  store i32 1, ptr %65, align 4, !dbg !1339
  br label %69, !dbg !1340

66:                                               ; preds = %59
  %67 = load ptr, ptr %2, align 4, !dbg !1341
  %68 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %67, i32 0, i32 7, !dbg !1343
  store i32 0, ptr %68, align 4, !dbg !1344
  br label %69

69:                                               ; preds = %66, %63
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1345
  %71 = and i32 %70, 1, !dbg !1347
  %72 = icmp eq i32 %71, 1, !dbg !1348
  br i1 %72, label %73, label %76, !dbg !1349

73:                                               ; preds = %69
  %74 = load ptr, ptr %2, align 4, !dbg !1350
  %75 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %74, i32 0, i32 5, !dbg !1352
  store i32 1, ptr %75, align 4, !dbg !1353
  br label %79, !dbg !1354

76:                                               ; preds = %69
  %77 = load ptr, ptr %2, align 4, !dbg !1355
  %78 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %77, i32 0, i32 5, !dbg !1357
  store i32 0, ptr %78, align 4, !dbg !1358
  br label %79

79:                                               ; preds = %76, %73
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1359
  %81 = and i32 %80, 248, !dbg !1360
  %82 = lshr i32 %81, 3, !dbg !1361
  %83 = load ptr, ptr %2, align 4, !dbg !1362
  %84 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %83, i32 0, i32 6, !dbg !1363
  store i32 %82, ptr %84, align 4, !dbg !1364
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1365
  %86 = and i32 %85, 65536, !dbg !1366
  %87 = icmp ne i32 %86, 0, !dbg !1367
  %88 = zext i1 %87 to i64, !dbg !1368
  %89 = select i1 %87, i32 1, i32 0, !dbg !1368
  %90 = load ptr, ptr %2, align 4, !dbg !1369
  %91 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %90, i32 0, i32 8, !dbg !1370
  store i32 %89, ptr %91, align 4, !dbg !1371
  %92 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1372
  %93 = and i32 %92, 16777216, !dbg !1374
  %94 = icmp eq i32 %93, 16777216, !dbg !1375
  br i1 %94, label %95, label %99, !dbg !1376

95:                                               ; preds = %79
  %96 = load ptr, ptr %2, align 4, !dbg !1377
  %97 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %96, i32 0, i32 9, !dbg !1379
  %98 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %97, i32 0, i32 0, !dbg !1380
  store i32 2, ptr %98, align 4, !dbg !1381
  br label %103, !dbg !1382

99:                                               ; preds = %79
  %100 = load ptr, ptr %2, align 4, !dbg !1383
  %101 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %100, i32 0, i32 9, !dbg !1385
  %102 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %101, i32 0, i32 0, !dbg !1386
  store i32 1, ptr %102, align 4, !dbg !1387
  br label %103

103:                                              ; preds = %99, %95
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1388
  %105 = and i32 %104, 98304, !dbg !1389
  %106 = load ptr, ptr %2, align 4, !dbg !1390
  %107 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %106, i32 0, i32 9, !dbg !1391
  %108 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %107, i32 0, i32 1, !dbg !1392
  store i32 %105, ptr %108, align 4, !dbg !1393
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1394
  %110 = and i32 %109, 3932160, !dbg !1395
  %111 = load ptr, ptr %2, align 4, !dbg !1396
  %112 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %111, i32 0, i32 9, !dbg !1397
  %113 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %112, i32 0, i32 2, !dbg !1398
  store i32 %110, ptr %113, align 4, !dbg !1399
  %114 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !1400
  %115 = and i32 %114, 15, !dbg !1401
  %116 = load ptr, ptr %2, align 4, !dbg !1402
  %117 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %116, i32 0, i32 9, !dbg !1403
  %118 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %117, i32 0, i32 3, !dbg !1404
  store i32 %115, ptr %118, align 4, !dbg !1405
  ret void, !dbg !1406
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_GetClockConfig(ptr noundef %0, ptr noundef %1) #0 !dbg !1407 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1411, metadata !DIExpression()), !dbg !1412
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1413, metadata !DIExpression()), !dbg !1414
  %5 = load ptr, ptr %3, align 4, !dbg !1415
  %6 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %5, i32 0, i32 0, !dbg !1416
  store i32 7, ptr %6, align 4, !dbg !1417
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1418
  %8 = and i32 %7, 3, !dbg !1419
  %9 = load ptr, ptr %3, align 4, !dbg !1420
  %10 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %9, i32 0, i32 1, !dbg !1421
  store i32 %8, ptr %10, align 4, !dbg !1422
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1423
  %12 = and i32 %11, 240, !dbg !1424
  %13 = load ptr, ptr %3, align 4, !dbg !1425
  %14 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %13, i32 0, i32 2, !dbg !1426
  store i32 %12, ptr %14, align 4, !dbg !1427
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1428
  %16 = and i32 %15, 1792, !dbg !1429
  %17 = load ptr, ptr %3, align 4, !dbg !1430
  %18 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %17, i32 0, i32 3, !dbg !1431
  store i32 %16, ptr %18, align 4, !dbg !1432
  %19 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1433
  %20 = and i32 %19, 1, !dbg !1434
  %21 = load ptr, ptr %4, align 4, !dbg !1435
  store i32 %20, ptr %21, align 4, !dbg !1436
  ret void, !dbg !1437
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCC_NMI_IRQHandler() #0 !dbg !1438 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 2), align 4, !dbg !1439
  %2 = and i32 %1, 128, !dbg !1441
  %3 = icmp eq i32 %2, 128, !dbg !1442
  br i1 %3, label %4, label %5, !dbg !1443

4:                                                ; preds = %0
  call void @HAL_RCC_CSSCallback(), !dbg !1444
  store volatile i8 -128, ptr inttoptr (i32 1073877002 to ptr), align 1, !dbg !1446
  br label %5, !dbg !1447

5:                                                ; preds = %4, %0
  ret void, !dbg !1448
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_RCC_CSSCallback() #0 !dbg !1449 {
  ret void, !dbg !1450
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aPLLMULFactorTable", scope: !2, file: !3, line: 1097, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !3, file: !3, line: 1095, type: !4, scopeLine: 1096, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!3 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc.c", directory: "/home/sri/zephyrproject")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 64, baseType: !8)
!7 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !25, globals: !90, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "stm32f0xx_hal_rcc.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !20}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 38, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_def.h", directory: "/home/sri/zephyrproject")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "HAL_OK", value: 0)
!17 = !DIEnumerator(name: "HAL_ERROR", value: 1)
!18 = !DIEnumerator(name: "HAL_BUSY", value: 2)
!19 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 167, baseType: !14, size: 8, elements: !22)
!21 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f0xx.h", directory: "/home/sri/zephyrproject")
!22 = !{!23, !24}
!23 = !DIEnumerator(name: "RESET", value: 0)
!24 = !DIEnumerator(name: "SET", value: 1)
!25 = !{!26, !46, !6, !47, !48, !54, !67, !69, !86, !88}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !28, line: 461, baseType: !29)
!28 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 445, size: 448, elements: !30)
!30 = !{!31, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !29, file: !28, line: 447, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !6)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !29, file: !28, line: 448, baseType: !32, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !29, file: !28, line: 449, baseType: !32, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !29, file: !28, line: 450, baseType: !32, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !29, file: !28, line: 451, baseType: !32, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !29, file: !28, line: 452, baseType: !32, size: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !29, file: !28, line: 453, baseType: !32, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !29, file: !28, line: 454, baseType: !32, size: 32, offset: 224)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !29, file: !28, line: 455, baseType: !32, size: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !29, file: !28, line: 456, baseType: !32, size: 32, offset: 288)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !29, file: !28, line: 457, baseType: !32, size: 32, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !29, file: !28, line: 458, baseType: !32, size: 32, offset: 352)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !29, file: !28, line: 459, baseType: !32, size: 32, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !29, file: !28, line: 460, baseType: !32, size: 32, offset: 416)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !7, line: 62, baseType: !14)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWR_TypeDef", file: !28, line: 439, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 435, size: 64, elements: !51)
!51 = !{!52, !53}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !50, file: !28, line: 437, baseType: !32, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !50, file: !28, line: 438, baseType: !32, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "FLASH_TypeDef", file: !28, line: 350, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 339, size: 288, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ACR", scope: !56, file: !28, line: 341, baseType: !32, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "KEYR", scope: !56, file: !28, line: 342, baseType: !32, size: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "OPTKEYR", scope: !56, file: !28, line: 343, baseType: !32, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "SR", scope: !56, file: !28, line: 344, baseType: !32, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !56, file: !28, line: 345, baseType: !32, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "AR", scope: !56, file: !28, line: 346, baseType: !32, size: 32, offset: 160)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED", scope: !56, file: !28, line: 347, baseType: !32, size: 32, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "OBR", scope: !56, file: !28, line: 348, baseType: !32, size: 32, offset: 224)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "WRPR", scope: !56, file: !28, line: 349, baseType: !32, size: 32, offset: 256)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !7, line: 63, baseType: !68)
!68 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_TypeDef", file: !28, line: 383, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !28, line: 371, size: 352, elements: !72)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !85}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "MODER", scope: !71, file: !28, line: 373, baseType: !32, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "OTYPER", scope: !71, file: !28, line: 374, baseType: !32, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "OSPEEDR", scope: !71, file: !28, line: 375, baseType: !32, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "PUPDR", scope: !71, file: !28, line: 376, baseType: !32, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "IDR", scope: !71, file: !28, line: 377, baseType: !32, size: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ODR", scope: !71, file: !28, line: 378, baseType: !32, size: 32, offset: 160)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "BSRR", scope: !71, file: !28, line: 379, baseType: !32, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "LCKR", scope: !71, file: !28, line: 380, baseType: !32, size: 32, offset: 224)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "AFR", scope: !71, file: !28, line: 381, baseType: !82, size: 64, offset: 256)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 2)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "BRR", scope: !71, file: !28, line: 382, baseType: !32, size: 32, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !7, line: 65, baseType: !87)
!87 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!90 = !{!0, !91}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "aPredivFactorTable", scope: !2, file: !3, line: 1099, type: !93, isLocal: true, isDefinition: true)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !95)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!95 = !{!96}
!96 = !DISubrange(count: 16)
!97 = !{}
!98 = !{i32 7, !"Dwarf Version", i32 4}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 1, !"static_rwdata", i32 1}
!102 = !{i32 1, !"enumsize_buildattr", i32 1}
!103 = !{i32 1, !"armlib_unavailable", i32 0}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!107 = distinct !DISubprogram(name: "HAL_RCC_DeInit", scope: !3, file: !3, line: 208, type: !108, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!108 = !DISubroutineType(types: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !13, line: 44, baseType: !12)
!111 = !DILocalVariable(name: "tickstart", scope: !107, file: !3, line: 210, type: !6)
!112 = !DILocation(line: 210, column: 12, scope: !107)
!113 = !DILocation(line: 213, column: 15, scope: !107)
!114 = !DILocation(line: 213, column: 13, scope: !107)
!115 = !DILocation(line: 216, column: 75, scope: !107)
!116 = !DILocation(line: 219, column: 3, scope: !107)
!117 = !DILocation(line: 219, column: 78, scope: !107)
!118 = !DILocation(line: 219, column: 82, scope: !107)
!119 = !DILocation(line: 219, column: 103, scope: !107)
!120 = !DILocation(line: 221, column: 10, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 221, column: 9)
!122 = distinct !DILexicalBlock(scope: !107, file: !3, line: 220, column: 3)
!123 = !DILocation(line: 221, column: 26, scope: !121)
!124 = !DILocation(line: 221, column: 24, scope: !121)
!125 = !DILocation(line: 221, column: 37, scope: !121)
!126 = !DILocation(line: 221, column: 9, scope: !122)
!127 = !DILocation(line: 223, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 222, column: 5)
!129 = distinct !{!129, !116, !130}
!130 = !DILocation(line: 225, column: 3, scope: !107)
!131 = !DILocation(line: 228, column: 77, scope: !107)
!132 = !DILocation(line: 231, column: 3, scope: !107)
!133 = !DILocation(line: 231, column: 78, scope: !107)
!134 = !DILocation(line: 231, column: 84, scope: !107)
!135 = !DILocation(line: 231, column: 105, scope: !107)
!136 = !DILocation(line: 233, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 233, column: 9)
!138 = distinct !DILexicalBlock(scope: !107, file: !3, line: 232, column: 3)
!139 = !DILocation(line: 233, column: 26, scope: !137)
!140 = !DILocation(line: 233, column: 24, scope: !137)
!141 = !DILocation(line: 233, column: 37, scope: !137)
!142 = !DILocation(line: 233, column: 9, scope: !138)
!143 = !DILocation(line: 235, column: 7, scope: !144)
!144 = distinct !DILexicalBlock(scope: !137, file: !3, line: 234, column: 5)
!145 = distinct !{!145, !132, !146}
!146 = !DILocation(line: 237, column: 3, scope: !107)
!147 = !DILocation(line: 240, column: 19, scope: !107)
!148 = !DILocation(line: 243, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !107, file: !3, line: 243, column: 7)
!150 = !DILocation(line: 243, column: 7, scope: !149)
!151 = !DILocation(line: 243, column: 32, scope: !149)
!152 = !DILocation(line: 243, column: 7, scope: !107)
!153 = !DILocation(line: 245, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 244, column: 3)
!155 = !DILocation(line: 249, column: 75, scope: !107)
!156 = !DILocation(line: 252, column: 75, scope: !107)
!157 = !DILocation(line: 255, column: 15, scope: !107)
!158 = !DILocation(line: 255, column: 13, scope: !107)
!159 = !DILocation(line: 258, column: 3, scope: !107)
!160 = !DILocation(line: 258, column: 77, scope: !107)
!161 = !DILocation(line: 258, column: 81, scope: !107)
!162 = !DILocation(line: 258, column: 103, scope: !107)
!163 = !DILocation(line: 260, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 260, column: 8)
!165 = distinct !DILexicalBlock(scope: !107, file: !3, line: 259, column: 3)
!166 = !DILocation(line: 260, column: 25, scope: !164)
!167 = !DILocation(line: 260, column: 23, scope: !164)
!168 = !DILocation(line: 260, column: 36, scope: !164)
!169 = !DILocation(line: 260, column: 8, scope: !165)
!170 = !DILocation(line: 262, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !3, line: 261, column: 5)
!172 = distinct !{!172, !159, !173}
!173 = !DILocation(line: 264, column: 3, scope: !107)
!174 = !DILocation(line: 267, column: 77, scope: !107)
!175 = !DILocation(line: 270, column: 78, scope: !107)
!176 = !DILocation(line: 273, column: 78, scope: !107)
!177 = !DILocation(line: 276, column: 76, scope: !107)
!178 = !DILocation(line: 279, column: 74, scope: !107)
!179 = !DILocation(line: 281, column: 3, scope: !107)
!180 = !DILocation(line: 282, column: 1, scope: !107)
!181 = distinct !DISubprogram(name: "HAL_RCC_OscConfig", scope: !3, file: !3, line: 298, type: !182, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!182 = !DISubroutineType(types: !183)
!183 = !{!110, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !186, line: 245, baseType: !187)
!186 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc.h", directory: "/home/sri/zephyrproject")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 212, size: 416, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !187, file: !186, line: 214, baseType: !6, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !187, file: !186, line: 217, baseType: !6, size: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !187, file: !186, line: 220, baseType: !6, size: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !187, file: !186, line: 223, baseType: !6, size: 32, offset: 96)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !187, file: !186, line: 226, baseType: !6, size: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "HSI14State", scope: !187, file: !186, line: 229, baseType: !6, size: 32, offset: 160)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "HSI14CalibrationValue", scope: !187, file: !186, line: 232, baseType: !6, size: 32, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !187, file: !186, line: 235, baseType: !6, size: 32, offset: 224)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48State", scope: !187, file: !186, line: 239, baseType: !6, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !187, file: !186, line: 243, baseType: !199, size: 128, offset: 288)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !186, line: 207, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 193, size: 128, elements: !201)
!201 = !{!202, !203, !204, !205}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !200, file: !186, line: 195, baseType: !6, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !200, file: !186, line: 198, baseType: !6, size: 32, offset: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !200, file: !186, line: 201, baseType: !6, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "PREDIV", scope: !200, file: !186, line: 204, baseType: !6, size: 32, offset: 96)
!206 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !181, file: !3, line: 298, type: !184)
!207 = !DILocation(line: 298, column: 57, scope: !181)
!208 = !DILocalVariable(name: "tickstart", scope: !181, file: !3, line: 300, type: !6)
!209 = !DILocation(line: 300, column: 12, scope: !181)
!210 = !DILocalVariable(name: "pll_config", scope: !181, file: !3, line: 301, type: !6)
!211 = !DILocation(line: 301, column: 12, scope: !181)
!212 = !DILocalVariable(name: "pll_config2", scope: !181, file: !3, line: 302, type: !6)
!213 = !DILocation(line: 302, column: 12, scope: !181)
!214 = !DILocation(line: 305, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !181, file: !3, line: 305, column: 6)
!216 = !DILocation(line: 305, column: 24, scope: !215)
!217 = !DILocation(line: 305, column: 6, scope: !181)
!218 = !DILocation(line: 307, column: 5, scope: !219)
!219 = distinct !DILexicalBlock(scope: !215, file: !3, line: 306, column: 3)
!220 = !DILocation(line: 314, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !181, file: !3, line: 314, column: 6)
!222 = !DILocation(line: 314, column: 27, scope: !221)
!223 = !DILocation(line: 314, column: 43, scope: !221)
!224 = !DILocation(line: 314, column: 60, scope: !221)
!225 = !DILocation(line: 314, column: 6, scope: !181)
!226 = !DILocation(line: 320, column: 87, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 320, column: 8)
!228 = distinct !DILexicalBlock(scope: !221, file: !3, line: 315, column: 3)
!229 = !DILocation(line: 320, column: 92, scope: !227)
!230 = !DILocation(line: 320, column: 112, scope: !227)
!231 = !DILocation(line: 321, column: 8, scope: !227)
!232 = !DILocation(line: 321, column: 91, scope: !227)
!233 = !DILocation(line: 321, column: 96, scope: !227)
!234 = !DILocation(line: 321, column: 116, scope: !227)
!235 = !DILocation(line: 321, column: 134, scope: !227)
!236 = !DILocation(line: 321, column: 218, scope: !227)
!237 = !DILocation(line: 321, column: 224, scope: !227)
!238 = !DILocation(line: 321, column: 248, scope: !227)
!239 = !DILocation(line: 320, column: 8, scope: !228)
!240 = !DILocation(line: 323, column: 149, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 323, column: 10)
!242 = distinct !DILexicalBlock(scope: !227, file: !3, line: 322, column: 5)
!243 = !DILocation(line: 323, column: 511, scope: !241)
!244 = !DILocation(line: 323, column: 585, scope: !241)
!245 = !DILocation(line: 323, column: 595, scope: !241)
!246 = !DILocation(line: 323, column: 599, scope: !241)
!247 = !DILocation(line: 323, column: 618, scope: !241)
!248 = !DILocation(line: 323, column: 627, scope: !241)
!249 = !DILocation(line: 323, column: 10, scope: !242)
!250 = !DILocation(line: 325, column: 9, scope: !251)
!251 = distinct !DILexicalBlock(scope: !241, file: !3, line: 324, column: 7)
!252 = !DILocation(line: 327, column: 5, scope: !242)
!253 = !DILocation(line: 331, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !227, file: !3, line: 329, column: 5)
!255 = !DILocation(line: 331, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 331, column: 15)
!257 = distinct !DILexicalBlock(scope: !254, file: !3, line: 331, column: 9)
!258 = !DILocation(line: 331, column: 35, scope: !256)
!259 = !DILocation(line: 331, column: 45, scope: !256)
!260 = !DILocation(line: 331, column: 15, scope: !257)
!261 = !DILocation(line: 331, column: 137, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !3, line: 331, column: 63)
!263 = !DILocation(line: 331, column: 161, scope: !262)
!264 = !DILocation(line: 331, column: 173, scope: !265)
!265 = distinct !DILexicalBlock(scope: !256, file: !3, line: 331, column: 172)
!266 = !DILocation(line: 331, column: 192, scope: !265)
!267 = !DILocation(line: 331, column: 202, scope: !265)
!268 = !DILocation(line: 331, column: 172, scope: !256)
!269 = !DILocation(line: 331, column: 294, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 331, column: 220)
!271 = !DILocation(line: 331, column: 391, scope: !270)
!272 = !DILocation(line: 331, column: 416, scope: !270)
!273 = !DILocation(line: 331, column: 428, scope: !274)
!274 = distinct !DILexicalBlock(scope: !265, file: !3, line: 331, column: 427)
!275 = !DILocation(line: 331, column: 447, scope: !274)
!276 = !DILocation(line: 331, column: 457, scope: !274)
!277 = !DILocation(line: 331, column: 427, scope: !265)
!278 = !DILocation(line: 331, column: 549, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 331, column: 475)
!280 = !DILocation(line: 331, column: 645, scope: !279)
!281 = !DILocation(line: 331, column: 669, scope: !279)
!282 = !DILocation(line: 331, column: 750, scope: !283)
!283 = distinct !DILexicalBlock(scope: !274, file: !3, line: 331, column: 676)
!284 = !DILocation(line: 331, column: 847, scope: !283)
!285 = !DILocation(line: 331, column: 874, scope: !257)
!286 = !DILocation(line: 335, column: 10, scope: !287)
!287 = distinct !DILexicalBlock(scope: !254, file: !3, line: 335, column: 10)
!288 = !DILocation(line: 335, column: 29, scope: !287)
!289 = !DILocation(line: 335, column: 38, scope: !287)
!290 = !DILocation(line: 335, column: 10, scope: !254)
!291 = !DILocation(line: 338, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !3, line: 336, column: 7)
!293 = !DILocation(line: 338, column: 19, scope: !292)
!294 = !DILocation(line: 341, column: 9, scope: !292)
!295 = !DILocation(line: 341, column: 153, scope: !292)
!296 = !DILocation(line: 341, column: 515, scope: !292)
!297 = !DILocation(line: 341, column: 589, scope: !292)
!298 = !DILocation(line: 343, column: 15, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 343, column: 14)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 342, column: 9)
!301 = !DILocation(line: 343, column: 31, scope: !299)
!302 = !DILocation(line: 343, column: 29, scope: !299)
!303 = !DILocation(line: 343, column: 43, scope: !299)
!304 = !DILocation(line: 343, column: 14, scope: !300)
!305 = !DILocation(line: 345, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !299, file: !3, line: 344, column: 11)
!307 = distinct !{!307, !294, !308}
!308 = !DILocation(line: 347, column: 9, scope: !292)
!309 = !DILocation(line: 348, column: 7, scope: !292)
!310 = !DILocation(line: 352, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !287, file: !3, line: 350, column: 7)
!312 = !DILocation(line: 352, column: 19, scope: !311)
!313 = !DILocation(line: 355, column: 9, scope: !311)
!314 = !DILocation(line: 355, column: 153, scope: !311)
!315 = !DILocation(line: 355, column: 515, scope: !311)
!316 = !DILocation(line: 355, column: 589, scope: !311)
!317 = !DILocation(line: 357, column: 16, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 357, column: 15)
!319 = distinct !DILexicalBlock(scope: !311, file: !3, line: 356, column: 9)
!320 = !DILocation(line: 357, column: 32, scope: !318)
!321 = !DILocation(line: 357, column: 30, scope: !318)
!322 = !DILocation(line: 357, column: 44, scope: !318)
!323 = !DILocation(line: 357, column: 15, scope: !319)
!324 = !DILocation(line: 359, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !3, line: 358, column: 11)
!326 = distinct !{!326, !313, !327}
!327 = !DILocation(line: 361, column: 9, scope: !311)
!328 = !DILocation(line: 364, column: 3, scope: !228)
!329 = !DILocation(line: 366, column: 8, scope: !330)
!330 = distinct !DILexicalBlock(scope: !181, file: !3, line: 366, column: 6)
!331 = !DILocation(line: 366, column: 27, scope: !330)
!332 = !DILocation(line: 366, column: 43, scope: !330)
!333 = !DILocation(line: 366, column: 60, scope: !330)
!334 = !DILocation(line: 366, column: 6, scope: !181)
!335 = !DILocation(line: 373, column: 87, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !3, line: 373, column: 8)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 367, column: 3)
!338 = !DILocation(line: 373, column: 92, scope: !336)
!339 = !DILocation(line: 373, column: 112, scope: !336)
!340 = !DILocation(line: 374, column: 8, scope: !336)
!341 = !DILocation(line: 374, column: 91, scope: !336)
!342 = !DILocation(line: 374, column: 96, scope: !336)
!343 = !DILocation(line: 374, column: 116, scope: !336)
!344 = !DILocation(line: 374, column: 134, scope: !336)
!345 = !DILocation(line: 374, column: 218, scope: !336)
!346 = !DILocation(line: 374, column: 224, scope: !336)
!347 = !DILocation(line: 374, column: 248, scope: !336)
!348 = !DILocation(line: 373, column: 8, scope: !337)
!349 = !DILocation(line: 377, column: 148, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 377, column: 10)
!351 = distinct !DILexicalBlock(scope: !336, file: !3, line: 375, column: 5)
!352 = !DILocation(line: 377, column: 508, scope: !350)
!353 = !DILocation(line: 377, column: 581, scope: !350)
!354 = !DILocation(line: 377, column: 591, scope: !350)
!355 = !DILocation(line: 377, column: 595, scope: !350)
!356 = !DILocation(line: 377, column: 614, scope: !350)
!357 = !DILocation(line: 377, column: 623, scope: !350)
!358 = !DILocation(line: 377, column: 10, scope: !351)
!359 = !DILocation(line: 379, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !350, file: !3, line: 378, column: 7)
!361 = !DILocation(line: 385, column: 157, scope: !362)
!362 = distinct !DILexicalBlock(scope: !350, file: !3, line: 383, column: 7)
!363 = !DILocation(line: 385, column: 163, scope: !362)
!364 = !DILocation(line: 385, column: 202, scope: !362)
!365 = !DILocation(line: 385, column: 221, scope: !362)
!366 = !DILocation(line: 385, column: 242, scope: !362)
!367 = !DILocation(line: 385, column: 188, scope: !362)
!368 = !DILocation(line: 385, column: 83, scope: !362)
!369 = !DILocation(line: 387, column: 5, scope: !351)
!370 = !DILocation(line: 391, column: 10, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 391, column: 10)
!372 = distinct !DILexicalBlock(scope: !336, file: !3, line: 389, column: 5)
!373 = !DILocation(line: 391, column: 29, scope: !371)
!374 = !DILocation(line: 391, column: 38, scope: !371)
!375 = !DILocation(line: 391, column: 10, scope: !372)
!376 = !DILocation(line: 394, column: 81, scope: !377)
!377 = distinct !DILexicalBlock(scope: !371, file: !3, line: 392, column: 7)
!378 = !DILocation(line: 397, column: 21, scope: !377)
!379 = !DILocation(line: 397, column: 19, scope: !377)
!380 = !DILocation(line: 400, column: 9, scope: !377)
!381 = !DILocation(line: 400, column: 152, scope: !377)
!382 = !DILocation(line: 400, column: 512, scope: !377)
!383 = !DILocation(line: 400, column: 585, scope: !377)
!384 = !DILocation(line: 402, column: 15, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 402, column: 14)
!386 = distinct !DILexicalBlock(scope: !377, file: !3, line: 401, column: 9)
!387 = !DILocation(line: 402, column: 31, scope: !385)
!388 = !DILocation(line: 402, column: 29, scope: !385)
!389 = !DILocation(line: 402, column: 43, scope: !385)
!390 = !DILocation(line: 402, column: 14, scope: !386)
!391 = !DILocation(line: 404, column: 13, scope: !392)
!392 = distinct !DILexicalBlock(scope: !385, file: !3, line: 403, column: 11)
!393 = distinct !{!393, !380, !394}
!394 = !DILocation(line: 406, column: 9, scope: !377)
!395 = !DILocation(line: 409, column: 157, scope: !377)
!396 = !DILocation(line: 409, column: 163, scope: !377)
!397 = !DILocation(line: 409, column: 202, scope: !377)
!398 = !DILocation(line: 409, column: 221, scope: !377)
!399 = !DILocation(line: 409, column: 242, scope: !377)
!400 = !DILocation(line: 409, column: 188, scope: !377)
!401 = !DILocation(line: 409, column: 83, scope: !377)
!402 = !DILocation(line: 410, column: 7, scope: !377)
!403 = !DILocation(line: 414, column: 81, scope: !404)
!404 = distinct !DILexicalBlock(scope: !371, file: !3, line: 412, column: 7)
!405 = !DILocation(line: 417, column: 21, scope: !404)
!406 = !DILocation(line: 417, column: 19, scope: !404)
!407 = !DILocation(line: 420, column: 9, scope: !404)
!408 = !DILocation(line: 420, column: 152, scope: !404)
!409 = !DILocation(line: 420, column: 512, scope: !404)
!410 = !DILocation(line: 420, column: 585, scope: !404)
!411 = !DILocation(line: 422, column: 15, scope: !412)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 422, column: 14)
!413 = distinct !DILexicalBlock(scope: !404, file: !3, line: 421, column: 9)
!414 = !DILocation(line: 422, column: 31, scope: !412)
!415 = !DILocation(line: 422, column: 29, scope: !412)
!416 = !DILocation(line: 422, column: 43, scope: !412)
!417 = !DILocation(line: 422, column: 14, scope: !413)
!418 = !DILocation(line: 424, column: 13, scope: !419)
!419 = distinct !DILexicalBlock(scope: !412, file: !3, line: 423, column: 11)
!420 = distinct !{!420, !407, !421}
!421 = !DILocation(line: 426, column: 9, scope: !404)
!422 = !DILocation(line: 429, column: 3, scope: !337)
!423 = !DILocation(line: 431, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !181, file: !3, line: 431, column: 6)
!425 = !DILocation(line: 431, column: 27, scope: !424)
!426 = !DILocation(line: 431, column: 43, scope: !424)
!427 = !DILocation(line: 431, column: 60, scope: !424)
!428 = !DILocation(line: 431, column: 6, scope: !181)
!429 = !DILocation(line: 437, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 437, column: 8)
!431 = distinct !DILexicalBlock(scope: !424, file: !3, line: 432, column: 3)
!432 = !DILocation(line: 437, column: 27, scope: !430)
!433 = !DILocation(line: 437, column: 36, scope: !430)
!434 = !DILocation(line: 437, column: 8, scope: !431)
!435 = !DILocation(line: 440, column: 80, scope: !436)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 438, column: 5)
!437 = !DILocation(line: 443, column: 19, scope: !436)
!438 = !DILocation(line: 443, column: 17, scope: !436)
!439 = !DILocation(line: 446, column: 7, scope: !436)
!440 = !DILocation(line: 446, column: 505, scope: !436)
!441 = !DILocation(line: 446, column: 510, scope: !436)
!442 = !DILocation(line: 446, column: 583, scope: !436)
!443 = !DILocation(line: 448, column: 13, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 448, column: 12)
!445 = distinct !DILexicalBlock(scope: !436, file: !3, line: 447, column: 7)
!446 = !DILocation(line: 448, column: 29, scope: !444)
!447 = !DILocation(line: 448, column: 27, scope: !444)
!448 = !DILocation(line: 448, column: 41, scope: !444)
!449 = !DILocation(line: 448, column: 12, scope: !445)
!450 = !DILocation(line: 450, column: 11, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !3, line: 449, column: 9)
!452 = distinct !{!452, !439, !453}
!453 = !DILocation(line: 452, column: 7, scope: !436)
!454 = !DILocation(line: 453, column: 5, scope: !436)
!455 = !DILocation(line: 457, column: 80, scope: !456)
!456 = distinct !DILexicalBlock(scope: !430, file: !3, line: 455, column: 5)
!457 = !DILocation(line: 460, column: 19, scope: !456)
!458 = !DILocation(line: 460, column: 17, scope: !456)
!459 = !DILocation(line: 463, column: 7, scope: !456)
!460 = !DILocation(line: 463, column: 505, scope: !456)
!461 = !DILocation(line: 463, column: 510, scope: !456)
!462 = !DILocation(line: 463, column: 583, scope: !456)
!463 = !DILocation(line: 465, column: 13, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 465, column: 12)
!465 = distinct !DILexicalBlock(scope: !456, file: !3, line: 464, column: 7)
!466 = !DILocation(line: 465, column: 29, scope: !464)
!467 = !DILocation(line: 465, column: 27, scope: !464)
!468 = !DILocation(line: 465, column: 41, scope: !464)
!469 = !DILocation(line: 465, column: 12, scope: !465)
!470 = !DILocation(line: 467, column: 11, scope: !471)
!471 = distinct !DILexicalBlock(scope: !464, file: !3, line: 466, column: 9)
!472 = distinct !{!472, !459, !473}
!473 = !DILocation(line: 469, column: 7, scope: !456)
!474 = !DILocation(line: 471, column: 3, scope: !431)
!475 = !DILocation(line: 473, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !181, file: !3, line: 473, column: 6)
!477 = !DILocation(line: 473, column: 27, scope: !476)
!478 = !DILocation(line: 473, column: 43, scope: !476)
!479 = !DILocation(line: 473, column: 60, scope: !476)
!480 = !DILocation(line: 473, column: 6, scope: !181)
!481 = !DILocalVariable(name: "pwrclkchanged", scope: !482, file: !3, line: 475, type: !483)
!482 = distinct !DILexicalBlock(scope: !476, file: !3, line: 474, column: 3)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !21, line: 171, baseType: !20)
!484 = !DILocation(line: 475, column: 16, scope: !482)
!485 = !DILocation(line: 482, column: 76, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 482, column: 8)
!487 = !DILocation(line: 482, column: 84, scope: !486)
!488 = !DILocation(line: 482, column: 106, scope: !486)
!489 = !DILocation(line: 482, column: 8, scope: !482)
!490 = !DILocation(line: 484, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !486, file: !3, line: 483, column: 5)
!492 = !DILocalVariable(name: "tmpreg", scope: !493, file: !3, line: 484, type: !32)
!493 = distinct !DILexicalBlock(scope: !491, file: !3, line: 484, column: 10)
!494 = !DILocation(line: 484, column: 30, scope: !493)
!495 = !DILocation(line: 484, column: 115, scope: !493)
!496 = !DILocation(line: 484, column: 216, scope: !493)
!497 = !DILocation(line: 484, column: 225, scope: !493)
!498 = !DILocation(line: 484, column: 146, scope: !493)
!499 = !DILocation(line: 484, column: 254, scope: !493)
!500 = !DILocation(line: 484, column: 262, scope: !493)
!501 = !DILocation(line: 485, column: 21, scope: !491)
!502 = !DILocation(line: 486, column: 5, scope: !491)
!503 = !DILocation(line: 488, column: 60, scope: !504)
!504 = distinct !DILexicalBlock(scope: !482, file: !3, line: 488, column: 8)
!505 = !DILocation(line: 488, column: 64, scope: !504)
!506 = !DILocation(line: 488, column: 85, scope: !504)
!507 = !DILocation(line: 488, column: 8, scope: !482)
!508 = !DILocation(line: 491, column: 62, scope: !509)
!509 = distinct !DILexicalBlock(scope: !504, file: !3, line: 489, column: 5)
!510 = !DILocation(line: 494, column: 19, scope: !509)
!511 = !DILocation(line: 494, column: 17, scope: !509)
!512 = !DILocation(line: 496, column: 7, scope: !509)
!513 = !DILocation(line: 496, column: 65, scope: !509)
!514 = !DILocation(line: 496, column: 69, scope: !509)
!515 = !DILocation(line: 496, column: 90, scope: !509)
!516 = !DILocation(line: 498, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 498, column: 12)
!518 = distinct !DILexicalBlock(scope: !509, file: !3, line: 497, column: 7)
!519 = !DILocation(line: 498, column: 29, scope: !517)
!520 = !DILocation(line: 498, column: 27, scope: !517)
!521 = !DILocation(line: 498, column: 40, scope: !517)
!522 = !DILocation(line: 498, column: 12, scope: !518)
!523 = !DILocation(line: 500, column: 11, scope: !524)
!524 = distinct !DILexicalBlock(scope: !517, file: !3, line: 499, column: 9)
!525 = distinct !{!525, !512, !526}
!526 = !DILocation(line: 502, column: 7, scope: !509)
!527 = !DILocation(line: 503, column: 5, scope: !509)
!528 = !DILocation(line: 506, column: 5, scope: !482)
!529 = !DILocation(line: 506, column: 14, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 506, column: 13)
!531 = distinct !DILexicalBlock(scope: !482, file: !3, line: 506, column: 7)
!532 = !DILocation(line: 506, column: 33, scope: !530)
!533 = !DILocation(line: 506, column: 43, scope: !530)
!534 = !DILocation(line: 506, column: 13, scope: !531)
!535 = !DILocation(line: 506, column: 137, scope: !536)
!536 = distinct !DILexicalBlock(scope: !530, file: !3, line: 506, column: 61)
!537 = !DILocation(line: 506, column: 160, scope: !536)
!538 = !DILocation(line: 506, column: 172, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !3, line: 506, column: 171)
!540 = !DILocation(line: 506, column: 191, scope: !539)
!541 = !DILocation(line: 506, column: 201, scope: !539)
!542 = !DILocation(line: 506, column: 171, scope: !530)
!543 = !DILocation(line: 506, column: 295, scope: !544)
!544 = distinct !DILexicalBlock(scope: !539, file: !3, line: 506, column: 219)
!545 = !DILocation(line: 506, column: 393, scope: !544)
!546 = !DILocation(line: 506, column: 417, scope: !544)
!547 = !DILocation(line: 506, column: 429, scope: !548)
!548 = distinct !DILexicalBlock(scope: !539, file: !3, line: 506, column: 428)
!549 = !DILocation(line: 506, column: 448, scope: !548)
!550 = !DILocation(line: 506, column: 458, scope: !548)
!551 = !DILocation(line: 506, column: 428, scope: !539)
!552 = !DILocation(line: 506, column: 552, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !3, line: 506, column: 476)
!554 = !DILocation(line: 506, column: 649, scope: !553)
!555 = !DILocation(line: 506, column: 672, scope: !553)
!556 = !DILocation(line: 506, column: 755, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !3, line: 506, column: 679)
!558 = !DILocation(line: 506, column: 853, scope: !557)
!559 = !DILocation(line: 506, column: 879, scope: !531)
!560 = !DILocation(line: 508, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !482, file: !3, line: 508, column: 8)
!562 = !DILocation(line: 508, column: 27, scope: !561)
!563 = !DILocation(line: 508, column: 36, scope: !561)
!564 = !DILocation(line: 508, column: 8, scope: !482)
!565 = !DILocation(line: 511, column: 19, scope: !566)
!566 = distinct !DILexicalBlock(scope: !561, file: !3, line: 509, column: 5)
!567 = !DILocation(line: 511, column: 17, scope: !566)
!568 = !DILocation(line: 514, column: 7, scope: !566)
!569 = !DILocation(line: 514, column: 432, scope: !566)
!570 = !DILocation(line: 514, column: 510, scope: !566)
!571 = !DILocation(line: 514, column: 583, scope: !566)
!572 = !DILocation(line: 516, column: 13, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 516, column: 12)
!574 = distinct !DILexicalBlock(scope: !566, file: !3, line: 515, column: 7)
!575 = !DILocation(line: 516, column: 29, scope: !573)
!576 = !DILocation(line: 516, column: 27, scope: !573)
!577 = !DILocation(line: 516, column: 41, scope: !573)
!578 = !DILocation(line: 516, column: 12, scope: !574)
!579 = !DILocation(line: 518, column: 11, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !3, line: 517, column: 9)
!581 = distinct !{!581, !568, !582}
!582 = !DILocation(line: 520, column: 7, scope: !566)
!583 = !DILocation(line: 521, column: 5, scope: !566)
!584 = !DILocation(line: 525, column: 19, scope: !585)
!585 = distinct !DILexicalBlock(scope: !561, file: !3, line: 523, column: 5)
!586 = !DILocation(line: 525, column: 17, scope: !585)
!587 = !DILocation(line: 528, column: 7, scope: !585)
!588 = !DILocation(line: 528, column: 432, scope: !585)
!589 = !DILocation(line: 528, column: 510, scope: !585)
!590 = !DILocation(line: 528, column: 583, scope: !585)
!591 = !DILocation(line: 530, column: 13, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 530, column: 12)
!593 = distinct !DILexicalBlock(scope: !585, file: !3, line: 529, column: 7)
!594 = !DILocation(line: 530, column: 29, scope: !592)
!595 = !DILocation(line: 530, column: 27, scope: !592)
!596 = !DILocation(line: 530, column: 41, scope: !592)
!597 = !DILocation(line: 530, column: 12, scope: !593)
!598 = !DILocation(line: 532, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !3, line: 531, column: 9)
!600 = distinct !{!600, !587, !601}
!601 = !DILocation(line: 534, column: 7, scope: !585)
!602 = !DILocation(line: 538, column: 8, scope: !603)
!603 = distinct !DILexicalBlock(scope: !482, file: !3, line: 538, column: 8)
!604 = !DILocation(line: 538, column: 22, scope: !603)
!605 = !DILocation(line: 538, column: 8, scope: !482)
!606 = !DILocation(line: 540, column: 82, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 539, column: 5)
!608 = !DILocation(line: 541, column: 5, scope: !607)
!609 = !DILocation(line: 542, column: 3, scope: !482)
!610 = !DILocation(line: 545, column: 8, scope: !611)
!611 = distinct !DILexicalBlock(scope: !181, file: !3, line: 545, column: 6)
!612 = !DILocation(line: 545, column: 27, scope: !611)
!613 = !DILocation(line: 545, column: 43, scope: !611)
!614 = !DILocation(line: 545, column: 60, scope: !611)
!615 = !DILocation(line: 545, column: 6, scope: !181)
!616 = !DILocation(line: 552, column: 8, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 552, column: 8)
!618 = distinct !DILexicalBlock(scope: !611, file: !3, line: 546, column: 3)
!619 = !DILocation(line: 552, column: 27, scope: !617)
!620 = !DILocation(line: 552, column: 38, scope: !617)
!621 = !DILocation(line: 552, column: 8, scope: !618)
!622 = !DILocation(line: 555, column: 80, scope: !623)
!623 = distinct !DILexicalBlock(scope: !617, file: !3, line: 553, column: 5)
!624 = !DILocation(line: 558, column: 80, scope: !623)
!625 = !DILocation(line: 561, column: 19, scope: !623)
!626 = !DILocation(line: 561, column: 17, scope: !623)
!627 = !DILocation(line: 564, column: 7, scope: !623)
!628 = !DILocation(line: 564, column: 290, scope: !623)
!629 = !DILocation(line: 564, column: 510, scope: !623)
!630 = !DILocation(line: 564, column: 583, scope: !623)
!631 = !DILocation(line: 566, column: 13, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !3, line: 566, column: 12)
!633 = distinct !DILexicalBlock(scope: !623, file: !3, line: 565, column: 7)
!634 = !DILocation(line: 566, column: 29, scope: !632)
!635 = !DILocation(line: 566, column: 27, scope: !632)
!636 = !DILocation(line: 566, column: 40, scope: !632)
!637 = !DILocation(line: 566, column: 12, scope: !633)
!638 = !DILocation(line: 568, column: 11, scope: !639)
!639 = distinct !DILexicalBlock(scope: !632, file: !3, line: 567, column: 9)
!640 = distinct !{!640, !627, !641}
!641 = !DILocation(line: 570, column: 7, scope: !623)
!642 = !DILocation(line: 573, column: 156, scope: !623)
!643 = !DILocation(line: 573, column: 163, scope: !623)
!644 = !DILocation(line: 573, column: 202, scope: !623)
!645 = !DILocation(line: 573, column: 221, scope: !623)
!646 = !DILocation(line: 573, column: 244, scope: !623)
!647 = !DILocation(line: 573, column: 188, scope: !623)
!648 = !DILocation(line: 573, column: 82, scope: !623)
!649 = !DILocation(line: 574, column: 5, scope: !623)
!650 = !DILocation(line: 575, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !617, file: !3, line: 575, column: 13)
!652 = !DILocation(line: 575, column: 32, scope: !651)
!653 = !DILocation(line: 575, column: 43, scope: !651)
!654 = !DILocation(line: 575, column: 13, scope: !617)
!655 = !DILocation(line: 578, column: 80, scope: !656)
!656 = distinct !DILexicalBlock(scope: !651, file: !3, line: 576, column: 5)
!657 = !DILocation(line: 581, column: 156, scope: !656)
!658 = !DILocation(line: 581, column: 163, scope: !656)
!659 = !DILocation(line: 581, column: 202, scope: !656)
!660 = !DILocation(line: 581, column: 221, scope: !656)
!661 = !DILocation(line: 581, column: 244, scope: !656)
!662 = !DILocation(line: 581, column: 188, scope: !656)
!663 = !DILocation(line: 581, column: 82, scope: !656)
!664 = !DILocation(line: 582, column: 5, scope: !656)
!665 = !DILocation(line: 586, column: 80, scope: !666)
!666 = distinct !DILexicalBlock(scope: !651, file: !3, line: 584, column: 5)
!667 = !DILocation(line: 589, column: 80, scope: !666)
!668 = !DILocation(line: 592, column: 19, scope: !666)
!669 = !DILocation(line: 592, column: 17, scope: !666)
!670 = !DILocation(line: 595, column: 7, scope: !666)
!671 = !DILocation(line: 595, column: 290, scope: !666)
!672 = !DILocation(line: 595, column: 510, scope: !666)
!673 = !DILocation(line: 595, column: 583, scope: !666)
!674 = !DILocation(line: 597, column: 13, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !3, line: 597, column: 12)
!676 = distinct !DILexicalBlock(scope: !666, file: !3, line: 596, column: 7)
!677 = !DILocation(line: 597, column: 29, scope: !675)
!678 = !DILocation(line: 597, column: 27, scope: !675)
!679 = !DILocation(line: 597, column: 40, scope: !675)
!680 = !DILocation(line: 597, column: 12, scope: !676)
!681 = !DILocation(line: 599, column: 11, scope: !682)
!682 = distinct !DILexicalBlock(scope: !675, file: !3, line: 598, column: 9)
!683 = distinct !{!683, !670, !684}
!684 = !DILocation(line: 601, column: 7, scope: !666)
!685 = !DILocation(line: 603, column: 3, scope: !618)
!686 = !DILocation(line: 607, column: 8, scope: !687)
!687 = distinct !DILexicalBlock(scope: !181, file: !3, line: 607, column: 6)
!688 = !DILocation(line: 607, column: 27, scope: !687)
!689 = !DILocation(line: 607, column: 43, scope: !687)
!690 = !DILocation(line: 607, column: 60, scope: !687)
!691 = !DILocation(line: 607, column: 6, scope: !181)
!692 = !DILocation(line: 613, column: 87, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 613, column: 8)
!694 = distinct !DILexicalBlock(scope: !687, file: !3, line: 608, column: 3)
!695 = !DILocation(line: 613, column: 92, scope: !693)
!696 = !DILocation(line: 613, column: 112, scope: !693)
!697 = !DILocation(line: 613, column: 130, scope: !693)
!698 = !DILocation(line: 614, column: 88, scope: !693)
!699 = !DILocation(line: 614, column: 93, scope: !693)
!700 = !DILocation(line: 614, column: 113, scope: !693)
!701 = !DILocation(line: 614, column: 131, scope: !693)
!702 = !DILocation(line: 614, column: 215, scope: !693)
!703 = !DILocation(line: 614, column: 221, scope: !693)
!704 = !DILocation(line: 614, column: 245, scope: !693)
!705 = !DILocation(line: 613, column: 8, scope: !694)
!706 = !DILocation(line: 616, column: 290, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 616, column: 10)
!708 = distinct !DILexicalBlock(scope: !693, file: !3, line: 615, column: 5)
!709 = !DILocation(line: 616, column: 511, scope: !707)
!710 = !DILocation(line: 616, column: 585, scope: !707)
!711 = !DILocation(line: 616, column: 595, scope: !707)
!712 = !DILocation(line: 616, column: 599, scope: !707)
!713 = !DILocation(line: 616, column: 618, scope: !707)
!714 = !DILocation(line: 616, column: 629, scope: !707)
!715 = !DILocation(line: 616, column: 10, scope: !708)
!716 = !DILocation(line: 618, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !707, file: !3, line: 617, column: 7)
!718 = !DILocation(line: 620, column: 5, scope: !708)
!719 = !DILocation(line: 624, column: 10, scope: !720)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 624, column: 10)
!721 = distinct !DILexicalBlock(scope: !693, file: !3, line: 622, column: 5)
!722 = !DILocation(line: 624, column: 29, scope: !720)
!723 = !DILocation(line: 624, column: 40, scope: !720)
!724 = !DILocation(line: 624, column: 10, scope: !721)
!725 = !DILocation(line: 627, column: 82, scope: !726)
!726 = distinct !DILexicalBlock(scope: !720, file: !3, line: 625, column: 7)
!727 = !DILocation(line: 630, column: 21, scope: !726)
!728 = !DILocation(line: 630, column: 19, scope: !726)
!729 = !DILocation(line: 633, column: 9, scope: !726)
!730 = !DILocation(line: 633, column: 294, scope: !726)
!731 = !DILocation(line: 633, column: 515, scope: !726)
!732 = !DILocation(line: 633, column: 589, scope: !726)
!733 = !DILocation(line: 635, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 635, column: 14)
!735 = distinct !DILexicalBlock(scope: !726, file: !3, line: 634, column: 9)
!736 = !DILocation(line: 635, column: 31, scope: !734)
!737 = !DILocation(line: 635, column: 29, scope: !734)
!738 = !DILocation(line: 635, column: 42, scope: !734)
!739 = !DILocation(line: 635, column: 14, scope: !735)
!740 = !DILocation(line: 637, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !3, line: 636, column: 11)
!742 = distinct !{!742, !729, !743}
!743 = !DILocation(line: 639, column: 9, scope: !726)
!744 = !DILocation(line: 640, column: 7, scope: !726)
!745 = !DILocation(line: 644, column: 82, scope: !746)
!746 = distinct !DILexicalBlock(scope: !720, file: !3, line: 642, column: 7)
!747 = !DILocation(line: 647, column: 21, scope: !746)
!748 = !DILocation(line: 647, column: 19, scope: !746)
!749 = !DILocation(line: 650, column: 9, scope: !746)
!750 = !DILocation(line: 650, column: 294, scope: !746)
!751 = !DILocation(line: 650, column: 515, scope: !746)
!752 = !DILocation(line: 650, column: 589, scope: !746)
!753 = !DILocation(line: 652, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 652, column: 14)
!755 = distinct !DILexicalBlock(scope: !746, file: !3, line: 651, column: 9)
!756 = !DILocation(line: 652, column: 31, scope: !754)
!757 = !DILocation(line: 652, column: 29, scope: !754)
!758 = !DILocation(line: 652, column: 42, scope: !754)
!759 = !DILocation(line: 652, column: 14, scope: !755)
!760 = !DILocation(line: 654, column: 13, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !3, line: 653, column: 11)
!762 = distinct !{!762, !749, !763}
!763 = !DILocation(line: 656, column: 9, scope: !746)
!764 = !DILocation(line: 659, column: 3, scope: !694)
!765 = !DILocation(line: 665, column: 8, scope: !766)
!766 = distinct !DILexicalBlock(scope: !181, file: !3, line: 665, column: 7)
!767 = !DILocation(line: 665, column: 27, scope: !766)
!768 = !DILocation(line: 665, column: 31, scope: !766)
!769 = !DILocation(line: 665, column: 41, scope: !766)
!770 = !DILocation(line: 665, column: 7, scope: !181)
!771 = !DILocation(line: 668, column: 86, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 668, column: 8)
!773 = distinct !DILexicalBlock(scope: !766, file: !3, line: 666, column: 3)
!774 = !DILocation(line: 668, column: 91, scope: !772)
!775 = !DILocation(line: 668, column: 111, scope: !772)
!776 = !DILocation(line: 668, column: 8, scope: !773)
!777 = !DILocation(line: 670, column: 11, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !3, line: 670, column: 10)
!779 = distinct !DILexicalBlock(scope: !772, file: !3, line: 669, column: 5)
!780 = !DILocation(line: 670, column: 30, scope: !778)
!781 = !DILocation(line: 670, column: 34, scope: !778)
!782 = !DILocation(line: 670, column: 44, scope: !778)
!783 = !DILocation(line: 670, column: 10, scope: !779)
!784 = !DILocation(line: 678, column: 81, scope: !785)
!785 = distinct !DILexicalBlock(scope: !778, file: !3, line: 671, column: 7)
!786 = !DILocation(line: 681, column: 21, scope: !785)
!787 = !DILocation(line: 681, column: 19, scope: !785)
!788 = !DILocation(line: 684, column: 9, scope: !785)
!789 = !DILocation(line: 684, column: 153, scope: !785)
!790 = !DILocation(line: 684, column: 515, scope: !785)
!791 = !DILocation(line: 684, column: 589, scope: !785)
!792 = !DILocation(line: 686, column: 15, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 686, column: 14)
!794 = distinct !DILexicalBlock(scope: !785, file: !3, line: 685, column: 9)
!795 = !DILocation(line: 686, column: 31, scope: !793)
!796 = !DILocation(line: 686, column: 29, scope: !793)
!797 = !DILocation(line: 686, column: 43, scope: !793)
!798 = !DILocation(line: 686, column: 14, scope: !794)
!799 = !DILocation(line: 688, column: 13, scope: !800)
!800 = distinct !DILexicalBlock(scope: !793, file: !3, line: 687, column: 11)
!801 = distinct !{!801, !788, !802}
!802 = !DILocation(line: 690, column: 9, scope: !785)
!803 = !DILocation(line: 693, column: 9, scope: !785)
!804 = !DILocation(line: 693, column: 165, scope: !805)
!805 = distinct !DILexicalBlock(scope: !785, file: !3, line: 693, column: 12)
!806 = !DILocation(line: 693, column: 174, scope: !805)
!807 = !DILocation(line: 693, column: 202, scope: !805)
!808 = !DILocation(line: 693, column: 221, scope: !805)
!809 = !DILocation(line: 693, column: 225, scope: !805)
!810 = !DILocation(line: 693, column: 198, scope: !805)
!811 = !DILocation(line: 693, column: 91, scope: !805)
!812 = !DILocation(line: 693, column: 388, scope: !805)
!813 = !DILocation(line: 693, column: 396, scope: !805)
!814 = !DILocation(line: 693, column: 455, scope: !805)
!815 = !DILocation(line: 693, column: 474, scope: !805)
!816 = !DILocation(line: 693, column: 478, scope: !805)
!817 = !DILocation(line: 693, column: 487, scope: !805)
!818 = !DILocation(line: 693, column: 506, scope: !805)
!819 = !DILocation(line: 693, column: 510, scope: !805)
!820 = !DILocation(line: 693, column: 485, scope: !805)
!821 = !DILocation(line: 693, column: 440, scope: !805)
!822 = !DILocation(line: 693, column: 314, scope: !805)
!823 = !DILocation(line: 693, column: 527, scope: !805)
!824 = !DILocation(line: 697, column: 81, scope: !785)
!825 = !DILocation(line: 700, column: 21, scope: !785)
!826 = !DILocation(line: 700, column: 19, scope: !785)
!827 = !DILocation(line: 703, column: 9, scope: !785)
!828 = !DILocation(line: 703, column: 153, scope: !785)
!829 = !DILocation(line: 703, column: 515, scope: !785)
!830 = !DILocation(line: 703, column: 589, scope: !785)
!831 = !DILocation(line: 705, column: 15, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 705, column: 14)
!833 = distinct !DILexicalBlock(scope: !785, file: !3, line: 704, column: 9)
!834 = !DILocation(line: 705, column: 31, scope: !832)
!835 = !DILocation(line: 705, column: 29, scope: !832)
!836 = !DILocation(line: 705, column: 43, scope: !832)
!837 = !DILocation(line: 705, column: 14, scope: !833)
!838 = !DILocation(line: 707, column: 13, scope: !839)
!839 = distinct !DILexicalBlock(scope: !832, file: !3, line: 706, column: 11)
!840 = distinct !{!840, !827, !841}
!841 = !DILocation(line: 709, column: 9, scope: !785)
!842 = !DILocation(line: 710, column: 7, scope: !785)
!843 = !DILocation(line: 714, column: 81, scope: !844)
!844 = distinct !DILexicalBlock(scope: !778, file: !3, line: 712, column: 7)
!845 = !DILocation(line: 717, column: 21, scope: !844)
!846 = !DILocation(line: 717, column: 19, scope: !844)
!847 = !DILocation(line: 720, column: 9, scope: !844)
!848 = !DILocation(line: 720, column: 153, scope: !844)
!849 = !DILocation(line: 720, column: 515, scope: !844)
!850 = !DILocation(line: 720, column: 589, scope: !844)
!851 = !DILocation(line: 722, column: 15, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 722, column: 14)
!853 = distinct !DILexicalBlock(scope: !844, file: !3, line: 721, column: 9)
!854 = !DILocation(line: 722, column: 31, scope: !852)
!855 = !DILocation(line: 722, column: 29, scope: !852)
!856 = !DILocation(line: 722, column: 43, scope: !852)
!857 = !DILocation(line: 722, column: 14, scope: !853)
!858 = !DILocation(line: 724, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !3, line: 723, column: 11)
!860 = distinct !{!860, !847, !861}
!861 = !DILocation(line: 726, column: 9, scope: !844)
!862 = !DILocation(line: 728, column: 5, scope: !779)
!863 = !DILocation(line: 732, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 732, column: 10)
!865 = distinct !DILexicalBlock(scope: !772, file: !3, line: 730, column: 5)
!866 = !DILocation(line: 732, column: 30, scope: !864)
!867 = !DILocation(line: 732, column: 34, scope: !864)
!868 = !DILocation(line: 732, column: 44, scope: !864)
!869 = !DILocation(line: 732, column: 10, scope: !865)
!870 = !DILocation(line: 734, column: 9, scope: !871)
!871 = distinct !DILexicalBlock(scope: !864, file: !3, line: 733, column: 7)
!872 = !DILocation(line: 739, column: 88, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !3, line: 737, column: 7)
!874 = !DILocation(line: 739, column: 20, scope: !873)
!875 = !DILocation(line: 740, column: 89, scope: !873)
!876 = !DILocation(line: 740, column: 21, scope: !873)
!877 = !DILocation(line: 741, column: 15, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 741, column: 12)
!879 = !DILocation(line: 741, column: 27, scope: !878)
!880 = !DILocation(line: 741, column: 52, scope: !878)
!881 = !DILocation(line: 741, column: 71, scope: !878)
!882 = !DILocation(line: 741, column: 75, scope: !878)
!883 = !DILocation(line: 741, column: 49, scope: !878)
!884 = !DILocation(line: 741, column: 86, scope: !878)
!885 = !DILocation(line: 742, column: 15, scope: !878)
!886 = !DILocation(line: 742, column: 28, scope: !878)
!887 = !DILocation(line: 742, column: 52, scope: !878)
!888 = !DILocation(line: 742, column: 71, scope: !878)
!889 = !DILocation(line: 742, column: 75, scope: !878)
!890 = !DILocation(line: 742, column: 49, scope: !878)
!891 = !DILocation(line: 742, column: 83, scope: !878)
!892 = !DILocation(line: 743, column: 15, scope: !878)
!893 = !DILocation(line: 743, column: 27, scope: !878)
!894 = !DILocation(line: 743, column: 52, scope: !878)
!895 = !DILocation(line: 743, column: 71, scope: !878)
!896 = !DILocation(line: 743, column: 75, scope: !878)
!897 = !DILocation(line: 743, column: 49, scope: !878)
!898 = !DILocation(line: 741, column: 12, scope: !873)
!899 = !DILocation(line: 745, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !878, file: !3, line: 744, column: 9)
!901 = !DILocation(line: 749, column: 3, scope: !773)
!902 = !DILocation(line: 751, column: 3, scope: !181)
!903 = !DILocation(line: 752, column: 1, scope: !181)
!904 = distinct !DISubprogram(name: "HAL_RCC_ClockConfig", scope: !3, file: !3, line: 777, type: !905, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!905 = !DISubroutineType(types: !906)
!906 = !{!110, !907, !6}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !186, line: 264, baseType: !909)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !186, line: 250, size: 128, elements: !910)
!910 = !{!911, !912, !913, !914}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !909, file: !186, line: 252, baseType: !6, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !909, file: !186, line: 255, baseType: !6, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !909, file: !186, line: 258, baseType: !6, size: 32, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !909, file: !186, line: 261, baseType: !6, size: 32, offset: 96)
!915 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !904, file: !3, line: 777, type: !907)
!916 = !DILocation(line: 777, column: 59, scope: !904)
!917 = !DILocalVariable(name: "FLatency", arg: 2, scope: !904, file: !3, line: 777, type: !6)
!918 = !DILocation(line: 777, column: 87, scope: !904)
!919 = !DILocalVariable(name: "tickstart", scope: !904, file: !3, line: 779, type: !6)
!920 = !DILocation(line: 779, column: 12, scope: !904)
!921 = !DILocation(line: 782, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !904, file: !3, line: 782, column: 6)
!923 = !DILocation(line: 782, column: 24, scope: !922)
!924 = !DILocation(line: 782, column: 6, scope: !904)
!925 = !DILocation(line: 784, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !3, line: 783, column: 3)
!927 = !DILocation(line: 796, column: 6, scope: !928)
!928 = distinct !DILexicalBlock(scope: !904, file: !3, line: 796, column: 6)
!929 = !DILocation(line: 796, column: 89, scope: !928)
!930 = !DILocation(line: 796, column: 95, scope: !928)
!931 = !DILocation(line: 796, column: 15, scope: !928)
!932 = !DILocation(line: 796, column: 6, scope: !904)
!933 = !DILocation(line: 799, column: 149, scope: !934)
!934 = distinct !DILexicalBlock(scope: !928, file: !3, line: 797, column: 3)
!935 = !DILocation(line: 799, column: 152, scope: !934)
!936 = !DILocation(line: 799, column: 176, scope: !934)
!937 = !DILocation(line: 799, column: 173, scope: !934)
!938 = !DILocation(line: 799, column: 78, scope: !934)
!939 = !DILocation(line: 803, column: 80, scope: !940)
!940 = distinct !DILexicalBlock(scope: !934, file: !3, line: 803, column: 8)
!941 = !DILocation(line: 803, column: 86, scope: !940)
!942 = !DILocation(line: 803, column: 111, scope: !940)
!943 = !DILocation(line: 803, column: 108, scope: !940)
!944 = !DILocation(line: 803, column: 8, scope: !934)
!945 = !DILocation(line: 805, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !940, file: !3, line: 804, column: 5)
!947 = !DILocation(line: 807, column: 3, scope: !934)
!948 = !DILocation(line: 810, column: 8, scope: !949)
!949 = distinct !DILexicalBlock(scope: !904, file: !3, line: 810, column: 6)
!950 = !DILocation(line: 810, column: 27, scope: !949)
!951 = !DILocation(line: 810, column: 38, scope: !949)
!952 = !DILocation(line: 810, column: 55, scope: !949)
!953 = !DILocation(line: 810, column: 6, scope: !904)
!954 = !DILocation(line: 814, column: 10, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 814, column: 8)
!956 = distinct !DILexicalBlock(scope: !949, file: !3, line: 811, column: 3)
!957 = !DILocation(line: 814, column: 29, scope: !955)
!958 = !DILocation(line: 814, column: 40, scope: !955)
!959 = !DILocation(line: 814, column: 57, scope: !955)
!960 = !DILocation(line: 814, column: 8, scope: !956)
!961 = !DILocation(line: 816, column: 157, scope: !962)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 815, column: 5)
!963 = !DILocation(line: 816, column: 165, scope: !962)
!964 = !DILocation(line: 816, column: 189, scope: !962)
!965 = !DILocation(line: 816, column: 83, scope: !962)
!966 = !DILocation(line: 817, column: 5, scope: !962)
!967 = !DILocation(line: 821, column: 155, scope: !956)
!968 = !DILocation(line: 821, column: 163, scope: !956)
!969 = !DILocation(line: 821, column: 190, scope: !956)
!970 = !DILocation(line: 821, column: 209, scope: !956)
!971 = !DILocation(line: 821, column: 187, scope: !956)
!972 = !DILocation(line: 821, column: 81, scope: !956)
!973 = !DILocation(line: 822, column: 3, scope: !956)
!974 = !DILocation(line: 825, column: 8, scope: !975)
!975 = distinct !DILexicalBlock(scope: !904, file: !3, line: 825, column: 6)
!976 = !DILocation(line: 825, column: 27, scope: !975)
!977 = !DILocation(line: 825, column: 38, scope: !975)
!978 = !DILocation(line: 825, column: 55, scope: !975)
!979 = !DILocation(line: 825, column: 6, scope: !904)
!980 = !DILocation(line: 830, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 830, column: 8)
!982 = distinct !DILexicalBlock(scope: !975, file: !3, line: 826, column: 3)
!983 = !DILocation(line: 830, column: 27, scope: !981)
!984 = !DILocation(line: 830, column: 40, scope: !981)
!985 = !DILocation(line: 830, column: 8, scope: !982)
!986 = !DILocation(line: 833, column: 148, scope: !987)
!987 = distinct !DILexicalBlock(scope: !988, file: !3, line: 833, column: 10)
!988 = distinct !DILexicalBlock(scope: !981, file: !3, line: 831, column: 5)
!989 = !DILocation(line: 833, column: 510, scope: !987)
!990 = !DILocation(line: 833, column: 584, scope: !987)
!991 = !DILocation(line: 833, column: 10, scope: !988)
!992 = !DILocation(line: 835, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !987, file: !3, line: 834, column: 7)
!994 = !DILocation(line: 837, column: 5, scope: !988)
!995 = !DILocation(line: 839, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !981, file: !3, line: 839, column: 13)
!997 = !DILocation(line: 839, column: 32, scope: !996)
!998 = !DILocation(line: 839, column: 45, scope: !996)
!999 = !DILocation(line: 839, column: 13, scope: !981)
!1000 = !DILocation(line: 842, column: 148, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 842, column: 10)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 840, column: 5)
!1003 = !DILocation(line: 842, column: 510, scope: !1001)
!1004 = !DILocation(line: 842, column: 584, scope: !1001)
!1005 = !DILocation(line: 842, column: 10, scope: !1002)
!1006 = !DILocation(line: 844, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 843, column: 7)
!1008 = !DILocation(line: 846, column: 5, scope: !1002)
!1009 = !DILocation(line: 849, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !996, file: !3, line: 849, column: 13)
!1011 = !DILocation(line: 849, column: 32, scope: !1010)
!1012 = !DILocation(line: 849, column: 45, scope: !1010)
!1013 = !DILocation(line: 849, column: 13, scope: !996)
!1014 = !DILocation(line: 852, column: 289, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 852, column: 10)
!1016 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 850, column: 5)
!1017 = !DILocation(line: 852, column: 510, scope: !1015)
!1018 = !DILocation(line: 852, column: 584, scope: !1015)
!1019 = !DILocation(line: 852, column: 10, scope: !1016)
!1020 = !DILocation(line: 854, column: 9, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 853, column: 7)
!1022 = !DILocation(line: 856, column: 5, scope: !1016)
!1023 = !DILocation(line: 862, column: 147, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 862, column: 10)
!1025 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 860, column: 5)
!1026 = !DILocation(line: 862, column: 507, scope: !1024)
!1027 = !DILocation(line: 862, column: 580, scope: !1024)
!1028 = !DILocation(line: 862, column: 10, scope: !1025)
!1029 = !DILocation(line: 864, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 863, column: 7)
!1031 = !DILocation(line: 867, column: 155, scope: !982)
!1032 = !DILocation(line: 867, column: 163, scope: !982)
!1033 = !DILocation(line: 867, column: 191, scope: !982)
!1034 = !DILocation(line: 867, column: 210, scope: !982)
!1035 = !DILocation(line: 867, column: 187, scope: !982)
!1036 = !DILocation(line: 867, column: 81, scope: !982)
!1037 = !DILocation(line: 870, column: 17, scope: !982)
!1038 = !DILocation(line: 870, column: 15, scope: !982)
!1039 = !DILocation(line: 872, column: 5, scope: !982)
!1040 = !DILocation(line: 872, column: 90, scope: !982)
!1041 = !DILocation(line: 872, column: 95, scope: !982)
!1042 = !DILocation(line: 872, column: 119, scope: !982)
!1043 = !DILocation(line: 872, column: 138, scope: !982)
!1044 = !DILocation(line: 872, column: 151, scope: !982)
!1045 = !DILocation(line: 872, column: 115, scope: !982)
!1046 = !DILocation(line: 874, column: 11, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 874, column: 10)
!1048 = distinct !DILexicalBlock(scope: !982, file: !3, line: 873, column: 5)
!1049 = !DILocation(line: 874, column: 27, scope: !1047)
!1050 = !DILocation(line: 874, column: 25, scope: !1047)
!1051 = !DILocation(line: 874, column: 39, scope: !1047)
!1052 = !DILocation(line: 874, column: 10, scope: !1048)
!1053 = !DILocation(line: 876, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 875, column: 7)
!1055 = distinct !{!1055, !1039, !1056}
!1056 = !DILocation(line: 878, column: 5, scope: !982)
!1057 = !DILocation(line: 879, column: 3, scope: !982)
!1058 = !DILocation(line: 882, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !904, file: !3, line: 882, column: 6)
!1060 = !DILocation(line: 882, column: 89, scope: !1059)
!1061 = !DILocation(line: 882, column: 95, scope: !1059)
!1062 = !DILocation(line: 882, column: 15, scope: !1059)
!1063 = !DILocation(line: 882, column: 6, scope: !904)
!1064 = !DILocation(line: 885, column: 149, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 883, column: 3)
!1066 = !DILocation(line: 885, column: 152, scope: !1065)
!1067 = !DILocation(line: 885, column: 176, scope: !1065)
!1068 = !DILocation(line: 885, column: 173, scope: !1065)
!1069 = !DILocation(line: 885, column: 78, scope: !1065)
!1070 = !DILocation(line: 889, column: 80, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 889, column: 8)
!1072 = !DILocation(line: 889, column: 86, scope: !1071)
!1073 = !DILocation(line: 889, column: 111, scope: !1071)
!1074 = !DILocation(line: 889, column: 108, scope: !1071)
!1075 = !DILocation(line: 889, column: 8, scope: !1065)
!1076 = !DILocation(line: 891, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 890, column: 5)
!1078 = !DILocation(line: 893, column: 3, scope: !1065)
!1079 = !DILocation(line: 896, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !904, file: !3, line: 896, column: 6)
!1081 = !DILocation(line: 896, column: 27, scope: !1080)
!1082 = !DILocation(line: 896, column: 38, scope: !1080)
!1083 = !DILocation(line: 896, column: 55, scope: !1080)
!1084 = !DILocation(line: 896, column: 6, scope: !904)
!1085 = !DILocation(line: 899, column: 155, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 897, column: 3)
!1087 = !DILocation(line: 899, column: 163, scope: !1086)
!1088 = !DILocation(line: 899, column: 190, scope: !1086)
!1089 = !DILocation(line: 899, column: 209, scope: !1086)
!1090 = !DILocation(line: 899, column: 187, scope: !1086)
!1091 = !DILocation(line: 899, column: 81, scope: !1086)
!1092 = !DILocation(line: 900, column: 3, scope: !1086)
!1093 = !DILocation(line: 903, column: 21, scope: !904)
!1094 = !DILocation(line: 903, column: 131, scope: !904)
!1095 = !DILocation(line: 903, column: 136, scope: !904)
!1096 = !DILocation(line: 903, column: 154, scope: !904)
!1097 = !DILocation(line: 903, column: 50, scope: !904)
!1098 = !DILocation(line: 903, column: 47, scope: !904)
!1099 = !DILocation(line: 903, column: 19, scope: !904)
!1100 = !DILocation(line: 906, column: 3, scope: !904)
!1101 = !DILocation(line: 908, column: 3, scope: !904)
!1102 = !DILocation(line: 909, column: 1, scope: !904)
!1103 = !DILocalVariable(name: "tmpreg", scope: !2, file: !3, line: 1102, type: !6)
!1104 = !DILocation(line: 1102, column: 12, scope: !2)
!1105 = !DILocalVariable(name: "prediv", scope: !2, file: !3, line: 1102, type: !6)
!1106 = !DILocation(line: 1102, column: 25, scope: !2)
!1107 = !DILocalVariable(name: "pllclk", scope: !2, file: !3, line: 1102, type: !6)
!1108 = !DILocation(line: 1102, column: 38, scope: !2)
!1109 = !DILocalVariable(name: "pllmul", scope: !2, file: !3, line: 1102, type: !6)
!1110 = !DILocation(line: 1102, column: 51, scope: !2)
!1111 = !DILocalVariable(name: "sysclockfreq", scope: !2, file: !3, line: 1103, type: !6)
!1112 = !DILocation(line: 1103, column: 12, scope: !2)
!1113 = !DILocation(line: 1105, column: 78, scope: !2)
!1114 = !DILocation(line: 1105, column: 10, scope: !2)
!1115 = !DILocation(line: 1108, column: 11, scope: !2)
!1116 = !DILocation(line: 1108, column: 18, scope: !2)
!1117 = !DILocation(line: 1108, column: 3, scope: !2)
!1118 = !DILocation(line: 1112, column: 20, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 1111, column: 5)
!1120 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1109, column: 3)
!1121 = !DILocation(line: 1113, column: 7, scope: !1119)
!1122 = !DILocation(line: 1117, column: 46, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 1116, column: 5)
!1124 = !DILocation(line: 1117, column: 53, scope: !1123)
!1125 = !DILocation(line: 1117, column: 73, scope: !1123)
!1126 = !DILocation(line: 1117, column: 16, scope: !1123)
!1127 = !DILocation(line: 1117, column: 14, scope: !1123)
!1128 = !DILocation(line: 1118, column: 112, scope: !1123)
!1129 = !DILocation(line: 1118, column: 118, scope: !1123)
!1130 = !DILocation(line: 1118, column: 137, scope: !1123)
!1131 = !DILocation(line: 1118, column: 16, scope: !1123)
!1132 = !DILocation(line: 1118, column: 14, scope: !1123)
!1133 = !DILocation(line: 1119, column: 12, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 1119, column: 11)
!1135 = !DILocation(line: 1119, column: 19, scope: !1134)
!1136 = !DILocation(line: 1119, column: 39, scope: !1134)
!1137 = !DILocation(line: 1119, column: 11, scope: !1123)
!1138 = !DILocation(line: 1122, column: 62, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1120, column: 7)
!1140 = !DILocation(line: 1122, column: 50, scope: !1139)
!1141 = !DILocation(line: 1122, column: 48, scope: !1139)
!1142 = !DILocation(line: 1122, column: 18, scope: !1139)
!1143 = !DILocation(line: 1122, column: 85, scope: !1139)
!1144 = !DILocation(line: 1122, column: 74, scope: !1139)
!1145 = !DILocation(line: 1122, column: 71, scope: !1139)
!1146 = !DILocation(line: 1122, column: 16, scope: !1139)
!1147 = !DILocation(line: 1123, column: 7, scope: !1139)
!1148 = !DILocation(line: 1125, column: 17, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 1125, column: 16)
!1150 = !DILocation(line: 1125, column: 24, scope: !1149)
!1151 = !DILocation(line: 1125, column: 44, scope: !1149)
!1152 = !DILocation(line: 1125, column: 16, scope: !1134)
!1153 = !DILocation(line: 1128, column: 64, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1126, column: 7)
!1155 = !DILocation(line: 1128, column: 52, scope: !1154)
!1156 = !DILocation(line: 1128, column: 50, scope: !1154)
!1157 = !DILocation(line: 1128, column: 18, scope: !1154)
!1158 = !DILocation(line: 1128, column: 87, scope: !1154)
!1159 = !DILocation(line: 1128, column: 76, scope: !1154)
!1160 = !DILocation(line: 1128, column: 73, scope: !1154)
!1161 = !DILocation(line: 1128, column: 16, scope: !1154)
!1162 = !DILocation(line: 1129, column: 7, scope: !1154)
!1163 = !DILocation(line: 1135, column: 63, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 1132, column: 7)
!1165 = !DILocation(line: 1135, column: 51, scope: !1164)
!1166 = !DILocation(line: 1135, column: 49, scope: !1164)
!1167 = !DILocation(line: 1135, column: 18, scope: !1164)
!1168 = !DILocation(line: 1135, column: 86, scope: !1164)
!1169 = !DILocation(line: 1135, column: 75, scope: !1164)
!1170 = !DILocation(line: 1135, column: 72, scope: !1164)
!1171 = !DILocation(line: 1135, column: 16, scope: !1164)
!1172 = !DILocation(line: 1141, column: 22, scope: !1123)
!1173 = !DILocation(line: 1141, column: 20, scope: !1123)
!1174 = !DILocation(line: 1142, column: 7, scope: !1123)
!1175 = !DILocation(line: 1147, column: 20, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 1146, column: 5)
!1177 = !DILocation(line: 1148, column: 7, scope: !1176)
!1178 = !DILocation(line: 1151, column: 5, scope: !1120)
!1179 = !DILocation(line: 1154, column: 20, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 1153, column: 5)
!1181 = !DILocation(line: 1155, column: 7, scope: !1180)
!1182 = !DILocation(line: 1158, column: 10, scope: !2)
!1183 = !DILocation(line: 1158, column: 3, scope: !2)
!1184 = distinct !DISubprogram(name: "HAL_RCC_MCOConfig", scope: !3, file: !3, line: 1016, type: !1185, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !6, !6, !6}
!1187 = !DILocalVariable(name: "RCC_MCOx", arg: 1, scope: !1184, file: !3, line: 1016, type: !6)
!1188 = !DILocation(line: 1016, column: 33, scope: !1184)
!1189 = !DILocalVariable(name: "RCC_MCOSource", arg: 2, scope: !1184, file: !3, line: 1016, type: !6)
!1190 = !DILocation(line: 1016, column: 52, scope: !1184)
!1191 = !DILocalVariable(name: "RCC_MCODiv", arg: 3, scope: !1184, file: !3, line: 1016, type: !6)
!1192 = !DILocation(line: 1016, column: 76, scope: !1184)
!1193 = !DILocalVariable(name: "gpio", scope: !1184, file: !3, line: 1018, type: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !1195, line: 62, baseType: !1196)
!1195 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_gpio.h", directory: "/home/sri/zephyrproject")
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1195, line: 46, size: 160, elements: !1197)
!1197 = !{!1198, !1199, !1200, !1201, !1202}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !1196, file: !1195, line: 48, baseType: !6, size: 32)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !1196, file: !1195, line: 51, baseType: !6, size: 32, offset: 32)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !1196, file: !1195, line: 54, baseType: !6, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !1196, file: !1195, line: 57, baseType: !6, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "Alternate", scope: !1196, file: !1195, line: 60, baseType: !6, size: 32, offset: 128)
!1203 = !DILocation(line: 1018, column: 20, scope: !1184)
!1204 = !DILocation(line: 1026, column: 8, scope: !1184)
!1205 = !DILocation(line: 1026, column: 13, scope: !1184)
!1206 = !DILocation(line: 1027, column: 8, scope: !1184)
!1207 = !DILocation(line: 1027, column: 14, scope: !1184)
!1208 = !DILocation(line: 1028, column: 8, scope: !1184)
!1209 = !DILocation(line: 1028, column: 13, scope: !1184)
!1210 = !DILocation(line: 1029, column: 8, scope: !1184)
!1211 = !DILocation(line: 1029, column: 12, scope: !1184)
!1212 = !DILocation(line: 1030, column: 8, scope: !1184)
!1213 = !DILocation(line: 1030, column: 18, scope: !1184)
!1214 = !DILocation(line: 1033, column: 3, scope: !1184)
!1215 = !DILocalVariable(name: "tmpreg", scope: !1216, file: !3, line: 1033, type: !32)
!1216 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 1033, column: 6)
!1217 = !DILocation(line: 1033, column: 26, scope: !1216)
!1218 = !DILocation(line: 1033, column: 110, scope: !1216)
!1219 = !DILocation(line: 1033, column: 211, scope: !1216)
!1220 = !DILocation(line: 1033, column: 219, scope: !1216)
!1221 = !DILocation(line: 1033, column: 141, scope: !1216)
!1222 = !DILocation(line: 1033, column: 248, scope: !1216)
!1223 = !DILocation(line: 1033, column: 256, scope: !1216)
!1224 = !DILocation(line: 1035, column: 3, scope: !1184)
!1225 = !DILocation(line: 1038, column: 153, scope: !1184)
!1226 = !DILocation(line: 1038, column: 161, scope: !1184)
!1227 = !DILocation(line: 1038, column: 212, scope: !1184)
!1228 = !DILocation(line: 1038, column: 230, scope: !1184)
!1229 = !DILocation(line: 1038, column: 227, scope: !1184)
!1230 = !DILocation(line: 1038, column: 207, scope: !1184)
!1231 = !DILocation(line: 1038, column: 79, scope: !1184)
!1232 = !DILocation(line: 1039, column: 1, scope: !1184)
!1233 = distinct !DISubprogram(name: "HAL_RCC_EnableCSS", scope: !3, file: !3, line: 1050, type: !1234, scopeLine: 1051, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{null}
!1236 = !DILocation(line: 1052, column: 75, scope: !1233)
!1237 = !DILocation(line: 1053, column: 1, scope: !1233)
!1238 = distinct !DISubprogram(name: "HAL_RCC_DisableCSS", scope: !3, file: !3, line: 1059, type: !1234, scopeLine: 1060, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1239 = !DILocation(line: 1061, column: 75, scope: !1238)
!1240 = !DILocation(line: 1062, column: 1, scope: !1238)
!1241 = distinct !DISubprogram(name: "HAL_RCC_GetHCLKFreq", scope: !3, file: !3, line: 1170, type: !4, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1242 = !DILocation(line: 1172, column: 10, scope: !1241)
!1243 = !DILocation(line: 1172, column: 3, scope: !1241)
!1244 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !3, file: !3, line: 1181, type: !4, scopeLine: 1182, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1245 = !DILocation(line: 1184, column: 11, scope: !1244)
!1246 = !DILocation(line: 1184, column: 117, scope: !1244)
!1247 = !DILocation(line: 1184, column: 122, scope: !1244)
!1248 = !DILocation(line: 1184, column: 141, scope: !1244)
!1249 = !DILocation(line: 1184, column: 36, scope: !1244)
!1250 = !DILocation(line: 1184, column: 33, scope: !1244)
!1251 = !DILocation(line: 1184, column: 3, scope: !1244)
!1252 = distinct !DISubprogram(name: "HAL_RCC_GetOscConfig", scope: !3, file: !3, line: 1194, type: !1253, scopeLine: 1195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !184}
!1255 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !1252, file: !3, line: 1194, type: !184)
!1256 = !DILocation(line: 1194, column: 47, scope: !1252)
!1257 = !DILocation(line: 1200, column: 3, scope: !1252)
!1258 = !DILocation(line: 1200, column: 22, scope: !1252)
!1259 = !DILocation(line: 1200, column: 37, scope: !1252)
!1260 = !DILocation(line: 1203, column: 3, scope: !1252)
!1261 = !DILocation(line: 1203, column: 22, scope: !1252)
!1262 = !DILocation(line: 1203, column: 37, scope: !1252)
!1263 = !DILocation(line: 1208, column: 73, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1208, column: 6)
!1265 = !DILocation(line: 1208, column: 76, scope: !1264)
!1266 = !DILocation(line: 1208, column: 95, scope: !1264)
!1267 = !DILocation(line: 1208, column: 6, scope: !1252)
!1268 = !DILocation(line: 1210, column: 5, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1209, column: 3)
!1270 = !DILocation(line: 1210, column: 24, scope: !1269)
!1271 = !DILocation(line: 1210, column: 33, scope: !1269)
!1272 = !DILocation(line: 1211, column: 3, scope: !1269)
!1273 = !DILocation(line: 1212, column: 78, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1212, column: 11)
!1275 = !DILocation(line: 1212, column: 81, scope: !1274)
!1276 = !DILocation(line: 1212, column: 100, scope: !1274)
!1277 = !DILocation(line: 1212, column: 11, scope: !1264)
!1278 = !DILocation(line: 1214, column: 5, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1213, column: 3)
!1280 = !DILocation(line: 1214, column: 24, scope: !1279)
!1281 = !DILocation(line: 1214, column: 33, scope: !1279)
!1282 = !DILocation(line: 1215, column: 3, scope: !1279)
!1283 = !DILocation(line: 1218, column: 5, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1217, column: 3)
!1285 = !DILocation(line: 1218, column: 24, scope: !1284)
!1286 = !DILocation(line: 1218, column: 33, scope: !1284)
!1287 = !DILocation(line: 1222, column: 73, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1222, column: 6)
!1289 = !DILocation(line: 1222, column: 76, scope: !1288)
!1290 = !DILocation(line: 1222, column: 94, scope: !1288)
!1291 = !DILocation(line: 1222, column: 6, scope: !1252)
!1292 = !DILocation(line: 1224, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1223, column: 3)
!1294 = !DILocation(line: 1224, column: 24, scope: !1293)
!1295 = !DILocation(line: 1224, column: 33, scope: !1293)
!1296 = !DILocation(line: 1225, column: 3, scope: !1293)
!1297 = !DILocation(line: 1228, column: 5, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1227, column: 3)
!1299 = !DILocation(line: 1228, column: 24, scope: !1298)
!1300 = !DILocation(line: 1228, column: 33, scope: !1298)
!1301 = !DILocation(line: 1231, column: 122, scope: !1252)
!1302 = !DILocation(line: 1231, column: 125, scope: !1252)
!1303 = !DILocation(line: 1231, column: 144, scope: !1252)
!1304 = !DILocation(line: 1231, column: 3, scope: !1252)
!1305 = !DILocation(line: 1231, column: 22, scope: !1252)
!1306 = !DILocation(line: 1231, column: 42, scope: !1252)
!1307 = !DILocation(line: 1234, column: 73, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1234, column: 6)
!1309 = !DILocation(line: 1234, column: 78, scope: !1308)
!1310 = !DILocation(line: 1234, column: 96, scope: !1308)
!1311 = !DILocation(line: 1234, column: 6, scope: !1252)
!1312 = !DILocation(line: 1236, column: 5, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1235, column: 3)
!1314 = !DILocation(line: 1236, column: 24, scope: !1313)
!1315 = !DILocation(line: 1236, column: 33, scope: !1313)
!1316 = !DILocation(line: 1237, column: 3, scope: !1313)
!1317 = !DILocation(line: 1238, column: 78, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1238, column: 11)
!1319 = !DILocation(line: 1238, column: 83, scope: !1318)
!1320 = !DILocation(line: 1238, column: 101, scope: !1318)
!1321 = !DILocation(line: 1238, column: 11, scope: !1308)
!1322 = !DILocation(line: 1240, column: 5, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1239, column: 3)
!1324 = !DILocation(line: 1240, column: 24, scope: !1323)
!1325 = !DILocation(line: 1240, column: 33, scope: !1323)
!1326 = !DILocation(line: 1241, column: 3, scope: !1323)
!1327 = !DILocation(line: 1244, column: 5, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 1243, column: 3)
!1329 = !DILocation(line: 1244, column: 24, scope: !1328)
!1330 = !DILocation(line: 1244, column: 33, scope: !1328)
!1331 = !DILocation(line: 1248, column: 73, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1248, column: 6)
!1333 = !DILocation(line: 1248, column: 77, scope: !1332)
!1334 = !DILocation(line: 1248, column: 95, scope: !1332)
!1335 = !DILocation(line: 1248, column: 6, scope: !1252)
!1336 = !DILocation(line: 1250, column: 5, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1249, column: 3)
!1338 = !DILocation(line: 1250, column: 24, scope: !1337)
!1339 = !DILocation(line: 1250, column: 33, scope: !1337)
!1340 = !DILocation(line: 1251, column: 3, scope: !1337)
!1341 = !DILocation(line: 1254, column: 5, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1253, column: 3)
!1343 = !DILocation(line: 1254, column: 24, scope: !1342)
!1344 = !DILocation(line: 1254, column: 33, scope: !1342)
!1345 = !DILocation(line: 1258, column: 73, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1258, column: 6)
!1347 = !DILocation(line: 1258, column: 77, scope: !1346)
!1348 = !DILocation(line: 1258, column: 96, scope: !1346)
!1349 = !DILocation(line: 1258, column: 6, scope: !1252)
!1350 = !DILocation(line: 1260, column: 5, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1259, column: 3)
!1352 = !DILocation(line: 1260, column: 24, scope: !1351)
!1353 = !DILocation(line: 1260, column: 35, scope: !1351)
!1354 = !DILocation(line: 1261, column: 3, scope: !1351)
!1355 = !DILocation(line: 1264, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1263, column: 3)
!1357 = !DILocation(line: 1264, column: 24, scope: !1356)
!1358 = !DILocation(line: 1264, column: 35, scope: !1356)
!1359 = !DILocation(line: 1267, column: 124, scope: !1252)
!1360 = !DILocation(line: 1267, column: 128, scope: !1252)
!1361 = !DILocation(line: 1267, column: 148, scope: !1252)
!1362 = !DILocation(line: 1267, column: 3, scope: !1252)
!1363 = !DILocation(line: 1267, column: 22, scope: !1252)
!1364 = !DILocation(line: 1267, column: 44, scope: !1252)
!1365 = !DILocation(line: 1271, column: 116, scope: !1252)
!1366 = !DILocation(line: 1271, column: 121, scope: !1252)
!1367 = !DILocation(line: 1271, column: 144, scope: !1252)
!1368 = !DILocation(line: 1271, column: 36, scope: !1252)
!1369 = !DILocation(line: 1271, column: 3, scope: !1252)
!1370 = !DILocation(line: 1271, column: 22, scope: !1252)
!1371 = !DILocation(line: 1271, column: 33, scope: !1252)
!1372 = !DILocation(line: 1275, column: 73, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1275, column: 6)
!1374 = !DILocation(line: 1275, column: 76, scope: !1373)
!1375 = !DILocation(line: 1275, column: 95, scope: !1373)
!1376 = !DILocation(line: 1275, column: 6, scope: !1252)
!1377 = !DILocation(line: 1277, column: 5, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1276, column: 3)
!1379 = !DILocation(line: 1277, column: 24, scope: !1378)
!1380 = !DILocation(line: 1277, column: 28, scope: !1378)
!1381 = !DILocation(line: 1277, column: 37, scope: !1378)
!1382 = !DILocation(line: 1278, column: 3, scope: !1378)
!1383 = !DILocation(line: 1281, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1280, column: 3)
!1385 = !DILocation(line: 1281, column: 24, scope: !1384)
!1386 = !DILocation(line: 1281, column: 28, scope: !1384)
!1387 = !DILocation(line: 1281, column: 37, scope: !1384)
!1388 = !DILocation(line: 1283, column: 115, scope: !1252)
!1389 = !DILocation(line: 1283, column: 120, scope: !1252)
!1390 = !DILocation(line: 1283, column: 3, scope: !1252)
!1391 = !DILocation(line: 1283, column: 22, scope: !1252)
!1392 = !DILocation(line: 1283, column: 26, scope: !1252)
!1393 = !DILocation(line: 1283, column: 36, scope: !1252)
!1394 = !DILocation(line: 1284, column: 112, scope: !1252)
!1395 = !DILocation(line: 1284, column: 117, scope: !1252)
!1396 = !DILocation(line: 1284, column: 3, scope: !1252)
!1397 = !DILocation(line: 1284, column: 22, scope: !1252)
!1398 = !DILocation(line: 1284, column: 26, scope: !1252)
!1399 = !DILocation(line: 1284, column: 33, scope: !1252)
!1400 = !DILocation(line: 1285, column: 112, scope: !1252)
!1401 = !DILocation(line: 1285, column: 118, scope: !1252)
!1402 = !DILocation(line: 1285, column: 3, scope: !1252)
!1403 = !DILocation(line: 1285, column: 22, scope: !1252)
!1404 = !DILocation(line: 1285, column: 26, scope: !1252)
!1405 = !DILocation(line: 1285, column: 33, scope: !1252)
!1406 = !DILocation(line: 1286, column: 1, scope: !1252)
!1407 = distinct !DISubprogram(name: "HAL_RCC_GetClockConfig", scope: !3, file: !3, line: 1296, type: !1408, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{null, !907, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!1411 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !1407, file: !3, line: 1296, type: !907)
!1412 = !DILocation(line: 1296, column: 49, scope: !1407)
!1413 = !DILocalVariable(name: "pFLatency", arg: 2, scope: !1407, file: !3, line: 1296, type: !1410)
!1414 = !DILocation(line: 1296, column: 78, scope: !1407)
!1415 = !DILocation(line: 1303, column: 3, scope: !1407)
!1416 = !DILocation(line: 1303, column: 22, scope: !1407)
!1417 = !DILocation(line: 1303, column: 32, scope: !1407)
!1418 = !DILocation(line: 1306, column: 114, scope: !1407)
!1419 = !DILocation(line: 1306, column: 119, scope: !1407)
!1420 = !DILocation(line: 1306, column: 3, scope: !1407)
!1421 = !DILocation(line: 1306, column: 22, scope: !1407)
!1422 = !DILocation(line: 1306, column: 35, scope: !1407)
!1423 = !DILocation(line: 1309, column: 115, scope: !1407)
!1424 = !DILocation(line: 1309, column: 120, scope: !1407)
!1425 = !DILocation(line: 1309, column: 3, scope: !1407)
!1426 = !DILocation(line: 1309, column: 22, scope: !1407)
!1427 = !DILocation(line: 1309, column: 36, scope: !1407)
!1428 = !DILocation(line: 1312, column: 116, scope: !1407)
!1429 = !DILocation(line: 1312, column: 121, scope: !1407)
!1430 = !DILocation(line: 1312, column: 3, scope: !1407)
!1431 = !DILocation(line: 1312, column: 22, scope: !1407)
!1432 = !DILocation(line: 1312, column: 37, scope: !1407)
!1433 = !DILocation(line: 1314, column: 88, scope: !1407)
!1434 = !DILocation(line: 1314, column: 94, scope: !1407)
!1435 = !DILocation(line: 1314, column: 4, scope: !1407)
!1436 = !DILocation(line: 1314, column: 14, scope: !1407)
!1437 = !DILocation(line: 1315, column: 1, scope: !1407)
!1438 = distinct !DISubprogram(name: "HAL_RCC_NMI_IRQHandler", scope: !3, file: !3, line: 1322, type: !1234, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1439 = !DILocation(line: 1325, column: 74, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 1325, column: 6)
!1441 = !DILocation(line: 1325, column: 78, scope: !1440)
!1442 = !DILocation(line: 1325, column: 110, scope: !1440)
!1443 = !DILocation(line: 1325, column: 6, scope: !1438)
!1444 = !DILocation(line: 1328, column: 5, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 1326, column: 3)
!1446 = !DILocation(line: 1331, column: 104, scope: !1445)
!1447 = !DILocation(line: 1332, column: 3, scope: !1445)
!1448 = !DILocation(line: 1333, column: 1, scope: !1438)
!1449 = distinct !DISubprogram(name: "HAL_RCC_CSSCallback", scope: !3, file: !3, line: 1339, type: !1234, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !97)
!1450 = !DILocation(line: 1344, column: 1, scope: !1449)
