; ModuleID = '../bc_files/stm32f0xx_hal_rcc_ex.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc_ex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_PeriphCLKInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_CRSInitTypeDef = type { i32, i32, i32, i32, i32, i32 }
%struct.CRS_TypeDef = type { i32, i32, i32, i32 }
%struct.RCC_CRSSynchroInfoTypeDef = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define hidden zeroext i8 @HAL_RCCEx_PeriphCLKConfig(ptr noundef %0) #0 !dbg !64 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !82, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata ptr %4, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 0, ptr %4, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %5, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 0, ptr %5, align 4, !dbg !87
  %8 = load ptr, ptr %3, align 4, !dbg !88
  %9 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %8, i32 0, i32 0, !dbg !90
  %10 = load i32, ptr %9, align 4, !dbg !90
  %11 = and i32 %10, 65536, !dbg !91
  %12 = icmp eq i32 %11, 65536, !dbg !92
  br i1 %12, label %13, label %97, !dbg !93

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !94, metadata !DIExpression()), !dbg !97
  store i8 0, ptr %6, align 1, !dbg !97
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !98
  %15 = and i32 %14, 268435456, !dbg !100
  %16 = icmp eq i32 %15, 0, !dbg !101
  br i1 %16, label %17, label %25, !dbg !102

17:                                               ; preds = %13
  br label %18, !dbg !103

18:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %7, metadata !105, metadata !DIExpression()), !dbg !107
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !108
  %20 = or i32 %19, 268435456, !dbg !108
  store volatile i32 %20, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !108
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !109
  %22 = and i32 %21, 268435456, !dbg !110
  store volatile i32 %22, ptr %7, align 4, !dbg !111
  %23 = load volatile i32, ptr %7, align 4, !dbg !112
  br label %24, !dbg !113

24:                                               ; preds = %18
  store i8 1, ptr %6, align 1, !dbg !114
  br label %25, !dbg !115

25:                                               ; preds = %24, %13
  %26 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !116
  %27 = and i32 %26, 256, !dbg !118
  %28 = icmp eq i32 %27, 0, !dbg !119
  br i1 %28, label %29, label %45, !dbg !120

29:                                               ; preds = %25
  %30 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !121
  %31 = or i32 %30, 256, !dbg !121
  store volatile i32 %31, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !121
  %32 = call i32 @HAL_GetTick(), !dbg !123
  store i32 %32, ptr %4, align 4, !dbg !124
  br label %33, !dbg !125

33:                                               ; preds = %43, %29
  %34 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !126
  %35 = and i32 %34, 256, !dbg !127
  %36 = icmp eq i32 %35, 0, !dbg !128
  br i1 %36, label %37, label %44, !dbg !125

37:                                               ; preds = %33
  %38 = call i32 @HAL_GetTick(), !dbg !129
  %39 = load i32, ptr %4, align 4, !dbg !132
  %40 = sub i32 %38, %39, !dbg !133
  %41 = icmp ugt i32 %40, 100, !dbg !134
  br i1 %41, label %42, label %43, !dbg !135

42:                                               ; preds = %37
  store i8 3, ptr %2, align 1, !dbg !136
  br label %163, !dbg !136

43:                                               ; preds = %37
  br label %33, !dbg !125, !llvm.loop !138

44:                                               ; preds = %33
  br label %45, !dbg !140

45:                                               ; preds = %44, %25
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !141
  %47 = and i32 %46, 768, !dbg !142
  store i32 %47, ptr %5, align 4, !dbg !143
  %48 = load i32, ptr %5, align 4, !dbg !144
  %49 = icmp ne i32 %48, 0, !dbg !146
  br i1 %49, label %50, label %83, !dbg !147

50:                                               ; preds = %45
  %51 = load i32, ptr %5, align 4, !dbg !148
  %52 = load ptr, ptr %3, align 4, !dbg !149
  %53 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %52, i32 0, i32 1, !dbg !150
  %54 = load i32, ptr %53, align 4, !dbg !150
  %55 = and i32 %54, 768, !dbg !151
  %56 = icmp ne i32 %51, %55, !dbg !152
  br i1 %56, label %57, label %83, !dbg !153

57:                                               ; preds = %50
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !154
  %59 = and i32 %58, -769, !dbg !156
  store i32 %59, ptr %5, align 4, !dbg !157
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !158
  %61 = or i32 %60, 65536, !dbg !158
  store volatile i32 %61, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !158
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !159
  %63 = and i32 %62, -65537, !dbg !159
  store volatile i32 %63, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !159
  %64 = load i32, ptr %5, align 4, !dbg !160
  store volatile i32 %64, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !161
  %65 = load i32, ptr %5, align 4, !dbg !162
  %66 = and i32 %65, 1, !dbg !164
  %67 = icmp eq i32 %66, 1, !dbg !165
  br i1 %67, label %68, label %82, !dbg !166

68:                                               ; preds = %57
  %69 = call i32 @HAL_GetTick(), !dbg !167
  store i32 %69, ptr %4, align 4, !dbg !169
  br label %70, !dbg !170

70:                                               ; preds = %80, %68
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !171
  %72 = and i32 %71, 2, !dbg !172
  %73 = icmp eq i32 %72, 0, !dbg !173
  br i1 %73, label %74, label %81, !dbg !170

74:                                               ; preds = %70
  %75 = call i32 @HAL_GetTick(), !dbg !174
  %76 = load i32, ptr %4, align 4, !dbg !177
  %77 = sub i32 %75, %76, !dbg !178
  %78 = icmp ugt i32 %77, 5000, !dbg !179
  br i1 %78, label %79, label %80, !dbg !180

79:                                               ; preds = %74
  store i8 3, ptr %2, align 1, !dbg !181
  br label %163, !dbg !181

80:                                               ; preds = %74
  br label %70, !dbg !170, !llvm.loop !183

81:                                               ; preds = %70
  br label %82, !dbg !185

82:                                               ; preds = %81, %57
  br label %83, !dbg !186

83:                                               ; preds = %82, %50, %45
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !187
  %85 = and i32 %84, -769, !dbg !188
  %86 = load ptr, ptr %3, align 4, !dbg !189
  %87 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %86, i32 0, i32 1, !dbg !190
  %88 = load i32, ptr %87, align 4, !dbg !190
  %89 = or i32 %85, %88, !dbg !191
  store volatile i32 %89, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !192
  %90 = load i8, ptr %6, align 1, !dbg !193
  %91 = zext i8 %90 to i32, !dbg !193
  %92 = icmp eq i32 %91, 1, !dbg !195
  br i1 %92, label %93, label %96, !dbg !196

93:                                               ; preds = %83
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !197
  %95 = and i32 %94, -268435457, !dbg !197
  store volatile i32 %95, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !197
  br label %96, !dbg !199

96:                                               ; preds = %93, %83
  br label %97, !dbg !200

97:                                               ; preds = %96, %1
  %98 = load ptr, ptr %3, align 4, !dbg !201
  %99 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %98, i32 0, i32 0, !dbg !203
  %100 = load i32, ptr %99, align 4, !dbg !203
  %101 = and i32 %100, 1, !dbg !204
  %102 = icmp eq i32 %101, 1, !dbg !205
  br i1 %102, label %103, label %110, !dbg !206

103:                                              ; preds = %97
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !207
  %105 = and i32 %104, -4, !dbg !209
  %106 = load ptr, ptr %3, align 4, !dbg !210
  %107 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %106, i32 0, i32 2, !dbg !211
  %108 = load i32, ptr %107, align 4, !dbg !211
  %109 = or i32 %105, %108, !dbg !212
  store volatile i32 %109, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !213
  br label %110, !dbg !214

110:                                              ; preds = %103, %97
  %111 = load ptr, ptr %3, align 4, !dbg !215
  %112 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %111, i32 0, i32 0, !dbg !217
  %113 = load i32, ptr %112, align 4, !dbg !217
  %114 = and i32 %113, 2, !dbg !218
  %115 = icmp eq i32 %114, 2, !dbg !219
  br i1 %115, label %116, label %123, !dbg !220

116:                                              ; preds = %110
  %117 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !221
  %118 = and i32 %117, -196609, !dbg !223
  %119 = load ptr, ptr %3, align 4, !dbg !224
  %120 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %119, i32 0, i32 3, !dbg !225
  %121 = load i32, ptr %120, align 4, !dbg !225
  %122 = or i32 %118, %121, !dbg !226
  store volatile i32 %122, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !227
  br label %123, !dbg !228

123:                                              ; preds = %116, %110
  %124 = load ptr, ptr %3, align 4, !dbg !229
  %125 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %124, i32 0, i32 0, !dbg !231
  %126 = load i32, ptr %125, align 4, !dbg !231
  %127 = and i32 %126, 262144, !dbg !232
  %128 = icmp eq i32 %127, 262144, !dbg !233
  br i1 %128, label %129, label %136, !dbg !234

129:                                              ; preds = %123
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !235
  %131 = and i32 %130, -786433, !dbg !237
  %132 = load ptr, ptr %3, align 4, !dbg !238
  %133 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %132, i32 0, i32 4, !dbg !239
  %134 = load i32, ptr %133, align 4, !dbg !239
  %135 = or i32 %131, %134, !dbg !240
  store volatile i32 %135, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !241
  br label %136, !dbg !242

136:                                              ; preds = %129, %123
  %137 = load ptr, ptr %3, align 4, !dbg !243
  %138 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %137, i32 0, i32 0, !dbg !245
  %139 = load i32, ptr %138, align 4, !dbg !245
  %140 = and i32 %139, 32, !dbg !246
  %141 = icmp eq i32 %140, 32, !dbg !247
  br i1 %141, label %142, label %149, !dbg !248

142:                                              ; preds = %136
  %143 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !249
  %144 = and i32 %143, -17, !dbg !251
  %145 = load ptr, ptr %3, align 4, !dbg !252
  %146 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %145, i32 0, i32 5, !dbg !253
  %147 = load i32, ptr %146, align 4, !dbg !253
  %148 = or i32 %144, %147, !dbg !254
  store volatile i32 %148, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !255
  br label %149, !dbg !256

149:                                              ; preds = %142, %136
  %150 = load ptr, ptr %3, align 4, !dbg !257
  %151 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %150, i32 0, i32 0, !dbg !259
  %152 = load i32, ptr %151, align 4, !dbg !259
  %153 = and i32 %152, 1024, !dbg !260
  %154 = icmp eq i32 %153, 1024, !dbg !261
  br i1 %154, label %155, label %162, !dbg !262

155:                                              ; preds = %149
  %156 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !263
  %157 = and i32 %156, -65, !dbg !265
  %158 = load ptr, ptr %3, align 4, !dbg !266
  %159 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %158, i32 0, i32 6, !dbg !267
  %160 = load i32, ptr %159, align 4, !dbg !267
  %161 = or i32 %157, %160, !dbg !268
  store volatile i32 %161, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !269
  br label %162, !dbg !270

162:                                              ; preds = %155, %149
  store i8 0, ptr %2, align 1, !dbg !271
  br label %163, !dbg !271

163:                                              ; preds = %162, %79, %42
  %164 = load i8, ptr %2, align 1, !dbg !272
  ret i8 %164, !dbg !272
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @HAL_GetTick() #2

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCCEx_GetPeriphCLKConfig(ptr noundef %0) #0 !dbg !273 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !276, metadata !DIExpression()), !dbg !277
  %3 = load ptr, ptr %2, align 4, !dbg !278
  %4 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %3, i32 0, i32 0, !dbg !279
  store i32 65569, ptr %4, align 4, !dbg !280
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !281
  %6 = and i32 %5, 768, !dbg !282
  %7 = load ptr, ptr %2, align 4, !dbg !283
  %8 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %7, i32 0, i32 1, !dbg !284
  store i32 %6, ptr %8, align 4, !dbg !285
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !286
  %10 = and i32 %9, 3, !dbg !287
  %11 = load ptr, ptr %2, align 4, !dbg !288
  %12 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %11, i32 0, i32 2, !dbg !289
  store i32 %10, ptr %12, align 4, !dbg !290
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !291
  %14 = and i32 %13, 16, !dbg !292
  %15 = load ptr, ptr %2, align 4, !dbg !293
  %16 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %15, i32 0, i32 5, !dbg !294
  store i32 %14, ptr %16, align 4, !dbg !295
  %17 = load ptr, ptr %2, align 4, !dbg !296
  %18 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %17, i32 0, i32 0, !dbg !297
  %19 = load i32, ptr %18, align 4, !dbg !298
  %20 = or i32 %19, 2, !dbg !298
  store i32 %20, ptr %18, align 4, !dbg !298
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !299
  %22 = and i32 %21, 196608, !dbg !300
  %23 = load ptr, ptr %2, align 4, !dbg !301
  %24 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %23, i32 0, i32 3, !dbg !302
  store i32 %22, ptr %24, align 4, !dbg !303
  %25 = load ptr, ptr %2, align 4, !dbg !304
  %26 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %25, i32 0, i32 0, !dbg !305
  %27 = load i32, ptr %26, align 4, !dbg !306
  %28 = or i32 %27, 262144, !dbg !306
  store i32 %28, ptr %26, align 4, !dbg !306
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !307
  %30 = and i32 %29, 786432, !dbg !308
  %31 = load ptr, ptr %2, align 4, !dbg !309
  %32 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %31, i32 0, i32 4, !dbg !310
  store i32 %30, ptr %32, align 4, !dbg !311
  %33 = load ptr, ptr %2, align 4, !dbg !312
  %34 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %33, i32 0, i32 0, !dbg !313
  %35 = load i32, ptr %34, align 4, !dbg !314
  %36 = or i32 %35, 1024, !dbg !314
  store i32 %36, ptr %34, align 4, !dbg !314
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !315
  %38 = and i32 %37, 64, !dbg !316
  %39 = load ptr, ptr %2, align 4, !dbg !317
  %40 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %39, i32 0, i32 6, !dbg !318
  store i32 %38, ptr %40, align 4, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_RCCEx_GetPeriphCLKFreq(i32 noundef %0) #0 !dbg !321 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %3, metadata !326, metadata !DIExpression()), !dbg !327
  store i32 0, ptr %3, align 4, !dbg !327
  call void @llvm.dbg.declare(metadata ptr %4, metadata !328, metadata !DIExpression()), !dbg !329
  store i32 0, ptr %4, align 4, !dbg !329
  %5 = load i32, ptr %2, align 4, !dbg !330
  switch i32 %5, label %168 [
    i32 65536, label %6
    i32 1, label %35
    i32 2, label %67
    i32 262144, label %99
    i32 32, label %131
    i32 1024, label %148
  ], !dbg !331

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !332
  %8 = and i32 %7, 768, !dbg !335
  store i32 %8, ptr %4, align 4, !dbg !336
  %9 = load i32, ptr %4, align 4, !dbg !337
  %10 = icmp eq i32 %9, 256, !dbg !339
  br i1 %10, label %11, label %16, !dbg !340

11:                                               ; preds = %6
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !341
  %13 = and i32 %12, 2, !dbg !342
  %14 = icmp eq i32 %13, 2, !dbg !343
  br i1 %14, label %15, label %16, !dbg !344

15:                                               ; preds = %11
  store i32 32768, ptr %3, align 4, !dbg !345
  br label %34, !dbg !347

16:                                               ; preds = %11, %6
  %17 = load i32, ptr %4, align 4, !dbg !348
  %18 = icmp eq i32 %17, 512, !dbg !350
  br i1 %18, label %19, label %24, !dbg !351

19:                                               ; preds = %16
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !352
  %21 = and i32 %20, 2, !dbg !353
  %22 = icmp eq i32 %21, 2, !dbg !354
  br i1 %22, label %23, label %24, !dbg !355

23:                                               ; preds = %19
  store i32 32000, ptr %3, align 4, !dbg !356
  br label %33, !dbg !358

24:                                               ; preds = %19, %16
  %25 = load i32, ptr %4, align 4, !dbg !359
  %26 = icmp eq i32 %25, 768, !dbg !361
  br i1 %26, label %27, label %32, !dbg !362

27:                                               ; preds = %24
  %28 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !363
  %29 = and i32 %28, 131072, !dbg !364
  %30 = icmp eq i32 %29, 131072, !dbg !365
  br i1 %30, label %31, label %32, !dbg !366

31:                                               ; preds = %27
  store i32 250000, ptr %3, align 4, !dbg !367
  br label %32, !dbg !369

32:                                               ; preds = %31, %27, %24
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %15
  br label %169, !dbg !370

35:                                               ; preds = %1
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !371
  %37 = and i32 %36, 3, !dbg !373
  store i32 %37, ptr %4, align 4, !dbg !374
  %38 = load i32, ptr %4, align 4, !dbg !375
  %39 = icmp eq i32 %38, 0, !dbg !377
  br i1 %39, label %40, label %42, !dbg !378

40:                                               ; preds = %35
  %41 = call i32 @HAL_RCC_GetPCLK1Freq(), !dbg !379
  store i32 %41, ptr %3, align 4, !dbg !381
  br label %66, !dbg !382

42:                                               ; preds = %35
  %43 = load i32, ptr %4, align 4, !dbg !383
  %44 = icmp eq i32 %43, 3, !dbg !385
  br i1 %44, label %45, label %50, !dbg !386

45:                                               ; preds = %42
  %46 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !387
  %47 = and i32 %46, 2, !dbg !388
  %48 = icmp eq i32 %47, 2, !dbg !389
  br i1 %48, label %49, label %50, !dbg !390

49:                                               ; preds = %45
  store i32 8000000, ptr %3, align 4, !dbg !391
  br label %65, !dbg !393

50:                                               ; preds = %45, %42
  %51 = load i32, ptr %4, align 4, !dbg !394
  %52 = icmp eq i32 %51, 1, !dbg !396
  br i1 %52, label %53, label %55, !dbg !397

53:                                               ; preds = %50
  %54 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !398
  store i32 %54, ptr %3, align 4, !dbg !400
  br label %64, !dbg !401

55:                                               ; preds = %50
  %56 = load i32, ptr %4, align 4, !dbg !402
  %57 = icmp eq i32 %56, 2, !dbg !404
  br i1 %57, label %58, label %63, !dbg !405

58:                                               ; preds = %55
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !406
  %60 = and i32 %59, 2, !dbg !407
  %61 = icmp eq i32 %60, 2, !dbg !408
  br i1 %61, label %62, label %63, !dbg !409

62:                                               ; preds = %58
  store i32 32768, ptr %3, align 4, !dbg !410
  br label %63, !dbg !412

63:                                               ; preds = %62, %58, %55
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %40
  br label %169, !dbg !413

67:                                               ; preds = %1
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !414
  %69 = and i32 %68, 196608, !dbg !416
  store i32 %69, ptr %4, align 4, !dbg !417
  %70 = load i32, ptr %4, align 4, !dbg !418
  %71 = icmp eq i32 %70, 0, !dbg !420
  br i1 %71, label %72, label %74, !dbg !421

72:                                               ; preds = %67
  %73 = call i32 @HAL_RCC_GetPCLK1Freq(), !dbg !422
  store i32 %73, ptr %3, align 4, !dbg !424
  br label %98, !dbg !425

74:                                               ; preds = %67
  %75 = load i32, ptr %4, align 4, !dbg !426
  %76 = icmp eq i32 %75, 196608, !dbg !428
  br i1 %76, label %77, label %82, !dbg !429

77:                                               ; preds = %74
  %78 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !430
  %79 = and i32 %78, 2, !dbg !431
  %80 = icmp eq i32 %79, 2, !dbg !432
  br i1 %80, label %81, label %82, !dbg !433

81:                                               ; preds = %77
  store i32 8000000, ptr %3, align 4, !dbg !434
  br label %97, !dbg !436

82:                                               ; preds = %77, %74
  %83 = load i32, ptr %4, align 4, !dbg !437
  %84 = icmp eq i32 %83, 65536, !dbg !439
  br i1 %84, label %85, label %87, !dbg !440

85:                                               ; preds = %82
  %86 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !441
  store i32 %86, ptr %3, align 4, !dbg !443
  br label %96, !dbg !444

87:                                               ; preds = %82
  %88 = load i32, ptr %4, align 4, !dbg !445
  %89 = icmp eq i32 %88, 131072, !dbg !447
  br i1 %89, label %90, label %95, !dbg !448

90:                                               ; preds = %87
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !449
  %92 = and i32 %91, 2, !dbg !450
  %93 = icmp eq i32 %92, 2, !dbg !451
  br i1 %93, label %94, label %95, !dbg !452

94:                                               ; preds = %90
  store i32 32768, ptr %3, align 4, !dbg !453
  br label %95, !dbg !455

95:                                               ; preds = %94, %90, %87
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %72
  br label %169, !dbg !456

99:                                               ; preds = %1
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !457
  %101 = and i32 %100, 786432, !dbg !459
  store i32 %101, ptr %4, align 4, !dbg !460
  %102 = load i32, ptr %4, align 4, !dbg !461
  %103 = icmp eq i32 %102, 0, !dbg !463
  br i1 %103, label %104, label %106, !dbg !464

104:                                              ; preds = %99
  %105 = call i32 @HAL_RCC_GetPCLK1Freq(), !dbg !465
  store i32 %105, ptr %3, align 4, !dbg !467
  br label %130, !dbg !468

106:                                              ; preds = %99
  %107 = load i32, ptr %4, align 4, !dbg !469
  %108 = icmp eq i32 %107, 786432, !dbg !471
  br i1 %108, label %109, label %114, !dbg !472

109:                                              ; preds = %106
  %110 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !473
  %111 = and i32 %110, 2, !dbg !474
  %112 = icmp eq i32 %111, 2, !dbg !475
  br i1 %112, label %113, label %114, !dbg !476

113:                                              ; preds = %109
  store i32 8000000, ptr %3, align 4, !dbg !477
  br label %129, !dbg !479

114:                                              ; preds = %109, %106
  %115 = load i32, ptr %4, align 4, !dbg !480
  %116 = icmp eq i32 %115, 262144, !dbg !482
  br i1 %116, label %117, label %119, !dbg !483

117:                                              ; preds = %114
  %118 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !484
  store i32 %118, ptr %3, align 4, !dbg !486
  br label %128, !dbg !487

119:                                              ; preds = %114
  %120 = load i32, ptr %4, align 4, !dbg !488
  %121 = icmp eq i32 %120, 524288, !dbg !490
  br i1 %121, label %122, label %127, !dbg !491

122:                                              ; preds = %119
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !492
  %124 = and i32 %123, 2, !dbg !493
  %125 = icmp eq i32 %124, 2, !dbg !494
  br i1 %125, label %126, label %127, !dbg !495

126:                                              ; preds = %122
  store i32 32768, ptr %3, align 4, !dbg !496
  br label %127, !dbg !498

127:                                              ; preds = %126, %122, %119
  br label %128

128:                                              ; preds = %127, %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %104
  br label %169, !dbg !499

131:                                              ; preds = %1
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !500
  %133 = and i32 %132, 16, !dbg !502
  store i32 %133, ptr %4, align 4, !dbg !503
  %134 = load i32, ptr %4, align 4, !dbg !504
  %135 = icmp eq i32 %134, 0, !dbg !506
  br i1 %135, label %136, label %141, !dbg !507

136:                                              ; preds = %131
  %137 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !508
  %138 = and i32 %137, 2, !dbg !509
  %139 = icmp eq i32 %138, 2, !dbg !510
  br i1 %139, label %140, label %141, !dbg !511

140:                                              ; preds = %136
  store i32 8000000, ptr %3, align 4, !dbg !512
  br label %147, !dbg !514

141:                                              ; preds = %136, %131
  %142 = load i32, ptr %4, align 4, !dbg !515
  %143 = icmp eq i32 %142, 16, !dbg !517
  br i1 %143, label %144, label %146, !dbg !518

144:                                              ; preds = %141
  %145 = call i32 @HAL_RCC_GetSysClockFreq(), !dbg !519
  store i32 %145, ptr %3, align 4, !dbg !521
  br label %146, !dbg !522

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %140
  br label %169, !dbg !523

148:                                              ; preds = %1
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !524
  %150 = and i32 %149, 64, !dbg !526
  store i32 %150, ptr %4, align 4, !dbg !527
  %151 = load i32, ptr %4, align 4, !dbg !528
  %152 = icmp eq i32 %151, 0, !dbg !530
  br i1 %152, label %153, label %158, !dbg !531

153:                                              ; preds = %148
  %154 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !532
  %155 = and i32 %154, 2, !dbg !533
  %156 = icmp eq i32 %155, 2, !dbg !534
  br i1 %156, label %157, label %158, !dbg !535

157:                                              ; preds = %153
  store i32 8000000, ptr %3, align 4, !dbg !536
  br label %167, !dbg !538

158:                                              ; preds = %153, %148
  %159 = load i32, ptr %4, align 4, !dbg !539
  %160 = icmp eq i32 %159, 64, !dbg !541
  br i1 %160, label %161, label %166, !dbg !542

161:                                              ; preds = %158
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !543
  %163 = and i32 %162, 2, !dbg !544
  %164 = icmp eq i32 %163, 2, !dbg !545
  br i1 %164, label %165, label %166, !dbg !546

165:                                              ; preds = %161
  store i32 32768, ptr %3, align 4, !dbg !547
  br label %166, !dbg !549

166:                                              ; preds = %165, %161, %158
  br label %167

167:                                              ; preds = %166, %157
  br label %169, !dbg !550

168:                                              ; preds = %1
  br label %169, !dbg !551

169:                                              ; preds = %168, %167, %147, %130, %98, %66, %34
  %170 = load i32, ptr %3, align 4, !dbg !553
  ret i32 %170, !dbg !554
}

declare i32 @HAL_RCC_GetPCLK1Freq() #2

declare i32 @HAL_RCC_GetSysClockFreq() #2

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCCEx_CRSConfig(ptr noundef %0) #0 !dbg !555 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata ptr %3, metadata !570, metadata !DIExpression()), !dbg !571
  store i32 0, ptr %3, align 4, !dbg !571
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !572
  %5 = or i32 %4, 134217728, !dbg !572
  store volatile i32 %5, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !572
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !573
  %7 = and i32 %6, -134217729, !dbg !573
  store volatile i32 %7, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !573
  %8 = load ptr, ptr %2, align 4, !dbg !574
  %9 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %8, i32 0, i32 0, !dbg !575
  %10 = load i32, ptr %9, align 4, !dbg !575
  %11 = load ptr, ptr %2, align 4, !dbg !576
  %12 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %11, i32 0, i32 1, !dbg !577
  %13 = load i32, ptr %12, align 4, !dbg !577
  %14 = or i32 %10, %13, !dbg !578
  %15 = load ptr, ptr %2, align 4, !dbg !579
  %16 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %15, i32 0, i32 2, !dbg !580
  %17 = load i32, ptr %16, align 4, !dbg !580
  %18 = or i32 %14, %17, !dbg !581
  store i32 %18, ptr %3, align 4, !dbg !582
  %19 = load ptr, ptr %2, align 4, !dbg !583
  %20 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %19, i32 0, i32 3, !dbg !584
  %21 = load i32, ptr %20, align 4, !dbg !584
  %22 = load i32, ptr %3, align 4, !dbg !585
  %23 = or i32 %22, %21, !dbg !585
  store i32 %23, ptr %3, align 4, !dbg !585
  %24 = load ptr, ptr %2, align 4, !dbg !586
  %25 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %24, i32 0, i32 4, !dbg !587
  %26 = load i32, ptr %25, align 4, !dbg !587
  %27 = shl i32 %26, 16, !dbg !588
  %28 = load i32, ptr %3, align 4, !dbg !589
  %29 = or i32 %28, %27, !dbg !589
  store i32 %29, ptr %3, align 4, !dbg !589
  %30 = load i32, ptr %3, align 4, !dbg !590
  store volatile i32 %30, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 1), align 4, !dbg !591
  %31 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !592
  %32 = and i32 %31, -16129, !dbg !593
  %33 = load ptr, ptr %2, align 4, !dbg !594
  %34 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %33, i32 0, i32 5, !dbg !595
  %35 = load i32, ptr %34, align 4, !dbg !595
  %36 = shl i32 %35, 8, !dbg !596
  %37 = or i32 %32, %36, !dbg !597
  store volatile i32 %37, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !598
  %38 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !599
  %39 = or i32 %38, 96, !dbg !599
  store volatile i32 %39, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !599
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCCEx_CRSSoftwareSynchronizationGenerate() #0 !dbg !601 {
  %1 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !604
  %2 = or i32 %1, 128, !dbg !604
  store volatile i32 %2, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !604
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCCEx_CRSGetSynchronizationInfo(ptr noundef %0) #0 !dbg !606 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !617, metadata !DIExpression()), !dbg !618
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 1), align 4, !dbg !619
  %4 = and i32 %3, 65535, !dbg !620
  %5 = load ptr, ptr %2, align 4, !dbg !621
  %6 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %5, i32 0, i32 0, !dbg !622
  store i32 %4, ptr %6, align 4, !dbg !623
  %7 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !624
  %8 = and i32 %7, 16128, !dbg !625
  %9 = lshr i32 %8, 8, !dbg !626
  %10 = load ptr, ptr %2, align 4, !dbg !627
  %11 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %10, i32 0, i32 1, !dbg !628
  store i32 %9, ptr %11, align 4, !dbg !629
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !630
  %13 = and i32 %12, -65536, !dbg !631
  %14 = lshr i32 %13, 16, !dbg !632
  %15 = load ptr, ptr %2, align 4, !dbg !633
  %16 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %15, i32 0, i32 2, !dbg !634
  store i32 %14, ptr %16, align 4, !dbg !635
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !636
  %18 = and i32 %17, 32768, !dbg !637
  %19 = load ptr, ptr %2, align 4, !dbg !638
  %20 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %19, i32 0, i32 3, !dbg !639
  store i32 %18, ptr %20, align 4, !dbg !640
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @HAL_RCCEx_CRSWaitSynchronization(i32 noundef %0) #0 !dbg !642 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !643, metadata !DIExpression()), !dbg !644
  call void @llvm.dbg.declare(metadata ptr %3, metadata !645, metadata !DIExpression()), !dbg !646
  store i32 0, ptr %3, align 4, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %4, metadata !647, metadata !DIExpression()), !dbg !648
  store i32 0, ptr %4, align 4, !dbg !648
  %5 = call i32 @HAL_GetTick(), !dbg !649
  store i32 %5, ptr %4, align 4, !dbg !650
  br label %6, !dbg !651

6:                                                ; preds = %73, %1
  %7 = load i32, ptr %2, align 4, !dbg !652
  %8 = icmp ne i32 %7, -1, !dbg !655
  br i1 %8, label %9, label %20, !dbg !656

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4, !dbg !657
  %11 = icmp eq i32 %10, 0, !dbg !660
  br i1 %11, label %18, label %12, !dbg !661

12:                                               ; preds = %9
  %13 = call i32 @HAL_GetTick(), !dbg !662
  %14 = load i32, ptr %4, align 4, !dbg !663
  %15 = sub i32 %13, %14, !dbg !664
  %16 = load i32, ptr %2, align 4, !dbg !665
  %17 = icmp ugt i32 %15, %16, !dbg !666
  br i1 %17, label %18, label %19, !dbg !667

18:                                               ; preds = %12, %9
  store i32 1, ptr %3, align 4, !dbg !668
  br label %19, !dbg !670

19:                                               ; preds = %18, %12
  br label %20, !dbg !671

20:                                               ; preds = %19, %6
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !672
  %22 = and i32 %21, 1, !dbg !674
  %23 = icmp eq i32 %22, 1, !dbg !675
  br i1 %23, label %24, label %29, !dbg !676

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !dbg !677
  %26 = or i32 %25, 2, !dbg !677
  store i32 %26, ptr %3, align 4, !dbg !677
  br label %27, !dbg !679

27:                                               ; preds = %24
  store volatile i32 1, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !680
  br label %28, !dbg !684

28:                                               ; preds = %27
  br label %29, !dbg !685

29:                                               ; preds = %28, %20
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !686
  %31 = and i32 %30, 2, !dbg !688
  %32 = icmp eq i32 %31, 2, !dbg !689
  br i1 %32, label %33, label %38, !dbg !690

33:                                               ; preds = %29
  %34 = load i32, ptr %3, align 4, !dbg !691
  %35 = or i32 %34, 4, !dbg !691
  store i32 %35, ptr %3, align 4, !dbg !691
  br label %36, !dbg !693

36:                                               ; preds = %33
  store volatile i32 2, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !694
  br label %37, !dbg !698

37:                                               ; preds = %36
  br label %38, !dbg !699

38:                                               ; preds = %37, %29
  %39 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !700
  %40 = and i32 %39, 1024, !dbg !702
  %41 = icmp eq i32 %40, 1024, !dbg !703
  br i1 %41, label %42, label %47, !dbg !704

42:                                               ; preds = %38
  %43 = load i32, ptr %3, align 4, !dbg !705
  %44 = or i32 %43, 32, !dbg !705
  store i32 %44, ptr %3, align 4, !dbg !705
  br label %45, !dbg !707

45:                                               ; preds = %42
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !708
  br label %46, !dbg !712

46:                                               ; preds = %45
  br label %47, !dbg !713

47:                                               ; preds = %46, %38
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !714
  %49 = and i32 %48, 256, !dbg !716
  %50 = icmp eq i32 %49, 256, !dbg !717
  br i1 %50, label %51, label %56, !dbg !718

51:                                               ; preds = %47
  %52 = load i32, ptr %3, align 4, !dbg !719
  %53 = or i32 %52, 8, !dbg !719
  store i32 %53, ptr %3, align 4, !dbg !719
  br label %54, !dbg !721

54:                                               ; preds = %51
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !722
  br label %55, !dbg !726

55:                                               ; preds = %54
  br label %56, !dbg !727

56:                                               ; preds = %55, %47
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !728
  %58 = and i32 %57, 512, !dbg !730
  %59 = icmp eq i32 %58, 512, !dbg !731
  br i1 %59, label %60, label %65, !dbg !732

60:                                               ; preds = %56
  %61 = load i32, ptr %3, align 4, !dbg !733
  %62 = or i32 %61, 16, !dbg !733
  store i32 %62, ptr %3, align 4, !dbg !733
  br label %63, !dbg !735

63:                                               ; preds = %60
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !736
  br label %64, !dbg !740

64:                                               ; preds = %63
  br label %65, !dbg !741

65:                                               ; preds = %64, %56
  %66 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !742
  %67 = and i32 %66, 8, !dbg !744
  %68 = icmp eq i32 %67, 8, !dbg !745
  br i1 %68, label %69, label %72, !dbg !746

69:                                               ; preds = %65
  br label %70, !dbg !747

70:                                               ; preds = %69
  store volatile i32 8, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !749
  br label %71, !dbg !753

71:                                               ; preds = %70
  br label %72, !dbg !754

72:                                               ; preds = %71, %65
  br label %73, !dbg !755

73:                                               ; preds = %72
  %74 = load i32, ptr %3, align 4, !dbg !756
  %75 = icmp eq i32 0, %74, !dbg !757
  br i1 %75, label %6, label %76, !dbg !755, !llvm.loop !758

76:                                               ; preds = %73
  %77 = load i32, ptr %3, align 4, !dbg !760
  ret i32 %77, !dbg !761
}

; Function Attrs: noinline nounwind optnone
define hidden void @HAL_RCCEx_CRS_IRQHandler() #0 !dbg !762 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !763, metadata !DIExpression()), !dbg !764
  store i32 0, ptr %1, align 4, !dbg !764
  call void @llvm.dbg.declare(metadata ptr %2, metadata !765, metadata !DIExpression()), !dbg !766
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !767
  store i32 %4, ptr %2, align 4, !dbg !766
  call void @llvm.dbg.declare(metadata ptr %3, metadata !768, metadata !DIExpression()), !dbg !769
  %5 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !770
  store i32 %5, ptr %3, align 4, !dbg !769
  %6 = load i32, ptr %2, align 4, !dbg !771
  %7 = and i32 %6, 1, !dbg !773
  %8 = icmp ne i32 %7, 0, !dbg !774
  br i1 %8, label %9, label %14, !dbg !775

9:                                                ; preds = %0
  %10 = load i32, ptr %3, align 4, !dbg !776
  %11 = and i32 %10, 1, !dbg !777
  %12 = icmp ne i32 %11, 0, !dbg !778
  br i1 %12, label %13, label %14, !dbg !779

13:                                               ; preds = %9
  store volatile i32 1, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !780
  call void @HAL_RCCEx_CRS_SyncOkCallback(), !dbg !782
  br label %66, !dbg !783

14:                                               ; preds = %9, %0
  %15 = load i32, ptr %2, align 4, !dbg !784
  %16 = and i32 %15, 2, !dbg !786
  %17 = icmp ne i32 %16, 0, !dbg !787
  br i1 %17, label %18, label %23, !dbg !788

18:                                               ; preds = %14
  %19 = load i32, ptr %3, align 4, !dbg !789
  %20 = and i32 %19, 2, !dbg !790
  %21 = icmp ne i32 %20, 0, !dbg !791
  br i1 %21, label %22, label %23, !dbg !792

22:                                               ; preds = %18
  store volatile i32 2, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !793
  call void @HAL_RCCEx_CRS_SyncWarnCallback(), !dbg !795
  br label %65, !dbg !796

23:                                               ; preds = %18, %14
  %24 = load i32, ptr %2, align 4, !dbg !797
  %25 = and i32 %24, 8, !dbg !799
  %26 = icmp ne i32 %25, 0, !dbg !800
  br i1 %26, label %27, label %32, !dbg !801

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4, !dbg !802
  %29 = and i32 %28, 8, !dbg !803
  %30 = icmp ne i32 %29, 0, !dbg !804
  br i1 %30, label %31, label %32, !dbg !805

31:                                               ; preds = %27
  store volatile i32 8, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !806
  call void @HAL_RCCEx_CRS_ExpectedSyncCallback(), !dbg !808
  br label %64, !dbg !809

32:                                               ; preds = %27, %23
  %33 = load i32, ptr %2, align 4, !dbg !810
  %34 = and i32 %33, 4, !dbg !813
  %35 = icmp ne i32 %34, 0, !dbg !814
  br i1 %35, label %36, label %63, !dbg !815

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 4, !dbg !816
  %38 = and i32 %37, 4, !dbg !817
  %39 = icmp ne i32 %38, 0, !dbg !818
  br i1 %39, label %40, label %63, !dbg !819

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4, !dbg !820
  %42 = and i32 %41, 256, !dbg !823
  %43 = icmp ne i32 %42, 0, !dbg !824
  br i1 %43, label %44, label %47, !dbg !825

44:                                               ; preds = %40
  %45 = load i32, ptr %1, align 4, !dbg !826
  %46 = or i32 %45, 8, !dbg !826
  store i32 %46, ptr %1, align 4, !dbg !826
  br label %47, !dbg !828

47:                                               ; preds = %44, %40
  %48 = load i32, ptr %2, align 4, !dbg !829
  %49 = and i32 %48, 512, !dbg !831
  %50 = icmp ne i32 %49, 0, !dbg !832
  br i1 %50, label %51, label %54, !dbg !833

51:                                               ; preds = %47
  %52 = load i32, ptr %1, align 4, !dbg !834
  %53 = or i32 %52, 16, !dbg !834
  store i32 %53, ptr %1, align 4, !dbg !834
  br label %54, !dbg !836

54:                                               ; preds = %51, %47
  %55 = load i32, ptr %2, align 4, !dbg !837
  %56 = and i32 %55, 1024, !dbg !839
  %57 = icmp ne i32 %56, 0, !dbg !840
  br i1 %57, label %58, label %61, !dbg !841

58:                                               ; preds = %54
  %59 = load i32, ptr %1, align 4, !dbg !842
  %60 = or i32 %59, 32, !dbg !842
  store i32 %60, ptr %1, align 4, !dbg !842
  br label %61, !dbg !844

61:                                               ; preds = %58, %54
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !845
  %62 = load i32, ptr %1, align 4, !dbg !846
  call void @HAL_RCCEx_CRS_ErrorCallback(i32 noundef %62), !dbg !847
  br label %63, !dbg !848

63:                                               ; preds = %61, %36, %32
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %13
  ret void, !dbg !849
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_RCCEx_CRS_SyncOkCallback() #0 !dbg !850 {
  ret void, !dbg !851
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_RCCEx_CRS_SyncWarnCallback() #0 !dbg !852 {
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_RCCEx_CRS_ExpectedSyncCallback() #0 !dbg !854 {
  ret void, !dbg !855
}

; Function Attrs: noinline nounwind optnone
define weak hidden void @HAL_RCCEx_CRS_ErrorCallback(i32 noundef %0) #0 !dbg !856 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !859, metadata !DIExpression()), !dbg !860
  %3 = load i32, ptr %2, align 4, !dbg !861
  ret void, !dbg !862
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "stm32f0xx_hal_rcc_ex.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !11}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 38, baseType: !5, size: 8, elements: !6)
!4 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_def.h", directory: "/home/sri/zephyrproject")
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "HAL_OK", value: 0)
!8 = !DIEnumerator(name: "HAL_ERROR", value: 1)
!9 = !DIEnumerator(name: "HAL_BUSY", value: 2)
!10 = !DIEnumerator(name: "HAL_TIMEOUT", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 167, baseType: !5, size: 8, elements: !13)
!12 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f0xx.h", directory: "/home/sri/zephyrproject")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "RESET", value: 0)
!15 = !DIEnumerator(name: "SET", value: 1)
!16 = !{!17, !40, !46, !24, !47}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_TypeDef", file: !19, line: 461, baseType: !20)
!19 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 445, size: 448, elements: !21)
!21 = !{!22, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !20, file: !19, line: 447, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !25, line: 64, baseType: !26)
!25 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!26 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !20, file: !19, line: 448, baseType: !23, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "CIR", scope: !20, file: !19, line: 449, baseType: !23, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "APB2RSTR", scope: !20, file: !19, line: 450, baseType: !23, size: 32, offset: 96)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "APB1RSTR", scope: !20, file: !19, line: 451, baseType: !23, size: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "AHBENR", scope: !20, file: !19, line: 452, baseType: !23, size: 32, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "APB2ENR", scope: !20, file: !19, line: 453, baseType: !23, size: 32, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "APB1ENR", scope: !20, file: !19, line: 454, baseType: !23, size: 32, offset: 224)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "BDCR", scope: !20, file: !19, line: 455, baseType: !23, size: 32, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !20, file: !19, line: 456, baseType: !23, size: 32, offset: 288)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "AHBRSTR", scope: !20, file: !19, line: 457, baseType: !23, size: 32, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR2", scope: !20, file: !19, line: 458, baseType: !23, size: 32, offset: 352)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR3", scope: !20, file: !19, line: 459, baseType: !23, size: 32, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "CR2", scope: !20, file: !19, line: 460, baseType: !23, size: 32, offset: 416)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "PWR_TypeDef", file: !19, line: 439, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 435, size: 64, elements: !43)
!43 = !{!44, !45}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !42, file: !19, line: 437, baseType: !23, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "CSR", scope: !42, file: !19, line: 438, baseType: !23, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !25, line: 62, baseType: !5)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "CRS_TypeDef", file: !19, line: 266, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 260, size: 128, elements: !50)
!50 = !{!51, !52, !53, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "CR", scope: !49, file: !19, line: 262, baseType: !23, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "CFGR", scope: !49, file: !19, line: 263, baseType: !23, size: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ISR", scope: !49, file: !19, line: 264, baseType: !23, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ICR", scope: !49, file: !19, line: 265, baseType: !23, size: 32, offset: 96)
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 1, !"static_rwdata", i32 1}
!59 = !{i32 1, !"enumsize_buildattr", i32 1}
!60 = !{i32 1, !"armlib_unavailable", i32 0}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"PIE Level", i32 2}
!63 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!64 = distinct !DISubprogram(name: "HAL_RCCEx_PeriphCLKConfig", scope: !65, file: !65, line: 102, type: !66, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!65 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc_ex.c", directory: "/home/sri/zephyrproject")
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !69}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !4, line: 44, baseType: !3)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PeriphCLKInitTypeDef", file: !71, line: 546, baseType: !72)
!71 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc_ex.h", directory: "/home/sri/zephyrproject")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 523, size: 224, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !80}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "PeriphClockSelection", scope: !72, file: !71, line: 525, baseType: !24, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "RTCClockSelection", scope: !72, file: !71, line: 528, baseType: !24, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Usart1ClockSelection", scope: !72, file: !71, line: 531, baseType: !24, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "Usart2ClockSelection", scope: !72, file: !71, line: 534, baseType: !24, size: 32, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "Usart3ClockSelection", scope: !72, file: !71, line: 537, baseType: !24, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "I2c1ClockSelection", scope: !72, file: !71, line: 540, baseType: !24, size: 32, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "CecClockSelection", scope: !72, file: !71, line: 543, baseType: !24, size: 32, offset: 192)
!81 = !{}
!82 = !DILocalVariable(name: "PeriphClkInit", arg: 1, scope: !64, file: !65, line: 102, type: !69)
!83 = !DILocation(line: 102, column: 71, scope: !64)
!84 = !DILocalVariable(name: "tickstart", scope: !64, file: !65, line: 104, type: !24)
!85 = !DILocation(line: 104, column: 12, scope: !64)
!86 = !DILocalVariable(name: "temp_reg", scope: !64, file: !65, line: 105, type: !24)
!87 = !DILocation(line: 105, column: 12, scope: !64)
!88 = !DILocation(line: 111, column: 8, scope: !89)
!89 = distinct !DILexicalBlock(scope: !64, file: !65, line: 111, column: 6)
!90 = !DILocation(line: 111, column: 23, scope: !89)
!91 = !DILocation(line: 111, column: 45, scope: !89)
!92 = !DILocation(line: 111, column: 62, scope: !89)
!93 = !DILocation(line: 111, column: 6, scope: !64)
!94 = !DILocalVariable(name: "pwrclkchanged", scope: !95, file: !65, line: 116, type: !96)
!95 = distinct !DILexicalBlock(scope: !89, file: !65, line: 112, column: 3)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !12, line: 171, baseType: !11)
!97 = !DILocation(line: 116, column: 16, scope: !95)
!98 = !DILocation(line: 121, column: 76, scope: !99)
!99 = distinct !DILexicalBlock(scope: !95, file: !65, line: 121, column: 8)
!100 = !DILocation(line: 121, column: 84, scope: !99)
!101 = !DILocation(line: 121, column: 106, scope: !99)
!102 = !DILocation(line: 121, column: 8, scope: !95)
!103 = !DILocation(line: 123, column: 5, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !65, line: 122, column: 5)
!105 = !DILocalVariable(name: "tmpreg", scope: !106, file: !65, line: 123, type: !23)
!106 = distinct !DILexicalBlock(scope: !104, file: !65, line: 123, column: 8)
!107 = !DILocation(line: 123, column: 28, scope: !106)
!108 = !DILocation(line: 123, column: 113, scope: !106)
!109 = !DILocation(line: 123, column: 214, scope: !106)
!110 = !DILocation(line: 123, column: 223, scope: !106)
!111 = !DILocation(line: 123, column: 144, scope: !106)
!112 = !DILocation(line: 123, column: 252, scope: !106)
!113 = !DILocation(line: 123, column: 260, scope: !106)
!114 = !DILocation(line: 124, column: 21, scope: !104)
!115 = !DILocation(line: 125, column: 5, scope: !104)
!116 = !DILocation(line: 127, column: 60, scope: !117)
!117 = distinct !DILexicalBlock(scope: !95, file: !65, line: 127, column: 8)
!118 = !DILocation(line: 127, column: 64, scope: !117)
!119 = !DILocation(line: 127, column: 85, scope: !117)
!120 = !DILocation(line: 127, column: 8, scope: !95)
!121 = !DILocation(line: 130, column: 62, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !65, line: 128, column: 5)
!123 = !DILocation(line: 133, column: 19, scope: !122)
!124 = !DILocation(line: 133, column: 17, scope: !122)
!125 = !DILocation(line: 135, column: 7, scope: !122)
!126 = !DILocation(line: 135, column: 65, scope: !122)
!127 = !DILocation(line: 135, column: 69, scope: !122)
!128 = !DILocation(line: 135, column: 90, scope: !122)
!129 = !DILocation(line: 137, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !65, line: 137, column: 12)
!131 = distinct !DILexicalBlock(scope: !122, file: !65, line: 136, column: 7)
!132 = !DILocation(line: 137, column: 29, scope: !130)
!133 = !DILocation(line: 137, column: 27, scope: !130)
!134 = !DILocation(line: 137, column: 40, scope: !130)
!135 = !DILocation(line: 137, column: 12, scope: !131)
!136 = !DILocation(line: 139, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !130, file: !65, line: 138, column: 9)
!138 = distinct !{!138, !125, !139}
!139 = !DILocation(line: 141, column: 7, scope: !122)
!140 = !DILocation(line: 142, column: 5, scope: !122)
!141 = !DILocation(line: 145, column: 83, scope: !95)
!142 = !DILocation(line: 145, column: 88, scope: !95)
!143 = !DILocation(line: 145, column: 14, scope: !95)
!144 = !DILocation(line: 146, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !95, file: !65, line: 146, column: 8)
!146 = !DILocation(line: 146, column: 18, scope: !145)
!147 = !DILocation(line: 146, column: 34, scope: !145)
!148 = !DILocation(line: 146, column: 38, scope: !145)
!149 = !DILocation(line: 146, column: 51, scope: !145)
!150 = !DILocation(line: 146, column: 66, scope: !145)
!151 = !DILocation(line: 146, column: 84, scope: !145)
!152 = !DILocation(line: 146, column: 47, scope: !145)
!153 = !DILocation(line: 146, column: 8, scope: !95)
!154 = !DILocation(line: 149, column: 85, scope: !155)
!155 = distinct !DILexicalBlock(scope: !145, file: !65, line: 147, column: 5)
!156 = !DILocation(line: 149, column: 90, scope: !155)
!157 = !DILocation(line: 149, column: 16, scope: !155)
!158 = !DILocation(line: 151, column: 81, scope: !155)
!159 = !DILocation(line: 152, column: 81, scope: !155)
!160 = !DILocation(line: 154, column: 80, scope: !155)
!161 = !DILocation(line: 154, column: 78, scope: !155)
!162 = !DILocation(line: 157, column: 14, scope: !163)
!163 = distinct !DILexicalBlock(scope: !155, file: !65, line: 157, column: 11)
!164 = !DILocation(line: 157, column: 24, scope: !163)
!165 = !DILocation(line: 157, column: 45, scope: !163)
!166 = !DILocation(line: 157, column: 11, scope: !155)
!167 = !DILocation(line: 160, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !163, file: !65, line: 158, column: 7)
!169 = !DILocation(line: 160, column: 19, scope: !168)
!170 = !DILocation(line: 163, column: 9, scope: !168)
!171 = !DILocation(line: 163, column: 434, scope: !168)
!172 = !DILocation(line: 163, column: 512, scope: !168)
!173 = !DILocation(line: 163, column: 585, scope: !168)
!174 = !DILocation(line: 165, column: 15, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !65, line: 165, column: 14)
!176 = distinct !DILexicalBlock(scope: !168, file: !65, line: 164, column: 9)
!177 = !DILocation(line: 165, column: 31, scope: !175)
!178 = !DILocation(line: 165, column: 29, scope: !175)
!179 = !DILocation(line: 165, column: 42, scope: !175)
!180 = !DILocation(line: 165, column: 14, scope: !176)
!181 = !DILocation(line: 167, column: 13, scope: !182)
!182 = distinct !DILexicalBlock(scope: !175, file: !65, line: 166, column: 11)
!183 = distinct !{!183, !170, !184}
!184 = !DILocation(line: 169, column: 9, scope: !168)
!185 = !DILocation(line: 170, column: 7, scope: !168)
!186 = !DILocation(line: 171, column: 5, scope: !155)
!187 = !DILocation(line: 172, column: 155, scope: !95)
!188 = !DILocation(line: 172, column: 163, scope: !95)
!189 = !DILocation(line: 172, column: 191, scope: !95)
!190 = !DILocation(line: 172, column: 206, scope: !95)
!191 = !DILocation(line: 172, column: 187, scope: !95)
!192 = !DILocation(line: 172, column: 81, scope: !95)
!193 = !DILocation(line: 175, column: 8, scope: !194)
!194 = distinct !DILexicalBlock(scope: !95, file: !65, line: 175, column: 8)
!195 = !DILocation(line: 175, column: 22, scope: !194)
!196 = !DILocation(line: 175, column: 8, scope: !95)
!197 = !DILocation(line: 177, column: 82, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !65, line: 176, column: 5)
!199 = !DILocation(line: 178, column: 5, scope: !198)
!200 = !DILocation(line: 179, column: 3, scope: !95)
!201 = !DILocation(line: 182, column: 8, scope: !202)
!202 = distinct !DILexicalBlock(scope: !64, file: !65, line: 182, column: 6)
!203 = !DILocation(line: 182, column: 23, scope: !202)
!204 = !DILocation(line: 182, column: 45, scope: !202)
!205 = !DILocation(line: 182, column: 62, scope: !202)
!206 = !DILocation(line: 182, column: 6, scope: !64)
!207 = !DILocation(line: 188, column: 156, scope: !208)
!208 = distinct !DILexicalBlock(scope: !202, file: !65, line: 183, column: 3)
!209 = !DILocation(line: 188, column: 165, scope: !208)
!210 = !DILocation(line: 188, column: 203, scope: !208)
!211 = !DILocation(line: 188, column: 218, scope: !208)
!212 = !DILocation(line: 188, column: 189, scope: !208)
!213 = !DILocation(line: 188, column: 82, scope: !208)
!214 = !DILocation(line: 189, column: 3, scope: !208)
!215 = !DILocation(line: 194, column: 8, scope: !216)
!216 = distinct !DILexicalBlock(scope: !64, file: !65, line: 194, column: 6)
!217 = !DILocation(line: 194, column: 23, scope: !216)
!218 = !DILocation(line: 194, column: 45, scope: !216)
!219 = !DILocation(line: 194, column: 62, scope: !216)
!220 = !DILocation(line: 194, column: 6, scope: !64)
!221 = !DILocation(line: 200, column: 156, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !65, line: 195, column: 3)
!223 = !DILocation(line: 200, column: 165, scope: !222)
!224 = !DILocation(line: 200, column: 204, scope: !222)
!225 = !DILocation(line: 200, column: 219, scope: !222)
!226 = !DILocation(line: 200, column: 190, scope: !222)
!227 = !DILocation(line: 200, column: 82, scope: !222)
!228 = !DILocation(line: 201, column: 3, scope: !222)
!229 = !DILocation(line: 207, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !64, file: !65, line: 207, column: 6)
!231 = !DILocation(line: 207, column: 23, scope: !230)
!232 = !DILocation(line: 207, column: 45, scope: !230)
!233 = !DILocation(line: 207, column: 62, scope: !230)
!234 = !DILocation(line: 207, column: 6, scope: !64)
!235 = !DILocation(line: 213, column: 156, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !65, line: 208, column: 3)
!237 = !DILocation(line: 213, column: 165, scope: !236)
!238 = !DILocation(line: 213, column: 204, scope: !236)
!239 = !DILocation(line: 213, column: 219, scope: !236)
!240 = !DILocation(line: 213, column: 190, scope: !236)
!241 = !DILocation(line: 213, column: 82, scope: !236)
!242 = !DILocation(line: 214, column: 3, scope: !236)
!243 = !DILocation(line: 218, column: 8, scope: !244)
!244 = distinct !DILexicalBlock(scope: !64, file: !65, line: 218, column: 6)
!245 = !DILocation(line: 218, column: 23, scope: !244)
!246 = !DILocation(line: 218, column: 45, scope: !244)
!247 = !DILocation(line: 218, column: 62, scope: !244)
!248 = !DILocation(line: 218, column: 6, scope: !64)
!249 = !DILocation(line: 224, column: 156, scope: !250)
!250 = distinct !DILexicalBlock(scope: !244, file: !65, line: 219, column: 3)
!251 = !DILocation(line: 224, column: 165, scope: !250)
!252 = !DILocation(line: 224, column: 203, scope: !250)
!253 = !DILocation(line: 224, column: 218, scope: !250)
!254 = !DILocation(line: 224, column: 189, scope: !250)
!255 = !DILocation(line: 224, column: 82, scope: !250)
!256 = !DILocation(line: 225, column: 3, scope: !250)
!257 = !DILocation(line: 244, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !64, file: !65, line: 244, column: 6)
!259 = !DILocation(line: 244, column: 23, scope: !258)
!260 = !DILocation(line: 244, column: 45, scope: !258)
!261 = !DILocation(line: 244, column: 62, scope: !258)
!262 = !DILocation(line: 244, column: 6, scope: !64)
!263 = !DILocation(line: 250, column: 156, scope: !264)
!264 = distinct !DILexicalBlock(scope: !258, file: !65, line: 245, column: 3)
!265 = !DILocation(line: 250, column: 165, scope: !264)
!266 = !DILocation(line: 250, column: 203, scope: !264)
!267 = !DILocation(line: 250, column: 218, scope: !264)
!268 = !DILocation(line: 250, column: 189, scope: !264)
!269 = !DILocation(line: 250, column: 82, scope: !264)
!270 = !DILocation(line: 251, column: 3, scope: !264)
!271 = !DILocation(line: 257, column: 3, scope: !64)
!272 = !DILocation(line: 258, column: 1, scope: !64)
!273 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKConfig", scope: !65, file: !65, line: 268, type: !274, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !69}
!276 = !DILocalVariable(name: "PeriphClkInit", arg: 1, scope: !273, file: !65, line: 268, type: !69)
!277 = !DILocation(line: 268, column: 61, scope: !273)
!278 = !DILocation(line: 272, column: 3, scope: !273)
!279 = !DILocation(line: 272, column: 18, scope: !273)
!280 = !DILocation(line: 272, column: 39, scope: !273)
!281 = !DILocation(line: 274, column: 107, scope: !273)
!282 = !DILocation(line: 274, column: 113, scope: !273)
!283 = !DILocation(line: 274, column: 3, scope: !273)
!284 = !DILocation(line: 274, column: 18, scope: !273)
!285 = !DILocation(line: 274, column: 36, scope: !273)
!286 = !DILocation(line: 276, column: 121, scope: !273)
!287 = !DILocation(line: 276, column: 128, scope: !273)
!288 = !DILocation(line: 276, column: 3, scope: !273)
!289 = !DILocation(line: 276, column: 18, scope: !273)
!290 = !DILocation(line: 276, column: 39, scope: !273)
!291 = !DILocation(line: 278, column: 119, scope: !273)
!292 = !DILocation(line: 278, column: 126, scope: !273)
!293 = !DILocation(line: 278, column: 3, scope: !273)
!294 = !DILocation(line: 278, column: 18, scope: !273)
!295 = !DILocation(line: 278, column: 37, scope: !273)
!296 = !DILocation(line: 282, column: 3, scope: !273)
!297 = !DILocation(line: 282, column: 18, scope: !273)
!298 = !DILocation(line: 282, column: 39, scope: !273)
!299 = !DILocation(line: 284, column: 121, scope: !273)
!300 = !DILocation(line: 284, column: 128, scope: !273)
!301 = !DILocation(line: 284, column: 3, scope: !273)
!302 = !DILocation(line: 284, column: 18, scope: !273)
!303 = !DILocation(line: 284, column: 39, scope: !273)
!304 = !DILocation(line: 289, column: 3, scope: !273)
!305 = !DILocation(line: 289, column: 18, scope: !273)
!306 = !DILocation(line: 289, column: 39, scope: !273)
!307 = !DILocation(line: 291, column: 121, scope: !273)
!308 = !DILocation(line: 291, column: 128, scope: !273)
!309 = !DILocation(line: 291, column: 3, scope: !273)
!310 = !DILocation(line: 291, column: 18, scope: !273)
!311 = !DILocation(line: 291, column: 39, scope: !273)
!312 = !DILocation(line: 304, column: 3, scope: !273)
!313 = !DILocation(line: 304, column: 18, scope: !273)
!314 = !DILocation(line: 304, column: 39, scope: !273)
!315 = !DILocation(line: 306, column: 118, scope: !273)
!316 = !DILocation(line: 306, column: 125, scope: !273)
!317 = !DILocation(line: 306, column: 3, scope: !273)
!318 = !DILocation(line: 306, column: 18, scope: !273)
!319 = !DILocation(line: 306, column: 36, scope: !273)
!320 = !DILocation(line: 312, column: 1, scope: !273)
!321 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKFreq", scope: !65, file: !65, line: 368, type: !322, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!322 = !DISubroutineType(types: !323)
!323 = !{!24, !24}
!324 = !DILocalVariable(name: "PeriphClk", arg: 1, scope: !321, file: !65, line: 368, type: !24)
!325 = !DILocation(line: 368, column: 46, scope: !321)
!326 = !DILocalVariable(name: "frequency", scope: !321, file: !65, line: 371, type: !24)
!327 = !DILocation(line: 371, column: 12, scope: !321)
!328 = !DILocalVariable(name: "srcclk", scope: !321, file: !65, line: 373, type: !24)
!329 = !DILocation(line: 373, column: 12, scope: !321)
!330 = !DILocation(line: 381, column: 11, scope: !321)
!331 = !DILocation(line: 381, column: 3, scope: !321)
!332 = !DILocation(line: 386, column: 85, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !65, line: 384, column: 5)
!334 = distinct !DILexicalBlock(scope: !321, file: !65, line: 382, column: 3)
!335 = !DILocation(line: 386, column: 91, scope: !333)
!336 = !DILocation(line: 386, column: 14, scope: !333)
!337 = !DILocation(line: 389, column: 12, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !65, line: 389, column: 11)
!339 = !DILocation(line: 389, column: 19, scope: !338)
!340 = !DILocation(line: 389, column: 37, scope: !338)
!341 = !DILocation(line: 389, column: 110, scope: !338)
!342 = !DILocation(line: 389, column: 116, scope: !338)
!343 = !DILocation(line: 389, column: 137, scope: !338)
!344 = !DILocation(line: 389, column: 11, scope: !333)
!345 = !DILocation(line: 391, column: 19, scope: !346)
!346 = distinct !DILexicalBlock(scope: !338, file: !65, line: 390, column: 7)
!347 = !DILocation(line: 392, column: 7, scope: !346)
!348 = !DILocation(line: 394, column: 17, scope: !349)
!349 = distinct !DILexicalBlock(scope: !338, file: !65, line: 394, column: 16)
!350 = !DILocation(line: 394, column: 24, scope: !349)
!351 = !DILocation(line: 394, column: 42, scope: !349)
!352 = !DILocation(line: 394, column: 115, scope: !349)
!353 = !DILocation(line: 394, column: 120, scope: !349)
!354 = !DILocation(line: 394, column: 141, scope: !349)
!355 = !DILocation(line: 394, column: 16, scope: !338)
!356 = !DILocation(line: 396, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !65, line: 395, column: 7)
!358 = !DILocation(line: 397, column: 7, scope: !357)
!359 = !DILocation(line: 399, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !349, file: !65, line: 399, column: 16)
!361 = !DILocation(line: 399, column: 24, scope: !360)
!362 = !DILocation(line: 399, column: 42, scope: !360)
!363 = !DILocation(line: 399, column: 115, scope: !360)
!364 = !DILocation(line: 399, column: 119, scope: !360)
!365 = !DILocation(line: 399, column: 141, scope: !360)
!366 = !DILocation(line: 399, column: 16, scope: !349)
!367 = !DILocation(line: 401, column: 19, scope: !368)
!368 = distinct !DILexicalBlock(scope: !360, file: !65, line: 400, column: 7)
!369 = !DILocation(line: 402, column: 7, scope: !368)
!370 = !DILocation(line: 403, column: 7, scope: !333)
!371 = !DILocation(line: 408, column: 96, scope: !372)
!372 = distinct !DILexicalBlock(scope: !334, file: !65, line: 406, column: 5)
!373 = !DILocation(line: 408, column: 103, scope: !372)
!374 = !DILocation(line: 408, column: 14, scope: !372)
!375 = !DILocation(line: 411, column: 11, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !65, line: 411, column: 11)
!377 = !DILocation(line: 411, column: 18, scope: !376)
!378 = !DILocation(line: 411, column: 11, scope: !372)
!379 = !DILocation(line: 413, column: 21, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !65, line: 412, column: 7)
!381 = !DILocation(line: 413, column: 19, scope: !380)
!382 = !DILocation(line: 414, column: 7, scope: !380)
!383 = !DILocation(line: 416, column: 17, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !65, line: 416, column: 16)
!385 = !DILocation(line: 416, column: 24, scope: !384)
!386 = !DILocation(line: 416, column: 42, scope: !384)
!387 = !DILocation(line: 416, column: 115, scope: !384)
!388 = !DILocation(line: 416, column: 119, scope: !384)
!389 = !DILocation(line: 416, column: 140, scope: !384)
!390 = !DILocation(line: 416, column: 16, scope: !376)
!391 = !DILocation(line: 418, column: 19, scope: !392)
!392 = distinct !DILexicalBlock(scope: !384, file: !65, line: 417, column: 7)
!393 = !DILocation(line: 419, column: 7, scope: !392)
!394 = !DILocation(line: 421, column: 16, scope: !395)
!395 = distinct !DILexicalBlock(scope: !384, file: !65, line: 421, column: 16)
!396 = !DILocation(line: 421, column: 23, scope: !395)
!397 = !DILocation(line: 421, column: 16, scope: !384)
!398 = !DILocation(line: 423, column: 21, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !65, line: 422, column: 7)
!400 = !DILocation(line: 423, column: 19, scope: !399)
!401 = !DILocation(line: 424, column: 7, scope: !399)
!402 = !DILocation(line: 426, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !65, line: 426, column: 16)
!404 = !DILocation(line: 426, column: 24, scope: !403)
!405 = !DILocation(line: 426, column: 42, scope: !403)
!406 = !DILocation(line: 426, column: 115, scope: !403)
!407 = !DILocation(line: 426, column: 121, scope: !403)
!408 = !DILocation(line: 426, column: 142, scope: !403)
!409 = !DILocation(line: 426, column: 16, scope: !395)
!410 = !DILocation(line: 428, column: 19, scope: !411)
!411 = distinct !DILexicalBlock(scope: !403, file: !65, line: 427, column: 7)
!412 = !DILocation(line: 429, column: 7, scope: !411)
!413 = !DILocation(line: 430, column: 7, scope: !372)
!414 = !DILocation(line: 436, column: 96, scope: !415)
!415 = distinct !DILexicalBlock(scope: !334, file: !65, line: 434, column: 5)
!416 = !DILocation(line: 436, column: 103, scope: !415)
!417 = !DILocation(line: 436, column: 14, scope: !415)
!418 = !DILocation(line: 439, column: 11, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !65, line: 439, column: 11)
!420 = !DILocation(line: 439, column: 18, scope: !419)
!421 = !DILocation(line: 439, column: 11, scope: !415)
!422 = !DILocation(line: 441, column: 21, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !65, line: 440, column: 7)
!424 = !DILocation(line: 441, column: 19, scope: !423)
!425 = !DILocation(line: 442, column: 7, scope: !423)
!426 = !DILocation(line: 444, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !419, file: !65, line: 444, column: 16)
!428 = !DILocation(line: 444, column: 24, scope: !427)
!429 = !DILocation(line: 444, column: 42, scope: !427)
!430 = !DILocation(line: 444, column: 115, scope: !427)
!431 = !DILocation(line: 444, column: 119, scope: !427)
!432 = !DILocation(line: 444, column: 140, scope: !427)
!433 = !DILocation(line: 444, column: 16, scope: !419)
!434 = !DILocation(line: 446, column: 19, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !65, line: 445, column: 7)
!436 = !DILocation(line: 447, column: 7, scope: !435)
!437 = !DILocation(line: 449, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !427, file: !65, line: 449, column: 16)
!439 = !DILocation(line: 449, column: 23, scope: !438)
!440 = !DILocation(line: 449, column: 16, scope: !427)
!441 = !DILocation(line: 451, column: 21, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !65, line: 450, column: 7)
!443 = !DILocation(line: 451, column: 19, scope: !442)
!444 = !DILocation(line: 452, column: 7, scope: !442)
!445 = !DILocation(line: 454, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !65, line: 454, column: 16)
!447 = !DILocation(line: 454, column: 24, scope: !446)
!448 = !DILocation(line: 454, column: 42, scope: !446)
!449 = !DILocation(line: 454, column: 115, scope: !446)
!450 = !DILocation(line: 454, column: 121, scope: !446)
!451 = !DILocation(line: 454, column: 142, scope: !446)
!452 = !DILocation(line: 454, column: 16, scope: !438)
!453 = !DILocation(line: 456, column: 19, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !65, line: 455, column: 7)
!455 = !DILocation(line: 457, column: 7, scope: !454)
!456 = !DILocation(line: 458, column: 7, scope: !415)
!457 = !DILocation(line: 465, column: 96, scope: !458)
!458 = distinct !DILexicalBlock(scope: !334, file: !65, line: 463, column: 5)
!459 = !DILocation(line: 465, column: 103, scope: !458)
!460 = !DILocation(line: 465, column: 14, scope: !458)
!461 = !DILocation(line: 468, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !65, line: 468, column: 11)
!463 = !DILocation(line: 468, column: 18, scope: !462)
!464 = !DILocation(line: 468, column: 11, scope: !458)
!465 = !DILocation(line: 470, column: 21, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !65, line: 469, column: 7)
!467 = !DILocation(line: 470, column: 19, scope: !466)
!468 = !DILocation(line: 471, column: 7, scope: !466)
!469 = !DILocation(line: 473, column: 17, scope: !470)
!470 = distinct !DILexicalBlock(scope: !462, file: !65, line: 473, column: 16)
!471 = !DILocation(line: 473, column: 24, scope: !470)
!472 = !DILocation(line: 473, column: 42, scope: !470)
!473 = !DILocation(line: 473, column: 115, scope: !470)
!474 = !DILocation(line: 473, column: 119, scope: !470)
!475 = !DILocation(line: 473, column: 140, scope: !470)
!476 = !DILocation(line: 473, column: 16, scope: !462)
!477 = !DILocation(line: 475, column: 19, scope: !478)
!478 = distinct !DILexicalBlock(scope: !470, file: !65, line: 474, column: 7)
!479 = !DILocation(line: 476, column: 7, scope: !478)
!480 = !DILocation(line: 478, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !470, file: !65, line: 478, column: 16)
!482 = !DILocation(line: 478, column: 23, scope: !481)
!483 = !DILocation(line: 478, column: 16, scope: !470)
!484 = !DILocation(line: 480, column: 21, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !65, line: 479, column: 7)
!486 = !DILocation(line: 480, column: 19, scope: !485)
!487 = !DILocation(line: 481, column: 7, scope: !485)
!488 = !DILocation(line: 483, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !65, line: 483, column: 16)
!490 = !DILocation(line: 483, column: 24, scope: !489)
!491 = !DILocation(line: 483, column: 42, scope: !489)
!492 = !DILocation(line: 483, column: 115, scope: !489)
!493 = !DILocation(line: 483, column: 121, scope: !489)
!494 = !DILocation(line: 483, column: 142, scope: !489)
!495 = !DILocation(line: 483, column: 16, scope: !481)
!496 = !DILocation(line: 485, column: 19, scope: !497)
!497 = distinct !DILexicalBlock(scope: !489, file: !65, line: 484, column: 7)
!498 = !DILocation(line: 486, column: 7, scope: !497)
!499 = !DILocation(line: 487, column: 7, scope: !458)
!500 = !DILocation(line: 493, column: 96, scope: !501)
!501 = distinct !DILexicalBlock(scope: !334, file: !65, line: 491, column: 5)
!502 = !DILocation(line: 493, column: 103, scope: !501)
!503 = !DILocation(line: 493, column: 14, scope: !501)
!504 = !DILocation(line: 496, column: 12, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !65, line: 496, column: 11)
!506 = !DILocation(line: 496, column: 19, scope: !505)
!507 = !DILocation(line: 496, column: 37, scope: !505)
!508 = !DILocation(line: 496, column: 110, scope: !505)
!509 = !DILocation(line: 496, column: 114, scope: !505)
!510 = !DILocation(line: 496, column: 135, scope: !505)
!511 = !DILocation(line: 496, column: 11, scope: !501)
!512 = !DILocation(line: 498, column: 19, scope: !513)
!513 = distinct !DILexicalBlock(scope: !505, file: !65, line: 497, column: 7)
!514 = !DILocation(line: 499, column: 7, scope: !513)
!515 = !DILocation(line: 501, column: 16, scope: !516)
!516 = distinct !DILexicalBlock(scope: !505, file: !65, line: 501, column: 16)
!517 = !DILocation(line: 501, column: 23, scope: !516)
!518 = !DILocation(line: 501, column: 16, scope: !505)
!519 = !DILocation(line: 503, column: 21, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !65, line: 502, column: 7)
!521 = !DILocation(line: 503, column: 19, scope: !520)
!522 = !DILocation(line: 504, column: 7, scope: !520)
!523 = !DILocation(line: 505, column: 7, scope: !501)
!524 = !DILocation(line: 559, column: 96, scope: !525)
!525 = distinct !DILexicalBlock(scope: !334, file: !65, line: 557, column: 5)
!526 = !DILocation(line: 559, column: 103, scope: !525)
!527 = !DILocation(line: 559, column: 14, scope: !525)
!528 = !DILocation(line: 562, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !65, line: 562, column: 11)
!530 = !DILocation(line: 562, column: 19, scope: !529)
!531 = !DILocation(line: 562, column: 37, scope: !529)
!532 = !DILocation(line: 562, column: 110, scope: !529)
!533 = !DILocation(line: 562, column: 114, scope: !529)
!534 = !DILocation(line: 562, column: 135, scope: !529)
!535 = !DILocation(line: 562, column: 11, scope: !525)
!536 = !DILocation(line: 564, column: 19, scope: !537)
!537 = distinct !DILexicalBlock(scope: !529, file: !65, line: 563, column: 7)
!538 = !DILocation(line: 565, column: 7, scope: !537)
!539 = !DILocation(line: 567, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !529, file: !65, line: 567, column: 16)
!541 = !DILocation(line: 567, column: 24, scope: !540)
!542 = !DILocation(line: 567, column: 44, scope: !540)
!543 = !DILocation(line: 567, column: 117, scope: !540)
!544 = !DILocation(line: 567, column: 123, scope: !540)
!545 = !DILocation(line: 567, column: 144, scope: !540)
!546 = !DILocation(line: 567, column: 16, scope: !529)
!547 = !DILocation(line: 569, column: 19, scope: !548)
!548 = distinct !DILexicalBlock(scope: !540, file: !65, line: 568, column: 7)
!549 = !DILocation(line: 570, column: 7, scope: !548)
!550 = !DILocation(line: 571, column: 7, scope: !525)
!551 = !DILocation(line: 576, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !334, file: !65, line: 575, column: 5)
!553 = !DILocation(line: 579, column: 10, scope: !321)
!554 = !DILocation(line: 579, column: 3, scope: !321)
!555 = distinct !DISubprogram(name: "HAL_RCCEx_CRSConfig", scope: !65, file: !65, line: 657, type: !556, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_CRSInitTypeDef", file: !71, line: 575, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 554, size: 192, elements: !561)
!561 = !{!562, !563, !564, !565, !566, !567}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "Prescaler", scope: !560, file: !71, line: 556, baseType: !24, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "Source", scope: !560, file: !71, line: 559, baseType: !24, size: 32, offset: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "Polarity", scope: !560, file: !71, line: 562, baseType: !24, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ReloadValue", scope: !560, file: !71, line: 565, baseType: !24, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorLimitValue", scope: !560, file: !71, line: 569, baseType: !24, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48CalibrationValue", scope: !560, file: !71, line: 572, baseType: !24, size: 32, offset: 160)
!568 = !DILocalVariable(name: "pInit", arg: 1, scope: !555, file: !65, line: 657, type: !558)
!569 = !DILocation(line: 657, column: 46, scope: !555)
!570 = !DILocalVariable(name: "value", scope: !555, file: !65, line: 659, type: !24)
!571 = !DILocation(line: 659, column: 12, scope: !555)
!572 = !DILocation(line: 672, column: 79, scope: !555)
!573 = !DILocation(line: 673, column: 79, scope: !555)
!574 = !DILocation(line: 678, column: 12, scope: !555)
!575 = !DILocation(line: 678, column: 19, scope: !555)
!576 = !DILocation(line: 678, column: 31, scope: !555)
!577 = !DILocation(line: 678, column: 38, scope: !555)
!578 = !DILocation(line: 678, column: 29, scope: !555)
!579 = !DILocation(line: 678, column: 47, scope: !555)
!580 = !DILocation(line: 678, column: 54, scope: !555)
!581 = !DILocation(line: 678, column: 45, scope: !555)
!582 = !DILocation(line: 678, column: 9, scope: !555)
!583 = !DILocation(line: 680, column: 12, scope: !555)
!584 = !DILocation(line: 680, column: 19, scope: !555)
!585 = !DILocation(line: 680, column: 9, scope: !555)
!586 = !DILocation(line: 682, column: 13, scope: !555)
!587 = !DILocation(line: 682, column: 20, scope: !555)
!588 = !DILocation(line: 682, column: 36, scope: !555)
!589 = !DILocation(line: 682, column: 9, scope: !555)
!590 = !DILocation(line: 683, column: 63, scope: !555)
!591 = !DILocation(line: 683, column: 60, scope: !555)
!592 = !DILocation(line: 687, column: 117, scope: !555)
!593 = !DILocation(line: 687, column: 123, scope: !555)
!594 = !DILocation(line: 687, column: 152, scope: !555)
!595 = !DILocation(line: 687, column: 159, scope: !555)
!596 = !DILocation(line: 687, column: 181, scope: !555)
!597 = !DILocation(line: 687, column: 148, scope: !555)
!598 = !DILocation(line: 687, column: 60, scope: !555)
!599 = !DILocation(line: 692, column: 58, scope: !555)
!600 = !DILocation(line: 693, column: 1, scope: !555)
!601 = distinct !DISubprogram(name: "HAL_RCCEx_CRSSoftwareSynchronizationGenerate", scope: !65, file: !65, line: 699, type: !602, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!602 = !DISubroutineType(types: !603)
!603 = !{null}
!604 = !DILocation(line: 701, column: 58, scope: !601)
!605 = !DILocation(line: 702, column: 1, scope: !601)
!606 = distinct !DISubprogram(name: "HAL_RCCEx_CRSGetSynchronizationInfo", scope: !65, file: !65, line: 709, type: !607, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_CRSSynchroInfoTypeDef", file: !71, line: 597, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 580, size: 128, elements: !612)
!612 = !{!613, !614, !615, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ReloadValue", scope: !611, file: !71, line: 582, baseType: !24, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48CalibrationValue", scope: !611, file: !71, line: 585, baseType: !24, size: 32, offset: 32)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "FreqErrorCapture", scope: !611, file: !71, line: 588, baseType: !24, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "FreqErrorDirection", scope: !611, file: !71, line: 592, baseType: !24, size: 32, offset: 96)
!617 = !DILocalVariable(name: "pSynchroInfo", arg: 1, scope: !606, file: !65, line: 709, type: !609)
!618 = !DILocation(line: 709, column: 69, scope: !606)
!619 = !DILocation(line: 715, column: 93, scope: !606)
!620 = !DILocation(line: 715, column: 99, scope: !606)
!621 = !DILocation(line: 715, column: 3, scope: !606)
!622 = !DILocation(line: 715, column: 17, scope: !606)
!623 = !DILocation(line: 715, column: 29, scope: !606)
!624 = !DILocation(line: 718, column: 103, scope: !606)
!625 = !DILocation(line: 718, column: 107, scope: !606)
!626 = !DILocation(line: 718, column: 129, scope: !606)
!627 = !DILocation(line: 718, column: 3, scope: !606)
!628 = !DILocation(line: 718, column: 17, scope: !606)
!629 = !DILocation(line: 718, column: 39, scope: !606)
!630 = !DILocation(line: 721, column: 98, scope: !606)
!631 = !DILocation(line: 721, column: 103, scope: !606)
!632 = !DILocation(line: 721, column: 128, scope: !606)
!633 = !DILocation(line: 721, column: 3, scope: !606)
!634 = !DILocation(line: 721, column: 17, scope: !606)
!635 = !DILocation(line: 721, column: 34, scope: !606)
!636 = !DILocation(line: 724, column: 100, scope: !606)
!637 = !DILocation(line: 724, column: 105, scope: !606)
!638 = !DILocation(line: 724, column: 3, scope: !606)
!639 = !DILocation(line: 724, column: 17, scope: !606)
!640 = !DILocation(line: 724, column: 36, scope: !606)
!641 = !DILocation(line: 725, column: 1, scope: !606)
!642 = distinct !DISubprogram(name: "HAL_RCCEx_CRSWaitSynchronization", scope: !65, file: !65, line: 742, type: !322, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!643 = !DILocalVariable(name: "Timeout", arg: 1, scope: !642, file: !65, line: 742, type: !24)
!644 = !DILocation(line: 742, column: 52, scope: !642)
!645 = !DILocalVariable(name: "crsstatus", scope: !642, file: !65, line: 744, type: !24)
!646 = !DILocation(line: 744, column: 12, scope: !642)
!647 = !DILocalVariable(name: "tickstart", scope: !642, file: !65, line: 745, type: !24)
!648 = !DILocation(line: 745, column: 12, scope: !642)
!649 = !DILocation(line: 748, column: 15, scope: !642)
!650 = !DILocation(line: 748, column: 13, scope: !642)
!651 = !DILocation(line: 751, column: 3, scope: !642)
!652 = !DILocation(line: 753, column: 8, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !65, line: 753, column: 8)
!654 = distinct !DILexicalBlock(scope: !642, file: !65, line: 752, column: 3)
!655 = !DILocation(line: 753, column: 16, scope: !653)
!656 = !DILocation(line: 753, column: 8, scope: !654)
!657 = !DILocation(line: 755, column: 11, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !65, line: 755, column: 10)
!659 = distinct !DILexicalBlock(scope: !653, file: !65, line: 754, column: 5)
!660 = !DILocation(line: 755, column: 19, scope: !658)
!661 = !DILocation(line: 755, column: 26, scope: !658)
!662 = !DILocation(line: 755, column: 31, scope: !658)
!663 = !DILocation(line: 755, column: 47, scope: !658)
!664 = !DILocation(line: 755, column: 45, scope: !658)
!665 = !DILocation(line: 755, column: 60, scope: !658)
!666 = !DILocation(line: 755, column: 58, scope: !658)
!667 = !DILocation(line: 755, column: 10, scope: !659)
!668 = !DILocation(line: 757, column: 19, scope: !669)
!669 = distinct !DILexicalBlock(scope: !658, file: !65, line: 756, column: 7)
!670 = !DILocation(line: 758, column: 7, scope: !669)
!671 = !DILocation(line: 759, column: 5, scope: !659)
!672 = !DILocation(line: 761, column: 60, scope: !673)
!673 = distinct !DILexicalBlock(scope: !654, file: !65, line: 761, column: 8)
!674 = !DILocation(line: 761, column: 65, scope: !673)
!675 = !DILocation(line: 761, column: 88, scope: !673)
!676 = !DILocation(line: 761, column: 8, scope: !654)
!677 = !DILocation(line: 764, column: 17, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !65, line: 762, column: 5)
!679 = !DILocation(line: 767, column: 7, scope: !678)
!680 = !DILocation(line: 767, column: 351, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !65, line: 767, column: 293)
!682 = distinct !DILexicalBlock(scope: !683, file: !65, line: 767, column: 15)
!683 = distinct !DILexicalBlock(scope: !678, file: !65, line: 767, column: 10)
!684 = !DILocation(line: 767, column: 377, scope: !683)
!685 = !DILocation(line: 768, column: 5, scope: !678)
!686 = !DILocation(line: 771, column: 60, scope: !687)
!687 = distinct !DILexicalBlock(scope: !654, file: !65, line: 771, column: 8)
!688 = !DILocation(line: 771, column: 65, scope: !687)
!689 = !DILocation(line: 771, column: 88, scope: !687)
!690 = !DILocation(line: 771, column: 8, scope: !654)
!691 = !DILocation(line: 774, column: 17, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !65, line: 772, column: 5)
!693 = !DILocation(line: 777, column: 7, scope: !692)
!694 = !DILocation(line: 777, column: 351, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !65, line: 777, column: 293)
!696 = distinct !DILexicalBlock(scope: !697, file: !65, line: 777, column: 15)
!697 = distinct !DILexicalBlock(scope: !692, file: !65, line: 777, column: 10)
!698 = !DILocation(line: 777, column: 377, scope: !697)
!699 = !DILocation(line: 778, column: 5, scope: !692)
!700 = !DILocation(line: 781, column: 60, scope: !701)
!701 = distinct !DILexicalBlock(scope: !654, file: !65, line: 781, column: 8)
!702 = !DILocation(line: 781, column: 65, scope: !701)
!703 = !DILocation(line: 781, column: 89, scope: !701)
!704 = !DILocation(line: 781, column: 8, scope: !654)
!705 = !DILocation(line: 784, column: 17, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !65, line: 782, column: 5)
!707 = !DILocation(line: 787, column: 7, scope: !706)
!708 = !DILocation(line: 787, column: 173, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !65, line: 787, column: 115)
!710 = distinct !DILexicalBlock(scope: !711, file: !65, line: 787, column: 15)
!711 = distinct !DILexicalBlock(scope: !706, file: !65, line: 787, column: 10)
!712 = !DILocation(line: 787, column: 380, scope: !711)
!713 = !DILocation(line: 788, column: 5, scope: !706)
!714 = !DILocation(line: 791, column: 60, scope: !715)
!715 = distinct !DILexicalBlock(scope: !654, file: !65, line: 791, column: 8)
!716 = !DILocation(line: 791, column: 65, scope: !715)
!717 = !DILocation(line: 791, column: 88, scope: !715)
!718 = !DILocation(line: 791, column: 8, scope: !654)
!719 = !DILocation(line: 794, column: 17, scope: !720)
!720 = distinct !DILexicalBlock(scope: !715, file: !65, line: 792, column: 5)
!721 = !DILocation(line: 797, column: 7, scope: !720)
!722 = !DILocation(line: 797, column: 172, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !65, line: 797, column: 114)
!724 = distinct !DILexicalBlock(scope: !725, file: !65, line: 797, column: 15)
!725 = distinct !DILexicalBlock(scope: !720, file: !65, line: 797, column: 10)
!726 = !DILocation(line: 797, column: 377, scope: !725)
!727 = !DILocation(line: 798, column: 5, scope: !720)
!728 = !DILocation(line: 801, column: 60, scope: !729)
!729 = distinct !DILexicalBlock(scope: !654, file: !65, line: 801, column: 8)
!730 = !DILocation(line: 801, column: 65, scope: !729)
!731 = !DILocation(line: 801, column: 88, scope: !729)
!732 = !DILocation(line: 801, column: 8, scope: !654)
!733 = !DILocation(line: 804, column: 17, scope: !734)
!734 = distinct !DILexicalBlock(scope: !729, file: !65, line: 802, column: 5)
!735 = !DILocation(line: 807, column: 7, scope: !734)
!736 = !DILocation(line: 807, column: 172, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !65, line: 807, column: 114)
!738 = distinct !DILexicalBlock(scope: !739, file: !65, line: 807, column: 15)
!739 = distinct !DILexicalBlock(scope: !734, file: !65, line: 807, column: 10)
!740 = !DILocation(line: 807, column: 377, scope: !739)
!741 = !DILocation(line: 808, column: 5, scope: !734)
!742 = !DILocation(line: 811, column: 60, scope: !743)
!743 = distinct !DILexicalBlock(scope: !654, file: !65, line: 811, column: 8)
!744 = !DILocation(line: 811, column: 65, scope: !743)
!745 = !DILocation(line: 811, column: 88, scope: !743)
!746 = !DILocation(line: 811, column: 8, scope: !654)
!747 = !DILocation(line: 814, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !65, line: 812, column: 5)
!749 = !DILocation(line: 814, column: 351, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !65, line: 814, column: 293)
!751 = distinct !DILexicalBlock(scope: !752, file: !65, line: 814, column: 15)
!752 = distinct !DILexicalBlock(scope: !748, file: !65, line: 814, column: 10)
!753 = !DILocation(line: 814, column: 377, scope: !752)
!754 = !DILocation(line: 815, column: 5, scope: !748)
!755 = !DILocation(line: 816, column: 3, scope: !654)
!756 = !DILocation(line: 816, column: 28, scope: !642)
!757 = !DILocation(line: 816, column: 25, scope: !642)
!758 = distinct !{!758, !651, !759}
!759 = !DILocation(line: 816, column: 37, scope: !642)
!760 = !DILocation(line: 818, column: 10, scope: !642)
!761 = !DILocation(line: 818, column: 3, scope: !642)
!762 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_IRQHandler", scope: !65, file: !65, line: 825, type: !602, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!763 = !DILocalVariable(name: "crserror", scope: !762, file: !65, line: 827, type: !24)
!764 = !DILocation(line: 827, column: 12, scope: !762)
!765 = !DILocalVariable(name: "itflags", scope: !762, file: !65, line: 829, type: !24)
!766 = !DILocation(line: 829, column: 12, scope: !762)
!767 = !DILocation(line: 829, column: 73, scope: !762)
!768 = !DILocalVariable(name: "itsources", scope: !762, file: !65, line: 830, type: !24)
!769 = !DILocation(line: 830, column: 12, scope: !762)
!770 = !DILocation(line: 830, column: 75, scope: !762)
!771 = !DILocation(line: 833, column: 8, scope: !772)
!772 = distinct !DILexicalBlock(scope: !762, file: !65, line: 833, column: 6)
!773 = !DILocation(line: 833, column: 16, scope: !772)
!774 = !DILocation(line: 833, column: 35, scope: !772)
!775 = !DILocation(line: 833, column: 45, scope: !772)
!776 = !DILocation(line: 833, column: 50, scope: !772)
!777 = !DILocation(line: 833, column: 60, scope: !772)
!778 = !DILocation(line: 833, column: 79, scope: !772)
!779 = !DILocation(line: 833, column: 6, scope: !762)
!780 = !DILocation(line: 836, column: 61, scope: !781)
!781 = distinct !DILexicalBlock(scope: !772, file: !65, line: 834, column: 3)
!782 = !DILocation(line: 839, column: 5, scope: !781)
!783 = !DILocation(line: 840, column: 3, scope: !781)
!784 = !DILocation(line: 842, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !772, file: !65, line: 842, column: 11)
!786 = !DILocation(line: 842, column: 21, scope: !785)
!787 = !DILocation(line: 842, column: 40, scope: !785)
!788 = !DILocation(line: 842, column: 50, scope: !785)
!789 = !DILocation(line: 842, column: 55, scope: !785)
!790 = !DILocation(line: 842, column: 65, scope: !785)
!791 = !DILocation(line: 842, column: 84, scope: !785)
!792 = !DILocation(line: 842, column: 11, scope: !772)
!793 = !DILocation(line: 845, column: 61, scope: !794)
!794 = distinct !DILexicalBlock(scope: !785, file: !65, line: 843, column: 3)
!795 = !DILocation(line: 848, column: 5, scope: !794)
!796 = !DILocation(line: 849, column: 3, scope: !794)
!797 = !DILocation(line: 851, column: 13, scope: !798)
!798 = distinct !DILexicalBlock(scope: !785, file: !65, line: 851, column: 11)
!799 = !DILocation(line: 851, column: 21, scope: !798)
!800 = !DILocation(line: 851, column: 40, scope: !798)
!801 = !DILocation(line: 851, column: 50, scope: !798)
!802 = !DILocation(line: 851, column: 55, scope: !798)
!803 = !DILocation(line: 851, column: 65, scope: !798)
!804 = !DILocation(line: 851, column: 84, scope: !798)
!805 = !DILocation(line: 851, column: 11, scope: !785)
!806 = !DILocation(line: 854, column: 61, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !65, line: 852, column: 3)
!808 = !DILocation(line: 857, column: 5, scope: !807)
!809 = !DILocation(line: 858, column: 3, scope: !807)
!810 = !DILocation(line: 862, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !65, line: 862, column: 8)
!812 = distinct !DILexicalBlock(scope: !798, file: !65, line: 861, column: 3)
!813 = !DILocation(line: 862, column: 18, scope: !811)
!814 = !DILocation(line: 862, column: 37, scope: !811)
!815 = !DILocation(line: 862, column: 47, scope: !811)
!816 = !DILocation(line: 862, column: 52, scope: !811)
!817 = !DILocation(line: 862, column: 62, scope: !811)
!818 = !DILocation(line: 862, column: 81, scope: !811)
!819 = !DILocation(line: 862, column: 8, scope: !812)
!820 = !DILocation(line: 864, column: 11, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !65, line: 864, column: 10)
!822 = distinct !DILexicalBlock(scope: !811, file: !65, line: 863, column: 5)
!823 = !DILocation(line: 864, column: 19, scope: !821)
!824 = !DILocation(line: 864, column: 38, scope: !821)
!825 = !DILocation(line: 864, column: 10, scope: !822)
!826 = !DILocation(line: 866, column: 18, scope: !827)
!827 = distinct !DILexicalBlock(scope: !821, file: !65, line: 865, column: 7)
!828 = !DILocation(line: 867, column: 7, scope: !827)
!829 = !DILocation(line: 868, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !822, file: !65, line: 868, column: 10)
!831 = !DILocation(line: 868, column: 19, scope: !830)
!832 = !DILocation(line: 868, column: 38, scope: !830)
!833 = !DILocation(line: 868, column: 10, scope: !822)
!834 = !DILocation(line: 870, column: 18, scope: !835)
!835 = distinct !DILexicalBlock(scope: !830, file: !65, line: 869, column: 7)
!836 = !DILocation(line: 871, column: 7, scope: !835)
!837 = !DILocation(line: 872, column: 11, scope: !838)
!838 = distinct !DILexicalBlock(scope: !822, file: !65, line: 872, column: 10)
!839 = !DILocation(line: 872, column: 19, scope: !838)
!840 = !DILocation(line: 872, column: 39, scope: !838)
!841 = !DILocation(line: 872, column: 10, scope: !822)
!842 = !DILocation(line: 874, column: 18, scope: !843)
!843 = distinct !DILexicalBlock(scope: !838, file: !65, line: 873, column: 7)
!844 = !DILocation(line: 875, column: 7, scope: !843)
!845 = !DILocation(line: 878, column: 63, scope: !822)
!846 = !DILocation(line: 881, column: 35, scope: !822)
!847 = !DILocation(line: 881, column: 7, scope: !822)
!848 = !DILocation(line: 882, column: 5, scope: !822)
!849 = !DILocation(line: 884, column: 1, scope: !762)
!850 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncOkCallback", scope: !65, file: !65, line: 890, type: !602, scopeLine: 891, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!851 = !DILocation(line: 895, column: 1, scope: !850)
!852 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncWarnCallback", scope: !65, file: !65, line: 901, type: !602, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!853 = !DILocation(line: 906, column: 1, scope: !852)
!854 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ExpectedSyncCallback", scope: !65, file: !65, line: 912, type: !602, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!855 = !DILocation(line: 917, column: 1, scope: !854)
!856 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ErrorCallback", scope: !65, file: !65, line: 928, type: !857, scopeLine: 929, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !81)
!857 = !DISubroutineType(types: !858)
!858 = !{null, !24}
!859 = !DILocalVariable(name: "Error", arg: 1, scope: !856, file: !65, line: 928, type: !24)
!860 = !DILocation(line: 928, column: 65, scope: !856)
!861 = !DILocation(line: 931, column: 9, scope: !856)
!862 = !DILocation(line: 936, column: 1, scope: !856)
