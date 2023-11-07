; ModuleID = '../bc_files/cbprintf_packaged.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/cbprintf_packaged.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.log_source_const_data = type { ptr, i8 }
%struct.__va_list = type { ptr }
%union.anon = type { double }
%struct.cbprintf_package_desc = type { i8, i8, i8, i8 }
%struct.cbprintf_package_hdr_ext = type { %union.cbprintf_package_hdr, ptr }
%union.cbprintf_package_hdr = type { ptr }
%union.anon.0 = type { %struct.__va_list }

@.str = private unnamed_addr constant [17 x i8] c"cbprintf_package\00", align 1, !dbg !0
@log_const_cbprintf_package = hidden constant %struct.log_source_const_data { ptr @.str, i8 3 }, section "._log_const.static.log_const_cbprintf_package_", align 4, !dbg !7
@__log_current_const_data = internal global ptr @log_const_cbprintf_package, align 4, !dbg !52
@.str.1 = private unnamed_addr constant [163 x i8] c"(unsigned) char * used for %%p argument. It's recommended to cast it to void * because it may cause misbehavior in certain configurations. String:\22%s\22 argument:%d\00", align 1, !dbg !47
@__rodata_region_start = external global [0 x i8], align 1
@__rodata_region_end = external global [0 x i8], align 1
@llvm.used = appending global [1 x ptr] [ptr @log_const_cbprintf_package], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define hidden i32 @cbvprintf_package(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, [1 x i32] %4) #0 !dbg !70 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 1
  %17 = alloca [16 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca ptr, align 4
  %29 = alloca %union.anon, align 8
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i8, align 1
  %37 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0
  store [1 x i32] %4, ptr %37, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !81, metadata !DIExpression()), !dbg !82
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !85, metadata !DIExpression()), !dbg !86
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata ptr %7, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata ptr %12, metadata !91, metadata !DIExpression()), !dbg !92
  %38 = load ptr, ptr %8, align 4, !dbg !93
  store ptr %38, ptr %12, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %13, metadata !94, metadata !DIExpression()), !dbg !95
  %39 = load ptr, ptr %12, align 4, !dbg !96
  store ptr %39, ptr %13, align 4, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %14, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata ptr %15, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata ptr %16, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata ptr %17, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata ptr %18, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 0, ptr %18, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %19, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 0, ptr %19, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %20, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 0, ptr %20, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %21, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, ptr %21, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %22, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata ptr %23, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata ptr %24, metadata !120, metadata !DIExpression()), !dbg !122
  store i8 0, ptr %24, align 1, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %25, metadata !123, metadata !DIExpression()), !dbg !124
  %40 = load i32, ptr %10, align 4, !dbg !125
  %41 = and i32 %40, 4, !dbg !126
  %42 = icmp ne i32 %41, 0, !dbg !127
  %43 = xor i1 %42, true, !dbg !127
  %44 = xor i1 %43, true, !dbg !128
  %45 = zext i1 %44 to i8, !dbg !124
  store i8 %45, ptr %25, align 1, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %26, metadata !129, metadata !DIExpression()), !dbg !130
  %46 = load i32, ptr %10, align 4, !dbg !131
  %47 = lshr i32 %46, 3, !dbg !132
  %48 = and i32 %47, 7, !dbg !133
  %49 = add i32 1, %48, !dbg !134
  store i32 %49, ptr %26, align 4, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %27, metadata !135, metadata !DIExpression()), !dbg !136
  store i8 0, ptr %27, align 1, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %28, metadata !137, metadata !DIExpression()), !dbg !150
  %50 = load ptr, ptr %8, align 4, !dbg !151
  store ptr %50, ptr %28, align 4, !dbg !150
  %51 = load ptr, ptr %8, align 4, !dbg !152
  %52 = ptrtoint ptr %51 to i32, !dbg !154
  %53 = urem i32 %52, 4, !dbg !155
  %54 = icmp ne i32 %53, 0, !dbg !155
  br i1 %54, label %55, label %56, !dbg !156

55:                                               ; preds = %5
  store i32 -14, ptr %6, align 4, !dbg !157
  br label %555, !dbg !157

56:                                               ; preds = %5
  %57 = load ptr, ptr %13, align 4, !dbg !159
  %58 = getelementptr inbounds i8, ptr %57, i32 4, !dbg !159
  store ptr %58, ptr %13, align 4, !dbg !159
  %59 = load ptr, ptr %12, align 4, !dbg !160
  %60 = icmp eq ptr %59, null, !dbg !162
  br i1 %60, label %61, label %69, !dbg !163

61:                                               ; preds = %56
  %62 = load i32, ptr %9, align 4, !dbg !164
  %63 = urem i32 %62, 8, !dbg !166
  %64 = load ptr, ptr %13, align 4, !dbg !167
  %65 = getelementptr inbounds i8, ptr %64, i32 %63, !dbg !167
  store ptr %65, ptr %13, align 4, !dbg !167
  %66 = load i32, ptr %9, align 4, !dbg !168
  %67 = urem i32 %66, 8, !dbg !169
  %68 = sub i32 8, %67, !dbg !170
  store i32 %68, ptr %9, align 4, !dbg !171
  br label %69, !dbg !172

69:                                               ; preds = %61, %56
  %70 = load ptr, ptr %12, align 4, !dbg !173
  %71 = icmp ne ptr %70, null, !dbg !175
  br i1 %71, label %72, label %82, !dbg !176

72:                                               ; preds = %69
  %73 = load ptr, ptr %13, align 4, !dbg !177
  %74 = ptrtoint ptr %73 to i32, !dbg !178
  %75 = load ptr, ptr %12, align 4, !dbg !179
  %76 = ptrtoint ptr %75 to i32, !dbg !180
  %77 = sub i32 %74, %76, !dbg !181
  %78 = add i32 %77, 4, !dbg !182
  %79 = load i32, ptr %9, align 4, !dbg !183
  %80 = icmp ugt i32 %78, %79, !dbg !184
  br i1 %80, label %81, label %82, !dbg !185

81:                                               ; preds = %72
  store i32 -28, ptr %6, align 4, !dbg !186
  br label %555, !dbg !186

82:                                               ; preds = %72, %69
  %83 = load ptr, ptr %11, align 4, !dbg !188
  %84 = getelementptr inbounds i8, ptr %83, i32 -1, !dbg !188
  store ptr %84, ptr %11, align 4, !dbg !188
  store ptr %83, ptr %23, align 4, !dbg !189
  store i32 4, ptr %15, align 4, !dbg !190
  store i32 4, ptr %14, align 4, !dbg !191
  br label %230, !dbg !192

85:                                               ; No predecessors!
  br label %86, !dbg !193

86:                                               ; preds = %85, %104, %109, %112, %114, %115, %116, %194, %198, %385
  %87 = load ptr, ptr %11, align 4, !dbg !194
  %88 = getelementptr inbounds i8, ptr %87, i32 1, !dbg !194
  store ptr %88, ptr %11, align 4, !dbg !194
  %89 = load i8, ptr %88, align 1, !dbg !198
  %90 = zext i8 %89 to i32, !dbg !198
  %91 = icmp eq i32 %90, 0, !dbg !199
  br i1 %91, label %92, label %93, !dbg !200

92:                                               ; preds = %86
  br label %386, !dbg !201

93:                                               ; preds = %86
  %94 = load i8, ptr %24, align 1, !dbg !203
  %95 = trunc i8 %94 to i1, !dbg !203
  br i1 %95, label %105, label %96, !dbg !205

96:                                               ; preds = %93
  %97 = load ptr, ptr %11, align 4, !dbg !206
  %98 = load i8, ptr %97, align 1, !dbg !209
  %99 = zext i8 %98 to i32, !dbg !209
  %100 = icmp eq i32 %99, 37, !dbg !210
  br i1 %100, label %101, label %104, !dbg !211

101:                                              ; preds = %96
  store i8 1, ptr %24, align 1, !dbg !212
  %102 = load i32, ptr %21, align 4, !dbg !214
  %103 = add nsw i32 %102, 1, !dbg !214
  store i32 %103, ptr %21, align 4, !dbg !214
  store i32 4, ptr %15, align 4, !dbg !215
  store i32 4, ptr %14, align 4, !dbg !216
  br label %104, !dbg !217

104:                                              ; preds = %101, %96
  br label %86, !dbg !218, !llvm.loop !219

105:                                              ; preds = %93
  %106 = load ptr, ptr %11, align 4, !dbg !221
  %107 = load i8, ptr %106, align 1, !dbg !222
  %108 = zext i8 %107 to i32, !dbg !222
  switch i32 %108, label %198 [
    i32 37, label %109
    i32 35, label %112
    i32 45, label %112
    i32 43, label %112
    i32 32, label %112
    i32 48, label %112
    i32 49, label %112
    i32 50, label %112
    i32 51, label %112
    i32 52, label %112
    i32 53, label %112
    i32 54, label %112
    i32 55, label %112
    i32 56, label %112
    i32 57, label %112
    i32 46, label %112
    i32 104, label %112
    i32 108, label %112
    i32 76, label %112
    i32 42, label %113
    i32 106, label %114
    i32 122, label %115
    i32 116, label %116
    i32 99, label %117
    i32 100, label %117
    i32 105, label %117
    i32 111, label %117
    i32 117, label %117
    i32 120, label %117
    i32 88, label %117
    i32 115, label %133
    i32 112, label %134
    i32 110, label %134
    i32 97, label %135
    i32 65, label %135
    i32 101, label %135
    i32 69, label %135
    i32 102, label %135
    i32 70, label %135
    i32 103, label %135
    i32 71, label %135
  ], !dbg !223

109:                                              ; preds = %105
  store i8 0, ptr %24, align 1, !dbg !224
  %110 = load i32, ptr %21, align 4, !dbg !226
  %111 = add nsw i32 %110, -1, !dbg !226
  store i32 %111, ptr %21, align 4, !dbg !226
  br label %86, !dbg !227, !llvm.loop !219

112:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105, %105
  br label %86, !dbg !228, !llvm.loop !219

113:                                              ; preds = %105
  br label %199, !dbg !229

114:                                              ; preds = %105
  store i32 8, ptr %15, align 4, !dbg !230
  store i32 8, ptr %14, align 4, !dbg !231
  br label %86, !dbg !232, !llvm.loop !219

115:                                              ; preds = %105
  store i32 4, ptr %15, align 4, !dbg !233
  store i32 4, ptr %14, align 4, !dbg !234
  br label %86, !dbg !235, !llvm.loop !219

116:                                              ; preds = %105
  store i32 4, ptr %15, align 4, !dbg !236
  store i32 4, ptr %14, align 4, !dbg !237
  br label %86, !dbg !238, !llvm.loop !219

117:                                              ; preds = %105, %105, %105, %105, %105, %105, %105
  %118 = load ptr, ptr %11, align 4, !dbg !239
  %119 = getelementptr inbounds i8, ptr %118, i32 -1, !dbg !239
  %120 = load i8, ptr %119, align 1, !dbg !239
  %121 = zext i8 %120 to i32, !dbg !239
  %122 = icmp eq i32 %121, 108, !dbg !241
  br i1 %122, label %123, label %132, !dbg !242

123:                                              ; preds = %117
  %124 = load ptr, ptr %11, align 4, !dbg !243
  %125 = getelementptr inbounds i8, ptr %124, i32 -2, !dbg !243
  %126 = load i8, ptr %125, align 1, !dbg !243
  %127 = zext i8 %126 to i32, !dbg !243
  %128 = icmp eq i32 %127, 108, !dbg !246
  br i1 %128, label %129, label %130, !dbg !247

129:                                              ; preds = %123
  store i32 8, ptr %15, align 4, !dbg !248
  store i32 8, ptr %14, align 4, !dbg !250
  br label %131, !dbg !251

130:                                              ; preds = %123
  store i32 4, ptr %15, align 4, !dbg !252
  store i32 4, ptr %14, align 4, !dbg !254
  br label %131

131:                                              ; preds = %130, %129
  br label %132, !dbg !255

132:                                              ; preds = %131, %117
  store i8 0, ptr %24, align 1, !dbg !256
  br label %199, !dbg !257

133:                                              ; preds = %105
  store i8 1, ptr %27, align 1, !dbg !258
  br label %134, !dbg !259

134:                                              ; preds = %105, %105, %133
  store i32 4, ptr %15, align 4, !dbg !260
  store i32 4, ptr %14, align 4, !dbg !261
  store i8 0, ptr %24, align 1, !dbg !262
  br label %199, !dbg !263

135:                                              ; preds = %105, %105, %105, %105, %105, %105, %105, %105
  call void @llvm.dbg.declare(metadata ptr %29, metadata !264, metadata !DIExpression()), !dbg !270
  %136 = load ptr, ptr %11, align 4, !dbg !271
  %137 = getelementptr inbounds i8, ptr %136, i32 -1, !dbg !271
  %138 = load i8, ptr %137, align 1, !dbg !271
  %139 = zext i8 %138 to i32, !dbg !271
  %140 = icmp eq i32 %139, 76, !dbg !273
  br i1 %140, label %141, label %149, !dbg !274

141:                                              ; preds = %135
  %142 = load ptr, ptr %7, align 4, !dbg !275
  %143 = ptrtoint ptr %142 to i32, !dbg !275
  %144 = add i32 %143, 7, !dbg !275
  %145 = and i32 %144, -8, !dbg !275
  %146 = inttoptr i32 %145 to ptr, !dbg !275
  %147 = getelementptr inbounds i8, ptr %146, i32 8, !dbg !275
  store ptr %147, ptr %7, align 4, !dbg !275
  %148 = load double, ptr %146, align 8, !dbg !275
  store double %148, ptr %29, align 8, !dbg !277
  store i32 8, ptr %15, align 4, !dbg !278
  store i32 8, ptr %14, align 4, !dbg !279
  br label %157, !dbg !280

149:                                              ; preds = %135
  %150 = load ptr, ptr %7, align 4, !dbg !281
  %151 = ptrtoint ptr %150 to i32, !dbg !281
  %152 = add i32 %151, 7, !dbg !281
  %153 = and i32 %152, -8, !dbg !281
  %154 = inttoptr i32 %153 to ptr, !dbg !281
  %155 = getelementptr inbounds i8, ptr %154, i32 8, !dbg !281
  store ptr %155, ptr %7, align 4, !dbg !281
  %156 = load double, ptr %154, align 8, !dbg !281
  store double %156, ptr %29, align 8, !dbg !283
  store i32 8, ptr %15, align 4, !dbg !284
  store i32 8, ptr %14, align 4, !dbg !285
  br label %157

157:                                              ; preds = %149, %141
  %158 = load ptr, ptr %13, align 4, !dbg !286
  %159 = ptrtoint ptr %158 to i32, !dbg !287
  %160 = load i32, ptr %15, align 4, !dbg !288
  %161 = sub i32 %160, 1, !dbg !289
  %162 = add i32 %159, %161, !dbg !290
  %163 = load i32, ptr %15, align 4, !dbg !291
  %164 = udiv i32 %162, %163, !dbg !292
  %165 = load i32, ptr %15, align 4, !dbg !293
  %166 = mul i32 %164, %165, !dbg !294
  %167 = inttoptr i32 %166 to ptr, !dbg !295
  store ptr %167, ptr %13, align 4, !dbg !296
  %168 = load ptr, ptr %12, align 4, !dbg !297
  %169 = icmp ne ptr %168, null, !dbg !299
  br i1 %169, label %170, label %194, !dbg !300

170:                                              ; preds = %157
  %171 = load ptr, ptr %13, align 4, !dbg !301
  %172 = ptrtoint ptr %171 to i32, !dbg !304
  %173 = load ptr, ptr %12, align 4, !dbg !305
  %174 = ptrtoint ptr %173 to i32, !dbg !306
  %175 = sub i32 %172, %174, !dbg !307
  %176 = load i32, ptr %14, align 4, !dbg !308
  %177 = add i32 %175, %176, !dbg !309
  %178 = load i32, ptr %9, align 4, !dbg !310
  %179 = icmp ugt i32 %177, %178, !dbg !311
  br i1 %179, label %180, label %181, !dbg !312

180:                                              ; preds = %170
  store i32 -28, ptr %6, align 4, !dbg !313
  br label %555, !dbg !313

181:                                              ; preds = %170
  %182 = load ptr, ptr %11, align 4, !dbg !315
  %183 = getelementptr inbounds i8, ptr %182, i32 -1, !dbg !315
  %184 = load i8, ptr %183, align 1, !dbg !315
  %185 = zext i8 %184 to i32, !dbg !315
  %186 = icmp eq i32 %185, 76, !dbg !318
  br i1 %186, label %187, label %190, !dbg !319

187:                                              ; preds = %181
  %188 = load double, ptr %29, align 8, !dbg !320
  %189 = load ptr, ptr %13, align 4, !dbg !322
  store double %188, ptr %189, align 8, !dbg !323
  br label %193, !dbg !324

190:                                              ; preds = %181
  %191 = load double, ptr %29, align 8, !dbg !325
  %192 = load ptr, ptr %13, align 4, !dbg !327
  store double %191, ptr %192, align 8, !dbg !328
  br label %193

193:                                              ; preds = %190, %187
  br label %194, !dbg !329

194:                                              ; preds = %193, %157
  %195 = load i32, ptr %14, align 4, !dbg !330
  %196 = load ptr, ptr %13, align 4, !dbg !331
  %197 = getelementptr inbounds i8, ptr %196, i32 %195, !dbg !331
  store ptr %197, ptr %13, align 4, !dbg !331
  store i8 0, ptr %24, align 1, !dbg !332
  br label %86, !dbg !333, !llvm.loop !219

198:                                              ; preds = %105
  store i8 0, ptr %24, align 1, !dbg !334
  br label %86, !dbg !335, !llvm.loop !219

199:                                              ; preds = %134, %132, %113
  %200 = load ptr, ptr %13, align 4, !dbg !336
  %201 = ptrtoint ptr %200 to i32, !dbg !337
  %202 = load i32, ptr %15, align 4, !dbg !338
  %203 = sub i32 %202, 1, !dbg !339
  %204 = add i32 %201, %203, !dbg !340
  %205 = load i32, ptr %15, align 4, !dbg !341
  %206 = udiv i32 %204, %205, !dbg !342
  %207 = load i32, ptr %15, align 4, !dbg !343
  %208 = mul i32 %206, %207, !dbg !344
  %209 = inttoptr i32 %208 to ptr, !dbg !345
  store ptr %209, ptr %13, align 4, !dbg !346
  %210 = load ptr, ptr %12, align 4, !dbg !347
  %211 = icmp ne ptr %210, null, !dbg !349
  br i1 %211, label %212, label %223, !dbg !350

212:                                              ; preds = %199
  %213 = load ptr, ptr %13, align 4, !dbg !351
  %214 = ptrtoint ptr %213 to i32, !dbg !352
  %215 = load ptr, ptr %12, align 4, !dbg !353
  %216 = ptrtoint ptr %215 to i32, !dbg !354
  %217 = sub i32 %214, %216, !dbg !355
  %218 = load i32, ptr %14, align 4, !dbg !356
  %219 = add i32 %217, %218, !dbg !357
  %220 = load i32, ptr %9, align 4, !dbg !358
  %221 = icmp ugt i32 %219, %220, !dbg !359
  br i1 %221, label %222, label %223, !dbg !360

222:                                              ; preds = %212
  store i32 -28, ptr %6, align 4, !dbg !361
  br label %555, !dbg !361

223:                                              ; preds = %212, %199
  %224 = load i8, ptr %27, align 1, !dbg !363
  %225 = trunc i8 %224 to i1, !dbg !363
  br i1 %225, label %226, label %332, !dbg !365

226:                                              ; preds = %223
  %227 = load ptr, ptr %7, align 4, !dbg !366
  %228 = getelementptr inbounds i8, ptr %227, i32 4, !dbg !366
  store ptr %228, ptr %7, align 4, !dbg !366
  %229 = load ptr, ptr %227, align 4, !dbg !366
  store ptr %229, ptr %23, align 4, !dbg !368
  br label %230, !dbg !369

230:                                              ; preds = %226, %82
  call void @llvm.dbg.label(metadata !370), !dbg !371
  %231 = load ptr, ptr %12, align 4, !dbg !372
  %232 = icmp ne ptr %231, null, !dbg !374
  br i1 %232, label %233, label %236, !dbg !375

233:                                              ; preds = %230
  %234 = load ptr, ptr %23, align 4, !dbg !376
  %235 = load ptr, ptr %13, align 4, !dbg !378
  store ptr %234, ptr %235, align 4, !dbg !379
  br label %236, !dbg !380

236:                                              ; preds = %233, %230
  call void @llvm.dbg.declare(metadata ptr %30, metadata !381, metadata !DIExpression()), !dbg !382
  %237 = load i32, ptr %26, align 4, !dbg !383
  %238 = add nsw i32 %237, -1, !dbg !383
  store i32 %238, ptr %26, align 4, !dbg !383
  %239 = icmp sgt i32 %237, 0, !dbg !384
  br i1 %239, label %240, label %241, !dbg !385

240:                                              ; preds = %236
  br label %245, !dbg !385

241:                                              ; preds = %236
  %242 = load ptr, ptr %23, align 4, !dbg !386
  %243 = call zeroext i1 @ptr_in_rodata(ptr noundef %242), !dbg !387
  %244 = zext i1 %243 to i32, !dbg !387
  br label %245, !dbg !385

245:                                              ; preds = %241, %240
  %246 = phi i32 [ 1, %240 ], [ %244, %241 ], !dbg !385
  %247 = icmp ne i32 %246, 0, !dbg !385
  %248 = zext i1 %247 to i8, !dbg !382
  store i8 %248, ptr %30, align 1, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %31, metadata !388, metadata !DIExpression()), !dbg !389
  %249 = load i32, ptr %10, align 4, !dbg !390
  %250 = and i32 %249, 2, !dbg !391
  %251 = icmp ne i32 %250, 0, !dbg !392
  %252 = xor i1 %251, true, !dbg !392
  %253 = xor i1 %252, true, !dbg !393
  %254 = zext i1 %253 to i8, !dbg !389
  store i8 %254, ptr %31, align 1, !dbg !389
  %255 = load i8, ptr %30, align 1, !dbg !394
  %256 = trunc i8 %255 to i1, !dbg !394
  br i1 %256, label %257, label %261, !dbg !396

257:                                              ; preds = %245
  %258 = load i8, ptr %31, align 1, !dbg !397
  %259 = trunc i8 %258 to i1, !dbg !397
  br i1 %259, label %261, label %260, !dbg !398

260:                                              ; preds = %257
  br label %329, !dbg !399

261:                                              ; preds = %257, %245
  call void @llvm.dbg.declare(metadata ptr %32, metadata !401, metadata !DIExpression()), !dbg !403
  %262 = load ptr, ptr %13, align 4, !dbg !404
  %263 = ptrtoint ptr %262 to i32, !dbg !405
  %264 = load ptr, ptr %12, align 4, !dbg !406
  %265 = ptrtoint ptr %264 to i32, !dbg !407
  %266 = sub i32 %263, %265, !dbg !408
  %267 = udiv i32 %266, 4, !dbg !409
  store i32 %267, ptr %32, align 4, !dbg !403
  %268 = load i8, ptr %31, align 1, !dbg !410
  %269 = trunc i8 %268 to i1, !dbg !410
  br i1 %269, label %270, label %274, !dbg !412

270:                                              ; preds = %261
  %271 = load i32, ptr %32, align 4, !dbg !413
  %272 = icmp ugt i32 %271, 127, !dbg !414
  br i1 %272, label %273, label %274, !dbg !415

273:                                              ; preds = %270
  store i32 -5, ptr %6, align 4, !dbg !416
  br label %555, !dbg !416

274:                                              ; preds = %270, %261
  %275 = load i32, ptr %18, align 4, !dbg !418
  %276 = icmp uge i32 %275, 16, !dbg !420
  br i1 %276, label %277, label %278, !dbg !421

277:                                              ; preds = %274
  store i32 -5, ptr %6, align 4, !dbg !422
  br label %555, !dbg !422

278:                                              ; preds = %274
  %279 = load ptr, ptr %12, align 4, !dbg !424
  %280 = icmp ne ptr %279, null, !dbg !426
  br i1 %280, label %281, label %305, !dbg !427

281:                                              ; preds = %278
  %282 = load i32, ptr %32, align 4, !dbg !428
  %283 = trunc i32 %282 to i8, !dbg !428
  %284 = load i32, ptr %18, align 4, !dbg !430
  %285 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %284, !dbg !431
  store i8 %283, ptr %285, align 1, !dbg !432
  %286 = load i32, ptr %21, align 4, !dbg !433
  %287 = trunc i32 %286 to i8, !dbg !433
  %288 = load i32, ptr %18, align 4, !dbg !434
  %289 = getelementptr inbounds [16 x i8], ptr %17, i32 0, i32 %288, !dbg !435
  store i8 %287, ptr %289, align 1, !dbg !436
  %290 = load i8, ptr %30, align 1, !dbg !437
  %291 = trunc i8 %290 to i1, !dbg !437
  br i1 %291, label %292, label %301, !dbg !439

292:                                              ; preds = %281
  %293 = load i32, ptr %18, align 4, !dbg !440
  %294 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %293, !dbg !442
  %295 = load i8, ptr %294, align 1, !dbg !443
  %296 = zext i8 %295 to i32, !dbg !443
  %297 = or i32 %296, 128, !dbg !443
  %298 = trunc i32 %297 to i8, !dbg !443
  store i8 %298, ptr %294, align 1, !dbg !443
  %299 = load i32, ptr %20, align 4, !dbg !444
  %300 = add i32 %299, 1, !dbg !444
  store i32 %300, ptr %20, align 4, !dbg !444
  br label %304, !dbg !445

301:                                              ; preds = %281
  %302 = load i32, ptr %19, align 4, !dbg !446
  %303 = add i32 %302, 1, !dbg !446
  store i32 %303, ptr %19, align 4, !dbg !446
  br label %304

304:                                              ; preds = %301, %292
  br label %326, !dbg !448

305:                                              ; preds = %278
  %306 = load i8, ptr %30, align 1, !dbg !449
  %307 = trunc i8 %306 to i1, !dbg !449
  br i1 %307, label %308, label %311, !dbg !451

308:                                              ; preds = %305
  %309 = load i32, ptr %9, align 4, !dbg !452
  %310 = add i32 %309, 1, !dbg !452
  store i32 %310, ptr %9, align 4, !dbg !452
  br label %325, !dbg !454

311:                                              ; preds = %305
  %312 = load i8, ptr %25, align 1, !dbg !455
  %313 = trunc i8 %312 to i1, !dbg !455
  br i1 %313, label %314, label %317, !dbg !457

314:                                              ; preds = %311
  %315 = load i32, ptr %9, align 4, !dbg !458
  %316 = add i32 %315, 2, !dbg !458
  store i32 %316, ptr %9, align 4, !dbg !458
  br label %324, !dbg !460

317:                                              ; preds = %311
  %318 = load ptr, ptr %23, align 4, !dbg !461
  %319 = call i32 @strlen(ptr noundef %318) #6, !dbg !463
  %320 = add i32 %319, 1, !dbg !464
  %321 = add i32 %320, 1, !dbg !465
  %322 = load i32, ptr %9, align 4, !dbg !466
  %323 = add i32 %322, %321, !dbg !466
  store i32 %323, ptr %9, align 4, !dbg !466
  br label %324

324:                                              ; preds = %317, %314
  br label %325

325:                                              ; preds = %324, %308
  br label %326

326:                                              ; preds = %325, %304
  %327 = load i32, ptr %18, align 4, !dbg !467
  %328 = add i32 %327, 1, !dbg !467
  store i32 %328, ptr %18, align 4, !dbg !467
  br label %329

329:                                              ; preds = %326, %260
  %330 = load ptr, ptr %13, align 4, !dbg !468
  %331 = getelementptr inbounds i8, ptr %330, i32 4, !dbg !468
  store ptr %331, ptr %13, align 4, !dbg !468
  store i8 0, ptr %27, align 1, !dbg !469
  br label %385, !dbg !470

332:                                              ; preds = %223
  %333 = load i32, ptr %14, align 4, !dbg !471
  %334 = icmp eq i32 %333, 4, !dbg !473
  br i1 %334, label %335, label %347, !dbg !474

335:                                              ; preds = %332
  call void @llvm.dbg.declare(metadata ptr %33, metadata !475, metadata !DIExpression()), !dbg !477
  %336 = load ptr, ptr %7, align 4, !dbg !478
  %337 = getelementptr inbounds i8, ptr %336, i32 4, !dbg !478
  store ptr %337, ptr %7, align 4, !dbg !478
  %338 = load i32, ptr %336, align 4, !dbg !478
  store i32 %338, ptr %33, align 4, !dbg !477
  %339 = load ptr, ptr %12, align 4, !dbg !479
  %340 = icmp ne ptr %339, null, !dbg !481
  br i1 %340, label %341, label %344, !dbg !482

341:                                              ; preds = %335
  %342 = load i32, ptr %33, align 4, !dbg !483
  %343 = load ptr, ptr %13, align 4, !dbg !485
  store i32 %342, ptr %343, align 4, !dbg !486
  br label %344, !dbg !487

344:                                              ; preds = %341, %335
  %345 = load ptr, ptr %13, align 4, !dbg !488
  %346 = getelementptr inbounds i8, ptr %345, i32 4, !dbg !488
  store ptr %346, ptr %13, align 4, !dbg !488
  br label %384, !dbg !489

347:                                              ; preds = %332
  %348 = load i32, ptr %14, align 4, !dbg !490
  %349 = icmp eq i32 %348, 4, !dbg !492
  br i1 %349, label %350, label %362, !dbg !493

350:                                              ; preds = %347
  call void @llvm.dbg.declare(metadata ptr %34, metadata !494, metadata !DIExpression()), !dbg !496
  %351 = load ptr, ptr %7, align 4, !dbg !497
  %352 = getelementptr inbounds i8, ptr %351, i32 4, !dbg !497
  store ptr %352, ptr %7, align 4, !dbg !497
  %353 = load i32, ptr %351, align 4, !dbg !497
  store i32 %353, ptr %34, align 4, !dbg !496
  %354 = load ptr, ptr %12, align 4, !dbg !498
  %355 = icmp ne ptr %354, null, !dbg !500
  br i1 %355, label %356, label %359, !dbg !501

356:                                              ; preds = %350
  %357 = load i32, ptr %34, align 4, !dbg !502
  %358 = load ptr, ptr %13, align 4, !dbg !504
  store i32 %357, ptr %358, align 4, !dbg !505
  br label %359, !dbg !506

359:                                              ; preds = %356, %350
  %360 = load ptr, ptr %13, align 4, !dbg !507
  %361 = getelementptr inbounds i8, ptr %360, i32 4, !dbg !507
  store ptr %361, ptr %13, align 4, !dbg !507
  br label %383, !dbg !508

362:                                              ; preds = %347
  %363 = load i32, ptr %14, align 4, !dbg !509
  %364 = icmp eq i32 %363, 8, !dbg !511
  br i1 %364, label %365, label %381, !dbg !512

365:                                              ; preds = %362
  call void @llvm.dbg.declare(metadata ptr %35, metadata !513, metadata !DIExpression()), !dbg !515
  %366 = load ptr, ptr %7, align 4, !dbg !516
  %367 = ptrtoint ptr %366 to i32, !dbg !516
  %368 = add i32 %367, 7, !dbg !516
  %369 = and i32 %368, -8, !dbg !516
  %370 = inttoptr i32 %369 to ptr, !dbg !516
  %371 = getelementptr inbounds i8, ptr %370, i32 8, !dbg !516
  store ptr %371, ptr %7, align 4, !dbg !516
  %372 = load i64, ptr %370, align 8, !dbg !516
  store i64 %372, ptr %35, align 8, !dbg !515
  %373 = load ptr, ptr %12, align 4, !dbg !517
  %374 = icmp ne ptr %373, null, !dbg !519
  br i1 %374, label %375, label %378, !dbg !520

375:                                              ; preds = %365
  %376 = load i64, ptr %35, align 8, !dbg !521
  %377 = load ptr, ptr %13, align 4, !dbg !525
  store i64 %376, ptr %377, align 8, !dbg !526
  br label %378, !dbg !527

378:                                              ; preds = %375, %365
  %379 = load ptr, ptr %13, align 4, !dbg !528
  %380 = getelementptr inbounds i8, ptr %379, i32 8, !dbg !528
  store ptr %380, ptr %13, align 4, !dbg !528
  br label %382, !dbg !529

381:                                              ; preds = %362
  store i32 -5, ptr %6, align 4, !dbg !530
  br label %555, !dbg !530

382:                                              ; preds = %378
  br label %383

383:                                              ; preds = %382, %359
  br label %384

384:                                              ; preds = %383, %344
  br label %385

385:                                              ; preds = %384, %329
  br label %86, !dbg !193, !llvm.loop !219

386:                                              ; preds = %92
  %387 = load ptr, ptr %13, align 4, !dbg !532
  %388 = ptrtoint ptr %387 to i32, !dbg !534
  %389 = load ptr, ptr %12, align 4, !dbg !535
  %390 = ptrtoint ptr %389 to i32, !dbg !536
  %391 = sub i32 %388, %390, !dbg !537
  %392 = udiv i32 %391, 4, !dbg !538
  %393 = icmp ugt i32 %392, 255, !dbg !539
  br i1 %393, label %394, label %395, !dbg !540

394:                                              ; preds = %386
  store i32 -5, ptr %6, align 4, !dbg !541
  br label %555, !dbg !541

395:                                              ; preds = %386
  %396 = load ptr, ptr %12, align 4, !dbg !543
  %397 = icmp eq ptr %396, null, !dbg !545
  br i1 %397, label %398, label %407, !dbg !546

398:                                              ; preds = %395
  %399 = load ptr, ptr %13, align 4, !dbg !547
  %400 = ptrtoint ptr %399 to i32, !dbg !549
  %401 = load ptr, ptr %12, align 4, !dbg !550
  %402 = ptrtoint ptr %401 to i32, !dbg !551
  %403 = sub i32 %400, %402, !dbg !552
  %404 = load i32, ptr %9, align 4, !dbg !553
  %405 = add i32 %403, %404, !dbg !554
  %406 = sub i32 %405, 8, !dbg !555
  store i32 %406, ptr %6, align 4, !dbg !556
  br label %555, !dbg !556

407:                                              ; preds = %395
  %408 = load ptr, ptr %12, align 4, !dbg !557
  store ptr null, ptr %408, align 4, !dbg !558
  %409 = load ptr, ptr %13, align 4, !dbg !559
  %410 = ptrtoint ptr %409 to i32, !dbg !560
  %411 = load ptr, ptr %12, align 4, !dbg !561
  %412 = ptrtoint ptr %411 to i32, !dbg !562
  %413 = sub i32 %410, %412, !dbg !563
  %414 = udiv i32 %413, 4, !dbg !564
  %415 = trunc i32 %414 to i8, !dbg !565
  %416 = load ptr, ptr %28, align 4, !dbg !566
  %417 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %416, i32 0, i32 0, !dbg !567
  store i8 %415, ptr %417, align 1, !dbg !568
  %418 = load i8, ptr %25, align 1, !dbg !569
  %419 = trunc i8 %418 to i1, !dbg !569
  br i1 %419, label %420, label %427, !dbg !571

420:                                              ; preds = %407
  %421 = load ptr, ptr %28, align 4, !dbg !572
  %422 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %421, i32 0, i32 1, !dbg !574
  store i8 0, ptr %422, align 1, !dbg !575
  %423 = load i32, ptr %19, align 4, !dbg !576
  %424 = trunc i32 %423 to i8, !dbg !576
  %425 = load ptr, ptr %28, align 4, !dbg !577
  %426 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %425, i32 0, i32 3, !dbg !578
  store i8 %424, ptr %426, align 1, !dbg !579
  br label %434, !dbg !580

427:                                              ; preds = %407
  %428 = load i32, ptr %19, align 4, !dbg !581
  %429 = trunc i32 %428 to i8, !dbg !581
  %430 = load ptr, ptr %28, align 4, !dbg !583
  %431 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %430, i32 0, i32 1, !dbg !584
  store i8 %429, ptr %431, align 1, !dbg !585
  %432 = load ptr, ptr %28, align 4, !dbg !586
  %433 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %432, i32 0, i32 3, !dbg !587
  store i8 0, ptr %433, align 1, !dbg !588
  br label %434

434:                                              ; preds = %427, %420
  %435 = load i32, ptr %20, align 4, !dbg !589
  %436 = trunc i32 %435 to i8, !dbg !589
  %437 = load ptr, ptr %28, align 4, !dbg !590
  %438 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %437, i32 0, i32 2, !dbg !591
  store i8 %436, ptr %438, align 1, !dbg !592
  %439 = load i32, ptr %20, align 4, !dbg !593
  %440 = icmp ne i32 %439, 0, !dbg !593
  br i1 %440, label %441, label %478, !dbg !595

441:                                              ; preds = %434
  store i32 0, ptr %22, align 4, !dbg !596
  br label %442, !dbg !599

442:                                              ; preds = %474, %441
  %443 = load i32, ptr %22, align 4, !dbg !600
  %444 = load i32, ptr %18, align 4, !dbg !602
  %445 = icmp ult i32 %443, %444, !dbg !603
  br i1 %445, label %446, label %477, !dbg !604

446:                                              ; preds = %442
  %447 = load i32, ptr %22, align 4, !dbg !605
  %448 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %447, !dbg !608
  %449 = load i8, ptr %448, align 1, !dbg !608
  %450 = zext i8 %449 to i32, !dbg !608
  %451 = and i32 %450, 128, !dbg !609
  %452 = icmp ne i32 %451, 0, !dbg !609
  br i1 %452, label %454, label %453, !dbg !610

453:                                              ; preds = %446
  br label %474, !dbg !611

454:                                              ; preds = %446
  call void @llvm.dbg.declare(metadata ptr %36, metadata !613, metadata !DIExpression()), !dbg !614
  %455 = load i32, ptr %22, align 4, !dbg !615
  %456 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %455, !dbg !616
  %457 = load i8, ptr %456, align 1, !dbg !616
  %458 = zext i8 %457 to i32, !dbg !616
  %459 = and i32 %458, 127, !dbg !617
  %460 = trunc i32 %459 to i8, !dbg !616
  store i8 %460, ptr %36, align 1, !dbg !614
  %461 = load ptr, ptr %13, align 4, !dbg !618
  %462 = ptrtoint ptr %461 to i32, !dbg !620
  %463 = load ptr, ptr %12, align 4, !dbg !621
  %464 = ptrtoint ptr %463 to i32, !dbg !622
  %465 = sub i32 %462, %464, !dbg !623
  %466 = add i32 %465, 1, !dbg !624
  %467 = load i32, ptr %9, align 4, !dbg !625
  %468 = icmp ugt i32 %466, %467, !dbg !626
  br i1 %468, label %469, label %470, !dbg !627

469:                                              ; preds = %454
  store i32 -28, ptr %6, align 4, !dbg !628
  br label %555, !dbg !628

470:                                              ; preds = %454
  %471 = load i8, ptr %36, align 1, !dbg !630
  %472 = load ptr, ptr %13, align 4, !dbg !631
  %473 = getelementptr inbounds i8, ptr %472, i32 1, !dbg !631
  store ptr %473, ptr %13, align 4, !dbg !631
  store i8 %471, ptr %472, align 1, !dbg !632
  br label %474, !dbg !633

474:                                              ; preds = %470, %453
  %475 = load i32, ptr %22, align 4, !dbg !634
  %476 = add i32 %475, 1, !dbg !634
  store i32 %476, ptr %22, align 4, !dbg !634
  br label %442, !dbg !635, !llvm.loop !636

477:                                              ; preds = %442
  br label %478, !dbg !638

478:                                              ; preds = %477, %434
  store i32 0, ptr %22, align 4, !dbg !639
  br label %479, !dbg !641

479:                                              ; preds = %546, %478
  %480 = load i32, ptr %22, align 4, !dbg !642
  %481 = load i32, ptr %18, align 4, !dbg !644
  %482 = icmp ult i32 %480, %481, !dbg !645
  br i1 %482, label %483, label %549, !dbg !646

483:                                              ; preds = %479
  %484 = load i32, ptr %20, align 4, !dbg !647
  %485 = icmp ne i32 %484, 0, !dbg !647
  br i1 %485, label %486, label %494, !dbg !650

486:                                              ; preds = %483
  %487 = load i32, ptr %22, align 4, !dbg !651
  %488 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %487, !dbg !652
  %489 = load i8, ptr %488, align 1, !dbg !652
  %490 = zext i8 %489 to i32, !dbg !652
  %491 = and i32 %490, 128, !dbg !653
  %492 = icmp ne i32 %491, 0, !dbg !653
  br i1 %492, label %493, label %494, !dbg !654

493:                                              ; preds = %486
  br label %546, !dbg !655

494:                                              ; preds = %486, %483
  %495 = load i8, ptr %25, align 1, !dbg !657
  %496 = trunc i8 %495 to i1, !dbg !657
  br i1 %496, label %497, label %503, !dbg !659

497:                                              ; preds = %494
  store i32 0, ptr %14, align 4, !dbg !660
  %498 = load i32, ptr %22, align 4, !dbg !662
  %499 = getelementptr inbounds [16 x i8], ptr %17, i32 0, i32 %498, !dbg !663
  %500 = load i8, ptr %499, align 1, !dbg !663
  %501 = load ptr, ptr %13, align 4, !dbg !664
  %502 = getelementptr inbounds i8, ptr %501, i32 1, !dbg !664
  store ptr %502, ptr %13, align 4, !dbg !664
  store i8 %500, ptr %501, align 1, !dbg !665
  br label %522, !dbg !666

503:                                              ; preds = %494
  %504 = load ptr, ptr %12, align 4, !dbg !667
  %505 = load i32, ptr %22, align 4, !dbg !669
  %506 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %505, !dbg !670
  %507 = load i8, ptr %506, align 1, !dbg !670
  %508 = zext i8 %507 to i32, !dbg !670
  %509 = mul i32 %508, 4, !dbg !671
  %510 = getelementptr inbounds i8, ptr %504, i32 %509, !dbg !672
  %511 = load ptr, ptr %510, align 4, !dbg !673
  store ptr %511, ptr %23, align 4, !dbg !674
  %512 = load ptr, ptr %12, align 4, !dbg !675
  %513 = load i32, ptr %22, align 4, !dbg !676
  %514 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %513, !dbg !677
  %515 = load i8, ptr %514, align 1, !dbg !677
  %516 = zext i8 %515 to i32, !dbg !677
  %517 = mul i32 %516, 4, !dbg !678
  %518 = getelementptr inbounds i8, ptr %512, i32 %517, !dbg !679
  store ptr null, ptr %518, align 4, !dbg !680
  %519 = load ptr, ptr %23, align 4, !dbg !681
  %520 = call i32 @strlen(ptr noundef %519) #6, !dbg !682
  %521 = add i32 %520, 1, !dbg !683
  store i32 %521, ptr %14, align 4, !dbg !684
  br label %522

522:                                              ; preds = %503, %497
  %523 = load ptr, ptr %13, align 4, !dbg !685
  %524 = ptrtoint ptr %523 to i32, !dbg !687
  %525 = load ptr, ptr %12, align 4, !dbg !688
  %526 = ptrtoint ptr %525 to i32, !dbg !689
  %527 = sub i32 %524, %526, !dbg !690
  %528 = add i32 %527, 1, !dbg !691
  %529 = load i32, ptr %14, align 4, !dbg !692
  %530 = add i32 %528, %529, !dbg !693
  %531 = load i32, ptr %9, align 4, !dbg !694
  %532 = icmp ugt i32 %530, %531, !dbg !695
  br i1 %532, label %533, label %534, !dbg !696

533:                                              ; preds = %522
  store i32 -28, ptr %6, align 4, !dbg !697
  br label %555, !dbg !697

534:                                              ; preds = %522
  %535 = load i32, ptr %22, align 4, !dbg !699
  %536 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %535, !dbg !700
  %537 = load i8, ptr %536, align 1, !dbg !700
  %538 = load ptr, ptr %13, align 4, !dbg !701
  %539 = getelementptr inbounds i8, ptr %538, i32 1, !dbg !701
  store ptr %539, ptr %13, align 4, !dbg !701
  store i8 %537, ptr %538, align 1, !dbg !702
  %540 = load ptr, ptr %13, align 4, !dbg !703
  %541 = load ptr, ptr %23, align 4, !dbg !704
  %542 = load i32, ptr %14, align 4, !dbg !705
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %540, ptr align 1 %541, i32 %542, i1 false), !dbg !706
  %543 = load i32, ptr %14, align 4, !dbg !707
  %544 = load ptr, ptr %13, align 4, !dbg !708
  %545 = getelementptr inbounds i8, ptr %544, i32 %543, !dbg !708
  store ptr %545, ptr %13, align 4, !dbg !708
  br label %546, !dbg !709

546:                                              ; preds = %534, %493
  %547 = load i32, ptr %22, align 4, !dbg !710
  %548 = add i32 %547, 1, !dbg !710
  store i32 %548, ptr %22, align 4, !dbg !710
  br label %479, !dbg !711, !llvm.loop !712

549:                                              ; preds = %479
  %550 = load ptr, ptr %13, align 4, !dbg !714
  %551 = ptrtoint ptr %550 to i32, !dbg !715
  %552 = load ptr, ptr %12, align 4, !dbg !716
  %553 = ptrtoint ptr %552 to i32, !dbg !717
  %554 = sub i32 %551, %553, !dbg !718
  store i32 %554, ptr %6, align 4, !dbg !719
  br label %555, !dbg !719

555:                                              ; preds = %549, %533, %469, %398, %394, %381, %277, %273, %222, %180, %81, %55
  %556 = load i32, ptr %6, align 4, !dbg !720
  ret i32 %556, !dbg !720
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @ptr_in_rodata(ptr noundef %0) #0 !dbg !721 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !724, metadata !DIExpression()), !dbg !725
  %3 = load ptr, ptr %2, align 4, !dbg !726
  %4 = call zeroext i1 @linker_is_in_rodata(ptr noundef %3), !dbg !727
  ret i1 %4, !dbg !728
}

; Function Attrs: nounwind
declare i32 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @cbprintf_package(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) #0 !dbg !729 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.__va_list, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !732, metadata !DIExpression()), !dbg !733
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !734, metadata !DIExpression()), !dbg !735
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !736, metadata !DIExpression()), !dbg !737
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !738, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.declare(metadata ptr %9, metadata !740, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.declare(metadata ptr %10, metadata !742, metadata !DIExpression()), !dbg !743
  call void @llvm.va_start(ptr %9), !dbg !744
  %11 = load ptr, ptr %5, align 4, !dbg !745
  %12 = load i32, ptr %6, align 4, !dbg !746
  %13 = load i32, ptr %7, align 4, !dbg !747
  %14 = load ptr, ptr %8, align 4, !dbg !748
  %15 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !749
  %16 = load [1 x i32], ptr %15, align 4, !dbg !749
  %17 = call i32 @cbvprintf_package(ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, [1 x i32] %16), !dbg !749
  store i32 %17, ptr %10, align 4, !dbg !750
  call void @llvm.va_end(ptr %9), !dbg !751
  %18 = load i32, ptr %10, align 4, !dbg !752
  ret i32 %18, !dbg !753
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: noinline nounwind optnone
define hidden i32 @cbpprintf_external(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !754 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !765, metadata !DIExpression()), !dbg !766
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !767, metadata !DIExpression()), !dbg !768
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !769, metadata !DIExpression()), !dbg !770
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !771, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.declare(metadata ptr %10, metadata !773, metadata !DIExpression()), !dbg !774
  %20 = load ptr, ptr %9, align 4, !dbg !775
  store ptr %20, ptr %10, align 4, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %11, metadata !776, metadata !DIExpression()), !dbg !782
  %21 = load ptr, ptr %9, align 4, !dbg !783
  store ptr %21, ptr %11, align 4, !dbg !782
  call void @llvm.dbg.declare(metadata ptr %12, metadata !784, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.declare(metadata ptr %13, metadata !786, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.declare(metadata ptr %14, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.declare(metadata ptr %15, metadata !790, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata ptr %16, metadata !792, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.declare(metadata ptr %17, metadata !794, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.declare(metadata ptr %18, metadata !796, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %19, metadata !798, metadata !DIExpression()), !dbg !799
  %22 = load ptr, ptr %10, align 4, !dbg !800
  %23 = icmp eq ptr %22, null, !dbg !802
  br i1 %23, label %24, label %25, !dbg !803

24:                                               ; preds = %4
  store i32 -5, ptr %5, align 4, !dbg !804
  br label %89, !dbg !804

25:                                               ; preds = %4
  %26 = load ptr, ptr %11, align 4, !dbg !806
  %27 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %26, i32 0, i32 0, !dbg !807
  %28 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %27, i32 0, i32 0, !dbg !808
  %29 = load i8, ptr %28, align 1, !dbg !808
  %30 = zext i8 %29 to i32, !dbg !806
  %31 = mul i32 %30, 4, !dbg !809
  store i32 %31, ptr %15, align 4, !dbg !810
  %32 = load ptr, ptr %11, align 4, !dbg !811
  %33 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %32, i32 0, i32 0, !dbg !812
  %34 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %33, i32 0, i32 1, !dbg !813
  %35 = load i8, ptr %34, align 1, !dbg !813
  %36 = zext i8 %35 to i32, !dbg !811
  store i32 %36, ptr %16, align 4, !dbg !814
  %37 = load ptr, ptr %11, align 4, !dbg !815
  %38 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %37, i32 0, i32 0, !dbg !816
  %39 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %38, i32 0, i32 2, !dbg !817
  %40 = load i8, ptr %39, align 1, !dbg !817
  %41 = zext i8 %40 to i32, !dbg !815
  store i32 %41, ptr %17, align 4, !dbg !818
  %42 = load ptr, ptr %11, align 4, !dbg !819
  %43 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %42, i32 0, i32 0, !dbg !820
  %44 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %43, i32 0, i32 3, !dbg !821
  %45 = load i8, ptr %44, align 1, !dbg !821
  %46 = zext i8 %45 to i32, !dbg !819
  store i32 %46, ptr %18, align 4, !dbg !822
  %47 = load ptr, ptr %10, align 4, !dbg !823
  %48 = load i32, ptr %15, align 4, !dbg !824
  %49 = getelementptr inbounds i8, ptr %47, i32 %48, !dbg !825
  %50 = load i32, ptr %17, align 4, !dbg !826
  %51 = getelementptr inbounds i8, ptr %49, i32 %50, !dbg !827
  %52 = load i32, ptr %18, align 4, !dbg !828
  %53 = mul i32 2, %52, !dbg !829
  %54 = getelementptr inbounds i8, ptr %51, i32 %53, !dbg !830
  store ptr %54, ptr %12, align 4, !dbg !831
  store i32 0, ptr %14, align 4, !dbg !832
  br label %55, !dbg !834

55:                                               ; preds = %75, %25
  %56 = load i32, ptr %14, align 4, !dbg !835
  %57 = load i32, ptr %16, align 4, !dbg !837
  %58 = icmp ult i32 %56, %57, !dbg !838
  br i1 %58, label %59, label %78, !dbg !839

59:                                               ; preds = %55
  %60 = load ptr, ptr %12, align 4, !dbg !840
  %61 = getelementptr inbounds i8, ptr %60, i32 1, !dbg !840
  store ptr %61, ptr %12, align 4, !dbg !840
  %62 = load i8, ptr %60, align 1, !dbg !842
  %63 = zext i8 %62 to i32, !dbg !842
  store i32 %63, ptr %19, align 4, !dbg !843
  %64 = load ptr, ptr %10, align 4, !dbg !844
  %65 = load i32, ptr %19, align 4, !dbg !845
  %66 = mul i32 %65, 4, !dbg !846
  %67 = getelementptr inbounds i8, ptr %64, i32 %66, !dbg !847
  store ptr %67, ptr %13, align 4, !dbg !848
  %68 = load ptr, ptr %12, align 4, !dbg !849
  %69 = load ptr, ptr %13, align 4, !dbg !850
  store ptr %68, ptr %69, align 4, !dbg !851
  %70 = load ptr, ptr %12, align 4, !dbg !852
  %71 = call i32 @strlen(ptr noundef %70) #6, !dbg !853
  %72 = add i32 %71, 1, !dbg !854
  %73 = load ptr, ptr %12, align 4, !dbg !855
  %74 = getelementptr inbounds i8, ptr %73, i32 %72, !dbg !855
  store ptr %74, ptr %12, align 4, !dbg !855
  br label %75, !dbg !856

75:                                               ; preds = %59
  %76 = load i32, ptr %14, align 4, !dbg !857
  %77 = add i32 %76, 1, !dbg !857
  store i32 %77, ptr %14, align 4, !dbg !857
  br label %55, !dbg !858, !llvm.loop !859

78:                                               ; preds = %55
  %79 = load ptr, ptr %10, align 4, !dbg !861
  %80 = getelementptr inbounds i8, ptr %79, i32 8, !dbg !861
  store ptr %80, ptr %10, align 4, !dbg !861
  %81 = load ptr, ptr %6, align 4, !dbg !862
  %82 = load ptr, ptr %7, align 4, !dbg !863
  %83 = load ptr, ptr %8, align 4, !dbg !864
  %84 = load ptr, ptr %11, align 4, !dbg !865
  %85 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %84, i32 0, i32 1, !dbg !866
  %86 = load ptr, ptr %85, align 1, !dbg !866
  %87 = load ptr, ptr %10, align 4, !dbg !867
  %88 = call i32 @cbprintf_via_va_list(ptr noundef %81, ptr noundef %82, ptr noundef %83, ptr noundef %86, ptr noundef %87), !dbg !868
  store i32 %88, ptr %5, align 4, !dbg !869
  br label %89, !dbg !869

89:                                               ; preds = %78, %24
  %90 = load i32, ptr %5, align 4, !dbg !870
  ret i32 %90, !dbg !870
}

; Function Attrs: noinline nounwind optnone
define internal i32 @cbprintf_via_va_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !871 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %union.anon.0, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !874, metadata !DIExpression()), !dbg !875
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !876, metadata !DIExpression()), !dbg !877
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !878, metadata !DIExpression()), !dbg !879
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !880, metadata !DIExpression()), !dbg !881
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !882, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.declare(metadata ptr %11, metadata !884, metadata !DIExpression()), !dbg !889
  %12 = load ptr, ptr %10, align 4, !dbg !890
  store ptr %12, ptr %11, align 4, !dbg !891
  %13 = load ptr, ptr %7, align 4, !dbg !892
  %14 = load ptr, ptr %6, align 4, !dbg !893
  %15 = load ptr, ptr %8, align 4, !dbg !894
  %16 = load ptr, ptr %9, align 4, !dbg !895
  %17 = getelementptr inbounds %struct.__va_list, ptr %11, i32 0, i32 0, !dbg !892
  %18 = load [1 x i32], ptr %17, align 4, !dbg !892
  %19 = call i32 %13(ptr noundef %14, ptr noundef %15, ptr noundef %16, [1 x i32] %18), !dbg !892
  ret i32 %19, !dbg !896
}

; Function Attrs: noinline nounwind optnone
define hidden zeroext i1 @is_ptr(ptr noundef %0, i32 noundef %1) #0 !dbg !897 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !900, metadata !DIExpression()), !dbg !901
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !902, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.declare(metadata ptr %6, metadata !904, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.declare(metadata ptr %7, metadata !906, metadata !DIExpression()), !dbg !907
  store i8 0, ptr %7, align 1, !dbg !907
  call void @llvm.dbg.declare(metadata ptr %8, metadata !908, metadata !DIExpression()), !dbg !909
  store i32 0, ptr %8, align 4, !dbg !909
  br label %9, !dbg !910

9:                                                ; preds = %50, %2
  %10 = load ptr, ptr %4, align 4, !dbg !911
  %11 = getelementptr inbounds i8, ptr %10, i32 1, !dbg !911
  store ptr %11, ptr %4, align 4, !dbg !911
  %12 = load i8, ptr %10, align 1, !dbg !912
  store i8 %12, ptr %6, align 1, !dbg !913
  %13 = zext i8 %12 to i32, !dbg !914
  %14 = icmp ne i32 %13, 0, !dbg !915
  br i1 %14, label %15, label %51, !dbg !910

15:                                               ; preds = %9
  %16 = load i8, ptr %7, align 1, !dbg !916
  %17 = trunc i8 %16 to i1, !dbg !916
  br i1 %17, label %18, label %41, !dbg !919

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 4, !dbg !920
  %20 = load i32, ptr %5, align 4, !dbg !923
  %21 = icmp eq i32 %19, %20, !dbg !924
  br i1 %21, label %22, label %33, !dbg !925

22:                                               ; preds = %18
  %23 = load i8, ptr %6, align 1, !dbg !926
  %24 = zext i8 %23 to i32, !dbg !926
  %25 = icmp eq i32 %24, 112, !dbg !929
  br i1 %25, label %26, label %27, !dbg !930

26:                                               ; preds = %22
  store i1 true, ptr %3, align 1, !dbg !931
  br label %52, !dbg !931

27:                                               ; preds = %22
  %28 = load i8, ptr %6, align 1, !dbg !933
  %29 = call zeroext i1 @is_fmt_spec(i8 noundef zeroext %28), !dbg !935
  br i1 %29, label %30, label %31, !dbg !936

30:                                               ; preds = %27
  store i1 false, ptr %3, align 1, !dbg !937
  br label %52, !dbg !937

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  br label %40, !dbg !939

33:                                               ; preds = %18
  %34 = load i8, ptr %6, align 1, !dbg !940
  %35 = call zeroext i1 @is_fmt_spec(i8 noundef zeroext %34), !dbg !942
  br i1 %35, label %36, label %39, !dbg !943

36:                                               ; preds = %33
  %37 = load i32, ptr %8, align 4, !dbg !944
  %38 = add nsw i32 %37, 1, !dbg !944
  store i32 %38, ptr %8, align 4, !dbg !944
  store i8 0, ptr %7, align 1, !dbg !946
  br label %39, !dbg !947

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %32
  br label %41, !dbg !948

41:                                               ; preds = %40, %15
  %42 = load i8, ptr %6, align 1, !dbg !949
  %43 = zext i8 %42 to i32, !dbg !949
  %44 = icmp eq i32 %43, 37, !dbg !951
  br i1 %44, label %45, label %50, !dbg !952

45:                                               ; preds = %41
  %46 = load i8, ptr %7, align 1, !dbg !953
  %47 = trunc i8 %46 to i1, !dbg !953
  %48 = xor i1 %47, true, !dbg !955
  %49 = zext i1 %48 to i8, !dbg !956
  store i8 %49, ptr %7, align 1, !dbg !956
  br label %50, !dbg !957

50:                                               ; preds = %45, %41
  br label %9, !dbg !910, !llvm.loop !958

51:                                               ; preds = %9
  store i1 false, ptr %3, align 1, !dbg !960
  br label %52, !dbg !960

52:                                               ; preds = %51, %30, %26
  %53 = load i1, ptr %3, align 1, !dbg !961
  ret i1 %53, !dbg !961
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @is_fmt_spec(i8 noundef zeroext %0) #0 !dbg !962 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !965, metadata !DIExpression()), !dbg !966
  %3 = load i8, ptr %2, align 1, !dbg !967
  %4 = zext i8 %3 to i32, !dbg !967
  %5 = icmp sge i32 %4, 64, !dbg !968
  br i1 %5, label %6, label %10, !dbg !969

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 1, !dbg !970
  %8 = zext i8 %7 to i32, !dbg !970
  %9 = icmp sle i32 %8, 122, !dbg !971
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !972
  ret i1 %11, !dbg !973
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @cbprintf_package_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !974 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = alloca ptr, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca ptr, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 4
  %27 = alloca ptr, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca ptr, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  %33 = alloca i32, align 4
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca ptr, align 4
  %37 = alloca i8, align 1
  %38 = alloca i32, align 4
  %39 = alloca i8, align 1
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 4
  %42 = alloca %struct.cbprintf_package_desc, align 1
  %43 = alloca [16 x i8], align 1
  %44 = alloca [16 x i8], align 1
  %45 = alloca i8, align 1
  %46 = alloca i8, align 1
  %47 = alloca ptr, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i8, align 1
  %51 = alloca i8, align 1
  %52 = alloca ptr, align 4
  %53 = alloca i8, align 1
  %54 = alloca %struct.cbprintf_package_desc, align 1
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i8, align 1
  %58 = alloca ptr, align 4
  %59 = alloca i16, align 2
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !984, metadata !DIExpression()), !dbg !985
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !986, metadata !DIExpression()), !dbg !987
  store ptr %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !988, metadata !DIExpression()), !dbg !989
  store ptr %3, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !990, metadata !DIExpression()), !dbg !991
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !992, metadata !DIExpression()), !dbg !993
  store ptr %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !994, metadata !DIExpression()), !dbg !995
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !996, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata ptr %16, metadata !998, metadata !DIExpression()), !dbg !999
  %60 = load ptr, ptr %9, align 4, !dbg !1000
  store ptr %60, ptr %16, align 4, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1001, metadata !DIExpression()), !dbg !1003
  %61 = load ptr, ptr %9, align 4, !dbg !1004
  store ptr %61, ptr %17, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1007, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1009, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1011, metadata !DIExpression()), !dbg !1012
  %62 = load i32, ptr %13, align 4, !dbg !1013
  %63 = and i32 %62, 8, !dbg !1014
  %64 = icmp ne i32 %63, 0, !dbg !1013
  %65 = zext i1 %64 to i64, !dbg !1013
  %66 = select i1 %64, i32 1, i32 0, !dbg !1013
  %67 = icmp ne i32 %66, 0, !dbg !1013
  %68 = zext i1 %67 to i8, !dbg !1012
  store i8 %68, ptr %21, align 1, !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1015, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1017, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1019, metadata !DIExpression()), !dbg !1021
  %69 = load ptr, ptr %9, align 4, !dbg !1022
  store ptr %69, ptr %24, align 4, !dbg !1021
  %70 = load i32, ptr %10, align 4, !dbg !1023
  %71 = icmp ne i32 %70, 0, !dbg !1024
  br i1 %71, label %72, label %74, !dbg !1023

72:                                               ; preds = %7
  %73 = load i32, ptr %10, align 4, !dbg !1025
  br label %77, !dbg !1023

74:                                               ; preds = %7
  %75 = load ptr, ptr %9, align 4, !dbg !1026
  %76 = call i32 @get_package_len(ptr noundef %75), !dbg !1027
  br label %77, !dbg !1023

77:                                               ; preds = %74, %72
  %78 = phi i32 [ %73, %72 ], [ %76, %74 ], !dbg !1023
  store i32 %78, ptr %10, align 4, !dbg !1028
  %79 = load ptr, ptr %24, align 4, !dbg !1029
  %80 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %79, i32 0, i32 2, !dbg !1030
  %81 = load i8, ptr %80, align 1, !dbg !1030
  %82 = zext i8 %81 to i32, !dbg !1029
  store i32 %82, ptr %19, align 4, !dbg !1031
  %83 = load i32, ptr %19, align 4, !dbg !1032
  %84 = icmp ne i32 %83, 0, !dbg !1032
  br i1 %84, label %85, label %89, !dbg !1033

85:                                               ; preds = %77
  %86 = load i32, ptr %13, align 4, !dbg !1034
  %87 = and i32 %86, 1, !dbg !1035
  %88 = icmp eq i32 %87, 1, !dbg !1036
  br label %89

89:                                               ; preds = %85, %77
  %90 = phi i1 [ false, %77 ], [ %88, %85 ], !dbg !1037
  %91 = zext i1 %90 to i8, !dbg !1038
  store i8 %91, ptr %23, align 1, !dbg !1038
  %92 = load ptr, ptr %24, align 4, !dbg !1039
  %93 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %92, i32 0, i32 3, !dbg !1040
  %94 = load i8, ptr %93, align 1, !dbg !1040
  %95 = zext i8 %94 to i32, !dbg !1039
  store i32 %95, ptr %20, align 4, !dbg !1041
  %96 = load i32, ptr %20, align 4, !dbg !1042
  %97 = icmp ugt i32 %96, 0, !dbg !1043
  br i1 %97, label %98, label %102, !dbg !1044

98:                                               ; preds = %89
  %99 = load i32, ptr %13, align 4, !dbg !1045
  %100 = and i32 %99, 2, !dbg !1046
  %101 = icmp eq i32 %100, 2, !dbg !1047
  br label %102

102:                                              ; preds = %98, %89
  %103 = phi i1 [ false, %89 ], [ %101, %98 ], !dbg !1037
  %104 = zext i1 %103 to i8, !dbg !1048
  store i8 %104, ptr %22, align 1, !dbg !1048
  %105 = load i8, ptr %22, align 1, !dbg !1049
  %106 = trunc i8 %105 to i1, !dbg !1049
  br i1 %106, label %121, label %107, !dbg !1051

107:                                              ; preds = %102
  %108 = load i8, ptr %23, align 1, !dbg !1052
  %109 = trunc i8 %108 to i1, !dbg !1052
  br i1 %109, label %121, label %110, !dbg !1053

110:                                              ; preds = %107
  %111 = load ptr, ptr %11, align 4, !dbg !1054
  %112 = icmp ne ptr %111, null, !dbg !1054
  br i1 %112, label %113, label %119, !dbg !1057

113:                                              ; preds = %110
  %114 = load ptr, ptr %11, align 4, !dbg !1058
  %115 = load ptr, ptr %9, align 4, !dbg !1060
  %116 = load i32, ptr %10, align 4, !dbg !1061
  %117 = load ptr, ptr %12, align 4, !dbg !1062
  %118 = call i32 %114(ptr noundef %115, i32 noundef %116, ptr noundef %117), !dbg !1058
  br label %119, !dbg !1063

119:                                              ; preds = %113, %110
  %120 = load i32, ptr %10, align 4, !dbg !1064
  store i32 %120, ptr %8, align 4, !dbg !1065
  br label %547, !dbg !1065

121:                                              ; preds = %107, %102
  %122 = load ptr, ptr %24, align 4, !dbg !1066
  %123 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %122, i32 0, i32 0, !dbg !1067
  %124 = load i8, ptr %123, align 1, !dbg !1067
  %125 = zext i8 %124 to i32, !dbg !1066
  %126 = mul i32 %125, 4, !dbg !1068
  store i32 %126, ptr %18, align 4, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1070, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1072, metadata !DIExpression()), !dbg !1073
  %127 = load ptr, ptr %16, align 4, !dbg !1074
  %128 = getelementptr inbounds i8, ptr %127, i32 4, !dbg !1075
  %129 = load ptr, ptr %128, align 4, !dbg !1076
  store ptr %129, ptr %26, align 4, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1077, metadata !DIExpression()), !dbg !1078
  %130 = load ptr, ptr %16, align 4, !dbg !1079
  %131 = load i32, ptr %18, align 4, !dbg !1080
  %132 = getelementptr inbounds i8, ptr %130, i32 %131, !dbg !1079
  store ptr %132, ptr %27, align 4, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1081, metadata !DIExpression()), !dbg !1082
  store i32 0, ptr %28, align 4, !dbg !1082
  %133 = load ptr, ptr %11, align 4, !dbg !1083
  %134 = icmp eq ptr %133, null, !dbg !1085
  br i1 %134, label %135, label %286, !dbg !1086

135:                                              ; preds = %121
  %136 = load i32, ptr %10, align 4, !dbg !1087
  store i32 %136, ptr %25, align 4, !dbg !1089
  %137 = load i8, ptr %23, align 1, !dbg !1090
  %138 = trunc i8 %137 to i1, !dbg !1090
  br i1 %138, label %139, label %177, !dbg !1092

139:                                              ; preds = %135
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1093, metadata !DIExpression()), !dbg !1096
  store i32 0, ptr %29, align 4, !dbg !1096
  br label %140, !dbg !1097

140:                                              ; preds = %173, %139
  %141 = load i32, ptr %29, align 4, !dbg !1098
  %142 = load i32, ptr %19, align 4, !dbg !1100
  %143 = icmp ult i32 %141, %142, !dbg !1101
  br i1 %143, label %144, label %176, !dbg !1102

144:                                              ; preds = %140
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1103, metadata !DIExpression()), !dbg !1105
  %145 = load ptr, ptr %17, align 4, !dbg !1106
  %146 = load ptr, ptr %27, align 4, !dbg !1107
  %147 = load i8, ptr %146, align 1, !dbg !1108
  %148 = zext i8 %147 to i32, !dbg !1106
  %149 = getelementptr inbounds i32, ptr %145, i32 %148, !dbg !1106
  %150 = load ptr, ptr %149, align 4, !dbg !1109
  store ptr %150, ptr %30, align 4, !dbg !1105
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1110, metadata !DIExpression()), !dbg !1111
  %151 = load ptr, ptr %11, align 4, !dbg !1112
  %152 = load ptr, ptr %30, align 4, !dbg !1113
  %153 = call i32 @append_string(ptr noundef %151, ptr noundef null, ptr noundef %152, i16 noundef zeroext 0), !dbg !1114
  store i32 %153, ptr %31, align 4, !dbg !1111
  %154 = load ptr, ptr %14, align 4, !dbg !1115
  %155 = icmp ne ptr %154, null, !dbg !1115
  br i1 %155, label %156, label %167, !dbg !1117

156:                                              ; preds = %144
  %157 = load i32, ptr %28, align 4, !dbg !1118
  %158 = load i32, ptr %15, align 4, !dbg !1119
  %159 = icmp ult i32 %157, %158, !dbg !1120
  br i1 %159, label %160, label %167, !dbg !1121

160:                                              ; preds = %156
  %161 = load i32, ptr %31, align 4, !dbg !1122
  %162 = trunc i32 %161 to i16, !dbg !1124
  %163 = load ptr, ptr %14, align 4, !dbg !1125
  %164 = load i32, ptr %28, align 4, !dbg !1126
  %165 = add i32 %164, 1, !dbg !1126
  store i32 %165, ptr %28, align 4, !dbg !1126
  %166 = getelementptr inbounds i16, ptr %163, i32 %164, !dbg !1125
  store i16 %162, ptr %166, align 2, !dbg !1127
  br label %167, !dbg !1128

167:                                              ; preds = %160, %156, %144
  %168 = load i32, ptr %31, align 4, !dbg !1129
  %169 = load i32, ptr %25, align 4, !dbg !1130
  %170 = add nsw i32 %169, %168, !dbg !1130
  store i32 %170, ptr %25, align 4, !dbg !1130
  %171 = load ptr, ptr %27, align 4, !dbg !1131
  %172 = getelementptr inbounds i8, ptr %171, i32 1, !dbg !1131
  store ptr %172, ptr %27, align 4, !dbg !1131
  br label %173, !dbg !1132

173:                                              ; preds = %167
  %174 = load i32, ptr %29, align 4, !dbg !1133
  %175 = add i32 %174, 1, !dbg !1133
  store i32 %175, ptr %29, align 4, !dbg !1133
  br label %140, !dbg !1134, !llvm.loop !1135

176:                                              ; preds = %140
  br label %189, !dbg !1137

177:                                              ; preds = %135
  %178 = load i32, ptr %19, align 4, !dbg !1138
  %179 = icmp ne i32 %178, 0, !dbg !1138
  br i1 %179, label %180, label %188, !dbg !1141

180:                                              ; preds = %177
  %181 = load i32, ptr %13, align 4, !dbg !1142
  %182 = and i32 %181, 4, !dbg !1143
  %183 = icmp ne i32 %182, 0, !dbg !1143
  br i1 %183, label %184, label %188, !dbg !1144

184:                                              ; preds = %180
  %185 = load i32, ptr %19, align 4, !dbg !1145
  %186 = load ptr, ptr %27, align 4, !dbg !1147
  %187 = getelementptr inbounds i8, ptr %186, i32 %185, !dbg !1147
  store ptr %187, ptr %27, align 4, !dbg !1147
  br label %188, !dbg !1148

188:                                              ; preds = %184, %180, %177
  br label %189

189:                                              ; preds = %188, %176
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1149, metadata !DIExpression()), !dbg !1150
  %190 = load i32, ptr %13, align 4, !dbg !1151
  %191 = and i32 %190, 5, !dbg !1152
  %192 = icmp ne i32 %191, 0, !dbg !1153
  %193 = xor i1 %192, true, !dbg !1153
  %194 = zext i1 %193 to i8, !dbg !1150
  store i8 %194, ptr %32, align 1, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1154, metadata !DIExpression()), !dbg !1156
  store i32 0, ptr %33, align 4, !dbg !1156
  br label %195, !dbg !1157

195:                                              ; preds = %281, %189
  %196 = load i32, ptr %33, align 4, !dbg !1158
  %197 = load i32, ptr %20, align 4, !dbg !1160
  %198 = icmp ult i32 %196, %197, !dbg !1161
  br i1 %198, label %199, label %284, !dbg !1162

199:                                              ; preds = %195
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1163, metadata !DIExpression()), !dbg !1165
  %200 = load ptr, ptr %27, align 4, !dbg !1166
  %201 = getelementptr inbounds i8, ptr %200, i32 1, !dbg !1166
  store ptr %201, ptr %27, align 4, !dbg !1166
  %202 = load i8, ptr %200, align 1, !dbg !1167
  store i8 %202, ptr %34, align 1, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1168, metadata !DIExpression()), !dbg !1169
  %203 = load ptr, ptr %27, align 4, !dbg !1170
  %204 = getelementptr inbounds i8, ptr %203, i32 1, !dbg !1170
  store ptr %204, ptr %27, align 4, !dbg !1170
  %205 = load i8, ptr %203, align 1, !dbg !1171
  store i8 %205, ptr %35, align 1, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1172, metadata !DIExpression()), !dbg !1173
  %206 = load ptr, ptr %17, align 4, !dbg !1174
  %207 = load i8, ptr %35, align 1, !dbg !1175
  %208 = zext i8 %207 to i32, !dbg !1174
  %209 = getelementptr inbounds i32, ptr %206, i32 %208, !dbg !1174
  %210 = load ptr, ptr %209, align 4, !dbg !1176
  store ptr %210, ptr %36, align 4, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1177, metadata !DIExpression()), !dbg !1178
  %211 = load ptr, ptr %36, align 4, !dbg !1179
  %212 = call zeroext i1 @ptr_in_rodata(ptr noundef %211), !dbg !1180
  %213 = zext i1 %212 to i8, !dbg !1178
  store i8 %213, ptr %37, align 1, !dbg !1178
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1181, metadata !DIExpression()), !dbg !1182
  %214 = load i8, ptr %21, align 1, !dbg !1183
  %215 = trunc i8 %214 to i1, !dbg !1183
  br i1 %215, label %216, label %236, !dbg !1185

216:                                              ; preds = %199
  %217 = load ptr, ptr %26, align 4, !dbg !1186
  %218 = load i8, ptr %34, align 1, !dbg !1187
  %219 = zext i8 %218 to i32, !dbg !1187
  %220 = call zeroext i1 @is_ptr(ptr noundef %217, i32 noundef %219), !dbg !1188
  br i1 %220, label %221, label %236, !dbg !1189

221:                                              ; preds = %216
  br label %222, !dbg !1190

222:                                              ; preds = %221
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1192, metadata !DIExpression()), !dbg !1194
  %223 = call zeroext i1 @k_is_user_context(), !dbg !1195
  %224 = zext i1 %223 to i8, !dbg !1194
  store i8 %224, ptr %39, align 1, !dbg !1194
  call void @llvm.dbg.declare(metadata ptr %40, metadata !1196, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %41, metadata !1198, metadata !DIExpression()), !dbg !1199
  %225 = load ptr, ptr @__log_current_const_data, align 4, !dbg !1200
  store ptr %225, ptr %41, align 4, !dbg !1199
  br label %226, !dbg !1201

226:                                              ; preds = %222
  %227 = load ptr, ptr %41, align 4, !dbg !1202
  %228 = load ptr, ptr %26, align 4, !dbg !1204
  %229 = load i8, ptr %34, align 1, !dbg !1205
  %230 = zext i8 %229 to i32, !dbg !1205
  call void (i8, ptr, i8, ptr, i32, i32, ptr, ...) @z_log_msg_runtime_create(i8 noundef zeroext 0, ptr noundef %227, i8 noundef zeroext 2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef @.str.1, ptr noundef %228, i32 noundef %230), !dbg !1206
  store i32 0, ptr %40, align 4, !dbg !1207
  br label %231, !dbg !1208

231:                                              ; preds = %226
  %232 = load i32, ptr %40, align 4, !dbg !1209
  br label %233, !dbg !1210

233:                                              ; preds = %231
  %234 = load i32, ptr %25, align 4, !dbg !1211
  %235 = sub nsw i32 %234, 2, !dbg !1211
  store i32 %235, ptr %25, align 4, !dbg !1211
  br label %281, !dbg !1212

236:                                              ; preds = %216, %199
  %237 = load i8, ptr %37, align 1, !dbg !1213
  %238 = trunc i8 %237 to i1, !dbg !1213
  br i1 %238, label %239, label %252, !dbg !1215

239:                                              ; preds = %236
  %240 = load i32, ptr %13, align 4, !dbg !1216
  %241 = and i32 %240, 1, !dbg !1219
  %242 = icmp ne i32 %241, 0, !dbg !1219
  br i1 %242, label %243, label %244, !dbg !1220

243:                                              ; preds = %239
  br label %257, !dbg !1221

244:                                              ; preds = %239
  %245 = load i8, ptr %32, align 1, !dbg !1223
  %246 = trunc i8 %245 to i1, !dbg !1223
  %247 = zext i1 %246 to i64, !dbg !1223
  %248 = select i1 %246, i32 2, i32 1, !dbg !1223
  %249 = load i32, ptr %25, align 4, !dbg !1225
  %250 = sub nsw i32 %249, %248, !dbg !1225
  store i32 %250, ptr %25, align 4, !dbg !1225
  br label %251

251:                                              ; preds = %244
  br label %280, !dbg !1226

252:                                              ; preds = %236
  %253 = load i32, ptr %13, align 4, !dbg !1227
  %254 = and i32 %253, 2, !dbg !1229
  %255 = icmp ne i32 %254, 0, !dbg !1229
  br i1 %255, label %256, label %279, !dbg !1230

256:                                              ; preds = %252
  br label %257, !dbg !1231

257:                                              ; preds = %256, %243
  call void @llvm.dbg.label(metadata !1232), !dbg !1234
  %258 = load ptr, ptr %11, align 4, !dbg !1235
  %259 = load ptr, ptr %36, align 4, !dbg !1236
  %260 = call i32 @append_string(ptr noundef %258, ptr noundef null, ptr noundef %259, i16 noundef zeroext 0), !dbg !1237
  store i32 %260, ptr %38, align 4, !dbg !1238
  %261 = load ptr, ptr %14, align 4, !dbg !1239
  %262 = icmp ne ptr %261, null, !dbg !1239
  br i1 %262, label %263, label %274, !dbg !1241

263:                                              ; preds = %257
  %264 = load i32, ptr %28, align 4, !dbg !1242
  %265 = load i32, ptr %15, align 4, !dbg !1243
  %266 = icmp ult i32 %264, %265, !dbg !1244
  br i1 %266, label %267, label %274, !dbg !1245

267:                                              ; preds = %263
  %268 = load i32, ptr %38, align 4, !dbg !1246
  %269 = trunc i32 %268 to i16, !dbg !1248
  %270 = load ptr, ptr %14, align 4, !dbg !1249
  %271 = load i32, ptr %28, align 4, !dbg !1250
  %272 = add i32 %271, 1, !dbg !1250
  store i32 %272, ptr %28, align 4, !dbg !1250
  %273 = getelementptr inbounds i16, ptr %270, i32 %271, !dbg !1249
  store i16 %269, ptr %273, align 2, !dbg !1251
  br label %274, !dbg !1252

274:                                              ; preds = %267, %263, %257
  %275 = load i32, ptr %38, align 4, !dbg !1253
  %276 = sub nsw i32 %275, 1, !dbg !1254
  %277 = load i32, ptr %25, align 4, !dbg !1255
  %278 = add nsw i32 %277, %276, !dbg !1255
  store i32 %278, ptr %25, align 4, !dbg !1255
  br label %279, !dbg !1256

279:                                              ; preds = %274, %252
  br label %280

280:                                              ; preds = %279, %251
  br label %281, !dbg !1257

281:                                              ; preds = %280, %233
  %282 = load i32, ptr %33, align 4, !dbg !1258
  %283 = add i32 %282, 1, !dbg !1258
  store i32 %283, ptr %33, align 4, !dbg !1258
  br label %195, !dbg !1259, !llvm.loop !1260

284:                                              ; preds = %195
  %285 = load i32, ptr %25, align 4, !dbg !1262
  store i32 %285, ptr %8, align 4, !dbg !1263
  br label %547, !dbg !1263

286:                                              ; preds = %121
  call void @llvm.dbg.declare(metadata ptr %42, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1266, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.declare(metadata ptr %44, metadata !1268, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1270, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %47, metadata !1274, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %48, metadata !1276, metadata !DIExpression()), !dbg !1277
  %287 = load i8, ptr %23, align 1, !dbg !1278
  %288 = trunc i8 %287 to i1, !dbg !1278
  br i1 %288, label %289, label %293, !dbg !1280

289:                                              ; preds = %286
  %290 = load i32, ptr %19, align 4, !dbg !1281
  %291 = trunc i32 %290 to i8, !dbg !1281
  store i8 %291, ptr %45, align 1, !dbg !1283
  store i8 0, ptr %46, align 1, !dbg !1284
  %292 = getelementptr inbounds [16 x i8], ptr %43, i32 0, i32 0, !dbg !1285
  store ptr %292, ptr %47, align 4, !dbg !1286
  br label %306, !dbg !1287

293:                                              ; preds = %286
  %294 = load i32, ptr %19, align 4, !dbg !1288
  %295 = icmp ne i32 %294, 0, !dbg !1288
  br i1 %295, label %296, label %304, !dbg !1290

296:                                              ; preds = %293
  %297 = load i32, ptr %13, align 4, !dbg !1291
  %298 = and i32 %297, 4, !dbg !1292
  %299 = icmp ne i32 %298, 0, !dbg !1292
  br i1 %299, label %300, label %304, !dbg !1293

300:                                              ; preds = %296
  store i8 0, ptr %45, align 1, !dbg !1294
  %301 = load i32, ptr %19, align 4, !dbg !1296
  %302 = trunc i32 %301 to i8, !dbg !1296
  store i8 %302, ptr %46, align 1, !dbg !1297
  %303 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 0, !dbg !1298
  store ptr %303, ptr %47, align 4, !dbg !1299
  br label %305, !dbg !1300

304:                                              ; preds = %296, %293
  store i8 0, ptr %45, align 1, !dbg !1301
  store i8 0, ptr %46, align 1, !dbg !1303
  store ptr null, ptr %47, align 4, !dbg !1304
  br label %305

305:                                              ; preds = %304, %300
  br label %306

306:                                              ; preds = %305, %289
  %307 = load ptr, ptr %47, align 4, !dbg !1305
  %308 = icmp ne ptr %307, null, !dbg !1305
  br i1 %308, label %309, label %313, !dbg !1307

309:                                              ; preds = %306
  %310 = load ptr, ptr %47, align 4, !dbg !1308
  %311 = load ptr, ptr %27, align 4, !dbg !1310
  %312 = load i32, ptr %19, align 4, !dbg !1311
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %310, ptr align 1 %311, i32 %312, i1 false), !dbg !1312
  br label %313, !dbg !1313

313:                                              ; preds = %309, %306
  %314 = load i32, ptr %19, align 4, !dbg !1314
  %315 = load ptr, ptr %27, align 4, !dbg !1315
  %316 = getelementptr inbounds i8, ptr %315, i32 %314, !dbg !1315
  store ptr %316, ptr %27, align 4, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %49, metadata !1316, metadata !DIExpression()), !dbg !1318
  store i32 0, ptr %49, align 4, !dbg !1318
  br label %317, !dbg !1319

317:                                              ; preds = %393, %313
  %318 = load i32, ptr %49, align 4, !dbg !1320
  %319 = load i32, ptr %20, align 4, !dbg !1322
  %320 = icmp ult i32 %318, %319, !dbg !1323
  br i1 %320, label %321, label %396, !dbg !1324

321:                                              ; preds = %317
  call void @llvm.dbg.declare(metadata ptr %50, metadata !1325, metadata !DIExpression()), !dbg !1327
  %322 = load ptr, ptr %27, align 4, !dbg !1328
  %323 = getelementptr inbounds i8, ptr %322, i32 1, !dbg !1328
  store ptr %323, ptr %27, align 4, !dbg !1328
  %324 = load i8, ptr %322, align 1, !dbg !1329
  store i8 %324, ptr %50, align 1, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %51, metadata !1330, metadata !DIExpression()), !dbg !1331
  %325 = load ptr, ptr %27, align 4, !dbg !1332
  %326 = getelementptr inbounds i8, ptr %325, i32 1, !dbg !1332
  store ptr %326, ptr %27, align 4, !dbg !1332
  %327 = load i8, ptr %325, align 1, !dbg !1333
  store i8 %327, ptr %51, align 1, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %52, metadata !1334, metadata !DIExpression()), !dbg !1335
  %328 = load ptr, ptr %17, align 4, !dbg !1336
  %329 = load i8, ptr %51, align 1, !dbg !1337
  %330 = zext i8 %329 to i32, !dbg !1336
  %331 = getelementptr inbounds i32, ptr %328, i32 %330, !dbg !1336
  %332 = load ptr, ptr %331, align 4, !dbg !1338
  store ptr %332, ptr %52, align 4, !dbg !1335
  call void @llvm.dbg.declare(metadata ptr %53, metadata !1339, metadata !DIExpression()), !dbg !1340
  %333 = load ptr, ptr %52, align 4, !dbg !1341
  %334 = call zeroext i1 @ptr_in_rodata(ptr noundef %333), !dbg !1342
  %335 = zext i1 %334 to i8, !dbg !1340
  store i8 %335, ptr %53, align 1, !dbg !1340
  %336 = load i8, ptr %21, align 1, !dbg !1343
  %337 = trunc i8 %336 to i1, !dbg !1343
  br i1 %337, label %338, label %344, !dbg !1345

338:                                              ; preds = %321
  %339 = load ptr, ptr %26, align 4, !dbg !1346
  %340 = load i8, ptr %50, align 1, !dbg !1347
  %341 = zext i8 %340 to i32, !dbg !1347
  %342 = call zeroext i1 @is_ptr(ptr noundef %339, i32 noundef %341), !dbg !1348
  br i1 %342, label %343, label %344, !dbg !1349

343:                                              ; preds = %338
  br label %393, !dbg !1350

344:                                              ; preds = %338, %321
  %345 = load i8, ptr %53, align 1, !dbg !1352
  %346 = trunc i8 %345 to i1, !dbg !1352
  br i1 %346, label %347, label %370, !dbg !1354

347:                                              ; preds = %344
  %348 = load i32, ptr %13, align 4, !dbg !1355
  %349 = and i32 %348, 1, !dbg !1358
  %350 = icmp ne i32 %349, 0, !dbg !1358
  br i1 %350, label %351, label %357, !dbg !1359

351:                                              ; preds = %347
  %352 = load i8, ptr %51, align 1, !dbg !1360
  %353 = load i8, ptr %45, align 1, !dbg !1362
  %354 = add i8 %353, 1, !dbg !1362
  store i8 %354, ptr %45, align 1, !dbg !1362
  %355 = zext i8 %353 to i32, !dbg !1363
  %356 = getelementptr inbounds [16 x i8], ptr %43, i32 0, i32 %355, !dbg !1363
  store i8 %352, ptr %356, align 1, !dbg !1364
  br label %369, !dbg !1365

357:                                              ; preds = %347
  %358 = load i32, ptr %13, align 4, !dbg !1366
  %359 = and i32 %358, 4, !dbg !1368
  %360 = icmp ne i32 %359, 0, !dbg !1368
  br i1 %360, label %361, label %367, !dbg !1369

361:                                              ; preds = %357
  %362 = load i8, ptr %51, align 1, !dbg !1370
  %363 = load i8, ptr %46, align 1, !dbg !1372
  %364 = add i8 %363, 1, !dbg !1372
  store i8 %364, ptr %46, align 1, !dbg !1372
  %365 = zext i8 %363 to i32, !dbg !1373
  %366 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %365, !dbg !1373
  store i8 %362, ptr %366, align 1, !dbg !1374
  br label %368, !dbg !1375

367:                                              ; preds = %357
  br label %368

368:                                              ; preds = %367, %361
  br label %369

369:                                              ; preds = %368, %351
  br label %392, !dbg !1376

370:                                              ; preds = %344
  %371 = load i32, ptr %13, align 4, !dbg !1377
  %372 = and i32 %371, 2, !dbg !1380
  %373 = icmp ne i32 %372, 0, !dbg !1380
  br i1 %373, label %374, label %380, !dbg !1381

374:                                              ; preds = %370
  %375 = load i8, ptr %51, align 1, !dbg !1382
  %376 = load i8, ptr %45, align 1, !dbg !1384
  %377 = add i8 %376, 1, !dbg !1384
  store i8 %377, ptr %45, align 1, !dbg !1384
  %378 = zext i8 %376 to i32, !dbg !1385
  %379 = getelementptr inbounds [16 x i8], ptr %43, i32 0, i32 %378, !dbg !1385
  store i8 %375, ptr %379, align 1, !dbg !1386
  br label %391, !dbg !1387

380:                                              ; preds = %370
  %381 = load i8, ptr %50, align 1, !dbg !1388
  %382 = load i8, ptr %46, align 1, !dbg !1390
  %383 = add i8 %382, 1, !dbg !1390
  store i8 %383, ptr %46, align 1, !dbg !1390
  %384 = zext i8 %382 to i32, !dbg !1391
  %385 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %384, !dbg !1391
  store i8 %381, ptr %385, align 1, !dbg !1392
  %386 = load i8, ptr %51, align 1, !dbg !1393
  %387 = load i8, ptr %46, align 1, !dbg !1394
  %388 = add i8 %387, 1, !dbg !1394
  store i8 %388, ptr %46, align 1, !dbg !1394
  %389 = zext i8 %387 to i32, !dbg !1395
  %390 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %389, !dbg !1395
  store i8 %386, ptr %390, align 1, !dbg !1396
  br label %391

391:                                              ; preds = %380, %374
  br label %392

392:                                              ; preds = %391, %369
  br label %393, !dbg !1397

393:                                              ; preds = %392, %343
  %394 = load i32, ptr %49, align 4, !dbg !1398
  %395 = add i32 %394, 1, !dbg !1398
  store i32 %395, ptr %49, align 4, !dbg !1398
  br label %317, !dbg !1399, !llvm.loop !1400

396:                                              ; preds = %317
  %397 = load ptr, ptr %24, align 4, !dbg !1402
  %398 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %397, i32 0, i32 0, !dbg !1403
  %399 = load i8, ptr %398, align 1, !dbg !1403
  %400 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %42, i32 0, i32 0, !dbg !1404
  store i8 %399, ptr %400, align 1, !dbg !1405
  %401 = load ptr, ptr %24, align 4, !dbg !1406
  %402 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %401, i32 0, i32 1, !dbg !1407
  %403 = load i8, ptr %402, align 1, !dbg !1407
  %404 = zext i8 %403 to i32, !dbg !1406
  %405 = load i8, ptr %45, align 1, !dbg !1408
  %406 = zext i8 %405 to i32, !dbg !1408
  %407 = add nsw i32 %404, %406, !dbg !1409
  %408 = trunc i32 %407 to i8, !dbg !1406
  %409 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %42, i32 0, i32 1, !dbg !1410
  store i8 %408, ptr %409, align 1, !dbg !1411
  %410 = load i32, ptr %13, align 4, !dbg !1412
  %411 = and i32 %410, 2, !dbg !1413
  %412 = icmp ne i32 %411, 0, !dbg !1413
  br i1 %412, label %413, label %414, !dbg !1414

413:                                              ; preds = %396
  br label %418, !dbg !1414

414:                                              ; preds = %396
  %415 = load i8, ptr %46, align 1, !dbg !1415
  %416 = zext i8 %415 to i32, !dbg !1415
  %417 = sdiv i32 %416, 2, !dbg !1416
  br label %418, !dbg !1414

418:                                              ; preds = %414, %413
  %419 = phi i32 [ 0, %413 ], [ %417, %414 ], !dbg !1414
  %420 = trunc i32 %419 to i8, !dbg !1414
  %421 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %42, i32 0, i32 3, !dbg !1417
  store i8 %420, ptr %421, align 1, !dbg !1418
  %422 = load i32, ptr %13, align 4, !dbg !1419
  %423 = and i32 %422, 1, !dbg !1420
  %424 = icmp ne i32 %423, 0, !dbg !1420
  br i1 %424, label %425, label %426, !dbg !1421

425:                                              ; preds = %418
  br label %436, !dbg !1421

426:                                              ; preds = %418
  %427 = load i32, ptr %13, align 4, !dbg !1422
  %428 = and i32 %427, 4, !dbg !1423
  %429 = icmp ne i32 %428, 0, !dbg !1423
  br i1 %429, label %430, label %433, !dbg !1424

430:                                              ; preds = %426
  %431 = load i8, ptr %46, align 1, !dbg !1425
  %432 = zext i8 %431 to i32, !dbg !1425
  br label %434, !dbg !1424

433:                                              ; preds = %426
  br label %434, !dbg !1424

434:                                              ; preds = %433, %430
  %435 = phi i32 [ %432, %430 ], [ 0, %433 ], !dbg !1424
  br label %436, !dbg !1421

436:                                              ; preds = %434, %425
  %437 = phi i32 [ 0, %425 ], [ %435, %434 ], !dbg !1421
  %438 = trunc i32 %437 to i8, !dbg !1421
  %439 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %42, i32 0, i32 2, !dbg !1426
  store i8 %438, ptr %439, align 1, !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %54, metadata !1428, metadata !DIExpression()), !dbg !1429
  %440 = load ptr, ptr %24, align 4, !dbg !1430
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %54, ptr align 1 %440, i32 4, i1 false), !dbg !1431
  %441 = load ptr, ptr %24, align 4, !dbg !1432
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %441, ptr align 1 %42, i32 4, i1 false), !dbg !1433
  %442 = load ptr, ptr %11, align 4, !dbg !1434
  %443 = load ptr, ptr %9, align 4, !dbg !1435
  %444 = load i32, ptr %18, align 4, !dbg !1436
  %445 = load ptr, ptr %12, align 4, !dbg !1437
  %446 = call i32 %442(ptr noundef %443, i32 noundef %444, ptr noundef %445), !dbg !1434
  store i32 %446, ptr %48, align 4, !dbg !1438
  %447 = load i32, ptr %48, align 4, !dbg !1439
  %448 = icmp slt i32 %447, 0, !dbg !1441
  br i1 %448, label %449, label %451, !dbg !1442

449:                                              ; preds = %436
  %450 = load i32, ptr %48, align 4, !dbg !1443
  store i32 %450, ptr %8, align 4, !dbg !1445
  br label %547, !dbg !1445

451:                                              ; preds = %436
  %452 = load i32, ptr %48, align 4, !dbg !1446
  store i32 %452, ptr %25, align 4, !dbg !1447
  %453 = load ptr, ptr %24, align 4, !dbg !1448
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %453, ptr align 1 %54, i32 4, i1 false), !dbg !1449
  %454 = load ptr, ptr %11, align 4, !dbg !1450
  %455 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 0, !dbg !1451
  %456 = load i8, ptr %46, align 1, !dbg !1452
  %457 = zext i8 %456 to i32, !dbg !1452
  %458 = load ptr, ptr %12, align 4, !dbg !1453
  %459 = call i32 %454(ptr noundef %455, i32 noundef %457, ptr noundef %458), !dbg !1450
  store i32 %459, ptr %48, align 4, !dbg !1454
  %460 = load i32, ptr %48, align 4, !dbg !1455
  %461 = icmp slt i32 %460, 0, !dbg !1457
  br i1 %461, label %462, label %464, !dbg !1458

462:                                              ; preds = %451
  %463 = load i32, ptr %48, align 4, !dbg !1459
  store i32 %463, ptr %8, align 4, !dbg !1461
  br label %547, !dbg !1461

464:                                              ; preds = %451
  %465 = load i32, ptr %48, align 4, !dbg !1462
  %466 = load i32, ptr %25, align 4, !dbg !1463
  %467 = add nsw i32 %466, %465, !dbg !1463
  store i32 %467, ptr %25, align 4, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %55, metadata !1464, metadata !DIExpression()), !dbg !1465
  %468 = load i32, ptr %10, align 4, !dbg !1466
  %469 = load i32, ptr %18, align 4, !dbg !1467
  %470 = load i32, ptr %19, align 4, !dbg !1468
  %471 = add i32 %469, %470, !dbg !1469
  %472 = load i32, ptr %20, align 4, !dbg !1470
  %473 = mul i32 2, %472, !dbg !1471
  %474 = add i32 %471, %473, !dbg !1472
  %475 = sub i32 %468, %474, !dbg !1473
  store i32 %475, ptr %55, align 4, !dbg !1465
  %476 = load ptr, ptr %11, align 4, !dbg !1474
  %477 = load ptr, ptr %27, align 4, !dbg !1475
  %478 = load i32, ptr %55, align 4, !dbg !1476
  %479 = load ptr, ptr %12, align 4, !dbg !1477
  %480 = call i32 %476(ptr noundef %477, i32 noundef %478, ptr noundef %479), !dbg !1474
  store i32 %480, ptr %48, align 4, !dbg !1478
  %481 = load i32, ptr %48, align 4, !dbg !1479
  %482 = icmp slt i32 %481, 0, !dbg !1481
  br i1 %482, label %483, label %485, !dbg !1482

483:                                              ; preds = %464
  %484 = load i32, ptr %48, align 4, !dbg !1483
  store i32 %484, ptr %8, align 4, !dbg !1485
  br label %547, !dbg !1485

485:                                              ; preds = %464
  %486 = load i32, ptr %48, align 4, !dbg !1486
  %487 = load i32, ptr %25, align 4, !dbg !1487
  %488 = add nsw i32 %487, %486, !dbg !1487
  store i32 %488, ptr %25, align 4, !dbg !1487
  call void @llvm.dbg.declare(metadata ptr %56, metadata !1488, metadata !DIExpression()), !dbg !1490
  store i32 0, ptr %56, align 4, !dbg !1490
  br label %489, !dbg !1491

489:                                              ; preds = %539, %485
  %490 = load i32, ptr %56, align 4, !dbg !1492
  %491 = load i8, ptr %45, align 1, !dbg !1494
  %492 = zext i8 %491 to i32, !dbg !1494
  %493 = icmp ult i32 %490, %492, !dbg !1495
  br i1 %493, label %494, label %542, !dbg !1496

494:                                              ; preds = %489
  call void @llvm.dbg.declare(metadata ptr %57, metadata !1497, metadata !DIExpression()), !dbg !1499
  %495 = load i32, ptr %56, align 4, !dbg !1500
  %496 = getelementptr inbounds [16 x i8], ptr %43, i32 0, i32 %495, !dbg !1501
  %497 = load i8, ptr %496, align 1, !dbg !1501
  store i8 %497, ptr %57, align 1, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %58, metadata !1502, metadata !DIExpression()), !dbg !1503
  %498 = load ptr, ptr %17, align 4, !dbg !1504
  %499 = load i8, ptr %57, align 1, !dbg !1505
  %500 = zext i8 %499 to i32, !dbg !1504
  %501 = getelementptr inbounds i32, ptr %498, i32 %500, !dbg !1504
  %502 = load ptr, ptr %501, align 4, !dbg !1506
  store ptr %502, ptr %58, align 4, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %59, metadata !1507, metadata !DIExpression()), !dbg !1508
  %503 = load ptr, ptr %14, align 4, !dbg !1509
  %504 = icmp ne ptr %503, null, !dbg !1509
  br i1 %504, label %505, label %511, !dbg !1509

505:                                              ; preds = %494
  %506 = load ptr, ptr %14, align 4, !dbg !1510
  %507 = load i32, ptr %56, align 4, !dbg !1511
  %508 = getelementptr inbounds i16, ptr %506, i32 %507, !dbg !1510
  %509 = load i16, ptr %508, align 2, !dbg !1510
  %510 = zext i16 %509 to i32, !dbg !1510
  br label %512, !dbg !1509

511:                                              ; preds = %494
  br label %512, !dbg !1509

512:                                              ; preds = %511, %505
  %513 = phi i32 [ %510, %505 ], [ 0, %511 ], !dbg !1509
  %514 = trunc i32 %513 to i16, !dbg !1509
  store i16 %514, ptr %59, align 2, !dbg !1508
  %515 = load ptr, ptr %11, align 4, !dbg !1512
  %516 = load ptr, ptr %12, align 4, !dbg !1513
  %517 = call i32 %515(ptr noundef %57, i32 noundef 1, ptr noundef %516), !dbg !1512
  store i32 %517, ptr %48, align 4, !dbg !1514
  %518 = load i32, ptr %48, align 4, !dbg !1515
  %519 = icmp slt i32 %518, 0, !dbg !1517
  br i1 %519, label %520, label %522, !dbg !1518

520:                                              ; preds = %512
  %521 = load i32, ptr %48, align 4, !dbg !1519
  store i32 %521, ptr %8, align 4, !dbg !1521
  br label %547, !dbg !1521

522:                                              ; preds = %512
  %523 = load i32, ptr %48, align 4, !dbg !1522
  %524 = load i32, ptr %25, align 4, !dbg !1523
  %525 = add nsw i32 %524, %523, !dbg !1523
  store i32 %525, ptr %25, align 4, !dbg !1523
  %526 = load ptr, ptr %11, align 4, !dbg !1524
  %527 = load ptr, ptr %12, align 4, !dbg !1525
  %528 = load ptr, ptr %58, align 4, !dbg !1526
  %529 = load i16, ptr %59, align 2, !dbg !1527
  %530 = call i32 @append_string(ptr noundef %526, ptr noundef %527, ptr noundef %528, i16 noundef zeroext %529), !dbg !1528
  store i32 %530, ptr %48, align 4, !dbg !1529
  %531 = load i32, ptr %48, align 4, !dbg !1530
  %532 = icmp slt i32 %531, 0, !dbg !1532
  br i1 %532, label %533, label %535, !dbg !1533

533:                                              ; preds = %522
  %534 = load i32, ptr %48, align 4, !dbg !1534
  store i32 %534, ptr %8, align 4, !dbg !1536
  br label %547, !dbg !1536

535:                                              ; preds = %522
  %536 = load i32, ptr %48, align 4, !dbg !1537
  %537 = load i32, ptr %25, align 4, !dbg !1538
  %538 = add nsw i32 %537, %536, !dbg !1538
  store i32 %538, ptr %25, align 4, !dbg !1538
  br label %539, !dbg !1539

539:                                              ; preds = %535
  %540 = load i32, ptr %56, align 4, !dbg !1540
  %541 = add i32 %540, 1, !dbg !1540
  store i32 %541, ptr %56, align 4, !dbg !1540
  br label %489, !dbg !1541, !llvm.loop !1542

542:                                              ; preds = %489
  %543 = load ptr, ptr %11, align 4, !dbg !1544
  %544 = load ptr, ptr %12, align 4, !dbg !1545
  %545 = call i32 %543(ptr noundef null, i32 noundef 0, ptr noundef %544), !dbg !1544
  %546 = load i32, ptr %25, align 4, !dbg !1546
  store i32 %546, ptr %8, align 4, !dbg !1547
  br label %547, !dbg !1547

547:                                              ; preds = %542, %533, %520, %483, %462, %449, %284, %119
  %548 = load i32, ptr %8, align 4, !dbg !1548
  ret i32 %548, !dbg !1548
}

; Function Attrs: noinline nounwind optnone
define internal i32 @get_package_len(ptr noundef %0) #0 !dbg !1549 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1552, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1554, metadata !DIExpression()), !dbg !1555
  %9 = load ptr, ptr %2, align 4, !dbg !1556
  store ptr %9, ptr %3, align 4, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1557, metadata !DIExpression()), !dbg !1558
  %10 = load ptr, ptr %3, align 4, !dbg !1559
  store ptr %10, ptr %4, align 4, !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1562, metadata !DIExpression()), !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1564, metadata !DIExpression()), !dbg !1565
  %11 = load ptr, ptr %3, align 4, !dbg !1566
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !1566
  %13 = load i8, ptr %12, align 1, !dbg !1566
  %14 = zext i8 %13 to i32, !dbg !1566
  %15 = mul i32 %14, 4, !dbg !1567
  store i32 %15, ptr %5, align 4, !dbg !1568
  %16 = load ptr, ptr %3, align 4, !dbg !1569
  %17 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !1569
  %18 = load i8, ptr %17, align 1, !dbg !1569
  %19 = zext i8 %18 to i32, !dbg !1569
  store i32 %19, ptr %6, align 4, !dbg !1570
  %20 = load ptr, ptr %3, align 4, !dbg !1571
  %21 = getelementptr inbounds i8, ptr %20, i32 2, !dbg !1571
  %22 = load i8, ptr %21, align 1, !dbg !1571
  %23 = zext i8 %22 to i32, !dbg !1571
  store i32 %23, ptr %7, align 4, !dbg !1572
  %24 = load i32, ptr %5, align 4, !dbg !1573
  %25 = load ptr, ptr %3, align 4, !dbg !1574
  %26 = getelementptr inbounds i8, ptr %25, i32 %24, !dbg !1574
  store ptr %26, ptr %3, align 4, !dbg !1574
  %27 = load i32, ptr %7, align 4, !dbg !1575
  %28 = load ptr, ptr %3, align 4, !dbg !1576
  %29 = getelementptr inbounds i8, ptr %28, i32 %27, !dbg !1576
  store ptr %29, ptr %3, align 4, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1577, metadata !DIExpression()), !dbg !1579
  store i32 0, ptr %8, align 4, !dbg !1579
  br label %30, !dbg !1580

30:                                               ; preds = %42, %1
  %31 = load i32, ptr %8, align 4, !dbg !1581
  %32 = load i32, ptr %6, align 4, !dbg !1583
  %33 = icmp ult i32 %31, %32, !dbg !1584
  br i1 %33, label %34, label %45, !dbg !1585

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4, !dbg !1586
  %36 = getelementptr inbounds i8, ptr %35, i32 1, !dbg !1586
  store ptr %36, ptr %3, align 4, !dbg !1586
  %37 = load ptr, ptr %3, align 4, !dbg !1588
  %38 = call i32 @strlen(ptr noundef %37) #6, !dbg !1589
  %39 = add i32 %38, 1, !dbg !1590
  %40 = load ptr, ptr %3, align 4, !dbg !1591
  %41 = getelementptr inbounds i8, ptr %40, i32 %39, !dbg !1591
  store ptr %41, ptr %3, align 4, !dbg !1591
  br label %42, !dbg !1592

42:                                               ; preds = %34
  %43 = load i32, ptr %8, align 4, !dbg !1593
  %44 = add i32 %43, 1, !dbg !1593
  store i32 %44, ptr %8, align 4, !dbg !1593
  br label %30, !dbg !1594, !llvm.loop !1595

45:                                               ; preds = %30
  %46 = load ptr, ptr %3, align 4, !dbg !1597
  %47 = load ptr, ptr %4, align 4, !dbg !1598
  %48 = ptrtoint ptr %46 to i32, !dbg !1599
  %49 = ptrtoint ptr %47 to i32, !dbg !1599
  %50 = sub i32 %48, %49, !dbg !1599
  ret i32 %50, !dbg !1600
}

; Function Attrs: noinline nounwind optnone
define internal i32 @append_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 !dbg !1601 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i16, align 2
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1604, metadata !DIExpression()), !dbg !1605
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1606, metadata !DIExpression()), !dbg !1607
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1608, metadata !DIExpression()), !dbg !1609
  store i16 %3, ptr %9, align 2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1610, metadata !DIExpression()), !dbg !1611
  %10 = load ptr, ptr %6, align 4, !dbg !1612
  %11 = icmp eq ptr %10, null, !dbg !1614
  br i1 %11, label %12, label %16, !dbg !1615

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4, !dbg !1616
  %14 = call i32 @strlen(ptr noundef %13) #6, !dbg !1618
  %15 = add i32 1, %14, !dbg !1619
  store i32 %15, ptr %5, align 4, !dbg !1620
  br label %36, !dbg !1620

16:                                               ; preds = %4
  %17 = load i16, ptr %9, align 2, !dbg !1621
  %18 = zext i16 %17 to i32, !dbg !1621
  %19 = icmp sgt i32 %18, 0, !dbg !1622
  br i1 %19, label %20, label %23, !dbg !1621

20:                                               ; preds = %16
  %21 = load i16, ptr %9, align 2, !dbg !1623
  %22 = zext i16 %21 to i32, !dbg !1623
  br label %27, !dbg !1621

23:                                               ; preds = %16
  %24 = load ptr, ptr %8, align 4, !dbg !1624
  %25 = call i32 @strlen(ptr noundef %24) #6, !dbg !1625
  %26 = add i32 %25, 1, !dbg !1626
  br label %27, !dbg !1621

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %22, %20 ], [ %26, %23 ], !dbg !1621
  %29 = trunc i32 %28 to i16, !dbg !1621
  store i16 %29, ptr %9, align 2, !dbg !1627
  %30 = load ptr, ptr %6, align 4, !dbg !1628
  %31 = load ptr, ptr %8, align 4, !dbg !1629
  %32 = load i16, ptr %9, align 2, !dbg !1630
  %33 = zext i16 %32 to i32, !dbg !1630
  %34 = load ptr, ptr %7, align 4, !dbg !1631
  %35 = call i32 %30(ptr noundef %31, i32 noundef %33, ptr noundef %34), !dbg !1628
  store i32 %35, ptr %5, align 4, !dbg !1632
  br label %36, !dbg !1632

36:                                               ; preds = %27, %12
  %37 = load i32, ptr %5, align 4, !dbg !1633
  ret i32 %37, !dbg !1633
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @k_is_user_context() #0 !dbg !1634 {
  ret i1 false, !dbg !1638
}

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_create(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ...) #0 !dbg !1639 {
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  %15 = alloca %struct.__va_list, align 4
  store i8 %0, ptr %8, align 1
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1642, metadata !DIExpression()), !dbg !1643
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1644, metadata !DIExpression()), !dbg !1645
  store i8 %2, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1646, metadata !DIExpression()), !dbg !1647
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1648, metadata !DIExpression()), !dbg !1649
  store i32 %4, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1650, metadata !DIExpression()), !dbg !1651
  store i32 %5, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1652, metadata !DIExpression()), !dbg !1653
  store ptr %6, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1656, metadata !DIExpression()), !dbg !1657
  call void @llvm.va_start(ptr %15), !dbg !1658
  %16 = load i8, ptr %8, align 1, !dbg !1659
  %17 = load ptr, ptr %9, align 4, !dbg !1660
  %18 = load i8, ptr %10, align 1, !dbg !1661
  %19 = load ptr, ptr %11, align 4, !dbg !1662
  %20 = load i32, ptr %12, align 4, !dbg !1663
  %21 = load i32, ptr %13, align 4, !dbg !1664
  %22 = load ptr, ptr %14, align 4, !dbg !1665
  %23 = getelementptr inbounds %struct.__va_list, ptr %15, i32 0, i32 0, !dbg !1666
  %24 = load [1 x i32], ptr %23, align 4, !dbg !1666
  call void @z_log_msg_runtime_vcreate(i8 noundef zeroext %16, ptr noundef %17, i8 noundef zeroext %18, ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef %22, [1 x i32] %24), !dbg !1666
  call void @llvm.va_end(ptr %15), !dbg !1667
  ret void, !dbg !1668
}

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @linker_is_in_rodata(ptr noundef %0) #0 !dbg !1669 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1673, metadata !DIExpression()), !dbg !1674
  %3 = load ptr, ptr %2, align 4, !dbg !1675
  %4 = icmp uge ptr %3, @__rodata_region_start, !dbg !1676
  br i1 %4, label %5, label %8, !dbg !1677

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !1678
  %7 = icmp ult ptr %6, @__rodata_region_end, !dbg !1679
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ], !dbg !1680
  ret i1 %9, !dbg !1681
}

; Function Attrs: noinline nounwind optnone
define internal void @z_log_msg_runtime_vcreate(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, [1 x i32] %7) #0 !dbg !1682 {
  %9 = alloca %struct.__va_list, align 4
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 4
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 4
  %17 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0
  store [1 x i32] %7, ptr %17, align 4
  store i8 %0, ptr %10, align 1
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1686, metadata !DIExpression()), !dbg !1687
  store ptr %1, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1688, metadata !DIExpression()), !dbg !1689
  store i8 %2, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1690, metadata !DIExpression()), !dbg !1691
  store ptr %3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i32 %4, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1696, metadata !DIExpression()), !dbg !1697
  store ptr %6, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1698, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1700, metadata !DIExpression()), !dbg !1701
  br label %18, !dbg !1702

18:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #6, !dbg !1703, !srcloc !1705
  br label %19, !dbg !1706

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !dbg !1707
  %21 = load ptr, ptr %11, align 4, !dbg !1708
  %22 = load i8, ptr %12, align 1, !dbg !1709
  %23 = load ptr, ptr %13, align 4, !dbg !1710
  %24 = load i32, ptr %14, align 4, !dbg !1711
  %25 = load i32, ptr %15, align 4, !dbg !1712
  %26 = load ptr, ptr %16, align 4, !dbg !1713
  %27 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !1714
  %28 = load [1 x i32], ptr %27, align 4, !dbg !1714
  call void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext %20, ptr noundef %21, i8 noundef zeroext %22, ptr noundef %23, i32 noundef %24, i32 noundef %25, ptr noundef %26, [1 x i32] %28), !dbg !1714
  ret void, !dbg !1715
}

declare void @z_impl_z_log_msg_runtime_vcreate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef, [1 x i32]) #5

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 18, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/os/cbprintf_packaged.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "log_const_cbprintf_package", scope: !9, file: !2, line: 18, type: !55, isLocal: false, isDefinition: true, align: 32)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !19, globals: !46, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "cbprintf_packaged.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "z_log_msg_mode", file: !13, line: 128, baseType: !14, size: 8, elements: !15)
!13 = !DIFile(filename: "include/zephyr/logging/log_msg.h", directory: "/home/sri/zephyrproject/zephyr")
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "Z_LOG_MSG_MODE_RUNTIME", value: 0)
!17 = !DIEnumerator(name: "Z_LOG_MSG_MODE_FROM_STACK", value: 1)
!18 = !DIEnumerator(name: "Z_LOG_MSG_MODE_ZERO_COPY", value: 2)
!19 = !{!20, !23, !24, !25, !27, !29, !32, !34, !35, !36, !38, !40, !41, !42, !44, !30}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!24 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 32)
!26 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 51, baseType: !22)
!33 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 62, baseType: !14)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 63, baseType: !45)
!45 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!46 = !{!0, !7, !47, !52}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1003, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1304, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 163)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__log_current_const_data", scope: !9, file: !2, line: 18, type: !54, isLocal: true, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "log_source_const_data", file: !57, line: 17, size: 64, elements: !58)
!57 = !DIFile(filename: "include/zephyr/logging/log_instance.h", directory: "/home/sri/zephyrproject/zephyr")
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !57, line: 18, baseType: !30, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !56, file: !57, line: 19, baseType: !43, size: 8, offset: 32)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 1, !"static_rwdata", i32 1}
!65 = !{i32 1, !"enumsize_buildattr", i32 1}
!66 = !{i32 1, !"armlib_unavailable", i32 0}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!70 = distinct !DISubprogram(name: "cbvprintf_package", scope: !2, file: !2, line: 233, type: !71, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !80)
!71 = !DISubroutineType(types: !72)
!72 = !{!34, !23, !32, !73, !30, !74}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 64, baseType: !22)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !75, line: 22, baseType: !76)
!75 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !77, file: !10, line: 18, baseType: !23, size: 32)
!80 = !{}
!81 = !DILocalVariable(name: "packaged", arg: 1, scope: !70, file: !2, line: 233, type: !23)
!82 = !DILocation(line: 233, column: 29, scope: !70)
!83 = !DILocalVariable(name: "len", arg: 2, scope: !70, file: !2, line: 233, type: !32)
!84 = !DILocation(line: 233, column: 46, scope: !70)
!85 = !DILocalVariable(name: "flags", arg: 3, scope: !70, file: !2, line: 233, type: !73)
!86 = !DILocation(line: 233, column: 60, scope: !70)
!87 = !DILocalVariable(name: "fmt", arg: 4, scope: !70, file: !2, line: 234, type: !30)
!88 = !DILocation(line: 234, column: 21, scope: !70)
!89 = !DILocalVariable(name: "ap", arg: 5, scope: !70, file: !2, line: 234, type: !74)
!90 = !DILocation(line: 234, column: 34, scope: !70)
!91 = !DILocalVariable(name: "buf0", scope: !70, file: !2, line: 247, type: !42)
!92 = !DILocation(line: 247, column: 11, scope: !70)
!93 = !DILocation(line: 247, column: 18, scope: !70)
!94 = !DILocalVariable(name: "buf", scope: !70, file: !2, line: 248, type: !42)
!95 = !DILocation(line: 248, column: 11, scope: !70)
!96 = !DILocation(line: 248, column: 17, scope: !70)
!97 = !DILocalVariable(name: "size", scope: !70, file: !2, line: 249, type: !22)
!98 = !DILocation(line: 249, column: 15, scope: !70)
!99 = !DILocalVariable(name: "align", scope: !70, file: !2, line: 250, type: !22)
!100 = !DILocation(line: 250, column: 15, scope: !70)
!101 = !DILocalVariable(name: "str_ptr_pos", scope: !70, file: !2, line: 251, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 16)
!105 = !DILocation(line: 251, column: 10, scope: !70)
!106 = !DILocalVariable(name: "str_ptr_arg", scope: !70, file: !2, line: 252, type: !102)
!107 = !DILocation(line: 252, column: 10, scope: !70)
!108 = !DILocalVariable(name: "s_idx", scope: !70, file: !2, line: 253, type: !22)
!109 = !DILocation(line: 253, column: 15, scope: !70)
!110 = !DILocalVariable(name: "s_rw_cnt", scope: !70, file: !2, line: 254, type: !22)
!111 = !DILocation(line: 254, column: 15, scope: !70)
!112 = !DILocalVariable(name: "s_ro_cnt", scope: !70, file: !2, line: 255, type: !22)
!113 = !DILocation(line: 255, column: 15, scope: !70)
!114 = !DILocalVariable(name: "arg_idx", scope: !70, file: !2, line: 256, type: !34)
!115 = !DILocation(line: 256, column: 6, scope: !70)
!116 = !DILocalVariable(name: "i", scope: !70, file: !2, line: 257, type: !22)
!117 = !DILocation(line: 257, column: 15, scope: !70)
!118 = !DILocalVariable(name: "s", scope: !70, file: !2, line: 258, type: !30)
!119 = !DILocation(line: 258, column: 14, scope: !70)
!120 = !DILocalVariable(name: "parsing", scope: !70, file: !2, line: 259, type: !121)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DILocation(line: 259, column: 8, scope: !70)
!123 = !DILocalVariable(name: "rws_pos_en", scope: !70, file: !2, line: 263, type: !121)
!124 = !DILocation(line: 263, column: 8, scope: !70)
!125 = !DILocation(line: 263, column: 24, scope: !70)
!126 = !DILocation(line: 263, column: 30, scope: !70)
!127 = !DILocation(line: 263, column: 22, scope: !70)
!128 = !DILocation(line: 263, column: 21, scope: !70)
!129 = !DILocalVariable(name: "fros_cnt", scope: !70, file: !2, line: 268, type: !34)
!130 = !DILocation(line: 268, column: 6, scope: !70)
!131 = !DILocation(line: 268, column: 24, scope: !70)
!132 = !DILocation(line: 268, column: 31, scope: !70)
!133 = !DILocation(line: 268, column: 37, scope: !70)
!134 = !DILocation(line: 268, column: 19, scope: !70)
!135 = !DILocalVariable(name: "is_str_arg", scope: !70, file: !2, line: 269, type: !121)
!136 = !DILocation(line: 269, column: 8, scope: !70)
!137 = !DILocalVariable(name: "pkg_hdr", scope: !70, file: !2, line: 270, type: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cbprintf_package_hdr", file: !140, line: 78, size: 32, elements: !141)
!140 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = !{!142, !149}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !139, file: !140, line: 80, baseType: !143, size: 32)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cbprintf_package_desc", file: !140, line: 45, size: 32, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !143, file: !140, line: 47, baseType: !43, size: 8)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "str_cnt", scope: !143, file: !140, line: 50, baseType: !43, size: 8, offset: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ro_str_cnt", scope: !143, file: !140, line: 53, baseType: !43, size: 8, offset: 16)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rw_str_cnt", scope: !143, file: !140, line: 56, baseType: !43, size: 8, offset: 24)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !139, file: !140, line: 82, baseType: !23, size: 32)
!150 = !DILocation(line: 270, column: 30, scope: !70)
!151 = !DILocation(line: 270, column: 40, scope: !70)
!152 = !DILocation(line: 273, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !70, file: !2, line: 273, column: 6)
!154 = !DILocation(line: 273, column: 6, scope: !153)
!155 = !DILocation(line: 273, column: 26, scope: !153)
!156 = !DILocation(line: 273, column: 6, scope: !70)
!157 = !DILocation(line: 274, column: 3, scope: !158)
!158 = distinct !DILexicalBlock(scope: !153, file: !2, line: 273, column: 44)
!159 = !DILocation(line: 297, column: 6, scope: !70)
!160 = !DILocation(line: 305, column: 6, scope: !161)
!161 = distinct !DILexicalBlock(scope: !70, file: !2, line: 305, column: 6)
!162 = !DILocation(line: 305, column: 11, scope: !161)
!163 = !DILocation(line: 305, column: 6, scope: !70)
!164 = !DILocation(line: 306, column: 10, scope: !165)
!165 = distinct !DILexicalBlock(scope: !161, file: !2, line: 305, column: 17)
!166 = !DILocation(line: 306, column: 14, scope: !165)
!167 = !DILocation(line: 306, column: 7, scope: !165)
!168 = !DILocation(line: 320, column: 333, scope: !165)
!169 = !DILocation(line: 320, column: 337, scope: !165)
!170 = !DILocation(line: 320, column: 330, scope: !165)
!171 = !DILocation(line: 320, column: 7, scope: !165)
!172 = !DILocation(line: 321, column: 2, scope: !165)
!173 = !DILocation(line: 327, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !70, file: !2, line: 327, column: 6)
!175 = !DILocation(line: 327, column: 11, scope: !174)
!176 = !DILocation(line: 327, column: 16, scope: !174)
!177 = !DILocation(line: 327, column: 31, scope: !174)
!178 = !DILocation(line: 327, column: 20, scope: !174)
!179 = !DILocation(line: 327, column: 48, scope: !174)
!180 = !DILocation(line: 327, column: 37, scope: !174)
!181 = !DILocation(line: 327, column: 35, scope: !174)
!182 = !DILocation(line: 327, column: 54, scope: !174)
!183 = !DILocation(line: 327, column: 73, scope: !174)
!184 = !DILocation(line: 327, column: 71, scope: !174)
!185 = !DILocation(line: 327, column: 6, scope: !70)
!186 = !DILocation(line: 328, column: 3, scope: !187)
!187 = distinct !DILexicalBlock(scope: !174, file: !2, line: 327, column: 78)
!188 = !DILocation(line: 338, column: 9, scope: !70)
!189 = !DILocation(line: 338, column: 4, scope: !70)
!190 = !DILocation(line: 339, column: 8, scope: !70)
!191 = !DILocation(line: 340, column: 7, scope: !70)
!192 = !DILocation(line: 341, column: 2, scope: !70)
!193 = !DILocation(line: 343, column: 2, scope: !70)
!194 = !DILocation(line: 468, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 468, column: 8)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 466, column: 3)
!197 = distinct !DILexicalBlock(scope: !70, file: !2, line: 343, column: 12)
!198 = !DILocation(line: 468, column: 8, scope: !195)
!199 = !DILocation(line: 468, column: 15, scope: !195)
!200 = !DILocation(line: 468, column: 8, scope: !196)
!201 = !DILocation(line: 469, column: 5, scope: !202)
!202 = distinct !DILexicalBlock(scope: !195, file: !2, line: 468, column: 24)
!203 = !DILocation(line: 472, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !2, line: 472, column: 8)
!205 = !DILocation(line: 472, column: 8, scope: !196)
!206 = !DILocation(line: 473, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 473, column: 9)
!208 = distinct !DILexicalBlock(scope: !204, file: !2, line: 472, column: 18)
!209 = !DILocation(line: 473, column: 9, scope: !207)
!210 = !DILocation(line: 473, column: 14, scope: !207)
!211 = !DILocation(line: 473, column: 9, scope: !208)
!212 = !DILocation(line: 474, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !207, file: !2, line: 473, column: 22)
!214 = !DILocation(line: 475, column: 13, scope: !213)
!215 = !DILocation(line: 476, column: 12, scope: !213)
!216 = !DILocation(line: 477, column: 11, scope: !213)
!217 = !DILocation(line: 478, column: 5, scope: !213)
!218 = !DILocation(line: 479, column: 5, scope: !208)
!219 = distinct !{!219, !193, !220}
!220 = !DILocation(line: 712, column: 2, scope: !70)
!221 = !DILocation(line: 481, column: 13, scope: !196)
!222 = !DILocation(line: 481, column: 12, scope: !196)
!223 = !DILocation(line: 481, column: 4, scope: !196)
!224 = !DILocation(line: 483, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !196, file: !2, line: 481, column: 18)
!226 = !DILocation(line: 484, column: 12, scope: !225)
!227 = !DILocation(line: 485, column: 5, scope: !225)
!228 = !DILocation(line: 505, column: 5, scope: !225)
!229 = !DILocation(line: 508, column: 5, scope: !225)
!230 = !DILocation(line: 511, column: 11, scope: !225)
!231 = !DILocation(line: 512, column: 10, scope: !225)
!232 = !DILocation(line: 513, column: 5, scope: !225)
!233 = !DILocation(line: 516, column: 11, scope: !225)
!234 = !DILocation(line: 517, column: 10, scope: !225)
!235 = !DILocation(line: 518, column: 5, scope: !225)
!236 = !DILocation(line: 521, column: 11, scope: !225)
!237 = !DILocation(line: 522, column: 10, scope: !225)
!238 = !DILocation(line: 523, column: 5, scope: !225)
!239 = !DILocation(line: 532, column: 9, scope: !240)
!240 = distinct !DILexicalBlock(scope: !225, file: !2, line: 532, column: 9)
!241 = !DILocation(line: 532, column: 17, scope: !240)
!242 = !DILocation(line: 532, column: 9, scope: !225)
!243 = !DILocation(line: 533, column: 10, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 533, column: 10)
!245 = distinct !DILexicalBlock(scope: !240, file: !2, line: 532, column: 25)
!246 = !DILocation(line: 533, column: 18, scope: !244)
!247 = !DILocation(line: 533, column: 10, scope: !245)
!248 = !DILocation(line: 534, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !2, line: 533, column: 26)
!250 = !DILocation(line: 535, column: 12, scope: !249)
!251 = !DILocation(line: 536, column: 6, scope: !249)
!252 = !DILocation(line: 537, column: 13, scope: !253)
!253 = distinct !DILexicalBlock(scope: !244, file: !2, line: 536, column: 13)
!254 = !DILocation(line: 538, column: 12, scope: !253)
!255 = !DILocation(line: 540, column: 5, scope: !245)
!256 = !DILocation(line: 541, column: 13, scope: !225)
!257 = !DILocation(line: 542, column: 5, scope: !225)
!258 = !DILocation(line: 545, column: 16, scope: !225)
!259 = !DILocation(line: 545, column: 5, scope: !225)
!260 = !DILocation(line: 550, column: 11, scope: !225)
!261 = !DILocation(line: 551, column: 10, scope: !225)
!262 = !DILocation(line: 552, column: 13, scope: !225)
!263 = !DILocation(line: 553, column: 5, scope: !225)
!264 = !DILocalVariable(name: "v", scope: !265, file: !2, line: 567, type: !266)
!265 = distinct !DILexicalBlock(scope: !225, file: !2, line: 562, column: 14)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !70, file: !2, line: 567, size: 64, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !266, file: !2, line: 567, baseType: !28, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ld", scope: !266, file: !2, line: 567, baseType: !26, size: 64)
!270 = !DILocation(line: 567, column: 41, scope: !265)
!271 = !DILocation(line: 569, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !2, line: 569, column: 9)
!273 = !DILocation(line: 569, column: 17, scope: !272)
!274 = !DILocation(line: 569, column: 9, scope: !265)
!275 = !DILocation(line: 570, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !2, line: 569, column: 25)
!277 = !DILocation(line: 570, column: 11, scope: !276)
!278 = !DILocation(line: 571, column: 12, scope: !276)
!279 = !DILocation(line: 572, column: 11, scope: !276)
!280 = !DILocation(line: 573, column: 5, scope: !276)
!281 = !DILocation(line: 574, column: 12, scope: !282)
!282 = distinct !DILexicalBlock(scope: !272, file: !2, line: 573, column: 12)
!283 = !DILocation(line: 574, column: 10, scope: !282)
!284 = !DILocation(line: 575, column: 12, scope: !282)
!285 = !DILocation(line: 576, column: 11, scope: !282)
!286 = !DILocation(line: 579, column: 39, scope: !265)
!287 = !DILocation(line: 579, column: 23, scope: !265)
!288 = !DILocation(line: 579, column: 63, scope: !265)
!289 = !DILocation(line: 579, column: 70, scope: !265)
!290 = !DILocation(line: 579, column: 44, scope: !265)
!291 = !DILocation(line: 579, column: 94, scope: !265)
!292 = !DILocation(line: 579, column: 76, scope: !265)
!293 = !DILocation(line: 579, column: 120, scope: !265)
!294 = !DILocation(line: 579, column: 102, scope: !265)
!295 = !DILocation(line: 579, column: 11, scope: !265)
!296 = !DILocation(line: 579, column: 9, scope: !265)
!297 = !DILocation(line: 580, column: 9, scope: !298)
!298 = distinct !DILexicalBlock(scope: !265, file: !2, line: 580, column: 9)
!299 = !DILocation(line: 580, column: 14, scope: !298)
!300 = !DILocation(line: 580, column: 9, scope: !265)
!301 = !DILocation(line: 582, column: 22, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 582, column: 10)
!303 = distinct !DILexicalBlock(scope: !298, file: !2, line: 580, column: 20)
!304 = !DILocation(line: 582, column: 11, scope: !302)
!305 = !DILocation(line: 582, column: 39, scope: !302)
!306 = !DILocation(line: 582, column: 28, scope: !302)
!307 = !DILocation(line: 582, column: 26, scope: !302)
!308 = !DILocation(line: 582, column: 47, scope: !302)
!309 = !DILocation(line: 582, column: 45, scope: !302)
!310 = !DILocation(line: 582, column: 54, scope: !302)
!311 = !DILocation(line: 582, column: 52, scope: !302)
!312 = !DILocation(line: 582, column: 10, scope: !303)
!313 = !DILocation(line: 583, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !302, file: !2, line: 582, column: 59)
!315 = !DILocation(line: 587, column: 17, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 587, column: 17)
!317 = distinct !DILexicalBlock(scope: !303, file: !2, line: 585, column: 10)
!318 = !DILocation(line: 587, column: 25, scope: !316)
!319 = !DILocation(line: 587, column: 17, scope: !317)
!320 = !DILocation(line: 588, column: 31, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !2, line: 587, column: 33)
!322 = !DILocation(line: 588, column: 23, scope: !321)
!323 = !DILocation(line: 588, column: 27, scope: !321)
!324 = !DILocation(line: 589, column: 6, scope: !321)
!325 = !DILocation(line: 590, column: 26, scope: !326)
!326 = distinct !DILexicalBlock(scope: !316, file: !2, line: 589, column: 13)
!327 = !DILocation(line: 590, column: 18, scope: !326)
!328 = !DILocation(line: 590, column: 22, scope: !326)
!329 = !DILocation(line: 592, column: 5, scope: !303)
!330 = !DILocation(line: 593, column: 12, scope: !265)
!331 = !DILocation(line: 593, column: 9, scope: !265)
!332 = !DILocation(line: 594, column: 13, scope: !265)
!333 = !DILocation(line: 595, column: 5, scope: !265)
!334 = !DILocation(line: 599, column: 13, scope: !225)
!335 = !DILocation(line: 600, column: 5, scope: !225)
!336 = !DILocation(line: 605, column: 37, scope: !197)
!337 = !DILocation(line: 605, column: 21, scope: !197)
!338 = !DILocation(line: 605, column: 61, scope: !197)
!339 = !DILocation(line: 605, column: 68, scope: !197)
!340 = !DILocation(line: 605, column: 42, scope: !197)
!341 = !DILocation(line: 605, column: 92, scope: !197)
!342 = !DILocation(line: 605, column: 74, scope: !197)
!343 = !DILocation(line: 605, column: 118, scope: !197)
!344 = !DILocation(line: 605, column: 100, scope: !197)
!345 = !DILocation(line: 605, column: 9, scope: !197)
!346 = !DILocation(line: 605, column: 7, scope: !197)
!347 = !DILocation(line: 608, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !197, file: !2, line: 608, column: 7)
!349 = !DILocation(line: 608, column: 12, scope: !348)
!350 = !DILocation(line: 608, column: 17, scope: !348)
!351 = !DILocation(line: 608, column: 32, scope: !348)
!352 = !DILocation(line: 608, column: 21, scope: !348)
!353 = !DILocation(line: 608, column: 49, scope: !348)
!354 = !DILocation(line: 608, column: 38, scope: !348)
!355 = !DILocation(line: 608, column: 36, scope: !348)
!356 = !DILocation(line: 608, column: 57, scope: !348)
!357 = !DILocation(line: 608, column: 55, scope: !348)
!358 = !DILocation(line: 608, column: 64, scope: !348)
!359 = !DILocation(line: 608, column: 62, scope: !348)
!360 = !DILocation(line: 608, column: 7, scope: !197)
!361 = !DILocation(line: 609, column: 4, scope: !362)
!362 = distinct !DILexicalBlock(scope: !348, file: !2, line: 608, column: 69)
!363 = !DILocation(line: 613, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !197, file: !2, line: 613, column: 7)
!365 = !DILocation(line: 613, column: 7, scope: !197)
!366 = !DILocation(line: 614, column: 8, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !2, line: 613, column: 19)
!368 = !DILocation(line: 614, column: 6, scope: !367)
!369 = !DILocation(line: 614, column: 4, scope: !367)
!370 = !DILabel(scope: !367, name: "process_string", file: !2, line: 615)
!371 = !DILocation(line: 615, column: 1, scope: !367)
!372 = !DILocation(line: 616, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !2, line: 616, column: 8)
!374 = !DILocation(line: 616, column: 13, scope: !373)
!375 = !DILocation(line: 616, column: 8, scope: !367)
!376 = !DILocation(line: 617, column: 27, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !2, line: 616, column: 19)
!378 = !DILocation(line: 617, column: 21, scope: !377)
!379 = !DILocation(line: 617, column: 25, scope: !377)
!380 = !DILocation(line: 618, column: 4, scope: !377)
!381 = !DILocalVariable(name: "is_ro", scope: !367, file: !2, line: 620, type: !121)
!382 = !DILocation(line: 620, column: 10, scope: !367)
!383 = !DILocation(line: 620, column: 27, scope: !367)
!384 = !DILocation(line: 620, column: 30, scope: !367)
!385 = !DILocation(line: 620, column: 18, scope: !367)
!386 = !DILocation(line: 620, column: 55, scope: !367)
!387 = !DILocation(line: 620, column: 41, scope: !367)
!388 = !DILocalVariable(name: "do_ro", scope: !367, file: !2, line: 621, type: !121)
!389 = !DILocation(line: 621, column: 10, scope: !367)
!390 = !DILocation(line: 621, column: 21, scope: !367)
!391 = !DILocation(line: 621, column: 27, scope: !367)
!392 = !DILocation(line: 621, column: 19, scope: !367)
!393 = !DILocation(line: 621, column: 18, scope: !367)
!394 = !DILocation(line: 623, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !367, file: !2, line: 623, column: 8)
!396 = !DILocation(line: 623, column: 14, scope: !395)
!397 = !DILocation(line: 623, column: 18, scope: !395)
!398 = !DILocation(line: 623, column: 8, scope: !367)
!399 = !DILocation(line: 625, column: 4, scope: !400)
!400 = distinct !DILexicalBlock(scope: !395, file: !2, line: 623, column: 25)
!401 = !DILocalVariable(name: "s_ptr_idx", scope: !402, file: !2, line: 626, type: !73)
!402 = distinct !DILexicalBlock(scope: !395, file: !2, line: 625, column: 11)
!403 = !DILocation(line: 626, column: 14, scope: !402)
!404 = !DILocation(line: 626, column: 38, scope: !402)
!405 = !DILocation(line: 626, column: 27, scope: !402)
!406 = !DILocation(line: 626, column: 55, scope: !402)
!407 = !DILocation(line: 626, column: 44, scope: !402)
!408 = !DILocation(line: 626, column: 42, scope: !402)
!409 = !DILocation(line: 626, column: 61, scope: !402)
!410 = !DILocation(line: 634, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !402, file: !2, line: 634, column: 9)
!412 = !DILocation(line: 634, column: 15, scope: !411)
!413 = !DILocation(line: 634, column: 18, scope: !411)
!414 = !DILocation(line: 634, column: 28, scope: !411)
!415 = !DILocation(line: 634, column: 9, scope: !402)
!416 = !DILocation(line: 636, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !411, file: !2, line: 634, column: 52)
!418 = !DILocation(line: 639, column: 9, scope: !419)
!419 = distinct !DILexicalBlock(scope: !402, file: !2, line: 639, column: 9)
!420 = !DILocation(line: 639, column: 15, scope: !419)
!421 = !DILocation(line: 639, column: 9, scope: !402)
!422 = !DILocation(line: 641, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !2, line: 639, column: 206)
!424 = !DILocation(line: 644, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !402, file: !2, line: 644, column: 9)
!426 = !DILocation(line: 644, column: 14, scope: !425)
!427 = !DILocation(line: 644, column: 9, scope: !402)
!428 = !DILocation(line: 649, column: 27, scope: !429)
!429 = distinct !DILexicalBlock(scope: !425, file: !2, line: 644, column: 20)
!430 = !DILocation(line: 649, column: 18, scope: !429)
!431 = !DILocation(line: 649, column: 6, scope: !429)
!432 = !DILocation(line: 649, column: 25, scope: !429)
!433 = !DILocation(line: 650, column: 27, scope: !429)
!434 = !DILocation(line: 650, column: 18, scope: !429)
!435 = !DILocation(line: 650, column: 6, scope: !429)
!436 = !DILocation(line: 650, column: 25, scope: !429)
!437 = !DILocation(line: 651, column: 10, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !2, line: 651, column: 10)
!439 = !DILocation(line: 651, column: 10, scope: !429)
!440 = !DILocation(line: 653, column: 19, scope: !441)
!441 = distinct !DILexicalBlock(scope: !438, file: !2, line: 651, column: 17)
!442 = !DILocation(line: 653, column: 7, scope: !441)
!443 = !DILocation(line: 653, column: 26, scope: !441)
!444 = !DILocation(line: 654, column: 15, scope: !441)
!445 = !DILocation(line: 655, column: 6, scope: !441)
!446 = !DILocation(line: 656, column: 15, scope: !447)
!447 = distinct !DILexicalBlock(scope: !438, file: !2, line: 655, column: 13)
!448 = !DILocation(line: 658, column: 5, scope: !429)
!449 = !DILocation(line: 658, column: 16, scope: !450)
!450 = distinct !DILexicalBlock(scope: !425, file: !2, line: 658, column: 16)
!451 = !DILocation(line: 658, column: 16, scope: !425)
!452 = !DILocation(line: 663, column: 10, scope: !453)
!453 = distinct !DILexicalBlock(scope: !450, file: !2, line: 658, column: 23)
!454 = !DILocation(line: 664, column: 5, scope: !453)
!455 = !DILocation(line: 664, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !2, line: 664, column: 16)
!457 = !DILocation(line: 664, column: 16, scope: !450)
!458 = !DILocation(line: 669, column: 10, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !2, line: 664, column: 28)
!460 = !DILocation(line: 670, column: 5, scope: !459)
!461 = !DILocation(line: 675, column: 20, scope: !462)
!462 = distinct !DILexicalBlock(scope: !456, file: !2, line: 670, column: 12)
!463 = !DILocation(line: 675, column: 13, scope: !462)
!464 = !DILocation(line: 675, column: 23, scope: !462)
!465 = !DILocation(line: 675, column: 27, scope: !462)
!466 = !DILocation(line: 675, column: 10, scope: !462)
!467 = !DILocation(line: 678, column: 10, scope: !402)
!468 = !DILocation(line: 680, column: 8, scope: !367)
!469 = !DILocation(line: 682, column: 15, scope: !367)
!470 = !DILocation(line: 683, column: 3, scope: !367)
!471 = !DILocation(line: 683, column: 14, scope: !472)
!472 = distinct !DILexicalBlock(scope: !364, file: !2, line: 683, column: 14)
!473 = !DILocation(line: 683, column: 19, scope: !472)
!474 = !DILocation(line: 683, column: 14, scope: !364)
!475 = !DILocalVariable(name: "v", scope: !476, file: !2, line: 684, type: !34)
!476 = distinct !DILexicalBlock(scope: !472, file: !2, line: 683, column: 35)
!477 = !DILocation(line: 684, column: 8, scope: !476)
!478 = !DILocation(line: 684, column: 12, scope: !476)
!479 = !DILocation(line: 686, column: 8, scope: !480)
!480 = distinct !DILexicalBlock(scope: !476, file: !2, line: 686, column: 8)
!481 = !DILocation(line: 686, column: 13, scope: !480)
!482 = !DILocation(line: 686, column: 8, scope: !476)
!483 = !DILocation(line: 687, column: 19, scope: !484)
!484 = distinct !DILexicalBlock(scope: !480, file: !2, line: 686, column: 19)
!485 = !DILocation(line: 687, column: 13, scope: !484)
!486 = !DILocation(line: 687, column: 17, scope: !484)
!487 = !DILocation(line: 688, column: 4, scope: !484)
!488 = !DILocation(line: 689, column: 8, scope: !476)
!489 = !DILocation(line: 690, column: 3, scope: !476)
!490 = !DILocation(line: 690, column: 14, scope: !491)
!491 = distinct !DILexicalBlock(scope: !472, file: !2, line: 690, column: 14)
!492 = !DILocation(line: 690, column: 19, scope: !491)
!493 = !DILocation(line: 690, column: 14, scope: !472)
!494 = !DILocalVariable(name: "v", scope: !495, file: !2, line: 691, type: !37)
!495 = distinct !DILexicalBlock(scope: !491, file: !2, line: 690, column: 36)
!496 = !DILocation(line: 691, column: 9, scope: !495)
!497 = !DILocation(line: 691, column: 13, scope: !495)
!498 = !DILocation(line: 693, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !2, line: 693, column: 8)
!500 = !DILocation(line: 693, column: 13, scope: !499)
!501 = !DILocation(line: 693, column: 8, scope: !495)
!502 = !DILocation(line: 694, column: 20, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !2, line: 693, column: 19)
!504 = !DILocation(line: 694, column: 14, scope: !503)
!505 = !DILocation(line: 694, column: 18, scope: !503)
!506 = !DILocation(line: 695, column: 4, scope: !503)
!507 = !DILocation(line: 696, column: 8, scope: !495)
!508 = !DILocation(line: 697, column: 3, scope: !495)
!509 = !DILocation(line: 697, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !491, file: !2, line: 697, column: 14)
!511 = !DILocation(line: 697, column: 19, scope: !510)
!512 = !DILocation(line: 697, column: 14, scope: !491)
!513 = !DILocalVariable(name: "v", scope: !514, file: !2, line: 698, type: !39)
!514 = distinct !DILexicalBlock(scope: !510, file: !2, line: 697, column: 41)
!515 = !DILocation(line: 698, column: 14, scope: !514)
!516 = !DILocation(line: 698, column: 18, scope: !514)
!517 = !DILocation(line: 700, column: 8, scope: !518)
!518 = distinct !DILexicalBlock(scope: !514, file: !2, line: 700, column: 8)
!519 = !DILocation(line: 700, column: 13, scope: !518)
!520 = !DILocation(line: 700, column: 8, scope: !514)
!521 = !DILocation(line: 704, column: 26, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 703, column: 12)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 701, column: 9)
!524 = distinct !DILexicalBlock(scope: !518, file: !2, line: 700, column: 19)
!525 = !DILocation(line: 704, column: 20, scope: !522)
!526 = !DILocation(line: 704, column: 24, scope: !522)
!527 = !DILocation(line: 706, column: 4, scope: !524)
!528 = !DILocation(line: 707, column: 8, scope: !514)
!529 = !DILocation(line: 708, column: 3, scope: !514)
!530 = !DILocation(line: 710, column: 4, scope: !531)
!531 = distinct !DILexicalBlock(scope: !510, file: !2, line: 708, column: 10)
!532 = !DILocation(line: 720, column: 18, scope: !533)
!533 = distinct !DILexicalBlock(scope: !70, file: !2, line: 720, column: 6)
!534 = !DILocation(line: 720, column: 7, scope: !533)
!535 = !DILocation(line: 720, column: 35, scope: !533)
!536 = !DILocation(line: 720, column: 24, scope: !533)
!537 = !DILocation(line: 720, column: 22, scope: !533)
!538 = !DILocation(line: 720, column: 41, scope: !533)
!539 = !DILocation(line: 720, column: 55, scope: !533)
!540 = !DILocation(line: 720, column: 6, scope: !70)
!541 = !DILocation(line: 722, column: 3, scope: !542)
!542 = distinct !DILexicalBlock(scope: !533, file: !2, line: 720, column: 62)
!543 = !DILocation(line: 729, column: 6, scope: !544)
!544 = distinct !DILexicalBlock(scope: !70, file: !2, line: 729, column: 6)
!545 = !DILocation(line: 729, column: 11, scope: !544)
!546 = !DILocation(line: 729, column: 6, scope: !70)
!547 = !DILocation(line: 730, column: 22, scope: !548)
!548 = distinct !DILexicalBlock(scope: !544, file: !2, line: 729, column: 17)
!549 = !DILocation(line: 730, column: 11, scope: !548)
!550 = !DILocation(line: 730, column: 39, scope: !548)
!551 = !DILocation(line: 730, column: 28, scope: !548)
!552 = !DILocation(line: 730, column: 26, scope: !548)
!553 = !DILocation(line: 730, column: 47, scope: !548)
!554 = !DILocation(line: 730, column: 45, scope: !548)
!555 = !DILocation(line: 730, column: 51, scope: !548)
!556 = !DILocation(line: 730, column: 3, scope: !548)
!557 = !DILocation(line: 734, column: 12, scope: !70)
!558 = !DILocation(line: 734, column: 17, scope: !70)
!559 = !DILocation(line: 737, column: 34, scope: !70)
!560 = !DILocation(line: 737, column: 23, scope: !70)
!561 = !DILocation(line: 737, column: 51, scope: !70)
!562 = !DILocation(line: 737, column: 40, scope: !70)
!563 = !DILocation(line: 737, column: 38, scope: !70)
!564 = !DILocation(line: 737, column: 57, scope: !70)
!565 = !DILocation(line: 737, column: 22, scope: !70)
!566 = !DILocation(line: 737, column: 2, scope: !70)
!567 = !DILocation(line: 737, column: 16, scope: !70)
!568 = !DILocation(line: 737, column: 20, scope: !70)
!569 = !DILocation(line: 739, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !70, file: !2, line: 739, column: 6)
!571 = !DILocation(line: 739, column: 6, scope: !70)
!572 = !DILocation(line: 741, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !570, file: !2, line: 739, column: 18)
!574 = !DILocation(line: 741, column: 17, scope: !573)
!575 = !DILocation(line: 741, column: 25, scope: !573)
!576 = !DILocation(line: 742, column: 30, scope: !573)
!577 = !DILocation(line: 742, column: 3, scope: !573)
!578 = !DILocation(line: 742, column: 17, scope: !573)
!579 = !DILocation(line: 742, column: 28, scope: !573)
!580 = !DILocation(line: 743, column: 2, scope: !573)
!581 = !DILocation(line: 745, column: 27, scope: !582)
!582 = distinct !DILexicalBlock(scope: !570, file: !2, line: 743, column: 9)
!583 = !DILocation(line: 745, column: 3, scope: !582)
!584 = !DILocation(line: 745, column: 17, scope: !582)
!585 = !DILocation(line: 745, column: 25, scope: !582)
!586 = !DILocation(line: 746, column: 3, scope: !582)
!587 = !DILocation(line: 746, column: 17, scope: !582)
!588 = !DILocation(line: 746, column: 28, scope: !582)
!589 = !DILocation(line: 749, column: 29, scope: !70)
!590 = !DILocation(line: 749, column: 2, scope: !70)
!591 = !DILocation(line: 749, column: 16, scope: !70)
!592 = !DILocation(line: 749, column: 27, scope: !70)
!593 = !DILocation(line: 756, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !70, file: !2, line: 756, column: 6)
!595 = !DILocation(line: 756, column: 6, scope: !70)
!596 = !DILocation(line: 757, column: 10, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 757, column: 3)
!598 = distinct !DILexicalBlock(scope: !594, file: !2, line: 756, column: 16)
!599 = !DILocation(line: 757, column: 8, scope: !597)
!600 = !DILocation(line: 757, column: 15, scope: !601)
!601 = distinct !DILexicalBlock(scope: !597, file: !2, line: 757, column: 3)
!602 = !DILocation(line: 757, column: 19, scope: !601)
!603 = !DILocation(line: 757, column: 17, scope: !601)
!604 = !DILocation(line: 757, column: 3, scope: !597)
!605 = !DILocation(line: 758, column: 22, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !2, line: 758, column: 8)
!607 = distinct !DILexicalBlock(scope: !601, file: !2, line: 757, column: 31)
!608 = !DILocation(line: 758, column: 10, scope: !606)
!609 = !DILocation(line: 758, column: 25, scope: !606)
!610 = !DILocation(line: 758, column: 8, scope: !607)
!611 = !DILocation(line: 759, column: 5, scope: !612)
!612 = distinct !DILexicalBlock(scope: !606, file: !2, line: 758, column: 42)
!613 = !DILocalVariable(name: "pos", scope: !607, file: !2, line: 762, type: !43)
!614 = !DILocation(line: 762, column: 12, scope: !607)
!615 = !DILocation(line: 762, column: 30, scope: !607)
!616 = !DILocation(line: 762, column: 18, scope: !607)
!617 = !DILocation(line: 762, column: 33, scope: !607)
!618 = !DILocation(line: 765, column: 20, scope: !619)
!619 = distinct !DILexicalBlock(scope: !607, file: !2, line: 765, column: 8)
!620 = !DILocation(line: 765, column: 9, scope: !619)
!621 = !DILocation(line: 765, column: 37, scope: !619)
!622 = !DILocation(line: 765, column: 26, scope: !619)
!623 = !DILocation(line: 765, column: 24, scope: !619)
!624 = !DILocation(line: 765, column: 43, scope: !619)
!625 = !DILocation(line: 765, column: 49, scope: !619)
!626 = !DILocation(line: 765, column: 47, scope: !619)
!627 = !DILocation(line: 765, column: 8, scope: !607)
!628 = !DILocation(line: 766, column: 5, scope: !629)
!629 = distinct !DILexicalBlock(scope: !619, file: !2, line: 765, column: 54)
!630 = !DILocation(line: 769, column: 13, scope: !607)
!631 = !DILocation(line: 769, column: 8, scope: !607)
!632 = !DILocation(line: 769, column: 11, scope: !607)
!633 = !DILocation(line: 770, column: 3, scope: !607)
!634 = !DILocation(line: 757, column: 27, scope: !601)
!635 = !DILocation(line: 757, column: 3, scope: !601)
!636 = distinct !{!636, !604, !637}
!637 = !DILocation(line: 770, column: 3, scope: !597)
!638 = !DILocation(line: 771, column: 2, scope: !598)
!639 = !DILocation(line: 774, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !70, file: !2, line: 774, column: 2)
!641 = !DILocation(line: 774, column: 7, scope: !640)
!642 = !DILocation(line: 774, column: 14, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 774, column: 2)
!644 = !DILocation(line: 774, column: 18, scope: !643)
!645 = !DILocation(line: 774, column: 16, scope: !643)
!646 = !DILocation(line: 774, column: 2, scope: !640)
!647 = !DILocation(line: 776, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !2, line: 776, column: 7)
!649 = distinct !DILexicalBlock(scope: !643, file: !2, line: 774, column: 30)
!650 = !DILocation(line: 776, column: 16, scope: !648)
!651 = !DILocation(line: 776, column: 31, scope: !648)
!652 = !DILocation(line: 776, column: 19, scope: !648)
!653 = !DILocation(line: 776, column: 34, scope: !648)
!654 = !DILocation(line: 776, column: 7, scope: !649)
!655 = !DILocation(line: 777, column: 4, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !2, line: 776, column: 50)
!657 = !DILocation(line: 780, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !649, file: !2, line: 780, column: 7)
!659 = !DILocation(line: 780, column: 7, scope: !649)
!660 = !DILocation(line: 781, column: 9, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !2, line: 780, column: 19)
!662 = !DILocation(line: 782, column: 25, scope: !661)
!663 = !DILocation(line: 782, column: 13, scope: !661)
!664 = !DILocation(line: 782, column: 8, scope: !661)
!665 = !DILocation(line: 782, column: 11, scope: !661)
!666 = !DILocation(line: 783, column: 3, scope: !661)
!667 = !DILocation(line: 785, column: 19, scope: !668)
!668 = distinct !DILexicalBlock(scope: !658, file: !2, line: 783, column: 10)
!669 = !DILocation(line: 785, column: 38, scope: !668)
!670 = !DILocation(line: 785, column: 26, scope: !668)
!671 = !DILocation(line: 785, column: 41, scope: !668)
!672 = !DILocation(line: 785, column: 24, scope: !668)
!673 = !DILocation(line: 785, column: 8, scope: !668)
!674 = !DILocation(line: 785, column: 6, scope: !668)
!675 = !DILocation(line: 787, column: 15, scope: !668)
!676 = !DILocation(line: 787, column: 34, scope: !668)
!677 = !DILocation(line: 787, column: 22, scope: !668)
!678 = !DILocation(line: 787, column: 37, scope: !668)
!679 = !DILocation(line: 787, column: 20, scope: !668)
!680 = !DILocation(line: 787, column: 52, scope: !668)
!681 = !DILocation(line: 789, column: 18, scope: !668)
!682 = !DILocation(line: 789, column: 11, scope: !668)
!683 = !DILocation(line: 789, column: 21, scope: !668)
!684 = !DILocation(line: 789, column: 9, scope: !668)
!685 = !DILocation(line: 793, column: 19, scope: !686)
!686 = distinct !DILexicalBlock(scope: !649, file: !2, line: 793, column: 7)
!687 = !DILocation(line: 793, column: 8, scope: !686)
!688 = !DILocation(line: 793, column: 36, scope: !686)
!689 = !DILocation(line: 793, column: 25, scope: !686)
!690 = !DILocation(line: 793, column: 23, scope: !686)
!691 = !DILocation(line: 793, column: 42, scope: !686)
!692 = !DILocation(line: 793, column: 48, scope: !686)
!693 = !DILocation(line: 793, column: 46, scope: !686)
!694 = !DILocation(line: 793, column: 55, scope: !686)
!695 = !DILocation(line: 793, column: 53, scope: !686)
!696 = !DILocation(line: 793, column: 7, scope: !649)
!697 = !DILocation(line: 794, column: 4, scope: !698)
!698 = distinct !DILexicalBlock(scope: !686, file: !2, line: 793, column: 60)
!699 = !DILocation(line: 797, column: 24, scope: !649)
!700 = !DILocation(line: 797, column: 12, scope: !649)
!701 = !DILocation(line: 797, column: 7, scope: !649)
!702 = !DILocation(line: 797, column: 10, scope: !649)
!703 = !DILocation(line: 799, column: 10, scope: !649)
!704 = !DILocation(line: 799, column: 15, scope: !649)
!705 = !DILocation(line: 799, column: 18, scope: !649)
!706 = !DILocation(line: 799, column: 3, scope: !649)
!707 = !DILocation(line: 800, column: 10, scope: !649)
!708 = !DILocation(line: 800, column: 7, scope: !649)
!709 = !DILocation(line: 801, column: 2, scope: !649)
!710 = !DILocation(line: 774, column: 26, scope: !643)
!711 = !DILocation(line: 774, column: 2, scope: !643)
!712 = distinct !{!712, !646, !713}
!713 = !DILocation(line: 801, column: 2, scope: !640)
!714 = !DILocation(line: 808, column: 21, scope: !70)
!715 = !DILocation(line: 808, column: 10, scope: !70)
!716 = !DILocation(line: 808, column: 38, scope: !70)
!717 = !DILocation(line: 808, column: 27, scope: !70)
!718 = !DILocation(line: 808, column: 25, scope: !70)
!719 = !DILocation(line: 808, column: 2, scope: !70)
!720 = !DILocation(line: 813, column: 1, scope: !70)
!721 = distinct !DISubprogram(name: "ptr_in_rodata", scope: !2, file: !2, line: 33, type: !722, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!722 = !DISubroutineType(types: !723)
!723 = !{!121, !30}
!724 = !DILocalVariable(name: "addr", arg: 1, scope: !721, file: !2, line: 33, type: !30)
!725 = !DILocation(line: 33, column: 47, scope: !721)
!726 = !DILocation(line: 41, column: 29, scope: !721)
!727 = !DILocation(line: 41, column: 9, scope: !721)
!728 = !DILocation(line: 41, column: 2, scope: !721)
!729 = distinct !DISubprogram(name: "cbprintf_package", scope: !2, file: !2, line: 815, type: !730, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !80)
!730 = !DISubroutineType(types: !731)
!731 = !{!34, !23, !32, !73, !30, null}
!732 = !DILocalVariable(name: "packaged", arg: 1, scope: !729, file: !2, line: 815, type: !23)
!733 = !DILocation(line: 815, column: 28, scope: !729)
!734 = !DILocalVariable(name: "len", arg: 2, scope: !729, file: !2, line: 815, type: !32)
!735 = !DILocation(line: 815, column: 45, scope: !729)
!736 = !DILocalVariable(name: "flags", arg: 3, scope: !729, file: !2, line: 815, type: !73)
!737 = !DILocation(line: 815, column: 59, scope: !729)
!738 = !DILocalVariable(name: "format", arg: 4, scope: !729, file: !2, line: 816, type: !30)
!739 = !DILocation(line: 816, column: 20, scope: !729)
!740 = !DILocalVariable(name: "ap", scope: !729, file: !2, line: 818, type: !74)
!741 = !DILocation(line: 818, column: 10, scope: !729)
!742 = !DILocalVariable(name: "ret", scope: !729, file: !2, line: 819, type: !34)
!743 = !DILocation(line: 819, column: 6, scope: !729)
!744 = !DILocation(line: 821, column: 2, scope: !729)
!745 = !DILocation(line: 822, column: 26, scope: !729)
!746 = !DILocation(line: 822, column: 36, scope: !729)
!747 = !DILocation(line: 822, column: 41, scope: !729)
!748 = !DILocation(line: 822, column: 48, scope: !729)
!749 = !DILocation(line: 822, column: 8, scope: !729)
!750 = !DILocation(line: 822, column: 6, scope: !729)
!751 = !DILocation(line: 823, column: 2, scope: !729)
!752 = !DILocation(line: 824, column: 9, scope: !729)
!753 = !DILocation(line: 824, column: 2, scope: !729)
!754 = distinct !DISubprogram(name: "cbpprintf_external", scope: !2, file: !2, line: 827, type: !755, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !80)
!755 = !DISubroutineType(types: !756)
!756 = !{!34, !757, !761, !23, !23}
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !140, line: 302, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 32)
!759 = !DISubroutineType(types: !760)
!760 = !{!34, null}
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbvprintf_external_formatter_func", file: !140, line: 333, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 32)
!763 = !DISubroutineType(types: !764)
!764 = !{!34, !757, !23, !30, !74}
!765 = !DILocalVariable(name: "out", arg: 1, scope: !754, file: !2, line: 827, type: !757)
!766 = !DILocation(line: 827, column: 36, scope: !754)
!767 = !DILocalVariable(name: "formatter", arg: 2, scope: !754, file: !2, line: 828, type: !761)
!768 = !DILocation(line: 828, column: 44, scope: !754)
!769 = !DILocalVariable(name: "ctx", arg: 3, scope: !754, file: !2, line: 829, type: !23)
!770 = !DILocation(line: 829, column: 16, scope: !754)
!771 = !DILocalVariable(name: "packaged", arg: 4, scope: !754, file: !2, line: 829, type: !23)
!772 = !DILocation(line: 829, column: 27, scope: !754)
!773 = !DILocalVariable(name: "buf", scope: !754, file: !2, line: 831, type: !42)
!774 = !DILocation(line: 831, column: 11, scope: !754)
!775 = !DILocation(line: 831, column: 17, scope: !754)
!776 = !DILocalVariable(name: "hdr", scope: !754, file: !2, line: 832, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 32)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cbprintf_package_hdr_ext", file: !140, line: 96, size: 64, elements: !779)
!779 = !{!780, !781}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !778, file: !140, line: 98, baseType: !139, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !778, file: !140, line: 101, baseType: !41, size: 32, offset: 32)
!782 = !DILocation(line: 832, column: 35, scope: !754)
!783 = !DILocation(line: 832, column: 41, scope: !754)
!784 = !DILocalVariable(name: "s", scope: !754, file: !2, line: 833, type: !41)
!785 = !DILocation(line: 833, column: 8, scope: !754)
!786 = !DILocalVariable(name: "ps", scope: !754, file: !2, line: 833, type: !40)
!787 = !DILocation(line: 833, column: 13, scope: !754)
!788 = !DILocalVariable(name: "i", scope: !754, file: !2, line: 834, type: !22)
!789 = !DILocation(line: 834, column: 15, scope: !754)
!790 = !DILocalVariable(name: "args_size", scope: !754, file: !2, line: 834, type: !22)
!791 = !DILocation(line: 834, column: 18, scope: !754)
!792 = !DILocalVariable(name: "s_nbr", scope: !754, file: !2, line: 834, type: !22)
!793 = !DILocation(line: 834, column: 29, scope: !754)
!794 = !DILocalVariable(name: "ros_nbr", scope: !754, file: !2, line: 834, type: !22)
!795 = !DILocation(line: 834, column: 36, scope: !754)
!796 = !DILocalVariable(name: "rws_nbr", scope: !754, file: !2, line: 834, type: !22)
!797 = !DILocation(line: 834, column: 45, scope: !754)
!798 = !DILocalVariable(name: "s_idx", scope: !754, file: !2, line: 834, type: !22)
!799 = !DILocation(line: 834, column: 54, scope: !754)
!800 = !DILocation(line: 836, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !754, file: !2, line: 836, column: 6)
!802 = !DILocation(line: 836, column: 10, scope: !801)
!803 = !DILocation(line: 836, column: 6, scope: !754)
!804 = !DILocation(line: 837, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !2, line: 836, column: 16)
!806 = !DILocation(line: 841, column: 14, scope: !754)
!807 = !DILocation(line: 841, column: 19, scope: !754)
!808 = !DILocation(line: 841, column: 28, scope: !754)
!809 = !DILocation(line: 841, column: 32, scope: !754)
!810 = !DILocation(line: 841, column: 12, scope: !754)
!811 = !DILocation(line: 842, column: 10, scope: !754)
!812 = !DILocation(line: 842, column: 15, scope: !754)
!813 = !DILocation(line: 842, column: 24, scope: !754)
!814 = !DILocation(line: 842, column: 8, scope: !754)
!815 = !DILocation(line: 843, column: 12, scope: !754)
!816 = !DILocation(line: 843, column: 17, scope: !754)
!817 = !DILocation(line: 843, column: 26, scope: !754)
!818 = !DILocation(line: 843, column: 10, scope: !754)
!819 = !DILocation(line: 844, column: 12, scope: !754)
!820 = !DILocation(line: 844, column: 17, scope: !754)
!821 = !DILocation(line: 844, column: 26, scope: !754)
!822 = !DILocation(line: 844, column: 10, scope: !754)
!823 = !DILocation(line: 847, column: 15, scope: !754)
!824 = !DILocation(line: 847, column: 21, scope: !754)
!825 = !DILocation(line: 847, column: 19, scope: !754)
!826 = !DILocation(line: 847, column: 33, scope: !754)
!827 = !DILocation(line: 847, column: 31, scope: !754)
!828 = !DILocation(line: 847, column: 47, scope: !754)
!829 = !DILocation(line: 847, column: 45, scope: !754)
!830 = !DILocation(line: 847, column: 41, scope: !754)
!831 = !DILocation(line: 847, column: 4, scope: !754)
!832 = !DILocation(line: 852, column: 9, scope: !833)
!833 = distinct !DILexicalBlock(scope: !754, file: !2, line: 852, column: 2)
!834 = !DILocation(line: 852, column: 7, scope: !833)
!835 = !DILocation(line: 852, column: 14, scope: !836)
!836 = distinct !DILexicalBlock(scope: !833, file: !2, line: 852, column: 2)
!837 = !DILocation(line: 852, column: 18, scope: !836)
!838 = !DILocation(line: 852, column: 16, scope: !836)
!839 = !DILocation(line: 852, column: 2, scope: !833)
!840 = !DILocation(line: 854, column: 24, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !2, line: 852, column: 30)
!842 = !DILocation(line: 854, column: 11, scope: !841)
!843 = !DILocation(line: 854, column: 9, scope: !841)
!844 = !DILocation(line: 855, column: 18, scope: !841)
!845 = !DILocation(line: 855, column: 24, scope: !841)
!846 = !DILocation(line: 855, column: 30, scope: !841)
!847 = !DILocation(line: 855, column: 22, scope: !841)
!848 = !DILocation(line: 855, column: 6, scope: !841)
!849 = !DILocation(line: 857, column: 9, scope: !841)
!850 = !DILocation(line: 857, column: 4, scope: !841)
!851 = !DILocation(line: 857, column: 7, scope: !841)
!852 = !DILocation(line: 859, column: 15, scope: !841)
!853 = !DILocation(line: 859, column: 8, scope: !841)
!854 = !DILocation(line: 859, column: 18, scope: !841)
!855 = !DILocation(line: 859, column: 5, scope: !841)
!856 = !DILocation(line: 860, column: 2, scope: !841)
!857 = !DILocation(line: 852, column: 26, scope: !836)
!858 = !DILocation(line: 852, column: 2, scope: !836)
!859 = distinct !{!859, !839, !860}
!860 = !DILocation(line: 860, column: 2, scope: !833)
!861 = !DILocation(line: 863, column: 6, scope: !754)
!862 = !DILocation(line: 866, column: 30, scope: !754)
!863 = !DILocation(line: 866, column: 35, scope: !754)
!864 = !DILocation(line: 866, column: 46, scope: !754)
!865 = !DILocation(line: 866, column: 51, scope: !754)
!866 = !DILocation(line: 866, column: 56, scope: !754)
!867 = !DILocation(line: 866, column: 61, scope: !754)
!868 = !DILocation(line: 866, column: 9, scope: !754)
!869 = !DILocation(line: 866, column: 2, scope: !754)
!870 = !DILocation(line: 867, column: 1, scope: !754)
!871 = distinct !DISubprogram(name: "cbprintf_via_va_list", scope: !2, file: !2, line: 179, type: !872, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!872 = !DISubroutineType(types: !873)
!873 = !{!34, !757, !761, !23, !30, !23}
!874 = !DILocalVariable(name: "out", arg: 1, scope: !871, file: !2, line: 179, type: !757)
!875 = !DILocation(line: 179, column: 45, scope: !871)
!876 = !DILocalVariable(name: "formatter", arg: 2, scope: !871, file: !2, line: 180, type: !761)
!877 = !DILocation(line: 180, column: 39, scope: !871)
!878 = !DILocalVariable(name: "ctx", arg: 3, scope: !871, file: !2, line: 181, type: !23)
!879 = !DILocation(line: 181, column: 11, scope: !871)
!880 = !DILocalVariable(name: "fmt", arg: 4, scope: !871, file: !2, line: 182, type: !30)
!881 = !DILocation(line: 182, column: 17, scope: !871)
!882 = !DILocalVariable(name: "buf", arg: 5, scope: !871, file: !2, line: 182, type: !23)
!883 = !DILocation(line: 182, column: 28, scope: !871)
!884 = !DILocalVariable(name: "u", scope: !871, file: !2, line: 187, type: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !871, file: !2, line: 184, size: 32, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ap", scope: !885, file: !2, line: 185, baseType: !74, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !885, file: !2, line: 186, baseType: !23, size: 32)
!889 = !DILocation(line: 187, column: 4, scope: !871)
!890 = !DILocation(line: 189, column: 10, scope: !871)
!891 = !DILocation(line: 189, column: 8, scope: !871)
!892 = !DILocation(line: 191, column: 9, scope: !871)
!893 = !DILocation(line: 191, column: 19, scope: !871)
!894 = !DILocation(line: 191, column: 24, scope: !871)
!895 = !DILocation(line: 191, column: 29, scope: !871)
!896 = !DILocation(line: 191, column: 2, scope: !871)
!897 = distinct !DISubprogram(name: "is_ptr", scope: !2, file: !2, line: 881, type: !898, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !80)
!898 = !DISubroutineType(types: !899)
!899 = !{!121, !30, !34}
!900 = !DILocalVariable(name: "fmt", arg: 1, scope: !897, file: !2, line: 881, type: !30)
!901 = !DILocation(line: 881, column: 26, scope: !897)
!902 = !DILocalVariable(name: "n", arg: 2, scope: !897, file: !2, line: 881, type: !34)
!903 = !DILocation(line: 881, column: 35, scope: !897)
!904 = !DILocalVariable(name: "c", scope: !897, file: !2, line: 883, type: !4)
!905 = !DILocation(line: 883, column: 7, scope: !897)
!906 = !DILocalVariable(name: "mod", scope: !897, file: !2, line: 884, type: !121)
!907 = !DILocation(line: 884, column: 8, scope: !897)
!908 = !DILocalVariable(name: "cnt", scope: !897, file: !2, line: 885, type: !34)
!909 = !DILocation(line: 885, column: 6, scope: !897)
!910 = !DILocation(line: 887, column: 2, scope: !897)
!911 = !DILocation(line: 887, column: 18, scope: !897)
!912 = !DILocation(line: 887, column: 14, scope: !897)
!913 = !DILocation(line: 887, column: 12, scope: !897)
!914 = !DILocation(line: 887, column: 9, scope: !897)
!915 = !DILocation(line: 887, column: 22, scope: !897)
!916 = !DILocation(line: 888, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 888, column: 7)
!918 = distinct !DILexicalBlock(scope: !897, file: !2, line: 887, column: 31)
!919 = !DILocation(line: 888, column: 7, scope: !918)
!920 = !DILocation(line: 889, column: 8, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 889, column: 8)
!922 = distinct !DILexicalBlock(scope: !917, file: !2, line: 888, column: 12)
!923 = !DILocation(line: 889, column: 15, scope: !921)
!924 = !DILocation(line: 889, column: 12, scope: !921)
!925 = !DILocation(line: 889, column: 8, scope: !922)
!926 = !DILocation(line: 890, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 890, column: 9)
!928 = distinct !DILexicalBlock(scope: !921, file: !2, line: 889, column: 18)
!929 = !DILocation(line: 890, column: 11, scope: !927)
!930 = !DILocation(line: 890, column: 9, scope: !928)
!931 = !DILocation(line: 891, column: 6, scope: !932)
!932 = distinct !DILexicalBlock(scope: !927, file: !2, line: 890, column: 19)
!933 = !DILocation(line: 892, column: 28, scope: !934)
!934 = distinct !DILexicalBlock(scope: !927, file: !2, line: 892, column: 16)
!935 = !DILocation(line: 892, column: 16, scope: !934)
!936 = !DILocation(line: 892, column: 16, scope: !927)
!937 = !DILocation(line: 893, column: 6, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !2, line: 892, column: 32)
!939 = !DILocation(line: 895, column: 4, scope: !928)
!940 = !DILocation(line: 895, column: 27, scope: !941)
!941 = distinct !DILexicalBlock(scope: !921, file: !2, line: 895, column: 15)
!942 = !DILocation(line: 895, column: 15, scope: !941)
!943 = !DILocation(line: 895, column: 15, scope: !921)
!944 = !DILocation(line: 896, column: 8, scope: !945)
!945 = distinct !DILexicalBlock(scope: !941, file: !2, line: 895, column: 31)
!946 = !DILocation(line: 897, column: 9, scope: !945)
!947 = !DILocation(line: 898, column: 4, scope: !945)
!948 = !DILocation(line: 899, column: 3, scope: !922)
!949 = !DILocation(line: 900, column: 7, scope: !950)
!950 = distinct !DILexicalBlock(scope: !918, file: !2, line: 900, column: 7)
!951 = !DILocation(line: 900, column: 9, scope: !950)
!952 = !DILocation(line: 900, column: 7, scope: !918)
!953 = !DILocation(line: 901, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !2, line: 900, column: 17)
!955 = !DILocation(line: 901, column: 10, scope: !954)
!956 = !DILocation(line: 901, column: 8, scope: !954)
!957 = !DILocation(line: 902, column: 3, scope: !954)
!958 = distinct !{!958, !910, !959}
!959 = !DILocation(line: 903, column: 2, scope: !897)
!960 = !DILocation(line: 905, column: 2, scope: !897)
!961 = !DILocation(line: 906, column: 1, scope: !897)
!962 = distinct !DISubprogram(name: "is_fmt_spec", scope: !2, file: !2, line: 873, type: !963, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!963 = !DISubroutineType(types: !964)
!964 = !{!121, !4}
!965 = !DILocalVariable(name: "c", arg: 1, scope: !962, file: !2, line: 873, type: !4)
!966 = !DILocation(line: 873, column: 31, scope: !962)
!967 = !DILocation(line: 875, column: 10, scope: !962)
!968 = !DILocation(line: 875, column: 12, scope: !962)
!969 = !DILocation(line: 875, column: 19, scope: !962)
!970 = !DILocation(line: 875, column: 23, scope: !962)
!971 = !DILocation(line: 875, column: 25, scope: !962)
!972 = !DILocation(line: 0, scope: !962)
!973 = !DILocation(line: 875, column: 2, scope: !962)
!974 = distinct !DISubprogram(name: "cbprintf_package_convert", scope: !2, file: !2, line: 908, type: !975, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !80)
!975 = !DISubroutineType(types: !976)
!976 = !{!34, !23, !32, !977, !23, !73, !983, !32}
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_convert_cb", file: !140, line: 313, baseType: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 32)
!979 = !DISubroutineType(types: !980)
!980 = !{!34, !981, !32, !23}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!984 = !DILocalVariable(name: "in_packaged", arg: 1, scope: !974, file: !2, line: 908, type: !23)
!985 = !DILocation(line: 908, column: 36, scope: !974)
!986 = !DILocalVariable(name: "in_len", arg: 2, scope: !974, file: !2, line: 909, type: !32)
!987 = !DILocation(line: 909, column: 16, scope: !974)
!988 = !DILocalVariable(name: "cb", arg: 3, scope: !974, file: !2, line: 910, type: !977)
!989 = !DILocation(line: 910, column: 29, scope: !974)
!990 = !DILocalVariable(name: "ctx", arg: 4, scope: !974, file: !2, line: 911, type: !23)
!991 = !DILocation(line: 911, column: 15, scope: !974)
!992 = !DILocalVariable(name: "flags", arg: 5, scope: !974, file: !2, line: 912, type: !73)
!993 = !DILocation(line: 912, column: 18, scope: !974)
!994 = !DILocalVariable(name: "strl", arg: 6, scope: !974, file: !2, line: 913, type: !983)
!995 = !DILocation(line: 913, column: 19, scope: !974)
!996 = !DILocalVariable(name: "strl_len", arg: 7, scope: !974, file: !2, line: 914, type: !32)
!997 = !DILocation(line: 914, column: 16, scope: !974)
!998 = !DILocalVariable(name: "buf", scope: !974, file: !2, line: 918, type: !42)
!999 = !DILocation(line: 918, column: 11, scope: !974)
!1000 = !DILocation(line: 918, column: 17, scope: !974)
!1001 = !DILocalVariable(name: "buf32", scope: !974, file: !2, line: 919, type: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 32)
!1003 = !DILocation(line: 919, column: 12, scope: !974)
!1004 = !DILocation(line: 919, column: 20, scope: !974)
!1005 = !DILocalVariable(name: "args_size", scope: !974, file: !2, line: 920, type: !22)
!1006 = !DILocation(line: 920, column: 15, scope: !974)
!1007 = !DILocalVariable(name: "ros_nbr", scope: !974, file: !2, line: 920, type: !22)
!1008 = !DILocation(line: 920, column: 26, scope: !974)
!1009 = !DILocalVariable(name: "rws_nbr", scope: !974, file: !2, line: 920, type: !22)
!1010 = !DILocation(line: 920, column: 35, scope: !974)
!1011 = !DILocalVariable(name: "fmt_present", scope: !974, file: !2, line: 921, type: !121)
!1012 = !DILocation(line: 921, column: 8, scope: !974)
!1013 = !DILocation(line: 921, column: 22, scope: !974)
!1014 = !DILocation(line: 921, column: 28, scope: !974)
!1015 = !DILocalVariable(name: "rw_cpy", scope: !974, file: !2, line: 922, type: !121)
!1016 = !DILocation(line: 922, column: 8, scope: !974)
!1017 = !DILocalVariable(name: "ro_cpy", scope: !974, file: !2, line: 923, type: !121)
!1018 = !DILocation(line: 923, column: 8, scope: !974)
!1019 = !DILocalVariable(name: "in_desc", scope: !974, file: !2, line: 924, type: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 32)
!1021 = !DILocation(line: 924, column: 32, scope: !974)
!1022 = !DILocation(line: 924, column: 42, scope: !974)
!1023 = !DILocation(line: 926, column: 11, scope: !974)
!1024 = !DILocation(line: 926, column: 18, scope: !974)
!1025 = !DILocation(line: 926, column: 25, scope: !974)
!1026 = !DILocation(line: 926, column: 50, scope: !974)
!1027 = !DILocation(line: 926, column: 34, scope: !974)
!1028 = !DILocation(line: 926, column: 9, scope: !974)
!1029 = !DILocation(line: 931, column: 12, scope: !974)
!1030 = !DILocation(line: 931, column: 21, scope: !974)
!1031 = !DILocation(line: 931, column: 10, scope: !974)
!1032 = !DILocation(line: 932, column: 11, scope: !974)
!1033 = !DILocation(line: 932, column: 19, scope: !974)
!1034 = !DILocation(line: 933, column: 4, scope: !974)
!1035 = !DILocation(line: 933, column: 10, scope: !974)
!1036 = !DILocation(line: 933, column: 26, scope: !974)
!1037 = !DILocation(line: 0, scope: !974)
!1038 = !DILocation(line: 932, column: 9, scope: !974)
!1039 = !DILocation(line: 938, column: 12, scope: !974)
!1040 = !DILocation(line: 938, column: 21, scope: !974)
!1041 = !DILocation(line: 938, column: 10, scope: !974)
!1042 = !DILocation(line: 939, column: 11, scope: !974)
!1043 = !DILocation(line: 939, column: 19, scope: !974)
!1044 = !DILocation(line: 939, column: 23, scope: !974)
!1045 = !DILocation(line: 940, column: 5, scope: !974)
!1046 = !DILocation(line: 940, column: 11, scope: !974)
!1047 = !DILocation(line: 940, column: 27, scope: !974)
!1048 = !DILocation(line: 939, column: 9, scope: !974)
!1049 = !DILocation(line: 946, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !974, file: !2, line: 946, column: 6)
!1051 = !DILocation(line: 946, column: 14, scope: !1050)
!1052 = !DILocation(line: 946, column: 18, scope: !1050)
!1053 = !DILocation(line: 946, column: 6, scope: !974)
!1054 = !DILocation(line: 947, column: 7, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 947, column: 7)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 946, column: 26)
!1057 = !DILocation(line: 947, column: 7, scope: !1056)
!1058 = !DILocation(line: 948, column: 4, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 947, column: 11)
!1060 = !DILocation(line: 948, column: 7, scope: !1059)
!1061 = !DILocation(line: 948, column: 20, scope: !1059)
!1062 = !DILocation(line: 948, column: 28, scope: !1059)
!1063 = !DILocation(line: 949, column: 3, scope: !1059)
!1064 = !DILocation(line: 951, column: 10, scope: !1056)
!1065 = !DILocation(line: 951, column: 3, scope: !1056)
!1066 = !DILocation(line: 958, column: 14, scope: !974)
!1067 = !DILocation(line: 958, column: 23, scope: !974)
!1068 = !DILocation(line: 958, column: 27, scope: !974)
!1069 = !DILocation(line: 958, column: 12, scope: !974)
!1070 = !DILocalVariable(name: "out_len", scope: !974, file: !2, line: 960, type: !34)
!1071 = !DILocation(line: 960, column: 6, scope: !974)
!1072 = !DILocalVariable(name: "fmt", scope: !974, file: !2, line: 965, type: !30)
!1073 = !DILocation(line: 965, column: 14, scope: !974)
!1074 = !DILocation(line: 965, column: 37, scope: !974)
!1075 = !DILocation(line: 965, column: 41, scope: !974)
!1076 = !DILocation(line: 965, column: 20, scope: !974)
!1077 = !DILocalVariable(name: "str_pos", scope: !974, file: !2, line: 966, type: !42)
!1078 = !DILocation(line: 966, column: 11, scope: !974)
!1079 = !DILocation(line: 966, column: 22, scope: !974)
!1080 = !DILocation(line: 966, column: 26, scope: !974)
!1081 = !DILocalVariable(name: "strl_cnt", scope: !974, file: !2, line: 967, type: !32)
!1082 = !DILocation(line: 967, column: 9, scope: !974)
!1083 = !DILocation(line: 970, column: 6, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !974, file: !2, line: 970, column: 6)
!1085 = !DILocation(line: 970, column: 9, scope: !1084)
!1086 = !DILocation(line: 970, column: 6, scope: !974)
!1087 = !DILocation(line: 971, column: 18, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 970, column: 15)
!1089 = !DILocation(line: 971, column: 11, scope: !1088)
!1090 = !DILocation(line: 972, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 972, column: 7)
!1092 = !DILocation(line: 972, column: 7, scope: !1088)
!1093 = !DILocalVariable(name: "i", scope: !1094, file: !2, line: 973, type: !22)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !2, line: 973, column: 4)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 972, column: 15)
!1096 = !DILocation(line: 973, column: 22, scope: !1094)
!1097 = !DILocation(line: 973, column: 9, scope: !1094)
!1098 = !DILocation(line: 973, column: 29, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 973, column: 4)
!1100 = !DILocation(line: 973, column: 33, scope: !1099)
!1101 = !DILocation(line: 973, column: 31, scope: !1099)
!1102 = !DILocation(line: 973, column: 4, scope: !1094)
!1103 = !DILocalVariable(name: "str", scope: !1104, file: !2, line: 974, type: !30)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 973, column: 47)
!1105 = !DILocation(line: 974, column: 17, scope: !1104)
!1106 = !DILocation(line: 974, column: 40, scope: !1104)
!1107 = !DILocation(line: 974, column: 47, scope: !1104)
!1108 = !DILocation(line: 974, column: 46, scope: !1104)
!1109 = !DILocation(line: 974, column: 23, scope: !1104)
!1110 = !DILocalVariable(name: "len", scope: !1104, file: !2, line: 975, type: !34)
!1111 = !DILocation(line: 975, column: 9, scope: !1104)
!1112 = !DILocation(line: 975, column: 29, scope: !1104)
!1113 = !DILocation(line: 975, column: 36, scope: !1104)
!1114 = !DILocation(line: 975, column: 15, scope: !1104)
!1115 = !DILocation(line: 978, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 978, column: 9)
!1117 = !DILocation(line: 978, column: 14, scope: !1116)
!1118 = !DILocation(line: 978, column: 17, scope: !1116)
!1119 = !DILocation(line: 978, column: 28, scope: !1116)
!1120 = !DILocation(line: 978, column: 26, scope: !1116)
!1121 = !DILocation(line: 978, column: 9, scope: !1104)
!1122 = !DILocation(line: 979, column: 35, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1116, file: !2, line: 978, column: 38)
!1124 = !DILocation(line: 979, column: 25, scope: !1123)
!1125 = !DILocation(line: 979, column: 6, scope: !1123)
!1126 = !DILocation(line: 979, column: 19, scope: !1123)
!1127 = !DILocation(line: 979, column: 23, scope: !1123)
!1128 = !DILocation(line: 980, column: 5, scope: !1123)
!1129 = !DILocation(line: 981, column: 16, scope: !1104)
!1130 = !DILocation(line: 981, column: 13, scope: !1104)
!1131 = !DILocation(line: 982, column: 12, scope: !1104)
!1132 = !DILocation(line: 983, column: 4, scope: !1104)
!1133 = !DILocation(line: 973, column: 43, scope: !1099)
!1134 = !DILocation(line: 973, column: 4, scope: !1099)
!1135 = distinct !{!1135, !1102, !1136}
!1136 = !DILocation(line: 983, column: 4, scope: !1094)
!1137 = !DILocation(line: 984, column: 3, scope: !1095)
!1138 = !DILocation(line: 985, column: 8, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 985, column: 8)
!1140 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 984, column: 10)
!1141 = !DILocation(line: 985, column: 16, scope: !1139)
!1142 = !DILocation(line: 985, column: 19, scope: !1139)
!1143 = !DILocation(line: 985, column: 25, scope: !1139)
!1144 = !DILocation(line: 985, column: 8, scope: !1140)
!1145 = !DILocation(line: 986, column: 16, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 985, column: 41)
!1147 = !DILocation(line: 986, column: 13, scope: !1146)
!1148 = !DILocation(line: 987, column: 4, scope: !1146)
!1149 = !DILocalVariable(name: "drop_ro_str_pos", scope: !1088, file: !2, line: 990, type: !121)
!1150 = !DILocation(line: 990, column: 9, scope: !1088)
!1151 = !DILocation(line: 990, column: 29, scope: !1088)
!1152 = !DILocation(line: 990, column: 35, scope: !1088)
!1153 = !DILocation(line: 990, column: 27, scope: !1088)
!1154 = !DILocalVariable(name: "i", scope: !1155, file: !2, line: 995, type: !22)
!1155 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 995, column: 3)
!1156 = !DILocation(line: 995, column: 21, scope: !1155)
!1157 = !DILocation(line: 995, column: 8, scope: !1155)
!1158 = !DILocation(line: 995, column: 28, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1155, file: !2, line: 995, column: 3)
!1160 = !DILocation(line: 995, column: 32, scope: !1159)
!1161 = !DILocation(line: 995, column: 30, scope: !1159)
!1162 = !DILocation(line: 995, column: 3, scope: !1155)
!1163 = !DILocalVariable(name: "arg_idx", scope: !1164, file: !2, line: 996, type: !43)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 995, column: 46)
!1165 = !DILocation(line: 996, column: 12, scope: !1164)
!1166 = !DILocation(line: 996, column: 30, scope: !1164)
!1167 = !DILocation(line: 996, column: 22, scope: !1164)
!1168 = !DILocalVariable(name: "arg_pos", scope: !1164, file: !2, line: 997, type: !43)
!1169 = !DILocation(line: 997, column: 12, scope: !1164)
!1170 = !DILocation(line: 997, column: 30, scope: !1164)
!1171 = !DILocation(line: 997, column: 22, scope: !1164)
!1172 = !DILocalVariable(name: "str", scope: !1164, file: !2, line: 998, type: !30)
!1173 = !DILocation(line: 998, column: 16, scope: !1164)
!1174 = !DILocation(line: 998, column: 39, scope: !1164)
!1175 = !DILocation(line: 998, column: 45, scope: !1164)
!1176 = !DILocation(line: 998, column: 22, scope: !1164)
!1177 = !DILocalVariable(name: "is_ro", scope: !1164, file: !2, line: 999, type: !121)
!1178 = !DILocation(line: 999, column: 10, scope: !1164)
!1179 = !DILocation(line: 999, column: 32, scope: !1164)
!1180 = !DILocation(line: 999, column: 18, scope: !1164)
!1181 = !DILocalVariable(name: "len", scope: !1164, file: !2, line: 1000, type: !34)
!1182 = !DILocation(line: 1000, column: 8, scope: !1164)
!1183 = !DILocation(line: 1002, column: 8, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 1002, column: 8)
!1185 = !DILocation(line: 1002, column: 20, scope: !1184)
!1186 = !DILocation(line: 1002, column: 30, scope: !1184)
!1187 = !DILocation(line: 1002, column: 35, scope: !1184)
!1188 = !DILocation(line: 1002, column: 23, scope: !1184)
!1189 = !DILocation(line: 1002, column: 8, scope: !1164)
!1190 = !DILocation(line: 1003, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !2, line: 1002, column: 45)
!1192 = !DILocalVariable(name: "is_user_context", scope: !1193, file: !2, line: 1003, type: !121)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1003, column: 8)
!1194 = !DILocation(line: 1003, column: 507, scope: !1193)
!1195 = !DILocation(line: 1003, column: 525, scope: !1193)
!1196 = !DILocalVariable(name: "_mode", scope: !1193, file: !2, line: 1003, type: !34)
!1197 = !DILocation(line: 1003, column: 685, scope: !1193)
!1198 = !DILocalVariable(name: "_src", scope: !1193, file: !2, line: 1003, type: !23)
!1199 = !DILocation(line: 1003, column: 698, scope: !1193)
!1200 = !DILocation(line: 1003, column: 754, scope: !1193)
!1201 = !DILocation(line: 1003, column: 780, scope: !1193)
!1202 = !DILocation(line: 1003, column: 821, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 1003, column: 783)
!1204 = !DILocation(line: 1003, column: 1104, scope: !1203)
!1205 = !DILocation(line: 1003, column: 1109, scope: !1203)
!1206 = !DILocation(line: 1003, column: 785, scope: !1203)
!1207 = !DILocation(line: 1003, column: 1125, scope: !1203)
!1208 = !DILocation(line: 1003, column: 1151, scope: !1203)
!1209 = !DILocation(line: 1003, column: 1170, scope: !1193)
!1210 = !DILocation(line: 1003, column: 1405, scope: !1193)
!1211 = !DILocation(line: 1010, column: 13, scope: !1191)
!1212 = !DILocation(line: 1011, column: 5, scope: !1191)
!1213 = !DILocation(line: 1014, column: 8, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 1014, column: 8)
!1215 = !DILocation(line: 1014, column: 8, scope: !1164)
!1216 = !DILocation(line: 1015, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 1015, column: 9)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1014, column: 15)
!1219 = !DILocation(line: 1015, column: 15, scope: !1217)
!1220 = !DILocation(line: 1015, column: 9, scope: !1218)
!1221 = !DILocation(line: 1016, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1015, column: 31)
!1223 = !DILocation(line: 1018, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1017, column: 12)
!1225 = !DILocation(line: 1018, column: 14, scope: !1224)
!1226 = !DILocation(line: 1020, column: 4, scope: !1218)
!1227 = !DILocation(line: 1020, column: 15, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1020, column: 15)
!1229 = !DILocation(line: 1020, column: 21, scope: !1228)
!1230 = !DILocation(line: 1020, column: 15, scope: !1214)
!1231 = !DILocation(line: 1020, column: 37, scope: !1228)
!1232 = !DILabel(scope: !1233, name: "calculate_string_length", file: !2, line: 1021)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 1020, column: 37)
!1234 = !DILocation(line: 1021, column: 1, scope: !1233)
!1235 = !DILocation(line: 1022, column: 25, scope: !1233)
!1236 = !DILocation(line: 1022, column: 32, scope: !1233)
!1237 = !DILocation(line: 1022, column: 11, scope: !1233)
!1238 = !DILocation(line: 1022, column: 9, scope: !1233)
!1239 = !DILocation(line: 1025, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1233, file: !2, line: 1025, column: 9)
!1241 = !DILocation(line: 1025, column: 14, scope: !1240)
!1242 = !DILocation(line: 1025, column: 17, scope: !1240)
!1243 = !DILocation(line: 1025, column: 28, scope: !1240)
!1244 = !DILocation(line: 1025, column: 26, scope: !1240)
!1245 = !DILocation(line: 1025, column: 9, scope: !1233)
!1246 = !DILocation(line: 1026, column: 35, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 1025, column: 38)
!1248 = !DILocation(line: 1026, column: 25, scope: !1247)
!1249 = !DILocation(line: 1026, column: 6, scope: !1247)
!1250 = !DILocation(line: 1026, column: 19, scope: !1247)
!1251 = !DILocation(line: 1026, column: 23, scope: !1247)
!1252 = !DILocation(line: 1027, column: 5, scope: !1247)
!1253 = !DILocation(line: 1031, column: 17, scope: !1233)
!1254 = !DILocation(line: 1031, column: 21, scope: !1233)
!1255 = !DILocation(line: 1031, column: 13, scope: !1233)
!1256 = !DILocation(line: 1032, column: 4, scope: !1233)
!1257 = !DILocation(line: 1033, column: 3, scope: !1164)
!1258 = !DILocation(line: 995, column: 42, scope: !1159)
!1259 = !DILocation(line: 995, column: 3, scope: !1159)
!1260 = distinct !{!1260, !1162, !1261}
!1261 = !DILocation(line: 1033, column: 3, scope: !1155)
!1262 = !DILocation(line: 1035, column: 10, scope: !1088)
!1263 = !DILocation(line: 1035, column: 3, scope: !1088)
!1264 = !DILocalVariable(name: "out_desc", scope: !974, file: !2, line: 1038, type: !143)
!1265 = !DILocation(line: 1038, column: 31, scope: !974)
!1266 = !DILocalVariable(name: "cpy_str_pos", scope: !974, file: !2, line: 1040, type: !102)
!1267 = !DILocation(line: 1040, column: 10, scope: !974)
!1268 = !DILocalVariable(name: "keep_str_pos", scope: !974, file: !2, line: 1042, type: !102)
!1269 = !DILocation(line: 1042, column: 10, scope: !974)
!1270 = !DILocalVariable(name: "scpy_cnt", scope: !974, file: !2, line: 1043, type: !43)
!1271 = !DILocation(line: 1043, column: 10, scope: !974)
!1272 = !DILocalVariable(name: "keep_cnt", scope: !974, file: !2, line: 1044, type: !43)
!1273 = !DILocation(line: 1044, column: 10, scope: !974)
!1274 = !DILocalVariable(name: "dst", scope: !974, file: !2, line: 1045, type: !42)
!1275 = !DILocation(line: 1045, column: 11, scope: !974)
!1276 = !DILocalVariable(name: "rv", scope: !974, file: !2, line: 1046, type: !34)
!1277 = !DILocation(line: 1046, column: 6, scope: !974)
!1278 = !DILocation(line: 1052, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1052, column: 6)
!1280 = !DILocation(line: 1052, column: 6, scope: !974)
!1281 = !DILocation(line: 1053, column: 14, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 1052, column: 14)
!1283 = !DILocation(line: 1053, column: 12, scope: !1282)
!1284 = !DILocation(line: 1054, column: 12, scope: !1282)
!1285 = !DILocation(line: 1055, column: 9, scope: !1282)
!1286 = !DILocation(line: 1055, column: 7, scope: !1282)
!1287 = !DILocation(line: 1056, column: 2, scope: !1282)
!1288 = !DILocation(line: 1056, column: 13, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 1056, column: 13)
!1290 = !DILocation(line: 1056, column: 21, scope: !1289)
!1291 = !DILocation(line: 1056, column: 24, scope: !1289)
!1292 = !DILocation(line: 1056, column: 30, scope: !1289)
!1293 = !DILocation(line: 1056, column: 13, scope: !1279)
!1294 = !DILocation(line: 1057, column: 12, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 1056, column: 46)
!1296 = !DILocation(line: 1058, column: 14, scope: !1295)
!1297 = !DILocation(line: 1058, column: 12, scope: !1295)
!1298 = !DILocation(line: 1059, column: 9, scope: !1295)
!1299 = !DILocation(line: 1059, column: 7, scope: !1295)
!1300 = !DILocation(line: 1060, column: 2, scope: !1295)
!1301 = !DILocation(line: 1061, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 1060, column: 9)
!1303 = !DILocation(line: 1062, column: 12, scope: !1302)
!1304 = !DILocation(line: 1063, column: 7, scope: !1302)
!1305 = !DILocation(line: 1065, column: 6, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1065, column: 6)
!1307 = !DILocation(line: 1065, column: 6, scope: !974)
!1308 = !DILocation(line: 1066, column: 10, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !2, line: 1065, column: 11)
!1310 = !DILocation(line: 1066, column: 15, scope: !1309)
!1311 = !DILocation(line: 1066, column: 24, scope: !1309)
!1312 = !DILocation(line: 1066, column: 3, scope: !1309)
!1313 = !DILocation(line: 1067, column: 2, scope: !1309)
!1314 = !DILocation(line: 1068, column: 13, scope: !974)
!1315 = !DILocation(line: 1068, column: 10, scope: !974)
!1316 = !DILocalVariable(name: "i", scope: !1317, file: !2, line: 1074, type: !22)
!1317 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1074, column: 2)
!1318 = !DILocation(line: 1074, column: 20, scope: !1317)
!1319 = !DILocation(line: 1074, column: 7, scope: !1317)
!1320 = !DILocation(line: 1074, column: 27, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 1074, column: 2)
!1322 = !DILocation(line: 1074, column: 31, scope: !1321)
!1323 = !DILocation(line: 1074, column: 29, scope: !1321)
!1324 = !DILocation(line: 1074, column: 2, scope: !1317)
!1325 = !DILocalVariable(name: "arg_idx", scope: !1326, file: !2, line: 1075, type: !43)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !2, line: 1074, column: 45)
!1327 = !DILocation(line: 1075, column: 11, scope: !1326)
!1328 = !DILocation(line: 1075, column: 29, scope: !1326)
!1329 = !DILocation(line: 1075, column: 21, scope: !1326)
!1330 = !DILocalVariable(name: "arg_pos", scope: !1326, file: !2, line: 1076, type: !43)
!1331 = !DILocation(line: 1076, column: 11, scope: !1326)
!1332 = !DILocation(line: 1076, column: 29, scope: !1326)
!1333 = !DILocation(line: 1076, column: 21, scope: !1326)
!1334 = !DILocalVariable(name: "str", scope: !1326, file: !2, line: 1077, type: !30)
!1335 = !DILocation(line: 1077, column: 15, scope: !1326)
!1336 = !DILocation(line: 1077, column: 38, scope: !1326)
!1337 = !DILocation(line: 1077, column: 44, scope: !1326)
!1338 = !DILocation(line: 1077, column: 21, scope: !1326)
!1339 = !DILocalVariable(name: "is_ro", scope: !1326, file: !2, line: 1078, type: !121)
!1340 = !DILocation(line: 1078, column: 9, scope: !1326)
!1341 = !DILocation(line: 1078, column: 31, scope: !1326)
!1342 = !DILocation(line: 1078, column: 17, scope: !1326)
!1343 = !DILocation(line: 1080, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1080, column: 7)
!1345 = !DILocation(line: 1080, column: 19, scope: !1344)
!1346 = !DILocation(line: 1080, column: 29, scope: !1344)
!1347 = !DILocation(line: 1080, column: 34, scope: !1344)
!1348 = !DILocation(line: 1080, column: 22, scope: !1344)
!1349 = !DILocation(line: 1080, column: 7, scope: !1326)
!1350 = !DILocation(line: 1081, column: 4, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !2, line: 1080, column: 44)
!1352 = !DILocation(line: 1084, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1326, file: !2, line: 1084, column: 7)
!1354 = !DILocation(line: 1084, column: 7, scope: !1326)
!1355 = !DILocation(line: 1085, column: 8, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 1085, column: 8)
!1357 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 1084, column: 14)
!1358 = !DILocation(line: 1085, column: 14, scope: !1356)
!1359 = !DILocation(line: 1085, column: 8, scope: !1357)
!1360 = !DILocation(line: 1087, column: 31, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 1085, column: 30)
!1362 = !DILocation(line: 1087, column: 25, scope: !1361)
!1363 = !DILocation(line: 1087, column: 5, scope: !1361)
!1364 = !DILocation(line: 1087, column: 29, scope: !1361)
!1365 = !DILocation(line: 1088, column: 4, scope: !1361)
!1366 = !DILocation(line: 1088, column: 15, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 1088, column: 15)
!1368 = !DILocation(line: 1088, column: 21, scope: !1367)
!1369 = !DILocation(line: 1088, column: 15, scope: !1356)
!1370 = !DILocation(line: 1090, column: 32, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 1088, column: 37)
!1372 = !DILocation(line: 1090, column: 26, scope: !1371)
!1373 = !DILocation(line: 1090, column: 5, scope: !1371)
!1374 = !DILocation(line: 1090, column: 30, scope: !1371)
!1375 = !DILocation(line: 1091, column: 4, scope: !1371)
!1376 = !DILocation(line: 1094, column: 3, scope: !1357)
!1377 = !DILocation(line: 1095, column: 8, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 1095, column: 8)
!1379 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 1094, column: 10)
!1380 = !DILocation(line: 1095, column: 14, scope: !1378)
!1381 = !DILocation(line: 1095, column: 8, scope: !1379)
!1382 = !DILocation(line: 1097, column: 31, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 1095, column: 30)
!1384 = !DILocation(line: 1097, column: 25, scope: !1383)
!1385 = !DILocation(line: 1097, column: 5, scope: !1383)
!1386 = !DILocation(line: 1097, column: 29, scope: !1383)
!1387 = !DILocation(line: 1098, column: 4, scope: !1383)
!1388 = !DILocation(line: 1100, column: 32, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 1098, column: 11)
!1390 = !DILocation(line: 1100, column: 26, scope: !1389)
!1391 = !DILocation(line: 1100, column: 5, scope: !1389)
!1392 = !DILocation(line: 1100, column: 30, scope: !1389)
!1393 = !DILocation(line: 1101, column: 32, scope: !1389)
!1394 = !DILocation(line: 1101, column: 26, scope: !1389)
!1395 = !DILocation(line: 1101, column: 5, scope: !1389)
!1396 = !DILocation(line: 1101, column: 30, scope: !1389)
!1397 = !DILocation(line: 1104, column: 2, scope: !1326)
!1398 = !DILocation(line: 1074, column: 41, scope: !1321)
!1399 = !DILocation(line: 1074, column: 2, scope: !1321)
!1400 = distinct !{!1400, !1324, !1401}
!1401 = !DILocation(line: 1104, column: 2, scope: !1317)
!1402 = !DILocation(line: 1107, column: 17, scope: !974)
!1403 = !DILocation(line: 1107, column: 26, scope: !974)
!1404 = !DILocation(line: 1107, column: 11, scope: !974)
!1405 = !DILocation(line: 1107, column: 15, scope: !974)
!1406 = !DILocation(line: 1108, column: 21, scope: !974)
!1407 = !DILocation(line: 1108, column: 30, scope: !974)
!1408 = !DILocation(line: 1108, column: 40, scope: !974)
!1409 = !DILocation(line: 1108, column: 38, scope: !974)
!1410 = !DILocation(line: 1108, column: 11, scope: !974)
!1411 = !DILocation(line: 1108, column: 19, scope: !974)
!1412 = !DILocation(line: 1109, column: 25, scope: !974)
!1413 = !DILocation(line: 1109, column: 31, scope: !974)
!1414 = !DILocation(line: 1109, column: 24, scope: !974)
!1415 = !DILocation(line: 1109, column: 54, scope: !974)
!1416 = !DILocation(line: 1109, column: 63, scope: !974)
!1417 = !DILocation(line: 1109, column: 11, scope: !974)
!1418 = !DILocation(line: 1109, column: 22, scope: !974)
!1419 = !DILocation(line: 1110, column: 25, scope: !974)
!1420 = !DILocation(line: 1110, column: 31, scope: !974)
!1421 = !DILocation(line: 1110, column: 24, scope: !974)
!1422 = !DILocation(line: 1111, column: 6, scope: !974)
!1423 = !DILocation(line: 1111, column: 12, scope: !974)
!1424 = !DILocation(line: 1111, column: 5, scope: !974)
!1425 = !DILocation(line: 1111, column: 30, scope: !974)
!1426 = !DILocation(line: 1110, column: 11, scope: !974)
!1427 = !DILocation(line: 1110, column: 22, scope: !974)
!1428 = !DILocalVariable(name: "in_desc_backup", scope: !974, file: !2, line: 1114, type: !143)
!1429 = !DILocation(line: 1114, column: 31, scope: !974)
!1430 = !DILocation(line: 1114, column: 49, scope: !974)
!1431 = !DILocation(line: 1114, column: 48, scope: !974)
!1432 = !DILocation(line: 1115, column: 3, scope: !974)
!1433 = !DILocation(line: 1115, column: 13, scope: !974)
!1434 = !DILocation(line: 1118, column: 7, scope: !974)
!1435 = !DILocation(line: 1118, column: 10, scope: !974)
!1436 = !DILocation(line: 1118, column: 23, scope: !974)
!1437 = !DILocation(line: 1118, column: 34, scope: !974)
!1438 = !DILocation(line: 1118, column: 5, scope: !974)
!1439 = !DILocation(line: 1119, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1119, column: 6)
!1441 = !DILocation(line: 1119, column: 9, scope: !1440)
!1442 = !DILocation(line: 1119, column: 6, scope: !974)
!1443 = !DILocation(line: 1120, column: 10, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !2, line: 1119, column: 14)
!1445 = !DILocation(line: 1120, column: 3, scope: !1444)
!1446 = !DILocation(line: 1122, column: 12, scope: !974)
!1447 = !DILocation(line: 1122, column: 10, scope: !974)
!1448 = !DILocation(line: 1124, column: 3, scope: !974)
!1449 = !DILocation(line: 1124, column: 13, scope: !974)
!1450 = !DILocation(line: 1127, column: 7, scope: !974)
!1451 = !DILocation(line: 1127, column: 10, scope: !974)
!1452 = !DILocation(line: 1127, column: 24, scope: !974)
!1453 = !DILocation(line: 1127, column: 34, scope: !974)
!1454 = !DILocation(line: 1127, column: 5, scope: !974)
!1455 = !DILocation(line: 1128, column: 6, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1128, column: 6)
!1457 = !DILocation(line: 1128, column: 9, scope: !1456)
!1458 = !DILocation(line: 1128, column: 6, scope: !974)
!1459 = !DILocation(line: 1129, column: 10, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 1128, column: 14)
!1461 = !DILocation(line: 1129, column: 3, scope: !1460)
!1462 = !DILocation(line: 1131, column: 13, scope: !974)
!1463 = !DILocation(line: 1131, column: 10, scope: !974)
!1464 = !DILocalVariable(name: "strs_len", scope: !974, file: !2, line: 1134, type: !32)
!1465 = !DILocation(line: 1134, column: 9, scope: !974)
!1466 = !DILocation(line: 1134, column: 20, scope: !974)
!1467 = !DILocation(line: 1134, column: 30, scope: !974)
!1468 = !DILocation(line: 1134, column: 42, scope: !974)
!1469 = !DILocation(line: 1134, column: 40, scope: !974)
!1470 = !DILocation(line: 1134, column: 56, scope: !974)
!1471 = !DILocation(line: 1134, column: 54, scope: !974)
!1472 = !DILocation(line: 1134, column: 50, scope: !974)
!1473 = !DILocation(line: 1134, column: 27, scope: !974)
!1474 = !DILocation(line: 1136, column: 7, scope: !974)
!1475 = !DILocation(line: 1136, column: 10, scope: !974)
!1476 = !DILocation(line: 1136, column: 19, scope: !974)
!1477 = !DILocation(line: 1136, column: 29, scope: !974)
!1478 = !DILocation(line: 1136, column: 5, scope: !974)
!1479 = !DILocation(line: 1137, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1137, column: 6)
!1481 = !DILocation(line: 1137, column: 9, scope: !1480)
!1482 = !DILocation(line: 1137, column: 6, scope: !974)
!1483 = !DILocation(line: 1138, column: 10, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 1137, column: 14)
!1485 = !DILocation(line: 1138, column: 3, scope: !1484)
!1486 = !DILocation(line: 1140, column: 13, scope: !974)
!1487 = !DILocation(line: 1140, column: 10, scope: !974)
!1488 = !DILocalVariable(name: "i", scope: !1489, file: !2, line: 1143, type: !22)
!1489 = distinct !DILexicalBlock(scope: !974, file: !2, line: 1143, column: 2)
!1490 = !DILocation(line: 1143, column: 20, scope: !1489)
!1491 = !DILocation(line: 1143, column: 7, scope: !1489)
!1492 = !DILocation(line: 1143, column: 27, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1143, column: 2)
!1494 = !DILocation(line: 1143, column: 31, scope: !1493)
!1495 = !DILocation(line: 1143, column: 29, scope: !1493)
!1496 = !DILocation(line: 1143, column: 2, scope: !1489)
!1497 = !DILocalVariable(name: "loc", scope: !1498, file: !2, line: 1144, type: !43)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !2, line: 1143, column: 46)
!1499 = !DILocation(line: 1144, column: 11, scope: !1498)
!1500 = !DILocation(line: 1144, column: 29, scope: !1498)
!1501 = !DILocation(line: 1144, column: 17, scope: !1498)
!1502 = !DILocalVariable(name: "str", scope: !1498, file: !2, line: 1145, type: !30)
!1503 = !DILocation(line: 1145, column: 15, scope: !1498)
!1504 = !DILocation(line: 1145, column: 38, scope: !1498)
!1505 = !DILocation(line: 1145, column: 44, scope: !1498)
!1506 = !DILocation(line: 1145, column: 21, scope: !1498)
!1507 = !DILocalVariable(name: "str_len", scope: !1498, file: !2, line: 1146, type: !44)
!1508 = !DILocation(line: 1146, column: 12, scope: !1498)
!1509 = !DILocation(line: 1146, column: 22, scope: !1498)
!1510 = !DILocation(line: 1146, column: 29, scope: !1498)
!1511 = !DILocation(line: 1146, column: 34, scope: !1498)
!1512 = !DILocation(line: 1148, column: 8, scope: !1498)
!1513 = !DILocation(line: 1148, column: 20, scope: !1498)
!1514 = !DILocation(line: 1148, column: 6, scope: !1498)
!1515 = !DILocation(line: 1149, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 1149, column: 7)
!1517 = !DILocation(line: 1149, column: 10, scope: !1516)
!1518 = !DILocation(line: 1149, column: 7, scope: !1498)
!1519 = !DILocation(line: 1150, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 1149, column: 15)
!1521 = !DILocation(line: 1150, column: 4, scope: !1520)
!1522 = !DILocation(line: 1152, column: 14, scope: !1498)
!1523 = !DILocation(line: 1152, column: 11, scope: !1498)
!1524 = !DILocation(line: 1154, column: 22, scope: !1498)
!1525 = !DILocation(line: 1154, column: 26, scope: !1498)
!1526 = !DILocation(line: 1154, column: 31, scope: !1498)
!1527 = !DILocation(line: 1154, column: 36, scope: !1498)
!1528 = !DILocation(line: 1154, column: 8, scope: !1498)
!1529 = !DILocation(line: 1154, column: 6, scope: !1498)
!1530 = !DILocation(line: 1155, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1498, file: !2, line: 1155, column: 7)
!1532 = !DILocation(line: 1155, column: 10, scope: !1531)
!1533 = !DILocation(line: 1155, column: 7, scope: !1498)
!1534 = !DILocation(line: 1156, column: 11, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 1155, column: 15)
!1536 = !DILocation(line: 1156, column: 4, scope: !1535)
!1537 = !DILocation(line: 1158, column: 14, scope: !1498)
!1538 = !DILocation(line: 1158, column: 11, scope: !1498)
!1539 = !DILocation(line: 1159, column: 2, scope: !1498)
!1540 = !DILocation(line: 1143, column: 42, scope: !1493)
!1541 = !DILocation(line: 1143, column: 2, scope: !1493)
!1542 = distinct !{!1542, !1496, !1543}
!1543 = !DILocation(line: 1159, column: 2, scope: !1489)
!1544 = !DILocation(line: 1162, column: 8, scope: !974)
!1545 = !DILocation(line: 1162, column: 17, scope: !974)
!1546 = !DILocation(line: 1164, column: 9, scope: !974)
!1547 = !DILocation(line: 1164, column: 2, scope: !974)
!1548 = !DILocation(line: 1165, column: 1, scope: !974)
!1549 = distinct !DISubprogram(name: "get_package_len", scope: !2, file: !2, line: 196, type: !1550, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!32, !23}
!1552 = !DILocalVariable(name: "packaged", arg: 1, scope: !1549, file: !2, line: 196, type: !23)
!1553 = !DILocation(line: 196, column: 37, scope: !1549)
!1554 = !DILocalVariable(name: "buf", scope: !1549, file: !2, line: 200, type: !42)
!1555 = !DILocation(line: 200, column: 11, scope: !1549)
!1556 = !DILocation(line: 200, column: 17, scope: !1549)
!1557 = !DILocalVariable(name: "start", scope: !1549, file: !2, line: 201, type: !42)
!1558 = !DILocation(line: 201, column: 11, scope: !1549)
!1559 = !DILocation(line: 201, column: 19, scope: !1549)
!1560 = !DILocalVariable(name: "args_size", scope: !1549, file: !2, line: 202, type: !22)
!1561 = !DILocation(line: 202, column: 15, scope: !1549)
!1562 = !DILocalVariable(name: "s_nbr", scope: !1549, file: !2, line: 202, type: !22)
!1563 = !DILocation(line: 202, column: 26, scope: !1549)
!1564 = !DILocalVariable(name: "ros_nbr", scope: !1549, file: !2, line: 202, type: !22)
!1565 = !DILocation(line: 202, column: 33, scope: !1549)
!1566 = !DILocation(line: 204, column: 14, scope: !1549)
!1567 = !DILocation(line: 204, column: 21, scope: !1549)
!1568 = !DILocation(line: 204, column: 12, scope: !1549)
!1569 = !DILocation(line: 205, column: 10, scope: !1549)
!1570 = !DILocation(line: 205, column: 8, scope: !1549)
!1571 = !DILocation(line: 206, column: 12, scope: !1549)
!1572 = !DILocation(line: 206, column: 10, scope: !1549)
!1573 = !DILocation(line: 209, column: 9, scope: !1549)
!1574 = !DILocation(line: 209, column: 6, scope: !1549)
!1575 = !DILocation(line: 212, column: 9, scope: !1549)
!1576 = !DILocation(line: 212, column: 6, scope: !1549)
!1577 = !DILocalVariable(name: "i", scope: !1578, file: !2, line: 215, type: !22)
!1578 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 215, column: 2)
!1579 = !DILocation(line: 215, column: 20, scope: !1578)
!1580 = !DILocation(line: 215, column: 7, scope: !1578)
!1581 = !DILocation(line: 215, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 215, column: 2)
!1583 = !DILocation(line: 215, column: 31, scope: !1582)
!1584 = !DILocation(line: 215, column: 29, scope: !1582)
!1585 = !DILocation(line: 215, column: 2, scope: !1578)
!1586 = !DILocation(line: 216, column: 6, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 215, column: 43)
!1588 = !DILocation(line: 217, column: 31, scope: !1587)
!1589 = !DILocation(line: 217, column: 10, scope: !1587)
!1590 = !DILocation(line: 217, column: 36, scope: !1587)
!1591 = !DILocation(line: 217, column: 7, scope: !1587)
!1592 = !DILocation(line: 218, column: 2, scope: !1587)
!1593 = !DILocation(line: 215, column: 39, scope: !1582)
!1594 = !DILocation(line: 215, column: 2, scope: !1582)
!1595 = distinct !{!1595, !1585, !1596}
!1596 = !DILocation(line: 218, column: 2, scope: !1578)
!1597 = !DILocation(line: 220, column: 29, scope: !1549)
!1598 = !DILocation(line: 220, column: 35, scope: !1549)
!1599 = !DILocation(line: 220, column: 33, scope: !1549)
!1600 = !DILocation(line: 220, column: 2, scope: !1549)
!1601 = distinct !DISubprogram(name: "append_string", scope: !2, file: !2, line: 223, type: !1602, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!34, !977, !23, !30, !44}
!1604 = !DILocalVariable(name: "cb", arg: 1, scope: !1601, file: !2, line: 223, type: !977)
!1605 = !DILocation(line: 223, column: 46, scope: !1601)
!1606 = !DILocalVariable(name: "ctx", arg: 2, scope: !1601, file: !2, line: 223, type: !23)
!1607 = !DILocation(line: 223, column: 56, scope: !1601)
!1608 = !DILocalVariable(name: "str", arg: 3, scope: !1601, file: !2, line: 223, type: !30)
!1609 = !DILocation(line: 223, column: 73, scope: !1601)
!1610 = !DILocalVariable(name: "strl", arg: 4, scope: !1601, file: !2, line: 223, type: !44)
!1611 = !DILocation(line: 223, column: 87, scope: !1601)
!1612 = !DILocation(line: 225, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 225, column: 6)
!1614 = !DILocation(line: 225, column: 9, scope: !1613)
!1615 = !DILocation(line: 225, column: 6, scope: !1601)
!1616 = !DILocation(line: 226, column: 21, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !2, line: 225, column: 15)
!1618 = !DILocation(line: 226, column: 14, scope: !1617)
!1619 = !DILocation(line: 226, column: 12, scope: !1617)
!1620 = !DILocation(line: 226, column: 3, scope: !1617)
!1621 = !DILocation(line: 229, column: 9, scope: !1601)
!1622 = !DILocation(line: 229, column: 14, scope: !1601)
!1623 = !DILocation(line: 229, column: 20, scope: !1601)
!1624 = !DILocation(line: 229, column: 34, scope: !1601)
!1625 = !DILocation(line: 229, column: 27, scope: !1601)
!1626 = !DILocation(line: 229, column: 39, scope: !1601)
!1627 = !DILocation(line: 229, column: 7, scope: !1601)
!1628 = !DILocation(line: 230, column: 9, scope: !1601)
!1629 = !DILocation(line: 230, column: 12, scope: !1601)
!1630 = !DILocation(line: 230, column: 17, scope: !1601)
!1631 = !DILocation(line: 230, column: 23, scope: !1601)
!1632 = !DILocation(line: 230, column: 2, scope: !1601)
!1633 = !DILocation(line: 231, column: 1, scope: !1601)
!1634 = distinct !DISubprogram(name: "k_is_user_context", scope: !1635, file: !1635, line: 115, type: !1636, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1635 = !DIFile(filename: "include/zephyr/syscall.h", directory: "/home/sri/zephyrproject/zephyr")
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!121}
!1638 = !DILocation(line: 120, column: 2, scope: !1634)
!1639 = distinct !DISubprogram(name: "z_log_msg_runtime_create", scope: !13, file: !13, line: 568, type: !1640, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !43, !981, !43, !981, !32, !73, !30, null}
!1642 = !DILocalVariable(name: "domain_id", arg: 1, scope: !1639, file: !13, line: 568, type: !43)
!1643 = !DILocation(line: 568, column: 53, scope: !1639)
!1644 = !DILocalVariable(name: "source", arg: 2, scope: !1639, file: !13, line: 569, type: !981)
!1645 = !DILocation(line: 569, column: 23, scope: !1639)
!1646 = !DILocalVariable(name: "level", arg: 3, scope: !1639, file: !13, line: 570, type: !43)
!1647 = !DILocation(line: 570, column: 19, scope: !1639)
!1648 = !DILocalVariable(name: "data", arg: 4, scope: !1639, file: !13, line: 570, type: !981)
!1649 = !DILocation(line: 570, column: 38, scope: !1639)
!1650 = !DILocalVariable(name: "dlen", arg: 5, scope: !1639, file: !13, line: 571, type: !32)
!1651 = !DILocation(line: 571, column: 18, scope: !1639)
!1652 = !DILocalVariable(name: "package_flags", arg: 6, scope: !1639, file: !13, line: 571, type: !73)
!1653 = !DILocation(line: 571, column: 33, scope: !1639)
!1654 = !DILocalVariable(name: "fmt", arg: 7, scope: !1639, file: !13, line: 572, type: !30)
!1655 = !DILocation(line: 572, column: 23, scope: !1639)
!1656 = !DILocalVariable(name: "ap", scope: !1639, file: !13, line: 574, type: !74)
!1657 = !DILocation(line: 574, column: 10, scope: !1639)
!1658 = !DILocation(line: 576, column: 2, scope: !1639)
!1659 = !DILocation(line: 577, column: 28, scope: !1639)
!1660 = !DILocation(line: 577, column: 39, scope: !1639)
!1661 = !DILocation(line: 577, column: 47, scope: !1639)
!1662 = !DILocation(line: 578, column: 8, scope: !1639)
!1663 = !DILocation(line: 578, column: 14, scope: !1639)
!1664 = !DILocation(line: 578, column: 20, scope: !1639)
!1665 = !DILocation(line: 578, column: 35, scope: !1639)
!1666 = !DILocation(line: 577, column: 2, scope: !1639)
!1667 = !DILocation(line: 579, column: 2, scope: !1639)
!1668 = !DILocation(line: 580, column: 1, scope: !1639)
!1669 = distinct !DISubprogram(name: "linker_is_in_rodata", scope: !1670, file: !1670, line: 24, type: !1671, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1670 = !DIFile(filename: "include/zephyr/linker/utils.h", directory: "/home/sri/zephyrproject/zephyr")
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!121, !981}
!1673 = !DILocalVariable(name: "addr", arg: 1, scope: !1669, file: !1670, line: 24, type: !981)
!1674 = !DILocation(line: 24, column: 53, scope: !1669)
!1675 = !DILocation(line: 49, column: 25, scope: !1669)
!1676 = !DILocation(line: 49, column: 30, scope: !1669)
!1677 = !DILocation(line: 49, column: 70, scope: !1669)
!1678 = !DILocation(line: 50, column: 18, scope: !1669)
!1679 = !DILocation(line: 50, column: 23, scope: !1669)
!1680 = !DILocation(line: 0, scope: !1669)
!1681 = !DILocation(line: 49, column: 2, scope: !1669)
!1682 = distinct !DISubprogram(name: "z_log_msg_runtime_vcreate", scope: !1683, file: !1683, line: 53, type: !1684, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !80)
!1683 = !DIFile(filename: "zephyr/include/generated/syscalls/log_msg.h", directory: "/home/sri/zephyrproject/zephyr/build")
!1684 = !DISubroutineType(types: !1685)
!1685 = !{null, !43, !981, !43, !981, !32, !73, !30, !74}
!1686 = !DILocalVariable(name: "domain_id", arg: 1, scope: !1682, file: !1683, line: 53, type: !43)
!1687 = !DILocation(line: 53, column: 54, scope: !1682)
!1688 = !DILocalVariable(name: "source", arg: 2, scope: !1682, file: !1683, line: 53, type: !981)
!1689 = !DILocation(line: 53, column: 78, scope: !1682)
!1690 = !DILocalVariable(name: "level", arg: 3, scope: !1682, file: !1683, line: 53, type: !43)
!1691 = !DILocation(line: 53, column: 94, scope: !1682)
!1692 = !DILocalVariable(name: "data", arg: 4, scope: !1682, file: !1683, line: 53, type: !981)
!1693 = !DILocation(line: 53, column: 114, scope: !1682)
!1694 = !DILocalVariable(name: "dlen", arg: 5, scope: !1682, file: !1683, line: 53, type: !32)
!1695 = !DILocation(line: 53, column: 127, scope: !1682)
!1696 = !DILocalVariable(name: "package_flags", arg: 6, scope: !1682, file: !1683, line: 53, type: !73)
!1697 = !DILocation(line: 53, column: 142, scope: !1682)
!1698 = !DILocalVariable(name: "fmt", arg: 7, scope: !1682, file: !1683, line: 53, type: !30)
!1699 = !DILocation(line: 53, column: 170, scope: !1682)
!1700 = !DILocalVariable(name: "ap", arg: 8, scope: !1682, file: !1683, line: 53, type: !74)
!1701 = !DILocation(line: 53, column: 183, scope: !1682)
!1702 = !DILocation(line: 76, column: 2, scope: !1682)
!1703 = !DILocation(line: 76, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1682, file: !1683, line: 76, column: 5)
!1705 = !{i64 87407}
!1706 = !DILocation(line: 76, column: 47, scope: !1704)
!1707 = !DILocation(line: 77, column: 35, scope: !1682)
!1708 = !DILocation(line: 77, column: 46, scope: !1682)
!1709 = !DILocation(line: 77, column: 54, scope: !1682)
!1710 = !DILocation(line: 77, column: 61, scope: !1682)
!1711 = !DILocation(line: 77, column: 67, scope: !1682)
!1712 = !DILocation(line: 77, column: 73, scope: !1682)
!1713 = !DILocation(line: 77, column: 88, scope: !1682)
!1714 = !DILocation(line: 77, column: 2, scope: !1682)
!1715 = !DILocation(line: 78, column: 1, scope: !1682)
