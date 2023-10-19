; ModuleID = '../bc_files/stm32f0xx_hal_rcc_ex.bc'
source_filename = "/home/sri/zephyrproject/modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc_ex.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.RCC_PeriphCLKInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_CRSInitTypeDef = type { i32, i32, i32, i32, i32, i32 }
%struct.CRS_TypeDef = type { i32, i32, i32, i32 }
%struct.RCC_CRSSynchroInfoTypeDef = type { i32, i32, i32, i32 }

; Function Attrs: nounwind optsize
define hidden zeroext i8 @HAL_RCCEx_PeriphCLKConfig(ptr noundef %0) #0 !dbg !62 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !80, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %4, metadata !81, metadata !DIExpression()), !dbg !93
  store i32 0, ptr %4, align 4, !dbg !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #4, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %5, metadata !82, metadata !DIExpression()), !dbg !95
  store i32 0, ptr %5, align 4, !dbg !95
  %9 = load ptr, ptr %3, align 4, !dbg !96
  %10 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %9, i32 0, i32 0, !dbg !97
  %11 = load i32, ptr %10, align 4, !dbg !97
  %12 = and i32 %11, 65536, !dbg !98
  %13 = icmp eq i32 %12, 65536, !dbg !99
  br i1 %13, label %14, label %102, !dbg !100

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #4, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %6, metadata !83, metadata !DIExpression()), !dbg !102
  store i8 0, ptr %6, align 1, !dbg !102
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !103
  %16 = and i32 %15, 268435456, !dbg !104
  %17 = icmp eq i32 %16, 0, !dbg !105
  br i1 %17, label %18, label %27, !dbg !106

18:                                               ; preds = %14
  br label %19, !dbg !107

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #4, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %7, metadata !87, metadata !DIExpression()), !dbg !109
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !110
  %21 = or i32 %20, 268435456, !dbg !110
  store volatile i32 %21, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !110
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !111
  %23 = and i32 %22, 268435456, !dbg !112
  store volatile i32 %23, ptr %7, align 4, !dbg !113
  %24 = load volatile i32, ptr %7, align 4, !dbg !114
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #4, !dbg !115
  br label %25, !dbg !116

25:                                               ; preds = %19
  br label %26, !dbg !116

26:                                               ; preds = %25
  store i8 1, ptr %6, align 1, !dbg !117
  br label %27, !dbg !118

27:                                               ; preds = %26, %14
  %28 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !119
  %29 = and i32 %28, 256, !dbg !121
  %30 = icmp eq i32 %29, 0, !dbg !122
  br i1 %30, label %31, label %47, !dbg !123

31:                                               ; preds = %27
  %32 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !124
  %33 = or i32 %32, 256, !dbg !124
  store volatile i32 %33, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !124
  %34 = call i32 @HAL_GetTick() #5, !dbg !126
  store i32 %34, ptr %4, align 4, !dbg !127
  br label %35, !dbg !128

35:                                               ; preds = %45, %31
  %36 = load volatile i32, ptr inttoptr (i32 1073770496 to ptr), align 4, !dbg !129
  %37 = and i32 %36, 256, !dbg !130
  %38 = icmp eq i32 %37, 0, !dbg !131
  br i1 %38, label %39, label %46, !dbg !128

39:                                               ; preds = %35
  %40 = call i32 @HAL_GetTick() #5, !dbg !132
  %41 = load i32, ptr %4, align 4, !dbg !135
  %42 = sub i32 %40, %41, !dbg !136
  %43 = icmp ugt i32 %42, 100, !dbg !137
  br i1 %43, label %44, label %45, !dbg !138

44:                                               ; preds = %39
  store i8 3, ptr %2, align 1, !dbg !139
  store i32 1, ptr %8, align 4
  br label %99, !dbg !139

45:                                               ; preds = %39
  br label %35, !dbg !128, !llvm.loop !141

46:                                               ; preds = %35
  br label %47, !dbg !143

47:                                               ; preds = %46, %27
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !144
  %49 = and i32 %48, 768, !dbg !145
  store i32 %49, ptr %5, align 4, !dbg !146
  %50 = load i32, ptr %5, align 4, !dbg !147
  %51 = icmp ne i32 %50, 0, !dbg !149
  br i1 %51, label %52, label %85, !dbg !150

52:                                               ; preds = %47
  %53 = load i32, ptr %5, align 4, !dbg !151
  %54 = load ptr, ptr %3, align 4, !dbg !152
  %55 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %54, i32 0, i32 1, !dbg !153
  %56 = load i32, ptr %55, align 4, !dbg !153
  %57 = and i32 %56, 768, !dbg !154
  %58 = icmp ne i32 %53, %57, !dbg !155
  br i1 %58, label %59, label %85, !dbg !156

59:                                               ; preds = %52
  %60 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !157
  %61 = and i32 %60, -769, !dbg !159
  store i32 %61, ptr %5, align 4, !dbg !160
  %62 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !161
  %63 = or i32 %62, 65536, !dbg !161
  store volatile i32 %63, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !161
  %64 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !162
  %65 = and i32 %64, -65537, !dbg !162
  store volatile i32 %65, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !162
  %66 = load i32, ptr %5, align 4, !dbg !163
  store volatile i32 %66, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !164
  %67 = load i32, ptr %5, align 4, !dbg !165
  %68 = and i32 %67, 1, !dbg !167
  %69 = icmp eq i32 %68, 1, !dbg !168
  br i1 %69, label %70, label %84, !dbg !169

70:                                               ; preds = %59
  %71 = call i32 @HAL_GetTick() #5, !dbg !170
  store i32 %71, ptr %4, align 4, !dbg !172
  br label %72, !dbg !173

72:                                               ; preds = %82, %70
  %73 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !174
  %74 = and i32 %73, 2, !dbg !175
  %75 = icmp eq i32 %74, 0, !dbg !176
  br i1 %75, label %76, label %83, !dbg !173

76:                                               ; preds = %72
  %77 = call i32 @HAL_GetTick() #5, !dbg !177
  %78 = load i32, ptr %4, align 4, !dbg !180
  %79 = sub i32 %77, %78, !dbg !181
  %80 = icmp ugt i32 %79, 5000, !dbg !182
  br i1 %80, label %81, label %82, !dbg !183

81:                                               ; preds = %76
  store i8 3, ptr %2, align 1, !dbg !184
  store i32 1, ptr %8, align 4
  br label %99, !dbg !184

82:                                               ; preds = %76
  br label %72, !dbg !173, !llvm.loop !186

83:                                               ; preds = %72
  br label %84, !dbg !188

84:                                               ; preds = %83, %59
  br label %85, !dbg !189

85:                                               ; preds = %84, %52, %47
  %86 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !190
  %87 = and i32 %86, -769, !dbg !191
  %88 = load ptr, ptr %3, align 4, !dbg !192
  %89 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %88, i32 0, i32 1, !dbg !193
  %90 = load i32, ptr %89, align 4, !dbg !193
  %91 = or i32 %87, %90, !dbg !194
  store volatile i32 %91, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !195
  %92 = load i8, ptr %6, align 1, !dbg !196
  %93 = zext i8 %92 to i32, !dbg !196
  %94 = icmp eq i32 %93, 1, !dbg !198
  br i1 %94, label %95, label %98, !dbg !199

95:                                               ; preds = %85
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !200
  %97 = and i32 %96, -268435457, !dbg !200
  store volatile i32 %97, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 7), align 4, !dbg !200
  br label %98, !dbg !202

98:                                               ; preds = %95, %85
  store i32 0, ptr %8, align 4, !dbg !203
  br label %99, !dbg !203

99:                                               ; preds = %98, %81, %44
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #4, !dbg !203
  %100 = load i32, ptr %8, align 4
  switch i32 %100, label %168 [
    i32 0, label %101
  ]

101:                                              ; preds = %99
  br label %102, !dbg !204

102:                                              ; preds = %101, %1
  %103 = load ptr, ptr %3, align 4, !dbg !205
  %104 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %103, i32 0, i32 0, !dbg !207
  %105 = load i32, ptr %104, align 4, !dbg !207
  %106 = and i32 %105, 1, !dbg !208
  %107 = icmp eq i32 %106, 1, !dbg !209
  br i1 %107, label %108, label %115, !dbg !210

108:                                              ; preds = %102
  %109 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !211
  %110 = and i32 %109, -4, !dbg !213
  %111 = load ptr, ptr %3, align 4, !dbg !214
  %112 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %111, i32 0, i32 2, !dbg !215
  %113 = load i32, ptr %112, align 4, !dbg !215
  %114 = or i32 %110, %113, !dbg !216
  store volatile i32 %114, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !217
  br label %115, !dbg !218

115:                                              ; preds = %108, %102
  %116 = load ptr, ptr %3, align 4, !dbg !219
  %117 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %116, i32 0, i32 0, !dbg !221
  %118 = load i32, ptr %117, align 4, !dbg !221
  %119 = and i32 %118, 2, !dbg !222
  %120 = icmp eq i32 %119, 2, !dbg !223
  br i1 %120, label %121, label %128, !dbg !224

121:                                              ; preds = %115
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !225
  %123 = and i32 %122, -196609, !dbg !227
  %124 = load ptr, ptr %3, align 4, !dbg !228
  %125 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %124, i32 0, i32 3, !dbg !229
  %126 = load i32, ptr %125, align 4, !dbg !229
  %127 = or i32 %123, %126, !dbg !230
  store volatile i32 %127, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !231
  br label %128, !dbg !232

128:                                              ; preds = %121, %115
  %129 = load ptr, ptr %3, align 4, !dbg !233
  %130 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %129, i32 0, i32 0, !dbg !235
  %131 = load i32, ptr %130, align 4, !dbg !235
  %132 = and i32 %131, 262144, !dbg !236
  %133 = icmp eq i32 %132, 262144, !dbg !237
  br i1 %133, label %134, label %141, !dbg !238

134:                                              ; preds = %128
  %135 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !239
  %136 = and i32 %135, -786433, !dbg !241
  %137 = load ptr, ptr %3, align 4, !dbg !242
  %138 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %137, i32 0, i32 4, !dbg !243
  %139 = load i32, ptr %138, align 4, !dbg !243
  %140 = or i32 %136, %139, !dbg !244
  store volatile i32 %140, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !245
  br label %141, !dbg !246

141:                                              ; preds = %134, %128
  %142 = load ptr, ptr %3, align 4, !dbg !247
  %143 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %142, i32 0, i32 0, !dbg !249
  %144 = load i32, ptr %143, align 4, !dbg !249
  %145 = and i32 %144, 32, !dbg !250
  %146 = icmp eq i32 %145, 32, !dbg !251
  br i1 %146, label %147, label %154, !dbg !252

147:                                              ; preds = %141
  %148 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !253
  %149 = and i32 %148, -17, !dbg !255
  %150 = load ptr, ptr %3, align 4, !dbg !256
  %151 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %150, i32 0, i32 5, !dbg !257
  %152 = load i32, ptr %151, align 4, !dbg !257
  %153 = or i32 %149, %152, !dbg !258
  store volatile i32 %153, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !259
  br label %154, !dbg !260

154:                                              ; preds = %147, %141
  %155 = load ptr, ptr %3, align 4, !dbg !261
  %156 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %155, i32 0, i32 0, !dbg !263
  %157 = load i32, ptr %156, align 4, !dbg !263
  %158 = and i32 %157, 1024, !dbg !264
  %159 = icmp eq i32 %158, 1024, !dbg !265
  br i1 %159, label %160, label %167, !dbg !266

160:                                              ; preds = %154
  %161 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !267
  %162 = and i32 %161, -65, !dbg !269
  %163 = load ptr, ptr %3, align 4, !dbg !270
  %164 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %163, i32 0, i32 6, !dbg !271
  %165 = load i32, ptr %164, align 4, !dbg !271
  %166 = or i32 %162, %165, !dbg !272
  store volatile i32 %166, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !273
  br label %167, !dbg !274

167:                                              ; preds = %160, %154
  store i8 0, ptr %2, align 1, !dbg !275
  store i32 1, ptr %8, align 4
  br label %168, !dbg !275

168:                                              ; preds = %167, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #4, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4, !dbg !276
  %169 = load i8, ptr %2, align 1, !dbg !276
  ret i8 %169, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare !dbg !277 dso_local i32 @HAL_GetTick() #3

; Function Attrs: nounwind optsize
define hidden void @HAL_RCCEx_GetPeriphCLKConfig(ptr noundef %0) #0 !dbg !282 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !286, metadata !DIExpression()), !dbg !287
  %3 = load ptr, ptr %2, align 4, !dbg !288
  %4 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %3, i32 0, i32 0, !dbg !289
  store i32 65569, ptr %4, align 4, !dbg !290
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !291
  %6 = and i32 %5, 768, !dbg !292
  %7 = load ptr, ptr %2, align 4, !dbg !293
  %8 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %7, i32 0, i32 1, !dbg !294
  store i32 %6, ptr %8, align 4, !dbg !295
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !296
  %10 = and i32 %9, 3, !dbg !297
  %11 = load ptr, ptr %2, align 4, !dbg !298
  %12 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %11, i32 0, i32 2, !dbg !299
  store i32 %10, ptr %12, align 4, !dbg !300
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !301
  %14 = and i32 %13, 16, !dbg !302
  %15 = load ptr, ptr %2, align 4, !dbg !303
  %16 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %15, i32 0, i32 5, !dbg !304
  store i32 %14, ptr %16, align 4, !dbg !305
  %17 = load ptr, ptr %2, align 4, !dbg !306
  %18 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %17, i32 0, i32 0, !dbg !307
  %19 = load i32, ptr %18, align 4, !dbg !308
  %20 = or i32 %19, 2, !dbg !308
  store i32 %20, ptr %18, align 4, !dbg !308
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !309
  %22 = and i32 %21, 196608, !dbg !310
  %23 = load ptr, ptr %2, align 4, !dbg !311
  %24 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %23, i32 0, i32 3, !dbg !312
  store i32 %22, ptr %24, align 4, !dbg !313
  %25 = load ptr, ptr %2, align 4, !dbg !314
  %26 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %25, i32 0, i32 0, !dbg !315
  %27 = load i32, ptr %26, align 4, !dbg !316
  %28 = or i32 %27, 262144, !dbg !316
  store i32 %28, ptr %26, align 4, !dbg !316
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !317
  %30 = and i32 %29, 786432, !dbg !318
  %31 = load ptr, ptr %2, align 4, !dbg !319
  %32 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %31, i32 0, i32 4, !dbg !320
  store i32 %30, ptr %32, align 4, !dbg !321
  %33 = load ptr, ptr %2, align 4, !dbg !322
  %34 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %33, i32 0, i32 0, !dbg !323
  %35 = load i32, ptr %34, align 4, !dbg !324
  %36 = or i32 %35, 1024, !dbg !324
  store i32 %36, ptr %34, align 4, !dbg !324
  %37 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !325
  %38 = and i32 %37, 64, !dbg !326
  %39 = load ptr, ptr %2, align 4, !dbg !327
  %40 = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, ptr %39, i32 0, i32 6, !dbg !328
  store i32 %38, ptr %40, align 4, !dbg !329
  ret void, !dbg !330
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_RCCEx_GetPeriphCLKFreq(i32 noundef %0) #0 !dbg !331 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !338
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4, !dbg !339
  call void @llvm.dbg.declare(metadata ptr %3, metadata !336, metadata !DIExpression()), !dbg !340
  store i32 0, ptr %3, align 4, !dbg !340
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %4, metadata !337, metadata !DIExpression()), !dbg !342
  store i32 0, ptr %4, align 4, !dbg !342
  %5 = load i32, ptr %2, align 4, !dbg !343
  switch i32 %5, label %168 [
    i32 65536, label %6
    i32 1, label %35
    i32 2, label %67
    i32 262144, label %99
    i32 32, label %131
    i32 1024, label %148
  ], !dbg !344

6:                                                ; preds = %1
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !345
  %8 = and i32 %7, 768, !dbg !348
  store i32 %8, ptr %4, align 4, !dbg !349
  %9 = load i32, ptr %4, align 4, !dbg !350
  %10 = icmp eq i32 %9, 256, !dbg !352
  br i1 %10, label %11, label %16, !dbg !353

11:                                               ; preds = %6
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !354
  %13 = and i32 %12, 2, !dbg !355
  %14 = icmp eq i32 %13, 2, !dbg !356
  br i1 %14, label %15, label %16, !dbg !357

15:                                               ; preds = %11
  store i32 32768, ptr %3, align 4, !dbg !358
  br label %34, !dbg !360

16:                                               ; preds = %11, %6
  %17 = load i32, ptr %4, align 4, !dbg !361
  %18 = icmp eq i32 %17, 512, !dbg !363
  br i1 %18, label %19, label %24, !dbg !364

19:                                               ; preds = %16
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 9), align 4, !dbg !365
  %21 = and i32 %20, 2, !dbg !366
  %22 = icmp eq i32 %21, 2, !dbg !367
  br i1 %22, label %23, label %24, !dbg !368

23:                                               ; preds = %19
  store i32 32000, ptr %3, align 4, !dbg !369
  br label %33, !dbg !371

24:                                               ; preds = %19, %16
  %25 = load i32, ptr %4, align 4, !dbg !372
  %26 = icmp eq i32 %25, 768, !dbg !374
  br i1 %26, label %27, label %32, !dbg !375

27:                                               ; preds = %24
  %28 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !376
  %29 = and i32 %28, 131072, !dbg !377
  %30 = icmp eq i32 %29, 131072, !dbg !378
  br i1 %30, label %31, label %32, !dbg !379

31:                                               ; preds = %27
  store i32 250000, ptr %3, align 4, !dbg !380
  br label %32, !dbg !382

32:                                               ; preds = %31, %27, %24
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %15
  br label %169, !dbg !383

35:                                               ; preds = %1
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !384
  %37 = and i32 %36, 3, !dbg !386
  store i32 %37, ptr %4, align 4, !dbg !387
  %38 = load i32, ptr %4, align 4, !dbg !388
  %39 = icmp eq i32 %38, 0, !dbg !390
  br i1 %39, label %40, label %42, !dbg !391

40:                                               ; preds = %35
  %41 = call i32 @HAL_RCC_GetPCLK1Freq() #5, !dbg !392
  store i32 %41, ptr %3, align 4, !dbg !394
  br label %66, !dbg !395

42:                                               ; preds = %35
  %43 = load i32, ptr %4, align 4, !dbg !396
  %44 = icmp eq i32 %43, 3, !dbg !398
  br i1 %44, label %45, label %50, !dbg !399

45:                                               ; preds = %42
  %46 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !400
  %47 = and i32 %46, 2, !dbg !401
  %48 = icmp eq i32 %47, 2, !dbg !402
  br i1 %48, label %49, label %50, !dbg !403

49:                                               ; preds = %45
  store i32 8000000, ptr %3, align 4, !dbg !404
  br label %65, !dbg !406

50:                                               ; preds = %45, %42
  %51 = load i32, ptr %4, align 4, !dbg !407
  %52 = icmp eq i32 %51, 1, !dbg !409
  br i1 %52, label %53, label %55, !dbg !410

53:                                               ; preds = %50
  %54 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !411
  store i32 %54, ptr %3, align 4, !dbg !413
  br label %64, !dbg !414

55:                                               ; preds = %50
  %56 = load i32, ptr %4, align 4, !dbg !415
  %57 = icmp eq i32 %56, 2, !dbg !417
  br i1 %57, label %58, label %63, !dbg !418

58:                                               ; preds = %55
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !419
  %60 = and i32 %59, 2, !dbg !420
  %61 = icmp eq i32 %60, 2, !dbg !421
  br i1 %61, label %62, label %63, !dbg !422

62:                                               ; preds = %58
  store i32 32768, ptr %3, align 4, !dbg !423
  br label %63, !dbg !425

63:                                               ; preds = %62, %58, %55
  br label %64

64:                                               ; preds = %63, %53
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %40
  br label %169, !dbg !426

67:                                               ; preds = %1
  %68 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !427
  %69 = and i32 %68, 196608, !dbg !429
  store i32 %69, ptr %4, align 4, !dbg !430
  %70 = load i32, ptr %4, align 4, !dbg !431
  %71 = icmp eq i32 %70, 0, !dbg !433
  br i1 %71, label %72, label %74, !dbg !434

72:                                               ; preds = %67
  %73 = call i32 @HAL_RCC_GetPCLK1Freq() #5, !dbg !435
  store i32 %73, ptr %3, align 4, !dbg !437
  br label %98, !dbg !438

74:                                               ; preds = %67
  %75 = load i32, ptr %4, align 4, !dbg !439
  %76 = icmp eq i32 %75, 196608, !dbg !441
  br i1 %76, label %77, label %82, !dbg !442

77:                                               ; preds = %74
  %78 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !443
  %79 = and i32 %78, 2, !dbg !444
  %80 = icmp eq i32 %79, 2, !dbg !445
  br i1 %80, label %81, label %82, !dbg !446

81:                                               ; preds = %77
  store i32 8000000, ptr %3, align 4, !dbg !447
  br label %97, !dbg !449

82:                                               ; preds = %77, %74
  %83 = load i32, ptr %4, align 4, !dbg !450
  %84 = icmp eq i32 %83, 65536, !dbg !452
  br i1 %84, label %85, label %87, !dbg !453

85:                                               ; preds = %82
  %86 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !454
  store i32 %86, ptr %3, align 4, !dbg !456
  br label %96, !dbg !457

87:                                               ; preds = %82
  %88 = load i32, ptr %4, align 4, !dbg !458
  %89 = icmp eq i32 %88, 131072, !dbg !460
  br i1 %89, label %90, label %95, !dbg !461

90:                                               ; preds = %87
  %91 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !462
  %92 = and i32 %91, 2, !dbg !463
  %93 = icmp eq i32 %92, 2, !dbg !464
  br i1 %93, label %94, label %95, !dbg !465

94:                                               ; preds = %90
  store i32 32768, ptr %3, align 4, !dbg !466
  br label %95, !dbg !468

95:                                               ; preds = %94, %90, %87
  br label %96

96:                                               ; preds = %95, %85
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %72
  br label %169, !dbg !469

99:                                               ; preds = %1
  %100 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !470
  %101 = and i32 %100, 786432, !dbg !472
  store i32 %101, ptr %4, align 4, !dbg !473
  %102 = load i32, ptr %4, align 4, !dbg !474
  %103 = icmp eq i32 %102, 0, !dbg !476
  br i1 %103, label %104, label %106, !dbg !477

104:                                              ; preds = %99
  %105 = call i32 @HAL_RCC_GetPCLK1Freq() #5, !dbg !478
  store i32 %105, ptr %3, align 4, !dbg !480
  br label %130, !dbg !481

106:                                              ; preds = %99
  %107 = load i32, ptr %4, align 4, !dbg !482
  %108 = icmp eq i32 %107, 786432, !dbg !484
  br i1 %108, label %109, label %114, !dbg !485

109:                                              ; preds = %106
  %110 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !486
  %111 = and i32 %110, 2, !dbg !487
  %112 = icmp eq i32 %111, 2, !dbg !488
  br i1 %112, label %113, label %114, !dbg !489

113:                                              ; preds = %109
  store i32 8000000, ptr %3, align 4, !dbg !490
  br label %129, !dbg !492

114:                                              ; preds = %109, %106
  %115 = load i32, ptr %4, align 4, !dbg !493
  %116 = icmp eq i32 %115, 262144, !dbg !495
  br i1 %116, label %117, label %119, !dbg !496

117:                                              ; preds = %114
  %118 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !497
  store i32 %118, ptr %3, align 4, !dbg !499
  br label %128, !dbg !500

119:                                              ; preds = %114
  %120 = load i32, ptr %4, align 4, !dbg !501
  %121 = icmp eq i32 %120, 524288, !dbg !503
  br i1 %121, label %122, label %127, !dbg !504

122:                                              ; preds = %119
  %123 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !505
  %124 = and i32 %123, 2, !dbg !506
  %125 = icmp eq i32 %124, 2, !dbg !507
  br i1 %125, label %126, label %127, !dbg !508

126:                                              ; preds = %122
  store i32 32768, ptr %3, align 4, !dbg !509
  br label %127, !dbg !511

127:                                              ; preds = %126, %122, %119
  br label %128

128:                                              ; preds = %127, %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %104
  br label %169, !dbg !512

131:                                              ; preds = %1
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !513
  %133 = and i32 %132, 16, !dbg !515
  store i32 %133, ptr %4, align 4, !dbg !516
  %134 = load i32, ptr %4, align 4, !dbg !517
  %135 = icmp eq i32 %134, 0, !dbg !519
  br i1 %135, label %136, label %141, !dbg !520

136:                                              ; preds = %131
  %137 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !521
  %138 = and i32 %137, 2, !dbg !522
  %139 = icmp eq i32 %138, 2, !dbg !523
  br i1 %139, label %140, label %141, !dbg !524

140:                                              ; preds = %136
  store i32 8000000, ptr %3, align 4, !dbg !525
  br label %147, !dbg !527

141:                                              ; preds = %136, %131
  %142 = load i32, ptr %4, align 4, !dbg !528
  %143 = icmp eq i32 %142, 16, !dbg !530
  br i1 %143, label %144, label %146, !dbg !531

144:                                              ; preds = %141
  %145 = call i32 @HAL_RCC_GetSysClockFreq() #5, !dbg !532
  store i32 %145, ptr %3, align 4, !dbg !534
  br label %146, !dbg !535

146:                                              ; preds = %144, %141
  br label %147

147:                                              ; preds = %146, %140
  br label %169, !dbg !536

148:                                              ; preds = %1
  %149 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 12), align 4, !dbg !537
  %150 = and i32 %149, 64, !dbg !539
  store i32 %150, ptr %4, align 4, !dbg !540
  %151 = load i32, ptr %4, align 4, !dbg !541
  %152 = icmp eq i32 %151, 0, !dbg !543
  br i1 %152, label %153, label %158, !dbg !544

153:                                              ; preds = %148
  %154 = load volatile i32, ptr inttoptr (i32 1073876992 to ptr), align 4, !dbg !545
  %155 = and i32 %154, 2, !dbg !546
  %156 = icmp eq i32 %155, 2, !dbg !547
  br i1 %156, label %157, label %158, !dbg !548

157:                                              ; preds = %153
  store i32 8000000, ptr %3, align 4, !dbg !549
  br label %167, !dbg !551

158:                                              ; preds = %153, %148
  %159 = load i32, ptr %4, align 4, !dbg !552
  %160 = icmp eq i32 %159, 64, !dbg !554
  br i1 %160, label %161, label %166, !dbg !555

161:                                              ; preds = %158
  %162 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 8), align 4, !dbg !556
  %163 = and i32 %162, 2, !dbg !557
  %164 = icmp eq i32 %163, 2, !dbg !558
  br i1 %164, label %165, label %166, !dbg !559

165:                                              ; preds = %161
  store i32 32768, ptr %3, align 4, !dbg !560
  br label %166, !dbg !562

166:                                              ; preds = %165, %161, %158
  br label %167

167:                                              ; preds = %166, %157
  br label %169, !dbg !563

168:                                              ; preds = %1
  br label %169, !dbg !564

169:                                              ; preds = %168, %167, %147, %130, %98, %66, %34
  %170 = load i32, ptr %3, align 4, !dbg !566
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4, !dbg !567
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4, !dbg !567
  ret i32 %170, !dbg !568
}

; Function Attrs: optsize
declare !dbg !569 dso_local i32 @HAL_RCC_GetPCLK1Freq() #3

; Function Attrs: optsize
declare !dbg !571 dso_local i32 @HAL_RCC_GetSysClockFreq() #3

; Function Attrs: nounwind optsize
define hidden void @HAL_RCCEx_CRSConfig(ptr noundef %0) #0 !dbg !572 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !586, metadata !DIExpression()), !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %3, metadata !587, metadata !DIExpression()), !dbg !590
  store i32 0, ptr %3, align 4, !dbg !590
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !591
  %5 = or i32 %4, 134217728, !dbg !591
  store volatile i32 %5, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !591
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !592
  %7 = and i32 %6, -134217729, !dbg !592
  store volatile i32 %7, ptr getelementptr inbounds (%struct.RCC_TypeDef, ptr inttoptr (i32 1073876992 to ptr), i32 0, i32 4), align 4, !dbg !592
  %8 = load ptr, ptr %2, align 4, !dbg !593
  %9 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %8, i32 0, i32 0, !dbg !594
  %10 = load i32, ptr %9, align 4, !dbg !594
  %11 = load ptr, ptr %2, align 4, !dbg !595
  %12 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %11, i32 0, i32 1, !dbg !596
  %13 = load i32, ptr %12, align 4, !dbg !596
  %14 = or i32 %10, %13, !dbg !597
  %15 = load ptr, ptr %2, align 4, !dbg !598
  %16 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %15, i32 0, i32 2, !dbg !599
  %17 = load i32, ptr %16, align 4, !dbg !599
  %18 = or i32 %14, %17, !dbg !600
  store i32 %18, ptr %3, align 4, !dbg !601
  %19 = load ptr, ptr %2, align 4, !dbg !602
  %20 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %19, i32 0, i32 3, !dbg !603
  %21 = load i32, ptr %20, align 4, !dbg !603
  %22 = load i32, ptr %3, align 4, !dbg !604
  %23 = or i32 %22, %21, !dbg !604
  store i32 %23, ptr %3, align 4, !dbg !604
  %24 = load ptr, ptr %2, align 4, !dbg !605
  %25 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %24, i32 0, i32 4, !dbg !606
  %26 = load i32, ptr %25, align 4, !dbg !606
  %27 = shl i32 %26, 16, !dbg !607
  %28 = load i32, ptr %3, align 4, !dbg !608
  %29 = or i32 %28, %27, !dbg !608
  store i32 %29, ptr %3, align 4, !dbg !608
  %30 = load i32, ptr %3, align 4, !dbg !609
  store volatile i32 %30, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 1), align 4, !dbg !610
  %31 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !611
  %32 = and i32 %31, -16129, !dbg !612
  %33 = load ptr, ptr %2, align 4, !dbg !613
  %34 = getelementptr inbounds %struct.RCC_CRSInitTypeDef, ptr %33, i32 0, i32 5, !dbg !614
  %35 = load i32, ptr %34, align 4, !dbg !614
  %36 = shl i32 %35, 8, !dbg !615
  %37 = or i32 %32, %36, !dbg !616
  store volatile i32 %37, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !617
  %38 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !618
  %39 = or i32 %38, 96, !dbg !618
  store volatile i32 %39, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !618
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4, !dbg !619
  ret void, !dbg !619
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCCEx_CRSSoftwareSynchronizationGenerate() #0 !dbg !620 {
  %1 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !623
  %2 = or i32 %1, 128, !dbg !623
  store volatile i32 %2, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !623
  ret void, !dbg !624
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCCEx_CRSGetSynchronizationInfo(ptr noundef %0) #0 !dbg !625 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !637, metadata !DIExpression()), !dbg !638
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 1), align 4, !dbg !639
  %4 = and i32 %3, 65535, !dbg !640
  %5 = load ptr, ptr %2, align 4, !dbg !641
  %6 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %5, i32 0, i32 0, !dbg !642
  store i32 %4, ptr %6, align 4, !dbg !643
  %7 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !644
  %8 = and i32 %7, 16128, !dbg !645
  %9 = lshr i32 %8, 8, !dbg !646
  %10 = load ptr, ptr %2, align 4, !dbg !647
  %11 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %10, i32 0, i32 1, !dbg !648
  store i32 %9, ptr %11, align 4, !dbg !649
  %12 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !650
  %13 = and i32 %12, -65536, !dbg !651
  %14 = lshr i32 %13, 16, !dbg !652
  %15 = load ptr, ptr %2, align 4, !dbg !653
  %16 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %15, i32 0, i32 2, !dbg !654
  store i32 %14, ptr %16, align 4, !dbg !655
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !656
  %18 = and i32 %17, 32768, !dbg !657
  %19 = load ptr, ptr %2, align 4, !dbg !658
  %20 = getelementptr inbounds %struct.RCC_CRSSynchroInfoTypeDef, ptr %19, i32 0, i32 3, !dbg !659
  store i32 %18, ptr %20, align 4, !dbg !660
  ret void, !dbg !661
}

; Function Attrs: nounwind optsize
define hidden i32 @HAL_RCCEx_CRSWaitSynchronization(i32 noundef %0) #0 !dbg !662 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !664, metadata !DIExpression()), !dbg !667
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %3, metadata !665, metadata !DIExpression()), !dbg !669
  store i32 0, ptr %3, align 4, !dbg !669
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #4, !dbg !670
  call void @llvm.dbg.declare(metadata ptr %4, metadata !666, metadata !DIExpression()), !dbg !671
  store i32 0, ptr %4, align 4, !dbg !671
  %5 = call i32 @HAL_GetTick() #5, !dbg !672
  store i32 %5, ptr %4, align 4, !dbg !673
  br label %6, !dbg !674

6:                                                ; preds = %79, %1
  %7 = load i32, ptr %2, align 4, !dbg !675
  %8 = icmp ne i32 %7, -1, !dbg !678
  br i1 %8, label %9, label %20, !dbg !679

9:                                                ; preds = %6
  %10 = load i32, ptr %2, align 4, !dbg !680
  %11 = icmp eq i32 %10, 0, !dbg !683
  br i1 %11, label %18, label %12, !dbg !684

12:                                               ; preds = %9
  %13 = call i32 @HAL_GetTick() #5, !dbg !685
  %14 = load i32, ptr %4, align 4, !dbg !686
  %15 = sub i32 %13, %14, !dbg !687
  %16 = load i32, ptr %2, align 4, !dbg !688
  %17 = icmp ugt i32 %15, %16, !dbg !689
  br i1 %17, label %18, label %19, !dbg !690

18:                                               ; preds = %12, %9
  store i32 1, ptr %3, align 4, !dbg !691
  br label %19, !dbg !693

19:                                               ; preds = %18, %12
  br label %20, !dbg !694

20:                                               ; preds = %19, %6
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !695
  %22 = and i32 %21, 1, !dbg !697
  %23 = icmp eq i32 %22, 1, !dbg !698
  br i1 %23, label %24, label %30, !dbg !699

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !dbg !700
  %26 = or i32 %25, 2, !dbg !700
  store i32 %26, ptr %3, align 4, !dbg !700
  br label %27, !dbg !702

27:                                               ; preds = %24
  store volatile i32 1, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !703
  br label %28, !dbg !707

28:                                               ; preds = %27
  br label %29, !dbg !707

29:                                               ; preds = %28
  br label %30, !dbg !708

30:                                               ; preds = %29, %20
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !709
  %32 = and i32 %31, 2, !dbg !711
  %33 = icmp eq i32 %32, 2, !dbg !712
  br i1 %33, label %34, label %40, !dbg !713

34:                                               ; preds = %30
  %35 = load i32, ptr %3, align 4, !dbg !714
  %36 = or i32 %35, 4, !dbg !714
  store i32 %36, ptr %3, align 4, !dbg !714
  br label %37, !dbg !716

37:                                               ; preds = %34
  store volatile i32 2, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !717
  br label %38, !dbg !721

38:                                               ; preds = %37
  br label %39, !dbg !721

39:                                               ; preds = %38
  br label %40, !dbg !722

40:                                               ; preds = %39, %30
  %41 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !723
  %42 = and i32 %41, 1024, !dbg !725
  %43 = icmp eq i32 %42, 1024, !dbg !726
  br i1 %43, label %44, label %50, !dbg !727

44:                                               ; preds = %40
  %45 = load i32, ptr %3, align 4, !dbg !728
  %46 = or i32 %45, 32, !dbg !728
  store i32 %46, ptr %3, align 4, !dbg !728
  br label %47, !dbg !730

47:                                               ; preds = %44
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !731
  br label %48, !dbg !735

48:                                               ; preds = %47
  br label %49, !dbg !735

49:                                               ; preds = %48
  br label %50, !dbg !736

50:                                               ; preds = %49, %40
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !737
  %52 = and i32 %51, 256, !dbg !739
  %53 = icmp eq i32 %52, 256, !dbg !740
  br i1 %53, label %54, label %60, !dbg !741

54:                                               ; preds = %50
  %55 = load i32, ptr %3, align 4, !dbg !742
  %56 = or i32 %55, 8, !dbg !742
  store i32 %56, ptr %3, align 4, !dbg !742
  br label %57, !dbg !744

57:                                               ; preds = %54
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !745
  br label %58, !dbg !749

58:                                               ; preds = %57
  br label %59, !dbg !749

59:                                               ; preds = %58
  br label %60, !dbg !750

60:                                               ; preds = %59, %50
  %61 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !751
  %62 = and i32 %61, 512, !dbg !753
  %63 = icmp eq i32 %62, 512, !dbg !754
  br i1 %63, label %64, label %70, !dbg !755

64:                                               ; preds = %60
  %65 = load i32, ptr %3, align 4, !dbg !756
  %66 = or i32 %65, 16, !dbg !756
  store i32 %66, ptr %3, align 4, !dbg !756
  br label %67, !dbg !758

67:                                               ; preds = %64
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !759
  br label %68, !dbg !763

68:                                               ; preds = %67
  br label %69, !dbg !763

69:                                               ; preds = %68
  br label %70, !dbg !764

70:                                               ; preds = %69, %60
  %71 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !765
  %72 = and i32 %71, 8, !dbg !767
  %73 = icmp eq i32 %72, 8, !dbg !768
  br i1 %73, label %74, label %78, !dbg !769

74:                                               ; preds = %70
  br label %75, !dbg !770

75:                                               ; preds = %74
  store volatile i32 8, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !772
  br label %76, !dbg !776

76:                                               ; preds = %75
  br label %77, !dbg !776

77:                                               ; preds = %76
  br label %78, !dbg !777

78:                                               ; preds = %77, %70
  br label %79, !dbg !778

79:                                               ; preds = %78
  %80 = load i32, ptr %3, align 4, !dbg !779
  %81 = icmp eq i32 0, %80, !dbg !780
  br i1 %81, label %6, label %82, !dbg !778, !llvm.loop !781

82:                                               ; preds = %79
  %83 = load i32, ptr %3, align 4, !dbg !783
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #4, !dbg !784
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4, !dbg !784
  ret i32 %83, !dbg !785
}

; Function Attrs: nounwind optsize
define hidden void @HAL_RCCEx_CRS_IRQHandler() #0 !dbg !786 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #4, !dbg !791
  call void @llvm.dbg.declare(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !792
  store i32 0, ptr %1, align 4, !dbg !792
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #4, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %2, metadata !789, metadata !DIExpression()), !dbg !794
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 2), align 4, !dbg !795
  store i32 %4, ptr %2, align 4, !dbg !794
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #4, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %3, metadata !790, metadata !DIExpression()), !dbg !797
  %5 = load volatile i32, ptr inttoptr (i32 1073769472 to ptr), align 4, !dbg !798
  store i32 %5, ptr %3, align 4, !dbg !797
  %6 = load i32, ptr %2, align 4, !dbg !799
  %7 = and i32 %6, 1, !dbg !801
  %8 = icmp ne i32 %7, 0, !dbg !802
  br i1 %8, label %9, label %14, !dbg !803

9:                                                ; preds = %0
  %10 = load i32, ptr %3, align 4, !dbg !804
  %11 = and i32 %10, 1, !dbg !805
  %12 = icmp ne i32 %11, 0, !dbg !806
  br i1 %12, label %13, label %14, !dbg !807

13:                                               ; preds = %9
  store volatile i32 1, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !808
  call void @HAL_RCCEx_CRS_SyncOkCallback() #5, !dbg !810
  br label %66, !dbg !811

14:                                               ; preds = %9, %0
  %15 = load i32, ptr %2, align 4, !dbg !812
  %16 = and i32 %15, 2, !dbg !814
  %17 = icmp ne i32 %16, 0, !dbg !815
  br i1 %17, label %18, label %23, !dbg !816

18:                                               ; preds = %14
  %19 = load i32, ptr %3, align 4, !dbg !817
  %20 = and i32 %19, 2, !dbg !818
  %21 = icmp ne i32 %20, 0, !dbg !819
  br i1 %21, label %22, label %23, !dbg !820

22:                                               ; preds = %18
  store volatile i32 2, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !821
  call void @HAL_RCCEx_CRS_SyncWarnCallback() #5, !dbg !823
  br label %65, !dbg !824

23:                                               ; preds = %18, %14
  %24 = load i32, ptr %2, align 4, !dbg !825
  %25 = and i32 %24, 8, !dbg !827
  %26 = icmp ne i32 %25, 0, !dbg !828
  br i1 %26, label %27, label %32, !dbg !829

27:                                               ; preds = %23
  %28 = load i32, ptr %3, align 4, !dbg !830
  %29 = and i32 %28, 8, !dbg !831
  %30 = icmp ne i32 %29, 0, !dbg !832
  br i1 %30, label %31, label %32, !dbg !833

31:                                               ; preds = %27
  store volatile i32 8, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !834
  call void @HAL_RCCEx_CRS_ExpectedSyncCallback() #5, !dbg !836
  br label %64, !dbg !837

32:                                               ; preds = %27, %23
  %33 = load i32, ptr %2, align 4, !dbg !838
  %34 = and i32 %33, 4, !dbg !841
  %35 = icmp ne i32 %34, 0, !dbg !842
  br i1 %35, label %36, label %63, !dbg !843

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 4, !dbg !844
  %38 = and i32 %37, 4, !dbg !845
  %39 = icmp ne i32 %38, 0, !dbg !846
  br i1 %39, label %40, label %63, !dbg !847

40:                                               ; preds = %36
  %41 = load i32, ptr %2, align 4, !dbg !848
  %42 = and i32 %41, 256, !dbg !851
  %43 = icmp ne i32 %42, 0, !dbg !852
  br i1 %43, label %44, label %47, !dbg !853

44:                                               ; preds = %40
  %45 = load i32, ptr %1, align 4, !dbg !854
  %46 = or i32 %45, 8, !dbg !854
  store i32 %46, ptr %1, align 4, !dbg !854
  br label %47, !dbg !856

47:                                               ; preds = %44, %40
  %48 = load i32, ptr %2, align 4, !dbg !857
  %49 = and i32 %48, 512, !dbg !859
  %50 = icmp ne i32 %49, 0, !dbg !860
  br i1 %50, label %51, label %54, !dbg !861

51:                                               ; preds = %47
  %52 = load i32, ptr %1, align 4, !dbg !862
  %53 = or i32 %52, 16, !dbg !862
  store i32 %53, ptr %1, align 4, !dbg !862
  br label %54, !dbg !864

54:                                               ; preds = %51, %47
  %55 = load i32, ptr %2, align 4, !dbg !865
  %56 = and i32 %55, 1024, !dbg !867
  %57 = icmp ne i32 %56, 0, !dbg !868
  br i1 %57, label %58, label %61, !dbg !869

58:                                               ; preds = %54
  %59 = load i32, ptr %1, align 4, !dbg !870
  %60 = or i32 %59, 32, !dbg !870
  store i32 %60, ptr %1, align 4, !dbg !870
  br label %61, !dbg !872

61:                                               ; preds = %58, %54
  store volatile i32 4, ptr getelementptr inbounds (%struct.CRS_TypeDef, ptr inttoptr (i32 1073769472 to ptr), i32 0, i32 3), align 4, !dbg !873
  %62 = load i32, ptr %1, align 4, !dbg !874
  call void @HAL_RCCEx_CRS_ErrorCallback(i32 noundef %62) #5, !dbg !875
  br label %63, !dbg !876

63:                                               ; preds = %61, %36, %32
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %22
  br label %66

66:                                               ; preds = %65, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #4, !dbg !877
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #4, !dbg !877
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #4, !dbg !877
  ret void, !dbg !877
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_RCCEx_CRS_SyncOkCallback() #0 !dbg !878 {
  ret void, !dbg !879
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_RCCEx_CRS_SyncWarnCallback() #0 !dbg !880 {
  ret void, !dbg !881
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_RCCEx_CRS_ExpectedSyncCallback() #0 !dbg !882 {
  ret void, !dbg !883
}

; Function Attrs: nounwind optsize
define weak hidden void @HAL_RCCEx_CRS_ErrorCallback(i32 noundef %0) #0 !dbg !884 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !888, metadata !DIExpression()), !dbg !889
  %3 = load i32, ptr %2, align 4, !dbg !890
  ret void, !dbg !891
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !16, splitDebugInlining: false, nameTableKind: None)
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
!61 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!62 = distinct !DISubprogram(name: "HAL_RCCEx_PeriphCLKConfig", scope: !63, file: !63, line: 102, type: !64, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!63 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/src/stm32f0xx_hal_rcc_ex.c", directory: "/home/sri/zephyrproject")
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "HAL_StatusTypeDef", file: !4, line: 44, baseType: !3)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_PeriphCLKInitTypeDef", file: !69, line: 546, baseType: !70)
!69 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc_ex.h", directory: "/home/sri/zephyrproject")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 523, size: 224, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "PeriphClockSelection", scope: !70, file: !69, line: 525, baseType: !24, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "RTCClockSelection", scope: !70, file: !69, line: 528, baseType: !24, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "Usart1ClockSelection", scope: !70, file: !69, line: 531, baseType: !24, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "Usart2ClockSelection", scope: !70, file: !69, line: 534, baseType: !24, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "Usart3ClockSelection", scope: !70, file: !69, line: 537, baseType: !24, size: 32, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "I2c1ClockSelection", scope: !70, file: !69, line: 540, baseType: !24, size: 32, offset: 160)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "CecClockSelection", scope: !70, file: !69, line: 543, baseType: !24, size: 32, offset: 192)
!79 = !{!80, !81, !82, !83, !87}
!80 = !DILocalVariable(name: "PeriphClkInit", arg: 1, scope: !62, file: !63, line: 102, type: !67)
!81 = !DILocalVariable(name: "tickstart", scope: !62, file: !63, line: 104, type: !24)
!82 = !DILocalVariable(name: "temp_reg", scope: !62, file: !63, line: 105, type: !24)
!83 = !DILocalVariable(name: "pwrclkchanged", scope: !84, file: !63, line: 116, type: !86)
!84 = distinct !DILexicalBlock(scope: !85, file: !63, line: 112, column: 3)
!85 = distinct !DILexicalBlock(scope: !62, file: !63, line: 111, column: 6)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FlagStatus", file: !12, line: 171, baseType: !11)
!87 = !DILocalVariable(name: "tmpreg", scope: !88, file: !63, line: 123, type: !23)
!88 = distinct !DILexicalBlock(scope: !89, file: !63, line: 123, column: 8)
!89 = distinct !DILexicalBlock(scope: !90, file: !63, line: 122, column: 5)
!90 = distinct !DILexicalBlock(scope: !84, file: !63, line: 121, column: 8)
!91 = !DILocation(line: 102, column: 71, scope: !62)
!92 = !DILocation(line: 104, column: 3, scope: !62)
!93 = !DILocation(line: 104, column: 12, scope: !62)
!94 = !DILocation(line: 105, column: 3, scope: !62)
!95 = !DILocation(line: 105, column: 12, scope: !62)
!96 = !DILocation(line: 111, column: 8, scope: !85)
!97 = !DILocation(line: 111, column: 23, scope: !85)
!98 = !DILocation(line: 111, column: 45, scope: !85)
!99 = !DILocation(line: 111, column: 62, scope: !85)
!100 = !DILocation(line: 111, column: 6, scope: !62)
!101 = !DILocation(line: 116, column: 5, scope: !84)
!102 = !DILocation(line: 116, column: 16, scope: !84)
!103 = !DILocation(line: 121, column: 76, scope: !90)
!104 = !DILocation(line: 121, column: 84, scope: !90)
!105 = !DILocation(line: 121, column: 106, scope: !90)
!106 = !DILocation(line: 121, column: 8, scope: !84)
!107 = !DILocation(line: 123, column: 5, scope: !89)
!108 = !DILocation(line: 123, column: 10, scope: !88)
!109 = !DILocation(line: 123, column: 28, scope: !88)
!110 = !DILocation(line: 123, column: 113, scope: !88)
!111 = !DILocation(line: 123, column: 214, scope: !88)
!112 = !DILocation(line: 123, column: 223, scope: !88)
!113 = !DILocation(line: 123, column: 144, scope: !88)
!114 = !DILocation(line: 123, column: 252, scope: !88)
!115 = !DILocation(line: 123, column: 260, scope: !89)
!116 = !DILocation(line: 123, column: 260, scope: !88)
!117 = !DILocation(line: 124, column: 21, scope: !89)
!118 = !DILocation(line: 125, column: 5, scope: !89)
!119 = !DILocation(line: 127, column: 60, scope: !120)
!120 = distinct !DILexicalBlock(scope: !84, file: !63, line: 127, column: 8)
!121 = !DILocation(line: 127, column: 64, scope: !120)
!122 = !DILocation(line: 127, column: 85, scope: !120)
!123 = !DILocation(line: 127, column: 8, scope: !84)
!124 = !DILocation(line: 130, column: 62, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !63, line: 128, column: 5)
!126 = !DILocation(line: 133, column: 19, scope: !125)
!127 = !DILocation(line: 133, column: 17, scope: !125)
!128 = !DILocation(line: 135, column: 7, scope: !125)
!129 = !DILocation(line: 135, column: 65, scope: !125)
!130 = !DILocation(line: 135, column: 69, scope: !125)
!131 = !DILocation(line: 135, column: 90, scope: !125)
!132 = !DILocation(line: 137, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !63, line: 137, column: 12)
!134 = distinct !DILexicalBlock(scope: !125, file: !63, line: 136, column: 7)
!135 = !DILocation(line: 137, column: 29, scope: !133)
!136 = !DILocation(line: 137, column: 27, scope: !133)
!137 = !DILocation(line: 137, column: 40, scope: !133)
!138 = !DILocation(line: 137, column: 12, scope: !134)
!139 = !DILocation(line: 139, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !63, line: 138, column: 9)
!141 = distinct !{!141, !128, !142}
!142 = !DILocation(line: 141, column: 7, scope: !125)
!143 = !DILocation(line: 142, column: 5, scope: !125)
!144 = !DILocation(line: 145, column: 83, scope: !84)
!145 = !DILocation(line: 145, column: 88, scope: !84)
!146 = !DILocation(line: 145, column: 14, scope: !84)
!147 = !DILocation(line: 146, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !84, file: !63, line: 146, column: 8)
!149 = !DILocation(line: 146, column: 18, scope: !148)
!150 = !DILocation(line: 146, column: 34, scope: !148)
!151 = !DILocation(line: 146, column: 38, scope: !148)
!152 = !DILocation(line: 146, column: 51, scope: !148)
!153 = !DILocation(line: 146, column: 66, scope: !148)
!154 = !DILocation(line: 146, column: 84, scope: !148)
!155 = !DILocation(line: 146, column: 47, scope: !148)
!156 = !DILocation(line: 146, column: 8, scope: !84)
!157 = !DILocation(line: 149, column: 85, scope: !158)
!158 = distinct !DILexicalBlock(scope: !148, file: !63, line: 147, column: 5)
!159 = !DILocation(line: 149, column: 90, scope: !158)
!160 = !DILocation(line: 149, column: 16, scope: !158)
!161 = !DILocation(line: 151, column: 81, scope: !158)
!162 = !DILocation(line: 152, column: 81, scope: !158)
!163 = !DILocation(line: 154, column: 80, scope: !158)
!164 = !DILocation(line: 154, column: 78, scope: !158)
!165 = !DILocation(line: 157, column: 14, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !63, line: 157, column: 11)
!167 = !DILocation(line: 157, column: 24, scope: !166)
!168 = !DILocation(line: 157, column: 45, scope: !166)
!169 = !DILocation(line: 157, column: 11, scope: !158)
!170 = !DILocation(line: 160, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !63, line: 158, column: 7)
!172 = !DILocation(line: 160, column: 19, scope: !171)
!173 = !DILocation(line: 163, column: 9, scope: !171)
!174 = !DILocation(line: 163, column: 434, scope: !171)
!175 = !DILocation(line: 163, column: 512, scope: !171)
!176 = !DILocation(line: 163, column: 585, scope: !171)
!177 = !DILocation(line: 165, column: 15, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !63, line: 165, column: 14)
!179 = distinct !DILexicalBlock(scope: !171, file: !63, line: 164, column: 9)
!180 = !DILocation(line: 165, column: 31, scope: !178)
!181 = !DILocation(line: 165, column: 29, scope: !178)
!182 = !DILocation(line: 165, column: 42, scope: !178)
!183 = !DILocation(line: 165, column: 14, scope: !179)
!184 = !DILocation(line: 167, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !178, file: !63, line: 166, column: 11)
!186 = distinct !{!186, !173, !187}
!187 = !DILocation(line: 169, column: 9, scope: !171)
!188 = !DILocation(line: 170, column: 7, scope: !171)
!189 = !DILocation(line: 171, column: 5, scope: !158)
!190 = !DILocation(line: 172, column: 155, scope: !84)
!191 = !DILocation(line: 172, column: 163, scope: !84)
!192 = !DILocation(line: 172, column: 191, scope: !84)
!193 = !DILocation(line: 172, column: 206, scope: !84)
!194 = !DILocation(line: 172, column: 187, scope: !84)
!195 = !DILocation(line: 172, column: 81, scope: !84)
!196 = !DILocation(line: 175, column: 8, scope: !197)
!197 = distinct !DILexicalBlock(scope: !84, file: !63, line: 175, column: 8)
!198 = !DILocation(line: 175, column: 22, scope: !197)
!199 = !DILocation(line: 175, column: 8, scope: !84)
!200 = !DILocation(line: 177, column: 82, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !63, line: 176, column: 5)
!202 = !DILocation(line: 178, column: 5, scope: !201)
!203 = !DILocation(line: 179, column: 3, scope: !85)
!204 = !DILocation(line: 179, column: 3, scope: !84)
!205 = !DILocation(line: 182, column: 8, scope: !206)
!206 = distinct !DILexicalBlock(scope: !62, file: !63, line: 182, column: 6)
!207 = !DILocation(line: 182, column: 23, scope: !206)
!208 = !DILocation(line: 182, column: 45, scope: !206)
!209 = !DILocation(line: 182, column: 62, scope: !206)
!210 = !DILocation(line: 182, column: 6, scope: !62)
!211 = !DILocation(line: 188, column: 156, scope: !212)
!212 = distinct !DILexicalBlock(scope: !206, file: !63, line: 183, column: 3)
!213 = !DILocation(line: 188, column: 165, scope: !212)
!214 = !DILocation(line: 188, column: 203, scope: !212)
!215 = !DILocation(line: 188, column: 218, scope: !212)
!216 = !DILocation(line: 188, column: 189, scope: !212)
!217 = !DILocation(line: 188, column: 82, scope: !212)
!218 = !DILocation(line: 189, column: 3, scope: !212)
!219 = !DILocation(line: 194, column: 8, scope: !220)
!220 = distinct !DILexicalBlock(scope: !62, file: !63, line: 194, column: 6)
!221 = !DILocation(line: 194, column: 23, scope: !220)
!222 = !DILocation(line: 194, column: 45, scope: !220)
!223 = !DILocation(line: 194, column: 62, scope: !220)
!224 = !DILocation(line: 194, column: 6, scope: !62)
!225 = !DILocation(line: 200, column: 156, scope: !226)
!226 = distinct !DILexicalBlock(scope: !220, file: !63, line: 195, column: 3)
!227 = !DILocation(line: 200, column: 165, scope: !226)
!228 = !DILocation(line: 200, column: 204, scope: !226)
!229 = !DILocation(line: 200, column: 219, scope: !226)
!230 = !DILocation(line: 200, column: 190, scope: !226)
!231 = !DILocation(line: 200, column: 82, scope: !226)
!232 = !DILocation(line: 201, column: 3, scope: !226)
!233 = !DILocation(line: 207, column: 8, scope: !234)
!234 = distinct !DILexicalBlock(scope: !62, file: !63, line: 207, column: 6)
!235 = !DILocation(line: 207, column: 23, scope: !234)
!236 = !DILocation(line: 207, column: 45, scope: !234)
!237 = !DILocation(line: 207, column: 62, scope: !234)
!238 = !DILocation(line: 207, column: 6, scope: !62)
!239 = !DILocation(line: 213, column: 156, scope: !240)
!240 = distinct !DILexicalBlock(scope: !234, file: !63, line: 208, column: 3)
!241 = !DILocation(line: 213, column: 165, scope: !240)
!242 = !DILocation(line: 213, column: 204, scope: !240)
!243 = !DILocation(line: 213, column: 219, scope: !240)
!244 = !DILocation(line: 213, column: 190, scope: !240)
!245 = !DILocation(line: 213, column: 82, scope: !240)
!246 = !DILocation(line: 214, column: 3, scope: !240)
!247 = !DILocation(line: 218, column: 8, scope: !248)
!248 = distinct !DILexicalBlock(scope: !62, file: !63, line: 218, column: 6)
!249 = !DILocation(line: 218, column: 23, scope: !248)
!250 = !DILocation(line: 218, column: 45, scope: !248)
!251 = !DILocation(line: 218, column: 62, scope: !248)
!252 = !DILocation(line: 218, column: 6, scope: !62)
!253 = !DILocation(line: 224, column: 156, scope: !254)
!254 = distinct !DILexicalBlock(scope: !248, file: !63, line: 219, column: 3)
!255 = !DILocation(line: 224, column: 165, scope: !254)
!256 = !DILocation(line: 224, column: 203, scope: !254)
!257 = !DILocation(line: 224, column: 218, scope: !254)
!258 = !DILocation(line: 224, column: 189, scope: !254)
!259 = !DILocation(line: 224, column: 82, scope: !254)
!260 = !DILocation(line: 225, column: 3, scope: !254)
!261 = !DILocation(line: 244, column: 8, scope: !262)
!262 = distinct !DILexicalBlock(scope: !62, file: !63, line: 244, column: 6)
!263 = !DILocation(line: 244, column: 23, scope: !262)
!264 = !DILocation(line: 244, column: 45, scope: !262)
!265 = !DILocation(line: 244, column: 62, scope: !262)
!266 = !DILocation(line: 244, column: 6, scope: !62)
!267 = !DILocation(line: 250, column: 156, scope: !268)
!268 = distinct !DILexicalBlock(scope: !262, file: !63, line: 245, column: 3)
!269 = !DILocation(line: 250, column: 165, scope: !268)
!270 = !DILocation(line: 250, column: 203, scope: !268)
!271 = !DILocation(line: 250, column: 218, scope: !268)
!272 = !DILocation(line: 250, column: 189, scope: !268)
!273 = !DILocation(line: 250, column: 82, scope: !268)
!274 = !DILocation(line: 251, column: 3, scope: !268)
!275 = !DILocation(line: 257, column: 3, scope: !62)
!276 = !DILocation(line: 258, column: 1, scope: !62)
!277 = !DISubprogram(name: "HAL_GetTick", scope: !278, file: !278, line: 546, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!278 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal.h", directory: "/home/sri/zephyrproject")
!279 = !DISubroutineType(types: !280)
!280 = !{!24}
!281 = !{}
!282 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKConfig", scope: !63, file: !63, line: 268, type: !283, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !67}
!285 = !{!286}
!286 = !DILocalVariable(name: "PeriphClkInit", arg: 1, scope: !282, file: !63, line: 268, type: !67)
!287 = !DILocation(line: 268, column: 61, scope: !282)
!288 = !DILocation(line: 272, column: 3, scope: !282)
!289 = !DILocation(line: 272, column: 18, scope: !282)
!290 = !DILocation(line: 272, column: 39, scope: !282)
!291 = !DILocation(line: 274, column: 107, scope: !282)
!292 = !DILocation(line: 274, column: 113, scope: !282)
!293 = !DILocation(line: 274, column: 3, scope: !282)
!294 = !DILocation(line: 274, column: 18, scope: !282)
!295 = !DILocation(line: 274, column: 36, scope: !282)
!296 = !DILocation(line: 276, column: 121, scope: !282)
!297 = !DILocation(line: 276, column: 128, scope: !282)
!298 = !DILocation(line: 276, column: 3, scope: !282)
!299 = !DILocation(line: 276, column: 18, scope: !282)
!300 = !DILocation(line: 276, column: 39, scope: !282)
!301 = !DILocation(line: 278, column: 119, scope: !282)
!302 = !DILocation(line: 278, column: 126, scope: !282)
!303 = !DILocation(line: 278, column: 3, scope: !282)
!304 = !DILocation(line: 278, column: 18, scope: !282)
!305 = !DILocation(line: 278, column: 37, scope: !282)
!306 = !DILocation(line: 282, column: 3, scope: !282)
!307 = !DILocation(line: 282, column: 18, scope: !282)
!308 = !DILocation(line: 282, column: 39, scope: !282)
!309 = !DILocation(line: 284, column: 121, scope: !282)
!310 = !DILocation(line: 284, column: 128, scope: !282)
!311 = !DILocation(line: 284, column: 3, scope: !282)
!312 = !DILocation(line: 284, column: 18, scope: !282)
!313 = !DILocation(line: 284, column: 39, scope: !282)
!314 = !DILocation(line: 289, column: 3, scope: !282)
!315 = !DILocation(line: 289, column: 18, scope: !282)
!316 = !DILocation(line: 289, column: 39, scope: !282)
!317 = !DILocation(line: 291, column: 121, scope: !282)
!318 = !DILocation(line: 291, column: 128, scope: !282)
!319 = !DILocation(line: 291, column: 3, scope: !282)
!320 = !DILocation(line: 291, column: 18, scope: !282)
!321 = !DILocation(line: 291, column: 39, scope: !282)
!322 = !DILocation(line: 304, column: 3, scope: !282)
!323 = !DILocation(line: 304, column: 18, scope: !282)
!324 = !DILocation(line: 304, column: 39, scope: !282)
!325 = !DILocation(line: 306, column: 118, scope: !282)
!326 = !DILocation(line: 306, column: 125, scope: !282)
!327 = !DILocation(line: 306, column: 3, scope: !282)
!328 = !DILocation(line: 306, column: 18, scope: !282)
!329 = !DILocation(line: 306, column: 36, scope: !282)
!330 = !DILocation(line: 312, column: 1, scope: !282)
!331 = distinct !DISubprogram(name: "HAL_RCCEx_GetPeriphCLKFreq", scope: !63, file: !63, line: 368, type: !332, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!24, !24}
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(name: "PeriphClk", arg: 1, scope: !331, file: !63, line: 368, type: !24)
!336 = !DILocalVariable(name: "frequency", scope: !331, file: !63, line: 371, type: !24)
!337 = !DILocalVariable(name: "srcclk", scope: !331, file: !63, line: 373, type: !24)
!338 = !DILocation(line: 368, column: 46, scope: !331)
!339 = !DILocation(line: 371, column: 3, scope: !331)
!340 = !DILocation(line: 371, column: 12, scope: !331)
!341 = !DILocation(line: 373, column: 3, scope: !331)
!342 = !DILocation(line: 373, column: 12, scope: !331)
!343 = !DILocation(line: 381, column: 11, scope: !331)
!344 = !DILocation(line: 381, column: 3, scope: !331)
!345 = !DILocation(line: 386, column: 85, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !63, line: 384, column: 5)
!347 = distinct !DILexicalBlock(scope: !331, file: !63, line: 382, column: 3)
!348 = !DILocation(line: 386, column: 91, scope: !346)
!349 = !DILocation(line: 386, column: 14, scope: !346)
!350 = !DILocation(line: 389, column: 12, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !63, line: 389, column: 11)
!352 = !DILocation(line: 389, column: 19, scope: !351)
!353 = !DILocation(line: 389, column: 37, scope: !351)
!354 = !DILocation(line: 389, column: 110, scope: !351)
!355 = !DILocation(line: 389, column: 116, scope: !351)
!356 = !DILocation(line: 389, column: 137, scope: !351)
!357 = !DILocation(line: 389, column: 11, scope: !346)
!358 = !DILocation(line: 391, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !351, file: !63, line: 390, column: 7)
!360 = !DILocation(line: 392, column: 7, scope: !359)
!361 = !DILocation(line: 394, column: 17, scope: !362)
!362 = distinct !DILexicalBlock(scope: !351, file: !63, line: 394, column: 16)
!363 = !DILocation(line: 394, column: 24, scope: !362)
!364 = !DILocation(line: 394, column: 42, scope: !362)
!365 = !DILocation(line: 394, column: 115, scope: !362)
!366 = !DILocation(line: 394, column: 120, scope: !362)
!367 = !DILocation(line: 394, column: 141, scope: !362)
!368 = !DILocation(line: 394, column: 16, scope: !351)
!369 = !DILocation(line: 396, column: 19, scope: !370)
!370 = distinct !DILexicalBlock(scope: !362, file: !63, line: 395, column: 7)
!371 = !DILocation(line: 397, column: 7, scope: !370)
!372 = !DILocation(line: 399, column: 17, scope: !373)
!373 = distinct !DILexicalBlock(scope: !362, file: !63, line: 399, column: 16)
!374 = !DILocation(line: 399, column: 24, scope: !373)
!375 = !DILocation(line: 399, column: 42, scope: !373)
!376 = !DILocation(line: 399, column: 115, scope: !373)
!377 = !DILocation(line: 399, column: 119, scope: !373)
!378 = !DILocation(line: 399, column: 141, scope: !373)
!379 = !DILocation(line: 399, column: 16, scope: !362)
!380 = !DILocation(line: 401, column: 19, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !63, line: 400, column: 7)
!382 = !DILocation(line: 402, column: 7, scope: !381)
!383 = !DILocation(line: 403, column: 7, scope: !346)
!384 = !DILocation(line: 408, column: 96, scope: !385)
!385 = distinct !DILexicalBlock(scope: !347, file: !63, line: 406, column: 5)
!386 = !DILocation(line: 408, column: 103, scope: !385)
!387 = !DILocation(line: 408, column: 14, scope: !385)
!388 = !DILocation(line: 411, column: 11, scope: !389)
!389 = distinct !DILexicalBlock(scope: !385, file: !63, line: 411, column: 11)
!390 = !DILocation(line: 411, column: 18, scope: !389)
!391 = !DILocation(line: 411, column: 11, scope: !385)
!392 = !DILocation(line: 413, column: 21, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !63, line: 412, column: 7)
!394 = !DILocation(line: 413, column: 19, scope: !393)
!395 = !DILocation(line: 414, column: 7, scope: !393)
!396 = !DILocation(line: 416, column: 17, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !63, line: 416, column: 16)
!398 = !DILocation(line: 416, column: 24, scope: !397)
!399 = !DILocation(line: 416, column: 42, scope: !397)
!400 = !DILocation(line: 416, column: 115, scope: !397)
!401 = !DILocation(line: 416, column: 119, scope: !397)
!402 = !DILocation(line: 416, column: 140, scope: !397)
!403 = !DILocation(line: 416, column: 16, scope: !389)
!404 = !DILocation(line: 418, column: 19, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !63, line: 417, column: 7)
!406 = !DILocation(line: 419, column: 7, scope: !405)
!407 = !DILocation(line: 421, column: 16, scope: !408)
!408 = distinct !DILexicalBlock(scope: !397, file: !63, line: 421, column: 16)
!409 = !DILocation(line: 421, column: 23, scope: !408)
!410 = !DILocation(line: 421, column: 16, scope: !397)
!411 = !DILocation(line: 423, column: 21, scope: !412)
!412 = distinct !DILexicalBlock(scope: !408, file: !63, line: 422, column: 7)
!413 = !DILocation(line: 423, column: 19, scope: !412)
!414 = !DILocation(line: 424, column: 7, scope: !412)
!415 = !DILocation(line: 426, column: 17, scope: !416)
!416 = distinct !DILexicalBlock(scope: !408, file: !63, line: 426, column: 16)
!417 = !DILocation(line: 426, column: 24, scope: !416)
!418 = !DILocation(line: 426, column: 42, scope: !416)
!419 = !DILocation(line: 426, column: 115, scope: !416)
!420 = !DILocation(line: 426, column: 121, scope: !416)
!421 = !DILocation(line: 426, column: 142, scope: !416)
!422 = !DILocation(line: 426, column: 16, scope: !408)
!423 = !DILocation(line: 428, column: 19, scope: !424)
!424 = distinct !DILexicalBlock(scope: !416, file: !63, line: 427, column: 7)
!425 = !DILocation(line: 429, column: 7, scope: !424)
!426 = !DILocation(line: 430, column: 7, scope: !385)
!427 = !DILocation(line: 436, column: 96, scope: !428)
!428 = distinct !DILexicalBlock(scope: !347, file: !63, line: 434, column: 5)
!429 = !DILocation(line: 436, column: 103, scope: !428)
!430 = !DILocation(line: 436, column: 14, scope: !428)
!431 = !DILocation(line: 439, column: 11, scope: !432)
!432 = distinct !DILexicalBlock(scope: !428, file: !63, line: 439, column: 11)
!433 = !DILocation(line: 439, column: 18, scope: !432)
!434 = !DILocation(line: 439, column: 11, scope: !428)
!435 = !DILocation(line: 441, column: 21, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !63, line: 440, column: 7)
!437 = !DILocation(line: 441, column: 19, scope: !436)
!438 = !DILocation(line: 442, column: 7, scope: !436)
!439 = !DILocation(line: 444, column: 17, scope: !440)
!440 = distinct !DILexicalBlock(scope: !432, file: !63, line: 444, column: 16)
!441 = !DILocation(line: 444, column: 24, scope: !440)
!442 = !DILocation(line: 444, column: 42, scope: !440)
!443 = !DILocation(line: 444, column: 115, scope: !440)
!444 = !DILocation(line: 444, column: 119, scope: !440)
!445 = !DILocation(line: 444, column: 140, scope: !440)
!446 = !DILocation(line: 444, column: 16, scope: !432)
!447 = !DILocation(line: 446, column: 19, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !63, line: 445, column: 7)
!449 = !DILocation(line: 447, column: 7, scope: !448)
!450 = !DILocation(line: 449, column: 16, scope: !451)
!451 = distinct !DILexicalBlock(scope: !440, file: !63, line: 449, column: 16)
!452 = !DILocation(line: 449, column: 23, scope: !451)
!453 = !DILocation(line: 449, column: 16, scope: !440)
!454 = !DILocation(line: 451, column: 21, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !63, line: 450, column: 7)
!456 = !DILocation(line: 451, column: 19, scope: !455)
!457 = !DILocation(line: 452, column: 7, scope: !455)
!458 = !DILocation(line: 454, column: 17, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !63, line: 454, column: 16)
!460 = !DILocation(line: 454, column: 24, scope: !459)
!461 = !DILocation(line: 454, column: 42, scope: !459)
!462 = !DILocation(line: 454, column: 115, scope: !459)
!463 = !DILocation(line: 454, column: 121, scope: !459)
!464 = !DILocation(line: 454, column: 142, scope: !459)
!465 = !DILocation(line: 454, column: 16, scope: !451)
!466 = !DILocation(line: 456, column: 19, scope: !467)
!467 = distinct !DILexicalBlock(scope: !459, file: !63, line: 455, column: 7)
!468 = !DILocation(line: 457, column: 7, scope: !467)
!469 = !DILocation(line: 458, column: 7, scope: !428)
!470 = !DILocation(line: 465, column: 96, scope: !471)
!471 = distinct !DILexicalBlock(scope: !347, file: !63, line: 463, column: 5)
!472 = !DILocation(line: 465, column: 103, scope: !471)
!473 = !DILocation(line: 465, column: 14, scope: !471)
!474 = !DILocation(line: 468, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !63, line: 468, column: 11)
!476 = !DILocation(line: 468, column: 18, scope: !475)
!477 = !DILocation(line: 468, column: 11, scope: !471)
!478 = !DILocation(line: 470, column: 21, scope: !479)
!479 = distinct !DILexicalBlock(scope: !475, file: !63, line: 469, column: 7)
!480 = !DILocation(line: 470, column: 19, scope: !479)
!481 = !DILocation(line: 471, column: 7, scope: !479)
!482 = !DILocation(line: 473, column: 17, scope: !483)
!483 = distinct !DILexicalBlock(scope: !475, file: !63, line: 473, column: 16)
!484 = !DILocation(line: 473, column: 24, scope: !483)
!485 = !DILocation(line: 473, column: 42, scope: !483)
!486 = !DILocation(line: 473, column: 115, scope: !483)
!487 = !DILocation(line: 473, column: 119, scope: !483)
!488 = !DILocation(line: 473, column: 140, scope: !483)
!489 = !DILocation(line: 473, column: 16, scope: !475)
!490 = !DILocation(line: 475, column: 19, scope: !491)
!491 = distinct !DILexicalBlock(scope: !483, file: !63, line: 474, column: 7)
!492 = !DILocation(line: 476, column: 7, scope: !491)
!493 = !DILocation(line: 478, column: 16, scope: !494)
!494 = distinct !DILexicalBlock(scope: !483, file: !63, line: 478, column: 16)
!495 = !DILocation(line: 478, column: 23, scope: !494)
!496 = !DILocation(line: 478, column: 16, scope: !483)
!497 = !DILocation(line: 480, column: 21, scope: !498)
!498 = distinct !DILexicalBlock(scope: !494, file: !63, line: 479, column: 7)
!499 = !DILocation(line: 480, column: 19, scope: !498)
!500 = !DILocation(line: 481, column: 7, scope: !498)
!501 = !DILocation(line: 483, column: 17, scope: !502)
!502 = distinct !DILexicalBlock(scope: !494, file: !63, line: 483, column: 16)
!503 = !DILocation(line: 483, column: 24, scope: !502)
!504 = !DILocation(line: 483, column: 42, scope: !502)
!505 = !DILocation(line: 483, column: 115, scope: !502)
!506 = !DILocation(line: 483, column: 121, scope: !502)
!507 = !DILocation(line: 483, column: 142, scope: !502)
!508 = !DILocation(line: 483, column: 16, scope: !494)
!509 = !DILocation(line: 485, column: 19, scope: !510)
!510 = distinct !DILexicalBlock(scope: !502, file: !63, line: 484, column: 7)
!511 = !DILocation(line: 486, column: 7, scope: !510)
!512 = !DILocation(line: 487, column: 7, scope: !471)
!513 = !DILocation(line: 493, column: 96, scope: !514)
!514 = distinct !DILexicalBlock(scope: !347, file: !63, line: 491, column: 5)
!515 = !DILocation(line: 493, column: 103, scope: !514)
!516 = !DILocation(line: 493, column: 14, scope: !514)
!517 = !DILocation(line: 496, column: 12, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !63, line: 496, column: 11)
!519 = !DILocation(line: 496, column: 19, scope: !518)
!520 = !DILocation(line: 496, column: 37, scope: !518)
!521 = !DILocation(line: 496, column: 110, scope: !518)
!522 = !DILocation(line: 496, column: 114, scope: !518)
!523 = !DILocation(line: 496, column: 135, scope: !518)
!524 = !DILocation(line: 496, column: 11, scope: !514)
!525 = !DILocation(line: 498, column: 19, scope: !526)
!526 = distinct !DILexicalBlock(scope: !518, file: !63, line: 497, column: 7)
!527 = !DILocation(line: 499, column: 7, scope: !526)
!528 = !DILocation(line: 501, column: 16, scope: !529)
!529 = distinct !DILexicalBlock(scope: !518, file: !63, line: 501, column: 16)
!530 = !DILocation(line: 501, column: 23, scope: !529)
!531 = !DILocation(line: 501, column: 16, scope: !518)
!532 = !DILocation(line: 503, column: 21, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !63, line: 502, column: 7)
!534 = !DILocation(line: 503, column: 19, scope: !533)
!535 = !DILocation(line: 504, column: 7, scope: !533)
!536 = !DILocation(line: 505, column: 7, scope: !514)
!537 = !DILocation(line: 559, column: 96, scope: !538)
!538 = distinct !DILexicalBlock(scope: !347, file: !63, line: 557, column: 5)
!539 = !DILocation(line: 559, column: 103, scope: !538)
!540 = !DILocation(line: 559, column: 14, scope: !538)
!541 = !DILocation(line: 562, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !63, line: 562, column: 11)
!543 = !DILocation(line: 562, column: 19, scope: !542)
!544 = !DILocation(line: 562, column: 37, scope: !542)
!545 = !DILocation(line: 562, column: 110, scope: !542)
!546 = !DILocation(line: 562, column: 114, scope: !542)
!547 = !DILocation(line: 562, column: 135, scope: !542)
!548 = !DILocation(line: 562, column: 11, scope: !538)
!549 = !DILocation(line: 564, column: 19, scope: !550)
!550 = distinct !DILexicalBlock(scope: !542, file: !63, line: 563, column: 7)
!551 = !DILocation(line: 565, column: 7, scope: !550)
!552 = !DILocation(line: 567, column: 17, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !63, line: 567, column: 16)
!554 = !DILocation(line: 567, column: 24, scope: !553)
!555 = !DILocation(line: 567, column: 44, scope: !553)
!556 = !DILocation(line: 567, column: 117, scope: !553)
!557 = !DILocation(line: 567, column: 123, scope: !553)
!558 = !DILocation(line: 567, column: 144, scope: !553)
!559 = !DILocation(line: 567, column: 16, scope: !542)
!560 = !DILocation(line: 569, column: 19, scope: !561)
!561 = distinct !DILexicalBlock(scope: !553, file: !63, line: 568, column: 7)
!562 = !DILocation(line: 570, column: 7, scope: !561)
!563 = !DILocation(line: 571, column: 7, scope: !538)
!564 = !DILocation(line: 576, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !347, file: !63, line: 575, column: 5)
!566 = !DILocation(line: 579, column: 10, scope: !331)
!567 = !DILocation(line: 580, column: 1, scope: !331)
!568 = !DILocation(line: 579, column: 3, scope: !331)
!569 = !DISubprogram(name: "HAL_RCC_GetPCLK1Freq", scope: !570, file: !570, line: 1657, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!570 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/drivers/include/stm32f0xx_hal_rcc.h", directory: "/home/sri/zephyrproject")
!571 = !DISubprogram(name: "HAL_RCC_GetSysClockFreq", scope: !570, file: !570, line: 1655, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !281)
!572 = distinct !DISubprogram(name: "HAL_RCCEx_CRSConfig", scope: !63, file: !63, line: 657, type: !573, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 32)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_CRSInitTypeDef", file: !69, line: 575, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 554, size: 192, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "Prescaler", scope: !577, file: !69, line: 556, baseType: !24, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "Source", scope: !577, file: !69, line: 559, baseType: !24, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "Polarity", scope: !577, file: !69, line: 562, baseType: !24, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ReloadValue", scope: !577, file: !69, line: 565, baseType: !24, size: 32, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ErrorLimitValue", scope: !577, file: !69, line: 569, baseType: !24, size: 32, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48CalibrationValue", scope: !577, file: !69, line: 572, baseType: !24, size: 32, offset: 160)
!585 = !{!586, !587}
!586 = !DILocalVariable(name: "pInit", arg: 1, scope: !572, file: !63, line: 657, type: !575)
!587 = !DILocalVariable(name: "value", scope: !572, file: !63, line: 659, type: !24)
!588 = !DILocation(line: 657, column: 46, scope: !572)
!589 = !DILocation(line: 659, column: 3, scope: !572)
!590 = !DILocation(line: 659, column: 12, scope: !572)
!591 = !DILocation(line: 672, column: 79, scope: !572)
!592 = !DILocation(line: 673, column: 79, scope: !572)
!593 = !DILocation(line: 678, column: 12, scope: !572)
!594 = !DILocation(line: 678, column: 19, scope: !572)
!595 = !DILocation(line: 678, column: 31, scope: !572)
!596 = !DILocation(line: 678, column: 38, scope: !572)
!597 = !DILocation(line: 678, column: 29, scope: !572)
!598 = !DILocation(line: 678, column: 47, scope: !572)
!599 = !DILocation(line: 678, column: 54, scope: !572)
!600 = !DILocation(line: 678, column: 45, scope: !572)
!601 = !DILocation(line: 678, column: 9, scope: !572)
!602 = !DILocation(line: 680, column: 12, scope: !572)
!603 = !DILocation(line: 680, column: 19, scope: !572)
!604 = !DILocation(line: 680, column: 9, scope: !572)
!605 = !DILocation(line: 682, column: 13, scope: !572)
!606 = !DILocation(line: 682, column: 20, scope: !572)
!607 = !DILocation(line: 682, column: 36, scope: !572)
!608 = !DILocation(line: 682, column: 9, scope: !572)
!609 = !DILocation(line: 683, column: 63, scope: !572)
!610 = !DILocation(line: 683, column: 60, scope: !572)
!611 = !DILocation(line: 687, column: 117, scope: !572)
!612 = !DILocation(line: 687, column: 123, scope: !572)
!613 = !DILocation(line: 687, column: 152, scope: !572)
!614 = !DILocation(line: 687, column: 159, scope: !572)
!615 = !DILocation(line: 687, column: 181, scope: !572)
!616 = !DILocation(line: 687, column: 148, scope: !572)
!617 = !DILocation(line: 687, column: 60, scope: !572)
!618 = !DILocation(line: 692, column: 58, scope: !572)
!619 = !DILocation(line: 693, column: 1, scope: !572)
!620 = distinct !DISubprogram(name: "HAL_RCCEx_CRSSoftwareSynchronizationGenerate", scope: !63, file: !63, line: 699, type: !621, scopeLine: 700, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!621 = !DISubroutineType(types: !622)
!622 = !{null}
!623 = !DILocation(line: 701, column: 58, scope: !620)
!624 = !DILocation(line: 702, column: 1, scope: !620)
!625 = distinct !DISubprogram(name: "HAL_RCCEx_CRSGetSynchronizationInfo", scope: !63, file: !63, line: 709, type: !626, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !636)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "RCC_CRSSynchroInfoTypeDef", file: !69, line: 597, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 580, size: 128, elements: !631)
!631 = !{!632, !633, !634, !635}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ReloadValue", scope: !630, file: !69, line: 582, baseType: !24, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "HSI48CalibrationValue", scope: !630, file: !69, line: 585, baseType: !24, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "FreqErrorCapture", scope: !630, file: !69, line: 588, baseType: !24, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "FreqErrorDirection", scope: !630, file: !69, line: 592, baseType: !24, size: 32, offset: 96)
!636 = !{!637}
!637 = !DILocalVariable(name: "pSynchroInfo", arg: 1, scope: !625, file: !63, line: 709, type: !628)
!638 = !DILocation(line: 709, column: 69, scope: !625)
!639 = !DILocation(line: 715, column: 93, scope: !625)
!640 = !DILocation(line: 715, column: 99, scope: !625)
!641 = !DILocation(line: 715, column: 3, scope: !625)
!642 = !DILocation(line: 715, column: 17, scope: !625)
!643 = !DILocation(line: 715, column: 29, scope: !625)
!644 = !DILocation(line: 718, column: 103, scope: !625)
!645 = !DILocation(line: 718, column: 107, scope: !625)
!646 = !DILocation(line: 718, column: 129, scope: !625)
!647 = !DILocation(line: 718, column: 3, scope: !625)
!648 = !DILocation(line: 718, column: 17, scope: !625)
!649 = !DILocation(line: 718, column: 39, scope: !625)
!650 = !DILocation(line: 721, column: 98, scope: !625)
!651 = !DILocation(line: 721, column: 103, scope: !625)
!652 = !DILocation(line: 721, column: 128, scope: !625)
!653 = !DILocation(line: 721, column: 3, scope: !625)
!654 = !DILocation(line: 721, column: 17, scope: !625)
!655 = !DILocation(line: 721, column: 34, scope: !625)
!656 = !DILocation(line: 724, column: 100, scope: !625)
!657 = !DILocation(line: 724, column: 105, scope: !625)
!658 = !DILocation(line: 724, column: 3, scope: !625)
!659 = !DILocation(line: 724, column: 17, scope: !625)
!660 = !DILocation(line: 724, column: 36, scope: !625)
!661 = !DILocation(line: 725, column: 1, scope: !625)
!662 = distinct !DISubprogram(name: "HAL_RCCEx_CRSWaitSynchronization", scope: !63, file: !63, line: 742, type: !332, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!663 = !{!664, !665, !666}
!664 = !DILocalVariable(name: "Timeout", arg: 1, scope: !662, file: !63, line: 742, type: !24)
!665 = !DILocalVariable(name: "crsstatus", scope: !662, file: !63, line: 744, type: !24)
!666 = !DILocalVariable(name: "tickstart", scope: !662, file: !63, line: 745, type: !24)
!667 = !DILocation(line: 742, column: 52, scope: !662)
!668 = !DILocation(line: 744, column: 3, scope: !662)
!669 = !DILocation(line: 744, column: 12, scope: !662)
!670 = !DILocation(line: 745, column: 3, scope: !662)
!671 = !DILocation(line: 745, column: 12, scope: !662)
!672 = !DILocation(line: 748, column: 15, scope: !662)
!673 = !DILocation(line: 748, column: 13, scope: !662)
!674 = !DILocation(line: 751, column: 3, scope: !662)
!675 = !DILocation(line: 753, column: 8, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !63, line: 753, column: 8)
!677 = distinct !DILexicalBlock(scope: !662, file: !63, line: 752, column: 3)
!678 = !DILocation(line: 753, column: 16, scope: !676)
!679 = !DILocation(line: 753, column: 8, scope: !677)
!680 = !DILocation(line: 755, column: 11, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !63, line: 755, column: 10)
!682 = distinct !DILexicalBlock(scope: !676, file: !63, line: 754, column: 5)
!683 = !DILocation(line: 755, column: 19, scope: !681)
!684 = !DILocation(line: 755, column: 26, scope: !681)
!685 = !DILocation(line: 755, column: 31, scope: !681)
!686 = !DILocation(line: 755, column: 47, scope: !681)
!687 = !DILocation(line: 755, column: 45, scope: !681)
!688 = !DILocation(line: 755, column: 60, scope: !681)
!689 = !DILocation(line: 755, column: 58, scope: !681)
!690 = !DILocation(line: 755, column: 10, scope: !682)
!691 = !DILocation(line: 757, column: 19, scope: !692)
!692 = distinct !DILexicalBlock(scope: !681, file: !63, line: 756, column: 7)
!693 = !DILocation(line: 758, column: 7, scope: !692)
!694 = !DILocation(line: 759, column: 5, scope: !682)
!695 = !DILocation(line: 761, column: 60, scope: !696)
!696 = distinct !DILexicalBlock(scope: !677, file: !63, line: 761, column: 8)
!697 = !DILocation(line: 761, column: 65, scope: !696)
!698 = !DILocation(line: 761, column: 88, scope: !696)
!699 = !DILocation(line: 761, column: 8, scope: !677)
!700 = !DILocation(line: 764, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !696, file: !63, line: 762, column: 5)
!702 = !DILocation(line: 767, column: 7, scope: !701)
!703 = !DILocation(line: 767, column: 351, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !63, line: 767, column: 293)
!705 = distinct !DILexicalBlock(scope: !706, file: !63, line: 767, column: 15)
!706 = distinct !DILexicalBlock(scope: !701, file: !63, line: 767, column: 10)
!707 = !DILocation(line: 767, column: 377, scope: !706)
!708 = !DILocation(line: 768, column: 5, scope: !701)
!709 = !DILocation(line: 771, column: 60, scope: !710)
!710 = distinct !DILexicalBlock(scope: !677, file: !63, line: 771, column: 8)
!711 = !DILocation(line: 771, column: 65, scope: !710)
!712 = !DILocation(line: 771, column: 88, scope: !710)
!713 = !DILocation(line: 771, column: 8, scope: !677)
!714 = !DILocation(line: 774, column: 17, scope: !715)
!715 = distinct !DILexicalBlock(scope: !710, file: !63, line: 772, column: 5)
!716 = !DILocation(line: 777, column: 7, scope: !715)
!717 = !DILocation(line: 777, column: 351, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !63, line: 777, column: 293)
!719 = distinct !DILexicalBlock(scope: !720, file: !63, line: 777, column: 15)
!720 = distinct !DILexicalBlock(scope: !715, file: !63, line: 777, column: 10)
!721 = !DILocation(line: 777, column: 377, scope: !720)
!722 = !DILocation(line: 778, column: 5, scope: !715)
!723 = !DILocation(line: 781, column: 60, scope: !724)
!724 = distinct !DILexicalBlock(scope: !677, file: !63, line: 781, column: 8)
!725 = !DILocation(line: 781, column: 65, scope: !724)
!726 = !DILocation(line: 781, column: 89, scope: !724)
!727 = !DILocation(line: 781, column: 8, scope: !677)
!728 = !DILocation(line: 784, column: 17, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !63, line: 782, column: 5)
!730 = !DILocation(line: 787, column: 7, scope: !729)
!731 = !DILocation(line: 787, column: 173, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !63, line: 787, column: 115)
!733 = distinct !DILexicalBlock(scope: !734, file: !63, line: 787, column: 15)
!734 = distinct !DILexicalBlock(scope: !729, file: !63, line: 787, column: 10)
!735 = !DILocation(line: 787, column: 380, scope: !734)
!736 = !DILocation(line: 788, column: 5, scope: !729)
!737 = !DILocation(line: 791, column: 60, scope: !738)
!738 = distinct !DILexicalBlock(scope: !677, file: !63, line: 791, column: 8)
!739 = !DILocation(line: 791, column: 65, scope: !738)
!740 = !DILocation(line: 791, column: 88, scope: !738)
!741 = !DILocation(line: 791, column: 8, scope: !677)
!742 = !DILocation(line: 794, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !63, line: 792, column: 5)
!744 = !DILocation(line: 797, column: 7, scope: !743)
!745 = !DILocation(line: 797, column: 172, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !63, line: 797, column: 114)
!747 = distinct !DILexicalBlock(scope: !748, file: !63, line: 797, column: 15)
!748 = distinct !DILexicalBlock(scope: !743, file: !63, line: 797, column: 10)
!749 = !DILocation(line: 797, column: 377, scope: !748)
!750 = !DILocation(line: 798, column: 5, scope: !743)
!751 = !DILocation(line: 801, column: 60, scope: !752)
!752 = distinct !DILexicalBlock(scope: !677, file: !63, line: 801, column: 8)
!753 = !DILocation(line: 801, column: 65, scope: !752)
!754 = !DILocation(line: 801, column: 88, scope: !752)
!755 = !DILocation(line: 801, column: 8, scope: !677)
!756 = !DILocation(line: 804, column: 17, scope: !757)
!757 = distinct !DILexicalBlock(scope: !752, file: !63, line: 802, column: 5)
!758 = !DILocation(line: 807, column: 7, scope: !757)
!759 = !DILocation(line: 807, column: 172, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !63, line: 807, column: 114)
!761 = distinct !DILexicalBlock(scope: !762, file: !63, line: 807, column: 15)
!762 = distinct !DILexicalBlock(scope: !757, file: !63, line: 807, column: 10)
!763 = !DILocation(line: 807, column: 377, scope: !762)
!764 = !DILocation(line: 808, column: 5, scope: !757)
!765 = !DILocation(line: 811, column: 60, scope: !766)
!766 = distinct !DILexicalBlock(scope: !677, file: !63, line: 811, column: 8)
!767 = !DILocation(line: 811, column: 65, scope: !766)
!768 = !DILocation(line: 811, column: 88, scope: !766)
!769 = !DILocation(line: 811, column: 8, scope: !677)
!770 = !DILocation(line: 814, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !766, file: !63, line: 812, column: 5)
!772 = !DILocation(line: 814, column: 351, scope: !773)
!773 = distinct !DILexicalBlock(scope: !774, file: !63, line: 814, column: 293)
!774 = distinct !DILexicalBlock(scope: !775, file: !63, line: 814, column: 15)
!775 = distinct !DILexicalBlock(scope: !771, file: !63, line: 814, column: 10)
!776 = !DILocation(line: 814, column: 377, scope: !775)
!777 = !DILocation(line: 815, column: 5, scope: !771)
!778 = !DILocation(line: 816, column: 3, scope: !677)
!779 = !DILocation(line: 816, column: 28, scope: !662)
!780 = !DILocation(line: 816, column: 25, scope: !662)
!781 = distinct !{!781, !674, !782}
!782 = !DILocation(line: 816, column: 37, scope: !662)
!783 = !DILocation(line: 818, column: 10, scope: !662)
!784 = !DILocation(line: 819, column: 1, scope: !662)
!785 = !DILocation(line: 818, column: 3, scope: !662)
!786 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_IRQHandler", scope: !63, file: !63, line: 825, type: !621, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !787)
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(name: "crserror", scope: !786, file: !63, line: 827, type: !24)
!789 = !DILocalVariable(name: "itflags", scope: !786, file: !63, line: 829, type: !24)
!790 = !DILocalVariable(name: "itsources", scope: !786, file: !63, line: 830, type: !24)
!791 = !DILocation(line: 827, column: 3, scope: !786)
!792 = !DILocation(line: 827, column: 12, scope: !786)
!793 = !DILocation(line: 829, column: 3, scope: !786)
!794 = !DILocation(line: 829, column: 12, scope: !786)
!795 = !DILocation(line: 829, column: 73, scope: !786)
!796 = !DILocation(line: 830, column: 3, scope: !786)
!797 = !DILocation(line: 830, column: 12, scope: !786)
!798 = !DILocation(line: 830, column: 75, scope: !786)
!799 = !DILocation(line: 833, column: 8, scope: !800)
!800 = distinct !DILexicalBlock(scope: !786, file: !63, line: 833, column: 6)
!801 = !DILocation(line: 833, column: 16, scope: !800)
!802 = !DILocation(line: 833, column: 35, scope: !800)
!803 = !DILocation(line: 833, column: 45, scope: !800)
!804 = !DILocation(line: 833, column: 50, scope: !800)
!805 = !DILocation(line: 833, column: 60, scope: !800)
!806 = !DILocation(line: 833, column: 79, scope: !800)
!807 = !DILocation(line: 833, column: 6, scope: !786)
!808 = !DILocation(line: 836, column: 61, scope: !809)
!809 = distinct !DILexicalBlock(scope: !800, file: !63, line: 834, column: 3)
!810 = !DILocation(line: 839, column: 5, scope: !809)
!811 = !DILocation(line: 840, column: 3, scope: !809)
!812 = !DILocation(line: 842, column: 13, scope: !813)
!813 = distinct !DILexicalBlock(scope: !800, file: !63, line: 842, column: 11)
!814 = !DILocation(line: 842, column: 21, scope: !813)
!815 = !DILocation(line: 842, column: 40, scope: !813)
!816 = !DILocation(line: 842, column: 50, scope: !813)
!817 = !DILocation(line: 842, column: 55, scope: !813)
!818 = !DILocation(line: 842, column: 65, scope: !813)
!819 = !DILocation(line: 842, column: 84, scope: !813)
!820 = !DILocation(line: 842, column: 11, scope: !800)
!821 = !DILocation(line: 845, column: 61, scope: !822)
!822 = distinct !DILexicalBlock(scope: !813, file: !63, line: 843, column: 3)
!823 = !DILocation(line: 848, column: 5, scope: !822)
!824 = !DILocation(line: 849, column: 3, scope: !822)
!825 = !DILocation(line: 851, column: 13, scope: !826)
!826 = distinct !DILexicalBlock(scope: !813, file: !63, line: 851, column: 11)
!827 = !DILocation(line: 851, column: 21, scope: !826)
!828 = !DILocation(line: 851, column: 40, scope: !826)
!829 = !DILocation(line: 851, column: 50, scope: !826)
!830 = !DILocation(line: 851, column: 55, scope: !826)
!831 = !DILocation(line: 851, column: 65, scope: !826)
!832 = !DILocation(line: 851, column: 84, scope: !826)
!833 = !DILocation(line: 851, column: 11, scope: !813)
!834 = !DILocation(line: 854, column: 61, scope: !835)
!835 = distinct !DILexicalBlock(scope: !826, file: !63, line: 852, column: 3)
!836 = !DILocation(line: 857, column: 5, scope: !835)
!837 = !DILocation(line: 858, column: 3, scope: !835)
!838 = !DILocation(line: 862, column: 10, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !63, line: 862, column: 8)
!840 = distinct !DILexicalBlock(scope: !826, file: !63, line: 861, column: 3)
!841 = !DILocation(line: 862, column: 18, scope: !839)
!842 = !DILocation(line: 862, column: 37, scope: !839)
!843 = !DILocation(line: 862, column: 47, scope: !839)
!844 = !DILocation(line: 862, column: 52, scope: !839)
!845 = !DILocation(line: 862, column: 62, scope: !839)
!846 = !DILocation(line: 862, column: 81, scope: !839)
!847 = !DILocation(line: 862, column: 8, scope: !840)
!848 = !DILocation(line: 864, column: 11, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !63, line: 864, column: 10)
!850 = distinct !DILexicalBlock(scope: !839, file: !63, line: 863, column: 5)
!851 = !DILocation(line: 864, column: 19, scope: !849)
!852 = !DILocation(line: 864, column: 38, scope: !849)
!853 = !DILocation(line: 864, column: 10, scope: !850)
!854 = !DILocation(line: 866, column: 18, scope: !855)
!855 = distinct !DILexicalBlock(scope: !849, file: !63, line: 865, column: 7)
!856 = !DILocation(line: 867, column: 7, scope: !855)
!857 = !DILocation(line: 868, column: 11, scope: !858)
!858 = distinct !DILexicalBlock(scope: !850, file: !63, line: 868, column: 10)
!859 = !DILocation(line: 868, column: 19, scope: !858)
!860 = !DILocation(line: 868, column: 38, scope: !858)
!861 = !DILocation(line: 868, column: 10, scope: !850)
!862 = !DILocation(line: 870, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !63, line: 869, column: 7)
!864 = !DILocation(line: 871, column: 7, scope: !863)
!865 = !DILocation(line: 872, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !850, file: !63, line: 872, column: 10)
!867 = !DILocation(line: 872, column: 19, scope: !866)
!868 = !DILocation(line: 872, column: 39, scope: !866)
!869 = !DILocation(line: 872, column: 10, scope: !850)
!870 = !DILocation(line: 874, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !866, file: !63, line: 873, column: 7)
!872 = !DILocation(line: 875, column: 7, scope: !871)
!873 = !DILocation(line: 878, column: 63, scope: !850)
!874 = !DILocation(line: 881, column: 35, scope: !850)
!875 = !DILocation(line: 881, column: 7, scope: !850)
!876 = !DILocation(line: 882, column: 5, scope: !850)
!877 = !DILocation(line: 884, column: 1, scope: !786)
!878 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncOkCallback", scope: !63, file: !63, line: 890, type: !621, scopeLine: 891, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!879 = !DILocation(line: 895, column: 1, scope: !878)
!880 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_SyncWarnCallback", scope: !63, file: !63, line: 901, type: !621, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!881 = !DILocation(line: 906, column: 1, scope: !880)
!882 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ExpectedSyncCallback", scope: !63, file: !63, line: 912, type: !621, scopeLine: 913, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!883 = !DILocation(line: 917, column: 1, scope: !882)
!884 = distinct !DISubprogram(name: "HAL_RCCEx_CRS_ErrorCallback", scope: !63, file: !63, line: 928, type: !885, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !24}
!887 = !{!888}
!888 = !DILocalVariable(name: "Error", arg: 1, scope: !884, file: !63, line: 928, type: !24)
!889 = !DILocation(line: 928, column: 65, scope: !884)
!890 = !DILocation(line: 931, column: 9, scope: !884)
!891 = !DILocation(line: 936, column: 1, scope: !884)
