; ModuleID = '../bc_files/stm32f0xx_hal_rcc.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_OscInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.RCC_PLLInitTypeDef }
%struct.RCC_PLLInitTypeDef = type { i32, i32, i32, i32 }
%struct.RCC_ClkInitTypeDef = type { i32, i32, i32, i32 }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }

@SystemCoreClock = external dso_local global i32, align 4
@uwTickPrio = external dso_local global i32, align 4
@AHBPrescTable = external dso_local constant [16 x i8], align 1
@HAL_RCC_GetSysClockFreq.aPLLMULFactorTable = internal constant [16 x i8] c"\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10", align 1, !dbg !0
@HAL_RCC_GetSysClockFreq.aPredivFactorTable = internal constant [16 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 1, !dbg !91
@APBPrescTable = external dso_local constant [8 x i8], align 1

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_RCC_DeInit() #0 !dbg !110 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #4, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %2, metadata !115, metadata !DIExpression()), !dbg !117
  %4 = call i32 @HAL_GetTick() #5, !dbg !118
  store i32 %4, ptr %2, align 4, !dbg !119
  %5 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !120
  %6 = or i32 %5, 129, !dbg !120
  store volatile i32 %6, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !120
  br label %7, !dbg !121

7:                                                ; preds = %17, %0
  %8 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !122
  %9 = and i32 %8, 2, !dbg !123
  %10 = icmp eq i32 %9, 0, !dbg !124
  br i1 %10, label %11, label %18, !dbg !121

11:                                               ; preds = %7
  %12 = call i32 @HAL_GetTick() #5, !dbg !125
  %13 = load i32, ptr %2, align 4, !dbg !128
  %14 = sub i32 %12, %13, !dbg !129
  %15 = icmp ugt i32 %14, 2, !dbg !130
  br i1 %15, label %16, label %17, !dbg !131

16:                                               ; preds = %11
  store i8 3, ptr %1, align 1, !dbg !132
  store i32 1, ptr %3, align 4
  br label %58, !dbg !132

17:                                               ; preds = %11
  br label %7, !dbg !121, !llvm.loop !134

18:                                               ; preds = %7
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !136
  %20 = and i32 %19, -251660276, !dbg !136
  store volatile i32 %20, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !136
  br label %21, !dbg !137

21:                                               ; preds = %31, %18
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !138
  %23 = and i32 %22, 12, !dbg !139
  %24 = icmp ne i32 %23, 0, !dbg !140
  br i1 %24, label %25, label %32, !dbg !137

25:                                               ; preds = %21
  %26 = call i32 @HAL_GetTick() #5, !dbg !141
  %27 = load i32, ptr %2, align 4, !dbg !144
  %28 = sub i32 %26, %27, !dbg !145
  %29 = icmp ugt i32 %28, 5000, !dbg !146
  br i1 %29, label %30, label %31, !dbg !147

30:                                               ; preds = %25
  store i8 3, ptr %1, align 1, !dbg !148
  store i32 1, ptr %3, align 4
  br label %58, !dbg !148

31:                                               ; preds = %25
  br label %21, !dbg !137, !llvm.loop !150

32:                                               ; preds = %21
  store i32 8000000, ptr @SystemCoreClock, align 4, !dbg !152
  %33 = load i32, ptr @uwTickPrio, align 4, !dbg !153
  %34 = call zeroext i8 @HAL_InitTick(i32 noundef %33) #5, !dbg !155
  %35 = zext i8 %34 to i32, !dbg !155
  %36 = icmp ne i32 %35, 0, !dbg !156
  br i1 %36, label %37, label %38, !dbg !157

37:                                               ; preds = %32
  store i8 1, ptr %1, align 1, !dbg !158
  store i32 1, ptr %3, align 4
  br label %58, !dbg !158

38:                                               ; preds = %32
  %39 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !160
  %40 = and i32 %39, -17367041, !dbg !160
  store volatile i32 %40, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !160
  %41 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !161
  %42 = and i32 %41, -262145, !dbg !161
  store volatile i32 %42, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !161
  %43 = call i32 @HAL_GetTick() #5, !dbg !162
  store i32 %43, ptr %2, align 4, !dbg !163
  br label %44, !dbg !164

44:                                               ; preds = %54, %38
  %45 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !165
  %46 = and i32 %45, 33554432, !dbg !166
  %47 = icmp ne i32 %46, 0, !dbg !167
  br i1 %47, label %48, label %55, !dbg !164

48:                                               ; preds = %44
  %49 = call i32 @HAL_GetTick() #5, !dbg !168
  %50 = load i32, ptr %2, align 4, !dbg !171
  %51 = sub i32 %49, %50, !dbg !172
  %52 = icmp ugt i32 %51, 2, !dbg !173
  br i1 %52, label %53, label %54, !dbg !174

53:                                               ; preds = %48
  store i8 3, ptr %1, align 1, !dbg !175
  store i32 1, ptr %3, align 4
  br label %58, !dbg !175

54:                                               ; preds = %48
  br label %44, !dbg !164, !llvm.loop !177

55:                                               ; preds = %44
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !179
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !180
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !181
  store volatile i32 0, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 2), align 4, !dbg !182
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !183
  %57 = or i32 %56, 16777216, !dbg !183
  store volatile i32 %57, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !183
  store i8 0, ptr %1, align 1, !dbg !184
  store i32 1, ptr %3, align 4
  br label %58, !dbg !184

58:                                               ; preds = %55, %53, %37, %30, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #4, !dbg !185
  %59 = load i8, ptr %1, align 1, !dbg !185
  ret i8 %59, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: optsize
declare !dbg !186 dso_local i32 @HAL_GetTick() #3

; Function Attrs: optsize
declare !dbg !189 dso_local zeroext i8 @HAL_InitTick(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_RCC_OscConfig(ptr noundef %0) #0 !dbg !192 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !218, metadata !DIExpression()), !dbg !230
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %4, metadata !219, metadata !DIExpression()), !dbg !232
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #4, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %5, metadata !220, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %6, metadata !221, metadata !DIExpression()), !dbg !236
  %10 = load ptr, ptr %3, align 4, !dbg !237
  %11 = icmp eq ptr %10, null, !dbg !239
  br i1 %11, label %12, label %13, !dbg !240

12:                                               ; preds = %1
  store i8 1, ptr %2, align 1, !dbg !241
  store i32 1, ptr %7, align 4
  br label %626, !dbg !241

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 4, !dbg !243
  %15 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %14, i32 0, i32 0, !dbg !245
  %16 = load i32, ptr %15, align 4, !dbg !245
  %17 = and i32 %16, 1, !dbg !246
  %18 = icmp eq i32 %17, 1, !dbg !247
  br i1 %18, label %19, label %115, !dbg !248

19:                                               ; preds = %13
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !249
  %21 = and i32 %20, 12, !dbg !252
  %22 = icmp eq i32 %21, 4, !dbg !253
  br i1 %22, label %31, label %23, !dbg !254

23:                                               ; preds = %19
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !255
  %25 = and i32 %24, 12, !dbg !256
  %26 = icmp eq i32 %25, 8, !dbg !257
  br i1 %26, label %27, label %42, !dbg !258

27:                                               ; preds = %23
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !259
  %29 = and i32 %28, 98304, !dbg !260
  %30 = icmp eq i32 %29, 65536, !dbg !261
  br i1 %30, label %31, label %42, !dbg !262

31:                                               ; preds = %27, %19
  %32 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !263
  %33 = and i32 %32, 131072, !dbg !266
  %34 = icmp ne i32 %33, 0, !dbg !267
  br i1 %34, label %35, label %41, !dbg !268

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 4, !dbg !269
  %37 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %36, i32 0, i32 1, !dbg !270
  %38 = load i32, ptr %37, align 4, !dbg !270
  %39 = icmp eq i32 %38, 0, !dbg !271
  br i1 %39, label %40, label %41, !dbg !272

40:                                               ; preds = %35
  store i8 1, ptr %2, align 1, !dbg !273
  store i32 1, ptr %7, align 4
  br label %626, !dbg !273

41:                                               ; preds = %35, %31
  br label %114, !dbg !275

42:                                               ; preds = %27, %23
  br label %43, !dbg !276

43:                                               ; preds = %42
  %44 = load ptr, ptr %3, align 4, !dbg !278
  %45 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %44, i32 0, i32 1, !dbg !281
  %46 = load i32, ptr %45, align 4, !dbg !281
  %47 = icmp eq i32 %46, 1, !dbg !282
  br i1 %47, label %48, label %51, !dbg !283

48:                                               ; preds = %43
  %49 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !284
  %50 = or i32 %49, 65536, !dbg !284
  store volatile i32 %50, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !284
  br label %78, !dbg !286

51:                                               ; preds = %43
  %52 = load ptr, ptr %3, align 4, !dbg !287
  %53 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %52, i32 0, i32 1, !dbg !289
  %54 = load i32, ptr %53, align 4, !dbg !289
  %55 = icmp eq i32 %54, 0, !dbg !290
  br i1 %55, label %56, label %61, !dbg !291

56:                                               ; preds = %51
  %57 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !292
  %58 = and i32 %57, -65537, !dbg !292
  store volatile i32 %58, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !292
  %59 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !294
  %60 = and i32 %59, -262145, !dbg !294
  store volatile i32 %60, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !294
  br label %77, !dbg !295

61:                                               ; preds = %51
  %62 = load ptr, ptr %3, align 4, !dbg !296
  %63 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %62, i32 0, i32 1, !dbg !298
  %64 = load i32, ptr %63, align 4, !dbg !298
  %65 = icmp eq i32 %64, 5, !dbg !299
  br i1 %65, label %66, label %71, !dbg !300

66:                                               ; preds = %61
  %67 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !301
  %68 = or i32 %67, 262144, !dbg !301
  store volatile i32 %68, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !301
  %69 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !303
  %70 = or i32 %69, 65536, !dbg !303
  store volatile i32 %70, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !303
  br label %76, !dbg !304

71:                                               ; preds = %61
  %72 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !305
  %73 = and i32 %72, -65537, !dbg !305
  store volatile i32 %73, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !305
  %74 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !307
  %75 = and i32 %74, -262145, !dbg !307
  store volatile i32 %75, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !307
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %48
  br label %79, !dbg !308

79:                                               ; preds = %78
  br label %80, !dbg !308

80:                                               ; preds = %79
  %81 = load ptr, ptr %3, align 4, !dbg !309
  %82 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %81, i32 0, i32 1, !dbg !311
  %83 = load i32, ptr %82, align 4, !dbg !311
  %84 = icmp ne i32 %83, 0, !dbg !312
  br i1 %84, label %85, label %99, !dbg !313

85:                                               ; preds = %80
  %86 = call i32 @HAL_GetTick() #5, !dbg !314
  store i32 %86, ptr %4, align 4, !dbg !316
  br label %87, !dbg !317

87:                                               ; preds = %97, %85
  %88 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !318
  %89 = and i32 %88, 131072, !dbg !319
  %90 = icmp eq i32 %89, 0, !dbg !320
  br i1 %90, label %91, label %98, !dbg !317

91:                                               ; preds = %87
  %92 = call i32 @HAL_GetTick() #5, !dbg !321
  %93 = load i32, ptr %4, align 4, !dbg !324
  %94 = sub i32 %92, %93, !dbg !325
  %95 = icmp ugt i32 %94, 100, !dbg !326
  br i1 %95, label %96, label %97, !dbg !327

96:                                               ; preds = %91
  store i8 3, ptr %2, align 1, !dbg !328
  store i32 1, ptr %7, align 4
  br label %626, !dbg !328

97:                                               ; preds = %91
  br label %87, !dbg !317, !llvm.loop !330

98:                                               ; preds = %87
  br label %113, !dbg !332

99:                                               ; preds = %80
  %100 = call i32 @HAL_GetTick() #5, !dbg !333
  store i32 %100, ptr %4, align 4, !dbg !335
  br label %101, !dbg !336

101:                                              ; preds = %111, %99
  %102 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !337
  %103 = and i32 %102, 131072, !dbg !338
  %104 = icmp ne i32 %103, 0, !dbg !339
  br i1 %104, label %105, label %112, !dbg !336

105:                                              ; preds = %101
  %106 = call i32 @HAL_GetTick() #5, !dbg !340
  %107 = load i32, ptr %4, align 4, !dbg !343
  %108 = sub i32 %106, %107, !dbg !344
  %109 = icmp ugt i32 %108, 100, !dbg !345
  br i1 %109, label %110, label %111, !dbg !346

110:                                              ; preds = %105
  store i8 3, ptr %2, align 1, !dbg !347
  store i32 1, ptr %7, align 4
  br label %626, !dbg !347

111:                                              ; preds = %105
  br label %101, !dbg !336, !llvm.loop !349

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %41
  br label %115, !dbg !351

115:                                              ; preds = %114, %13
  %116 = load ptr, ptr %3, align 4, !dbg !352
  %117 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %116, i32 0, i32 0, !dbg !354
  %118 = load i32, ptr %117, align 4, !dbg !354
  %119 = and i32 %118, 2, !dbg !355
  %120 = icmp eq i32 %119, 2, !dbg !356
  br i1 %120, label %121, label %198, !dbg !357

121:                                              ; preds = %115
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !358
  %123 = and i32 %122, 12, !dbg !361
  %124 = icmp eq i32 %123, 0, !dbg !362
  br i1 %124, label %133, label %125, !dbg !363

125:                                              ; preds = %121
  %126 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !364
  %127 = and i32 %126, 12, !dbg !365
  %128 = icmp eq i32 %127, 8, !dbg !366
  br i1 %128, label %129, label %152, !dbg !367

129:                                              ; preds = %125
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !368
  %131 = and i32 %130, 98304, !dbg !369
  %132 = icmp eq i32 %131, 32768, !dbg !370
  br i1 %132, label %133, label %152, !dbg !371

133:                                              ; preds = %129, %121
  %134 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !372
  %135 = and i32 %134, 2, !dbg !375
  %136 = icmp ne i32 %135, 0, !dbg !376
  br i1 %136, label %137, label %143, !dbg !377

137:                                              ; preds = %133
  %138 = load ptr, ptr %3, align 4, !dbg !378
  %139 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %138, i32 0, i32 3, !dbg !379
  %140 = load i32, ptr %139, align 4, !dbg !379
  %141 = icmp ne i32 %140, 1, !dbg !380
  br i1 %141, label %142, label %143, !dbg !381

142:                                              ; preds = %137
  store i8 1, ptr %2, align 1, !dbg !382
  store i32 1, ptr %7, align 4
  br label %626, !dbg !382

143:                                              ; preds = %137, %133
  %144 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !384
  %145 = and i32 %144, -249, !dbg !386
  %146 = load ptr, ptr %3, align 4, !dbg !387
  %147 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %146, i32 0, i32 4, !dbg !388
  %148 = load i32, ptr %147, align 4, !dbg !388
  %149 = shl i32 %148, 3, !dbg !389
  %150 = or i32 %145, %149, !dbg !390
  store volatile i32 %150, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !391
  br label %151

151:                                              ; preds = %143
  br label %197, !dbg !392

152:                                              ; preds = %129, %125
  %153 = load ptr, ptr %3, align 4, !dbg !393
  %154 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %153, i32 0, i32 3, !dbg !396
  %155 = load i32, ptr %154, align 4, !dbg !396
  %156 = icmp ne i32 %155, 0, !dbg !397
  br i1 %156, label %157, label %180, !dbg !398

157:                                              ; preds = %152
  %158 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !399
  %159 = or i32 %158, 1, !dbg !399
  store volatile i32 %159, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !399
  %160 = call i32 @HAL_GetTick() #5, !dbg !401
  store i32 %160, ptr %4, align 4, !dbg !402
  br label %161, !dbg !403

161:                                              ; preds = %171, %157
  %162 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !404
  %163 = and i32 %162, 2, !dbg !405
  %164 = icmp eq i32 %163, 0, !dbg !406
  br i1 %164, label %165, label %172, !dbg !403

165:                                              ; preds = %161
  %166 = call i32 @HAL_GetTick() #5, !dbg !407
  %167 = load i32, ptr %4, align 4, !dbg !410
  %168 = sub i32 %166, %167, !dbg !411
  %169 = icmp ugt i32 %168, 2, !dbg !412
  br i1 %169, label %170, label %171, !dbg !413

170:                                              ; preds = %165
  store i8 3, ptr %2, align 1, !dbg !414
  store i32 1, ptr %7, align 4
  br label %626, !dbg !414

171:                                              ; preds = %165
  br label %161, !dbg !403, !llvm.loop !416

172:                                              ; preds = %161
  %173 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !418
  %174 = and i32 %173, -249, !dbg !419
  %175 = load ptr, ptr %3, align 4, !dbg !420
  %176 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %175, i32 0, i32 4, !dbg !421
  %177 = load i32, ptr %176, align 4, !dbg !421
  %178 = shl i32 %177, 3, !dbg !422
  %179 = or i32 %174, %178, !dbg !423
  store volatile i32 %179, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !424
  br label %196, !dbg !425

180:                                              ; preds = %152
  %181 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !426
  %182 = and i32 %181, -2, !dbg !426
  store volatile i32 %182, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !426
  %183 = call i32 @HAL_GetTick() #5, !dbg !428
  store i32 %183, ptr %4, align 4, !dbg !429
  br label %184, !dbg !430

184:                                              ; preds = %194, %180
  %185 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !431
  %186 = and i32 %185, 2, !dbg !432
  %187 = icmp ne i32 %186, 0, !dbg !433
  br i1 %187, label %188, label %195, !dbg !430

188:                                              ; preds = %184
  %189 = call i32 @HAL_GetTick() #5, !dbg !434
  %190 = load i32, ptr %4, align 4, !dbg !437
  %191 = sub i32 %189, %190, !dbg !438
  %192 = icmp ugt i32 %191, 2, !dbg !439
  br i1 %192, label %193, label %194, !dbg !440

193:                                              ; preds = %188
  store i8 3, ptr %2, align 1, !dbg !441
  store i32 1, ptr %7, align 4
  br label %626, !dbg !441

194:                                              ; preds = %188
  br label %184, !dbg !430, !llvm.loop !443

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %172
  br label %197

197:                                              ; preds = %196, %151
  br label %198, !dbg !445

198:                                              ; preds = %197, %115
  %199 = load ptr, ptr %3, align 4, !dbg !446
  %200 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %199, i32 0, i32 0, !dbg !448
  %201 = load i32, ptr %200, align 4, !dbg !448
  %202 = and i32 %201, 8, !dbg !449
  %203 = icmp eq i32 %202, 8, !dbg !450
  br i1 %203, label %204, label %242, !dbg !451

204:                                              ; preds = %198
  %205 = load ptr, ptr %3, align 4, !dbg !452
  %206 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %205, i32 0, i32 7, !dbg !455
  %207 = load i32, ptr %206, align 4, !dbg !455
  %208 = icmp ne i32 %207, 0, !dbg !456
  br i1 %208, label %209, label %225, !dbg !457

209:                                              ; preds = %204
  %210 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !458
  %211 = or i32 %210, 1, !dbg !458
  store volatile i32 %211, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !458
  %212 = call i32 @HAL_GetTick() #5, !dbg !460
  store i32 %212, ptr %4, align 4, !dbg !461
  br label %213, !dbg !462

213:                                              ; preds = %223, %209
  %214 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !463
  %215 = and i32 %214, 2, !dbg !464
  %216 = icmp eq i32 %215, 0, !dbg !465
  br i1 %216, label %217, label %224, !dbg !462

217:                                              ; preds = %213
  %218 = call i32 @HAL_GetTick() #5, !dbg !466
  %219 = load i32, ptr %4, align 4, !dbg !469
  %220 = sub i32 %218, %219, !dbg !470
  %221 = icmp ugt i32 %220, 2, !dbg !471
  br i1 %221, label %222, label %223, !dbg !472

222:                                              ; preds = %217
  store i8 3, ptr %2, align 1, !dbg !473
  store i32 1, ptr %7, align 4
  br label %626, !dbg !473

223:                                              ; preds = %217
  br label %213, !dbg !462, !llvm.loop !475

224:                                              ; preds = %213
  br label %241, !dbg !477

225:                                              ; preds = %204
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !478
  %227 = and i32 %226, -2, !dbg !478
  store volatile i32 %227, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !478
  %228 = call i32 @HAL_GetTick() #5, !dbg !480
  store i32 %228, ptr %4, align 4, !dbg !481
  br label %229, !dbg !482

229:                                              ; preds = %239, %225
  %230 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !483
  %231 = and i32 %230, 2, !dbg !484
  %232 = icmp ne i32 %231, 0, !dbg !485
  br i1 %232, label %233, label %240, !dbg !482

233:                                              ; preds = %229
  %234 = call i32 @HAL_GetTick() #5, !dbg !486
  %235 = load i32, ptr %4, align 4, !dbg !489
  %236 = sub i32 %234, %235, !dbg !490
  %237 = icmp ugt i32 %236, 2, !dbg !491
  br i1 %237, label %238, label %239, !dbg !492

238:                                              ; preds = %233
  store i8 3, ptr %2, align 1, !dbg !493
  store i32 1, ptr %7, align 4
  br label %626, !dbg !493

239:                                              ; preds = %233
  br label %229, !dbg !482, !llvm.loop !495

240:                                              ; preds = %229
  br label %241

241:                                              ; preds = %240, %224
  br label %242, !dbg !497

242:                                              ; preds = %241, %198
  %243 = load ptr, ptr %3, align 4, !dbg !498
  %244 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %243, i32 0, i32 0, !dbg !499
  %245 = load i32, ptr %244, align 4, !dbg !499
  %246 = and i32 %245, 4, !dbg !500
  %247 = icmp eq i32 %246, 4, !dbg !501
  br i1 %247, label %248, label %363, !dbg !502

248:                                              ; preds = %242
  call void @llvm.lifetime.start.p0(i64 1, ptr %8) #4, !dbg !503
  call void @llvm.dbg.declare(metadata ptr %8, metadata !222, metadata !DIExpression()), !dbg !504
  store i8 0, ptr %8, align 1, !dbg !504
  %249 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !505
  %250 = and i32 %249, 268435456, !dbg !506
  %251 = icmp eq i32 %250, 0, !dbg !507
  br i1 %251, label %252, label %261, !dbg !508

252:                                              ; preds = %248
  br label %253, !dbg !509

253:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #4, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %9, metadata !226, metadata !DIExpression()), !dbg !511
  %254 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !512
  %255 = or i32 %254, 268435456, !dbg !512
  store volatile i32 %255, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !512
  %256 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !513
  %257 = and i32 %256, 268435456, !dbg !514
  store volatile i32 %257, ptr %9, align 4, !dbg !515
  %258 = load volatile i32, ptr %9, align 4, !dbg !516
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #4, !dbg !517
  br label %259, !dbg !518

259:                                              ; preds = %253
  br label %260, !dbg !518

260:                                              ; preds = %259
  store i8 1, ptr %8, align 1, !dbg !519
  br label %261, !dbg !520

261:                                              ; preds = %260, %248
  %262 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !521
  %263 = and i32 %262, 256, !dbg !523
  %264 = icmp eq i32 %263, 0, !dbg !524
  br i1 %264, label %265, label %281, !dbg !525

265:                                              ; preds = %261
  %266 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !526
  %267 = or i32 %266, 256, !dbg !526
  store volatile i32 %267, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !526
  %268 = call i32 @HAL_GetTick() #5, !dbg !528
  store i32 %268, ptr %4, align 4, !dbg !529
  br label %269, !dbg !530

269:                                              ; preds = %279, %265
  %270 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !531
  %271 = and i32 %270, 256, !dbg !532
  %272 = icmp eq i32 %271, 0, !dbg !533
  br i1 %272, label %273, label %280, !dbg !530

273:                                              ; preds = %269
  %274 = call i32 @HAL_GetTick() #5, !dbg !534
  %275 = load i32, ptr %4, align 4, !dbg !537
  %276 = sub i32 %274, %275, !dbg !538
  %277 = icmp ugt i32 %276, 100, !dbg !539
  br i1 %277, label %278, label %279, !dbg !540

278:                                              ; preds = %273
  store i8 3, ptr %2, align 1, !dbg !541
  store i32 1, ptr %7, align 4
  br label %360, !dbg !541

279:                                              ; preds = %273
  br label %269, !dbg !530, !llvm.loop !543

280:                                              ; preds = %269
  br label %281, !dbg !545

281:                                              ; preds = %280, %261
  br label %282, !dbg !546

282:                                              ; preds = %281
  %283 = load ptr, ptr %3, align 4, !dbg !547
  %284 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %283, i32 0, i32 2, !dbg !550
  %285 = load i32, ptr %284, align 4, !dbg !550
  %286 = icmp eq i32 %285, 1, !dbg !551
  br i1 %286, label %287, label %290, !dbg !552

287:                                              ; preds = %282
  %288 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !553
  %289 = or i32 %288, 1, !dbg !553
  store volatile i32 %289, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !553
  br label %317, !dbg !555

290:                                              ; preds = %282
  %291 = load ptr, ptr %3, align 4, !dbg !556
  %292 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %291, i32 0, i32 2, !dbg !558
  %293 = load i32, ptr %292, align 4, !dbg !558
  %294 = icmp eq i32 %293, 0, !dbg !559
  br i1 %294, label %295, label %300, !dbg !560

295:                                              ; preds = %290
  %296 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !561
  %297 = and i32 %296, -2, !dbg !561
  store volatile i32 %297, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !561
  %298 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !563
  %299 = and i32 %298, -5, !dbg !563
  store volatile i32 %299, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !563
  br label %316, !dbg !564

300:                                              ; preds = %290
  %301 = load ptr, ptr %3, align 4, !dbg !565
  %302 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %301, i32 0, i32 2, !dbg !567
  %303 = load i32, ptr %302, align 4, !dbg !567
  %304 = icmp eq i32 %303, 5, !dbg !568
  br i1 %304, label %305, label %310, !dbg !569

305:                                              ; preds = %300
  %306 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !570
  %307 = or i32 %306, 4, !dbg !570
  store volatile i32 %307, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !570
  %308 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !572
  %309 = or i32 %308, 1, !dbg !572
  store volatile i32 %309, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !572
  br label %315, !dbg !573

310:                                              ; preds = %300
  %311 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !574
  %312 = and i32 %311, -2, !dbg !574
  store volatile i32 %312, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !574
  %313 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !576
  %314 = and i32 %313, -5, !dbg !576
  store volatile i32 %314, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !576
  br label %315

315:                                              ; preds = %310, %305
  br label %316

316:                                              ; preds = %315, %295
  br label %317

317:                                              ; preds = %316, %287
  br label %318, !dbg !577

318:                                              ; preds = %317
  br label %319, !dbg !577

319:                                              ; preds = %318
  %320 = load ptr, ptr %3, align 4, !dbg !578
  %321 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %320, i32 0, i32 2, !dbg !580
  %322 = load i32, ptr %321, align 4, !dbg !580
  %323 = icmp ne i32 %322, 0, !dbg !581
  br i1 %323, label %324, label %338, !dbg !582

324:                                              ; preds = %319
  %325 = call i32 @HAL_GetTick() #5, !dbg !583
  store i32 %325, ptr %4, align 4, !dbg !585
  br label %326, !dbg !586

326:                                              ; preds = %336, %324
  %327 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !587
  %328 = and i32 %327, 2, !dbg !588
  %329 = icmp eq i32 %328, 0, !dbg !589
  br i1 %329, label %330, label %337, !dbg !586

330:                                              ; preds = %326
  %331 = call i32 @HAL_GetTick() #5, !dbg !590
  %332 = load i32, ptr %4, align 4, !dbg !593
  %333 = sub i32 %331, %332, !dbg !594
  %334 = icmp ugt i32 %333, 5000, !dbg !595
  br i1 %334, label %335, label %336, !dbg !596

335:                                              ; preds = %330
  store i8 3, ptr %2, align 1, !dbg !597
  store i32 1, ptr %7, align 4
  br label %360, !dbg !597

336:                                              ; preds = %330
  br label %326, !dbg !586, !llvm.loop !599

337:                                              ; preds = %326
  br label %352, !dbg !601

338:                                              ; preds = %319
  %339 = call i32 @HAL_GetTick() #5, !dbg !602
  store i32 %339, ptr %4, align 4, !dbg !604
  br label %340, !dbg !605

340:                                              ; preds = %350, %338
  %341 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !606
  %342 = and i32 %341, 2, !dbg !607
  %343 = icmp ne i32 %342, 0, !dbg !608
  br i1 %343, label %344, label %351, !dbg !605

344:                                              ; preds = %340
  %345 = call i32 @HAL_GetTick() #5, !dbg !609
  %346 = load i32, ptr %4, align 4, !dbg !612
  %347 = sub i32 %345, %346, !dbg !613
  %348 = icmp ugt i32 %347, 5000, !dbg !614
  br i1 %348, label %349, label %350, !dbg !615

349:                                              ; preds = %344
  store i8 3, ptr %2, align 1, !dbg !616
  store i32 1, ptr %7, align 4
  br label %360, !dbg !616

350:                                              ; preds = %344
  br label %340, !dbg !605, !llvm.loop !618

351:                                              ; preds = %340
  br label %352

352:                                              ; preds = %351, %337
  %353 = load i8, ptr %8, align 1, !dbg !620
  %354 = zext i8 %353 to i32, !dbg !620
  %355 = icmp eq i32 %354, 1, !dbg !622
  br i1 %355, label %356, label %359, !dbg !623

356:                                              ; preds = %352
  %357 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !624
  %358 = and i32 %357, -268435457, !dbg !624
  store volatile i32 %358, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !624
  br label %359, !dbg !626

359:                                              ; preds = %356, %352
  store i32 0, ptr %7, align 4, !dbg !627
  br label %360, !dbg !627

360:                                              ; preds = %359, %349, %335, %278
  call void @llvm.lifetime.end.p0(i64 1, ptr %8) #4, !dbg !627
  %361 = load i32, ptr %7, align 4
  switch i32 %361, label %626 [
    i32 0, label %362
  ]

362:                                              ; preds = %360
  br label %363, !dbg !628

363:                                              ; preds = %362, %242
  %364 = load ptr, ptr %3, align 4, !dbg !629
  %365 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %364, i32 0, i32 0, !dbg !631
  %366 = load i32, ptr %365, align 4, !dbg !631
  %367 = and i32 %366, 16, !dbg !632
  %368 = icmp eq i32 %367, 16, !dbg !633
  br i1 %368, label %369, label %434, !dbg !634

369:                                              ; preds = %363
  %370 = load ptr, ptr %3, align 4, !dbg !635
  %371 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %370, i32 0, i32 5, !dbg !638
  %372 = load i32, ptr %371, align 4, !dbg !638
  %373 = icmp eq i32 %372, 1, !dbg !639
  br i1 %373, label %374, label %399, !dbg !640

374:                                              ; preds = %369
  %375 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !641
  %376 = or i32 %375, 4, !dbg !641
  store volatile i32 %376, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !641
  %377 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !643
  %378 = or i32 %377, 1, !dbg !643
  store volatile i32 %378, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !643
  %379 = call i32 @HAL_GetTick() #5, !dbg !644
  store i32 %379, ptr %4, align 4, !dbg !645
  br label %380, !dbg !646

380:                                              ; preds = %390, %374
  %381 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !647
  %382 = and i32 %381, 2, !dbg !648
  %383 = icmp eq i32 %382, 0, !dbg !649
  br i1 %383, label %384, label %391, !dbg !646

384:                                              ; preds = %380
  %385 = call i32 @HAL_GetTick() #5, !dbg !650
  %386 = load i32, ptr %4, align 4, !dbg !653
  %387 = sub i32 %385, %386, !dbg !654
  %388 = icmp ugt i32 %387, 2, !dbg !655
  br i1 %388, label %389, label %390, !dbg !656

389:                                              ; preds = %384
  store i8 3, ptr %2, align 1, !dbg !657
  store i32 1, ptr %7, align 4
  br label %626, !dbg !657

390:                                              ; preds = %384
  br label %380, !dbg !646, !llvm.loop !659

391:                                              ; preds = %380
  %392 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !661
  %393 = and i32 %392, -249, !dbg !662
  %394 = load ptr, ptr %3, align 4, !dbg !663
  %395 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %394, i32 0, i32 6, !dbg !664
  %396 = load i32, ptr %395, align 4, !dbg !664
  %397 = shl i32 %396, 3, !dbg !665
  %398 = or i32 %393, %397, !dbg !666
  store volatile i32 %398, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !667
  br label %433, !dbg !668

399:                                              ; preds = %369
  %400 = load ptr, ptr %3, align 4, !dbg !669
  %401 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %400, i32 0, i32 5, !dbg !671
  %402 = load i32, ptr %401, align 4, !dbg !671
  %403 = icmp eq i32 %402, -5, !dbg !672
  br i1 %403, label %404, label %414, !dbg !673

404:                                              ; preds = %399
  %405 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !674
  %406 = and i32 %405, -5, !dbg !674
  store volatile i32 %406, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !674
  %407 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !676
  %408 = and i32 %407, -249, !dbg !677
  %409 = load ptr, ptr %3, align 4, !dbg !678
  %410 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %409, i32 0, i32 6, !dbg !679
  %411 = load i32, ptr %410, align 4, !dbg !679
  %412 = shl i32 %411, 3, !dbg !680
  %413 = or i32 %408, %412, !dbg !681
  store volatile i32 %413, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !682
  br label %432, !dbg !683

414:                                              ; preds = %399
  %415 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !684
  %416 = or i32 %415, 4, !dbg !684
  store volatile i32 %416, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !684
  %417 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !686
  %418 = and i32 %417, -2, !dbg !686
  store volatile i32 %418, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !686
  %419 = call i32 @HAL_GetTick() #5, !dbg !687
  store i32 %419, ptr %4, align 4, !dbg !688
  br label %420, !dbg !689

420:                                              ; preds = %430, %414
  %421 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !690
  %422 = and i32 %421, 2, !dbg !691
  %423 = icmp ne i32 %422, 0, !dbg !692
  br i1 %423, label %424, label %431, !dbg !689

424:                                              ; preds = %420
  %425 = call i32 @HAL_GetTick() #5, !dbg !693
  %426 = load i32, ptr %4, align 4, !dbg !696
  %427 = sub i32 %425, %426, !dbg !697
  %428 = icmp ugt i32 %427, 2, !dbg !698
  br i1 %428, label %429, label %430, !dbg !699

429:                                              ; preds = %424
  store i8 3, ptr %2, align 1, !dbg !700
  store i32 1, ptr %7, align 4
  br label %626, !dbg !700

430:                                              ; preds = %424
  br label %420, !dbg !689, !llvm.loop !702

431:                                              ; preds = %420
  br label %432

432:                                              ; preds = %431, %404
  br label %433

433:                                              ; preds = %432, %391
  br label %434, !dbg !704

434:                                              ; preds = %433, %363
  %435 = load ptr, ptr %3, align 4, !dbg !705
  %436 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %435, i32 0, i32 0, !dbg !707
  %437 = load i32, ptr %436, align 4, !dbg !707
  %438 = and i32 %437, 32, !dbg !708
  %439 = icmp eq i32 %438, 32, !dbg !709
  br i1 %439, label %440, label %502, !dbg !710

440:                                              ; preds = %434
  %441 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !711
  %442 = and i32 %441, 12, !dbg !714
  %443 = icmp eq i32 %442, 12, !dbg !715
  br i1 %443, label %452, label %444, !dbg !716

444:                                              ; preds = %440
  %445 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !717
  %446 = and i32 %445, 12, !dbg !718
  %447 = icmp eq i32 %446, 8, !dbg !719
  br i1 %447, label %448, label %463, !dbg !720

448:                                              ; preds = %444
  %449 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !721
  %450 = and i32 %449, 98304, !dbg !722
  %451 = icmp eq i32 %450, 98304, !dbg !723
  br i1 %451, label %452, label %463, !dbg !724

452:                                              ; preds = %448, %440
  %453 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !725
  %454 = and i32 %453, 131072, !dbg !728
  %455 = icmp ne i32 %454, 0, !dbg !729
  br i1 %455, label %456, label %462, !dbg !730

456:                                              ; preds = %452
  %457 = load ptr, ptr %3, align 4, !dbg !731
  %458 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %457, i32 0, i32 8, !dbg !732
  %459 = load i32, ptr %458, align 4, !dbg !732
  %460 = icmp ne i32 %459, 1, !dbg !733
  br i1 %460, label %461, label %462, !dbg !734

461:                                              ; preds = %456
  store i8 1, ptr %2, align 1, !dbg !735
  store i32 1, ptr %7, align 4
  br label %626, !dbg !735

462:                                              ; preds = %456, %452
  br label %501, !dbg !737

463:                                              ; preds = %448, %444
  %464 = load ptr, ptr %3, align 4, !dbg !738
  %465 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %464, i32 0, i32 8, !dbg !741
  %466 = load i32, ptr %465, align 4, !dbg !741
  %467 = icmp ne i32 %466, 0, !dbg !742
  br i1 %467, label %468, label %484, !dbg !743

468:                                              ; preds = %463
  %469 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !744
  %470 = or i32 %469, 65536, !dbg !744
  store volatile i32 %470, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !744
  %471 = call i32 @HAL_GetTick() #5, !dbg !746
  store i32 %471, ptr %4, align 4, !dbg !747
  br label %472, !dbg !748

472:                                              ; preds = %482, %468
  %473 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !749
  %474 = and i32 %473, 131072, !dbg !750
  %475 = icmp eq i32 %474, 0, !dbg !751
  br i1 %475, label %476, label %483, !dbg !748

476:                                              ; preds = %472
  %477 = call i32 @HAL_GetTick() #5, !dbg !752
  %478 = load i32, ptr %4, align 4, !dbg !755
  %479 = sub i32 %477, %478, !dbg !756
  %480 = icmp ugt i32 %479, 2, !dbg !757
  br i1 %480, label %481, label %482, !dbg !758

481:                                              ; preds = %476
  store i8 3, ptr %2, align 1, !dbg !759
  store i32 1, ptr %7, align 4
  br label %626, !dbg !759

482:                                              ; preds = %476
  br label %472, !dbg !748, !llvm.loop !761

483:                                              ; preds = %472
  br label %500, !dbg !763

484:                                              ; preds = %463
  %485 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !764
  %486 = and i32 %485, -65537, !dbg !764
  store volatile i32 %486, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !764
  %487 = call i32 @HAL_GetTick() #5, !dbg !766
  store i32 %487, ptr %4, align 4, !dbg !767
  br label %488, !dbg !768

488:                                              ; preds = %498, %484
  %489 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !769
  %490 = and i32 %489, 131072, !dbg !770
  %491 = icmp ne i32 %490, 0, !dbg !771
  br i1 %491, label %492, label %499, !dbg !768

492:                                              ; preds = %488
  %493 = call i32 @HAL_GetTick() #5, !dbg !772
  %494 = load i32, ptr %4, align 4, !dbg !775
  %495 = sub i32 %493, %494, !dbg !776
  %496 = icmp ugt i32 %495, 2, !dbg !777
  br i1 %496, label %497, label %498, !dbg !778

497:                                              ; preds = %492
  store i8 3, ptr %2, align 1, !dbg !779
  store i32 1, ptr %7, align 4
  br label %626, !dbg !779

498:                                              ; preds = %492
  br label %488, !dbg !768, !llvm.loop !781

499:                                              ; preds = %488
  br label %500

500:                                              ; preds = %499, %483
  br label %501

501:                                              ; preds = %500, %462
  br label %502, !dbg !783

502:                                              ; preds = %501, %434
  %503 = load ptr, ptr %3, align 4, !dbg !784
  %504 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %503, i32 0, i32 9, !dbg !786
  %505 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %504, i32 0, i32 0, !dbg !787
  %506 = load i32, ptr %505, align 4, !dbg !787
  %507 = icmp ne i32 %506, 0, !dbg !788
  br i1 %507, label %508, label %625, !dbg !789

508:                                              ; preds = %502
  %509 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !790
  %510 = and i32 %509, 12, !dbg !793
  %511 = icmp ne i32 %510, 8, !dbg !794
  br i1 %511, label %512, label %588, !dbg !795

512:                                              ; preds = %508
  %513 = load ptr, ptr %3, align 4, !dbg !796
  %514 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %513, i32 0, i32 9, !dbg !799
  %515 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %514, i32 0, i32 0, !dbg !800
  %516 = load i32, ptr %515, align 4, !dbg !800
  %517 = icmp eq i32 %516, 2, !dbg !801
  br i1 %517, label %518, label %571, !dbg !802

518:                                              ; preds = %512
  %519 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !803
  %520 = and i32 %519, -16777217, !dbg !803
  store volatile i32 %520, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !803
  %521 = call i32 @HAL_GetTick() #5, !dbg !805
  store i32 %521, ptr %4, align 4, !dbg !806
  br label %522, !dbg !807

522:                                              ; preds = %532, %518
  %523 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !808
  %524 = and i32 %523, 33554432, !dbg !809
  %525 = icmp ne i32 %524, 0, !dbg !810
  br i1 %525, label %526, label %533, !dbg !807

526:                                              ; preds = %522
  %527 = call i32 @HAL_GetTick() #5, !dbg !811
  %528 = load i32, ptr %4, align 4, !dbg !814
  %529 = sub i32 %527, %528, !dbg !815
  %530 = icmp ugt i32 %529, 2, !dbg !816
  br i1 %530, label %531, label %532, !dbg !817

531:                                              ; preds = %526
  store i8 3, ptr %2, align 1, !dbg !818
  store i32 1, ptr %7, align 4
  br label %626, !dbg !818

532:                                              ; preds = %526
  br label %522, !dbg !807, !llvm.loop !820

533:                                              ; preds = %522
  br label %534, !dbg !822

534:                                              ; preds = %533
  %535 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !823
  %536 = and i32 %535, -16, !dbg !825
  %537 = load ptr, ptr %3, align 4, !dbg !826
  %538 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %537, i32 0, i32 9, !dbg !827
  %539 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %538, i32 0, i32 3, !dbg !828
  %540 = load i32, ptr %539, align 4, !dbg !828
  %541 = or i32 %536, %540, !dbg !829
  store volatile i32 %541, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !830
  %542 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !831
  %543 = and i32 %542, -4030465, !dbg !832
  %544 = load ptr, ptr %3, align 4, !dbg !833
  %545 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %544, i32 0, i32 9, !dbg !834
  %546 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %545, i32 0, i32 2, !dbg !835
  %547 = load i32, ptr %546, align 4, !dbg !835
  %548 = load ptr, ptr %3, align 4, !dbg !836
  %549 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %548, i32 0, i32 9, !dbg !837
  %550 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %549, i32 0, i32 1, !dbg !838
  %551 = load i32, ptr %550, align 4, !dbg !838
  %552 = or i32 %547, %551, !dbg !839
  %553 = or i32 %543, %552, !dbg !840
  store volatile i32 %553, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !841
  br label %554, !dbg !842

554:                                              ; preds = %534
  br label %555, !dbg !842

555:                                              ; preds = %554
  %556 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !843
  %557 = or i32 %556, 16777216, !dbg !843
  store volatile i32 %557, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !843
  %558 = call i32 @HAL_GetTick() #5, !dbg !844
  store i32 %558, ptr %4, align 4, !dbg !845
  br label %559, !dbg !846

559:                                              ; preds = %569, %555
  %560 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !847
  %561 = and i32 %560, 33554432, !dbg !848
  %562 = icmp eq i32 %561, 0, !dbg !849
  br i1 %562, label %563, label %570, !dbg !846

563:                                              ; preds = %559
  %564 = call i32 @HAL_GetTick() #5, !dbg !850
  %565 = load i32, ptr %4, align 4, !dbg !853
  %566 = sub i32 %564, %565, !dbg !854
  %567 = icmp ugt i32 %566, 2, !dbg !855
  br i1 %567, label %568, label %569, !dbg !856

568:                                              ; preds = %563
  store i8 3, ptr %2, align 1, !dbg !857
  store i32 1, ptr %7, align 4
  br label %626, !dbg !857

569:                                              ; preds = %563
  br label %559, !dbg !846, !llvm.loop !859

570:                                              ; preds = %559
  br label %587, !dbg !861

571:                                              ; preds = %512
  %572 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !862
  %573 = and i32 %572, -16777217, !dbg !862
  store volatile i32 %573, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !862
  %574 = call i32 @HAL_GetTick() #5, !dbg !864
  store i32 %574, ptr %4, align 4, !dbg !865
  br label %575, !dbg !866

575:                                              ; preds = %585, %571
  %576 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !867
  %577 = and i32 %576, 33554432, !dbg !868
  %578 = icmp ne i32 %577, 0, !dbg !869
  br i1 %578, label %579, label %586, !dbg !866

579:                                              ; preds = %575
  %580 = call i32 @HAL_GetTick() #5, !dbg !870
  %581 = load i32, ptr %4, align 4, !dbg !873
  %582 = sub i32 %580, %581, !dbg !874
  %583 = icmp ugt i32 %582, 2, !dbg !875
  br i1 %583, label %584, label %585, !dbg !876

584:                                              ; preds = %579
  store i8 3, ptr %2, align 1, !dbg !877
  store i32 1, ptr %7, align 4
  br label %626, !dbg !877

585:                                              ; preds = %579
  br label %575, !dbg !866, !llvm.loop !879

586:                                              ; preds = %575
  br label %587

587:                                              ; preds = %586, %570
  br label %624, !dbg !881

588:                                              ; preds = %508
  %589 = load ptr, ptr %3, align 4, !dbg !882
  %590 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %589, i32 0, i32 9, !dbg !885
  %591 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %590, i32 0, i32 0, !dbg !886
  %592 = load i32, ptr %591, align 4, !dbg !886
  %593 = icmp eq i32 %592, 1, !dbg !887
  br i1 %593, label %594, label %595, !dbg !888

594:                                              ; preds = %588
  store i8 1, ptr %2, align 1, !dbg !889
  store i32 1, ptr %7, align 4
  br label %626, !dbg !889

595:                                              ; preds = %588
  %596 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !891
  store i32 %596, ptr %5, align 4, !dbg !893
  %597 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !894
  store i32 %597, ptr %6, align 4, !dbg !895
  %598 = load i32, ptr %5, align 4, !dbg !896
  %599 = and i32 %598, 98304, !dbg !898
  %600 = load ptr, ptr %3, align 4, !dbg !899
  %601 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %600, i32 0, i32 9, !dbg !900
  %602 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %601, i32 0, i32 1, !dbg !901
  %603 = load i32, ptr %602, align 4, !dbg !901
  %604 = icmp ne i32 %599, %603, !dbg !902
  br i1 %604, label %621, label %605, !dbg !903

605:                                              ; preds = %595
  %606 = load i32, ptr %6, align 4, !dbg !904
  %607 = and i32 %606, 15, !dbg !905
  %608 = load ptr, ptr %3, align 4, !dbg !906
  %609 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %608, i32 0, i32 9, !dbg !907
  %610 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %609, i32 0, i32 3, !dbg !908
  %611 = load i32, ptr %610, align 4, !dbg !908
  %612 = icmp ne i32 %607, %611, !dbg !909
  br i1 %612, label %621, label %613, !dbg !910

613:                                              ; preds = %605
  %614 = load i32, ptr %5, align 4, !dbg !911
  %615 = and i32 %614, 3932160, !dbg !912
  %616 = load ptr, ptr %3, align 4, !dbg !913
  %617 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %616, i32 0, i32 9, !dbg !914
  %618 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %617, i32 0, i32 2, !dbg !915
  %619 = load i32, ptr %618, align 4, !dbg !915
  %620 = icmp ne i32 %615, %619, !dbg !916
  br i1 %620, label %621, label %622, !dbg !917

621:                                              ; preds = %613, %605, %595
  store i8 1, ptr %2, align 1, !dbg !918
  store i32 1, ptr %7, align 4
  br label %626, !dbg !918

622:                                              ; preds = %613
  br label %623

623:                                              ; preds = %622
  br label %624

624:                                              ; preds = %623, %587
  br label %625, !dbg !920

625:                                              ; preds = %624, %502
  store i8 0, ptr %2, align 1, !dbg !921
  store i32 1, ptr %7, align 4
  br label %626, !dbg !921

626:                                              ; preds = %625, %621, %594, %584, %568, %531, %497, %481, %461, %429, %389, %360, %238, %222, %193, %170, %142, %110, %96, %40, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !922
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #4, !dbg !922
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4, !dbg !922
  %627 = load i8, ptr %2, align 1, !dbg !922
  ret i8 %627, !dbg !922
}

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_RCC_ClockConfig(ptr noundef %0, i32 noundef %1) #0 !dbg !923 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !935, metadata !DIExpression()), !dbg !938
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !936, metadata !DIExpression()), !dbg !939
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #4, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %6, metadata !937, metadata !DIExpression()), !dbg !941
  %8 = load ptr, ptr %4, align 4, !dbg !942
  %9 = icmp eq ptr %8, null, !dbg !944
  br i1 %9, label %10, label %11, !dbg !945

10:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !dbg !946
  store i32 1, ptr %7, align 4
  br label %160, !dbg !946

11:                                               ; preds = %2
  %12 = load i32, ptr %5, align 4, !dbg !948
  %13 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !950
  %14 = and i32 %13, 1, !dbg !951
  %15 = icmp ugt i32 %12, %14, !dbg !952
  br i1 %15, label %16, label %27, !dbg !953

16:                                               ; preds = %11
  %17 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !954
  %18 = and i32 %17, -2, !dbg !956
  %19 = load i32, ptr %5, align 4, !dbg !957
  %20 = or i32 %18, %19, !dbg !958
  store volatile i32 %20, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !959
  %21 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !960
  %22 = and i32 %21, 1, !dbg !962
  %23 = load i32, ptr %5, align 4, !dbg !963
  %24 = icmp ne i32 %22, %23, !dbg !964
  br i1 %24, label %25, label %26, !dbg !965

25:                                               ; preds = %16
  store i8 1, ptr %3, align 1, !dbg !966
  store i32 1, ptr %7, align 4
  br label %160, !dbg !966

26:                                               ; preds = %16
  br label %27, !dbg !968

27:                                               ; preds = %26, %11
  %28 = load ptr, ptr %4, align 4, !dbg !969
  %29 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %28, i32 0, i32 0, !dbg !971
  %30 = load i32, ptr %29, align 4, !dbg !971
  %31 = and i32 %30, 2, !dbg !972
  %32 = icmp eq i32 %31, 2, !dbg !973
  br i1 %32, label %33, label %50, !dbg !974

33:                                               ; preds = %27
  %34 = load ptr, ptr %4, align 4, !dbg !975
  %35 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %34, i32 0, i32 0, !dbg !978
  %36 = load i32, ptr %35, align 4, !dbg !978
  %37 = and i32 %36, 4, !dbg !979
  %38 = icmp eq i32 %37, 4, !dbg !980
  br i1 %38, label %39, label %43, !dbg !981

39:                                               ; preds = %33
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !982
  %41 = and i32 %40, -1793, !dbg !984
  %42 = or i32 %41, 1792, !dbg !985
  store volatile i32 %42, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !986
  br label %43, !dbg !987

43:                                               ; preds = %39, %33
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !988
  %45 = and i32 %44, -241, !dbg !989
  %46 = load ptr, ptr %4, align 4, !dbg !990
  %47 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %46, i32 0, i32 2, !dbg !991
  %48 = load i32, ptr %47, align 4, !dbg !991
  %49 = or i32 %45, %48, !dbg !992
  store volatile i32 %49, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !993
  br label %50, !dbg !994

50:                                               ; preds = %43, %27
  %51 = load ptr, ptr %4, align 4, !dbg !995
  %52 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %51, i32 0, i32 0, !dbg !997
  %53 = load i32, ptr %52, align 4, !dbg !997
  %54 = and i32 %53, 1, !dbg !998
  %55 = icmp eq i32 %54, 1, !dbg !999
  br i1 %55, label %56, label %121, !dbg !1000

56:                                               ; preds = %50
  %57 = load ptr, ptr %4, align 4, !dbg !1001
  %58 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %57, i32 0, i32 1, !dbg !1004
  %59 = load i32, ptr %58, align 4, !dbg !1004
  %60 = icmp eq i32 %59, 1, !dbg !1005
  br i1 %60, label %61, label %67, !dbg !1006

61:                                               ; preds = %56
  %62 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1007
  %63 = and i32 %62, 131072, !dbg !1010
  %64 = icmp eq i32 %63, 0, !dbg !1011
  br i1 %64, label %65, label %66, !dbg !1012

65:                                               ; preds = %61
  store i8 1, ptr %3, align 1, !dbg !1013
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1013

66:                                               ; preds = %61
  br label %97, !dbg !1015

67:                                               ; preds = %56
  %68 = load ptr, ptr %4, align 4, !dbg !1016
  %69 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %68, i32 0, i32 1, !dbg !1018
  %70 = load i32, ptr %69, align 4, !dbg !1018
  %71 = icmp eq i32 %70, 2, !dbg !1019
  br i1 %71, label %72, label %78, !dbg !1020

72:                                               ; preds = %67
  %73 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1021
  %74 = and i32 %73, 33554432, !dbg !1024
  %75 = icmp eq i32 %74, 0, !dbg !1025
  br i1 %75, label %76, label %77, !dbg !1026

76:                                               ; preds = %72
  store i8 1, ptr %3, align 1, !dbg !1027
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1027

77:                                               ; preds = %72
  br label %96, !dbg !1029

78:                                               ; preds = %67
  %79 = load ptr, ptr %4, align 4, !dbg !1030
  %80 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %79, i32 0, i32 1, !dbg !1032
  %81 = load i32, ptr %80, align 4, !dbg !1032
  %82 = icmp eq i32 %81, 3, !dbg !1033
  br i1 %82, label %83, label %89, !dbg !1034

83:                                               ; preds = %78
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1035
  %85 = and i32 %84, 131072, !dbg !1038
  %86 = icmp eq i32 %85, 0, !dbg !1039
  br i1 %86, label %87, label %88, !dbg !1040

87:                                               ; preds = %83
  store i8 1, ptr %3, align 1, !dbg !1041
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1041

88:                                               ; preds = %83
  br label %95, !dbg !1043

89:                                               ; preds = %78
  %90 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1044
  %91 = and i32 %90, 2, !dbg !1047
  %92 = icmp eq i32 %91, 0, !dbg !1048
  br i1 %92, label %93, label %94, !dbg !1049

93:                                               ; preds = %89
  store i8 1, ptr %3, align 1, !dbg !1050
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1050

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %88
  br label %96

96:                                               ; preds = %95, %77
  br label %97

97:                                               ; preds = %96, %66
  %98 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1052
  %99 = and i32 %98, -4, !dbg !1053
  %100 = load ptr, ptr %4, align 4, !dbg !1054
  %101 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %100, i32 0, i32 1, !dbg !1055
  %102 = load i32, ptr %101, align 4, !dbg !1055
  %103 = or i32 %99, %102, !dbg !1056
  store volatile i32 %103, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1057
  %104 = call i32 @HAL_GetTick() #5, !dbg !1058
  store i32 %104, ptr %6, align 4, !dbg !1059
  br label %105, !dbg !1060

105:                                              ; preds = %119, %97
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1061
  %107 = and i32 %106, 12, !dbg !1062
  %108 = load ptr, ptr %4, align 4, !dbg !1063
  %109 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %108, i32 0, i32 1, !dbg !1064
  %110 = load i32, ptr %109, align 4, !dbg !1064
  %111 = shl i32 %110, 2, !dbg !1065
  %112 = icmp ne i32 %107, %111, !dbg !1066
  br i1 %112, label %113, label %120, !dbg !1060

113:                                              ; preds = %105
  %114 = call i32 @HAL_GetTick() #5, !dbg !1067
  %115 = load i32, ptr %6, align 4, !dbg !1070
  %116 = sub i32 %114, %115, !dbg !1071
  %117 = icmp ugt i32 %116, 5000, !dbg !1072
  br i1 %117, label %118, label %119, !dbg !1073

118:                                              ; preds = %113
  store i8 3, ptr %3, align 1, !dbg !1074
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1074

119:                                              ; preds = %113
  br label %105, !dbg !1060, !llvm.loop !1076

120:                                              ; preds = %105
  br label %121, !dbg !1078

121:                                              ; preds = %120, %50
  %122 = load i32, ptr %5, align 4, !dbg !1079
  %123 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1081
  %124 = and i32 %123, 1, !dbg !1082
  %125 = icmp ult i32 %122, %124, !dbg !1083
  br i1 %125, label %126, label %137, !dbg !1084

126:                                              ; preds = %121
  %127 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1085
  %128 = and i32 %127, -2, !dbg !1087
  %129 = load i32, ptr %5, align 4, !dbg !1088
  %130 = or i32 %128, %129, !dbg !1089
  store volatile i32 %130, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1090
  %131 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1091
  %132 = and i32 %131, 1, !dbg !1093
  %133 = load i32, ptr %5, align 4, !dbg !1094
  %134 = icmp ne i32 %132, %133, !dbg !1095
  br i1 %134, label %135, label %136, !dbg !1096

135:                                              ; preds = %126
  store i8 1, ptr %3, align 1, !dbg !1097
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1097

136:                                              ; preds = %126
  br label %137, !dbg !1099

137:                                              ; preds = %136, %121
  %138 = load ptr, ptr %4, align 4, !dbg !1100
  %139 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %138, i32 0, i32 0, !dbg !1102
  %140 = load i32, ptr %139, align 4, !dbg !1102
  %141 = and i32 %140, 4, !dbg !1103
  %142 = icmp eq i32 %141, 4, !dbg !1104
  br i1 %142, label %143, label %150, !dbg !1105

143:                                              ; preds = %137
  %144 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1106
  %145 = and i32 %144, -1793, !dbg !1108
  %146 = load ptr, ptr %4, align 4, !dbg !1109
  %147 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %146, i32 0, i32 3, !dbg !1110
  %148 = load i32, ptr %147, align 4, !dbg !1110
  %149 = or i32 %145, %148, !dbg !1111
  store volatile i32 %149, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1112
  br label %150, !dbg !1113

150:                                              ; preds = %143, %137
  %151 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !1114
  %152 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1115
  %153 = and i32 %152, 240, !dbg !1116
  %154 = lshr i32 %153, 4, !dbg !1117
  %155 = getelementptr inbounds [16 x i8], ptr @AHBPrescTable, i32 0, i32 %154, !dbg !1118
  %156 = load i8, ptr %155, align 1, !dbg !1118
  %157 = zext i8 %156 to i32, !dbg !1118
  %158 = lshr i32 %151, %157, !dbg !1119
  store i32 %158, ptr @SystemCoreClock, align 4, !dbg !1120
  %159 = call zeroext i8 @HAL_InitTick(i32 noundef 3) #5, !dbg !1121
  store i8 0, ptr %3, align 1, !dbg !1122
  store i32 1, ptr %7, align 4
  br label %160, !dbg !1122

160:                                              ; preds = %150, %135, %118, %93, %87, %76, %65, %25, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #4, !dbg !1123
  %161 = load i8, ptr %3, align 1, !dbg !1123
  ret i8 %161, !dbg !1123
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_RCC_GetSysClockFreq() #0 !dbg !2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #4, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %1, metadata !98, metadata !DIExpression()), !dbg !1125
  store i32 0, ptr %1, align 4, !dbg !1125
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #4, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %2, metadata !99, metadata !DIExpression()), !dbg !1126
  store i32 0, ptr %2, align 4, !dbg !1126
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %3, metadata !100, metadata !DIExpression()), !dbg !1127
  store i32 0, ptr %3, align 4, !dbg !1127
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4, !dbg !1124
  call void @llvm.dbg.declare(metadata ptr %4, metadata !101, metadata !DIExpression()), !dbg !1128
  store i32 0, ptr %4, align 4, !dbg !1128
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #4, !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %5, metadata !102, metadata !DIExpression()), !dbg !1130
  store i32 0, ptr %5, align 4, !dbg !1130
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1131
  store i32 %6, ptr %1, align 4, !dbg !1132
  %7 = load i32, ptr %1, align 4, !dbg !1133
  %8 = and i32 %7, 12, !dbg !1134
  switch i32 %8, label %65 [
    i32 4, label %9
    i32 8, label %10
    i32 12, label %63
    i32 0, label %64
  ], !dbg !1135

9:                                                ; preds = %0
  store i32 8000000, ptr %5, align 4, !dbg !1136
  br label %66, !dbg !1139

10:                                               ; preds = %0
  %11 = load i32, ptr %1, align 4, !dbg !1140
  %12 = and i32 %11, 3932160, !dbg !1142
  %13 = lshr i32 %12, 18, !dbg !1143
  %14 = getelementptr inbounds [16 x i8], ptr @HAL_RCC_GetSysClockFreq.aPLLMULFactorTable, i32 0, i32 %13, !dbg !1144
  %15 = load i8, ptr %14, align 1, !dbg !1144
  %16 = zext i8 %15 to i32, !dbg !1144
  store i32 %16, ptr %4, align 4, !dbg !1145
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !1146
  %18 = and i32 %17, 15, !dbg !1147
  %19 = lshr i32 %18, 0, !dbg !1148
  %20 = getelementptr inbounds [16 x i8], ptr @HAL_RCC_GetSysClockFreq.aPredivFactorTable, i32 0, i32 %19, !dbg !1149
  %21 = load i8, ptr %20, align 1, !dbg !1149
  %22 = zext i8 %21 to i32, !dbg !1149
  store i32 %22, ptr %2, align 4, !dbg !1150
  %23 = load i32, ptr %1, align 4, !dbg !1151
  %24 = and i32 %23, 98304, !dbg !1153
  %25 = icmp eq i32 %24, 65536, !dbg !1154
  br i1 %25, label %26, label %36, !dbg !1155

26:                                               ; preds = %10
  %27 = load i32, ptr %2, align 4, !dbg !1156
  %28 = zext i32 %27 to i64, !dbg !1158
  %29 = udiv i64 8000000, %28, !dbg !1159
  %30 = trunc i64 %29 to i32, !dbg !1160
  %31 = zext i32 %30 to i64, !dbg !1160
  %32 = load i32, ptr %4, align 4, !dbg !1161
  %33 = zext i32 %32 to i64, !dbg !1162
  %34 = mul i64 %31, %33, !dbg !1163
  %35 = trunc i64 %34 to i32, !dbg !1160
  store i32 %35, ptr %3, align 4, !dbg !1164
  br label %61, !dbg !1165

36:                                               ; preds = %10
  %37 = load i32, ptr %1, align 4, !dbg !1166
  %38 = and i32 %37, 98304, !dbg !1168
  %39 = icmp eq i32 %38, 98304, !dbg !1169
  br i1 %39, label %40, label %50, !dbg !1170

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4, !dbg !1171
  %42 = zext i32 %41 to i64, !dbg !1173
  %43 = udiv i64 48000000, %42, !dbg !1174
  %44 = trunc i64 %43 to i32, !dbg !1175
  %45 = zext i32 %44 to i64, !dbg !1175
  %46 = load i32, ptr %4, align 4, !dbg !1176
  %47 = zext i32 %46 to i64, !dbg !1177
  %48 = mul i64 %45, %47, !dbg !1178
  %49 = trunc i64 %48 to i32, !dbg !1175
  store i32 %49, ptr %3, align 4, !dbg !1179
  br label %60, !dbg !1180

50:                                               ; preds = %36
  %51 = load i32, ptr %2, align 4, !dbg !1181
  %52 = zext i32 %51 to i64, !dbg !1183
  %53 = udiv i64 8000000, %52, !dbg !1184
  %54 = trunc i64 %53 to i32, !dbg !1185
  %55 = zext i32 %54 to i64, !dbg !1185
  %56 = load i32, ptr %4, align 4, !dbg !1186
  %57 = zext i32 %56 to i64, !dbg !1187
  %58 = mul i64 %55, %57, !dbg !1188
  %59 = trunc i64 %58 to i32, !dbg !1185
  store i32 %59, ptr %3, align 4, !dbg !1189
  br label %60

60:                                               ; preds = %50, %40
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, ptr %3, align 4, !dbg !1190
  store i32 %62, ptr %5, align 4, !dbg !1191
  br label %66, !dbg !1192

63:                                               ; preds = %0
  store i32 48000000, ptr %5, align 4, !dbg !1193
  br label %66, !dbg !1195

64:                                               ; preds = %0
  br label %65, !dbg !1196

65:                                               ; preds = %0, %64
  store i32 8000000, ptr %5, align 4, !dbg !1197
  br label %66, !dbg !1199

66:                                               ; preds = %65, %63, %61, %9
  %67 = load i32, ptr %5, align 4, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #4, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #4, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #4, !dbg !1201
  ret i32 %67, !dbg !1202
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_MCOConfig(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !1203 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.GPIO_InitTypeDef, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1207, metadata !DIExpression()), !dbg !1222
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1208, metadata !DIExpression()), !dbg !1223
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.lifetime.start.p0(i64 20, ptr %7) #4, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1210, metadata !DIExpression()), !dbg !1226
  %9 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 1, !dbg !1227
  store i32 2, ptr %9, align 4, !dbg !1228
  %10 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 3, !dbg !1229
  store i32 3, ptr %10, align 4, !dbg !1230
  %11 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 2, !dbg !1231
  store i32 0, ptr %11, align 4, !dbg !1232
  %12 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 0, !dbg !1233
  store i32 256, ptr %12, align 4, !dbg !1234
  %13 = getelementptr inbounds %struct.GPIO_InitTypeDef, ptr %7, i32 0, i32 4, !dbg !1235
  store i32 0, ptr %13, align 4, !dbg !1236
  br label %14, !dbg !1237

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #4, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1220, metadata !DIExpression()), !dbg !1239
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1240
  %16 = or i32 %15, 131072, !dbg !1240
  store volatile i32 %16, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1240
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 5), align 4, !dbg !1241
  %18 = and i32 %17, 131072, !dbg !1242
  store volatile i32 %18, ptr %8, align 4, !dbg !1243
  %19 = load volatile i32, ptr %8, align 4, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #4, !dbg !1245
  br label %20, !dbg !1246

20:                                               ; preds = %14
  br label %21, !dbg !1246

21:                                               ; preds = %20
  call void @HAL_GPIO_Init(ptr noundef inttoptr (i32 1207959552 to ptr), ptr noundef %7) #5, !dbg !1247
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1248
  %23 = and i32 %22, -2130706433, !dbg !1249
  %24 = load i32, ptr %5, align 4, !dbg !1250
  %25 = load i32, ptr %6, align 4, !dbg !1251
  %26 = or i32 %24, %25, !dbg !1252
  %27 = or i32 %23, %26, !dbg !1253
  store volatile i32 %27, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1254
  call void @llvm.lifetime.end.p0(i64 20, ptr %7) #4, !dbg !1255
  ret void, !dbg !1255
}

; Function Attrs: optsize
declare !dbg !1256 dso_local void @HAL_GPIO_Init(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_EnableCSS() #0 !dbg !1260 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1263
  %2 = or i32 %1, 524288, !dbg !1263
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1263
  ret void, !dbg !1264
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_DisableCSS() #0 !dbg !1265 {
  %1 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1266
  %2 = and i32 %1, -524289, !dbg !1266
  store volatile i32 %2, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1266
  ret void, !dbg !1267
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_RCC_GetHCLKFreq() #0 !dbg !1268 {
  %1 = load i32, ptr @SystemCoreClock, align 4, !dbg !1269
  ret i32 %1, !dbg !1270
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_RCC_GetPCLK1Freq() #0 !dbg !1271 {
  %1 = call i32 @HAL_RCC_GetHCLKFreq() #5, !dbg !1272
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1273
  %3 = and i32 %2, 1792, !dbg !1274
  %4 = lshr i32 %3, 8, !dbg !1275
  %5 = getelementptr inbounds [8 x i8], ptr @APBPrescTable, i32 0, i32 %4, !dbg !1276
  %6 = load i8, ptr %5, align 1, !dbg !1276
  %7 = zext i8 %6 to i32, !dbg !1276
  %8 = lshr i32 %1, %7, !dbg !1277
  ret i32 %8, !dbg !1278
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_GetOscConfig(ptr noundef %0) #0 !dbg !1279 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1284
  %3 = load ptr, ptr %2, align 4, !dbg !1285
  %4 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %3, i32 0, i32 0, !dbg !1286
  store i32 31, ptr %4, align 4, !dbg !1287
  %5 = load ptr, ptr %2, align 4, !dbg !1288
  %6 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %5, i32 0, i32 0, !dbg !1289
  %7 = load i32, ptr %6, align 4, !dbg !1290
  %8 = or i32 %7, 32, !dbg !1290
  store i32 %8, ptr %6, align 4, !dbg !1290
  %9 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1291
  %10 = and i32 %9, 262144, !dbg !1293
  %11 = icmp eq i32 %10, 262144, !dbg !1294
  br i1 %11, label %12, label %15, !dbg !1295

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 4, !dbg !1296
  %14 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %13, i32 0, i32 1, !dbg !1298
  store i32 5, ptr %14, align 4, !dbg !1299
  br label %26, !dbg !1300

15:                                               ; preds = %1
  %16 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1301
  %17 = and i32 %16, 65536, !dbg !1303
  %18 = icmp eq i32 %17, 65536, !dbg !1304
  br i1 %18, label %19, label %22, !dbg !1305

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 4, !dbg !1306
  %21 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %20, i32 0, i32 1, !dbg !1308
  store i32 1, ptr %21, align 4, !dbg !1309
  br label %25, !dbg !1310

22:                                               ; preds = %15
  %23 = load ptr, ptr %2, align 4, !dbg !1311
  %24 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %23, i32 0, i32 1, !dbg !1313
  store i32 0, ptr %24, align 4, !dbg !1314
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1315
  %28 = and i32 %27, 1, !dbg !1317
  %29 = icmp eq i32 %28, 1, !dbg !1318
  br i1 %29, label %30, label %33, !dbg !1319

30:                                               ; preds = %26
  %31 = load ptr, ptr %2, align 4, !dbg !1320
  %32 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %31, i32 0, i32 3, !dbg !1322
  store i32 1, ptr %32, align 4, !dbg !1323
  br label %36, !dbg !1324

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 4, !dbg !1325
  %35 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %34, i32 0, i32 3, !dbg !1327
  store i32 0, ptr %35, align 4, !dbg !1328
  br label %36

36:                                               ; preds = %33, %30
  %37 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1329
  %38 = and i32 %37, 248, !dbg !1330
  %39 = lshr i32 %38, 3, !dbg !1331
  %40 = load ptr, ptr %2, align 4, !dbg !1332
  %41 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %40, i32 0, i32 4, !dbg !1333
  store i32 %39, ptr %41, align 4, !dbg !1334
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !1335
  %43 = and i32 %42, 4, !dbg !1337
  %44 = icmp eq i32 %43, 4, !dbg !1338
  br i1 %44, label %45, label %48, !dbg !1339

45:                                               ; preds = %36
  %46 = load ptr, ptr %2, align 4, !dbg !1340
  %47 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %46, i32 0, i32 2, !dbg !1342
  store i32 5, ptr %47, align 4, !dbg !1343
  br label %59, !dbg !1344

48:                                               ; preds = %36
  %49 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !1345
  %50 = and i32 %49, 1, !dbg !1347
  %51 = icmp eq i32 %50, 1, !dbg !1348
  br i1 %51, label %52, label %55, !dbg !1349

52:                                               ; preds = %48
  %53 = load ptr, ptr %2, align 4, !dbg !1350
  %54 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %53, i32 0, i32 2, !dbg !1352
  store i32 1, ptr %54, align 4, !dbg !1353
  br label %58, !dbg !1354

55:                                               ; preds = %48
  %56 = load ptr, ptr %2, align 4, !dbg !1355
  %57 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %56, i32 0, i32 2, !dbg !1357
  store i32 0, ptr %57, align 4, !dbg !1358
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %45
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !1359
  %61 = and i32 %60, 1, !dbg !1361
  %62 = icmp eq i32 %61, 1, !dbg !1362
  br i1 %62, label %63, label %66, !dbg !1363

63:                                               ; preds = %59
  %64 = load ptr, ptr %2, align 4, !dbg !1364
  %65 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %64, i32 0, i32 7, !dbg !1366
  store i32 1, ptr %65, align 4, !dbg !1367
  br label %69, !dbg !1368

66:                                               ; preds = %59
  %67 = load ptr, ptr %2, align 4, !dbg !1369
  %68 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %67, i32 0, i32 7, !dbg !1371
  store i32 0, ptr %68, align 4, !dbg !1372
  br label %69

69:                                               ; preds = %66, %63
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1373
  %71 = and i32 %70, 1, !dbg !1375
  %72 = icmp eq i32 %71, 1, !dbg !1376
  br i1 %72, label %73, label %76, !dbg !1377

73:                                               ; preds = %69
  %74 = load ptr, ptr %2, align 4, !dbg !1378
  %75 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %74, i32 0, i32 5, !dbg !1380
  store i32 1, ptr %75, align 4, !dbg !1381
  br label %79, !dbg !1382

76:                                               ; preds = %69
  %77 = load ptr, ptr %2, align 4, !dbg !1383
  %78 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %77, i32 0, i32 5, !dbg !1385
  store i32 0, ptr %78, align 4, !dbg !1386
  br label %79

79:                                               ; preds = %76, %73
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1387
  %81 = and i32 %80, 248, !dbg !1388
  %82 = lshr i32 %81, 3, !dbg !1389
  %83 = load ptr, ptr %2, align 4, !dbg !1390
  %84 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %83, i32 0, i32 6, !dbg !1391
  store i32 %82, ptr %84, align 4, !dbg !1392
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 13), align 4, !dbg !1393
  %86 = and i32 %85, 65536, !dbg !1394
  %87 = icmp ne i32 %86, 0, !dbg !1395
  %88 = zext i1 %87 to i64, !dbg !1396
  %89 = select i1 %87, i32 1, i32 0, !dbg !1396
  %90 = load ptr, ptr %2, align 4, !dbg !1397
  %91 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %90, i32 0, i32 8, !dbg !1398
  store i32 %89, ptr %91, align 4, !dbg !1399
  %92 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !1400
  %93 = and i32 %92, 16777216, !dbg !1402
  %94 = icmp eq i32 %93, 16777216, !dbg !1403
  br i1 %94, label %95, label %99, !dbg !1404

95:                                               ; preds = %79
  %96 = load ptr, ptr %2, align 4, !dbg !1405
  %97 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %96, i32 0, i32 9, !dbg !1407
  %98 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %97, i32 0, i32 0, !dbg !1408
  store i32 2, ptr %98, align 4, !dbg !1409
  br label %103, !dbg !1410

99:                                               ; preds = %79
  %100 = load ptr, ptr %2, align 4, !dbg !1411
  %101 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %100, i32 0, i32 9, !dbg !1413
  %102 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %101, i32 0, i32 0, !dbg !1414
  store i32 1, ptr %102, align 4, !dbg !1415
  br label %103

103:                                              ; preds = %99, %95
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1416
  %105 = and i32 %104, 98304, !dbg !1417
  %106 = load ptr, ptr %2, align 4, !dbg !1418
  %107 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %106, i32 0, i32 9, !dbg !1419
  %108 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %107, i32 0, i32 1, !dbg !1420
  store i32 %105, ptr %108, align 4, !dbg !1421
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1422
  %110 = and i32 %109, 3932160, !dbg !1423
  %111 = load ptr, ptr %2, align 4, !dbg !1424
  %112 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %111, i32 0, i32 9, !dbg !1425
  %113 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %112, i32 0, i32 2, !dbg !1426
  store i32 %110, ptr %113, align 4, !dbg !1427
  %114 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 11), align 4, !dbg !1428
  %115 = and i32 %114, 15, !dbg !1429
  %116 = load ptr, ptr %2, align 4, !dbg !1430
  %117 = getelementptr inbounds %struct.RCC_OscInitTypeDef, ptr %116, i32 0, i32 9, !dbg !1431
  %118 = getelementptr inbounds %struct.RCC_PLLInitTypeDef, ptr %117, i32 0, i32 3, !dbg !1432
  store i32 %115, ptr %118, align 4, !dbg !1433
  ret void, !dbg !1434
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_GetClockConfig(ptr noundef %0, ptr noundef %1) #0 !dbg !1435 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1440, metadata !DIExpression()), !dbg !1442
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1441, metadata !DIExpression()), !dbg !1443
  %5 = load ptr, ptr %3, align 4, !dbg !1444
  %6 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %5, i32 0, i32 0, !dbg !1445
  store i32 7, ptr %6, align 4, !dbg !1446
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1447
  %8 = and i32 %7, 3, !dbg !1448
  %9 = load ptr, ptr %3, align 4, !dbg !1449
  %10 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %9, i32 0, i32 1, !dbg !1450
  store i32 %8, ptr %10, align 4, !dbg !1451
  %11 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1452
  %12 = and i32 %11, 240, !dbg !1453
  %13 = load ptr, ptr %3, align 4, !dbg !1454
  %14 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %13, i32 0, i32 2, !dbg !1455
  store i32 %12, ptr %14, align 4, !dbg !1456
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 1), align 4, !dbg !1457
  %16 = and i32 %15, 1792, !dbg !1458
  %17 = load ptr, ptr %3, align 4, !dbg !1459
  %18 = getelementptr inbounds %struct.RCC_ClkInitTypeDef, ptr %17, i32 0, i32 3, !dbg !1460
  store i32 %16, ptr %18, align 4, !dbg !1461
  %19 = load volatile i32, ptr inttoptr (i32 1073881088 to ptr), align 4, !dbg !1462
  %20 = and i32 %19, 1, !dbg !1463
  %21 = load ptr, ptr %4, align 4, !dbg !1464
  store i32 %20, ptr %21, align 4, !dbg !1465
  ret void, !dbg !1466
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCC_NMI_IRQHandler() #0 !dbg !1467 {
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 2), align 4, !dbg !1468
  %2 = and i32 %1, 128, !dbg !1470
  %3 = icmp eq i32 %2, 128, !dbg !1471
  br i1 %3, label %4, label %5, !dbg !1472

4:                                                ; preds = %0
  call void @HAL_RCC_CSSCallback() #5, !dbg !1473
  store volatile i8 -128, ptr inttoptr (i32 1073877002 to ptr), align 1, !dbg !1475
  br label %5, !dbg !1476

5:                                                ; preds = %4, %0
  ret void, !dbg !1477
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_RCC_CSSCallback() #0 !dbg !1478 {
  ret void, !dbg !1479
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aPLLMULFactorTable", scope: !2, file: !3, line: 1097, type: !93, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !3, file: !3, line: 1095, type: !4, scopeLine: 1096, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !97)
!3 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc.c", directory: "/home/sri/zephyrproject")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !7, line: 64, baseType: !8)
!7 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !25, globals: !90, splitDebugInlining: false, nameTableKind: None)
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
!97 = !{!98, !99, !100, !101, !102}
!98 = !DILocalVariable(name: "tmpreg", scope: !2, file: !3, line: 1102, type: !6)
!99 = !DILocalVariable(name: "prediv", scope: !2, file: !3, line: 1102, type: !6)
!100 = !DILocalVariable(name: "pllclk", scope: !2, file: !3, line: 1102, type: !6)
!101 = !DILocalVariable(name: "pllmul", scope: !2, file: !3, line: 1102, type: !6)
!102 = !DILocalVariable(name: "sysclockfreq", scope: !2, file: !3, line: 1103, type: !6)
!103 = !{i32 7, !"Dwarf Version", i32 4}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 4}
!106 = !{i32 1, !"static_rwdata", i32 1}
!107 = !{i32 1, !"enumsize_buildattr", i32 1}
!108 = !{i32 1, !"armlib_unavailable", i32 0}
!109 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!110 = distinct !DISubprogram(name: "HAL_RCC_DeInit", scope: !3, file: !3, line: 208, type: !111, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !114)
!111 = !DISubroutineType(types: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !13, line: 44, baseType: !12)
!114 = !{!115}
!115 = !DILocalVariable(name: "tickstart", scope: !110, file: !3, line: 210, type: !6)
!116 = !DILocation(line: 210, column: 3, scope: !110)
!117 = !DILocation(line: 210, column: 12, scope: !110)
!118 = !DILocation(line: 213, column: 15, scope: !110)
!119 = !DILocation(line: 213, column: 13, scope: !110)
!120 = !DILocation(line: 216, column: 75, scope: !110)
!121 = !DILocation(line: 219, column: 3, scope: !110)
!122 = !DILocation(line: 219, column: 78, scope: !110)
!123 = !DILocation(line: 219, column: 82, scope: !110)
!124 = !DILocation(line: 219, column: 103, scope: !110)
!125 = !DILocation(line: 221, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 221, column: 9)
!127 = distinct !DILexicalBlock(scope: !110, file: !3, line: 220, column: 3)
!128 = !DILocation(line: 221, column: 26, scope: !126)
!129 = !DILocation(line: 221, column: 24, scope: !126)
!130 = !DILocation(line: 221, column: 37, scope: !126)
!131 = !DILocation(line: 221, column: 9, scope: !127)
!132 = !DILocation(line: 223, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !3, line: 222, column: 5)
!134 = distinct !{!134, !121, !135}
!135 = !DILocation(line: 225, column: 3, scope: !110)
!136 = !DILocation(line: 228, column: 77, scope: !110)
!137 = !DILocation(line: 231, column: 3, scope: !110)
!138 = !DILocation(line: 231, column: 78, scope: !110)
!139 = !DILocation(line: 231, column: 84, scope: !110)
!140 = !DILocation(line: 231, column: 105, scope: !110)
!141 = !DILocation(line: 233, column: 10, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 233, column: 9)
!143 = distinct !DILexicalBlock(scope: !110, file: !3, line: 232, column: 3)
!144 = !DILocation(line: 233, column: 26, scope: !142)
!145 = !DILocation(line: 233, column: 24, scope: !142)
!146 = !DILocation(line: 233, column: 37, scope: !142)
!147 = !DILocation(line: 233, column: 9, scope: !143)
!148 = !DILocation(line: 235, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !142, file: !3, line: 234, column: 5)
!150 = distinct !{!150, !137, !151}
!151 = !DILocation(line: 237, column: 3, scope: !110)
!152 = !DILocation(line: 240, column: 19, scope: !110)
!153 = !DILocation(line: 243, column: 20, scope: !154)
!154 = distinct !DILexicalBlock(scope: !110, file: !3, line: 243, column: 7)
!155 = !DILocation(line: 243, column: 7, scope: !154)
!156 = !DILocation(line: 243, column: 32, scope: !154)
!157 = !DILocation(line: 243, column: 7, scope: !110)
!158 = !DILocation(line: 245, column: 5, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !3, line: 244, column: 3)
!160 = !DILocation(line: 249, column: 75, scope: !110)
!161 = !DILocation(line: 252, column: 75, scope: !110)
!162 = !DILocation(line: 255, column: 15, scope: !110)
!163 = !DILocation(line: 255, column: 13, scope: !110)
!164 = !DILocation(line: 258, column: 3, scope: !110)
!165 = !DILocation(line: 258, column: 77, scope: !110)
!166 = !DILocation(line: 258, column: 81, scope: !110)
!167 = !DILocation(line: 258, column: 103, scope: !110)
!168 = !DILocation(line: 260, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 260, column: 8)
!170 = distinct !DILexicalBlock(scope: !110, file: !3, line: 259, column: 3)
!171 = !DILocation(line: 260, column: 25, scope: !169)
!172 = !DILocation(line: 260, column: 23, scope: !169)
!173 = !DILocation(line: 260, column: 36, scope: !169)
!174 = !DILocation(line: 260, column: 8, scope: !170)
!175 = !DILocation(line: 262, column: 7, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !3, line: 261, column: 5)
!177 = distinct !{!177, !164, !178}
!178 = !DILocation(line: 264, column: 3, scope: !110)
!179 = !DILocation(line: 267, column: 77, scope: !110)
!180 = !DILocation(line: 270, column: 78, scope: !110)
!181 = !DILocation(line: 273, column: 78, scope: !110)
!182 = !DILocation(line: 276, column: 76, scope: !110)
!183 = !DILocation(line: 279, column: 74, scope: !110)
!184 = !DILocation(line: 281, column: 3, scope: !110)
!185 = !DILocation(line: 282, column: 1, scope: !110)
!186 = !DISubprogram(name: "HAL_GetTick", scope: !187, file: !187, line: 546, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !188)
!187 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal.h", directory: "/home/sri/zephyrproject")
!188 = !{}
!189 = !DISubprogram(name: "HAL_InitTick", scope: !187, file: !187, line: 523, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !188)
!190 = !DISubroutineType(types: !191)
!191 = !{!113, !6}
!192 = distinct !DISubprogram(name: "HAL_RCC_OscConfig", scope: !3, file: !3, line: 298, type: !193, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !217)
!193 = !DISubroutineType(types: !194)
!194 = !{!113, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_OscInitTypeDef", file: !197, line: 245, baseType: !198)
!197 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc.h", directory: "/home/sri/zephyrproject")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 212, size: 416, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "OscillatorType", scope: !198, file: !197, line: 214, baseType: !6, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "HSEState", scope: !198, file: !197, line: 217, baseType: !6, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "LSEState", scope: !198, file: !197, line: 220, baseType: !6, size: 32, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "HSIState", scope: !198, file: !197, line: 223, baseType: !6, size: 32, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "HSICalibrationValue", scope: !198, file: !197, line: 226, baseType: !6, size: 32, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "HSI14State", scope: !198, file: !197, line: 229, baseType: !6, size: 32, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "HSI14CalibrationValue", scope: !198, file: !197, line: 232, baseType: !6, size: 32, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "LSIState", scope: !198, file: !197, line: 235, baseType: !6, size: 32, offset: 224)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48State", scope: !198, file: !197, line: 239, baseType: !6, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "PLL", scope: !198, file: !197, line: 243, baseType: !210, size: 128, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PLLInitTypeDef", file: !197, line: 207, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 193, size: 128, elements: !212)
!212 = !{!213, !214, !215, !216}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "PLLState", scope: !211, file: !197, line: 195, baseType: !6, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "PLLSource", scope: !211, file: !197, line: 198, baseType: !6, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "PLLMUL", scope: !211, file: !197, line: 201, baseType: !6, size: 32, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "PREDIV", scope: !211, file: !197, line: 204, baseType: !6, size: 32, offset: 96)
!217 = !{!218, !219, !220, !221, !222, !226}
!218 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !192, file: !3, line: 298, type: !195)
!219 = !DILocalVariable(name: "tickstart", scope: !192, file: !3, line: 300, type: !6)
!220 = !DILocalVariable(name: "pll_config", scope: !192, file: !3, line: 301, type: !6)
!221 = !DILocalVariable(name: "pll_config2", scope: !192, file: !3, line: 302, type: !6)
!222 = !DILocalVariable(name: "pwrclkchanged", scope: !223, file: !3, line: 475, type: !225)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 474, column: 3)
!224 = distinct !DILexicalBlock(scope: !192, file: !3, line: 473, column: 6)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !21, line: 171, baseType: !20)
!226 = !DILocalVariable(name: "tmpreg", scope: !227, file: !3, line: 484, type: !32)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 484, column: 10)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 483, column: 5)
!229 = distinct !DILexicalBlock(scope: !223, file: !3, line: 482, column: 8)
!230 = !DILocation(line: 298, column: 57, scope: !192)
!231 = !DILocation(line: 300, column: 3, scope: !192)
!232 = !DILocation(line: 300, column: 12, scope: !192)
!233 = !DILocation(line: 301, column: 3, scope: !192)
!234 = !DILocation(line: 301, column: 12, scope: !192)
!235 = !DILocation(line: 302, column: 3, scope: !192)
!236 = !DILocation(line: 302, column: 12, scope: !192)
!237 = !DILocation(line: 305, column: 6, scope: !238)
!238 = distinct !DILexicalBlock(scope: !192, file: !3, line: 305, column: 6)
!239 = !DILocation(line: 305, column: 24, scope: !238)
!240 = !DILocation(line: 305, column: 6, scope: !192)
!241 = !DILocation(line: 307, column: 5, scope: !242)
!242 = distinct !DILexicalBlock(scope: !238, file: !3, line: 306, column: 3)
!243 = !DILocation(line: 314, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !192, file: !3, line: 314, column: 6)
!245 = !DILocation(line: 314, column: 27, scope: !244)
!246 = !DILocation(line: 314, column: 43, scope: !244)
!247 = !DILocation(line: 314, column: 60, scope: !244)
!248 = !DILocation(line: 314, column: 6, scope: !192)
!249 = !DILocation(line: 320, column: 87, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !3, line: 320, column: 8)
!251 = distinct !DILexicalBlock(scope: !244, file: !3, line: 315, column: 3)
!252 = !DILocation(line: 320, column: 92, scope: !250)
!253 = !DILocation(line: 320, column: 112, scope: !250)
!254 = !DILocation(line: 321, column: 8, scope: !250)
!255 = !DILocation(line: 321, column: 91, scope: !250)
!256 = !DILocation(line: 321, column: 96, scope: !250)
!257 = !DILocation(line: 321, column: 116, scope: !250)
!258 = !DILocation(line: 321, column: 134, scope: !250)
!259 = !DILocation(line: 321, column: 218, scope: !250)
!260 = !DILocation(line: 321, column: 224, scope: !250)
!261 = !DILocation(line: 321, column: 248, scope: !250)
!262 = !DILocation(line: 320, column: 8, scope: !251)
!263 = !DILocation(line: 323, column: 149, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 323, column: 10)
!265 = distinct !DILexicalBlock(scope: !250, file: !3, line: 322, column: 5)
!266 = !DILocation(line: 323, column: 511, scope: !264)
!267 = !DILocation(line: 323, column: 585, scope: !264)
!268 = !DILocation(line: 323, column: 595, scope: !264)
!269 = !DILocation(line: 323, column: 599, scope: !264)
!270 = !DILocation(line: 323, column: 618, scope: !264)
!271 = !DILocation(line: 323, column: 627, scope: !264)
!272 = !DILocation(line: 323, column: 10, scope: !265)
!273 = !DILocation(line: 325, column: 9, scope: !274)
!274 = distinct !DILexicalBlock(scope: !264, file: !3, line: 324, column: 7)
!275 = !DILocation(line: 327, column: 5, scope: !265)
!276 = !DILocation(line: 331, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !250, file: !3, line: 329, column: 5)
!278 = !DILocation(line: 331, column: 16, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 331, column: 15)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 331, column: 9)
!281 = !DILocation(line: 331, column: 35, scope: !279)
!282 = !DILocation(line: 331, column: 45, scope: !279)
!283 = !DILocation(line: 331, column: 15, scope: !280)
!284 = !DILocation(line: 331, column: 137, scope: !285)
!285 = distinct !DILexicalBlock(scope: !279, file: !3, line: 331, column: 63)
!286 = !DILocation(line: 331, column: 161, scope: !285)
!287 = !DILocation(line: 331, column: 173, scope: !288)
!288 = distinct !DILexicalBlock(scope: !279, file: !3, line: 331, column: 172)
!289 = !DILocation(line: 331, column: 192, scope: !288)
!290 = !DILocation(line: 331, column: 202, scope: !288)
!291 = !DILocation(line: 331, column: 172, scope: !279)
!292 = !DILocation(line: 331, column: 294, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !3, line: 331, column: 220)
!294 = !DILocation(line: 331, column: 391, scope: !293)
!295 = !DILocation(line: 331, column: 416, scope: !293)
!296 = !DILocation(line: 331, column: 428, scope: !297)
!297 = distinct !DILexicalBlock(scope: !288, file: !3, line: 331, column: 427)
!298 = !DILocation(line: 331, column: 447, scope: !297)
!299 = !DILocation(line: 331, column: 457, scope: !297)
!300 = !DILocation(line: 331, column: 427, scope: !288)
!301 = !DILocation(line: 331, column: 549, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !3, line: 331, column: 475)
!303 = !DILocation(line: 331, column: 645, scope: !302)
!304 = !DILocation(line: 331, column: 669, scope: !302)
!305 = !DILocation(line: 331, column: 750, scope: !306)
!306 = distinct !DILexicalBlock(scope: !297, file: !3, line: 331, column: 676)
!307 = !DILocation(line: 331, column: 847, scope: !306)
!308 = !DILocation(line: 331, column: 874, scope: !280)
!309 = !DILocation(line: 335, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !277, file: !3, line: 335, column: 10)
!311 = !DILocation(line: 335, column: 29, scope: !310)
!312 = !DILocation(line: 335, column: 38, scope: !310)
!313 = !DILocation(line: 335, column: 10, scope: !277)
!314 = !DILocation(line: 338, column: 21, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 336, column: 7)
!316 = !DILocation(line: 338, column: 19, scope: !315)
!317 = !DILocation(line: 341, column: 9, scope: !315)
!318 = !DILocation(line: 341, column: 153, scope: !315)
!319 = !DILocation(line: 341, column: 515, scope: !315)
!320 = !DILocation(line: 341, column: 589, scope: !315)
!321 = !DILocation(line: 343, column: 15, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 343, column: 14)
!323 = distinct !DILexicalBlock(scope: !315, file: !3, line: 342, column: 9)
!324 = !DILocation(line: 343, column: 31, scope: !322)
!325 = !DILocation(line: 343, column: 29, scope: !322)
!326 = !DILocation(line: 343, column: 43, scope: !322)
!327 = !DILocation(line: 343, column: 14, scope: !323)
!328 = !DILocation(line: 345, column: 13, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !3, line: 344, column: 11)
!330 = distinct !{!330, !317, !331}
!331 = !DILocation(line: 347, column: 9, scope: !315)
!332 = !DILocation(line: 348, column: 7, scope: !315)
!333 = !DILocation(line: 352, column: 21, scope: !334)
!334 = distinct !DILexicalBlock(scope: !310, file: !3, line: 350, column: 7)
!335 = !DILocation(line: 352, column: 19, scope: !334)
!336 = !DILocation(line: 355, column: 9, scope: !334)
!337 = !DILocation(line: 355, column: 153, scope: !334)
!338 = !DILocation(line: 355, column: 515, scope: !334)
!339 = !DILocation(line: 355, column: 589, scope: !334)
!340 = !DILocation(line: 357, column: 16, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !3, line: 357, column: 15)
!342 = distinct !DILexicalBlock(scope: !334, file: !3, line: 356, column: 9)
!343 = !DILocation(line: 357, column: 32, scope: !341)
!344 = !DILocation(line: 357, column: 30, scope: !341)
!345 = !DILocation(line: 357, column: 44, scope: !341)
!346 = !DILocation(line: 357, column: 15, scope: !342)
!347 = !DILocation(line: 359, column: 13, scope: !348)
!348 = distinct !DILexicalBlock(scope: !341, file: !3, line: 358, column: 11)
!349 = distinct !{!349, !336, !350}
!350 = !DILocation(line: 361, column: 9, scope: !334)
!351 = !DILocation(line: 364, column: 3, scope: !251)
!352 = !DILocation(line: 366, column: 8, scope: !353)
!353 = distinct !DILexicalBlock(scope: !192, file: !3, line: 366, column: 6)
!354 = !DILocation(line: 366, column: 27, scope: !353)
!355 = !DILocation(line: 366, column: 43, scope: !353)
!356 = !DILocation(line: 366, column: 60, scope: !353)
!357 = !DILocation(line: 366, column: 6, scope: !192)
!358 = !DILocation(line: 373, column: 87, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 373, column: 8)
!360 = distinct !DILexicalBlock(scope: !353, file: !3, line: 367, column: 3)
!361 = !DILocation(line: 373, column: 92, scope: !359)
!362 = !DILocation(line: 373, column: 112, scope: !359)
!363 = !DILocation(line: 374, column: 8, scope: !359)
!364 = !DILocation(line: 374, column: 91, scope: !359)
!365 = !DILocation(line: 374, column: 96, scope: !359)
!366 = !DILocation(line: 374, column: 116, scope: !359)
!367 = !DILocation(line: 374, column: 134, scope: !359)
!368 = !DILocation(line: 374, column: 218, scope: !359)
!369 = !DILocation(line: 374, column: 224, scope: !359)
!370 = !DILocation(line: 374, column: 248, scope: !359)
!371 = !DILocation(line: 373, column: 8, scope: !360)
!372 = !DILocation(line: 377, column: 148, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 377, column: 10)
!374 = distinct !DILexicalBlock(scope: !359, file: !3, line: 375, column: 5)
!375 = !DILocation(line: 377, column: 508, scope: !373)
!376 = !DILocation(line: 377, column: 581, scope: !373)
!377 = !DILocation(line: 377, column: 591, scope: !373)
!378 = !DILocation(line: 377, column: 595, scope: !373)
!379 = !DILocation(line: 377, column: 614, scope: !373)
!380 = !DILocation(line: 377, column: 623, scope: !373)
!381 = !DILocation(line: 377, column: 10, scope: !374)
!382 = !DILocation(line: 379, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !373, file: !3, line: 378, column: 7)
!384 = !DILocation(line: 385, column: 157, scope: !385)
!385 = distinct !DILexicalBlock(scope: !373, file: !3, line: 383, column: 7)
!386 = !DILocation(line: 385, column: 163, scope: !385)
!387 = !DILocation(line: 385, column: 202, scope: !385)
!388 = !DILocation(line: 385, column: 221, scope: !385)
!389 = !DILocation(line: 385, column: 242, scope: !385)
!390 = !DILocation(line: 385, column: 188, scope: !385)
!391 = !DILocation(line: 385, column: 83, scope: !385)
!392 = !DILocation(line: 387, column: 5, scope: !374)
!393 = !DILocation(line: 391, column: 10, scope: !394)
!394 = distinct !DILexicalBlock(scope: !395, file: !3, line: 391, column: 10)
!395 = distinct !DILexicalBlock(scope: !359, file: !3, line: 389, column: 5)
!396 = !DILocation(line: 391, column: 29, scope: !394)
!397 = !DILocation(line: 391, column: 38, scope: !394)
!398 = !DILocation(line: 391, column: 10, scope: !395)
!399 = !DILocation(line: 394, column: 81, scope: !400)
!400 = distinct !DILexicalBlock(scope: !394, file: !3, line: 392, column: 7)
!401 = !DILocation(line: 397, column: 21, scope: !400)
!402 = !DILocation(line: 397, column: 19, scope: !400)
!403 = !DILocation(line: 400, column: 9, scope: !400)
!404 = !DILocation(line: 400, column: 152, scope: !400)
!405 = !DILocation(line: 400, column: 512, scope: !400)
!406 = !DILocation(line: 400, column: 585, scope: !400)
!407 = !DILocation(line: 402, column: 15, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 402, column: 14)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 401, column: 9)
!410 = !DILocation(line: 402, column: 31, scope: !408)
!411 = !DILocation(line: 402, column: 29, scope: !408)
!412 = !DILocation(line: 402, column: 43, scope: !408)
!413 = !DILocation(line: 402, column: 14, scope: !409)
!414 = !DILocation(line: 404, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !408, file: !3, line: 403, column: 11)
!416 = distinct !{!416, !403, !417}
!417 = !DILocation(line: 406, column: 9, scope: !400)
!418 = !DILocation(line: 409, column: 157, scope: !400)
!419 = !DILocation(line: 409, column: 163, scope: !400)
!420 = !DILocation(line: 409, column: 202, scope: !400)
!421 = !DILocation(line: 409, column: 221, scope: !400)
!422 = !DILocation(line: 409, column: 242, scope: !400)
!423 = !DILocation(line: 409, column: 188, scope: !400)
!424 = !DILocation(line: 409, column: 83, scope: !400)
!425 = !DILocation(line: 410, column: 7, scope: !400)
!426 = !DILocation(line: 414, column: 81, scope: !427)
!427 = distinct !DILexicalBlock(scope: !394, file: !3, line: 412, column: 7)
!428 = !DILocation(line: 417, column: 21, scope: !427)
!429 = !DILocation(line: 417, column: 19, scope: !427)
!430 = !DILocation(line: 420, column: 9, scope: !427)
!431 = !DILocation(line: 420, column: 152, scope: !427)
!432 = !DILocation(line: 420, column: 512, scope: !427)
!433 = !DILocation(line: 420, column: 585, scope: !427)
!434 = !DILocation(line: 422, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 422, column: 14)
!436 = distinct !DILexicalBlock(scope: !427, file: !3, line: 421, column: 9)
!437 = !DILocation(line: 422, column: 31, scope: !435)
!438 = !DILocation(line: 422, column: 29, scope: !435)
!439 = !DILocation(line: 422, column: 43, scope: !435)
!440 = !DILocation(line: 422, column: 14, scope: !436)
!441 = !DILocation(line: 424, column: 13, scope: !442)
!442 = distinct !DILexicalBlock(scope: !435, file: !3, line: 423, column: 11)
!443 = distinct !{!443, !430, !444}
!444 = !DILocation(line: 426, column: 9, scope: !427)
!445 = !DILocation(line: 429, column: 3, scope: !360)
!446 = !DILocation(line: 431, column: 8, scope: !447)
!447 = distinct !DILexicalBlock(scope: !192, file: !3, line: 431, column: 6)
!448 = !DILocation(line: 431, column: 27, scope: !447)
!449 = !DILocation(line: 431, column: 43, scope: !447)
!450 = !DILocation(line: 431, column: 60, scope: !447)
!451 = !DILocation(line: 431, column: 6, scope: !192)
!452 = !DILocation(line: 437, column: 8, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 437, column: 8)
!454 = distinct !DILexicalBlock(scope: !447, file: !3, line: 432, column: 3)
!455 = !DILocation(line: 437, column: 27, scope: !453)
!456 = !DILocation(line: 437, column: 36, scope: !453)
!457 = !DILocation(line: 437, column: 8, scope: !454)
!458 = !DILocation(line: 440, column: 80, scope: !459)
!459 = distinct !DILexicalBlock(scope: !453, file: !3, line: 438, column: 5)
!460 = !DILocation(line: 443, column: 19, scope: !459)
!461 = !DILocation(line: 443, column: 17, scope: !459)
!462 = !DILocation(line: 446, column: 7, scope: !459)
!463 = !DILocation(line: 446, column: 505, scope: !459)
!464 = !DILocation(line: 446, column: 510, scope: !459)
!465 = !DILocation(line: 446, column: 583, scope: !459)
!466 = !DILocation(line: 448, column: 13, scope: !467)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 448, column: 12)
!468 = distinct !DILexicalBlock(scope: !459, file: !3, line: 447, column: 7)
!469 = !DILocation(line: 448, column: 29, scope: !467)
!470 = !DILocation(line: 448, column: 27, scope: !467)
!471 = !DILocation(line: 448, column: 41, scope: !467)
!472 = !DILocation(line: 448, column: 12, scope: !468)
!473 = !DILocation(line: 450, column: 11, scope: !474)
!474 = distinct !DILexicalBlock(scope: !467, file: !3, line: 449, column: 9)
!475 = distinct !{!475, !462, !476}
!476 = !DILocation(line: 452, column: 7, scope: !459)
!477 = !DILocation(line: 453, column: 5, scope: !459)
!478 = !DILocation(line: 457, column: 80, scope: !479)
!479 = distinct !DILexicalBlock(scope: !453, file: !3, line: 455, column: 5)
!480 = !DILocation(line: 460, column: 19, scope: !479)
!481 = !DILocation(line: 460, column: 17, scope: !479)
!482 = !DILocation(line: 463, column: 7, scope: !479)
!483 = !DILocation(line: 463, column: 505, scope: !479)
!484 = !DILocation(line: 463, column: 510, scope: !479)
!485 = !DILocation(line: 463, column: 583, scope: !479)
!486 = !DILocation(line: 465, column: 13, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 465, column: 12)
!488 = distinct !DILexicalBlock(scope: !479, file: !3, line: 464, column: 7)
!489 = !DILocation(line: 465, column: 29, scope: !487)
!490 = !DILocation(line: 465, column: 27, scope: !487)
!491 = !DILocation(line: 465, column: 41, scope: !487)
!492 = !DILocation(line: 465, column: 12, scope: !488)
!493 = !DILocation(line: 467, column: 11, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !3, line: 466, column: 9)
!495 = distinct !{!495, !482, !496}
!496 = !DILocation(line: 469, column: 7, scope: !479)
!497 = !DILocation(line: 471, column: 3, scope: !454)
!498 = !DILocation(line: 473, column: 8, scope: !224)
!499 = !DILocation(line: 473, column: 27, scope: !224)
!500 = !DILocation(line: 473, column: 43, scope: !224)
!501 = !DILocation(line: 473, column: 60, scope: !224)
!502 = !DILocation(line: 473, column: 6, scope: !192)
!503 = !DILocation(line: 475, column: 5, scope: !223)
!504 = !DILocation(line: 475, column: 16, scope: !223)
!505 = !DILocation(line: 482, column: 76, scope: !229)
!506 = !DILocation(line: 482, column: 84, scope: !229)
!507 = !DILocation(line: 482, column: 106, scope: !229)
!508 = !DILocation(line: 482, column: 8, scope: !223)
!509 = !DILocation(line: 484, column: 7, scope: !228)
!510 = !DILocation(line: 484, column: 12, scope: !227)
!511 = !DILocation(line: 484, column: 30, scope: !227)
!512 = !DILocation(line: 484, column: 115, scope: !227)
!513 = !DILocation(line: 484, column: 216, scope: !227)
!514 = !DILocation(line: 484, column: 225, scope: !227)
!515 = !DILocation(line: 484, column: 146, scope: !227)
!516 = !DILocation(line: 484, column: 254, scope: !227)
!517 = !DILocation(line: 484, column: 262, scope: !228)
!518 = !DILocation(line: 484, column: 262, scope: !227)
!519 = !DILocation(line: 485, column: 21, scope: !228)
!520 = !DILocation(line: 486, column: 5, scope: !228)
!521 = !DILocation(line: 488, column: 60, scope: !522)
!522 = distinct !DILexicalBlock(scope: !223, file: !3, line: 488, column: 8)
!523 = !DILocation(line: 488, column: 64, scope: !522)
!524 = !DILocation(line: 488, column: 85, scope: !522)
!525 = !DILocation(line: 488, column: 8, scope: !223)
!526 = !DILocation(line: 491, column: 62, scope: !527)
!527 = distinct !DILexicalBlock(scope: !522, file: !3, line: 489, column: 5)
!528 = !DILocation(line: 494, column: 19, scope: !527)
!529 = !DILocation(line: 494, column: 17, scope: !527)
!530 = !DILocation(line: 496, column: 7, scope: !527)
!531 = !DILocation(line: 496, column: 65, scope: !527)
!532 = !DILocation(line: 496, column: 69, scope: !527)
!533 = !DILocation(line: 496, column: 90, scope: !527)
!534 = !DILocation(line: 498, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 498, column: 12)
!536 = distinct !DILexicalBlock(scope: !527, file: !3, line: 497, column: 7)
!537 = !DILocation(line: 498, column: 29, scope: !535)
!538 = !DILocation(line: 498, column: 27, scope: !535)
!539 = !DILocation(line: 498, column: 40, scope: !535)
!540 = !DILocation(line: 498, column: 12, scope: !536)
!541 = !DILocation(line: 500, column: 11, scope: !542)
!542 = distinct !DILexicalBlock(scope: !535, file: !3, line: 499, column: 9)
!543 = distinct !{!543, !530, !544}
!544 = !DILocation(line: 502, column: 7, scope: !527)
!545 = !DILocation(line: 503, column: 5, scope: !527)
!546 = !DILocation(line: 506, column: 5, scope: !223)
!547 = !DILocation(line: 506, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 506, column: 13)
!549 = distinct !DILexicalBlock(scope: !223, file: !3, line: 506, column: 7)
!550 = !DILocation(line: 506, column: 33, scope: !548)
!551 = !DILocation(line: 506, column: 43, scope: !548)
!552 = !DILocation(line: 506, column: 13, scope: !549)
!553 = !DILocation(line: 506, column: 137, scope: !554)
!554 = distinct !DILexicalBlock(scope: !548, file: !3, line: 506, column: 61)
!555 = !DILocation(line: 506, column: 160, scope: !554)
!556 = !DILocation(line: 506, column: 172, scope: !557)
!557 = distinct !DILexicalBlock(scope: !548, file: !3, line: 506, column: 171)
!558 = !DILocation(line: 506, column: 191, scope: !557)
!559 = !DILocation(line: 506, column: 201, scope: !557)
!560 = !DILocation(line: 506, column: 171, scope: !548)
!561 = !DILocation(line: 506, column: 295, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 506, column: 219)
!563 = !DILocation(line: 506, column: 393, scope: !562)
!564 = !DILocation(line: 506, column: 417, scope: !562)
!565 = !DILocation(line: 506, column: 429, scope: !566)
!566 = distinct !DILexicalBlock(scope: !557, file: !3, line: 506, column: 428)
!567 = !DILocation(line: 506, column: 448, scope: !566)
!568 = !DILocation(line: 506, column: 458, scope: !566)
!569 = !DILocation(line: 506, column: 428, scope: !557)
!570 = !DILocation(line: 506, column: 552, scope: !571)
!571 = distinct !DILexicalBlock(scope: !566, file: !3, line: 506, column: 476)
!572 = !DILocation(line: 506, column: 649, scope: !571)
!573 = !DILocation(line: 506, column: 672, scope: !571)
!574 = !DILocation(line: 506, column: 755, scope: !575)
!575 = distinct !DILexicalBlock(scope: !566, file: !3, line: 506, column: 679)
!576 = !DILocation(line: 506, column: 853, scope: !575)
!577 = !DILocation(line: 506, column: 879, scope: !549)
!578 = !DILocation(line: 508, column: 8, scope: !579)
!579 = distinct !DILexicalBlock(scope: !223, file: !3, line: 508, column: 8)
!580 = !DILocation(line: 508, column: 27, scope: !579)
!581 = !DILocation(line: 508, column: 36, scope: !579)
!582 = !DILocation(line: 508, column: 8, scope: !223)
!583 = !DILocation(line: 511, column: 19, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !3, line: 509, column: 5)
!585 = !DILocation(line: 511, column: 17, scope: !584)
!586 = !DILocation(line: 514, column: 7, scope: !584)
!587 = !DILocation(line: 514, column: 432, scope: !584)
!588 = !DILocation(line: 514, column: 510, scope: !584)
!589 = !DILocation(line: 514, column: 583, scope: !584)
!590 = !DILocation(line: 516, column: 13, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 516, column: 12)
!592 = distinct !DILexicalBlock(scope: !584, file: !3, line: 515, column: 7)
!593 = !DILocation(line: 516, column: 29, scope: !591)
!594 = !DILocation(line: 516, column: 27, scope: !591)
!595 = !DILocation(line: 516, column: 41, scope: !591)
!596 = !DILocation(line: 516, column: 12, scope: !592)
!597 = !DILocation(line: 518, column: 11, scope: !598)
!598 = distinct !DILexicalBlock(scope: !591, file: !3, line: 517, column: 9)
!599 = distinct !{!599, !586, !600}
!600 = !DILocation(line: 520, column: 7, scope: !584)
!601 = !DILocation(line: 521, column: 5, scope: !584)
!602 = !DILocation(line: 525, column: 19, scope: !603)
!603 = distinct !DILexicalBlock(scope: !579, file: !3, line: 523, column: 5)
!604 = !DILocation(line: 525, column: 17, scope: !603)
!605 = !DILocation(line: 528, column: 7, scope: !603)
!606 = !DILocation(line: 528, column: 432, scope: !603)
!607 = !DILocation(line: 528, column: 510, scope: !603)
!608 = !DILocation(line: 528, column: 583, scope: !603)
!609 = !DILocation(line: 530, column: 13, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 530, column: 12)
!611 = distinct !DILexicalBlock(scope: !603, file: !3, line: 529, column: 7)
!612 = !DILocation(line: 530, column: 29, scope: !610)
!613 = !DILocation(line: 530, column: 27, scope: !610)
!614 = !DILocation(line: 530, column: 41, scope: !610)
!615 = !DILocation(line: 530, column: 12, scope: !611)
!616 = !DILocation(line: 532, column: 11, scope: !617)
!617 = distinct !DILexicalBlock(scope: !610, file: !3, line: 531, column: 9)
!618 = distinct !{!618, !605, !619}
!619 = !DILocation(line: 534, column: 7, scope: !603)
!620 = !DILocation(line: 538, column: 8, scope: !621)
!621 = distinct !DILexicalBlock(scope: !223, file: !3, line: 538, column: 8)
!622 = !DILocation(line: 538, column: 22, scope: !621)
!623 = !DILocation(line: 538, column: 8, scope: !223)
!624 = !DILocation(line: 540, column: 82, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 539, column: 5)
!626 = !DILocation(line: 541, column: 5, scope: !625)
!627 = !DILocation(line: 542, column: 3, scope: !224)
!628 = !DILocation(line: 542, column: 3, scope: !223)
!629 = !DILocation(line: 545, column: 8, scope: !630)
!630 = distinct !DILexicalBlock(scope: !192, file: !3, line: 545, column: 6)
!631 = !DILocation(line: 545, column: 27, scope: !630)
!632 = !DILocation(line: 545, column: 43, scope: !630)
!633 = !DILocation(line: 545, column: 60, scope: !630)
!634 = !DILocation(line: 545, column: 6, scope: !192)
!635 = !DILocation(line: 552, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 552, column: 8)
!637 = distinct !DILexicalBlock(scope: !630, file: !3, line: 546, column: 3)
!638 = !DILocation(line: 552, column: 27, scope: !636)
!639 = !DILocation(line: 552, column: 38, scope: !636)
!640 = !DILocation(line: 552, column: 8, scope: !637)
!641 = !DILocation(line: 555, column: 80, scope: !642)
!642 = distinct !DILexicalBlock(scope: !636, file: !3, line: 553, column: 5)
!643 = !DILocation(line: 558, column: 80, scope: !642)
!644 = !DILocation(line: 561, column: 19, scope: !642)
!645 = !DILocation(line: 561, column: 17, scope: !642)
!646 = !DILocation(line: 564, column: 7, scope: !642)
!647 = !DILocation(line: 564, column: 290, scope: !642)
!648 = !DILocation(line: 564, column: 510, scope: !642)
!649 = !DILocation(line: 564, column: 583, scope: !642)
!650 = !DILocation(line: 566, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 566, column: 12)
!652 = distinct !DILexicalBlock(scope: !642, file: !3, line: 565, column: 7)
!653 = !DILocation(line: 566, column: 29, scope: !651)
!654 = !DILocation(line: 566, column: 27, scope: !651)
!655 = !DILocation(line: 566, column: 40, scope: !651)
!656 = !DILocation(line: 566, column: 12, scope: !652)
!657 = !DILocation(line: 568, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !651, file: !3, line: 567, column: 9)
!659 = distinct !{!659, !646, !660}
!660 = !DILocation(line: 570, column: 7, scope: !642)
!661 = !DILocation(line: 573, column: 156, scope: !642)
!662 = !DILocation(line: 573, column: 163, scope: !642)
!663 = !DILocation(line: 573, column: 202, scope: !642)
!664 = !DILocation(line: 573, column: 221, scope: !642)
!665 = !DILocation(line: 573, column: 244, scope: !642)
!666 = !DILocation(line: 573, column: 188, scope: !642)
!667 = !DILocation(line: 573, column: 82, scope: !642)
!668 = !DILocation(line: 574, column: 5, scope: !642)
!669 = !DILocation(line: 575, column: 13, scope: !670)
!670 = distinct !DILexicalBlock(scope: !636, file: !3, line: 575, column: 13)
!671 = !DILocation(line: 575, column: 32, scope: !670)
!672 = !DILocation(line: 575, column: 43, scope: !670)
!673 = !DILocation(line: 575, column: 13, scope: !636)
!674 = !DILocation(line: 578, column: 80, scope: !675)
!675 = distinct !DILexicalBlock(scope: !670, file: !3, line: 576, column: 5)
!676 = !DILocation(line: 581, column: 156, scope: !675)
!677 = !DILocation(line: 581, column: 163, scope: !675)
!678 = !DILocation(line: 581, column: 202, scope: !675)
!679 = !DILocation(line: 581, column: 221, scope: !675)
!680 = !DILocation(line: 581, column: 244, scope: !675)
!681 = !DILocation(line: 581, column: 188, scope: !675)
!682 = !DILocation(line: 581, column: 82, scope: !675)
!683 = !DILocation(line: 582, column: 5, scope: !675)
!684 = !DILocation(line: 586, column: 80, scope: !685)
!685 = distinct !DILexicalBlock(scope: !670, file: !3, line: 584, column: 5)
!686 = !DILocation(line: 589, column: 80, scope: !685)
!687 = !DILocation(line: 592, column: 19, scope: !685)
!688 = !DILocation(line: 592, column: 17, scope: !685)
!689 = !DILocation(line: 595, column: 7, scope: !685)
!690 = !DILocation(line: 595, column: 290, scope: !685)
!691 = !DILocation(line: 595, column: 510, scope: !685)
!692 = !DILocation(line: 595, column: 583, scope: !685)
!693 = !DILocation(line: 597, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 597, column: 12)
!695 = distinct !DILexicalBlock(scope: !685, file: !3, line: 596, column: 7)
!696 = !DILocation(line: 597, column: 29, scope: !694)
!697 = !DILocation(line: 597, column: 27, scope: !694)
!698 = !DILocation(line: 597, column: 40, scope: !694)
!699 = !DILocation(line: 597, column: 12, scope: !695)
!700 = !DILocation(line: 599, column: 11, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !3, line: 598, column: 9)
!702 = distinct !{!702, !689, !703}
!703 = !DILocation(line: 601, column: 7, scope: !685)
!704 = !DILocation(line: 603, column: 3, scope: !637)
!705 = !DILocation(line: 607, column: 8, scope: !706)
!706 = distinct !DILexicalBlock(scope: !192, file: !3, line: 607, column: 6)
!707 = !DILocation(line: 607, column: 27, scope: !706)
!708 = !DILocation(line: 607, column: 43, scope: !706)
!709 = !DILocation(line: 607, column: 60, scope: !706)
!710 = !DILocation(line: 607, column: 6, scope: !192)
!711 = !DILocation(line: 613, column: 87, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 613, column: 8)
!713 = distinct !DILexicalBlock(scope: !706, file: !3, line: 608, column: 3)
!714 = !DILocation(line: 613, column: 92, scope: !712)
!715 = !DILocation(line: 613, column: 112, scope: !712)
!716 = !DILocation(line: 613, column: 130, scope: !712)
!717 = !DILocation(line: 614, column: 88, scope: !712)
!718 = !DILocation(line: 614, column: 93, scope: !712)
!719 = !DILocation(line: 614, column: 113, scope: !712)
!720 = !DILocation(line: 614, column: 131, scope: !712)
!721 = !DILocation(line: 614, column: 215, scope: !712)
!722 = !DILocation(line: 614, column: 221, scope: !712)
!723 = !DILocation(line: 614, column: 245, scope: !712)
!724 = !DILocation(line: 613, column: 8, scope: !713)
!725 = !DILocation(line: 616, column: 290, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !3, line: 616, column: 10)
!727 = distinct !DILexicalBlock(scope: !712, file: !3, line: 615, column: 5)
!728 = !DILocation(line: 616, column: 511, scope: !726)
!729 = !DILocation(line: 616, column: 585, scope: !726)
!730 = !DILocation(line: 616, column: 595, scope: !726)
!731 = !DILocation(line: 616, column: 599, scope: !726)
!732 = !DILocation(line: 616, column: 618, scope: !726)
!733 = !DILocation(line: 616, column: 629, scope: !726)
!734 = !DILocation(line: 616, column: 10, scope: !727)
!735 = !DILocation(line: 618, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !726, file: !3, line: 617, column: 7)
!737 = !DILocation(line: 620, column: 5, scope: !727)
!738 = !DILocation(line: 624, column: 10, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !3, line: 624, column: 10)
!740 = distinct !DILexicalBlock(scope: !712, file: !3, line: 622, column: 5)
!741 = !DILocation(line: 624, column: 29, scope: !739)
!742 = !DILocation(line: 624, column: 40, scope: !739)
!743 = !DILocation(line: 624, column: 10, scope: !740)
!744 = !DILocation(line: 627, column: 82, scope: !745)
!745 = distinct !DILexicalBlock(scope: !739, file: !3, line: 625, column: 7)
!746 = !DILocation(line: 630, column: 21, scope: !745)
!747 = !DILocation(line: 630, column: 19, scope: !745)
!748 = !DILocation(line: 633, column: 9, scope: !745)
!749 = !DILocation(line: 633, column: 294, scope: !745)
!750 = !DILocation(line: 633, column: 515, scope: !745)
!751 = !DILocation(line: 633, column: 589, scope: !745)
!752 = !DILocation(line: 635, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 635, column: 14)
!754 = distinct !DILexicalBlock(scope: !745, file: !3, line: 634, column: 9)
!755 = !DILocation(line: 635, column: 31, scope: !753)
!756 = !DILocation(line: 635, column: 29, scope: !753)
!757 = !DILocation(line: 635, column: 42, scope: !753)
!758 = !DILocation(line: 635, column: 14, scope: !754)
!759 = !DILocation(line: 637, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !753, file: !3, line: 636, column: 11)
!761 = distinct !{!761, !748, !762}
!762 = !DILocation(line: 639, column: 9, scope: !745)
!763 = !DILocation(line: 640, column: 7, scope: !745)
!764 = !DILocation(line: 644, column: 82, scope: !765)
!765 = distinct !DILexicalBlock(scope: !739, file: !3, line: 642, column: 7)
!766 = !DILocation(line: 647, column: 21, scope: !765)
!767 = !DILocation(line: 647, column: 19, scope: !765)
!768 = !DILocation(line: 650, column: 9, scope: !765)
!769 = !DILocation(line: 650, column: 294, scope: !765)
!770 = !DILocation(line: 650, column: 515, scope: !765)
!771 = !DILocation(line: 650, column: 589, scope: !765)
!772 = !DILocation(line: 652, column: 15, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !3, line: 652, column: 14)
!774 = distinct !DILexicalBlock(scope: !765, file: !3, line: 651, column: 9)
!775 = !DILocation(line: 652, column: 31, scope: !773)
!776 = !DILocation(line: 652, column: 29, scope: !773)
!777 = !DILocation(line: 652, column: 42, scope: !773)
!778 = !DILocation(line: 652, column: 14, scope: !774)
!779 = !DILocation(line: 654, column: 13, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !3, line: 653, column: 11)
!781 = distinct !{!781, !768, !782}
!782 = !DILocation(line: 656, column: 9, scope: !765)
!783 = !DILocation(line: 659, column: 3, scope: !713)
!784 = !DILocation(line: 665, column: 8, scope: !785)
!785 = distinct !DILexicalBlock(scope: !192, file: !3, line: 665, column: 7)
!786 = !DILocation(line: 665, column: 27, scope: !785)
!787 = !DILocation(line: 665, column: 31, scope: !785)
!788 = !DILocation(line: 665, column: 41, scope: !785)
!789 = !DILocation(line: 665, column: 7, scope: !192)
!790 = !DILocation(line: 668, column: 86, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 668, column: 8)
!792 = distinct !DILexicalBlock(scope: !785, file: !3, line: 666, column: 3)
!793 = !DILocation(line: 668, column: 91, scope: !791)
!794 = !DILocation(line: 668, column: 111, scope: !791)
!795 = !DILocation(line: 668, column: 8, scope: !792)
!796 = !DILocation(line: 670, column: 11, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 670, column: 10)
!798 = distinct !DILexicalBlock(scope: !791, file: !3, line: 669, column: 5)
!799 = !DILocation(line: 670, column: 30, scope: !797)
!800 = !DILocation(line: 670, column: 34, scope: !797)
!801 = !DILocation(line: 670, column: 44, scope: !797)
!802 = !DILocation(line: 670, column: 10, scope: !798)
!803 = !DILocation(line: 678, column: 81, scope: !804)
!804 = distinct !DILexicalBlock(scope: !797, file: !3, line: 671, column: 7)
!805 = !DILocation(line: 681, column: 21, scope: !804)
!806 = !DILocation(line: 681, column: 19, scope: !804)
!807 = !DILocation(line: 684, column: 9, scope: !804)
!808 = !DILocation(line: 684, column: 153, scope: !804)
!809 = !DILocation(line: 684, column: 515, scope: !804)
!810 = !DILocation(line: 684, column: 589, scope: !804)
!811 = !DILocation(line: 686, column: 15, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 686, column: 14)
!813 = distinct !DILexicalBlock(scope: !804, file: !3, line: 685, column: 9)
!814 = !DILocation(line: 686, column: 31, scope: !812)
!815 = !DILocation(line: 686, column: 29, scope: !812)
!816 = !DILocation(line: 686, column: 43, scope: !812)
!817 = !DILocation(line: 686, column: 14, scope: !813)
!818 = !DILocation(line: 688, column: 13, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !3, line: 687, column: 11)
!820 = distinct !{!820, !807, !821}
!821 = !DILocation(line: 690, column: 9, scope: !804)
!822 = !DILocation(line: 693, column: 9, scope: !804)
!823 = !DILocation(line: 693, column: 165, scope: !824)
!824 = distinct !DILexicalBlock(scope: !804, file: !3, line: 693, column: 12)
!825 = !DILocation(line: 693, column: 174, scope: !824)
!826 = !DILocation(line: 693, column: 202, scope: !824)
!827 = !DILocation(line: 693, column: 221, scope: !824)
!828 = !DILocation(line: 693, column: 225, scope: !824)
!829 = !DILocation(line: 693, column: 198, scope: !824)
!830 = !DILocation(line: 693, column: 91, scope: !824)
!831 = !DILocation(line: 693, column: 388, scope: !824)
!832 = !DILocation(line: 693, column: 396, scope: !824)
!833 = !DILocation(line: 693, column: 455, scope: !824)
!834 = !DILocation(line: 693, column: 474, scope: !824)
!835 = !DILocation(line: 693, column: 478, scope: !824)
!836 = !DILocation(line: 693, column: 487, scope: !824)
!837 = !DILocation(line: 693, column: 506, scope: !824)
!838 = !DILocation(line: 693, column: 510, scope: !824)
!839 = !DILocation(line: 693, column: 485, scope: !824)
!840 = !DILocation(line: 693, column: 440, scope: !824)
!841 = !DILocation(line: 693, column: 314, scope: !824)
!842 = !DILocation(line: 693, column: 527, scope: !824)
!843 = !DILocation(line: 697, column: 81, scope: !804)
!844 = !DILocation(line: 700, column: 21, scope: !804)
!845 = !DILocation(line: 700, column: 19, scope: !804)
!846 = !DILocation(line: 703, column: 9, scope: !804)
!847 = !DILocation(line: 703, column: 153, scope: !804)
!848 = !DILocation(line: 703, column: 515, scope: !804)
!849 = !DILocation(line: 703, column: 589, scope: !804)
!850 = !DILocation(line: 705, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 705, column: 14)
!852 = distinct !DILexicalBlock(scope: !804, file: !3, line: 704, column: 9)
!853 = !DILocation(line: 705, column: 31, scope: !851)
!854 = !DILocation(line: 705, column: 29, scope: !851)
!855 = !DILocation(line: 705, column: 43, scope: !851)
!856 = !DILocation(line: 705, column: 14, scope: !852)
!857 = !DILocation(line: 707, column: 13, scope: !858)
!858 = distinct !DILexicalBlock(scope: !851, file: !3, line: 706, column: 11)
!859 = distinct !{!859, !846, !860}
!860 = !DILocation(line: 709, column: 9, scope: !804)
!861 = !DILocation(line: 710, column: 7, scope: !804)
!862 = !DILocation(line: 714, column: 81, scope: !863)
!863 = distinct !DILexicalBlock(scope: !797, file: !3, line: 712, column: 7)
!864 = !DILocation(line: 717, column: 21, scope: !863)
!865 = !DILocation(line: 717, column: 19, scope: !863)
!866 = !DILocation(line: 720, column: 9, scope: !863)
!867 = !DILocation(line: 720, column: 153, scope: !863)
!868 = !DILocation(line: 720, column: 515, scope: !863)
!869 = !DILocation(line: 720, column: 589, scope: !863)
!870 = !DILocation(line: 722, column: 15, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 722, column: 14)
!872 = distinct !DILexicalBlock(scope: !863, file: !3, line: 721, column: 9)
!873 = !DILocation(line: 722, column: 31, scope: !871)
!874 = !DILocation(line: 722, column: 29, scope: !871)
!875 = !DILocation(line: 722, column: 43, scope: !871)
!876 = !DILocation(line: 722, column: 14, scope: !872)
!877 = !DILocation(line: 724, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !871, file: !3, line: 723, column: 11)
!879 = distinct !{!879, !866, !880}
!880 = !DILocation(line: 726, column: 9, scope: !863)
!881 = !DILocation(line: 728, column: 5, scope: !798)
!882 = !DILocation(line: 732, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 732, column: 10)
!884 = distinct !DILexicalBlock(scope: !791, file: !3, line: 730, column: 5)
!885 = !DILocation(line: 732, column: 30, scope: !883)
!886 = !DILocation(line: 732, column: 34, scope: !883)
!887 = !DILocation(line: 732, column: 44, scope: !883)
!888 = !DILocation(line: 732, column: 10, scope: !884)
!889 = !DILocation(line: 734, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !883, file: !3, line: 733, column: 7)
!891 = !DILocation(line: 739, column: 88, scope: !892)
!892 = distinct !DILexicalBlock(scope: !883, file: !3, line: 737, column: 7)
!893 = !DILocation(line: 739, column: 20, scope: !892)
!894 = !DILocation(line: 740, column: 89, scope: !892)
!895 = !DILocation(line: 740, column: 21, scope: !892)
!896 = !DILocation(line: 741, column: 15, scope: !897)
!897 = distinct !DILexicalBlock(scope: !892, file: !3, line: 741, column: 12)
!898 = !DILocation(line: 741, column: 27, scope: !897)
!899 = !DILocation(line: 741, column: 52, scope: !897)
!900 = !DILocation(line: 741, column: 71, scope: !897)
!901 = !DILocation(line: 741, column: 75, scope: !897)
!902 = !DILocation(line: 741, column: 49, scope: !897)
!903 = !DILocation(line: 741, column: 86, scope: !897)
!904 = !DILocation(line: 742, column: 15, scope: !897)
!905 = !DILocation(line: 742, column: 28, scope: !897)
!906 = !DILocation(line: 742, column: 52, scope: !897)
!907 = !DILocation(line: 742, column: 71, scope: !897)
!908 = !DILocation(line: 742, column: 75, scope: !897)
!909 = !DILocation(line: 742, column: 49, scope: !897)
!910 = !DILocation(line: 742, column: 83, scope: !897)
!911 = !DILocation(line: 743, column: 15, scope: !897)
!912 = !DILocation(line: 743, column: 27, scope: !897)
!913 = !DILocation(line: 743, column: 52, scope: !897)
!914 = !DILocation(line: 743, column: 71, scope: !897)
!915 = !DILocation(line: 743, column: 75, scope: !897)
!916 = !DILocation(line: 743, column: 49, scope: !897)
!917 = !DILocation(line: 741, column: 12, scope: !892)
!918 = !DILocation(line: 745, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !897, file: !3, line: 744, column: 9)
!920 = !DILocation(line: 749, column: 3, scope: !792)
!921 = !DILocation(line: 751, column: 3, scope: !192)
!922 = !DILocation(line: 752, column: 1, scope: !192)
!923 = distinct !DISubprogram(name: "HAL_RCC_ClockConfig", scope: !3, file: !3, line: 777, type: !924, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !934)
!924 = !DISubroutineType(types: !925)
!925 = !{!113, !926, !6}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_ClkInitTypeDef", file: !197, line: 264, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !197, line: 250, size: 128, elements: !929)
!929 = !{!930, !931, !932, !933}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ClockType", scope: !928, file: !197, line: 252, baseType: !6, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "SYSCLKSource", scope: !928, file: !197, line: 255, baseType: !6, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "AHBCLKDivider", scope: !928, file: !197, line: 258, baseType: !6, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "APB1CLKDivider", scope: !928, file: !197, line: 261, baseType: !6, size: 32, offset: 96)
!934 = !{!935, !936, !937}
!935 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !923, file: !3, line: 777, type: !926)
!936 = !DILocalVariable(name: "FLatency", arg: 2, scope: !923, file: !3, line: 777, type: !6)
!937 = !DILocalVariable(name: "tickstart", scope: !923, file: !3, line: 779, type: !6)
!938 = !DILocation(line: 777, column: 59, scope: !923)
!939 = !DILocation(line: 777, column: 87, scope: !923)
!940 = !DILocation(line: 779, column: 3, scope: !923)
!941 = !DILocation(line: 779, column: 12, scope: !923)
!942 = !DILocation(line: 782, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !923, file: !3, line: 782, column: 6)
!944 = !DILocation(line: 782, column: 24, scope: !943)
!945 = !DILocation(line: 782, column: 6, scope: !923)
!946 = !DILocation(line: 784, column: 5, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !3, line: 783, column: 3)
!948 = !DILocation(line: 796, column: 6, scope: !949)
!949 = distinct !DILexicalBlock(scope: !923, file: !3, line: 796, column: 6)
!950 = !DILocation(line: 796, column: 89, scope: !949)
!951 = !DILocation(line: 796, column: 95, scope: !949)
!952 = !DILocation(line: 796, column: 15, scope: !949)
!953 = !DILocation(line: 796, column: 6, scope: !923)
!954 = !DILocation(line: 799, column: 149, scope: !955)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 797, column: 3)
!956 = !DILocation(line: 799, column: 152, scope: !955)
!957 = !DILocation(line: 799, column: 176, scope: !955)
!958 = !DILocation(line: 799, column: 173, scope: !955)
!959 = !DILocation(line: 799, column: 78, scope: !955)
!960 = !DILocation(line: 803, column: 80, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !3, line: 803, column: 8)
!962 = !DILocation(line: 803, column: 86, scope: !961)
!963 = !DILocation(line: 803, column: 111, scope: !961)
!964 = !DILocation(line: 803, column: 108, scope: !961)
!965 = !DILocation(line: 803, column: 8, scope: !955)
!966 = !DILocation(line: 805, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !961, file: !3, line: 804, column: 5)
!968 = !DILocation(line: 807, column: 3, scope: !955)
!969 = !DILocation(line: 810, column: 8, scope: !970)
!970 = distinct !DILexicalBlock(scope: !923, file: !3, line: 810, column: 6)
!971 = !DILocation(line: 810, column: 27, scope: !970)
!972 = !DILocation(line: 810, column: 38, scope: !970)
!973 = !DILocation(line: 810, column: 55, scope: !970)
!974 = !DILocation(line: 810, column: 6, scope: !923)
!975 = !DILocation(line: 814, column: 10, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 814, column: 8)
!977 = distinct !DILexicalBlock(scope: !970, file: !3, line: 811, column: 3)
!978 = !DILocation(line: 814, column: 29, scope: !976)
!979 = !DILocation(line: 814, column: 40, scope: !976)
!980 = !DILocation(line: 814, column: 57, scope: !976)
!981 = !DILocation(line: 814, column: 8, scope: !977)
!982 = !DILocation(line: 816, column: 157, scope: !983)
!983 = distinct !DILexicalBlock(scope: !976, file: !3, line: 815, column: 5)
!984 = !DILocation(line: 816, column: 165, scope: !983)
!985 = !DILocation(line: 816, column: 189, scope: !983)
!986 = !DILocation(line: 816, column: 83, scope: !983)
!987 = !DILocation(line: 817, column: 5, scope: !983)
!988 = !DILocation(line: 821, column: 155, scope: !977)
!989 = !DILocation(line: 821, column: 163, scope: !977)
!990 = !DILocation(line: 821, column: 190, scope: !977)
!991 = !DILocation(line: 821, column: 209, scope: !977)
!992 = !DILocation(line: 821, column: 187, scope: !977)
!993 = !DILocation(line: 821, column: 81, scope: !977)
!994 = !DILocation(line: 822, column: 3, scope: !977)
!995 = !DILocation(line: 825, column: 8, scope: !996)
!996 = distinct !DILexicalBlock(scope: !923, file: !3, line: 825, column: 6)
!997 = !DILocation(line: 825, column: 27, scope: !996)
!998 = !DILocation(line: 825, column: 38, scope: !996)
!999 = !DILocation(line: 825, column: 55, scope: !996)
!1000 = !DILocation(line: 825, column: 6, scope: !923)
!1001 = !DILocation(line: 830, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 830, column: 8)
!1003 = distinct !DILexicalBlock(scope: !996, file: !3, line: 826, column: 3)
!1004 = !DILocation(line: 830, column: 27, scope: !1002)
!1005 = !DILocation(line: 830, column: 40, scope: !1002)
!1006 = !DILocation(line: 830, column: 8, scope: !1003)
!1007 = !DILocation(line: 833, column: 148, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 833, column: 10)
!1009 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 831, column: 5)
!1010 = !DILocation(line: 833, column: 510, scope: !1008)
!1011 = !DILocation(line: 833, column: 584, scope: !1008)
!1012 = !DILocation(line: 833, column: 10, scope: !1009)
!1013 = !DILocation(line: 835, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 834, column: 7)
!1015 = !DILocation(line: 837, column: 5, scope: !1009)
!1016 = !DILocation(line: 839, column: 13, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 839, column: 13)
!1018 = !DILocation(line: 839, column: 32, scope: !1017)
!1019 = !DILocation(line: 839, column: 45, scope: !1017)
!1020 = !DILocation(line: 839, column: 13, scope: !1002)
!1021 = !DILocation(line: 842, column: 148, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 842, column: 10)
!1023 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 840, column: 5)
!1024 = !DILocation(line: 842, column: 510, scope: !1022)
!1025 = !DILocation(line: 842, column: 584, scope: !1022)
!1026 = !DILocation(line: 842, column: 10, scope: !1023)
!1027 = !DILocation(line: 844, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 843, column: 7)
!1029 = !DILocation(line: 846, column: 5, scope: !1023)
!1030 = !DILocation(line: 849, column: 13, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 849, column: 13)
!1032 = !DILocation(line: 849, column: 32, scope: !1031)
!1033 = !DILocation(line: 849, column: 45, scope: !1031)
!1034 = !DILocation(line: 849, column: 13, scope: !1017)
!1035 = !DILocation(line: 852, column: 289, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 852, column: 10)
!1037 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 850, column: 5)
!1038 = !DILocation(line: 852, column: 510, scope: !1036)
!1039 = !DILocation(line: 852, column: 584, scope: !1036)
!1040 = !DILocation(line: 852, column: 10, scope: !1037)
!1041 = !DILocation(line: 854, column: 9, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 853, column: 7)
!1043 = !DILocation(line: 856, column: 5, scope: !1037)
!1044 = !DILocation(line: 862, column: 147, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 862, column: 10)
!1046 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 860, column: 5)
!1047 = !DILocation(line: 862, column: 507, scope: !1045)
!1048 = !DILocation(line: 862, column: 580, scope: !1045)
!1049 = !DILocation(line: 862, column: 10, scope: !1046)
!1050 = !DILocation(line: 864, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 863, column: 7)
!1052 = !DILocation(line: 867, column: 155, scope: !1003)
!1053 = !DILocation(line: 867, column: 163, scope: !1003)
!1054 = !DILocation(line: 867, column: 191, scope: !1003)
!1055 = !DILocation(line: 867, column: 210, scope: !1003)
!1056 = !DILocation(line: 867, column: 187, scope: !1003)
!1057 = !DILocation(line: 867, column: 81, scope: !1003)
!1058 = !DILocation(line: 870, column: 17, scope: !1003)
!1059 = !DILocation(line: 870, column: 15, scope: !1003)
!1060 = !DILocation(line: 872, column: 5, scope: !1003)
!1061 = !DILocation(line: 872, column: 90, scope: !1003)
!1062 = !DILocation(line: 872, column: 95, scope: !1003)
!1063 = !DILocation(line: 872, column: 119, scope: !1003)
!1064 = !DILocation(line: 872, column: 138, scope: !1003)
!1065 = !DILocation(line: 872, column: 151, scope: !1003)
!1066 = !DILocation(line: 872, column: 115, scope: !1003)
!1067 = !DILocation(line: 874, column: 11, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 874, column: 10)
!1069 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 873, column: 5)
!1070 = !DILocation(line: 874, column: 27, scope: !1068)
!1071 = !DILocation(line: 874, column: 25, scope: !1068)
!1072 = !DILocation(line: 874, column: 39, scope: !1068)
!1073 = !DILocation(line: 874, column: 10, scope: !1069)
!1074 = !DILocation(line: 876, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 875, column: 7)
!1076 = distinct !{!1076, !1060, !1077}
!1077 = !DILocation(line: 878, column: 5, scope: !1003)
!1078 = !DILocation(line: 879, column: 3, scope: !1003)
!1079 = !DILocation(line: 882, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !923, file: !3, line: 882, column: 6)
!1081 = !DILocation(line: 882, column: 89, scope: !1080)
!1082 = !DILocation(line: 882, column: 95, scope: !1080)
!1083 = !DILocation(line: 882, column: 15, scope: !1080)
!1084 = !DILocation(line: 882, column: 6, scope: !923)
!1085 = !DILocation(line: 885, column: 149, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 883, column: 3)
!1087 = !DILocation(line: 885, column: 152, scope: !1086)
!1088 = !DILocation(line: 885, column: 176, scope: !1086)
!1089 = !DILocation(line: 885, column: 173, scope: !1086)
!1090 = !DILocation(line: 885, column: 78, scope: !1086)
!1091 = !DILocation(line: 889, column: 80, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 889, column: 8)
!1093 = !DILocation(line: 889, column: 86, scope: !1092)
!1094 = !DILocation(line: 889, column: 111, scope: !1092)
!1095 = !DILocation(line: 889, column: 108, scope: !1092)
!1096 = !DILocation(line: 889, column: 8, scope: !1086)
!1097 = !DILocation(line: 891, column: 7, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 890, column: 5)
!1099 = !DILocation(line: 893, column: 3, scope: !1086)
!1100 = !DILocation(line: 896, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !923, file: !3, line: 896, column: 6)
!1102 = !DILocation(line: 896, column: 27, scope: !1101)
!1103 = !DILocation(line: 896, column: 38, scope: !1101)
!1104 = !DILocation(line: 896, column: 55, scope: !1101)
!1105 = !DILocation(line: 896, column: 6, scope: !923)
!1106 = !DILocation(line: 899, column: 155, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 897, column: 3)
!1108 = !DILocation(line: 899, column: 163, scope: !1107)
!1109 = !DILocation(line: 899, column: 190, scope: !1107)
!1110 = !DILocation(line: 899, column: 209, scope: !1107)
!1111 = !DILocation(line: 899, column: 187, scope: !1107)
!1112 = !DILocation(line: 899, column: 81, scope: !1107)
!1113 = !DILocation(line: 900, column: 3, scope: !1107)
!1114 = !DILocation(line: 903, column: 21, scope: !923)
!1115 = !DILocation(line: 903, column: 131, scope: !923)
!1116 = !DILocation(line: 903, column: 136, scope: !923)
!1117 = !DILocation(line: 903, column: 154, scope: !923)
!1118 = !DILocation(line: 903, column: 50, scope: !923)
!1119 = !DILocation(line: 903, column: 47, scope: !923)
!1120 = !DILocation(line: 903, column: 19, scope: !923)
!1121 = !DILocation(line: 906, column: 3, scope: !923)
!1122 = !DILocation(line: 908, column: 3, scope: !923)
!1123 = !DILocation(line: 909, column: 1, scope: !923)
!1124 = !DILocation(line: 1102, column: 3, scope: !2)
!1125 = !DILocation(line: 1102, column: 12, scope: !2)
!1126 = !DILocation(line: 1102, column: 25, scope: !2)
!1127 = !DILocation(line: 1102, column: 38, scope: !2)
!1128 = !DILocation(line: 1102, column: 51, scope: !2)
!1129 = !DILocation(line: 1103, column: 3, scope: !2)
!1130 = !DILocation(line: 1103, column: 12, scope: !2)
!1131 = !DILocation(line: 1105, column: 78, scope: !2)
!1132 = !DILocation(line: 1105, column: 10, scope: !2)
!1133 = !DILocation(line: 1108, column: 11, scope: !2)
!1134 = !DILocation(line: 1108, column: 18, scope: !2)
!1135 = !DILocation(line: 1108, column: 3, scope: !2)
!1136 = !DILocation(line: 1112, column: 20, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1111, column: 5)
!1138 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1109, column: 3)
!1139 = !DILocation(line: 1113, column: 7, scope: !1137)
!1140 = !DILocation(line: 1117, column: 46, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1116, column: 5)
!1142 = !DILocation(line: 1117, column: 53, scope: !1141)
!1143 = !DILocation(line: 1117, column: 73, scope: !1141)
!1144 = !DILocation(line: 1117, column: 16, scope: !1141)
!1145 = !DILocation(line: 1117, column: 14, scope: !1141)
!1146 = !DILocation(line: 1118, column: 112, scope: !1141)
!1147 = !DILocation(line: 1118, column: 118, scope: !1141)
!1148 = !DILocation(line: 1118, column: 137, scope: !1141)
!1149 = !DILocation(line: 1118, column: 16, scope: !1141)
!1150 = !DILocation(line: 1118, column: 14, scope: !1141)
!1151 = !DILocation(line: 1119, column: 12, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 1119, column: 11)
!1153 = !DILocation(line: 1119, column: 19, scope: !1152)
!1154 = !DILocation(line: 1119, column: 39, scope: !1152)
!1155 = !DILocation(line: 1119, column: 11, scope: !1141)
!1156 = !DILocation(line: 1122, column: 62, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1120, column: 7)
!1158 = !DILocation(line: 1122, column: 50, scope: !1157)
!1159 = !DILocation(line: 1122, column: 48, scope: !1157)
!1160 = !DILocation(line: 1122, column: 18, scope: !1157)
!1161 = !DILocation(line: 1122, column: 85, scope: !1157)
!1162 = !DILocation(line: 1122, column: 74, scope: !1157)
!1163 = !DILocation(line: 1122, column: 71, scope: !1157)
!1164 = !DILocation(line: 1122, column: 16, scope: !1157)
!1165 = !DILocation(line: 1123, column: 7, scope: !1157)
!1166 = !DILocation(line: 1125, column: 17, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 1125, column: 16)
!1168 = !DILocation(line: 1125, column: 24, scope: !1167)
!1169 = !DILocation(line: 1125, column: 44, scope: !1167)
!1170 = !DILocation(line: 1125, column: 16, scope: !1152)
!1171 = !DILocation(line: 1128, column: 64, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1126, column: 7)
!1173 = !DILocation(line: 1128, column: 52, scope: !1172)
!1174 = !DILocation(line: 1128, column: 50, scope: !1172)
!1175 = !DILocation(line: 1128, column: 18, scope: !1172)
!1176 = !DILocation(line: 1128, column: 87, scope: !1172)
!1177 = !DILocation(line: 1128, column: 76, scope: !1172)
!1178 = !DILocation(line: 1128, column: 73, scope: !1172)
!1179 = !DILocation(line: 1128, column: 16, scope: !1172)
!1180 = !DILocation(line: 1129, column: 7, scope: !1172)
!1181 = !DILocation(line: 1135, column: 63, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 1132, column: 7)
!1183 = !DILocation(line: 1135, column: 51, scope: !1182)
!1184 = !DILocation(line: 1135, column: 49, scope: !1182)
!1185 = !DILocation(line: 1135, column: 18, scope: !1182)
!1186 = !DILocation(line: 1135, column: 86, scope: !1182)
!1187 = !DILocation(line: 1135, column: 75, scope: !1182)
!1188 = !DILocation(line: 1135, column: 72, scope: !1182)
!1189 = !DILocation(line: 1135, column: 16, scope: !1182)
!1190 = !DILocation(line: 1141, column: 22, scope: !1141)
!1191 = !DILocation(line: 1141, column: 20, scope: !1141)
!1192 = !DILocation(line: 1142, column: 7, scope: !1141)
!1193 = !DILocation(line: 1147, column: 20, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1146, column: 5)
!1195 = !DILocation(line: 1148, column: 7, scope: !1194)
!1196 = !DILocation(line: 1151, column: 5, scope: !1138)
!1197 = !DILocation(line: 1154, column: 20, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 1153, column: 5)
!1199 = !DILocation(line: 1155, column: 7, scope: !1198)
!1200 = !DILocation(line: 1158, column: 10, scope: !2)
!1201 = !DILocation(line: 1159, column: 1, scope: !2)
!1202 = !DILocation(line: 1158, column: 3, scope: !2)
!1203 = distinct !DISubprogram(name: "HAL_RCC_MCOConfig", scope: !3, file: !3, line: 1016, type: !1204, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1206)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{null, !6, !6, !6}
!1206 = !{!1207, !1208, !1209, !1210, !1220}
!1207 = !DILocalVariable(name: "RCC_MCOx", arg: 1, scope: !1203, file: !3, line: 1016, type: !6)
!1208 = !DILocalVariable(name: "RCC_MCOSource", arg: 2, scope: !1203, file: !3, line: 1016, type: !6)
!1209 = !DILocalVariable(name: "RCC_MCODiv", arg: 3, scope: !1203, file: !3, line: 1016, type: !6)
!1210 = !DILocalVariable(name: "gpio", scope: !1203, file: !3, line: 1018, type: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPIO_InitTypeDef", file: !1212, line: 62, baseType: !1213)
!1212 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_gpio.h", directory: "/home/sri/zephyrproject")
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1212, line: 46, size: 160, elements: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "Pin", scope: !1213, file: !1212, line: 48, baseType: !6, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "Mode", scope: !1213, file: !1212, line: 51, baseType: !6, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "Pull", scope: !1213, file: !1212, line: 54, baseType: !6, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "Speed", scope: !1213, file: !1212, line: 57, baseType: !6, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "Alternate", scope: !1213, file: !1212, line: 60, baseType: !6, size: 32, offset: 128)
!1220 = !DILocalVariable(name: "tmpreg", scope: !1221, file: !3, line: 1033, type: !32)
!1221 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 1033, column: 6)
!1222 = !DILocation(line: 1016, column: 33, scope: !1203)
!1223 = !DILocation(line: 1016, column: 52, scope: !1203)
!1224 = !DILocation(line: 1016, column: 76, scope: !1203)
!1225 = !DILocation(line: 1018, column: 3, scope: !1203)
!1226 = !DILocation(line: 1018, column: 20, scope: !1203)
!1227 = !DILocation(line: 1026, column: 8, scope: !1203)
!1228 = !DILocation(line: 1026, column: 13, scope: !1203)
!1229 = !DILocation(line: 1027, column: 8, scope: !1203)
!1230 = !DILocation(line: 1027, column: 14, scope: !1203)
!1231 = !DILocation(line: 1028, column: 8, scope: !1203)
!1232 = !DILocation(line: 1028, column: 13, scope: !1203)
!1233 = !DILocation(line: 1029, column: 8, scope: !1203)
!1234 = !DILocation(line: 1029, column: 12, scope: !1203)
!1235 = !DILocation(line: 1030, column: 8, scope: !1203)
!1236 = !DILocation(line: 1030, column: 18, scope: !1203)
!1237 = !DILocation(line: 1033, column: 3, scope: !1203)
!1238 = !DILocation(line: 1033, column: 8, scope: !1221)
!1239 = !DILocation(line: 1033, column: 26, scope: !1221)
!1240 = !DILocation(line: 1033, column: 110, scope: !1221)
!1241 = !DILocation(line: 1033, column: 211, scope: !1221)
!1242 = !DILocation(line: 1033, column: 219, scope: !1221)
!1243 = !DILocation(line: 1033, column: 141, scope: !1221)
!1244 = !DILocation(line: 1033, column: 248, scope: !1221)
!1245 = !DILocation(line: 1033, column: 256, scope: !1203)
!1246 = !DILocation(line: 1033, column: 256, scope: !1221)
!1247 = !DILocation(line: 1035, column: 3, scope: !1203)
!1248 = !DILocation(line: 1038, column: 153, scope: !1203)
!1249 = !DILocation(line: 1038, column: 161, scope: !1203)
!1250 = !DILocation(line: 1038, column: 212, scope: !1203)
!1251 = !DILocation(line: 1038, column: 230, scope: !1203)
!1252 = !DILocation(line: 1038, column: 227, scope: !1203)
!1253 = !DILocation(line: 1038, column: 207, scope: !1203)
!1254 = !DILocation(line: 1038, column: 79, scope: !1203)
!1255 = !DILocation(line: 1039, column: 1, scope: !1203)
!1256 = !DISubprogram(name: "HAL_GPIO_Init", scope: !1212, file: !1212, line: 280, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !188)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !69, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 32)
!1260 = distinct !DISubprogram(name: "HAL_RCC_EnableCSS", scope: !3, file: !3, line: 1050, type: !1261, scopeLine: 1051, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null}
!1263 = !DILocation(line: 1052, column: 75, scope: !1260)
!1264 = !DILocation(line: 1053, column: 1, scope: !1260)
!1265 = distinct !DISubprogram(name: "HAL_RCC_DisableCSS", scope: !3, file: !3, line: 1059, type: !1261, scopeLine: 1060, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1266 = !DILocation(line: 1061, column: 75, scope: !1265)
!1267 = !DILocation(line: 1062, column: 1, scope: !1265)
!1268 = distinct !DISubprogram(name: "HAL_RCC_GetHCLKFreq", scope: !3, file: !3, line: 1170, type: !4, scopeLine: 1171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1269 = !DILocation(line: 1172, column: 10, scope: !1268)
!1270 = !DILocation(line: 1172, column: 3, scope: !1268)
!1271 = distinct !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !3, file: !3, line: 1181, type: !4, scopeLine: 1182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1272 = !DILocation(line: 1184, column: 11, scope: !1271)
!1273 = !DILocation(line: 1184, column: 117, scope: !1271)
!1274 = !DILocation(line: 1184, column: 122, scope: !1271)
!1275 = !DILocation(line: 1184, column: 141, scope: !1271)
!1276 = !DILocation(line: 1184, column: 36, scope: !1271)
!1277 = !DILocation(line: 1184, column: 33, scope: !1271)
!1278 = !DILocation(line: 1184, column: 3, scope: !1271)
!1279 = distinct !DISubprogram(name: "HAL_RCC_GetOscConfig", scope: !3, file: !3, line: 1194, type: !1280, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{null, !195}
!1282 = !{!1283}
!1283 = !DILocalVariable(name: "RCC_OscInitStruct", arg: 1, scope: !1279, file: !3, line: 1194, type: !195)
!1284 = !DILocation(line: 1194, column: 47, scope: !1279)
!1285 = !DILocation(line: 1200, column: 3, scope: !1279)
!1286 = !DILocation(line: 1200, column: 22, scope: !1279)
!1287 = !DILocation(line: 1200, column: 37, scope: !1279)
!1288 = !DILocation(line: 1203, column: 3, scope: !1279)
!1289 = !DILocation(line: 1203, column: 22, scope: !1279)
!1290 = !DILocation(line: 1203, column: 37, scope: !1279)
!1291 = !DILocation(line: 1208, column: 73, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1208, column: 6)
!1293 = !DILocation(line: 1208, column: 76, scope: !1292)
!1294 = !DILocation(line: 1208, column: 95, scope: !1292)
!1295 = !DILocation(line: 1208, column: 6, scope: !1279)
!1296 = !DILocation(line: 1210, column: 5, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1209, column: 3)
!1298 = !DILocation(line: 1210, column: 24, scope: !1297)
!1299 = !DILocation(line: 1210, column: 33, scope: !1297)
!1300 = !DILocation(line: 1211, column: 3, scope: !1297)
!1301 = !DILocation(line: 1212, column: 78, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1212, column: 11)
!1303 = !DILocation(line: 1212, column: 81, scope: !1302)
!1304 = !DILocation(line: 1212, column: 100, scope: !1302)
!1305 = !DILocation(line: 1212, column: 11, scope: !1292)
!1306 = !DILocation(line: 1214, column: 5, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1213, column: 3)
!1308 = !DILocation(line: 1214, column: 24, scope: !1307)
!1309 = !DILocation(line: 1214, column: 33, scope: !1307)
!1310 = !DILocation(line: 1215, column: 3, scope: !1307)
!1311 = !DILocation(line: 1218, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 1217, column: 3)
!1313 = !DILocation(line: 1218, column: 24, scope: !1312)
!1314 = !DILocation(line: 1218, column: 33, scope: !1312)
!1315 = !DILocation(line: 1222, column: 73, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1222, column: 6)
!1317 = !DILocation(line: 1222, column: 76, scope: !1316)
!1318 = !DILocation(line: 1222, column: 94, scope: !1316)
!1319 = !DILocation(line: 1222, column: 6, scope: !1279)
!1320 = !DILocation(line: 1224, column: 5, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1223, column: 3)
!1322 = !DILocation(line: 1224, column: 24, scope: !1321)
!1323 = !DILocation(line: 1224, column: 33, scope: !1321)
!1324 = !DILocation(line: 1225, column: 3, scope: !1321)
!1325 = !DILocation(line: 1228, column: 5, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1227, column: 3)
!1327 = !DILocation(line: 1228, column: 24, scope: !1326)
!1328 = !DILocation(line: 1228, column: 33, scope: !1326)
!1329 = !DILocation(line: 1231, column: 122, scope: !1279)
!1330 = !DILocation(line: 1231, column: 125, scope: !1279)
!1331 = !DILocation(line: 1231, column: 144, scope: !1279)
!1332 = !DILocation(line: 1231, column: 3, scope: !1279)
!1333 = !DILocation(line: 1231, column: 22, scope: !1279)
!1334 = !DILocation(line: 1231, column: 42, scope: !1279)
!1335 = !DILocation(line: 1234, column: 73, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1234, column: 6)
!1337 = !DILocation(line: 1234, column: 78, scope: !1336)
!1338 = !DILocation(line: 1234, column: 96, scope: !1336)
!1339 = !DILocation(line: 1234, column: 6, scope: !1279)
!1340 = !DILocation(line: 1236, column: 5, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1235, column: 3)
!1342 = !DILocation(line: 1236, column: 24, scope: !1341)
!1343 = !DILocation(line: 1236, column: 33, scope: !1341)
!1344 = !DILocation(line: 1237, column: 3, scope: !1341)
!1345 = !DILocation(line: 1238, column: 78, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1238, column: 11)
!1347 = !DILocation(line: 1238, column: 83, scope: !1346)
!1348 = !DILocation(line: 1238, column: 101, scope: !1346)
!1349 = !DILocation(line: 1238, column: 11, scope: !1336)
!1350 = !DILocation(line: 1240, column: 5, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1239, column: 3)
!1352 = !DILocation(line: 1240, column: 24, scope: !1351)
!1353 = !DILocation(line: 1240, column: 33, scope: !1351)
!1354 = !DILocation(line: 1241, column: 3, scope: !1351)
!1355 = !DILocation(line: 1244, column: 5, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1243, column: 3)
!1357 = !DILocation(line: 1244, column: 24, scope: !1356)
!1358 = !DILocation(line: 1244, column: 33, scope: !1356)
!1359 = !DILocation(line: 1248, column: 73, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1248, column: 6)
!1361 = !DILocation(line: 1248, column: 77, scope: !1360)
!1362 = !DILocation(line: 1248, column: 95, scope: !1360)
!1363 = !DILocation(line: 1248, column: 6, scope: !1279)
!1364 = !DILocation(line: 1250, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1249, column: 3)
!1366 = !DILocation(line: 1250, column: 24, scope: !1365)
!1367 = !DILocation(line: 1250, column: 33, scope: !1365)
!1368 = !DILocation(line: 1251, column: 3, scope: !1365)
!1369 = !DILocation(line: 1254, column: 5, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 1253, column: 3)
!1371 = !DILocation(line: 1254, column: 24, scope: !1370)
!1372 = !DILocation(line: 1254, column: 33, scope: !1370)
!1373 = !DILocation(line: 1258, column: 73, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1258, column: 6)
!1375 = !DILocation(line: 1258, column: 77, scope: !1374)
!1376 = !DILocation(line: 1258, column: 96, scope: !1374)
!1377 = !DILocation(line: 1258, column: 6, scope: !1279)
!1378 = !DILocation(line: 1260, column: 5, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1259, column: 3)
!1380 = !DILocation(line: 1260, column: 24, scope: !1379)
!1381 = !DILocation(line: 1260, column: 35, scope: !1379)
!1382 = !DILocation(line: 1261, column: 3, scope: !1379)
!1383 = !DILocation(line: 1264, column: 5, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1263, column: 3)
!1385 = !DILocation(line: 1264, column: 24, scope: !1384)
!1386 = !DILocation(line: 1264, column: 35, scope: !1384)
!1387 = !DILocation(line: 1267, column: 124, scope: !1279)
!1388 = !DILocation(line: 1267, column: 128, scope: !1279)
!1389 = !DILocation(line: 1267, column: 148, scope: !1279)
!1390 = !DILocation(line: 1267, column: 3, scope: !1279)
!1391 = !DILocation(line: 1267, column: 22, scope: !1279)
!1392 = !DILocation(line: 1267, column: 44, scope: !1279)
!1393 = !DILocation(line: 1271, column: 116, scope: !1279)
!1394 = !DILocation(line: 1271, column: 121, scope: !1279)
!1395 = !DILocation(line: 1271, column: 144, scope: !1279)
!1396 = !DILocation(line: 1271, column: 36, scope: !1279)
!1397 = !DILocation(line: 1271, column: 3, scope: !1279)
!1398 = !DILocation(line: 1271, column: 22, scope: !1279)
!1399 = !DILocation(line: 1271, column: 33, scope: !1279)
!1400 = !DILocation(line: 1275, column: 73, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1275, column: 6)
!1402 = !DILocation(line: 1275, column: 76, scope: !1401)
!1403 = !DILocation(line: 1275, column: 95, scope: !1401)
!1404 = !DILocation(line: 1275, column: 6, scope: !1279)
!1405 = !DILocation(line: 1277, column: 5, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1276, column: 3)
!1407 = !DILocation(line: 1277, column: 24, scope: !1406)
!1408 = !DILocation(line: 1277, column: 28, scope: !1406)
!1409 = !DILocation(line: 1277, column: 37, scope: !1406)
!1410 = !DILocation(line: 1278, column: 3, scope: !1406)
!1411 = !DILocation(line: 1281, column: 5, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1280, column: 3)
!1413 = !DILocation(line: 1281, column: 24, scope: !1412)
!1414 = !DILocation(line: 1281, column: 28, scope: !1412)
!1415 = !DILocation(line: 1281, column: 37, scope: !1412)
!1416 = !DILocation(line: 1283, column: 115, scope: !1279)
!1417 = !DILocation(line: 1283, column: 120, scope: !1279)
!1418 = !DILocation(line: 1283, column: 3, scope: !1279)
!1419 = !DILocation(line: 1283, column: 22, scope: !1279)
!1420 = !DILocation(line: 1283, column: 26, scope: !1279)
!1421 = !DILocation(line: 1283, column: 36, scope: !1279)
!1422 = !DILocation(line: 1284, column: 112, scope: !1279)
!1423 = !DILocation(line: 1284, column: 117, scope: !1279)
!1424 = !DILocation(line: 1284, column: 3, scope: !1279)
!1425 = !DILocation(line: 1284, column: 22, scope: !1279)
!1426 = !DILocation(line: 1284, column: 26, scope: !1279)
!1427 = !DILocation(line: 1284, column: 33, scope: !1279)
!1428 = !DILocation(line: 1285, column: 112, scope: !1279)
!1429 = !DILocation(line: 1285, column: 118, scope: !1279)
!1430 = !DILocation(line: 1285, column: 3, scope: !1279)
!1431 = !DILocation(line: 1285, column: 22, scope: !1279)
!1432 = !DILocation(line: 1285, column: 26, scope: !1279)
!1433 = !DILocation(line: 1285, column: 33, scope: !1279)
!1434 = !DILocation(line: 1286, column: 1, scope: !1279)
!1435 = distinct !DISubprogram(name: "HAL_RCC_GetClockConfig", scope: !3, file: !3, line: 1296, type: !1436, scopeLine: 1297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1439)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !926, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 32)
!1439 = !{!1440, !1441}
!1440 = !DILocalVariable(name: "RCC_ClkInitStruct", arg: 1, scope: !1435, file: !3, line: 1296, type: !926)
!1441 = !DILocalVariable(name: "pFLatency", arg: 2, scope: !1435, file: !3, line: 1296, type: !1438)
!1442 = !DILocation(line: 1296, column: 49, scope: !1435)
!1443 = !DILocation(line: 1296, column: 78, scope: !1435)
!1444 = !DILocation(line: 1303, column: 3, scope: !1435)
!1445 = !DILocation(line: 1303, column: 22, scope: !1435)
!1446 = !DILocation(line: 1303, column: 32, scope: !1435)
!1447 = !DILocation(line: 1306, column: 114, scope: !1435)
!1448 = !DILocation(line: 1306, column: 119, scope: !1435)
!1449 = !DILocation(line: 1306, column: 3, scope: !1435)
!1450 = !DILocation(line: 1306, column: 22, scope: !1435)
!1451 = !DILocation(line: 1306, column: 35, scope: !1435)
!1452 = !DILocation(line: 1309, column: 115, scope: !1435)
!1453 = !DILocation(line: 1309, column: 120, scope: !1435)
!1454 = !DILocation(line: 1309, column: 3, scope: !1435)
!1455 = !DILocation(line: 1309, column: 22, scope: !1435)
!1456 = !DILocation(line: 1309, column: 36, scope: !1435)
!1457 = !DILocation(line: 1312, column: 116, scope: !1435)
!1458 = !DILocation(line: 1312, column: 121, scope: !1435)
!1459 = !DILocation(line: 1312, column: 3, scope: !1435)
!1460 = !DILocation(line: 1312, column: 22, scope: !1435)
!1461 = !DILocation(line: 1312, column: 37, scope: !1435)
!1462 = !DILocation(line: 1314, column: 88, scope: !1435)
!1463 = !DILocation(line: 1314, column: 94, scope: !1435)
!1464 = !DILocation(line: 1314, column: 4, scope: !1435)
!1465 = !DILocation(line: 1314, column: 14, scope: !1435)
!1466 = !DILocation(line: 1315, column: 1, scope: !1435)
!1467 = distinct !DISubprogram(name: "HAL_RCC_NMI_IRQHandler", scope: !3, file: !3, line: 1322, type: !1261, scopeLine: 1323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1468 = !DILocation(line: 1325, column: 74, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1467, file: !3, line: 1325, column: 6)
!1470 = !DILocation(line: 1325, column: 78, scope: !1469)
!1471 = !DILocation(line: 1325, column: 110, scope: !1469)
!1472 = !DILocation(line: 1325, column: 6, scope: !1467)
!1473 = !DILocation(line: 1328, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !3, line: 1326, column: 3)
!1475 = !DILocation(line: 1331, column: 104, scope: !1474)
!1476 = !DILocation(line: 1332, column: 3, scope: !1474)
!1477 = !DILocation(line: 1333, column: 1, scope: !1467)
!1478 = distinct !DISubprogram(name: "HAL_RCC_CSSCallback", scope: !3, file: !3, line: 1339, type: !1261, scopeLine: 1340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!1479 = !DILocation(line: 1344, column: 1, scope: !1478)
