; ModuleID = '../bc_files/cbprintf_complete.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/cbprintf_complete.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.__va_list = type { ptr }
%struct.anon = type { %union.argument_value, %struct.conversion }
%union.argument_value = type { i64 }
%struct.conversion = type { i8, i8, i8, i8, %union.anon, %union.anon.0 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1, !dbg !0
@__aeabi_ctype_table_ = external constant [257 x i8], align 1

; Function Attrs: noinline nounwind optnone
define hidden i32 @z_cbvprintf_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3, i32 noundef %4) #0 !dbg !70 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca [22 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.anon, align 8
  %18 = alloca ptr, align 4
  %19 = alloca ptr, align 4
  %20 = alloca ptr, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 4
  %24 = alloca ptr, align 4
  %25 = alloca i8, align 1
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0
  store [1 x i32] %3, ptr %44, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !87, metadata !DIExpression()), !dbg !88
  store ptr %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !89, metadata !DIExpression()), !dbg !90
  store ptr %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata ptr %7, metadata !93, metadata !DIExpression()), !dbg !94
  store i32 %4, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata ptr %12, metadata !97, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata ptr %13, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 0, ptr %13, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %14, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata ptr %15, metadata !106, metadata !DIExpression()), !dbg !109
  %45 = load i32, ptr %11, align 4, !dbg !110
  %46 = and i32 %45, 1, !dbg !111
  %47 = icmp eq i32 %46, 1, !dbg !112
  %48 = zext i1 %47 to i8, !dbg !109
  store i8 %48, ptr %15, align 1, !dbg !109
  br label %49, !dbg !113

49:                                               ; preds = %752, %512, %377, %75, %5
  %50 = load ptr, ptr %10, align 4, !dbg !114
  %51 = load i8, ptr %50, align 1, !dbg !115
  %52 = zext i8 %51 to i32, !dbg !115
  %53 = icmp ne i32 %52, 0, !dbg !116
  br i1 %53, label %54, label %753, !dbg !113

54:                                               ; preds = %49
  %55 = load ptr, ptr %10, align 4, !dbg !117
  %56 = load i8, ptr %55, align 1, !dbg !120
  %57 = zext i8 %56 to i32, !dbg !120
  %58 = icmp ne i32 %57, 37, !dbg !121
  br i1 %58, label %59, label %76, !dbg !122

59:                                               ; preds = %54
  br label %60, !dbg !123

60:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %16, metadata !125, metadata !DIExpression()), !dbg !127
  %61 = load ptr, ptr %8, align 4, !dbg !128
  %62 = load ptr, ptr %10, align 4, !dbg !129
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !129
  store ptr %63, ptr %10, align 4, !dbg !129
  %64 = load i8, ptr %62, align 1, !dbg !130
  %65 = zext i8 %64 to i32, !dbg !131
  %66 = load ptr, ptr %9, align 4, !dbg !132
  %67 = call i32 %61(i32 noundef %65, ptr noundef %66), !dbg !133
  store i32 %67, ptr %16, align 4, !dbg !127
  %68 = load i32, ptr %16, align 4, !dbg !134
  %69 = icmp slt i32 %68, 0, !dbg !136
  br i1 %69, label %70, label %72, !dbg !137

70:                                               ; preds = %60
  %71 = load i32, ptr %16, align 4, !dbg !138
  store i32 %71, ptr %6, align 4, !dbg !140
  br label %755, !dbg !140

72:                                               ; preds = %60
  %73 = load i32, ptr %13, align 4, !dbg !141
  %74 = add i32 %73, 1, !dbg !141
  store i32 %74, ptr %13, align 4, !dbg !141
  br label %75, !dbg !142

75:                                               ; preds = %72
  br label %49, !dbg !143, !llvm.loop !144

76:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %17, metadata !146, metadata !DIExpression()), !dbg !191
  call void @llvm.memset.p0.i32(ptr align 8 %17, i8 0, i32 24, i1 false), !dbg !191
  call void @llvm.dbg.declare(metadata ptr %18, metadata !192, metadata !DIExpression()), !dbg !195
  %77 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !196
  store ptr %77, ptr %18, align 4, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %19, metadata !197, metadata !DIExpression()), !dbg !200
  %78 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 0, !dbg !201
  store ptr %78, ptr %19, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %20, metadata !202, metadata !DIExpression()), !dbg !203
  %79 = load ptr, ptr %10, align 4, !dbg !204
  store ptr %79, ptr %20, align 4, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %21, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 -1, ptr %21, align 4, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %22, metadata !207, metadata !DIExpression()), !dbg !208
  store i32 -1, ptr %22, align 4, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %23, metadata !209, metadata !DIExpression()), !dbg !210
  store ptr null, ptr %23, align 4, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %24, metadata !211, metadata !DIExpression()), !dbg !212
  %80 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !213
  %81 = getelementptr inbounds i8, ptr %80, i32 22, !dbg !214
  store ptr %81, ptr %24, align 4, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %25, metadata !215, metadata !DIExpression()), !dbg !216
  store i8 0, ptr %25, align 1, !dbg !216
  %82 = load ptr, ptr %18, align 4, !dbg !217
  %83 = load ptr, ptr %20, align 4, !dbg !218
  %84 = call ptr @extract_conversion(ptr noundef %82, ptr noundef %83), !dbg !219
  store ptr %84, ptr %10, align 4, !dbg !220
  %85 = load ptr, ptr %18, align 4, !dbg !221
  %86 = getelementptr inbounds %struct.conversion, ptr %85, i32 0, i32 1, !dbg !223
  %87 = load i8, ptr %86, align 1, !dbg !223
  %88 = and i8 %87, 1, !dbg !223
  %89 = trunc i8 %88 to i1, !dbg !223
  br i1 %89, label %90, label %104, !dbg !224

90:                                               ; preds = %76
  %91 = load ptr, ptr %7, align 4, !dbg !225
  %92 = getelementptr inbounds i8, ptr %91, i32 4, !dbg !225
  store ptr %92, ptr %7, align 4, !dbg !225
  %93 = load i32, ptr %91, align 4, !dbg !225
  store i32 %93, ptr %21, align 4, !dbg !227
  %94 = load i32, ptr %21, align 4, !dbg !228
  %95 = icmp slt i32 %94, 0, !dbg !230
  br i1 %95, label %96, label %103, !dbg !231

96:                                               ; preds = %90
  %97 = load ptr, ptr %18, align 4, !dbg !232
  %98 = load i8, ptr %97, align 4, !dbg !234
  %99 = and i8 %98, -5, !dbg !234
  %100 = or i8 %99, 4, !dbg !234
  store i8 %100, ptr %97, align 4, !dbg !234
  %101 = load i32, ptr %21, align 4, !dbg !235
  %102 = sub nsw i32 0, %101, !dbg !236
  store i32 %102, ptr %21, align 4, !dbg !237
  br label %103, !dbg !238

103:                                              ; preds = %96, %90
  br label %115, !dbg !239

104:                                              ; preds = %76
  %105 = load ptr, ptr %18, align 4, !dbg !240
  %106 = load i8, ptr %105, align 4, !dbg !242
  %107 = lshr i8 %106, 7, !dbg !242
  %108 = trunc i8 %107 to i1, !dbg !242
  br i1 %108, label %109, label %113, !dbg !243

109:                                              ; preds = %104
  %110 = load ptr, ptr %18, align 4, !dbg !244
  %111 = getelementptr inbounds %struct.conversion, ptr %110, i32 0, i32 4, !dbg !246
  %112 = load i32, ptr %111, align 4, !dbg !246
  store i32 %112, ptr %21, align 4, !dbg !247
  br label %114, !dbg !248

113:                                              ; preds = %104
  br label %114

114:                                              ; preds = %113, %109
  br label %115

115:                                              ; preds = %114, %103
  %116 = load ptr, ptr %18, align 4, !dbg !249
  %117 = getelementptr inbounds %struct.conversion, ptr %116, i32 0, i32 1, !dbg !251
  %118 = load i8, ptr %117, align 1, !dbg !251
  %119 = lshr i8 %118, 2, !dbg !251
  %120 = and i8 %119, 1, !dbg !251
  %121 = trunc i8 %120 to i1, !dbg !251
  br i1 %121, label %122, label %137, !dbg !252

122:                                              ; preds = %115
  call void @llvm.dbg.declare(metadata ptr %26, metadata !253, metadata !DIExpression()), !dbg !255
  %123 = load ptr, ptr %7, align 4, !dbg !256
  %124 = getelementptr inbounds i8, ptr %123, i32 4, !dbg !256
  store ptr %124, ptr %7, align 4, !dbg !256
  %125 = load i32, ptr %123, align 4, !dbg !256
  store i32 %125, ptr %26, align 4, !dbg !255
  %126 = load i32, ptr %26, align 4, !dbg !257
  %127 = icmp slt i32 %126, 0, !dbg !259
  br i1 %127, label %128, label %134, !dbg !260

128:                                              ; preds = %122
  %129 = load ptr, ptr %18, align 4, !dbg !261
  %130 = getelementptr inbounds %struct.conversion, ptr %129, i32 0, i32 1, !dbg !263
  %131 = load i8, ptr %130, align 1, !dbg !264
  %132 = and i8 %131, -3, !dbg !264
  %133 = or i8 %132, 0, !dbg !264
  store i8 %133, ptr %130, align 1, !dbg !264
  br label %136, !dbg !265

134:                                              ; preds = %122
  %135 = load i32, ptr %26, align 4, !dbg !266
  store i32 %135, ptr %22, align 4, !dbg !268
  br label %136

136:                                              ; preds = %134, %128
  br label %150, !dbg !269

137:                                              ; preds = %115
  %138 = load ptr, ptr %18, align 4, !dbg !270
  %139 = getelementptr inbounds %struct.conversion, ptr %138, i32 0, i32 1, !dbg !272
  %140 = load i8, ptr %139, align 1, !dbg !272
  %141 = lshr i8 %140, 1, !dbg !272
  %142 = and i8 %141, 1, !dbg !272
  %143 = trunc i8 %142 to i1, !dbg !272
  br i1 %143, label %144, label %148, !dbg !273

144:                                              ; preds = %137
  %145 = load ptr, ptr %18, align 4, !dbg !274
  %146 = getelementptr inbounds %struct.conversion, ptr %145, i32 0, i32 5, !dbg !276
  %147 = load i32, ptr %146, align 4, !dbg !276
  store i32 %147, ptr %22, align 4, !dbg !277
  br label %149, !dbg !278

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %144
  br label %150

150:                                              ; preds = %149, %136
  %151 = load ptr, ptr %18, align 4, !dbg !279
  %152 = getelementptr inbounds %struct.conversion, ptr %151, i32 0, i32 4, !dbg !280
  store i32 0, ptr %152, align 4, !dbg !281
  %153 = load ptr, ptr %18, align 4, !dbg !282
  %154 = getelementptr inbounds %struct.conversion, ptr %153, i32 0, i32 5, !dbg !283
  store i32 0, ptr %154, align 4, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %27, metadata !285, metadata !DIExpression()), !dbg !286
  %155 = load ptr, ptr %18, align 4, !dbg !287
  %156 = getelementptr inbounds %struct.conversion, ptr %155, i32 0, i32 2, !dbg !288
  %157 = load i8, ptr %156, align 2, !dbg !288
  %158 = and i8 %157, 7, !dbg !288
  %159 = zext i8 %158 to i32, !dbg !288
  %160 = trunc i32 %159 to i8, !dbg !289
  store i8 %160, ptr %27, align 1, !dbg !286
  call void @llvm.dbg.declare(metadata ptr %28, metadata !290, metadata !DIExpression()), !dbg !291
  %161 = load ptr, ptr %18, align 4, !dbg !292
  %162 = getelementptr inbounds %struct.conversion, ptr %161, i32 0, i32 1, !dbg !293
  %163 = load i8, ptr %162, align 1, !dbg !293
  %164 = lshr i8 %163, 3, !dbg !293
  %165 = and i8 %164, 15, !dbg !293
  %166 = zext i8 %165 to i32, !dbg !293
  %167 = trunc i32 %166 to i8, !dbg !294
  store i8 %167, ptr %28, align 1, !dbg !291
  %168 = load i8, ptr %27, align 1, !dbg !295
  %169 = zext i8 %168 to i32, !dbg !295
  %170 = icmp eq i32 %169, 1, !dbg !297
  br i1 %170, label %171, label %233, !dbg !298

171:                                              ; preds = %150
  %172 = load i8, ptr %28, align 1, !dbg !299
  %173 = zext i8 %172 to i32, !dbg !299
  switch i32 %173, label %174 [
    i32 0, label %175
    i32 1, label %175
    i32 2, label %175
    i32 3, label %181
    i32 4, label %187
    i32 5, label %196
    i32 6, label %205
    i32 7, label %205
  ], !dbg !301

174:                                              ; preds = %171
  br label %175, !dbg !302

175:                                              ; preds = %171, %171, %171, %174
  %176 = load ptr, ptr %7, align 4, !dbg !303
  %177 = getelementptr inbounds i8, ptr %176, i32 4, !dbg !303
  store ptr %177, ptr %7, align 4, !dbg !303
  %178 = load i32, ptr %176, align 4, !dbg !303
  %179 = sext i32 %178 to i64, !dbg !303
  %180 = load ptr, ptr %19, align 4, !dbg !305
  store i64 %179, ptr %180, align 8, !dbg !306
  br label %211, !dbg !307

181:                                              ; preds = %171
  %182 = load ptr, ptr %7, align 4, !dbg !308
  %183 = getelementptr inbounds i8, ptr %182, i32 4, !dbg !308
  store ptr %183, ptr %7, align 4, !dbg !308
  %184 = load i32, ptr %182, align 4, !dbg !308
  %185 = sext i32 %184 to i64, !dbg !308
  %186 = load ptr, ptr %19, align 4, !dbg !311
  store i64 %185, ptr %186, align 8, !dbg !312
  br label %211, !dbg !313

187:                                              ; preds = %171
  %188 = load ptr, ptr %7, align 4, !dbg !314
  %189 = ptrtoint ptr %188 to i32, !dbg !314
  %190 = add i32 %189, 7, !dbg !314
  %191 = and i32 %190, -8, !dbg !314
  %192 = inttoptr i32 %191 to ptr, !dbg !314
  %193 = getelementptr inbounds i8, ptr %192, i32 8, !dbg !314
  store ptr %193, ptr %7, align 4, !dbg !314
  %194 = load i64, ptr %192, align 8, !dbg !314
  %195 = load ptr, ptr %19, align 4, !dbg !315
  store i64 %194, ptr %195, align 8, !dbg !316
  br label %211, !dbg !317

196:                                              ; preds = %171
  %197 = load ptr, ptr %7, align 4, !dbg !318
  %198 = ptrtoint ptr %197 to i32, !dbg !318
  %199 = add i32 %198, 7, !dbg !318
  %200 = and i32 %199, -8, !dbg !318
  %201 = inttoptr i32 %200 to ptr, !dbg !318
  %202 = getelementptr inbounds i8, ptr %201, i32 8, !dbg !318
  store ptr %202, ptr %7, align 4, !dbg !318
  %203 = load i64, ptr %201, align 8, !dbg !318
  %204 = load ptr, ptr %19, align 4, !dbg !319
  store i64 %203, ptr %204, align 8, !dbg !320
  br label %211, !dbg !321

205:                                              ; preds = %171, %171
  %206 = load ptr, ptr %7, align 4, !dbg !322
  %207 = getelementptr inbounds i8, ptr %206, i32 4, !dbg !322
  store ptr %207, ptr %7, align 4, !dbg !322
  %208 = load i32, ptr %206, align 4, !dbg !322
  %209 = sext i32 %208 to i64, !dbg !323
  %210 = load ptr, ptr %19, align 4, !dbg !324
  store i64 %209, ptr %210, align 8, !dbg !325
  br label %211, !dbg !326

211:                                              ; preds = %205, %196, %187, %181, %175
  %212 = load i8, ptr %28, align 1, !dbg !327
  %213 = zext i8 %212 to i32, !dbg !327
  %214 = icmp eq i32 %213, 1, !dbg !329
  br i1 %214, label %215, label %221, !dbg !330

215:                                              ; preds = %211
  %216 = load ptr, ptr %19, align 4, !dbg !331
  %217 = load i64, ptr %216, align 8, !dbg !333
  %218 = trunc i64 %217 to i8, !dbg !334
  %219 = sext i8 %218 to i64, !dbg !334
  %220 = load ptr, ptr %19, align 4, !dbg !335
  store i64 %219, ptr %220, align 8, !dbg !336
  br label %232, !dbg !337

221:                                              ; preds = %211
  %222 = load i8, ptr %28, align 1, !dbg !338
  %223 = zext i8 %222 to i32, !dbg !338
  %224 = icmp eq i32 %223, 2, !dbg !340
  br i1 %224, label %225, label %231, !dbg !341

225:                                              ; preds = %221
  %226 = load ptr, ptr %19, align 4, !dbg !342
  %227 = load i64, ptr %226, align 8, !dbg !344
  %228 = trunc i64 %227 to i16, !dbg !345
  %229 = sext i16 %228 to i64, !dbg !345
  %230 = load ptr, ptr %19, align 4, !dbg !346
  store i64 %229, ptr %230, align 8, !dbg !347
  br label %231, !dbg !348

231:                                              ; preds = %225, %221
  br label %232

232:                                              ; preds = %231, %215
  br label %351, !dbg !349

233:                                              ; preds = %150
  %234 = load i8, ptr %27, align 1, !dbg !350
  %235 = zext i8 %234 to i32, !dbg !350
  %236 = icmp eq i32 %235, 2, !dbg !352
  br i1 %236, label %237, label %312, !dbg !353

237:                                              ; preds = %233
  %238 = load i8, ptr %28, align 1, !dbg !354
  %239 = zext i8 %238 to i32, !dbg !354
  switch i32 %239, label %240 [
    i32 0, label %241
    i32 1, label %241
    i32 2, label %241
    i32 3, label %247
    i32 4, label %266
    i32 5, label %275
    i32 6, label %284
    i32 7, label %284
  ], !dbg !356

240:                                              ; preds = %237
  br label %241, !dbg !357

241:                                              ; preds = %237, %237, %237, %240
  %242 = load ptr, ptr %7, align 4, !dbg !358
  %243 = getelementptr inbounds i8, ptr %242, i32 4, !dbg !358
  store ptr %243, ptr %7, align 4, !dbg !358
  %244 = load i32, ptr %242, align 4, !dbg !358
  %245 = zext i32 %244 to i64, !dbg !358
  %246 = load ptr, ptr %19, align 4, !dbg !360
  store i64 %245, ptr %246, align 8, !dbg !361
  br label %290, !dbg !362

247:                                              ; preds = %237
  %248 = load ptr, ptr %18, align 4, !dbg !363
  %249 = getelementptr inbounds %struct.conversion, ptr %248, i32 0, i32 3, !dbg !365
  %250 = load i8, ptr %249, align 1, !dbg !365
  %251 = zext i8 %250 to i32, !dbg !363
  %252 = icmp eq i32 %251, 99, !dbg !366
  br i1 %252, label %253, label %259, !dbg !367

253:                                              ; preds = %247
  %254 = load ptr, ptr %7, align 4, !dbg !368
  %255 = getelementptr inbounds i8, ptr %254, i32 4, !dbg !368
  store ptr %255, ptr %7, align 4, !dbg !368
  %256 = load i32, ptr %254, align 4, !dbg !368
  %257 = zext i32 %256 to i64, !dbg !370
  %258 = load ptr, ptr %19, align 4, !dbg !371
  store i64 %257, ptr %258, align 8, !dbg !372
  br label %265, !dbg !373

259:                                              ; preds = %247
  %260 = load ptr, ptr %7, align 4, !dbg !374
  %261 = getelementptr inbounds i8, ptr %260, i32 4, !dbg !374
  store ptr %261, ptr %7, align 4, !dbg !374
  %262 = load i32, ptr %260, align 4, !dbg !374
  %263 = zext i32 %262 to i64, !dbg !374
  %264 = load ptr, ptr %19, align 4, !dbg !376
  store i64 %263, ptr %264, align 8, !dbg !377
  br label %265

265:                                              ; preds = %259, %253
  br label %290, !dbg !378

266:                                              ; preds = %237
  %267 = load ptr, ptr %7, align 4, !dbg !379
  %268 = ptrtoint ptr %267 to i32, !dbg !379
  %269 = add i32 %268, 7, !dbg !379
  %270 = and i32 %269, -8, !dbg !379
  %271 = inttoptr i32 %270 to ptr, !dbg !379
  %272 = getelementptr inbounds i8, ptr %271, i32 8, !dbg !379
  store ptr %272, ptr %7, align 4, !dbg !379
  %273 = load i64, ptr %271, align 8, !dbg !379
  %274 = load ptr, ptr %19, align 4, !dbg !380
  store i64 %273, ptr %274, align 8, !dbg !381
  br label %290, !dbg !382

275:                                              ; preds = %237
  %276 = load ptr, ptr %7, align 4, !dbg !383
  %277 = ptrtoint ptr %276 to i32, !dbg !383
  %278 = add i32 %277, 7, !dbg !383
  %279 = and i32 %278, -8, !dbg !383
  %280 = inttoptr i32 %279 to ptr, !dbg !383
  %281 = getelementptr inbounds i8, ptr %280, i32 8, !dbg !383
  store ptr %281, ptr %7, align 4, !dbg !383
  %282 = load i64, ptr %280, align 8, !dbg !383
  %283 = load ptr, ptr %19, align 4, !dbg !384
  store i64 %282, ptr %283, align 8, !dbg !385
  br label %290, !dbg !386

284:                                              ; preds = %237, %237
  %285 = load ptr, ptr %7, align 4, !dbg !387
  %286 = getelementptr inbounds i8, ptr %285, i32 4, !dbg !387
  store ptr %286, ptr %7, align 4, !dbg !387
  %287 = load i32, ptr %285, align 4, !dbg !387
  %288 = zext i32 %287 to i64, !dbg !388
  %289 = load ptr, ptr %19, align 4, !dbg !389
  store i64 %288, ptr %289, align 8, !dbg !390
  br label %290, !dbg !391

290:                                              ; preds = %284, %275, %266, %265, %241
  %291 = load i8, ptr %28, align 1, !dbg !392
  %292 = zext i8 %291 to i32, !dbg !392
  %293 = icmp eq i32 %292, 1, !dbg !394
  br i1 %293, label %294, label %300, !dbg !395

294:                                              ; preds = %290
  %295 = load ptr, ptr %19, align 4, !dbg !396
  %296 = load i64, ptr %295, align 8, !dbg !398
  %297 = trunc i64 %296 to i8, !dbg !399
  %298 = zext i8 %297 to i64, !dbg !399
  %299 = load ptr, ptr %19, align 4, !dbg !400
  store i64 %298, ptr %299, align 8, !dbg !401
  br label %311, !dbg !402

300:                                              ; preds = %290
  %301 = load i8, ptr %28, align 1, !dbg !403
  %302 = zext i8 %301 to i32, !dbg !403
  %303 = icmp eq i32 %302, 2, !dbg !405
  br i1 %303, label %304, label %310, !dbg !406

304:                                              ; preds = %300
  %305 = load ptr, ptr %19, align 4, !dbg !407
  %306 = load i64, ptr %305, align 8, !dbg !409
  %307 = trunc i64 %306 to i16, !dbg !410
  %308 = zext i16 %307 to i64, !dbg !410
  %309 = load ptr, ptr %19, align 4, !dbg !411
  store i64 %308, ptr %309, align 8, !dbg !412
  br label %310, !dbg !413

310:                                              ; preds = %304, %300
  br label %311

311:                                              ; preds = %310, %294
  br label %350, !dbg !414

312:                                              ; preds = %233
  %313 = load i8, ptr %27, align 1, !dbg !415
  %314 = zext i8 %313 to i32, !dbg !415
  %315 = icmp eq i32 %314, 4, !dbg !417
  br i1 %315, label %316, label %339, !dbg !418

316:                                              ; preds = %312
  %317 = load i8, ptr %28, align 1, !dbg !419
  %318 = zext i8 %317 to i32, !dbg !419
  %319 = icmp eq i32 %318, 8, !dbg !422
  br i1 %319, label %320, label %329, !dbg !423

320:                                              ; preds = %316
  %321 = load ptr, ptr %7, align 4, !dbg !424
  %322 = ptrtoint ptr %321 to i32, !dbg !424
  %323 = add i32 %322, 7, !dbg !424
  %324 = and i32 %323, -8, !dbg !424
  %325 = inttoptr i32 %324 to ptr, !dbg !424
  %326 = getelementptr inbounds i8, ptr %325, i32 8, !dbg !424
  store ptr %326, ptr %7, align 4, !dbg !424
  %327 = load double, ptr %325, align 8, !dbg !424
  %328 = load ptr, ptr %19, align 4, !dbg !426
  store double %327, ptr %328, align 8, !dbg !427
  br label %338, !dbg !428

329:                                              ; preds = %316
  %330 = load ptr, ptr %7, align 4, !dbg !429
  %331 = ptrtoint ptr %330 to i32, !dbg !429
  %332 = add i32 %331, 7, !dbg !429
  %333 = and i32 %332, -8, !dbg !429
  %334 = inttoptr i32 %333 to ptr, !dbg !429
  %335 = getelementptr inbounds i8, ptr %334, i32 8, !dbg !429
  store ptr %335, ptr %7, align 4, !dbg !429
  %336 = load double, ptr %334, align 8, !dbg !429
  %337 = load ptr, ptr %19, align 4, !dbg !431
  store double %336, ptr %337, align 8, !dbg !432
  br label %338

338:                                              ; preds = %329, %320
  br label %349, !dbg !433

339:                                              ; preds = %312
  %340 = load i8, ptr %27, align 1, !dbg !434
  %341 = zext i8 %340 to i32, !dbg !434
  %342 = icmp eq i32 %341, 3, !dbg !436
  br i1 %342, label %343, label %348, !dbg !437

343:                                              ; preds = %339
  %344 = load ptr, ptr %7, align 4, !dbg !438
  %345 = getelementptr inbounds i8, ptr %344, i32 4, !dbg !438
  store ptr %345, ptr %7, align 4, !dbg !438
  %346 = load ptr, ptr %344, align 4, !dbg !438
  %347 = load ptr, ptr %19, align 4, !dbg !440
  store ptr %346, ptr %347, align 8, !dbg !441
  br label %348, !dbg !442

348:                                              ; preds = %343, %339
  br label %349

349:                                              ; preds = %348, %338
  br label %350

350:                                              ; preds = %349, %311
  br label %351

351:                                              ; preds = %350, %232
  %352 = load ptr, ptr %18, align 4, !dbg !443
  %353 = load i8, ptr %352, align 4, !dbg !445
  %354 = and i8 %353, 1, !dbg !445
  %355 = trunc i8 %354 to i1, !dbg !445
  br i1 %355, label %362, label %356, !dbg !446

356:                                              ; preds = %351
  %357 = load ptr, ptr %18, align 4, !dbg !447
  %358 = load i8, ptr %357, align 4, !dbg !448
  %359 = lshr i8 %358, 1, !dbg !448
  %360 = and i8 %359, 1, !dbg !448
  %361 = trunc i8 %360 to i1, !dbg !448
  br i1 %361, label %362, label %378, !dbg !449

362:                                              ; preds = %356, %351
  br label %363, !dbg !450

363:                                              ; preds = %362
  call void @llvm.dbg.declare(metadata ptr %29, metadata !452, metadata !DIExpression()), !dbg !454
  %364 = load ptr, ptr %8, align 4, !dbg !455
  %365 = load ptr, ptr %9, align 4, !dbg !456
  %366 = load ptr, ptr %20, align 4, !dbg !457
  %367 = load ptr, ptr %10, align 4, !dbg !458
  %368 = call i32 @outs(ptr noundef %364, ptr noundef %365, ptr noundef %366, ptr noundef %367), !dbg !459
  store i32 %368, ptr %29, align 4, !dbg !454
  %369 = load i32, ptr %29, align 4, !dbg !460
  %370 = icmp slt i32 %369, 0, !dbg !462
  br i1 %370, label %371, label %373, !dbg !463

371:                                              ; preds = %363
  %372 = load i32, ptr %29, align 4, !dbg !464
  store i32 %372, ptr %6, align 4, !dbg !466
  br label %755, !dbg !466

373:                                              ; preds = %363
  %374 = load i32, ptr %29, align 4, !dbg !467
  %375 = load i32, ptr %13, align 4, !dbg !468
  %376 = add i32 %375, %374, !dbg !468
  store i32 %376, ptr %13, align 4, !dbg !468
  br label %377, !dbg !469

377:                                              ; preds = %373
  br label %49, !dbg !470, !llvm.loop !144

378:                                              ; preds = %356
  %379 = load ptr, ptr %18, align 4, !dbg !471
  %380 = getelementptr inbounds %struct.conversion, ptr %379, i32 0, i32 3, !dbg !472
  %381 = load i8, ptr %380, align 1, !dbg !472
  %382 = zext i8 %381 to i32, !dbg !471
  switch i32 %382, label %508 [
    i32 37, label %383
    i32 115, label %396
    i32 99, label %412
    i32 100, label %420
    i32 105, label %420
    i32 111, label %448
    i32 117, label %448
    i32 120, label %448
    i32 88, label %448
    i32 112, label %479
    i32 110, label %502
    i32 97, label %507
    i32 65, label %507
    i32 101, label %507
    i32 69, label %507
    i32 102, label %507
    i32 70, label %507
    i32 103, label %507
    i32 71, label %507
  ], !dbg !473

383:                                              ; preds = %378
  br label %384, !dbg !474

384:                                              ; preds = %383
  call void @llvm.dbg.declare(metadata ptr %30, metadata !476, metadata !DIExpression()), !dbg !478
  %385 = load ptr, ptr %8, align 4, !dbg !479
  %386 = load ptr, ptr %9, align 4, !dbg !480
  %387 = call i32 %385(i32 noundef 37, ptr noundef %386), !dbg !481
  store i32 %387, ptr %30, align 4, !dbg !478
  %388 = load i32, ptr %30, align 4, !dbg !482
  %389 = icmp slt i32 %388, 0, !dbg !484
  br i1 %389, label %390, label %392, !dbg !485

390:                                              ; preds = %384
  %391 = load i32, ptr %30, align 4, !dbg !486
  store i32 %391, ptr %6, align 4, !dbg !488
  br label %755, !dbg !488

392:                                              ; preds = %384
  %393 = load i32, ptr %13, align 4, !dbg !489
  %394 = add i32 %393, 1, !dbg !489
  store i32 %394, ptr %13, align 4, !dbg !489
  br label %395, !dbg !490

395:                                              ; preds = %392
  br label %509, !dbg !491

396:                                              ; preds = %378
  %397 = load ptr, ptr %19, align 4, !dbg !492
  %398 = load ptr, ptr %397, align 8, !dbg !494
  store ptr %398, ptr %23, align 4, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %31, metadata !496, metadata !DIExpression()), !dbg !497
  %399 = load i32, ptr %22, align 4, !dbg !498
  %400 = icmp sge i32 %399, 0, !dbg !500
  br i1 %400, label %401, label %405, !dbg !501

401:                                              ; preds = %396
  %402 = load ptr, ptr %23, align 4, !dbg !502
  %403 = load i32, ptr %22, align 4, !dbg !504
  %404 = call i32 @strnlen(ptr noundef %402, i32 noundef %403), !dbg !505
  store i32 %404, ptr %31, align 4, !dbg !506
  br label %408, !dbg !507

405:                                              ; preds = %396
  %406 = load ptr, ptr %23, align 4, !dbg !508
  %407 = call i32 @strlen(ptr noundef %406) #6, !dbg !510
  store i32 %407, ptr %31, align 4, !dbg !511
  br label %408

408:                                              ; preds = %405, %401
  %409 = load ptr, ptr %23, align 4, !dbg !512
  %410 = load i32, ptr %31, align 4, !dbg !513
  %411 = getelementptr inbounds i8, ptr %409, i32 %410, !dbg !514
  store ptr %411, ptr %24, align 4, !dbg !515
  store i32 -1, ptr %22, align 4, !dbg !516
  br label %509, !dbg !517

412:                                              ; preds = %378
  %413 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !518
  store ptr %413, ptr %23, align 4, !dbg !519
  %414 = load ptr, ptr %19, align 4, !dbg !520
  %415 = load i64, ptr %414, align 8, !dbg !521
  %416 = trunc i64 %415 to i8, !dbg !522
  %417 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !523
  store i8 %416, ptr %417, align 1, !dbg !524
  %418 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !525
  %419 = getelementptr inbounds i8, ptr %418, i32 1, !dbg !526
  store ptr %419, ptr %24, align 4, !dbg !527
  br label %509, !dbg !528

420:                                              ; preds = %378, %378
  %421 = load ptr, ptr %18, align 4, !dbg !529
  %422 = load i8, ptr %421, align 4, !dbg !531
  %423 = lshr i8 %422, 3, !dbg !531
  %424 = and i8 %423, 1, !dbg !531
  %425 = trunc i8 %424 to i1, !dbg !531
  br i1 %425, label %426, label %427, !dbg !532

426:                                              ; preds = %420
  store i8 43, ptr %25, align 1, !dbg !533
  br label %435, !dbg !535

427:                                              ; preds = %420
  %428 = load ptr, ptr %18, align 4, !dbg !536
  %429 = load i8, ptr %428, align 4, !dbg !538
  %430 = lshr i8 %429, 4, !dbg !538
  %431 = and i8 %430, 1, !dbg !538
  %432 = trunc i8 %431 to i1, !dbg !538
  br i1 %432, label %433, label %434, !dbg !539

433:                                              ; preds = %427
  store i8 32, ptr %25, align 1, !dbg !540
  br label %434, !dbg !542

434:                                              ; preds = %433, %427
  br label %435

435:                                              ; preds = %434, %426
  %436 = load ptr, ptr %19, align 4, !dbg !543
  %437 = load i64, ptr %436, align 8, !dbg !544
  store i64 %437, ptr %14, align 8, !dbg !545
  %438 = load i64, ptr %14, align 8, !dbg !546
  %439 = icmp slt i64 %438, 0, !dbg !548
  br i1 %439, label %440, label %444, !dbg !549

440:                                              ; preds = %435
  store i8 45, ptr %25, align 1, !dbg !550
  %441 = load i64, ptr %14, align 8, !dbg !552
  %442 = sub nsw i64 0, %441, !dbg !553
  %443 = load ptr, ptr %19, align 4, !dbg !554
  store i64 %442, ptr %443, align 8, !dbg !555
  br label %447, !dbg !556

444:                                              ; preds = %435
  %445 = load i64, ptr %14, align 8, !dbg !557
  %446 = load ptr, ptr %19, align 4, !dbg !559
  store i64 %445, ptr %446, align 8, !dbg !560
  br label %447

447:                                              ; preds = %444, %440
  br label %448, !dbg !561

448:                                              ; preds = %378, %378, %378, %378, %447
  %449 = load ptr, ptr %19, align 4, !dbg !562
  %450 = load i64, ptr %449, align 8, !dbg !563
  %451 = load ptr, ptr %18, align 4, !dbg !564
  %452 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !565
  %453 = load ptr, ptr %24, align 4, !dbg !566
  %454 = call ptr @encode_uint(i64 noundef %450, ptr noundef %451, ptr noundef %452, ptr noundef %453), !dbg !567
  store ptr %454, ptr %23, align 4, !dbg !568
  br label %455, !dbg !569

455:                                              ; preds = %483, %448
  call void @llvm.dbg.label(metadata !570), !dbg !571
  %456 = load i32, ptr %22, align 4, !dbg !572
  %457 = icmp sge i32 %456, 0, !dbg !574
  br i1 %457, label %458, label %478, !dbg !575

458:                                              ; preds = %455
  call void @llvm.dbg.declare(metadata ptr %32, metadata !576, metadata !DIExpression()), !dbg !578
  %459 = load ptr, ptr %24, align 4, !dbg !579
  %460 = load ptr, ptr %23, align 4, !dbg !580
  %461 = ptrtoint ptr %459 to i32, !dbg !581
  %462 = ptrtoint ptr %460 to i32, !dbg !581
  %463 = sub i32 %461, %462, !dbg !581
  store i32 %463, ptr %32, align 4, !dbg !578
  %464 = load ptr, ptr %18, align 4, !dbg !582
  %465 = load i8, ptr %464, align 4, !dbg !583
  %466 = and i8 %465, -65, !dbg !583
  %467 = or i8 %466, 0, !dbg !583
  store i8 %467, ptr %464, align 4, !dbg !583
  %468 = load i32, ptr %32, align 4, !dbg !584
  %469 = load i32, ptr %22, align 4, !dbg !586
  %470 = icmp ult i32 %468, %469, !dbg !587
  br i1 %470, label %471, label %477, !dbg !588

471:                                              ; preds = %458
  %472 = load i32, ptr %22, align 4, !dbg !589
  %473 = load i32, ptr %32, align 4, !dbg !591
  %474 = sub nsw i32 %472, %473, !dbg !592
  %475 = load ptr, ptr %18, align 4, !dbg !593
  %476 = getelementptr inbounds %struct.conversion, ptr %475, i32 0, i32 4, !dbg !594
  store i32 %474, ptr %476, align 4, !dbg !595
  br label %477, !dbg !596

477:                                              ; preds = %471, %458
  br label %478, !dbg !597

478:                                              ; preds = %477, %455
  br label %509, !dbg !598

479:                                              ; preds = %378
  %480 = load ptr, ptr %19, align 4, !dbg !599
  %481 = load ptr, ptr %480, align 8, !dbg !601
  %482 = icmp ne ptr %481, null, !dbg !602
  br i1 %482, label %483, label %499, !dbg !603

483:                                              ; preds = %479
  %484 = load ptr, ptr %19, align 4, !dbg !604
  %485 = load ptr, ptr %484, align 8, !dbg !606
  %486 = ptrtoint ptr %485 to i32, !dbg !607
  %487 = zext i32 %486 to i64, !dbg !607
  %488 = load ptr, ptr %18, align 4, !dbg !608
  %489 = getelementptr inbounds [22 x i8], ptr %12, i32 0, i32 0, !dbg !609
  %490 = load ptr, ptr %24, align 4, !dbg !610
  %491 = call ptr @encode_uint(i64 noundef %487, ptr noundef %488, ptr noundef %489, ptr noundef %490), !dbg !611
  store ptr %491, ptr %23, align 4, !dbg !612
  %492 = load ptr, ptr %18, align 4, !dbg !613
  %493 = getelementptr inbounds %struct.conversion, ptr %492, i32 0, i32 2, !dbg !614
  %494 = load i8, ptr %493, align 2, !dbg !615
  %495 = and i8 %494, -17, !dbg !615
  %496 = or i8 %495, 16, !dbg !615
  store i8 %496, ptr %493, align 2, !dbg !615
  %497 = load ptr, ptr %18, align 4, !dbg !616
  %498 = getelementptr inbounds %struct.conversion, ptr %497, i32 0, i32 3, !dbg !617
  store i8 120, ptr %498, align 1, !dbg !618
  br label %455, !dbg !619

499:                                              ; preds = %479
  store ptr @.str, ptr %23, align 4, !dbg !620
  %500 = load ptr, ptr %23, align 4, !dbg !621
  %501 = getelementptr inbounds i8, ptr %500, i32 5, !dbg !622
  store ptr %501, ptr %24, align 4, !dbg !623
  br label %509, !dbg !624

502:                                              ; preds = %378
  %503 = load ptr, ptr %18, align 4, !dbg !625
  %504 = load ptr, ptr %19, align 4, !dbg !628
  %505 = load ptr, ptr %504, align 8, !dbg !629
  %506 = load i32, ptr %13, align 4, !dbg !630
  call void @store_count(ptr noundef %503, ptr noundef %505, i32 noundef %506), !dbg !631
  br label %509, !dbg !632

507:                                              ; preds = %378, %378, %378, %378, %378, %378, %378, %378
  br label %509, !dbg !633

508:                                              ; preds = %378
  br label %509, !dbg !634

509:                                              ; preds = %508, %507, %502, %499, %478, %412, %408, %395
  %510 = load ptr, ptr %23, align 4, !dbg !635
  %511 = icmp eq ptr %510, null, !dbg !637
  br i1 %511, label %512, label %513, !dbg !638

512:                                              ; preds = %509
  br label %49, !dbg !639, !llvm.loop !144

513:                                              ; preds = %509
  call void @llvm.dbg.declare(metadata ptr %33, metadata !641, metadata !DIExpression()), !dbg !642
  %514 = load ptr, ptr %24, align 4, !dbg !643
  %515 = load ptr, ptr %23, align 4, !dbg !644
  %516 = ptrtoint ptr %514 to i32, !dbg !645
  %517 = ptrtoint ptr %515 to i32, !dbg !645
  %518 = sub i32 %516, %517, !dbg !645
  store i32 %518, ptr %33, align 4, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %34, metadata !646, metadata !DIExpression()), !dbg !647
  store i32 0, ptr %34, align 4, !dbg !647
  %519 = load i8, ptr %25, align 1, !dbg !648
  %520 = zext i8 %519 to i32, !dbg !648
  %521 = icmp ne i32 %520, 0, !dbg !650
  br i1 %521, label %522, label %525, !dbg !651

522:                                              ; preds = %513
  %523 = load i32, ptr %33, align 4, !dbg !652
  %524 = add i32 %523, 1, !dbg !652
  store i32 %524, ptr %33, align 4, !dbg !652
  br label %525, !dbg !654

525:                                              ; preds = %522, %513
  %526 = load ptr, ptr %18, align 4, !dbg !655
  %527 = getelementptr inbounds %struct.conversion, ptr %526, i32 0, i32 2, !dbg !657
  %528 = load i8, ptr %527, align 2, !dbg !657
  %529 = lshr i8 %528, 4, !dbg !657
  %530 = and i8 %529, 1, !dbg !657
  %531 = trunc i8 %530 to i1, !dbg !657
  br i1 %531, label %532, label %535, !dbg !658

532:                                              ; preds = %525
  %533 = load i32, ptr %33, align 4, !dbg !659
  %534 = add i32 %533, 2, !dbg !659
  store i32 %534, ptr %33, align 4, !dbg !659
  br label %546, !dbg !661

535:                                              ; preds = %525
  %536 = load ptr, ptr %18, align 4, !dbg !662
  %537 = getelementptr inbounds %struct.conversion, ptr %536, i32 0, i32 2, !dbg !664
  %538 = load i8, ptr %537, align 2, !dbg !664
  %539 = lshr i8 %538, 3, !dbg !664
  %540 = and i8 %539, 1, !dbg !664
  %541 = trunc i8 %540 to i1, !dbg !664
  br i1 %541, label %542, label %545, !dbg !665

542:                                              ; preds = %535
  %543 = load i32, ptr %33, align 4, !dbg !666
  %544 = add i32 %543, 1, !dbg !666
  store i32 %544, ptr %33, align 4, !dbg !666
  br label %545, !dbg !668

545:                                              ; preds = %542, %535
  br label %546

546:                                              ; preds = %545, %532
  %547 = load ptr, ptr %18, align 4, !dbg !669
  %548 = getelementptr inbounds %struct.conversion, ptr %547, i32 0, i32 4, !dbg !670
  %549 = load i32, ptr %548, align 4, !dbg !670
  %550 = load i32, ptr %33, align 4, !dbg !671
  %551 = add i32 %550, %549, !dbg !671
  store i32 %551, ptr %33, align 4, !dbg !671
  %552 = load ptr, ptr %18, align 4, !dbg !672
  %553 = getelementptr inbounds %struct.conversion, ptr %552, i32 0, i32 2, !dbg !674
  %554 = load i8, ptr %553, align 2, !dbg !674
  %555 = lshr i8 %554, 6, !dbg !674
  %556 = and i8 %555, 1, !dbg !674
  %557 = trunc i8 %556 to i1, !dbg !674
  br i1 %557, label %558, label %564, !dbg !675

558:                                              ; preds = %546
  %559 = load ptr, ptr %18, align 4, !dbg !676
  %560 = getelementptr inbounds %struct.conversion, ptr %559, i32 0, i32 5, !dbg !678
  %561 = load i32, ptr %560, align 4, !dbg !678
  %562 = load i32, ptr %33, align 4, !dbg !679
  %563 = add i32 %562, %561, !dbg !679
  store i32 %563, ptr %33, align 4, !dbg !679
  br label %564, !dbg !680

564:                                              ; preds = %558, %546
  %565 = load i32, ptr %21, align 4, !dbg !681
  %566 = icmp sgt i32 %565, 0, !dbg !683
  br i1 %566, label %567, label %624, !dbg !684

567:                                              ; preds = %564
  %568 = load i32, ptr %33, align 4, !dbg !685
  %569 = load i32, ptr %21, align 4, !dbg !687
  %570 = sub nsw i32 %569, %568, !dbg !687
  store i32 %570, ptr %21, align 4, !dbg !687
  %571 = load ptr, ptr %18, align 4, !dbg !688
  %572 = load i8, ptr %571, align 4, !dbg !690
  %573 = lshr i8 %572, 2, !dbg !690
  %574 = and i8 %573, 1, !dbg !690
  %575 = trunc i8 %574 to i1, !dbg !690
  br i1 %575, label %623, label %576, !dbg !691

576:                                              ; preds = %567
  call void @llvm.dbg.declare(metadata ptr %35, metadata !692, metadata !DIExpression()), !dbg !694
  store i8 32, ptr %35, align 1, !dbg !694
  %577 = load ptr, ptr %18, align 4, !dbg !695
  %578 = load i8, ptr %577, align 4, !dbg !697
  %579 = lshr i8 %578, 6, !dbg !697
  %580 = and i8 %579, 1, !dbg !697
  %581 = trunc i8 %580 to i1, !dbg !697
  br i1 %581, label %582, label %602, !dbg !698

582:                                              ; preds = %576
  %583 = load i8, ptr %25, align 1, !dbg !699
  %584 = zext i8 %583 to i32, !dbg !699
  %585 = icmp ne i32 %584, 0, !dbg !702
  br i1 %585, label %586, label %601, !dbg !703

586:                                              ; preds = %582
  br label %587, !dbg !704

587:                                              ; preds = %586
  call void @llvm.dbg.declare(metadata ptr %36, metadata !706, metadata !DIExpression()), !dbg !708
  %588 = load ptr, ptr %8, align 4, !dbg !709
  %589 = load i8, ptr %25, align 1, !dbg !710
  %590 = zext i8 %589 to i32, !dbg !711
  %591 = load ptr, ptr %9, align 4, !dbg !712
  %592 = call i32 %588(i32 noundef %590, ptr noundef %591), !dbg !713
  store i32 %592, ptr %36, align 4, !dbg !708
  %593 = load i32, ptr %36, align 4, !dbg !714
  %594 = icmp slt i32 %593, 0, !dbg !716
  br i1 %594, label %595, label %597, !dbg !717

595:                                              ; preds = %587
  %596 = load i32, ptr %36, align 4, !dbg !718
  store i32 %596, ptr %6, align 4, !dbg !720
  br label %755, !dbg !720

597:                                              ; preds = %587
  %598 = load i32, ptr %13, align 4, !dbg !721
  %599 = add i32 %598, 1, !dbg !721
  store i32 %599, ptr %13, align 4, !dbg !721
  br label %600, !dbg !722

600:                                              ; preds = %597
  store i8 0, ptr %25, align 1, !dbg !723
  br label %601, !dbg !724

601:                                              ; preds = %600, %582
  store i8 48, ptr %35, align 1, !dbg !725
  br label %602, !dbg !726

602:                                              ; preds = %601, %576
  br label %603, !dbg !727

603:                                              ; preds = %621, %602
  %604 = load i32, ptr %21, align 4, !dbg !728
  %605 = add nsw i32 %604, -1, !dbg !728
  store i32 %605, ptr %21, align 4, !dbg !728
  %606 = icmp sgt i32 %604, 0, !dbg !729
  br i1 %606, label %607, label %622, !dbg !727

607:                                              ; preds = %603
  br label %608, !dbg !730

608:                                              ; preds = %607
  call void @llvm.dbg.declare(metadata ptr %37, metadata !732, metadata !DIExpression()), !dbg !734
  %609 = load ptr, ptr %8, align 4, !dbg !735
  %610 = load i8, ptr %35, align 1, !dbg !736
  %611 = zext i8 %610 to i32, !dbg !737
  %612 = load ptr, ptr %9, align 4, !dbg !738
  %613 = call i32 %609(i32 noundef %611, ptr noundef %612), !dbg !739
  store i32 %613, ptr %37, align 4, !dbg !734
  %614 = load i32, ptr %37, align 4, !dbg !740
  %615 = icmp slt i32 %614, 0, !dbg !742
  br i1 %615, label %616, label %618, !dbg !743

616:                                              ; preds = %608
  %617 = load i32, ptr %37, align 4, !dbg !744
  store i32 %617, ptr %6, align 4, !dbg !746
  br label %755, !dbg !746

618:                                              ; preds = %608
  %619 = load i32, ptr %13, align 4, !dbg !747
  %620 = add i32 %619, 1, !dbg !747
  store i32 %620, ptr %13, align 4, !dbg !747
  br label %621, !dbg !748

621:                                              ; preds = %618
  br label %603, !dbg !727, !llvm.loop !749

622:                                              ; preds = %603
  br label %623, !dbg !751

623:                                              ; preds = %622, %567
  br label %624, !dbg !752

624:                                              ; preds = %623, %564
  %625 = load i8, ptr %25, align 1, !dbg !753
  %626 = zext i8 %625 to i32, !dbg !753
  %627 = icmp ne i32 %626, 0, !dbg !755
  br i1 %627, label %628, label %643, !dbg !756

628:                                              ; preds = %624
  br label %629, !dbg !757

629:                                              ; preds = %628
  call void @llvm.dbg.declare(metadata ptr %38, metadata !759, metadata !DIExpression()), !dbg !761
  %630 = load ptr, ptr %8, align 4, !dbg !762
  %631 = load i8, ptr %25, align 1, !dbg !763
  %632 = zext i8 %631 to i32, !dbg !764
  %633 = load ptr, ptr %9, align 4, !dbg !765
  %634 = call i32 %630(i32 noundef %632, ptr noundef %633), !dbg !766
  store i32 %634, ptr %38, align 4, !dbg !761
  %635 = load i32, ptr %38, align 4, !dbg !767
  %636 = icmp slt i32 %635, 0, !dbg !769
  br i1 %636, label %637, label %639, !dbg !770

637:                                              ; preds = %629
  %638 = load i32, ptr %38, align 4, !dbg !771
  store i32 %638, ptr %6, align 4, !dbg !773
  br label %755, !dbg !773

639:                                              ; preds = %629
  %640 = load i32, ptr %13, align 4, !dbg !774
  %641 = add i32 %640, 1, !dbg !774
  store i32 %641, ptr %13, align 4, !dbg !774
  br label %642, !dbg !775

642:                                              ; preds = %639
  br label %643, !dbg !776

643:                                              ; preds = %642, %624
  %644 = load ptr, ptr %18, align 4, !dbg !777
  %645 = getelementptr inbounds %struct.conversion, ptr %644, i32 0, i32 2, !dbg !781
  %646 = load i8, ptr %645, align 2, !dbg !781
  %647 = lshr i8 %646, 4, !dbg !781
  %648 = and i8 %647, 1, !dbg !781
  %649 = trunc i8 %648 to i1, !dbg !781
  %650 = zext i1 %649 to i32, !dbg !777
  %651 = load ptr, ptr %18, align 4, !dbg !782
  %652 = getelementptr inbounds %struct.conversion, ptr %651, i32 0, i32 2, !dbg !783
  %653 = load i8, ptr %652, align 2, !dbg !783
  %654 = lshr i8 %653, 3, !dbg !783
  %655 = and i8 %654, 1, !dbg !783
  %656 = trunc i8 %655 to i1, !dbg !783
  %657 = zext i1 %656 to i32, !dbg !782
  %658 = or i32 %650, %657, !dbg !784
  %659 = icmp ne i32 %658, 0, !dbg !784
  br i1 %659, label %660, label %673, !dbg !785

660:                                              ; preds = %643
  br label %661, !dbg !786

661:                                              ; preds = %660
  call void @llvm.dbg.declare(metadata ptr %39, metadata !788, metadata !DIExpression()), !dbg !790
  %662 = load ptr, ptr %8, align 4, !dbg !791
  %663 = load ptr, ptr %9, align 4, !dbg !792
  %664 = call i32 %662(i32 noundef 48, ptr noundef %663), !dbg !793
  store i32 %664, ptr %39, align 4, !dbg !790
  %665 = load i32, ptr %39, align 4, !dbg !794
  %666 = icmp slt i32 %665, 0, !dbg !796
  br i1 %666, label %667, label %669, !dbg !797

667:                                              ; preds = %661
  %668 = load i32, ptr %39, align 4, !dbg !798
  store i32 %668, ptr %6, align 4, !dbg !800
  br label %755, !dbg !800

669:                                              ; preds = %661
  %670 = load i32, ptr %13, align 4, !dbg !801
  %671 = add i32 %670, 1, !dbg !801
  store i32 %671, ptr %13, align 4, !dbg !801
  br label %672, !dbg !802

672:                                              ; preds = %669
  br label %673, !dbg !803

673:                                              ; preds = %672, %643
  %674 = load ptr, ptr %18, align 4, !dbg !804
  %675 = getelementptr inbounds %struct.conversion, ptr %674, i32 0, i32 2, !dbg !806
  %676 = load i8, ptr %675, align 2, !dbg !806
  %677 = lshr i8 %676, 4, !dbg !806
  %678 = and i8 %677, 1, !dbg !806
  %679 = trunc i8 %678 to i1, !dbg !806
  br i1 %679, label %680, label %697, !dbg !807

680:                                              ; preds = %673
  br label %681, !dbg !808

681:                                              ; preds = %680
  call void @llvm.dbg.declare(metadata ptr %40, metadata !810, metadata !DIExpression()), !dbg !812
  %682 = load ptr, ptr %8, align 4, !dbg !813
  %683 = load ptr, ptr %18, align 4, !dbg !814
  %684 = getelementptr inbounds %struct.conversion, ptr %683, i32 0, i32 3, !dbg !815
  %685 = load i8, ptr %684, align 1, !dbg !815
  %686 = zext i8 %685 to i32, !dbg !816
  %687 = load ptr, ptr %9, align 4, !dbg !817
  %688 = call i32 %682(i32 noundef %686, ptr noundef %687), !dbg !818
  store i32 %688, ptr %40, align 4, !dbg !812
  %689 = load i32, ptr %40, align 4, !dbg !819
  %690 = icmp slt i32 %689, 0, !dbg !821
  br i1 %690, label %691, label %693, !dbg !822

691:                                              ; preds = %681
  %692 = load i32, ptr %40, align 4, !dbg !823
  store i32 %692, ptr %6, align 4, !dbg !825
  br label %755, !dbg !825

693:                                              ; preds = %681
  %694 = load i32, ptr %13, align 4, !dbg !826
  %695 = add i32 %694, 1, !dbg !826
  store i32 %695, ptr %13, align 4, !dbg !826
  br label %696, !dbg !827

696:                                              ; preds = %693
  br label %697, !dbg !828

697:                                              ; preds = %696, %673
  %698 = load ptr, ptr %18, align 4, !dbg !829
  %699 = getelementptr inbounds %struct.conversion, ptr %698, i32 0, i32 4, !dbg !830
  %700 = load i32, ptr %699, align 4, !dbg !830
  store i32 %700, ptr %34, align 4, !dbg !831
  br label %701, !dbg !832

701:                                              ; preds = %717, %697
  %702 = load i32, ptr %34, align 4, !dbg !833
  %703 = add nsw i32 %702, -1, !dbg !833
  store i32 %703, ptr %34, align 4, !dbg !833
  %704 = icmp sgt i32 %702, 0, !dbg !834
  br i1 %704, label %705, label %718, !dbg !832

705:                                              ; preds = %701
  br label %706, !dbg !835

706:                                              ; preds = %705
  call void @llvm.dbg.declare(metadata ptr %41, metadata !837, metadata !DIExpression()), !dbg !839
  %707 = load ptr, ptr %8, align 4, !dbg !840
  %708 = load ptr, ptr %9, align 4, !dbg !841
  %709 = call i32 %707(i32 noundef 48, ptr noundef %708), !dbg !842
  store i32 %709, ptr %41, align 4, !dbg !839
  %710 = load i32, ptr %41, align 4, !dbg !843
  %711 = icmp slt i32 %710, 0, !dbg !845
  br i1 %711, label %712, label %714, !dbg !846

712:                                              ; preds = %706
  %713 = load i32, ptr %41, align 4, !dbg !847
  store i32 %713, ptr %6, align 4, !dbg !849
  br label %755, !dbg !849

714:                                              ; preds = %706
  %715 = load i32, ptr %13, align 4, !dbg !850
  %716 = add i32 %715, 1, !dbg !850
  store i32 %716, ptr %13, align 4, !dbg !850
  br label %717, !dbg !851

717:                                              ; preds = %714
  br label %701, !dbg !832, !llvm.loop !852

718:                                              ; preds = %701
  br label %719, !dbg !854

719:                                              ; preds = %718
  call void @llvm.dbg.declare(metadata ptr %42, metadata !855, metadata !DIExpression()), !dbg !857
  %720 = load ptr, ptr %8, align 4, !dbg !858
  %721 = load ptr, ptr %9, align 4, !dbg !859
  %722 = load ptr, ptr %23, align 4, !dbg !860
  %723 = load ptr, ptr %24, align 4, !dbg !861
  %724 = call i32 @outs(ptr noundef %720, ptr noundef %721, ptr noundef %722, ptr noundef %723), !dbg !862
  store i32 %724, ptr %42, align 4, !dbg !857
  %725 = load i32, ptr %42, align 4, !dbg !863
  %726 = icmp slt i32 %725, 0, !dbg !865
  br i1 %726, label %727, label %729, !dbg !866

727:                                              ; preds = %719
  %728 = load i32, ptr %42, align 4, !dbg !867
  store i32 %728, ptr %6, align 4, !dbg !869
  br label %755, !dbg !869

729:                                              ; preds = %719
  %730 = load i32, ptr %42, align 4, !dbg !870
  %731 = load i32, ptr %13, align 4, !dbg !871
  %732 = add i32 %731, %730, !dbg !871
  store i32 %732, ptr %13, align 4, !dbg !871
  br label %733, !dbg !872

733:                                              ; preds = %729
  br label %734, !dbg !873

734:                                              ; preds = %749, %733
  %735 = load i32, ptr %21, align 4, !dbg !874
  %736 = icmp sgt i32 %735, 0, !dbg !875
  br i1 %736, label %737, label %752, !dbg !873

737:                                              ; preds = %734
  br label %738, !dbg !876

738:                                              ; preds = %737
  call void @llvm.dbg.declare(metadata ptr %43, metadata !878, metadata !DIExpression()), !dbg !880
  %739 = load ptr, ptr %8, align 4, !dbg !881
  %740 = load ptr, ptr %9, align 4, !dbg !882
  %741 = call i32 %739(i32 noundef 32, ptr noundef %740), !dbg !883
  store i32 %741, ptr %43, align 4, !dbg !880
  %742 = load i32, ptr %43, align 4, !dbg !884
  %743 = icmp slt i32 %742, 0, !dbg !886
  br i1 %743, label %744, label %746, !dbg !887

744:                                              ; preds = %738
  %745 = load i32, ptr %43, align 4, !dbg !888
  store i32 %745, ptr %6, align 4, !dbg !890
  br label %755, !dbg !890

746:                                              ; preds = %738
  %747 = load i32, ptr %13, align 4, !dbg !891
  %748 = add i32 %747, 1, !dbg !891
  store i32 %748, ptr %13, align 4, !dbg !891
  br label %749, !dbg !892

749:                                              ; preds = %746
  %750 = load i32, ptr %21, align 4, !dbg !893
  %751 = add nsw i32 %750, -1, !dbg !893
  store i32 %751, ptr %21, align 4, !dbg !893
  br label %734, !dbg !873, !llvm.loop !894

752:                                              ; preds = %734
  br label %49, !dbg !113, !llvm.loop !144

753:                                              ; preds = %49
  %754 = load i32, ptr %13, align 4, !dbg !896
  store i32 %754, ptr %6, align 4, !dbg !897
  br label %755, !dbg !897

755:                                              ; preds = %753, %744, %727, %712, %691, %667, %637, %616, %595, %390, %371, %70
  %756 = load i32, ptr %6, align 4, !dbg !898
  ret i32 %756, !dbg !898
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_conversion(ptr noundef %0, ptr noundef %1) #0 !dbg !899 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.conversion, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !902, metadata !DIExpression()), !dbg !903
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !904, metadata !DIExpression()), !dbg !905
  %7 = load ptr, ptr %4, align 4, !dbg !906
  %8 = load i8, ptr %6, align 4, !dbg !907
  %9 = and i8 %8, -2, !dbg !907
  %10 = or i8 %9, 0, !dbg !907
  store i8 %10, ptr %6, align 4, !dbg !907
  %11 = load i8, ptr %6, align 4, !dbg !907
  %12 = and i8 %11, -3, !dbg !907
  %13 = or i8 %12, 0, !dbg !907
  store i8 %13, ptr %6, align 4, !dbg !907
  %14 = load i8, ptr %6, align 4, !dbg !907
  %15 = and i8 %14, -5, !dbg !907
  %16 = or i8 %15, 0, !dbg !907
  store i8 %16, ptr %6, align 4, !dbg !907
  %17 = load i8, ptr %6, align 4, !dbg !907
  %18 = and i8 %17, -9, !dbg !907
  %19 = or i8 %18, 0, !dbg !907
  store i8 %19, ptr %6, align 4, !dbg !907
  %20 = load i8, ptr %6, align 4, !dbg !907
  %21 = and i8 %20, -17, !dbg !907
  %22 = or i8 %21, 0, !dbg !907
  store i8 %22, ptr %6, align 4, !dbg !907
  %23 = load i8, ptr %6, align 4, !dbg !907
  %24 = and i8 %23, -33, !dbg !907
  %25 = or i8 %24, 0, !dbg !907
  store i8 %25, ptr %6, align 4, !dbg !907
  %26 = load i8, ptr %6, align 4, !dbg !907
  %27 = and i8 %26, -65, !dbg !907
  %28 = or i8 %27, 0, !dbg !907
  store i8 %28, ptr %6, align 4, !dbg !907
  %29 = load i8, ptr %6, align 4, !dbg !907
  %30 = and i8 %29, 127, !dbg !907
  %31 = or i8 %30, 0, !dbg !907
  store i8 %31, ptr %6, align 4, !dbg !907
  %32 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 1, !dbg !907
  %33 = load i8, ptr %32, align 1, !dbg !907
  %34 = and i8 %33, -2, !dbg !907
  %35 = or i8 %34, 0, !dbg !907
  store i8 %35, ptr %32, align 1, !dbg !907
  %36 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 1, !dbg !907
  %37 = load i8, ptr %36, align 1, !dbg !907
  %38 = and i8 %37, -3, !dbg !907
  %39 = or i8 %38, 0, !dbg !907
  store i8 %39, ptr %36, align 1, !dbg !907
  %40 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 1, !dbg !907
  %41 = load i8, ptr %40, align 1, !dbg !907
  %42 = and i8 %41, -5, !dbg !907
  %43 = or i8 %42, 0, !dbg !907
  store i8 %43, ptr %40, align 1, !dbg !907
  %44 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 1, !dbg !907
  %45 = load i8, ptr %44, align 1, !dbg !907
  %46 = and i8 %45, -121, !dbg !907
  %47 = or i8 %46, 0, !dbg !907
  store i8 %47, ptr %44, align 1, !dbg !907
  %48 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 1, !dbg !907
  %49 = load i8, ptr %48, align 1, !dbg !907
  %50 = and i8 %49, 127, !dbg !907
  %51 = or i8 %50, 0, !dbg !907
  store i8 %51, ptr %48, align 1, !dbg !907
  %52 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 2, !dbg !907
  %53 = load i8, ptr %52, align 2, !dbg !907
  %54 = and i8 %53, -8, !dbg !907
  %55 = or i8 %54, 0, !dbg !907
  store i8 %55, ptr %52, align 2, !dbg !907
  %56 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 2, !dbg !907
  %57 = load i8, ptr %56, align 2, !dbg !907
  %58 = and i8 %57, -9, !dbg !907
  %59 = or i8 %58, 0, !dbg !907
  store i8 %59, ptr %56, align 2, !dbg !907
  %60 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 2, !dbg !907
  %61 = load i8, ptr %60, align 2, !dbg !907
  %62 = and i8 %61, -17, !dbg !907
  %63 = or i8 %62, 0, !dbg !907
  store i8 %63, ptr %60, align 2, !dbg !907
  %64 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 2, !dbg !907
  %65 = load i8, ptr %64, align 2, !dbg !907
  %66 = and i8 %65, -33, !dbg !907
  %67 = or i8 %66, 0, !dbg !907
  store i8 %67, ptr %64, align 2, !dbg !907
  %68 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 2, !dbg !907
  %69 = load i8, ptr %68, align 2, !dbg !907
  %70 = and i8 %69, -65, !dbg !907
  %71 = or i8 %70, 0, !dbg !907
  store i8 %71, ptr %68, align 2, !dbg !907
  %72 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 3, !dbg !907
  store i8 0, ptr %72, align 1, !dbg !907
  %73 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 4, !dbg !907
  call void @llvm.memset.p0.i32(ptr align 4 %73, i8 0, i32 4, i1 false), !dbg !907
  %74 = getelementptr inbounds %struct.conversion, ptr %6, i32 0, i32 5, !dbg !907
  call void @llvm.memset.p0.i32(ptr align 4 %74, i8 0, i32 4, i1 false), !dbg !907
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %7, ptr align 4 %6, i32 12, i1 false), !dbg !908
  %75 = load ptr, ptr %5, align 4, !dbg !909
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !909
  store ptr %76, ptr %5, align 4, !dbg !909
  %77 = load ptr, ptr %5, align 4, !dbg !910
  %78 = load i8, ptr %77, align 1, !dbg !912
  %79 = zext i8 %78 to i32, !dbg !912
  %80 = icmp eq i32 %79, 37, !dbg !913
  br i1 %80, label %81, label %88, !dbg !914

81:                                               ; preds = %2
  %82 = load ptr, ptr %5, align 4, !dbg !915
  %83 = getelementptr inbounds i8, ptr %82, i32 1, !dbg !915
  store ptr %83, ptr %5, align 4, !dbg !915
  %84 = load i8, ptr %82, align 1, !dbg !917
  %85 = load ptr, ptr %4, align 4, !dbg !918
  %86 = getelementptr inbounds %struct.conversion, ptr %85, i32 0, i32 3, !dbg !919
  store i8 %84, ptr %86, align 1, !dbg !920
  %87 = load ptr, ptr %5, align 4, !dbg !921
  store ptr %87, ptr %3, align 4, !dbg !922
  br label %105, !dbg !922

88:                                               ; preds = %2
  %89 = load ptr, ptr %4, align 4, !dbg !923
  %90 = load ptr, ptr %5, align 4, !dbg !924
  %91 = call ptr @extract_flags(ptr noundef %89, ptr noundef %90), !dbg !925
  store ptr %91, ptr %5, align 4, !dbg !926
  %92 = load ptr, ptr %4, align 4, !dbg !927
  %93 = load ptr, ptr %5, align 4, !dbg !928
  %94 = call ptr @extract_width(ptr noundef %92, ptr noundef %93), !dbg !929
  store ptr %94, ptr %5, align 4, !dbg !930
  %95 = load ptr, ptr %4, align 4, !dbg !931
  %96 = load ptr, ptr %5, align 4, !dbg !932
  %97 = call ptr @extract_prec(ptr noundef %95, ptr noundef %96), !dbg !933
  store ptr %97, ptr %5, align 4, !dbg !934
  %98 = load ptr, ptr %4, align 4, !dbg !935
  %99 = load ptr, ptr %5, align 4, !dbg !936
  %100 = call ptr @extract_length(ptr noundef %98, ptr noundef %99), !dbg !937
  store ptr %100, ptr %5, align 4, !dbg !938
  %101 = load ptr, ptr %4, align 4, !dbg !939
  %102 = load ptr, ptr %5, align 4, !dbg !940
  %103 = call ptr @extract_specifier(ptr noundef %101, ptr noundef %102), !dbg !941
  store ptr %103, ptr %5, align 4, !dbg !942
  %104 = load ptr, ptr %5, align 4, !dbg !943
  store ptr %104, ptr %3, align 4, !dbg !944
  br label %105, !dbg !944

105:                                              ; preds = %88, %81
  %106 = load ptr, ptr %3, align 4, !dbg !945
  ret ptr %106, !dbg !945
}

; Function Attrs: noinline nounwind optnone
define internal i32 @outs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !946 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !949, metadata !DIExpression()), !dbg !950
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !951, metadata !DIExpression()), !dbg !952
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !953, metadata !DIExpression()), !dbg !954
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !955, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.declare(metadata ptr %10, metadata !957, metadata !DIExpression()), !dbg !958
  store i32 0, ptr %10, align 4, !dbg !958
  br label %12, !dbg !959

12:                                               ; preds = %40, %4
  %13 = load ptr, ptr %8, align 4, !dbg !960
  %14 = load ptr, ptr %9, align 4, !dbg !961
  %15 = icmp ult ptr %13, %14, !dbg !962
  br i1 %15, label %26, label %16, !dbg !963

16:                                               ; preds = %12
  %17 = load ptr, ptr %9, align 4, !dbg !964
  %18 = icmp eq ptr %17, null, !dbg !965
  br i1 %18, label %19, label %24, !dbg !966

19:                                               ; preds = %16
  %20 = load ptr, ptr %8, align 4, !dbg !967
  %21 = load i8, ptr %20, align 1, !dbg !968
  %22 = zext i8 %21 to i32, !dbg !968
  %23 = icmp ne i32 %22, 0, !dbg !966
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi i1 [ false, %16 ], [ %23, %19 ], !dbg !969
  br label %26, !dbg !963

26:                                               ; preds = %24, %12
  %27 = phi i1 [ true, %12 ], [ %25, %24 ]
  br i1 %27, label %28, label %43, !dbg !959

28:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %11, metadata !970, metadata !DIExpression()), !dbg !972
  %29 = load ptr, ptr %6, align 4, !dbg !973
  %30 = load ptr, ptr %8, align 4, !dbg !974
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !974
  store ptr %31, ptr %8, align 4, !dbg !974
  %32 = load i8, ptr %30, align 1, !dbg !975
  %33 = zext i8 %32 to i32, !dbg !976
  %34 = load ptr, ptr %7, align 4, !dbg !977
  %35 = call i32 %29(i32 noundef %33, ptr noundef %34), !dbg !973
  store i32 %35, ptr %11, align 4, !dbg !972
  %36 = load i32, ptr %11, align 4, !dbg !978
  %37 = icmp slt i32 %36, 0, !dbg !980
  br i1 %37, label %38, label %40, !dbg !981

38:                                               ; preds = %28
  %39 = load i32, ptr %11, align 4, !dbg !982
  store i32 %39, ptr %5, align 4, !dbg !984
  br label %45, !dbg !984

40:                                               ; preds = %28
  %41 = load i32, ptr %10, align 4, !dbg !985
  %42 = add i32 %41, 1, !dbg !985
  store i32 %42, ptr %10, align 4, !dbg !985
  br label %12, !dbg !959, !llvm.loop !986

43:                                               ; preds = %26
  %44 = load i32, ptr %10, align 4, !dbg !988
  store i32 %44, ptr %5, align 4, !dbg !989
  br label %45, !dbg !989

45:                                               ; preds = %43, %38
  %46 = load i32, ptr %5, align 4, !dbg !990
  ret i32 %46, !dbg !990
}

declare i32 @strnlen(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @strlen(ptr noundef) #4

; Function Attrs: noinline nounwind optnone
define internal ptr @encode_uint(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !991 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 4
  %12 = alloca i32, align 4
  store i64 %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !995, metadata !DIExpression()), !dbg !996
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !997, metadata !DIExpression()), !dbg !998
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !999, metadata !DIExpression()), !dbg !1000
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1001, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1003, metadata !DIExpression()), !dbg !1004
  %13 = load ptr, ptr %6, align 4, !dbg !1005
  %14 = getelementptr inbounds %struct.conversion, ptr %13, i32 0, i32 3, !dbg !1006
  %15 = load i8, ptr %14, align 1, !dbg !1006
  %16 = zext i8 %15 to i32, !dbg !1007
  %17 = getelementptr inbounds i8, ptr getelementptr inbounds (i8, ptr @__aeabi_ctype_table_, i32 1), i32 %16, !dbg !1008
  %18 = load i8, ptr %17, align 1, !dbg !1008
  %19 = zext i8 %18 to i32, !dbg !1008
  %20 = and i32 %19, 64, !dbg !1009
  %21 = icmp ne i32 %20, 0, !dbg !1010
  %22 = zext i1 %21 to i8, !dbg !1004
  store i8 %22, ptr %9, align 1, !dbg !1004
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1011, metadata !DIExpression()), !dbg !1013
  %23 = load ptr, ptr %6, align 4, !dbg !1014
  %24 = getelementptr inbounds %struct.conversion, ptr %23, i32 0, i32 3, !dbg !1015
  %25 = load i8, ptr %24, align 1, !dbg !1015
  %26 = call i32 @conversion_radix(i8 noundef zeroext %25), !dbg !1016
  store i32 %26, ptr %10, align 4, !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1017, metadata !DIExpression()), !dbg !1018
  %27 = load ptr, ptr %7, align 4, !dbg !1019
  %28 = load ptr, ptr %8, align 4, !dbg !1020
  %29 = load ptr, ptr %7, align 4, !dbg !1021
  %30 = ptrtoint ptr %28 to i32, !dbg !1022
  %31 = ptrtoint ptr %29 to i32, !dbg !1022
  %32 = sub i32 %30, %31, !dbg !1022
  %33 = getelementptr inbounds i8, ptr %27, i32 %32, !dbg !1023
  store ptr %33, ptr %11, align 4, !dbg !1018
  br label %34, !dbg !1024

34:                                               ; preds = %74, %4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1025, metadata !DIExpression()), !dbg !1027
  %35 = load i64, ptr %5, align 8, !dbg !1028
  %36 = load i32, ptr %10, align 4, !dbg !1029
  %37 = zext i32 %36 to i64, !dbg !1029
  %38 = urem i64 %35, %37, !dbg !1030
  %39 = trunc i64 %38 to i32, !dbg !1031
  store i32 %39, ptr %12, align 4, !dbg !1027
  %40 = load i32, ptr %12, align 4, !dbg !1032
  %41 = icmp ule i32 %40, 9, !dbg !1033
  br i1 %41, label %42, label %45, !dbg !1034

42:                                               ; preds = %34
  %43 = load i32, ptr %12, align 4, !dbg !1035
  %44 = add i32 48, %43, !dbg !1036
  br label %58, !dbg !1034

45:                                               ; preds = %34
  %46 = load i8, ptr %9, align 1, !dbg !1037
  %47 = trunc i8 %46 to i1, !dbg !1037
  br i1 %47, label %48, label %52, !dbg !1037

48:                                               ; preds = %45
  %49 = load i32, ptr %12, align 4, !dbg !1038
  %50 = add i32 65, %49, !dbg !1039
  %51 = sub i32 %50, 10, !dbg !1040
  br label %56, !dbg !1037

52:                                               ; preds = %45
  %53 = load i32, ptr %12, align 4, !dbg !1041
  %54 = add i32 97, %53, !dbg !1042
  %55 = sub i32 %54, 10, !dbg !1043
  br label %56, !dbg !1037

56:                                               ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ], !dbg !1037
  br label %58, !dbg !1034

58:                                               ; preds = %56, %42
  %59 = phi i32 [ %44, %42 ], [ %57, %56 ], !dbg !1034
  %60 = trunc i32 %59 to i8, !dbg !1034
  %61 = load ptr, ptr %11, align 4, !dbg !1044
  %62 = getelementptr inbounds i8, ptr %61, i32 -1, !dbg !1044
  store ptr %62, ptr %11, align 4, !dbg !1044
  store i8 %60, ptr %62, align 1, !dbg !1045
  %63 = load i32, ptr %10, align 4, !dbg !1046
  %64 = zext i32 %63 to i64, !dbg !1046
  %65 = load i64, ptr %5, align 8, !dbg !1047
  %66 = udiv i64 %65, %64, !dbg !1047
  store i64 %66, ptr %5, align 8, !dbg !1047
  br label %67, !dbg !1048

67:                                               ; preds = %58
  %68 = load i64, ptr %5, align 8, !dbg !1049
  %69 = icmp ne i64 %68, 0, !dbg !1050
  br i1 %69, label %70, label %74, !dbg !1051

70:                                               ; preds = %67
  %71 = load ptr, ptr %7, align 4, !dbg !1052
  %72 = load ptr, ptr %11, align 4, !dbg !1053
  %73 = icmp ult ptr %71, %72, !dbg !1054
  br label %74

74:                                               ; preds = %70, %67
  %75 = phi i1 [ false, %67 ], [ %73, %70 ], !dbg !1055
  br i1 %75, label %34, label %76, !dbg !1048, !llvm.loop !1056

76:                                               ; preds = %74
  %77 = load ptr, ptr %6, align 4, !dbg !1058
  %78 = load i8, ptr %77, align 4, !dbg !1060
  %79 = lshr i8 %78, 5, !dbg !1060
  %80 = and i8 %79, 1, !dbg !1060
  %81 = trunc i8 %80 to i1, !dbg !1060
  br i1 %81, label %82, label %103, !dbg !1061

82:                                               ; preds = %76
  %83 = load i32, ptr %10, align 4, !dbg !1062
  %84 = icmp eq i32 %83, 8, !dbg !1065
  br i1 %84, label %85, label %91, !dbg !1066

85:                                               ; preds = %82
  %86 = load ptr, ptr %6, align 4, !dbg !1067
  %87 = getelementptr inbounds %struct.conversion, ptr %86, i32 0, i32 2, !dbg !1069
  %88 = load i8, ptr %87, align 2, !dbg !1070
  %89 = and i8 %88, -9, !dbg !1070
  %90 = or i8 %89, 8, !dbg !1070
  store i8 %90, ptr %87, align 2, !dbg !1070
  br label %102, !dbg !1071

91:                                               ; preds = %82
  %92 = load i32, ptr %10, align 4, !dbg !1072
  %93 = icmp eq i32 %92, 16, !dbg !1074
  br i1 %93, label %94, label %100, !dbg !1075

94:                                               ; preds = %91
  %95 = load ptr, ptr %6, align 4, !dbg !1076
  %96 = getelementptr inbounds %struct.conversion, ptr %95, i32 0, i32 2, !dbg !1078
  %97 = load i8, ptr %96, align 2, !dbg !1079
  %98 = and i8 %97, -17, !dbg !1079
  %99 = or i8 %98, 16, !dbg !1079
  store i8 %99, ptr %96, align 2, !dbg !1079
  br label %101, !dbg !1080

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %94
  br label %102

102:                                              ; preds = %101, %85
  br label %103, !dbg !1081

103:                                              ; preds = %102, %76
  %104 = load ptr, ptr %11, align 4, !dbg !1082
  ret ptr %104, !dbg !1083
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone
define internal void @store_count(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1084 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1089, metadata !DIExpression()), !dbg !1090
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1091, metadata !DIExpression()), !dbg !1092
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1093, metadata !DIExpression()), !dbg !1094
  %7 = load ptr, ptr %4, align 4, !dbg !1095
  %8 = getelementptr inbounds %struct.conversion, ptr %7, i32 0, i32 1, !dbg !1096
  %9 = load i8, ptr %8, align 1, !dbg !1096
  %10 = lshr i8 %9, 3, !dbg !1096
  %11 = and i8 %10, 15, !dbg !1096
  %12 = zext i8 %11 to i32, !dbg !1096
  %13 = trunc i32 %12 to i8, !dbg !1097
  %14 = zext i8 %13 to i32, !dbg !1097
  switch i32 %14, label %43 [
    i32 0, label %15
    i32 1, label %18
    i32 2, label %22
    i32 3, label %26
    i32 4, label %29
    i32 5, label %33
    i32 6, label %37
    i32 7, label %40
  ], !dbg !1098

15:                                               ; preds = %3
  %16 = load i32, ptr %6, align 4, !dbg !1099
  %17 = load ptr, ptr %5, align 4, !dbg !1101
  store i32 %16, ptr %17, align 4, !dbg !1102
  br label %44, !dbg !1103

18:                                               ; preds = %3
  %19 = load i32, ptr %6, align 4, !dbg !1104
  %20 = trunc i32 %19 to i8, !dbg !1105
  %21 = load ptr, ptr %5, align 4, !dbg !1106
  store i8 %20, ptr %21, align 1, !dbg !1107
  br label %44, !dbg !1108

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !1109
  %24 = trunc i32 %23 to i16, !dbg !1110
  %25 = load ptr, ptr %5, align 4, !dbg !1111
  store i16 %24, ptr %25, align 2, !dbg !1112
  br label %44, !dbg !1113

26:                                               ; preds = %3
  %27 = load i32, ptr %6, align 4, !dbg !1114
  %28 = load ptr, ptr %5, align 4, !dbg !1115
  store i32 %27, ptr %28, align 4, !dbg !1116
  br label %44, !dbg !1117

29:                                               ; preds = %3
  %30 = load i32, ptr %6, align 4, !dbg !1118
  %31 = sext i32 %30 to i64, !dbg !1119
  %32 = load ptr, ptr %5, align 4, !dbg !1120
  store i64 %31, ptr %32, align 8, !dbg !1121
  br label %44, !dbg !1122

33:                                               ; preds = %3
  %34 = load i32, ptr %6, align 4, !dbg !1123
  %35 = sext i32 %34 to i64, !dbg !1124
  %36 = load ptr, ptr %5, align 4, !dbg !1125
  store i64 %35, ptr %36, align 8, !dbg !1126
  br label %44, !dbg !1127

37:                                               ; preds = %3
  %38 = load i32, ptr %6, align 4, !dbg !1128
  %39 = load ptr, ptr %5, align 4, !dbg !1129
  store i32 %38, ptr %39, align 4, !dbg !1130
  br label %44, !dbg !1131

40:                                               ; preds = %3
  %41 = load i32, ptr %6, align 4, !dbg !1132
  %42 = load ptr, ptr %5, align 4, !dbg !1133
  store i32 %41, ptr %42, align 4, !dbg !1134
  br label %44, !dbg !1135

43:                                               ; preds = %3
  br label %44, !dbg !1136

44:                                               ; preds = %43, %40, %37, %33, %29, %26, %22, %18, %15
  ret void, !dbg !1137
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_flags(ptr noundef %0, ptr noundef %1) #0 !dbg !1138 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1139, metadata !DIExpression()), !dbg !1140
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1141, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1143, metadata !DIExpression()), !dbg !1144
  store i8 1, ptr %5, align 1, !dbg !1144
  br label %6, !dbg !1145

6:                                                ; preds = %43, %2
  %7 = load ptr, ptr %4, align 4, !dbg !1146
  %8 = load i8, ptr %7, align 1, !dbg !1148
  %9 = zext i8 %8 to i32, !dbg !1148
  switch i32 %9, label %35 [
    i32 45, label %10
    i32 43, label %15
    i32 32, label %20
    i32 35, label %25
    i32 48, label %30
  ], !dbg !1149

10:                                               ; preds = %6
  %11 = load ptr, ptr %3, align 4, !dbg !1150
  %12 = load i8, ptr %11, align 4, !dbg !1152
  %13 = and i8 %12, -5, !dbg !1152
  %14 = or i8 %13, 4, !dbg !1152
  store i8 %14, ptr %11, align 4, !dbg !1152
  br label %36, !dbg !1153

15:                                               ; preds = %6
  %16 = load ptr, ptr %3, align 4, !dbg !1154
  %17 = load i8, ptr %16, align 4, !dbg !1155
  %18 = and i8 %17, -9, !dbg !1155
  %19 = or i8 %18, 8, !dbg !1155
  store i8 %19, ptr %16, align 4, !dbg !1155
  br label %36, !dbg !1156

20:                                               ; preds = %6
  %21 = load ptr, ptr %3, align 4, !dbg !1157
  %22 = load i8, ptr %21, align 4, !dbg !1158
  %23 = and i8 %22, -17, !dbg !1158
  %24 = or i8 %23, 16, !dbg !1158
  store i8 %24, ptr %21, align 4, !dbg !1158
  br label %36, !dbg !1159

25:                                               ; preds = %6
  %26 = load ptr, ptr %3, align 4, !dbg !1160
  %27 = load i8, ptr %26, align 4, !dbg !1161
  %28 = and i8 %27, -33, !dbg !1161
  %29 = or i8 %28, 32, !dbg !1161
  store i8 %29, ptr %26, align 4, !dbg !1161
  br label %36, !dbg !1162

30:                                               ; preds = %6
  %31 = load ptr, ptr %3, align 4, !dbg !1163
  %32 = load i8, ptr %31, align 4, !dbg !1164
  %33 = and i8 %32, -65, !dbg !1164
  %34 = or i8 %33, 64, !dbg !1164
  store i8 %34, ptr %31, align 4, !dbg !1164
  br label %36, !dbg !1165

35:                                               ; preds = %6
  store i8 0, ptr %5, align 1, !dbg !1166
  br label %36, !dbg !1167

36:                                               ; preds = %35, %30, %25, %20, %15, %10
  %37 = load i8, ptr %5, align 1, !dbg !1168
  %38 = trunc i8 %37 to i1, !dbg !1168
  br i1 %38, label %39, label %42, !dbg !1170

39:                                               ; preds = %36
  %40 = load ptr, ptr %4, align 4, !dbg !1171
  %41 = getelementptr inbounds i8, ptr %40, i32 1, !dbg !1171
  store ptr %41, ptr %4, align 4, !dbg !1171
  br label %42, !dbg !1173

42:                                               ; preds = %39, %36
  br label %43, !dbg !1174

43:                                               ; preds = %42
  %44 = load i8, ptr %5, align 1, !dbg !1175
  %45 = trunc i8 %44 to i1, !dbg !1175
  br i1 %45, label %6, label %46, !dbg !1174, !llvm.loop !1176

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 4, !dbg !1178
  %48 = load i8, ptr %47, align 4, !dbg !1180
  %49 = lshr i8 %48, 6, !dbg !1180
  %50 = and i8 %49, 1, !dbg !1180
  %51 = trunc i8 %50 to i1, !dbg !1180
  br i1 %51, label %52, label %63, !dbg !1181

52:                                               ; preds = %46
  %53 = load ptr, ptr %3, align 4, !dbg !1182
  %54 = load i8, ptr %53, align 4, !dbg !1183
  %55 = lshr i8 %54, 2, !dbg !1183
  %56 = and i8 %55, 1, !dbg !1183
  %57 = trunc i8 %56 to i1, !dbg !1183
  br i1 %57, label %58, label %63, !dbg !1184

58:                                               ; preds = %52
  %59 = load ptr, ptr %3, align 4, !dbg !1185
  %60 = load i8, ptr %59, align 4, !dbg !1187
  %61 = and i8 %60, -65, !dbg !1187
  %62 = or i8 %61, 0, !dbg !1187
  store i8 %62, ptr %59, align 4, !dbg !1187
  br label %63, !dbg !1188

63:                                               ; preds = %58, %52, %46
  %64 = load ptr, ptr %4, align 4, !dbg !1189
  ret ptr %64, !dbg !1190
}

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_width(ptr noundef %0, ptr noundef %1) #0 !dbg !1191 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1192, metadata !DIExpression()), !dbg !1193
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1194, metadata !DIExpression()), !dbg !1195
  %8 = load ptr, ptr %4, align 4, !dbg !1196
  %9 = load i8, ptr %8, align 4, !dbg !1197
  %10 = and i8 %9, 127, !dbg !1197
  %11 = or i8 %10, -128, !dbg !1197
  store i8 %11, ptr %8, align 4, !dbg !1197
  %12 = load ptr, ptr %5, align 4, !dbg !1198
  %13 = load i8, ptr %12, align 1, !dbg !1200
  %14 = zext i8 %13 to i32, !dbg !1200
  %15 = icmp eq i32 %14, 42, !dbg !1201
  br i1 %15, label %16, label %24, !dbg !1202

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4, !dbg !1203
  %18 = getelementptr inbounds %struct.conversion, ptr %17, i32 0, i32 1, !dbg !1205
  %19 = load i8, ptr %18, align 1, !dbg !1206
  %20 = and i8 %19, -2, !dbg !1206
  %21 = or i8 %20, 1, !dbg !1206
  store i8 %21, ptr %18, align 1, !dbg !1206
  %22 = load ptr, ptr %5, align 4, !dbg !1207
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !1207
  store ptr %23, ptr %5, align 4, !dbg !1207
  store ptr %23, ptr %3, align 4, !dbg !1208
  br label %67, !dbg !1208

24:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1209, metadata !DIExpression()), !dbg !1210
  %25 = load ptr, ptr %5, align 4, !dbg !1211
  store ptr %25, ptr %6, align 4, !dbg !1210
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1212, metadata !DIExpression()), !dbg !1213
  %26 = call i32 @extract_decimal(ptr noundef %5), !dbg !1214
  store i32 %26, ptr %7, align 4, !dbg !1213
  %27 = load ptr, ptr %5, align 4, !dbg !1215
  %28 = load ptr, ptr %6, align 4, !dbg !1217
  %29 = icmp ne ptr %27, %28, !dbg !1218
  br i1 %29, label %30, label %65, !dbg !1219

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 4, !dbg !1220
  %32 = load i8, ptr %31, align 4, !dbg !1222
  %33 = and i8 %32, 127, !dbg !1222
  %34 = or i8 %33, -128, !dbg !1222
  store i8 %34, ptr %31, align 4, !dbg !1222
  %35 = load i32, ptr %7, align 4, !dbg !1223
  %36 = load ptr, ptr %4, align 4, !dbg !1224
  %37 = getelementptr inbounds %struct.conversion, ptr %36, i32 0, i32 4, !dbg !1225
  store i32 %35, ptr %37, align 4, !dbg !1226
  %38 = load ptr, ptr %4, align 4, !dbg !1227
  %39 = getelementptr inbounds %struct.conversion, ptr %38, i32 0, i32 4, !dbg !1228
  %40 = load i32, ptr %39, align 4, !dbg !1228
  %41 = icmp slt i32 %40, 0, !dbg !1229
  br i1 %41, label %48, label %42, !dbg !1230

42:                                               ; preds = %30
  %43 = load i32, ptr %7, align 4, !dbg !1231
  %44 = load ptr, ptr %4, align 4, !dbg !1232
  %45 = getelementptr inbounds %struct.conversion, ptr %44, i32 0, i32 4, !dbg !1233
  %46 = load i32, ptr %45, align 4, !dbg !1233
  %47 = icmp ne i32 %43, %46, !dbg !1234
  br label %48, !dbg !1230

48:                                               ; preds = %42, %30
  %49 = phi i1 [ true, %30 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32, !dbg !1230
  %51 = load ptr, ptr %4, align 4, !dbg !1235
  %52 = load i8, ptr %51, align 4, !dbg !1236
  %53 = lshr i8 %52, 1, !dbg !1236
  %54 = and i8 %53, 1, !dbg !1236
  %55 = trunc i8 %54 to i1, !dbg !1236
  %56 = zext i1 %55 to i32, !dbg !1236
  %57 = or i32 %56, %50, !dbg !1236
  %58 = icmp ne i32 %57, 0, !dbg !1236
  %59 = zext i1 %58 to i8, !dbg !1236
  %60 = load i8, ptr %51, align 4, !dbg !1236
  %61 = shl i8 %59, 1, !dbg !1236
  %62 = and i8 %60, -3, !dbg !1236
  %63 = or i8 %62, %61, !dbg !1236
  store i8 %63, ptr %51, align 4, !dbg !1236
  %64 = trunc i8 %59 to i1, !dbg !1236
  br label %65, !dbg !1237

65:                                               ; preds = %48, %24
  %66 = load ptr, ptr %5, align 4, !dbg !1238
  store ptr %66, ptr %3, align 4, !dbg !1239
  br label %67, !dbg !1239

67:                                               ; preds = %65, %16
  %68 = load ptr, ptr %3, align 4, !dbg !1240
  ret ptr %68, !dbg !1240
}

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_prec(ptr noundef %0, ptr noundef %1) #0 !dbg !1241 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1242, metadata !DIExpression()), !dbg !1243
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1244, metadata !DIExpression()), !dbg !1245
  %7 = load ptr, ptr %5, align 4, !dbg !1246
  %8 = load i8, ptr %7, align 1, !dbg !1247
  %9 = zext i8 %8 to i32, !dbg !1247
  %10 = icmp eq i32 %9, 46, !dbg !1248
  %11 = load ptr, ptr %4, align 4, !dbg !1249
  %12 = getelementptr inbounds %struct.conversion, ptr %11, i32 0, i32 1, !dbg !1250
  %13 = zext i1 %10 to i8, !dbg !1251
  %14 = load i8, ptr %12, align 1, !dbg !1251
  %15 = shl i8 %13, 1, !dbg !1251
  %16 = and i8 %14, -3, !dbg !1251
  %17 = or i8 %16, %15, !dbg !1251
  store i8 %17, ptr %12, align 1, !dbg !1251
  %18 = trunc i8 %13 to i1, !dbg !1251
  %19 = load ptr, ptr %4, align 4, !dbg !1252
  %20 = getelementptr inbounds %struct.conversion, ptr %19, i32 0, i32 1, !dbg !1254
  %21 = load i8, ptr %20, align 1, !dbg !1254
  %22 = lshr i8 %21, 1, !dbg !1254
  %23 = and i8 %22, 1, !dbg !1254
  %24 = trunc i8 %23 to i1, !dbg !1254
  br i1 %24, label %27, label %25, !dbg !1255

25:                                               ; preds = %2
  %26 = load ptr, ptr %5, align 4, !dbg !1256
  store ptr %26, ptr %3, align 4, !dbg !1258
  br label %75, !dbg !1258

27:                                               ; preds = %2
  %28 = load ptr, ptr %5, align 4, !dbg !1259
  %29 = getelementptr inbounds i8, ptr %28, i32 1, !dbg !1259
  store ptr %29, ptr %5, align 4, !dbg !1259
  %30 = load ptr, ptr %5, align 4, !dbg !1260
  %31 = load i8, ptr %30, align 1, !dbg !1262
  %32 = zext i8 %31 to i32, !dbg !1262
  %33 = icmp eq i32 %32, 42, !dbg !1263
  br i1 %33, label %34, label %42, !dbg !1264

34:                                               ; preds = %27
  %35 = load ptr, ptr %4, align 4, !dbg !1265
  %36 = getelementptr inbounds %struct.conversion, ptr %35, i32 0, i32 1, !dbg !1267
  %37 = load i8, ptr %36, align 1, !dbg !1268
  %38 = and i8 %37, -5, !dbg !1268
  %39 = or i8 %38, 4, !dbg !1268
  store i8 %39, ptr %36, align 1, !dbg !1268
  %40 = load ptr, ptr %5, align 4, !dbg !1269
  %41 = getelementptr inbounds i8, ptr %40, i32 1, !dbg !1269
  store ptr %41, ptr %5, align 4, !dbg !1269
  store ptr %41, ptr %3, align 4, !dbg !1270
  br label %75, !dbg !1270

42:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1271, metadata !DIExpression()), !dbg !1272
  %43 = call i32 @extract_decimal(ptr noundef %5), !dbg !1273
  store i32 %43, ptr %6, align 4, !dbg !1272
  %44 = load i32, ptr %6, align 4, !dbg !1274
  %45 = load ptr, ptr %4, align 4, !dbg !1275
  %46 = getelementptr inbounds %struct.conversion, ptr %45, i32 0, i32 5, !dbg !1276
  store i32 %44, ptr %46, align 4, !dbg !1277
  %47 = load ptr, ptr %4, align 4, !dbg !1278
  %48 = getelementptr inbounds %struct.conversion, ptr %47, i32 0, i32 5, !dbg !1279
  %49 = load i32, ptr %48, align 4, !dbg !1279
  %50 = icmp slt i32 %49, 0, !dbg !1280
  br i1 %50, label %57, label %51, !dbg !1281

51:                                               ; preds = %42
  %52 = load i32, ptr %6, align 4, !dbg !1282
  %53 = load ptr, ptr %4, align 4, !dbg !1283
  %54 = getelementptr inbounds %struct.conversion, ptr %53, i32 0, i32 5, !dbg !1284
  %55 = load i32, ptr %54, align 4, !dbg !1284
  %56 = icmp ne i32 %52, %55, !dbg !1285
  br label %57, !dbg !1281

57:                                               ; preds = %51, %42
  %58 = phi i1 [ true, %42 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32, !dbg !1281
  %60 = load ptr, ptr %4, align 4, !dbg !1286
  %61 = load i8, ptr %60, align 4, !dbg !1287
  %62 = lshr i8 %61, 1, !dbg !1287
  %63 = and i8 %62, 1, !dbg !1287
  %64 = trunc i8 %63 to i1, !dbg !1287
  %65 = zext i1 %64 to i32, !dbg !1287
  %66 = or i32 %65, %59, !dbg !1287
  %67 = icmp ne i32 %66, 0, !dbg !1287
  %68 = zext i1 %67 to i8, !dbg !1287
  %69 = load i8, ptr %60, align 4, !dbg !1287
  %70 = shl i8 %68, 1, !dbg !1287
  %71 = and i8 %69, -3, !dbg !1287
  %72 = or i8 %71, %70, !dbg !1287
  store i8 %72, ptr %60, align 4, !dbg !1287
  %73 = trunc i8 %68 to i1, !dbg !1287
  %74 = load ptr, ptr %5, align 4, !dbg !1288
  store ptr %74, ptr %3, align 4, !dbg !1289
  br label %75, !dbg !1289

75:                                               ; preds = %57, %34, %25
  %76 = load ptr, ptr %3, align 4, !dbg !1290
  ret ptr %76, !dbg !1290
}

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_length(ptr noundef %0, ptr noundef %1) #0 !dbg !1291 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1292, metadata !DIExpression()), !dbg !1293
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1294, metadata !DIExpression()), !dbg !1295
  %5 = load ptr, ptr %4, align 4, !dbg !1296
  %6 = load i8, ptr %5, align 1, !dbg !1297
  %7 = zext i8 %6 to i32, !dbg !1297
  switch i32 %7, label %86 [
    i32 104, label %8
    i32 108, label %29
    i32 106, label %50
    i32 122, label %58
    i32 116, label %66
    i32 76, label %74
  ], !dbg !1298

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 4, !dbg !1299
  %10 = getelementptr inbounds i8, ptr %9, i32 1, !dbg !1299
  store ptr %10, ptr %4, align 4, !dbg !1299
  %11 = load i8, ptr %10, align 1, !dbg !1302
  %12 = zext i8 %11 to i32, !dbg !1302
  %13 = icmp eq i32 %12, 104, !dbg !1303
  br i1 %13, label %14, label %22, !dbg !1304

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4, !dbg !1305
  %16 = getelementptr inbounds %struct.conversion, ptr %15, i32 0, i32 1, !dbg !1307
  %17 = load i8, ptr %16, align 1, !dbg !1308
  %18 = and i8 %17, -121, !dbg !1308
  %19 = or i8 %18, 8, !dbg !1308
  store i8 %19, ptr %16, align 1, !dbg !1308
  %20 = load ptr, ptr %4, align 4, !dbg !1309
  %21 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !1309
  store ptr %21, ptr %4, align 4, !dbg !1309
  br label %28, !dbg !1310

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 4, !dbg !1311
  %24 = getelementptr inbounds %struct.conversion, ptr %23, i32 0, i32 1, !dbg !1313
  %25 = load i8, ptr %24, align 1, !dbg !1314
  %26 = and i8 %25, -121, !dbg !1314
  %27 = or i8 %26, 16, !dbg !1314
  store i8 %27, ptr %24, align 1, !dbg !1314
  br label %28

28:                                               ; preds = %22, %14
  br label %92, !dbg !1315

29:                                               ; preds = %2
  %30 = load ptr, ptr %4, align 4, !dbg !1316
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !1316
  store ptr %31, ptr %4, align 4, !dbg !1316
  %32 = load i8, ptr %31, align 1, !dbg !1318
  %33 = zext i8 %32 to i32, !dbg !1318
  %34 = icmp eq i32 %33, 108, !dbg !1319
  br i1 %34, label %35, label %43, !dbg !1320

35:                                               ; preds = %29
  %36 = load ptr, ptr %3, align 4, !dbg !1321
  %37 = getelementptr inbounds %struct.conversion, ptr %36, i32 0, i32 1, !dbg !1323
  %38 = load i8, ptr %37, align 1, !dbg !1324
  %39 = and i8 %38, -121, !dbg !1324
  %40 = or i8 %39, 32, !dbg !1324
  store i8 %40, ptr %37, align 1, !dbg !1324
  %41 = load ptr, ptr %4, align 4, !dbg !1325
  %42 = getelementptr inbounds i8, ptr %41, i32 1, !dbg !1325
  store ptr %42, ptr %4, align 4, !dbg !1325
  br label %49, !dbg !1326

43:                                               ; preds = %29
  %44 = load ptr, ptr %3, align 4, !dbg !1327
  %45 = getelementptr inbounds %struct.conversion, ptr %44, i32 0, i32 1, !dbg !1329
  %46 = load i8, ptr %45, align 1, !dbg !1330
  %47 = and i8 %46, -121, !dbg !1330
  %48 = or i8 %47, 24, !dbg !1330
  store i8 %48, ptr %45, align 1, !dbg !1330
  br label %49

49:                                               ; preds = %43, %35
  br label %92, !dbg !1331

50:                                               ; preds = %2
  %51 = load ptr, ptr %3, align 4, !dbg !1332
  %52 = getelementptr inbounds %struct.conversion, ptr %51, i32 0, i32 1, !dbg !1333
  %53 = load i8, ptr %52, align 1, !dbg !1334
  %54 = and i8 %53, -121, !dbg !1334
  %55 = or i8 %54, 40, !dbg !1334
  store i8 %55, ptr %52, align 1, !dbg !1334
  %56 = load ptr, ptr %4, align 4, !dbg !1335
  %57 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !1335
  store ptr %57, ptr %4, align 4, !dbg !1335
  br label %92, !dbg !1336

58:                                               ; preds = %2
  %59 = load ptr, ptr %3, align 4, !dbg !1337
  %60 = getelementptr inbounds %struct.conversion, ptr %59, i32 0, i32 1, !dbg !1338
  %61 = load i8, ptr %60, align 1, !dbg !1339
  %62 = and i8 %61, -121, !dbg !1339
  %63 = or i8 %62, 48, !dbg !1339
  store i8 %63, ptr %60, align 1, !dbg !1339
  %64 = load ptr, ptr %4, align 4, !dbg !1340
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1340
  store ptr %65, ptr %4, align 4, !dbg !1340
  br label %92, !dbg !1341

66:                                               ; preds = %2
  %67 = load ptr, ptr %3, align 4, !dbg !1342
  %68 = getelementptr inbounds %struct.conversion, ptr %67, i32 0, i32 1, !dbg !1343
  %69 = load i8, ptr %68, align 1, !dbg !1344
  %70 = and i8 %69, -121, !dbg !1344
  %71 = or i8 %70, 56, !dbg !1344
  store i8 %71, ptr %68, align 1, !dbg !1344
  %72 = load ptr, ptr %4, align 4, !dbg !1345
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !1345
  store ptr %73, ptr %4, align 4, !dbg !1345
  br label %92, !dbg !1346

74:                                               ; preds = %2
  %75 = load ptr, ptr %3, align 4, !dbg !1347
  %76 = getelementptr inbounds %struct.conversion, ptr %75, i32 0, i32 1, !dbg !1348
  %77 = load i8, ptr %76, align 1, !dbg !1349
  %78 = and i8 %77, -121, !dbg !1349
  %79 = or i8 %78, 64, !dbg !1349
  store i8 %79, ptr %76, align 1, !dbg !1349
  %80 = load ptr, ptr %4, align 4, !dbg !1350
  %81 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !1350
  store ptr %81, ptr %4, align 4, !dbg !1350
  %82 = load ptr, ptr %3, align 4, !dbg !1351
  %83 = load i8, ptr %82, align 4, !dbg !1352
  %84 = and i8 %83, -3, !dbg !1352
  %85 = or i8 %84, 2, !dbg !1352
  store i8 %85, ptr %82, align 4, !dbg !1352
  br label %92, !dbg !1353

86:                                               ; preds = %2
  %87 = load ptr, ptr %3, align 4, !dbg !1354
  %88 = getelementptr inbounds %struct.conversion, ptr %87, i32 0, i32 1, !dbg !1355
  %89 = load i8, ptr %88, align 1, !dbg !1356
  %90 = and i8 %89, -121, !dbg !1356
  %91 = or i8 %90, 0, !dbg !1356
  store i8 %91, ptr %88, align 1, !dbg !1356
  br label %92, !dbg !1357

92:                                               ; preds = %86, %74, %66, %58, %50, %49, %28
  %93 = load ptr, ptr %4, align 4, !dbg !1358
  ret ptr %93, !dbg !1359
}

; Function Attrs: noinline nounwind optnone
define internal ptr @extract_specifier(ptr noundef %0, ptr noundef %1) #0 !dbg !1360 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1361, metadata !DIExpression()), !dbg !1362
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1365, metadata !DIExpression()), !dbg !1366
  store i8 0, ptr %5, align 1, !dbg !1366
  %6 = load ptr, ptr %4, align 4, !dbg !1367
  %7 = getelementptr inbounds i8, ptr %6, i32 1, !dbg !1367
  store ptr %7, ptr %4, align 4, !dbg !1367
  %8 = load i8, ptr %6, align 1, !dbg !1368
  %9 = load ptr, ptr %3, align 4, !dbg !1369
  %10 = getelementptr inbounds %struct.conversion, ptr %9, i32 0, i32 3, !dbg !1370
  store i8 %8, ptr %10, align 1, !dbg !1371
  %11 = load ptr, ptr %3, align 4, !dbg !1372
  %12 = getelementptr inbounds %struct.conversion, ptr %11, i32 0, i32 3, !dbg !1373
  %13 = load i8, ptr %12, align 1, !dbg !1373
  %14 = zext i8 %13 to i32, !dbg !1372
  switch i32 %14, label %93 [
    i32 100, label %15
    i32 105, label %15
    i32 111, label %21
    i32 99, label %21
    i32 117, label %21
    i32 120, label %21
    i32 88, label %21
    i32 97, label %57
    i32 65, label %57
    i32 101, label %57
    i32 69, label %57
    i32 102, label %57
    i32 70, label %57
    i32 103, label %57
    i32 71, label %57
    i32 110, label %63
    i32 115, label %78
    i32 112, label %78
  ], !dbg !1374

15:                                               ; preds = %2, %2
  %16 = load ptr, ptr %3, align 4, !dbg !1375
  %17 = getelementptr inbounds %struct.conversion, ptr %16, i32 0, i32 2, !dbg !1377
  %18 = load i8, ptr %17, align 2, !dbg !1378
  %19 = and i8 %18, -8, !dbg !1378
  %20 = or i8 %19, 1, !dbg !1378
  store i8 %20, ptr %17, align 2, !dbg !1378
  br label %27, !dbg !1379

21:                                               ; preds = %2, %2, %2, %2, %2
  %22 = load ptr, ptr %3, align 4, !dbg !1380
  %23 = getelementptr inbounds %struct.conversion, ptr %22, i32 0, i32 2, !dbg !1381
  %24 = load i8, ptr %23, align 2, !dbg !1382
  %25 = and i8 %24, -8, !dbg !1382
  %26 = or i8 %25, 2, !dbg !1382
  store i8 %26, ptr %23, align 2, !dbg !1382
  br label %27, !dbg !1380

27:                                               ; preds = %21, %15
  call void @llvm.dbg.label(metadata !1383), !dbg !1384
  %28 = load ptr, ptr %3, align 4, !dbg !1385
  %29 = getelementptr inbounds %struct.conversion, ptr %28, i32 0, i32 1, !dbg !1387
  %30 = load i8, ptr %29, align 1, !dbg !1387
  %31 = lshr i8 %30, 3, !dbg !1387
  %32 = and i8 %31, 15, !dbg !1387
  %33 = zext i8 %32 to i32, !dbg !1387
  %34 = icmp eq i32 %33, 8, !dbg !1388
  br i1 %34, label %35, label %40, !dbg !1389

35:                                               ; preds = %27
  %36 = load ptr, ptr %3, align 4, !dbg !1390
  %37 = load i8, ptr %36, align 4, !dbg !1392
  %38 = and i8 %37, -2, !dbg !1392
  %39 = or i8 %38, 1, !dbg !1392
  store i8 %39, ptr %36, align 4, !dbg !1392
  br label %40, !dbg !1393

40:                                               ; preds = %35, %27
  %41 = load ptr, ptr %3, align 4, !dbg !1394
  %42 = getelementptr inbounds %struct.conversion, ptr %41, i32 0, i32 3, !dbg !1396
  %43 = load i8, ptr %42, align 1, !dbg !1396
  %44 = zext i8 %43 to i32, !dbg !1394
  %45 = icmp eq i32 %44, 99, !dbg !1397
  br i1 %45, label %46, label %55, !dbg !1398

46:                                               ; preds = %40
  %47 = load ptr, ptr %3, align 4, !dbg !1399
  %48 = getelementptr inbounds %struct.conversion, ptr %47, i32 0, i32 1, !dbg !1401
  %49 = load i8, ptr %48, align 1, !dbg !1401
  %50 = lshr i8 %49, 3, !dbg !1401
  %51 = and i8 %50, 15, !dbg !1401
  %52 = zext i8 %51 to i32, !dbg !1401
  %53 = icmp ne i32 %52, 0, !dbg !1402
  %54 = zext i1 %53 to i8, !dbg !1403
  store i8 %54, ptr %5, align 1, !dbg !1403
  br label %56, !dbg !1404

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %46
  br label %98, !dbg !1405

57:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %58 = load ptr, ptr %3, align 4, !dbg !1406
  %59 = getelementptr inbounds %struct.conversion, ptr %58, i32 0, i32 2, !dbg !1407
  %60 = load i8, ptr %59, align 2, !dbg !1408
  %61 = and i8 %60, -8, !dbg !1408
  %62 = or i8 %61, 4, !dbg !1408
  store i8 %62, ptr %59, align 2, !dbg !1408
  store i8 1, ptr %5, align 1, !dbg !1409
  br label %98, !dbg !1412

63:                                               ; preds = %2
  %64 = load ptr, ptr %3, align 4, !dbg !1413
  %65 = getelementptr inbounds %struct.conversion, ptr %64, i32 0, i32 2, !dbg !1414
  %66 = load i8, ptr %65, align 2, !dbg !1415
  %67 = and i8 %66, -8, !dbg !1415
  %68 = or i8 %67, 3, !dbg !1415
  store i8 %68, ptr %65, align 2, !dbg !1415
  %69 = load ptr, ptr %3, align 4, !dbg !1416
  %70 = getelementptr inbounds %struct.conversion, ptr %69, i32 0, i32 1, !dbg !1418
  %71 = load i8, ptr %70, align 1, !dbg !1418
  %72 = lshr i8 %71, 3, !dbg !1418
  %73 = and i8 %72, 15, !dbg !1418
  %74 = zext i8 %73 to i32, !dbg !1418
  %75 = icmp eq i32 %74, 8, !dbg !1419
  br i1 %75, label %76, label %77, !dbg !1420

76:                                               ; preds = %63
  store i8 1, ptr %5, align 1, !dbg !1421
  br label %77, !dbg !1423

77:                                               ; preds = %76, %63
  br label %98, !dbg !1424

78:                                               ; preds = %2, %2
  %79 = load ptr, ptr %3, align 4, !dbg !1425
  %80 = getelementptr inbounds %struct.conversion, ptr %79, i32 0, i32 2, !dbg !1426
  %81 = load i8, ptr %80, align 2, !dbg !1427
  %82 = and i8 %81, -8, !dbg !1427
  %83 = or i8 %82, 3, !dbg !1427
  store i8 %83, ptr %80, align 2, !dbg !1427
  %84 = load ptr, ptr %3, align 4, !dbg !1428
  %85 = getelementptr inbounds %struct.conversion, ptr %84, i32 0, i32 1, !dbg !1430
  %86 = load i8, ptr %85, align 1, !dbg !1430
  %87 = lshr i8 %86, 3, !dbg !1430
  %88 = and i8 %87, 15, !dbg !1430
  %89 = zext i8 %88 to i32, !dbg !1430
  %90 = icmp ne i32 %89, 0, !dbg !1431
  br i1 %90, label %91, label %92, !dbg !1432

91:                                               ; preds = %78
  store i8 1, ptr %5, align 1, !dbg !1433
  br label %92, !dbg !1435

92:                                               ; preds = %91, %78
  br label %98, !dbg !1436

93:                                               ; preds = %2
  %94 = load ptr, ptr %3, align 4, !dbg !1437
  %95 = load i8, ptr %94, align 4, !dbg !1438
  %96 = and i8 %95, -2, !dbg !1438
  %97 = or i8 %96, 1, !dbg !1438
  store i8 %97, ptr %94, align 4, !dbg !1438
  br label %98, !dbg !1439

98:                                               ; preds = %93, %92, %77, %57, %56
  %99 = load i8, ptr %5, align 1, !dbg !1440
  %100 = trunc i8 %99 to i1, !dbg !1440
  %101 = zext i1 %100 to i32, !dbg !1440
  %102 = load ptr, ptr %3, align 4, !dbg !1441
  %103 = load i8, ptr %102, align 4, !dbg !1442
  %104 = lshr i8 %103, 1, !dbg !1442
  %105 = and i8 %104, 1, !dbg !1442
  %106 = trunc i8 %105 to i1, !dbg !1442
  %107 = zext i1 %106 to i32, !dbg !1442
  %108 = or i32 %107, %101, !dbg !1442
  %109 = icmp ne i32 %108, 0, !dbg !1442
  %110 = zext i1 %109 to i8, !dbg !1442
  %111 = load i8, ptr %102, align 4, !dbg !1442
  %112 = shl i8 %110, 1, !dbg !1442
  %113 = and i8 %111, -3, !dbg !1442
  %114 = or i8 %113, %112, !dbg !1442
  store i8 %114, ptr %102, align 4, !dbg !1442
  %115 = trunc i8 %110 to i1, !dbg !1442
  %116 = load ptr, ptr %4, align 4, !dbg !1443
  ret ptr %116, !dbg !1444
}

; Function Attrs: noinline nounwind optnone
define internal i32 @extract_decimal(ptr noundef %0) #0 !dbg !1445 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1451, metadata !DIExpression()), !dbg !1452
  %5 = load ptr, ptr %2, align 4, !dbg !1453
  %6 = load ptr, ptr %5, align 4, !dbg !1454
  store ptr %6, ptr %3, align 4, !dbg !1452
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1455, metadata !DIExpression()), !dbg !1456
  store i32 0, ptr %4, align 4, !dbg !1456
  br label %7, !dbg !1457

7:                                                ; preds = %15, %1
  %8 = load ptr, ptr %3, align 4, !dbg !1458
  %9 = load i8, ptr %8, align 1, !dbg !1459
  %10 = zext i8 %9 to i32, !dbg !1460
  %11 = sub i32 %10, 48, !dbg !1461
  %12 = icmp ult i32 %11, 10, !dbg !1462
  %13 = zext i1 %12 to i32, !dbg !1462
  %14 = icmp ne i32 %13, 0, !dbg !1463
  br i1 %14, label %15, label %24, !dbg !1457

15:                                               ; preds = %7
  %16 = load i32, ptr %4, align 4, !dbg !1464
  %17 = mul i32 10, %16, !dbg !1466
  %18 = load ptr, ptr %3, align 4, !dbg !1467
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !1467
  store ptr %19, ptr %3, align 4, !dbg !1467
  %20 = load i8, ptr %18, align 1, !dbg !1468
  %21 = zext i8 %20 to i32, !dbg !1468
  %22 = add i32 %17, %21, !dbg !1469
  %23 = sub i32 %22, 48, !dbg !1470
  store i32 %23, ptr %4, align 4, !dbg !1471
  br label %7, !dbg !1457, !llvm.loop !1472

24:                                               ; preds = %7
  %25 = load ptr, ptr %3, align 4, !dbg !1474
  %26 = load ptr, ptr %2, align 4, !dbg !1475
  store ptr %25, ptr %26, align 4, !dbg !1476
  %27 = load i32, ptr %4, align 4, !dbg !1477
  ret i32 %27, !dbg !1478
}

; Function Attrs: noinline nounwind optnone
define internal i32 @conversion_radix(i8 noundef zeroext %0) #0 !dbg !1479 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1482, metadata !DIExpression()), !dbg !1483
  %4 = load i8, ptr %3, align 1, !dbg !1484
  %5 = zext i8 %4 to i32, !dbg !1484
  switch i32 %5, label %6 [
    i32 100, label %7
    i32 105, label %7
    i32 117, label %7
    i32 111, label %8
    i32 112, label %9
    i32 120, label %9
    i32 88, label %9
  ], !dbg !1485

6:                                                ; preds = %1
  br label %7, !dbg !1486

7:                                                ; preds = %1, %1, %1, %6
  store i32 10, ptr %2, align 4, !dbg !1487
  br label %10, !dbg !1487

8:                                                ; preds = %1
  store i32 8, ptr %2, align 4, !dbg !1489
  br label %10, !dbg !1489

9:                                                ; preds = %1, %1, %1
  store i32 16, ptr %2, align 4, !dbg !1490
  br label %10, !dbg !1490

10:                                               ; preds = %9, %8, %7
  %11 = load i32, ptr %2, align 4, !dbg !1491
  ret i32 %11, !dbg !1491
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1671, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/os/cbprintf_complete.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !29, globals: !60, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "cbprintf_complete.c", directory: "/home/sri/zephyrproject/zephyr/build")
!9 = !{!10, !18}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "specifier_cat_enum", file: !2, line: 69, baseType: !11, size: 8, elements: !12)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !{!13, !14, !15, !16, !17}
!13 = !DIEnumerator(name: "SPECIFIER_INVALID", value: 0)
!14 = !DIEnumerator(name: "SPECIFIER_SINT", value: 1)
!15 = !DIEnumerator(name: "SPECIFIER_UINT", value: 2)
!16 = !DIEnumerator(name: "SPECIFIER_PTR", value: 3)
!17 = !DIEnumerator(name: "SPECIFIER_FP", value: 4)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "length_mod_enum", file: !2, line: 56, baseType: !11, size: 8, elements: !19)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28}
!20 = !DIEnumerator(name: "LENGTH_NONE", value: 0)
!21 = !DIEnumerator(name: "LENGTH_HH", value: 1)
!22 = !DIEnumerator(name: "LENGTH_H", value: 2)
!23 = !DIEnumerator(name: "LENGTH_L", value: 3)
!24 = !DIEnumerator(name: "LENGTH_LL", value: 4)
!25 = !DIEnumerator(name: "LENGTH_J", value: 5)
!26 = !DIEnumerator(name: "LENGTH_Z", value: 6)
!27 = !DIEnumerator(name: "LENGTH_T", value: 7)
!28 = !DIEnumerator(name: "LENGTH_UPPER_L", value: 8)
!29 = !{!30, !10, !18, !31, !35, !36, !37, !40, !11, !43, !44, !46, !48, !39, !49, !50, !51, !52, !53, !34, !54, !32, !55, !56, !57, !59}
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "sint_value_type", file: !2, line: 31, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !33, line: 106, baseType: !34)
!33 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!34 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!35 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !38, line: 215, baseType: !39)
!38 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/inttypes.h", directory: "")
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_value_type", file: !2, line: 32, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !33, line: 107, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 51, baseType: !39)
!47 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !33, line: 102, baseType: !39)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 32)
!52 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !58, line: 35, baseType: !30)
!58 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!60 = !{!0}
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{i32 1, !"static_rwdata", i32 1}
!65 = !{i32 1, !"enumsize_buildattr", i32 1}
!66 = !{i32 1, !"armlib_unavailable", i32 0}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!70 = distinct !DISubprogram(name: "z_cbvprintf_impl", scope: !2, file: !2, line: 1338, type: !71, scopeLine: 1340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !86)
!71 = !DISubroutineType(types: !72)
!72 = !{!30, !73, !78, !44, !79, !85}
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !74, line: 302, baseType: !75)
!74 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 32)
!76 = !DISubroutineType(types: !77)
!77 = !{!30, null}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !80, line: 22, baseType: !81)
!80 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !8, baseType: !82)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !82, file: !8, baseType: !78, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 64, baseType: !39)
!86 = !{}
!87 = !DILocalVariable(name: "out", arg: 1, scope: !70, file: !2, line: 1338, type: !73)
!88 = !DILocation(line: 1338, column: 34, scope: !70)
!89 = !DILocalVariable(name: "ctx", arg: 2, scope: !70, file: !2, line: 1338, type: !78)
!90 = !DILocation(line: 1338, column: 45, scope: !70)
!91 = !DILocalVariable(name: "fp", arg: 3, scope: !70, file: !2, line: 1338, type: !44)
!92 = !DILocation(line: 1338, column: 62, scope: !70)
!93 = !DILocalVariable(name: "ap", arg: 4, scope: !70, file: !2, line: 1339, type: !79)
!94 = !DILocation(line: 1339, column: 16, scope: !70)
!95 = !DILocalVariable(name: "flags", arg: 5, scope: !70, file: !2, line: 1339, type: !85)
!96 = !DILocation(line: 1339, column: 29, scope: !70)
!97 = !DILocalVariable(name: "buf", scope: !70, file: !2, line: 1341, type: !98)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 22)
!101 = !DILocation(line: 1341, column: 7, scope: !70)
!102 = !DILocalVariable(name: "count", scope: !70, file: !2, line: 1342, type: !46)
!103 = !DILocation(line: 1342, column: 9, scope: !70)
!104 = !DILocalVariable(name: "sint", scope: !70, file: !2, line: 1343, type: !31)
!105 = !DILocation(line: 1343, column: 18, scope: !70)
!106 = !DILocalVariable(name: "tagged_ap", scope: !70, file: !2, line: 1345, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!109 = !DILocation(line: 1345, column: 14, scope: !70)
!110 = !DILocation(line: 1345, column: 27, scope: !70)
!111 = !DILocation(line: 1345, column: 33, scope: !70)
!112 = !DILocation(line: 1346, column: 11, scope: !70)
!113 = !DILocation(line: 1375, column: 2, scope: !70)
!114 = !DILocation(line: 1375, column: 10, scope: !70)
!115 = !DILocation(line: 1375, column: 9, scope: !70)
!116 = !DILocation(line: 1375, column: 13, scope: !70)
!117 = !DILocation(line: 1376, column: 8, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1376, column: 7)
!119 = distinct !DILexicalBlock(scope: !70, file: !2, line: 1375, column: 19)
!120 = !DILocation(line: 1376, column: 7, scope: !118)
!121 = !DILocation(line: 1376, column: 11, scope: !118)
!122 = !DILocation(line: 1376, column: 7, scope: !119)
!123 = !DILocation(line: 1377, column: 4, scope: !124)
!124 = distinct !DILexicalBlock(scope: !118, file: !2, line: 1376, column: 19)
!125 = !DILocalVariable(name: "rc", scope: !126, file: !2, line: 1377, type: !30)
!126 = distinct !DILexicalBlock(scope: !124, file: !2, line: 1377, column: 7)
!127 = !DILocation(line: 1377, column: 13, scope: !126)
!128 = !DILocation(line: 1377, column: 20, scope: !126)
!129 = !DILocation(line: 1377, column: 34, scope: !126)
!130 = !DILocation(line: 1377, column: 31, scope: !126)
!131 = !DILocation(line: 1377, column: 25, scope: !126)
!132 = !DILocation(line: 1377, column: 39, scope: !126)
!133 = !DILocation(line: 1377, column: 18, scope: !126)
!134 = !DILocation(line: 1377, column: 49, scope: !135)
!135 = distinct !DILexicalBlock(scope: !126, file: !2, line: 1377, column: 49)
!136 = !DILocation(line: 1377, column: 52, scope: !135)
!137 = !DILocation(line: 1377, column: 49, scope: !126)
!138 = !DILocation(line: 1377, column: 66, scope: !139)
!139 = distinct !DILexicalBlock(scope: !135, file: !2, line: 1377, column: 57)
!140 = !DILocation(line: 1377, column: 59, scope: !139)
!141 = !DILocation(line: 1377, column: 72, scope: !126)
!142 = !DILocation(line: 1377, column: 81, scope: !126)
!143 = !DILocation(line: 1378, column: 4, scope: !124)
!144 = distinct !{!144, !113, !145}
!145 = !DILocation(line: 1839, column: 2, scope: !70)
!146 = !DILocalVariable(name: "state", scope: !119, file: !2, line: 1395, type: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !2, line: 1392, size: 192, elements: !148)
!148 = !{!149, !159}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !147, file: !2, line: 1393, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "argument_value", file: !2, line: 166, size: 64, elements: !151)
!151 = !{!152, !153, !154, !156, !158}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sint", scope: !150, file: !2, line: 168, baseType: !31, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "uint", scope: !150, file: !2, line: 171, baseType: !40, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "dbl", scope: !150, file: !2, line: 174, baseType: !155, size: 64)
!155 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "ldbl", scope: !150, file: !2, line: 177, baseType: !157, size: 64)
!157 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !150, file: !2, line: 180, baseType: !78, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "conv", scope: !147, file: !2, line: 1394, baseType: !160, size: 96, offset: 64)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "conversion", file: !2, line: 189, size: 96, elements: !161)
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !186}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !160, file: !2, line: 191, baseType: !108, size: 1, flags: DIFlagBitField, extraData: i64 0)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "unsupported", scope: !160, file: !2, line: 194, baseType: !108, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dash", scope: !160, file: !2, line: 197, baseType: !108, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flag_plus", scope: !160, file: !2, line: 200, baseType: !108, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_space", scope: !160, file: !2, line: 203, baseType: !108, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_hash", scope: !160, file: !2, line: 206, baseType: !108, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "flag_zero", scope: !160, file: !2, line: 209, baseType: !108, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "width_present", scope: !160, file: !2, line: 212, baseType: !108, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "width_star", scope: !160, file: !2, line: 219, baseType: !108, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prec_present", scope: !160, file: !2, line: 222, baseType: !108, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prec_star", scope: !160, file: !2, line: 229, baseType: !108, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "length_mod", scope: !160, file: !2, line: 232, baseType: !39, size: 4, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "specifier_a", scope: !160, file: !2, line: 238, baseType: !108, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "specifier_cat", scope: !160, file: !2, line: 241, baseType: !39, size: 3, offset: 16, flags: DIFlagBitField, extraData: i64 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "altform_0", scope: !160, file: !2, line: 244, baseType: !108, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "altform_0c", scope: !160, file: !2, line: 247, baseType: !108, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 16)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pad_postdp", scope: !160, file: !2, line: 252, baseType: !108, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 16)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pad_fp", scope: !160, file: !2, line: 257, baseType: !108, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 16)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "specifier", scope: !160, file: !2, line: 260, baseType: !11, size: 8, offset: 24)
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !2, line: 262, baseType: !182, size: 32, offset: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !2, line: 262, size: 32, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "width_value", scope: !182, file: !2, line: 267, baseType: !30, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pad0_value", scope: !182, file: !2, line: 289, baseType: !30, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !2, line: 292, baseType: !187, size: 32, offset: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !2, line: 292, size: 32, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prec_value", scope: !187, file: !2, line: 297, baseType: !30, size: 32)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pad0_pre_exp", scope: !187, file: !2, line: 306, baseType: !30, size: 32)
!191 = !DILocation(line: 1395, column: 5, scope: !119)
!192 = !DILocalVariable(name: "conv", scope: !119, file: !2, line: 1400, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 32)
!195 = !DILocation(line: 1400, column: 28, scope: !119)
!196 = !DILocation(line: 1400, column: 42, scope: !119)
!197 = !DILocalVariable(name: "value", scope: !119, file: !2, line: 1401, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 32)
!200 = !DILocation(line: 1401, column: 31, scope: !119)
!201 = !DILocation(line: 1401, column: 46, scope: !119)
!202 = !DILocalVariable(name: "sp", scope: !119, file: !2, line: 1402, type: !44)
!203 = !DILocation(line: 1402, column: 15, scope: !119)
!204 = !DILocation(line: 1402, column: 20, scope: !119)
!205 = !DILocalVariable(name: "width", scope: !119, file: !2, line: 1403, type: !30)
!206 = !DILocation(line: 1403, column: 7, scope: !119)
!207 = !DILocalVariable(name: "precision", scope: !119, file: !2, line: 1404, type: !30)
!208 = !DILocation(line: 1404, column: 7, scope: !119)
!209 = !DILocalVariable(name: "bps", scope: !119, file: !2, line: 1405, type: !44)
!210 = !DILocation(line: 1405, column: 15, scope: !119)
!211 = !DILocalVariable(name: "bpe", scope: !119, file: !2, line: 1406, type: !44)
!212 = !DILocation(line: 1406, column: 15, scope: !119)
!213 = !DILocation(line: 1406, column: 21, scope: !119)
!214 = !DILocation(line: 1406, column: 25, scope: !119)
!215 = !DILocalVariable(name: "sign", scope: !119, file: !2, line: 1407, type: !4)
!216 = !DILocation(line: 1407, column: 8, scope: !119)
!217 = !DILocation(line: 1409, column: 27, scope: !119)
!218 = !DILocation(line: 1409, column: 33, scope: !119)
!219 = !DILocation(line: 1409, column: 8, scope: !119)
!220 = !DILocation(line: 1409, column: 6, scope: !119)
!221 = !DILocation(line: 1414, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1414, column: 7)
!223 = !DILocation(line: 1414, column: 13, scope: !222)
!224 = !DILocation(line: 1414, column: 7, scope: !119)
!225 = !DILocation(line: 1415, column: 12, scope: !226)
!226 = distinct !DILexicalBlock(scope: !222, file: !2, line: 1414, column: 25)
!227 = !DILocation(line: 1415, column: 10, scope: !226)
!228 = !DILocation(line: 1417, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !2, line: 1417, column: 8)
!230 = !DILocation(line: 1417, column: 14, scope: !229)
!231 = !DILocation(line: 1417, column: 8, scope: !226)
!232 = !DILocation(line: 1418, column: 5, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !2, line: 1417, column: 19)
!234 = !DILocation(line: 1418, column: 21, scope: !233)
!235 = !DILocation(line: 1419, column: 14, scope: !233)
!236 = !DILocation(line: 1419, column: 13, scope: !233)
!237 = !DILocation(line: 1419, column: 11, scope: !233)
!238 = !DILocation(line: 1420, column: 4, scope: !233)
!239 = !DILocation(line: 1421, column: 3, scope: !226)
!240 = !DILocation(line: 1421, column: 14, scope: !241)
!241 = distinct !DILexicalBlock(scope: !222, file: !2, line: 1421, column: 14)
!242 = !DILocation(line: 1421, column: 20, scope: !241)
!243 = !DILocation(line: 1421, column: 14, scope: !222)
!244 = !DILocation(line: 1422, column: 12, scope: !245)
!245 = distinct !DILexicalBlock(scope: !241, file: !2, line: 1421, column: 35)
!246 = !DILocation(line: 1422, column: 18, scope: !245)
!247 = !DILocation(line: 1422, column: 10, scope: !245)
!248 = !DILocation(line: 1423, column: 3, scope: !245)
!249 = !DILocation(line: 1431, column: 7, scope: !250)
!250 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1431, column: 7)
!251 = !DILocation(line: 1431, column: 13, scope: !250)
!252 = !DILocation(line: 1431, column: 7, scope: !119)
!253 = !DILocalVariable(name: "arg", scope: !254, file: !2, line: 1432, type: !30)
!254 = distinct !DILexicalBlock(scope: !250, file: !2, line: 1431, column: 24)
!255 = !DILocation(line: 1432, column: 8, scope: !254)
!256 = !DILocation(line: 1432, column: 14, scope: !254)
!257 = !DILocation(line: 1434, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !2, line: 1434, column: 8)
!259 = !DILocation(line: 1434, column: 12, scope: !258)
!260 = !DILocation(line: 1434, column: 8, scope: !254)
!261 = !DILocation(line: 1435, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !2, line: 1434, column: 17)
!263 = !DILocation(line: 1435, column: 11, scope: !262)
!264 = !DILocation(line: 1435, column: 24, scope: !262)
!265 = !DILocation(line: 1436, column: 4, scope: !262)
!266 = !DILocation(line: 1437, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !258, file: !2, line: 1436, column: 11)
!268 = !DILocation(line: 1437, column: 15, scope: !267)
!269 = !DILocation(line: 1439, column: 3, scope: !254)
!270 = !DILocation(line: 1439, column: 14, scope: !271)
!271 = distinct !DILexicalBlock(scope: !250, file: !2, line: 1439, column: 14)
!272 = !DILocation(line: 1439, column: 20, scope: !271)
!273 = !DILocation(line: 1439, column: 14, scope: !250)
!274 = !DILocation(line: 1440, column: 16, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !2, line: 1439, column: 34)
!276 = !DILocation(line: 1440, column: 22, scope: !275)
!277 = !DILocation(line: 1440, column: 14, scope: !275)
!278 = !DILocation(line: 1441, column: 3, scope: !275)
!279 = !DILocation(line: 1448, column: 3, scope: !119)
!280 = !DILocation(line: 1448, column: 9, scope: !119)
!281 = !DILocation(line: 1448, column: 20, scope: !119)
!282 = !DILocation(line: 1449, column: 3, scope: !119)
!283 = !DILocation(line: 1449, column: 9, scope: !119)
!284 = !DILocation(line: 1449, column: 22, scope: !119)
!285 = !DILocalVariable(name: "specifier_cat", scope: !119, file: !2, line: 1468, type: !10)
!286 = !DILocation(line: 1468, column: 27, scope: !119)
!287 = !DILocation(line: 1469, column: 31, scope: !119)
!288 = !DILocation(line: 1469, column: 37, scope: !119)
!289 = !DILocation(line: 1469, column: 6, scope: !119)
!290 = !DILocalVariable(name: "length_mod", scope: !119, file: !2, line: 1470, type: !18)
!291 = !DILocation(line: 1470, column: 24, scope: !119)
!292 = !DILocation(line: 1471, column: 28, scope: !119)
!293 = !DILocation(line: 1471, column: 34, scope: !119)
!294 = !DILocation(line: 1471, column: 6, scope: !119)
!295 = !DILocation(line: 1478, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1478, column: 7)
!297 = !DILocation(line: 1478, column: 21, scope: !296)
!298 = !DILocation(line: 1478, column: 7, scope: !119)
!299 = !DILocation(line: 1479, column: 12, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !2, line: 1478, column: 40)
!301 = !DILocation(line: 1479, column: 4, scope: !300)
!302 = !DILocation(line: 1479, column: 24, scope: !300)
!303 = !DILocation(line: 1484, column: 19, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !2, line: 1479, column: 24)
!305 = !DILocation(line: 1484, column: 5, scope: !304)
!306 = !DILocation(line: 1484, column: 17, scope: !304)
!307 = !DILocation(line: 1485, column: 5, scope: !304)
!308 = !DILocation(line: 1492, column: 20, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 1491, column: 12)
!310 = distinct !DILexicalBlock(scope: !304, file: !2, line: 1487, column: 9)
!311 = !DILocation(line: 1492, column: 6, scope: !309)
!312 = !DILocation(line: 1492, column: 18, scope: !309)
!313 = !DILocation(line: 1494, column: 5, scope: !304)
!314 = !DILocation(line: 1497, column: 23, scope: !304)
!315 = !DILocation(line: 1496, column: 5, scope: !304)
!316 = !DILocation(line: 1496, column: 17, scope: !304)
!317 = !DILocation(line: 1498, column: 5, scope: !304)
!318 = !DILocation(line: 1501, column: 23, scope: !304)
!319 = !DILocation(line: 1500, column: 5, scope: !304)
!320 = !DILocation(line: 1500, column: 17, scope: !304)
!321 = !DILocation(line: 1502, column: 5, scope: !304)
!322 = !DILocation(line: 1513, column: 23, scope: !304)
!323 = !DILocation(line: 1513, column: 6, scope: !304)
!324 = !DILocation(line: 1512, column: 5, scope: !304)
!325 = !DILocation(line: 1512, column: 17, scope: !304)
!326 = !DILocation(line: 1514, column: 5, scope: !304)
!327 = !DILocation(line: 1516, column: 8, scope: !328)
!328 = distinct !DILexicalBlock(scope: !300, file: !2, line: 1516, column: 8)
!329 = !DILocation(line: 1516, column: 19, scope: !328)
!330 = !DILocation(line: 1516, column: 8, scope: !300)
!331 = !DILocation(line: 1517, column: 32, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !2, line: 1516, column: 33)
!333 = !DILocation(line: 1517, column: 39, scope: !332)
!334 = !DILocation(line: 1517, column: 19, scope: !332)
!335 = !DILocation(line: 1517, column: 5, scope: !332)
!336 = !DILocation(line: 1517, column: 17, scope: !332)
!337 = !DILocation(line: 1518, column: 4, scope: !332)
!338 = !DILocation(line: 1518, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !328, file: !2, line: 1518, column: 15)
!340 = !DILocation(line: 1518, column: 26, scope: !339)
!341 = !DILocation(line: 1518, column: 15, scope: !328)
!342 = !DILocation(line: 1519, column: 26, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !2, line: 1518, column: 39)
!344 = !DILocation(line: 1519, column: 33, scope: !343)
!345 = !DILocation(line: 1519, column: 19, scope: !343)
!346 = !DILocation(line: 1519, column: 5, scope: !343)
!347 = !DILocation(line: 1519, column: 17, scope: !343)
!348 = !DILocation(line: 1520, column: 4, scope: !343)
!349 = !DILocation(line: 1521, column: 3, scope: !300)
!350 = !DILocation(line: 1521, column: 14, scope: !351)
!351 = distinct !DILexicalBlock(scope: !296, file: !2, line: 1521, column: 14)
!352 = !DILocation(line: 1521, column: 28, scope: !351)
!353 = !DILocation(line: 1521, column: 14, scope: !296)
!354 = !DILocation(line: 1522, column: 12, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !2, line: 1521, column: 47)
!356 = !DILocation(line: 1522, column: 4, scope: !355)
!357 = !DILocation(line: 1522, column: 24, scope: !355)
!358 = !DILocation(line: 1527, column: 19, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !2, line: 1522, column: 24)
!360 = !DILocation(line: 1527, column: 5, scope: !359)
!361 = !DILocation(line: 1527, column: 17, scope: !359)
!362 = !DILocation(line: 1528, column: 5, scope: !359)
!363 = !DILocation(line: 1531, column: 13, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !2, line: 1530, column: 9)
!365 = !DILocation(line: 1531, column: 19, scope: !364)
!366 = !DILocation(line: 1531, column: 29, scope: !364)
!367 = !DILocation(line: 1530, column: 9, scope: !359)
!368 = !DILocation(line: 1532, column: 29, scope: !369)
!369 = distinct !DILexicalBlock(scope: !364, file: !2, line: 1531, column: 38)
!370 = !DILocation(line: 1532, column: 20, scope: !369)
!371 = !DILocation(line: 1532, column: 6, scope: !369)
!372 = !DILocation(line: 1532, column: 18, scope: !369)
!373 = !DILocation(line: 1534, column: 5, scope: !369)
!374 = !DILocation(line: 1535, column: 20, scope: !375)
!375 = distinct !DILexicalBlock(scope: !364, file: !2, line: 1534, column: 12)
!376 = !DILocation(line: 1535, column: 6, scope: !375)
!377 = !DILocation(line: 1535, column: 18, scope: !375)
!378 = !DILocation(line: 1537, column: 5, scope: !359)
!379 = !DILocation(line: 1540, column: 23, scope: !359)
!380 = !DILocation(line: 1539, column: 5, scope: !359)
!381 = !DILocation(line: 1539, column: 17, scope: !359)
!382 = !DILocation(line: 1542, column: 5, scope: !359)
!383 = !DILocation(line: 1545, column: 23, scope: !359)
!384 = !DILocation(line: 1544, column: 5, scope: !359)
!385 = !DILocation(line: 1544, column: 17, scope: !359)
!386 = !DILocation(line: 1547, column: 5, scope: !359)
!387 = !DILocation(line: 1551, column: 23, scope: !359)
!388 = !DILocation(line: 1551, column: 6, scope: !359)
!389 = !DILocation(line: 1550, column: 5, scope: !359)
!390 = !DILocation(line: 1550, column: 17, scope: !359)
!391 = !DILocation(line: 1552, column: 5, scope: !359)
!392 = !DILocation(line: 1554, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !355, file: !2, line: 1554, column: 8)
!394 = !DILocation(line: 1554, column: 19, scope: !393)
!395 = !DILocation(line: 1554, column: 8, scope: !355)
!396 = !DILocation(line: 1555, column: 34, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1554, column: 33)
!398 = !DILocation(line: 1555, column: 41, scope: !397)
!399 = !DILocation(line: 1555, column: 19, scope: !397)
!400 = !DILocation(line: 1555, column: 5, scope: !397)
!401 = !DILocation(line: 1555, column: 17, scope: !397)
!402 = !DILocation(line: 1556, column: 4, scope: !397)
!403 = !DILocation(line: 1556, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !393, file: !2, line: 1556, column: 15)
!405 = !DILocation(line: 1556, column: 26, scope: !404)
!406 = !DILocation(line: 1556, column: 15, scope: !393)
!407 = !DILocation(line: 1557, column: 35, scope: !408)
!408 = distinct !DILexicalBlock(scope: !404, file: !2, line: 1556, column: 39)
!409 = !DILocation(line: 1557, column: 42, scope: !408)
!410 = !DILocation(line: 1557, column: 19, scope: !408)
!411 = !DILocation(line: 1557, column: 5, scope: !408)
!412 = !DILocation(line: 1557, column: 17, scope: !408)
!413 = !DILocation(line: 1558, column: 4, scope: !408)
!414 = !DILocation(line: 1559, column: 3, scope: !355)
!415 = !DILocation(line: 1559, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !351, file: !2, line: 1559, column: 14)
!417 = !DILocation(line: 1559, column: 28, scope: !416)
!418 = !DILocation(line: 1559, column: 14, scope: !351)
!419 = !DILocation(line: 1560, column: 8, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 1560, column: 8)
!421 = distinct !DILexicalBlock(scope: !416, file: !2, line: 1559, column: 45)
!422 = !DILocation(line: 1560, column: 19, scope: !420)
!423 = !DILocation(line: 1560, column: 8, scope: !421)
!424 = !DILocation(line: 1561, column: 19, scope: !425)
!425 = distinct !DILexicalBlock(scope: !420, file: !2, line: 1560, column: 38)
!426 = !DILocation(line: 1561, column: 5, scope: !425)
!427 = !DILocation(line: 1561, column: 17, scope: !425)
!428 = !DILocation(line: 1562, column: 4, scope: !425)
!429 = !DILocation(line: 1563, column: 18, scope: !430)
!430 = distinct !DILexicalBlock(scope: !420, file: !2, line: 1562, column: 11)
!431 = !DILocation(line: 1563, column: 5, scope: !430)
!432 = !DILocation(line: 1563, column: 16, scope: !430)
!433 = !DILocation(line: 1565, column: 3, scope: !421)
!434 = !DILocation(line: 1565, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !416, file: !2, line: 1565, column: 14)
!436 = !DILocation(line: 1565, column: 28, scope: !435)
!437 = !DILocation(line: 1565, column: 14, scope: !416)
!438 = !DILocation(line: 1566, column: 17, scope: !439)
!439 = distinct !DILexicalBlock(scope: !435, file: !2, line: 1565, column: 46)
!440 = !DILocation(line: 1566, column: 4, scope: !439)
!441 = !DILocation(line: 1566, column: 15, scope: !439)
!442 = !DILocation(line: 1567, column: 3, scope: !439)
!443 = !DILocation(line: 1574, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1574, column: 7)
!445 = !DILocation(line: 1574, column: 13, scope: !444)
!446 = !DILocation(line: 1574, column: 21, scope: !444)
!447 = !DILocation(line: 1574, column: 24, scope: !444)
!448 = !DILocation(line: 1574, column: 30, scope: !444)
!449 = !DILocation(line: 1574, column: 7, scope: !119)
!450 = !DILocation(line: 1575, column: 4, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !2, line: 1574, column: 43)
!452 = !DILocalVariable(name: "rc", scope: !453, file: !2, line: 1575, type: !30)
!453 = distinct !DILexicalBlock(scope: !451, file: !2, line: 1575, column: 7)
!454 = !DILocation(line: 1575, column: 13, scope: !453)
!455 = !DILocation(line: 1575, column: 23, scope: !453)
!456 = !DILocation(line: 1575, column: 28, scope: !453)
!457 = !DILocation(line: 1575, column: 33, scope: !453)
!458 = !DILocation(line: 1575, column: 37, scope: !453)
!459 = !DILocation(line: 1575, column: 18, scope: !453)
!460 = !DILocation(line: 1575, column: 46, scope: !461)
!461 = distinct !DILexicalBlock(scope: !453, file: !2, line: 1575, column: 46)
!462 = !DILocation(line: 1575, column: 49, scope: !461)
!463 = !DILocation(line: 1575, column: 46, scope: !453)
!464 = !DILocation(line: 1575, column: 63, scope: !465)
!465 = distinct !DILexicalBlock(scope: !461, file: !2, line: 1575, column: 54)
!466 = !DILocation(line: 1575, column: 56, scope: !465)
!467 = !DILocation(line: 1575, column: 78, scope: !453)
!468 = !DILocation(line: 1575, column: 75, scope: !453)
!469 = !DILocation(line: 1575, column: 82, scope: !453)
!470 = !DILocation(line: 1576, column: 4, scope: !451)
!471 = !DILocation(line: 1582, column: 11, scope: !119)
!472 = !DILocation(line: 1582, column: 17, scope: !119)
!473 = !DILocation(line: 1582, column: 3, scope: !119)
!474 = !DILocation(line: 1584, column: 4, scope: !475)
!475 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1582, column: 28)
!476 = !DILocalVariable(name: "rc", scope: !477, file: !2, line: 1584, type: !30)
!477 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1584, column: 7)
!478 = !DILocation(line: 1584, column: 13, scope: !477)
!479 = !DILocation(line: 1584, column: 20, scope: !477)
!480 = !DILocation(line: 1584, column: 37, scope: !477)
!481 = !DILocation(line: 1584, column: 18, scope: !477)
!482 = !DILocation(line: 1584, column: 47, scope: !483)
!483 = distinct !DILexicalBlock(scope: !477, file: !2, line: 1584, column: 47)
!484 = !DILocation(line: 1584, column: 50, scope: !483)
!485 = !DILocation(line: 1584, column: 47, scope: !477)
!486 = !DILocation(line: 1584, column: 64, scope: !487)
!487 = distinct !DILexicalBlock(scope: !483, file: !2, line: 1584, column: 55)
!488 = !DILocation(line: 1584, column: 57, scope: !487)
!489 = !DILocation(line: 1584, column: 70, scope: !477)
!490 = !DILocation(line: 1584, column: 79, scope: !477)
!491 = !DILocation(line: 1585, column: 4, scope: !475)
!492 = !DILocation(line: 1587, column: 24, scope: !493)
!493 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1586, column: 13)
!494 = !DILocation(line: 1587, column: 31, scope: !493)
!495 = !DILocation(line: 1587, column: 8, scope: !493)
!496 = !DILocalVariable(name: "len", scope: !493, file: !2, line: 1589, type: !46)
!497 = !DILocation(line: 1589, column: 11, scope: !493)
!498 = !DILocation(line: 1591, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !2, line: 1591, column: 8)
!500 = !DILocation(line: 1591, column: 18, scope: !499)
!501 = !DILocation(line: 1591, column: 8, scope: !493)
!502 = !DILocation(line: 1592, column: 19, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !2, line: 1591, column: 24)
!504 = !DILocation(line: 1592, column: 24, scope: !503)
!505 = !DILocation(line: 1592, column: 11, scope: !503)
!506 = !DILocation(line: 1592, column: 9, scope: !503)
!507 = !DILocation(line: 1593, column: 4, scope: !503)
!508 = !DILocation(line: 1594, column: 18, scope: !509)
!509 = distinct !DILexicalBlock(scope: !499, file: !2, line: 1593, column: 11)
!510 = !DILocation(line: 1594, column: 11, scope: !509)
!511 = !DILocation(line: 1594, column: 9, scope: !509)
!512 = !DILocation(line: 1597, column: 10, scope: !493)
!513 = !DILocation(line: 1597, column: 16, scope: !493)
!514 = !DILocation(line: 1597, column: 14, scope: !493)
!515 = !DILocation(line: 1597, column: 8, scope: !493)
!516 = !DILocation(line: 1598, column: 14, scope: !493)
!517 = !DILocation(line: 1600, column: 4, scope: !493)
!518 = !DILocation(line: 1603, column: 10, scope: !475)
!519 = !DILocation(line: 1603, column: 8, scope: !475)
!520 = !DILocation(line: 1604, column: 38, scope: !475)
!521 = !DILocation(line: 1604, column: 45, scope: !475)
!522 = !DILocation(line: 1604, column: 13, scope: !475)
!523 = !DILocation(line: 1604, column: 4, scope: !475)
!524 = !DILocation(line: 1604, column: 11, scope: !475)
!525 = !DILocation(line: 1605, column: 10, scope: !475)
!526 = !DILocation(line: 1605, column: 14, scope: !475)
!527 = !DILocation(line: 1605, column: 8, scope: !475)
!528 = !DILocation(line: 1606, column: 4, scope: !475)
!529 = !DILocation(line: 1609, column: 8, scope: !530)
!530 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1609, column: 8)
!531 = !DILocation(line: 1609, column: 14, scope: !530)
!532 = !DILocation(line: 1609, column: 8, scope: !475)
!533 = !DILocation(line: 1610, column: 10, scope: !534)
!534 = distinct !DILexicalBlock(scope: !530, file: !2, line: 1609, column: 25)
!535 = !DILocation(line: 1611, column: 4, scope: !534)
!536 = !DILocation(line: 1611, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !530, file: !2, line: 1611, column: 15)
!538 = !DILocation(line: 1611, column: 21, scope: !537)
!539 = !DILocation(line: 1611, column: 15, scope: !530)
!540 = !DILocation(line: 1612, column: 10, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !2, line: 1611, column: 33)
!542 = !DILocation(line: 1613, column: 4, scope: !541)
!543 = !DILocation(line: 1619, column: 11, scope: !475)
!544 = !DILocation(line: 1619, column: 18, scope: !475)
!545 = !DILocation(line: 1619, column: 9, scope: !475)
!546 = !DILocation(line: 1620, column: 8, scope: !547)
!547 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1620, column: 8)
!548 = !DILocation(line: 1620, column: 13, scope: !547)
!549 = !DILocation(line: 1620, column: 8, scope: !475)
!550 = !DILocation(line: 1621, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !2, line: 1620, column: 18)
!552 = !DILocation(line: 1622, column: 37, scope: !551)
!553 = !DILocation(line: 1622, column: 36, scope: !551)
!554 = !DILocation(line: 1622, column: 5, scope: !551)
!555 = !DILocation(line: 1622, column: 17, scope: !551)
!556 = !DILocation(line: 1623, column: 4, scope: !551)
!557 = !DILocation(line: 1624, column: 36, scope: !558)
!558 = distinct !DILexicalBlock(scope: !547, file: !2, line: 1623, column: 11)
!559 = !DILocation(line: 1624, column: 5, scope: !558)
!560 = !DILocation(line: 1624, column: 17, scope: !558)
!561 = !DILocation(line: 1620, column: 15, scope: !547)
!562 = !DILocation(line: 1632, column: 22, scope: !475)
!563 = !DILocation(line: 1632, column: 29, scope: !475)
!564 = !DILocation(line: 1632, column: 35, scope: !475)
!565 = !DILocation(line: 1632, column: 41, scope: !475)
!566 = !DILocation(line: 1632, column: 46, scope: !475)
!567 = !DILocation(line: 1632, column: 10, scope: !475)
!568 = !DILocation(line: 1632, column: 8, scope: !475)
!569 = !DILocation(line: 1632, column: 4, scope: !475)
!570 = !DILabel(scope: !475, name: "prec_int_pad0", file: !2, line: 1634)
!571 = !DILocation(line: 1634, column: 3, scope: !475)
!572 = !DILocation(line: 1640, column: 8, scope: !573)
!573 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1640, column: 8)
!574 = !DILocation(line: 1640, column: 18, scope: !573)
!575 = !DILocation(line: 1640, column: 8, scope: !475)
!576 = !DILocalVariable(name: "len", scope: !577, file: !2, line: 1641, type: !46)
!577 = distinct !DILexicalBlock(scope: !573, file: !2, line: 1640, column: 24)
!578 = !DILocation(line: 1641, column: 12, scope: !577)
!579 = !DILocation(line: 1641, column: 18, scope: !577)
!580 = !DILocation(line: 1641, column: 24, scope: !577)
!581 = !DILocation(line: 1641, column: 22, scope: !577)
!582 = !DILocation(line: 1646, column: 5, scope: !577)
!583 = !DILocation(line: 1646, column: 21, scope: !577)
!584 = !DILocation(line: 1649, column: 9, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !2, line: 1649, column: 9)
!586 = !DILocation(line: 1649, column: 23, scope: !585)
!587 = !DILocation(line: 1649, column: 13, scope: !585)
!588 = !DILocation(line: 1649, column: 9, scope: !577)
!589 = !DILocation(line: 1650, column: 25, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !2, line: 1649, column: 34)
!591 = !DILocation(line: 1650, column: 42, scope: !590)
!592 = !DILocation(line: 1650, column: 35, scope: !590)
!593 = !DILocation(line: 1650, column: 6, scope: !590)
!594 = !DILocation(line: 1650, column: 12, scope: !590)
!595 = !DILocation(line: 1650, column: 23, scope: !590)
!596 = !DILocation(line: 1651, column: 5, scope: !590)
!597 = !DILocation(line: 1652, column: 4, scope: !577)
!598 = !DILocation(line: 1654, column: 4, scope: !475)
!599 = !DILocation(line: 1660, column: 8, scope: !600)
!600 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1660, column: 8)
!601 = !DILocation(line: 1660, column: 15, scope: !600)
!602 = !DILocation(line: 1660, column: 19, scope: !600)
!603 = !DILocation(line: 1660, column: 8, scope: !475)
!604 = !DILocation(line: 1661, column: 34, scope: !605)
!605 = distinct !DILexicalBlock(scope: !600, file: !2, line: 1660, column: 25)
!606 = !DILocation(line: 1661, column: 41, scope: !605)
!607 = !DILocation(line: 1661, column: 23, scope: !605)
!608 = !DILocation(line: 1661, column: 46, scope: !605)
!609 = !DILocation(line: 1662, column: 9, scope: !605)
!610 = !DILocation(line: 1662, column: 14, scope: !605)
!611 = !DILocation(line: 1661, column: 11, scope: !605)
!612 = !DILocation(line: 1661, column: 9, scope: !605)
!613 = !DILocation(line: 1665, column: 5, scope: !605)
!614 = !DILocation(line: 1665, column: 11, scope: !605)
!615 = !DILocation(line: 1665, column: 22, scope: !605)
!616 = !DILocation(line: 1666, column: 5, scope: !605)
!617 = !DILocation(line: 1666, column: 11, scope: !605)
!618 = !DILocation(line: 1666, column: 21, scope: !605)
!619 = !DILocation(line: 1668, column: 5, scope: !605)
!620 = !DILocation(line: 1671, column: 8, scope: !475)
!621 = !DILocation(line: 1672, column: 10, scope: !475)
!622 = !DILocation(line: 1672, column: 14, scope: !475)
!623 = !DILocation(line: 1672, column: 8, scope: !475)
!624 = !DILocation(line: 1674, column: 4, scope: !475)
!625 = !DILocation(line: 1677, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 1676, column: 11)
!627 = distinct !DILexicalBlock(scope: !475, file: !2, line: 1676, column: 8)
!628 = !DILocation(line: 1677, column: 23, scope: !626)
!629 = !DILocation(line: 1677, column: 30, scope: !626)
!630 = !DILocation(line: 1677, column: 35, scope: !626)
!631 = !DILocation(line: 1677, column: 5, scope: !626)
!632 = !DILocation(line: 1680, column: 4, scope: !475)
!633 = !DILocation(line: 1687, column: 4, scope: !475)
!634 = !DILocation(line: 1693, column: 4, scope: !475)
!635 = !DILocation(line: 1699, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1699, column: 7)
!637 = !DILocation(line: 1699, column: 11, scope: !636)
!638 = !DILocation(line: 1699, column: 7, scope: !119)
!639 = !DILocation(line: 1700, column: 4, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !2, line: 1699, column: 17)
!641 = !DILocalVariable(name: "nj_len", scope: !119, file: !2, line: 1722, type: !46)
!642 = !DILocation(line: 1722, column: 10, scope: !119)
!643 = !DILocation(line: 1722, column: 20, scope: !119)
!644 = !DILocation(line: 1722, column: 26, scope: !119)
!645 = !DILocation(line: 1722, column: 24, scope: !119)
!646 = !DILocalVariable(name: "pad_len", scope: !119, file: !2, line: 1723, type: !30)
!647 = !DILocation(line: 1723, column: 7, scope: !119)
!648 = !DILocation(line: 1725, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1725, column: 7)
!650 = !DILocation(line: 1725, column: 12, scope: !649)
!651 = !DILocation(line: 1725, column: 7, scope: !119)
!652 = !DILocation(line: 1726, column: 11, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !2, line: 1725, column: 18)
!654 = !DILocation(line: 1727, column: 3, scope: !653)
!655 = !DILocation(line: 1729, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1729, column: 7)
!657 = !DILocation(line: 1729, column: 13, scope: !656)
!658 = !DILocation(line: 1729, column: 7, scope: !119)
!659 = !DILocation(line: 1730, column: 11, scope: !660)
!660 = distinct !DILexicalBlock(scope: !656, file: !2, line: 1729, column: 25)
!661 = !DILocation(line: 1731, column: 3, scope: !660)
!662 = !DILocation(line: 1731, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !656, file: !2, line: 1731, column: 14)
!664 = !DILocation(line: 1731, column: 20, scope: !663)
!665 = !DILocation(line: 1731, column: 14, scope: !656)
!666 = !DILocation(line: 1732, column: 11, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !2, line: 1731, column: 31)
!668 = !DILocation(line: 1733, column: 3, scope: !667)
!669 = !DILocation(line: 1735, column: 13, scope: !119)
!670 = !DILocation(line: 1735, column: 19, scope: !119)
!671 = !DILocation(line: 1735, column: 10, scope: !119)
!672 = !DILocation(line: 1736, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1736, column: 7)
!674 = !DILocation(line: 1736, column: 13, scope: !673)
!675 = !DILocation(line: 1736, column: 7, scope: !119)
!676 = !DILocation(line: 1737, column: 14, scope: !677)
!677 = distinct !DILexicalBlock(scope: !673, file: !2, line: 1736, column: 21)
!678 = !DILocation(line: 1737, column: 20, scope: !677)
!679 = !DILocation(line: 1737, column: 11, scope: !677)
!680 = !DILocation(line: 1738, column: 3, scope: !677)
!681 = !DILocation(line: 1747, column: 7, scope: !682)
!682 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1747, column: 7)
!683 = !DILocation(line: 1747, column: 13, scope: !682)
!684 = !DILocation(line: 1747, column: 7, scope: !119)
!685 = !DILocation(line: 1748, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !2, line: 1747, column: 18)
!687 = !DILocation(line: 1748, column: 10, scope: !686)
!688 = !DILocation(line: 1750, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !686, file: !2, line: 1750, column: 8)
!690 = !DILocation(line: 1750, column: 15, scope: !689)
!691 = !DILocation(line: 1750, column: 8, scope: !686)
!692 = !DILocalVariable(name: "pad", scope: !693, file: !2, line: 1751, type: !4)
!693 = distinct !DILexicalBlock(scope: !689, file: !2, line: 1750, column: 26)
!694 = !DILocation(line: 1751, column: 10, scope: !693)
!695 = !DILocation(line: 1756, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !2, line: 1756, column: 9)
!697 = !DILocation(line: 1756, column: 15, scope: !696)
!698 = !DILocation(line: 1756, column: 9, scope: !693)
!699 = !DILocation(line: 1757, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 1757, column: 10)
!701 = distinct !DILexicalBlock(scope: !696, file: !2, line: 1756, column: 26)
!702 = !DILocation(line: 1757, column: 15, scope: !700)
!703 = !DILocation(line: 1757, column: 10, scope: !701)
!704 = !DILocation(line: 1758, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1757, column: 21)
!706 = !DILocalVariable(name: "rc", scope: !707, file: !2, line: 1758, type: !30)
!707 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1758, column: 10)
!708 = !DILocation(line: 1758, column: 16, scope: !707)
!709 = !DILocation(line: 1758, column: 23, scope: !707)
!710 = !DILocation(line: 1758, column: 34, scope: !707)
!711 = !DILocation(line: 1758, column: 28, scope: !707)
!712 = !DILocation(line: 1758, column: 41, scope: !707)
!713 = !DILocation(line: 1758, column: 21, scope: !707)
!714 = !DILocation(line: 1758, column: 51, scope: !715)
!715 = distinct !DILexicalBlock(scope: !707, file: !2, line: 1758, column: 51)
!716 = !DILocation(line: 1758, column: 54, scope: !715)
!717 = !DILocation(line: 1758, column: 51, scope: !707)
!718 = !DILocation(line: 1758, column: 68, scope: !719)
!719 = distinct !DILexicalBlock(scope: !715, file: !2, line: 1758, column: 59)
!720 = !DILocation(line: 1758, column: 61, scope: !719)
!721 = !DILocation(line: 1758, column: 74, scope: !707)
!722 = !DILocation(line: 1758, column: 83, scope: !707)
!723 = !DILocation(line: 1759, column: 12, scope: !705)
!724 = !DILocation(line: 1760, column: 6, scope: !705)
!725 = !DILocation(line: 1761, column: 10, scope: !701)
!726 = !DILocation(line: 1762, column: 5, scope: !701)
!727 = !DILocation(line: 1764, column: 5, scope: !693)
!728 = !DILocation(line: 1764, column: 17, scope: !693)
!729 = !DILocation(line: 1764, column: 20, scope: !693)
!730 = !DILocation(line: 1765, column: 6, scope: !731)
!731 = distinct !DILexicalBlock(scope: !693, file: !2, line: 1764, column: 25)
!732 = !DILocalVariable(name: "rc", scope: !733, file: !2, line: 1765, type: !30)
!733 = distinct !DILexicalBlock(scope: !731, file: !2, line: 1765, column: 9)
!734 = !DILocation(line: 1765, column: 15, scope: !733)
!735 = !DILocation(line: 1765, column: 22, scope: !733)
!736 = !DILocation(line: 1765, column: 33, scope: !733)
!737 = !DILocation(line: 1765, column: 27, scope: !733)
!738 = !DILocation(line: 1765, column: 39, scope: !733)
!739 = !DILocation(line: 1765, column: 20, scope: !733)
!740 = !DILocation(line: 1765, column: 49, scope: !741)
!741 = distinct !DILexicalBlock(scope: !733, file: !2, line: 1765, column: 49)
!742 = !DILocation(line: 1765, column: 52, scope: !741)
!743 = !DILocation(line: 1765, column: 49, scope: !733)
!744 = !DILocation(line: 1765, column: 66, scope: !745)
!745 = distinct !DILexicalBlock(scope: !741, file: !2, line: 1765, column: 57)
!746 = !DILocation(line: 1765, column: 59, scope: !745)
!747 = !DILocation(line: 1765, column: 72, scope: !733)
!748 = !DILocation(line: 1765, column: 81, scope: !733)
!749 = distinct !{!749, !727, !750}
!750 = !DILocation(line: 1766, column: 5, scope: !693)
!751 = !DILocation(line: 1767, column: 4, scope: !693)
!752 = !DILocation(line: 1768, column: 3, scope: !686)
!753 = !DILocation(line: 1773, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1773, column: 7)
!755 = !DILocation(line: 1773, column: 12, scope: !754)
!756 = !DILocation(line: 1773, column: 7, scope: !119)
!757 = !DILocation(line: 1774, column: 4, scope: !758)
!758 = distinct !DILexicalBlock(scope: !754, file: !2, line: 1773, column: 18)
!759 = !DILocalVariable(name: "rc", scope: !760, file: !2, line: 1774, type: !30)
!760 = distinct !DILexicalBlock(scope: !758, file: !2, line: 1774, column: 7)
!761 = !DILocation(line: 1774, column: 13, scope: !760)
!762 = !DILocation(line: 1774, column: 20, scope: !760)
!763 = !DILocation(line: 1774, column: 31, scope: !760)
!764 = !DILocation(line: 1774, column: 25, scope: !760)
!765 = !DILocation(line: 1774, column: 38, scope: !760)
!766 = !DILocation(line: 1774, column: 18, scope: !760)
!767 = !DILocation(line: 1774, column: 48, scope: !768)
!768 = distinct !DILexicalBlock(scope: !760, file: !2, line: 1774, column: 48)
!769 = !DILocation(line: 1774, column: 51, scope: !768)
!770 = !DILocation(line: 1774, column: 48, scope: !760)
!771 = !DILocation(line: 1774, column: 65, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !2, line: 1774, column: 56)
!773 = !DILocation(line: 1774, column: 58, scope: !772)
!774 = !DILocation(line: 1774, column: 71, scope: !760)
!775 = !DILocation(line: 1774, column: 80, scope: !760)
!776 = !DILocation(line: 1775, column: 3, scope: !758)
!777 = !DILocation(line: 1818, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1818, column: 8)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 1817, column: 10)
!780 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1777, column: 7)
!781 = !DILocation(line: 1818, column: 14, scope: !778)
!782 = !DILocation(line: 1818, column: 27, scope: !778)
!783 = !DILocation(line: 1818, column: 33, scope: !778)
!784 = !DILocation(line: 1818, column: 25, scope: !778)
!785 = !DILocation(line: 1818, column: 8, scope: !779)
!786 = !DILocation(line: 1819, column: 5, scope: !787)
!787 = distinct !DILexicalBlock(scope: !778, file: !2, line: 1818, column: 44)
!788 = !DILocalVariable(name: "rc", scope: !789, file: !2, line: 1819, type: !30)
!789 = distinct !DILexicalBlock(scope: !787, file: !2, line: 1819, column: 8)
!790 = !DILocation(line: 1819, column: 14, scope: !789)
!791 = !DILocation(line: 1819, column: 21, scope: !789)
!792 = !DILocation(line: 1819, column: 38, scope: !789)
!793 = !DILocation(line: 1819, column: 19, scope: !789)
!794 = !DILocation(line: 1819, column: 48, scope: !795)
!795 = distinct !DILexicalBlock(scope: !789, file: !2, line: 1819, column: 48)
!796 = !DILocation(line: 1819, column: 51, scope: !795)
!797 = !DILocation(line: 1819, column: 48, scope: !789)
!798 = !DILocation(line: 1819, column: 65, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !2, line: 1819, column: 56)
!800 = !DILocation(line: 1819, column: 58, scope: !799)
!801 = !DILocation(line: 1819, column: 71, scope: !789)
!802 = !DILocation(line: 1819, column: 80, scope: !789)
!803 = !DILocation(line: 1820, column: 4, scope: !787)
!804 = !DILocation(line: 1822, column: 8, scope: !805)
!805 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1822, column: 8)
!806 = !DILocation(line: 1822, column: 14, scope: !805)
!807 = !DILocation(line: 1822, column: 8, scope: !779)
!808 = !DILocation(line: 1823, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !805, file: !2, line: 1822, column: 26)
!810 = !DILocalVariable(name: "rc", scope: !811, file: !2, line: 1823, type: !30)
!811 = distinct !DILexicalBlock(scope: !809, file: !2, line: 1823, column: 8)
!812 = !DILocation(line: 1823, column: 14, scope: !811)
!813 = !DILocation(line: 1823, column: 21, scope: !811)
!814 = !DILocation(line: 1823, column: 32, scope: !811)
!815 = !DILocation(line: 1823, column: 38, scope: !811)
!816 = !DILocation(line: 1823, column: 26, scope: !811)
!817 = !DILocation(line: 1823, column: 50, scope: !811)
!818 = !DILocation(line: 1823, column: 19, scope: !811)
!819 = !DILocation(line: 1823, column: 60, scope: !820)
!820 = distinct !DILexicalBlock(scope: !811, file: !2, line: 1823, column: 60)
!821 = !DILocation(line: 1823, column: 63, scope: !820)
!822 = !DILocation(line: 1823, column: 60, scope: !811)
!823 = !DILocation(line: 1823, column: 77, scope: !824)
!824 = distinct !DILexicalBlock(scope: !820, file: !2, line: 1823, column: 68)
!825 = !DILocation(line: 1823, column: 70, scope: !824)
!826 = !DILocation(line: 1823, column: 83, scope: !811)
!827 = !DILocation(line: 1823, column: 92, scope: !811)
!828 = !DILocation(line: 1824, column: 4, scope: !809)
!829 = !DILocation(line: 1826, column: 14, scope: !779)
!830 = !DILocation(line: 1826, column: 20, scope: !779)
!831 = !DILocation(line: 1826, column: 12, scope: !779)
!832 = !DILocation(line: 1827, column: 4, scope: !779)
!833 = !DILocation(line: 1827, column: 18, scope: !779)
!834 = !DILocation(line: 1827, column: 21, scope: !779)
!835 = !DILocation(line: 1828, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1827, column: 26)
!837 = !DILocalVariable(name: "rc", scope: !838, file: !2, line: 1828, type: !30)
!838 = distinct !DILexicalBlock(scope: !836, file: !2, line: 1828, column: 8)
!839 = !DILocation(line: 1828, column: 14, scope: !838)
!840 = !DILocation(line: 1828, column: 21, scope: !838)
!841 = !DILocation(line: 1828, column: 38, scope: !838)
!842 = !DILocation(line: 1828, column: 19, scope: !838)
!843 = !DILocation(line: 1828, column: 48, scope: !844)
!844 = distinct !DILexicalBlock(scope: !838, file: !2, line: 1828, column: 48)
!845 = !DILocation(line: 1828, column: 51, scope: !844)
!846 = !DILocation(line: 1828, column: 48, scope: !838)
!847 = !DILocation(line: 1828, column: 65, scope: !848)
!848 = distinct !DILexicalBlock(scope: !844, file: !2, line: 1828, column: 56)
!849 = !DILocation(line: 1828, column: 58, scope: !848)
!850 = !DILocation(line: 1828, column: 71, scope: !838)
!851 = !DILocation(line: 1828, column: 80, scope: !838)
!852 = distinct !{!852, !832, !853}
!853 = !DILocation(line: 1829, column: 4, scope: !779)
!854 = !DILocation(line: 1831, column: 4, scope: !779)
!855 = !DILocalVariable(name: "rc", scope: !856, file: !2, line: 1831, type: !30)
!856 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1831, column: 7)
!857 = !DILocation(line: 1831, column: 13, scope: !856)
!858 = !DILocation(line: 1831, column: 23, scope: !856)
!859 = !DILocation(line: 1831, column: 28, scope: !856)
!860 = !DILocation(line: 1831, column: 33, scope: !856)
!861 = !DILocation(line: 1831, column: 38, scope: !856)
!862 = !DILocation(line: 1831, column: 18, scope: !856)
!863 = !DILocation(line: 1831, column: 48, scope: !864)
!864 = distinct !DILexicalBlock(scope: !856, file: !2, line: 1831, column: 48)
!865 = !DILocation(line: 1831, column: 51, scope: !864)
!866 = !DILocation(line: 1831, column: 48, scope: !856)
!867 = !DILocation(line: 1831, column: 65, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !2, line: 1831, column: 56)
!869 = !DILocation(line: 1831, column: 58, scope: !868)
!870 = !DILocation(line: 1831, column: 80, scope: !856)
!871 = !DILocation(line: 1831, column: 77, scope: !856)
!872 = !DILocation(line: 1831, column: 84, scope: !856)
!873 = !DILocation(line: 1835, column: 3, scope: !119)
!874 = !DILocation(line: 1835, column: 10, scope: !119)
!875 = !DILocation(line: 1835, column: 16, scope: !119)
!876 = !DILocation(line: 1836, column: 4, scope: !877)
!877 = distinct !DILexicalBlock(scope: !119, file: !2, line: 1835, column: 21)
!878 = !DILocalVariable(name: "rc", scope: !879, file: !2, line: 1836, type: !30)
!879 = distinct !DILexicalBlock(scope: !877, file: !2, line: 1836, column: 7)
!880 = !DILocation(line: 1836, column: 13, scope: !879)
!881 = !DILocation(line: 1836, column: 20, scope: !879)
!882 = !DILocation(line: 1836, column: 37, scope: !879)
!883 = !DILocation(line: 1836, column: 18, scope: !879)
!884 = !DILocation(line: 1836, column: 47, scope: !885)
!885 = distinct !DILexicalBlock(scope: !879, file: !2, line: 1836, column: 47)
!886 = !DILocation(line: 1836, column: 50, scope: !885)
!887 = !DILocation(line: 1836, column: 47, scope: !879)
!888 = !DILocation(line: 1836, column: 64, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !2, line: 1836, column: 55)
!890 = !DILocation(line: 1836, column: 57, scope: !889)
!891 = !DILocation(line: 1836, column: 70, scope: !879)
!892 = !DILocation(line: 1836, column: 79, scope: !879)
!893 = !DILocation(line: 1837, column: 4, scope: !877)
!894 = distinct !{!894, !873, !895}
!895 = !DILocation(line: 1838, column: 3, scope: !119)
!896 = !DILocation(line: 1841, column: 9, scope: !70)
!897 = !DILocation(line: 1841, column: 2, scope: !70)
!898 = !DILocation(line: 1844, column: 1, scope: !70)
!899 = distinct !DISubprogram(name: "extract_conversion", scope: !2, file: !2, line: 642, type: !900, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!900 = !DISubroutineType(types: !901)
!901 = !{!44, !194, !44}
!902 = !DILocalVariable(name: "conv", arg: 1, scope: !899, file: !2, line: 642, type: !194)
!903 = !DILocation(line: 642, column: 65, scope: !899)
!904 = !DILocalVariable(name: "sp", arg: 2, scope: !899, file: !2, line: 643, type: !44)
!905 = !DILocation(line: 643, column: 23, scope: !899)
!906 = !DILocation(line: 645, column: 3, scope: !899)
!907 = !DILocation(line: 645, column: 30, scope: !899)
!908 = !DILocation(line: 645, column: 10, scope: !899)
!909 = !DILocation(line: 653, column: 2, scope: !899)
!910 = !DILocation(line: 654, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !899, file: !2, line: 654, column: 6)
!912 = !DILocation(line: 654, column: 6, scope: !911)
!913 = !DILocation(line: 654, column: 10, scope: !911)
!914 = !DILocation(line: 654, column: 6, scope: !899)
!915 = !DILocation(line: 655, column: 24, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !2, line: 654, column: 18)
!917 = !DILocation(line: 655, column: 21, scope: !916)
!918 = !DILocation(line: 655, column: 3, scope: !916)
!919 = !DILocation(line: 655, column: 9, scope: !916)
!920 = !DILocation(line: 655, column: 19, scope: !916)
!921 = !DILocation(line: 656, column: 10, scope: !916)
!922 = !DILocation(line: 656, column: 3, scope: !916)
!923 = !DILocation(line: 659, column: 21, scope: !899)
!924 = !DILocation(line: 659, column: 27, scope: !899)
!925 = !DILocation(line: 659, column: 7, scope: !899)
!926 = !DILocation(line: 659, column: 5, scope: !899)
!927 = !DILocation(line: 660, column: 21, scope: !899)
!928 = !DILocation(line: 660, column: 27, scope: !899)
!929 = !DILocation(line: 660, column: 7, scope: !899)
!930 = !DILocation(line: 660, column: 5, scope: !899)
!931 = !DILocation(line: 661, column: 20, scope: !899)
!932 = !DILocation(line: 661, column: 26, scope: !899)
!933 = !DILocation(line: 661, column: 7, scope: !899)
!934 = !DILocation(line: 661, column: 5, scope: !899)
!935 = !DILocation(line: 662, column: 22, scope: !899)
!936 = !DILocation(line: 662, column: 28, scope: !899)
!937 = !DILocation(line: 662, column: 7, scope: !899)
!938 = !DILocation(line: 662, column: 5, scope: !899)
!939 = !DILocation(line: 663, column: 25, scope: !899)
!940 = !DILocation(line: 663, column: 31, scope: !899)
!941 = !DILocation(line: 663, column: 7, scope: !899)
!942 = !DILocation(line: 663, column: 5, scope: !899)
!943 = !DILocation(line: 665, column: 9, scope: !899)
!944 = !DILocation(line: 665, column: 2, scope: !899)
!945 = !DILocation(line: 666, column: 1, scope: !899)
!946 = distinct !DISubprogram(name: "outs", scope: !2, file: !2, line: 1319, type: !947, scopeLine: 1323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!947 = !DISubroutineType(types: !948)
!948 = !{!30, !73, !78, !44, !44}
!949 = !DILocalVariable(name: "out", arg: 1, scope: !946, file: !2, line: 1319, type: !73)
!950 = !DILocation(line: 1319, column: 29, scope: !946)
!951 = !DILocalVariable(name: "ctx", arg: 2, scope: !946, file: !2, line: 1320, type: !78)
!952 = !DILocation(line: 1320, column: 9, scope: !946)
!953 = !DILocalVariable(name: "sp", arg: 3, scope: !946, file: !2, line: 1321, type: !44)
!954 = !DILocation(line: 1321, column: 15, scope: !946)
!955 = !DILocalVariable(name: "ep", arg: 4, scope: !946, file: !2, line: 1322, type: !44)
!956 = !DILocation(line: 1322, column: 15, scope: !946)
!957 = !DILocalVariable(name: "count", scope: !946, file: !2, line: 1324, type: !46)
!958 = !DILocation(line: 1324, column: 9, scope: !946)
!959 = !DILocation(line: 1326, column: 2, scope: !946)
!960 = !DILocation(line: 1326, column: 10, scope: !946)
!961 = !DILocation(line: 1326, column: 15, scope: !946)
!962 = !DILocation(line: 1326, column: 13, scope: !946)
!963 = !DILocation(line: 1326, column: 19, scope: !946)
!964 = !DILocation(line: 1326, column: 24, scope: !946)
!965 = !DILocation(line: 1326, column: 27, scope: !946)
!966 = !DILocation(line: 1326, column: 33, scope: !946)
!967 = !DILocation(line: 1326, column: 37, scope: !946)
!968 = !DILocation(line: 1326, column: 36, scope: !946)
!969 = !DILocation(line: 0, scope: !946)
!970 = !DILocalVariable(name: "rc", scope: !971, file: !2, line: 1327, type: !30)
!971 = distinct !DILexicalBlock(scope: !946, file: !2, line: 1326, column: 42)
!972 = !DILocation(line: 1327, column: 7, scope: !971)
!973 = !DILocation(line: 1327, column: 12, scope: !971)
!974 = !DILocation(line: 1327, column: 24, scope: !971)
!975 = !DILocation(line: 1327, column: 21, scope: !971)
!976 = !DILocation(line: 1327, column: 16, scope: !971)
!977 = !DILocation(line: 1327, column: 28, scope: !971)
!978 = !DILocation(line: 1329, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !971, file: !2, line: 1329, column: 7)
!980 = !DILocation(line: 1329, column: 10, scope: !979)
!981 = !DILocation(line: 1329, column: 7, scope: !971)
!982 = !DILocation(line: 1330, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !2, line: 1329, column: 15)
!984 = !DILocation(line: 1330, column: 4, scope: !983)
!985 = !DILocation(line: 1332, column: 3, scope: !971)
!986 = distinct !{!986, !959, !987}
!987 = !DILocation(line: 1333, column: 2, scope: !946)
!988 = !DILocation(line: 1335, column: 14, scope: !946)
!989 = !DILocation(line: 1335, column: 2, scope: !946)
!990 = !DILocation(line: 1336, column: 1, scope: !946)
!991 = distinct !DISubprogram(name: "encode_uint", scope: !2, file: !2, line: 788, type: !992, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!992 = !DISubroutineType(types: !993)
!993 = !{!994, !40, !194, !994, !44}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!995 = !DILocalVariable(name: "value", arg: 1, scope: !991, file: !2, line: 788, type: !40)
!996 = !DILocation(line: 788, column: 42, scope: !991)
!997 = !DILocalVariable(name: "conv", arg: 2, scope: !991, file: !2, line: 789, type: !194)
!998 = !DILocation(line: 789, column: 24, scope: !991)
!999 = !DILocalVariable(name: "bps", arg: 3, scope: !991, file: !2, line: 790, type: !994)
!1000 = !DILocation(line: 790, column: 11, scope: !991)
!1001 = !DILocalVariable(name: "bpe", arg: 4, scope: !991, file: !2, line: 791, type: !44)
!1002 = !DILocation(line: 791, column: 17, scope: !991)
!1003 = !DILocalVariable(name: "upcase", scope: !991, file: !2, line: 793, type: !108)
!1004 = !DILocation(line: 793, column: 8, scope: !991)
!1005 = !DILocation(line: 793, column: 50, scope: !991)
!1006 = !DILocation(line: 793, column: 56, scope: !991)
!1007 = !DILocation(line: 793, column: 45, scope: !991)
!1008 = !DILocation(line: 793, column: 18, scope: !991)
!1009 = !DILocation(line: 793, column: 68, scope: !991)
!1010 = !DILocation(line: 793, column: 74, scope: !991)
!1011 = !DILocalVariable(name: "radix", scope: !991, file: !2, line: 794, type: !1012)
!1012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1013 = !DILocation(line: 794, column: 21, scope: !991)
!1014 = !DILocation(line: 794, column: 46, scope: !991)
!1015 = !DILocation(line: 794, column: 52, scope: !991)
!1016 = !DILocation(line: 794, column: 29, scope: !991)
!1017 = !DILocalVariable(name: "bp", scope: !991, file: !2, line: 795, type: !994)
!1018 = !DILocation(line: 795, column: 8, scope: !991)
!1019 = !DILocation(line: 795, column: 13, scope: !991)
!1020 = !DILocation(line: 795, column: 20, scope: !991)
!1021 = !DILocation(line: 795, column: 26, scope: !991)
!1022 = !DILocation(line: 795, column: 24, scope: !991)
!1023 = !DILocation(line: 795, column: 17, scope: !991)
!1024 = !DILocation(line: 797, column: 2, scope: !991)
!1025 = !DILocalVariable(name: "lsv", scope: !1026, file: !2, line: 798, type: !39)
!1026 = distinct !DILexicalBlock(scope: !991, file: !2, line: 797, column: 5)
!1027 = !DILocation(line: 798, column: 16, scope: !1026)
!1028 = !DILocation(line: 798, column: 37, scope: !1026)
!1029 = !DILocation(line: 798, column: 45, scope: !1026)
!1030 = !DILocation(line: 798, column: 43, scope: !1026)
!1031 = !DILocation(line: 798, column: 22, scope: !1026)
!1032 = !DILocation(line: 800, column: 12, scope: !1026)
!1033 = !DILocation(line: 800, column: 16, scope: !1026)
!1034 = !DILocation(line: 800, column: 11, scope: !1026)
!1035 = !DILocation(line: 800, column: 31, scope: !1026)
!1036 = !DILocation(line: 800, column: 29, scope: !1026)
!1037 = !DILocation(line: 801, column: 6, scope: !1026)
!1038 = !DILocation(line: 801, column: 22, scope: !1026)
!1039 = !DILocation(line: 801, column: 20, scope: !1026)
!1040 = !DILocation(line: 801, column: 26, scope: !1026)
!1041 = !DILocation(line: 801, column: 41, scope: !1026)
!1042 = !DILocation(line: 801, column: 39, scope: !1026)
!1043 = !DILocation(line: 801, column: 45, scope: !1026)
!1044 = !DILocation(line: 800, column: 4, scope: !1026)
!1045 = !DILocation(line: 800, column: 9, scope: !1026)
!1046 = !DILocation(line: 802, column: 12, scope: !1026)
!1047 = !DILocation(line: 802, column: 9, scope: !1026)
!1048 = !DILocation(line: 803, column: 2, scope: !1026)
!1049 = !DILocation(line: 803, column: 12, scope: !991)
!1050 = !DILocation(line: 803, column: 18, scope: !991)
!1051 = !DILocation(line: 803, column: 24, scope: !991)
!1052 = !DILocation(line: 803, column: 28, scope: !991)
!1053 = !DILocation(line: 803, column: 34, scope: !991)
!1054 = !DILocation(line: 803, column: 32, scope: !991)
!1055 = !DILocation(line: 0, scope: !991)
!1056 = distinct !{!1056, !1024, !1057}
!1057 = !DILocation(line: 803, column: 37, scope: !991)
!1058 = !DILocation(line: 808, column: 6, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !991, file: !2, line: 808, column: 6)
!1060 = !DILocation(line: 808, column: 12, scope: !1059)
!1061 = !DILocation(line: 808, column: 6, scope: !991)
!1062 = !DILocation(line: 809, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 809, column: 7)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 808, column: 23)
!1065 = !DILocation(line: 809, column: 13, scope: !1063)
!1066 = !DILocation(line: 809, column: 7, scope: !1064)
!1067 = !DILocation(line: 810, column: 4, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 809, column: 19)
!1069 = !DILocation(line: 810, column: 10, scope: !1068)
!1070 = !DILocation(line: 810, column: 20, scope: !1068)
!1071 = !DILocation(line: 811, column: 3, scope: !1068)
!1072 = !DILocation(line: 811, column: 14, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 811, column: 14)
!1074 = !DILocation(line: 811, column: 20, scope: !1073)
!1075 = !DILocation(line: 811, column: 14, scope: !1063)
!1076 = !DILocation(line: 812, column: 4, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !2, line: 811, column: 27)
!1078 = !DILocation(line: 812, column: 10, scope: !1077)
!1079 = !DILocation(line: 812, column: 21, scope: !1077)
!1080 = !DILocation(line: 813, column: 3, scope: !1077)
!1081 = !DILocation(line: 816, column: 2, scope: !1064)
!1082 = !DILocation(line: 818, column: 9, scope: !991)
!1083 = !DILocation(line: 818, column: 2, scope: !991)
!1084 = distinct !DISubprogram(name: "store_count", scope: !2, file: !2, line: 1280, type: !1085, scopeLine: 1283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !1087, !78, !30}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!1089 = !DILocalVariable(name: "conv", arg: 1, scope: !1084, file: !2, line: 1280, type: !1087)
!1090 = !DILocation(line: 1280, column: 57, scope: !1084)
!1091 = !DILocalVariable(name: "dp", arg: 2, scope: !1084, file: !2, line: 1281, type: !78)
!1092 = !DILocation(line: 1281, column: 17, scope: !1084)
!1093 = !DILocalVariable(name: "count", arg: 3, scope: !1084, file: !2, line: 1282, type: !30)
!1094 = !DILocation(line: 1282, column: 15, scope: !1084)
!1095 = !DILocation(line: 1284, column: 32, scope: !1084)
!1096 = !DILocation(line: 1284, column: 38, scope: !1084)
!1097 = !DILocation(line: 1284, column: 10, scope: !1084)
!1098 = !DILocation(line: 1284, column: 2, scope: !1084)
!1099 = !DILocation(line: 1286, column: 16, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1084, file: !2, line: 1284, column: 50)
!1101 = !DILocation(line: 1286, column: 11, scope: !1100)
!1102 = !DILocation(line: 1286, column: 14, scope: !1100)
!1103 = !DILocation(line: 1287, column: 3, scope: !1100)
!1104 = !DILocation(line: 1289, column: 37, scope: !1100)
!1105 = !DILocation(line: 1289, column: 24, scope: !1100)
!1106 = !DILocation(line: 1289, column: 19, scope: !1100)
!1107 = !DILocation(line: 1289, column: 22, scope: !1100)
!1108 = !DILocation(line: 1290, column: 3, scope: !1100)
!1109 = !DILocation(line: 1292, column: 25, scope: !1100)
!1110 = !DILocation(line: 1292, column: 18, scope: !1100)
!1111 = !DILocation(line: 1292, column: 13, scope: !1100)
!1112 = !DILocation(line: 1292, column: 16, scope: !1100)
!1113 = !DILocation(line: 1293, column: 3, scope: !1100)
!1114 = !DILocation(line: 1295, column: 23, scope: !1100)
!1115 = !DILocation(line: 1295, column: 12, scope: !1100)
!1116 = !DILocation(line: 1295, column: 15, scope: !1100)
!1117 = !DILocation(line: 1296, column: 3, scope: !1100)
!1118 = !DILocation(line: 1298, column: 33, scope: !1100)
!1119 = !DILocation(line: 1298, column: 22, scope: !1100)
!1120 = !DILocation(line: 1298, column: 17, scope: !1100)
!1121 = !DILocation(line: 1298, column: 20, scope: !1100)
!1122 = !DILocation(line: 1299, column: 3, scope: !1100)
!1123 = !DILocation(line: 1301, column: 31, scope: !1100)
!1124 = !DILocation(line: 1301, column: 21, scope: !1100)
!1125 = !DILocation(line: 1301, column: 16, scope: !1100)
!1126 = !DILocation(line: 1301, column: 19, scope: !1100)
!1127 = !DILocation(line: 1302, column: 3, scope: !1100)
!1128 = !DILocation(line: 1304, column: 27, scope: !1100)
!1129 = !DILocation(line: 1304, column: 14, scope: !1100)
!1130 = !DILocation(line: 1304, column: 17, scope: !1100)
!1131 = !DILocation(line: 1305, column: 3, scope: !1100)
!1132 = !DILocation(line: 1307, column: 33, scope: !1100)
!1133 = !DILocation(line: 1307, column: 17, scope: !1100)
!1134 = !DILocation(line: 1307, column: 20, scope: !1100)
!1135 = !DILocation(line: 1308, column: 3, scope: !1100)
!1136 = !DILocation(line: 1314, column: 3, scope: !1100)
!1137 = !DILocation(line: 1316, column: 1, scope: !1084)
!1138 = distinct !DISubprogram(name: "extract_flags", scope: !2, file: !2, line: 339, type: !900, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1139 = !DILocalVariable(name: "conv", arg: 1, scope: !1138, file: !2, line: 339, type: !194)
!1140 = !DILocation(line: 339, column: 60, scope: !1138)
!1141 = !DILocalVariable(name: "sp", arg: 2, scope: !1138, file: !2, line: 340, type: !44)
!1142 = !DILocation(line: 340, column: 18, scope: !1138)
!1143 = !DILocalVariable(name: "loop", scope: !1138, file: !2, line: 342, type: !108)
!1144 = !DILocation(line: 342, column: 8, scope: !1138)
!1145 = !DILocation(line: 344, column: 2, scope: !1138)
!1146 = !DILocation(line: 345, column: 12, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 344, column: 5)
!1148 = !DILocation(line: 345, column: 11, scope: !1147)
!1149 = !DILocation(line: 345, column: 3, scope: !1147)
!1150 = !DILocation(line: 347, column: 4, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 345, column: 16)
!1152 = !DILocation(line: 347, column: 20, scope: !1151)
!1153 = !DILocation(line: 348, column: 4, scope: !1151)
!1154 = !DILocation(line: 350, column: 4, scope: !1151)
!1155 = !DILocation(line: 350, column: 20, scope: !1151)
!1156 = !DILocation(line: 351, column: 4, scope: !1151)
!1157 = !DILocation(line: 353, column: 4, scope: !1151)
!1158 = !DILocation(line: 353, column: 21, scope: !1151)
!1159 = !DILocation(line: 354, column: 4, scope: !1151)
!1160 = !DILocation(line: 356, column: 4, scope: !1151)
!1161 = !DILocation(line: 356, column: 20, scope: !1151)
!1162 = !DILocation(line: 357, column: 4, scope: !1151)
!1163 = !DILocation(line: 359, column: 4, scope: !1151)
!1164 = !DILocation(line: 359, column: 20, scope: !1151)
!1165 = !DILocation(line: 360, column: 4, scope: !1151)
!1166 = !DILocation(line: 362, column: 9, scope: !1151)
!1167 = !DILocation(line: 363, column: 3, scope: !1151)
!1168 = !DILocation(line: 364, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 364, column: 7)
!1170 = !DILocation(line: 364, column: 7, scope: !1147)
!1171 = !DILocation(line: 365, column: 4, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 364, column: 13)
!1173 = !DILocation(line: 366, column: 3, scope: !1172)
!1174 = !DILocation(line: 367, column: 2, scope: !1147)
!1175 = !DILocation(line: 367, column: 11, scope: !1138)
!1176 = distinct !{!1176, !1145, !1177}
!1177 = !DILocation(line: 367, column: 15, scope: !1138)
!1178 = !DILocation(line: 370, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 370, column: 6)
!1180 = !DILocation(line: 370, column: 12, scope: !1179)
!1181 = !DILocation(line: 370, column: 22, scope: !1179)
!1182 = !DILocation(line: 370, column: 25, scope: !1179)
!1183 = !DILocation(line: 370, column: 31, scope: !1179)
!1184 = !DILocation(line: 370, column: 6, scope: !1138)
!1185 = !DILocation(line: 371, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 370, column: 42)
!1187 = !DILocation(line: 371, column: 19, scope: !1186)
!1188 = !DILocation(line: 372, column: 2, scope: !1186)
!1189 = !DILocation(line: 376, column: 9, scope: !1138)
!1190 = !DILocation(line: 376, column: 2, scope: !1138)
!1191 = distinct !DISubprogram(name: "extract_width", scope: !2, file: !2, line: 388, type: !900, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1192 = !DILocalVariable(name: "conv", arg: 1, scope: !1191, file: !2, line: 388, type: !194)
!1193 = !DILocation(line: 388, column: 60, scope: !1191)
!1194 = !DILocalVariable(name: "sp", arg: 2, scope: !1191, file: !2, line: 389, type: !44)
!1195 = !DILocation(line: 389, column: 18, scope: !1191)
!1196 = !DILocation(line: 391, column: 2, scope: !1191)
!1197 = !DILocation(line: 391, column: 22, scope: !1191)
!1198 = !DILocation(line: 393, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 393, column: 6)
!1200 = !DILocation(line: 393, column: 6, scope: !1199)
!1201 = !DILocation(line: 393, column: 10, scope: !1199)
!1202 = !DILocation(line: 393, column: 6, scope: !1191)
!1203 = !DILocation(line: 394, column: 3, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 393, column: 18)
!1205 = !DILocation(line: 394, column: 9, scope: !1204)
!1206 = !DILocation(line: 394, column: 20, scope: !1204)
!1207 = !DILocation(line: 395, column: 10, scope: !1204)
!1208 = !DILocation(line: 395, column: 3, scope: !1204)
!1209 = !DILocalVariable(name: "wp", scope: !1191, file: !2, line: 398, type: !44)
!1210 = !DILocation(line: 398, column: 14, scope: !1191)
!1211 = !DILocation(line: 398, column: 19, scope: !1191)
!1212 = !DILocalVariable(name: "width", scope: !1191, file: !2, line: 399, type: !46)
!1213 = !DILocation(line: 399, column: 9, scope: !1191)
!1214 = !DILocation(line: 399, column: 17, scope: !1191)
!1215 = !DILocation(line: 401, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 401, column: 6)
!1217 = !DILocation(line: 401, column: 12, scope: !1216)
!1218 = !DILocation(line: 401, column: 9, scope: !1216)
!1219 = !DILocation(line: 401, column: 6, scope: !1191)
!1220 = !DILocation(line: 402, column: 3, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 401, column: 16)
!1222 = !DILocation(line: 402, column: 23, scope: !1221)
!1223 = !DILocation(line: 403, column: 23, scope: !1221)
!1224 = !DILocation(line: 403, column: 3, scope: !1221)
!1225 = !DILocation(line: 403, column: 9, scope: !1221)
!1226 = !DILocation(line: 403, column: 21, scope: !1221)
!1227 = !DILocation(line: 404, column: 26, scope: !1221)
!1228 = !DILocation(line: 404, column: 32, scope: !1221)
!1229 = !DILocation(line: 404, column: 44, scope: !1221)
!1230 = !DILocation(line: 405, column: 11, scope: !1221)
!1231 = !DILocation(line: 405, column: 15, scope: !1221)
!1232 = !DILocation(line: 405, column: 32, scope: !1221)
!1233 = !DILocation(line: 405, column: 38, scope: !1221)
!1234 = !DILocation(line: 405, column: 21, scope: !1221)
!1235 = !DILocation(line: 404, column: 3, scope: !1221)
!1236 = !DILocation(line: 404, column: 21, scope: !1221)
!1237 = !DILocation(line: 406, column: 2, scope: !1221)
!1238 = !DILocation(line: 408, column: 9, scope: !1191)
!1239 = !DILocation(line: 408, column: 2, scope: !1191)
!1240 = !DILocation(line: 409, column: 1, scope: !1191)
!1241 = distinct !DISubprogram(name: "extract_prec", scope: !2, file: !2, line: 420, type: !900, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1242 = !DILocalVariable(name: "conv", arg: 1, scope: !1241, file: !2, line: 420, type: !194)
!1243 = !DILocation(line: 420, column: 59, scope: !1241)
!1244 = !DILocalVariable(name: "sp", arg: 2, scope: !1241, file: !2, line: 421, type: !44)
!1245 = !DILocation(line: 421, column: 24, scope: !1241)
!1246 = !DILocation(line: 423, column: 25, scope: !1241)
!1247 = !DILocation(line: 423, column: 24, scope: !1241)
!1248 = !DILocation(line: 423, column: 28, scope: !1241)
!1249 = !DILocation(line: 423, column: 2, scope: !1241)
!1250 = !DILocation(line: 423, column: 8, scope: !1241)
!1251 = !DILocation(line: 423, column: 21, scope: !1241)
!1252 = !DILocation(line: 425, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 425, column: 6)
!1254 = !DILocation(line: 425, column: 13, scope: !1253)
!1255 = !DILocation(line: 425, column: 6, scope: !1241)
!1256 = !DILocation(line: 426, column: 10, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 425, column: 27)
!1258 = !DILocation(line: 426, column: 3, scope: !1257)
!1259 = !DILocation(line: 428, column: 2, scope: !1241)
!1260 = !DILocation(line: 430, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 430, column: 6)
!1262 = !DILocation(line: 430, column: 6, scope: !1261)
!1263 = !DILocation(line: 430, column: 10, scope: !1261)
!1264 = !DILocation(line: 430, column: 6, scope: !1241)
!1265 = !DILocation(line: 431, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !2, line: 430, column: 18)
!1267 = !DILocation(line: 431, column: 9, scope: !1266)
!1268 = !DILocation(line: 431, column: 19, scope: !1266)
!1269 = !DILocation(line: 432, column: 10, scope: !1266)
!1270 = !DILocation(line: 432, column: 3, scope: !1266)
!1271 = !DILocalVariable(name: "prec", scope: !1241, file: !2, line: 435, type: !46)
!1272 = !DILocation(line: 435, column: 9, scope: !1241)
!1273 = !DILocation(line: 435, column: 16, scope: !1241)
!1274 = !DILocation(line: 437, column: 21, scope: !1241)
!1275 = !DILocation(line: 437, column: 2, scope: !1241)
!1276 = !DILocation(line: 437, column: 8, scope: !1241)
!1277 = !DILocation(line: 437, column: 19, scope: !1241)
!1278 = !DILocation(line: 438, column: 25, scope: !1241)
!1279 = !DILocation(line: 438, column: 31, scope: !1241)
!1280 = !DILocation(line: 438, column: 42, scope: !1241)
!1281 = !DILocation(line: 439, column: 10, scope: !1241)
!1282 = !DILocation(line: 439, column: 14, scope: !1241)
!1283 = !DILocation(line: 439, column: 30, scope: !1241)
!1284 = !DILocation(line: 439, column: 36, scope: !1241)
!1285 = !DILocation(line: 439, column: 19, scope: !1241)
!1286 = !DILocation(line: 438, column: 2, scope: !1241)
!1287 = !DILocation(line: 438, column: 20, scope: !1241)
!1288 = !DILocation(line: 441, column: 9, scope: !1241)
!1289 = !DILocation(line: 441, column: 2, scope: !1241)
!1290 = !DILocation(line: 442, column: 1, scope: !1241)
!1291 = distinct !DISubprogram(name: "extract_length", scope: !2, file: !2, line: 453, type: !900, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1292 = !DILocalVariable(name: "conv", arg: 1, scope: !1291, file: !2, line: 453, type: !194)
!1293 = !DILocation(line: 453, column: 61, scope: !1291)
!1294 = !DILocalVariable(name: "sp", arg: 2, scope: !1291, file: !2, line: 454, type: !44)
!1295 = !DILocation(line: 454, column: 19, scope: !1291)
!1296 = !DILocation(line: 456, column: 11, scope: !1291)
!1297 = !DILocation(line: 456, column: 10, scope: !1291)
!1298 = !DILocation(line: 456, column: 2, scope: !1291)
!1299 = !DILocation(line: 458, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 458, column: 7)
!1301 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 456, column: 15)
!1302 = !DILocation(line: 458, column: 7, scope: !1300)
!1303 = !DILocation(line: 458, column: 13, scope: !1300)
!1304 = !DILocation(line: 458, column: 7, scope: !1301)
!1305 = !DILocation(line: 459, column: 4, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 458, column: 21)
!1307 = !DILocation(line: 459, column: 10, scope: !1306)
!1308 = !DILocation(line: 459, column: 21, scope: !1306)
!1309 = !DILocation(line: 460, column: 4, scope: !1306)
!1310 = !DILocation(line: 461, column: 3, scope: !1306)
!1311 = !DILocation(line: 462, column: 4, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 461, column: 10)
!1313 = !DILocation(line: 462, column: 10, scope: !1312)
!1314 = !DILocation(line: 462, column: 21, scope: !1312)
!1315 = !DILocation(line: 464, column: 3, scope: !1301)
!1316 = !DILocation(line: 466, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 466, column: 7)
!1318 = !DILocation(line: 466, column: 7, scope: !1317)
!1319 = !DILocation(line: 466, column: 13, scope: !1317)
!1320 = !DILocation(line: 466, column: 7, scope: !1301)
!1321 = !DILocation(line: 467, column: 4, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 466, column: 21)
!1323 = !DILocation(line: 467, column: 10, scope: !1322)
!1324 = !DILocation(line: 467, column: 21, scope: !1322)
!1325 = !DILocation(line: 468, column: 4, scope: !1322)
!1326 = !DILocation(line: 469, column: 3, scope: !1322)
!1327 = !DILocation(line: 470, column: 4, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 469, column: 10)
!1329 = !DILocation(line: 470, column: 10, scope: !1328)
!1330 = !DILocation(line: 470, column: 21, scope: !1328)
!1331 = !DILocation(line: 472, column: 3, scope: !1301)
!1332 = !DILocation(line: 474, column: 3, scope: !1301)
!1333 = !DILocation(line: 474, column: 9, scope: !1301)
!1334 = !DILocation(line: 474, column: 20, scope: !1301)
!1335 = !DILocation(line: 475, column: 3, scope: !1301)
!1336 = !DILocation(line: 476, column: 3, scope: !1301)
!1337 = !DILocation(line: 478, column: 3, scope: !1301)
!1338 = !DILocation(line: 478, column: 9, scope: !1301)
!1339 = !DILocation(line: 478, column: 20, scope: !1301)
!1340 = !DILocation(line: 479, column: 3, scope: !1301)
!1341 = !DILocation(line: 480, column: 3, scope: !1301)
!1342 = !DILocation(line: 482, column: 3, scope: !1301)
!1343 = !DILocation(line: 482, column: 9, scope: !1301)
!1344 = !DILocation(line: 482, column: 20, scope: !1301)
!1345 = !DILocation(line: 483, column: 3, scope: !1301)
!1346 = !DILocation(line: 484, column: 3, scope: !1301)
!1347 = !DILocation(line: 486, column: 3, scope: !1301)
!1348 = !DILocation(line: 486, column: 9, scope: !1301)
!1349 = !DILocation(line: 486, column: 20, scope: !1301)
!1350 = !DILocation(line: 487, column: 3, scope: !1301)
!1351 = !DILocation(line: 492, column: 3, scope: !1301)
!1352 = !DILocation(line: 492, column: 21, scope: !1301)
!1353 = !DILocation(line: 493, column: 3, scope: !1301)
!1354 = !DILocation(line: 495, column: 3, scope: !1301)
!1355 = !DILocation(line: 495, column: 9, scope: !1301)
!1356 = !DILocation(line: 495, column: 20, scope: !1301)
!1357 = !DILocation(line: 496, column: 3, scope: !1301)
!1358 = !DILocation(line: 498, column: 9, scope: !1291)
!1359 = !DILocation(line: 498, column: 2, scope: !1291)
!1360 = distinct !DISubprogram(name: "extract_specifier", scope: !2, file: !2, line: 513, type: !900, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1361 = !DILocalVariable(name: "conv", arg: 1, scope: !1360, file: !2, line: 513, type: !194)
!1362 = !DILocation(line: 513, column: 64, scope: !1360)
!1363 = !DILocalVariable(name: "sp", arg: 2, scope: !1360, file: !2, line: 514, type: !44)
!1364 = !DILocation(line: 514, column: 22, scope: !1360)
!1365 = !DILocalVariable(name: "unsupported", scope: !1360, file: !2, line: 516, type: !108)
!1366 = !DILocation(line: 516, column: 8, scope: !1360)
!1367 = !DILocation(line: 518, column: 23, scope: !1360)
!1368 = !DILocation(line: 518, column: 20, scope: !1360)
!1369 = !DILocation(line: 518, column: 2, scope: !1360)
!1370 = !DILocation(line: 518, column: 8, scope: !1360)
!1371 = !DILocation(line: 518, column: 18, scope: !1360)
!1372 = !DILocation(line: 520, column: 10, scope: !1360)
!1373 = !DILocation(line: 520, column: 16, scope: !1360)
!1374 = !DILocation(line: 520, column: 2, scope: !1360)
!1375 = !DILocation(line: 522, column: 3, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 520, column: 27)
!1377 = !DILocation(line: 522, column: 9, scope: !1376)
!1378 = !DILocation(line: 522, column: 23, scope: !1376)
!1379 = !DILocation(line: 523, column: 3, scope: !1376)
!1380 = !DILocation(line: 525, column: 3, scope: !1376)
!1381 = !DILocation(line: 525, column: 9, scope: !1376)
!1382 = !DILocation(line: 525, column: 23, scope: !1376)
!1383 = !DILabel(scope: !1376, name: "int_conv", file: !2, line: 526)
!1384 = !DILocation(line: 526, column: 1, scope: !1376)
!1385 = !DILocation(line: 528, column: 7, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 528, column: 7)
!1387 = !DILocation(line: 528, column: 13, scope: !1386)
!1388 = !DILocation(line: 528, column: 24, scope: !1386)
!1389 = !DILocation(line: 528, column: 7, scope: !1376)
!1390 = !DILocation(line: 529, column: 4, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 528, column: 43)
!1392 = !DILocation(line: 529, column: 18, scope: !1391)
!1393 = !DILocation(line: 530, column: 3, scope: !1391)
!1394 = !DILocation(line: 535, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 535, column: 7)
!1396 = !DILocation(line: 535, column: 13, scope: !1395)
!1397 = !DILocation(line: 535, column: 23, scope: !1395)
!1398 = !DILocation(line: 535, column: 7, scope: !1376)
!1399 = !DILocation(line: 536, column: 19, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 535, column: 31)
!1401 = !DILocation(line: 536, column: 25, scope: !1400)
!1402 = !DILocation(line: 536, column: 36, scope: !1400)
!1403 = !DILocation(line: 536, column: 16, scope: !1400)
!1404 = !DILocation(line: 537, column: 3, scope: !1400)
!1405 = !DILocation(line: 567, column: 3, scope: !1376)
!1406 = !DILocation(line: 570, column: 3, scope: !1376)
!1407 = !DILocation(line: 570, column: 9, scope: !1376)
!1408 = !DILocation(line: 570, column: 23, scope: !1376)
!1409 = !DILocation(line: 574, column: 16, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !2, line: 573, column: 11)
!1411 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 573, column: 7)
!1412 = !DILocation(line: 575, column: 4, scope: !1410)
!1413 = !DILocation(line: 603, column: 3, scope: !1376)
!1414 = !DILocation(line: 603, column: 9, scope: !1376)
!1415 = !DILocation(line: 603, column: 23, scope: !1376)
!1416 = !DILocation(line: 605, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 605, column: 7)
!1418 = !DILocation(line: 605, column: 13, scope: !1417)
!1419 = !DILocation(line: 605, column: 24, scope: !1417)
!1420 = !DILocation(line: 605, column: 7, scope: !1376)
!1421 = !DILocation(line: 606, column: 16, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 605, column: 43)
!1423 = !DILocation(line: 607, column: 3, scope: !1422)
!1424 = !DILocation(line: 608, column: 3, scope: !1376)
!1425 = !DILocation(line: 612, column: 3, scope: !1376)
!1426 = !DILocation(line: 612, column: 9, scope: !1376)
!1427 = !DILocation(line: 612, column: 23, scope: !1376)
!1428 = !DILocation(line: 619, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 619, column: 7)
!1430 = !DILocation(line: 619, column: 13, scope: !1429)
!1431 = !DILocation(line: 619, column: 24, scope: !1429)
!1432 = !DILocation(line: 619, column: 7, scope: !1376)
!1433 = !DILocation(line: 620, column: 16, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 619, column: 40)
!1435 = !DILocation(line: 621, column: 3, scope: !1434)
!1436 = !DILocation(line: 622, column: 3, scope: !1376)
!1437 = !DILocation(line: 625, column: 3, scope: !1376)
!1438 = !DILocation(line: 625, column: 17, scope: !1376)
!1439 = !DILocation(line: 626, column: 3, scope: !1376)
!1440 = !DILocation(line: 629, column: 23, scope: !1360)
!1441 = !DILocation(line: 629, column: 2, scope: !1360)
!1442 = !DILocation(line: 629, column: 20, scope: !1360)
!1443 = !DILocation(line: 631, column: 9, scope: !1360)
!1444 = !DILocation(line: 631, column: 2, scope: !1360)
!1445 = distinct !DISubprogram(name: "extract_decimal", scope: !2, file: !2, line: 318, type: !1446, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!46, !1448}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!1449 = !DILocalVariable(name: "str", arg: 1, scope: !1445, file: !2, line: 318, type: !1448)
!1450 = !DILocation(line: 318, column: 44, scope: !1445)
!1451 = !DILocalVariable(name: "sp", scope: !1445, file: !2, line: 320, type: !44)
!1452 = !DILocation(line: 320, column: 14, scope: !1445)
!1453 = !DILocation(line: 320, column: 20, scope: !1445)
!1454 = !DILocation(line: 320, column: 19, scope: !1445)
!1455 = !DILocalVariable(name: "val", scope: !1445, file: !2, line: 321, type: !46)
!1456 = !DILocation(line: 321, column: 9, scope: !1445)
!1457 = !DILocation(line: 323, column: 2, scope: !1445)
!1458 = !DILocation(line: 323, column: 43, scope: !1445)
!1459 = !DILocation(line: 323, column: 42, scope: !1445)
!1460 = !DILocation(line: 323, column: 22, scope: !1445)
!1461 = !DILocation(line: 323, column: 47, scope: !1445)
!1462 = !DILocation(line: 323, column: 54, scope: !1445)
!1463 = !DILocation(line: 323, column: 60, scope: !1445)
!1464 = !DILocation(line: 324, column: 15, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 323, column: 66)
!1466 = !DILocation(line: 324, column: 13, scope: !1465)
!1467 = !DILocation(line: 324, column: 24, scope: !1465)
!1468 = !DILocation(line: 324, column: 21, scope: !1465)
!1469 = !DILocation(line: 324, column: 19, scope: !1465)
!1470 = !DILocation(line: 324, column: 27, scope: !1465)
!1471 = !DILocation(line: 324, column: 7, scope: !1465)
!1472 = distinct !{!1472, !1457, !1473}
!1473 = !DILocation(line: 325, column: 2, scope: !1445)
!1474 = !DILocation(line: 326, column: 9, scope: !1445)
!1475 = !DILocation(line: 326, column: 3, scope: !1445)
!1476 = !DILocation(line: 326, column: 7, scope: !1445)
!1477 = !DILocation(line: 327, column: 9, scope: !1445)
!1478 = !DILocation(line: 327, column: 2, scope: !1445)
!1479 = distinct !DISubprogram(name: "conversion_radix", scope: !2, file: !2, line: 761, type: !1480, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !86)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!46, !4}
!1482 = !DILocalVariable(name: "specifier", arg: 1, scope: !1479, file: !2, line: 761, type: !4)
!1483 = !DILocation(line: 761, column: 44, scope: !1479)
!1484 = !DILocation(line: 763, column: 10, scope: !1479)
!1485 = !DILocation(line: 763, column: 2, scope: !1479)
!1486 = !DILocation(line: 763, column: 21, scope: !1479)
!1487 = !DILocation(line: 768, column: 3, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 763, column: 21)
!1489 = !DILocation(line: 770, column: 3, scope: !1488)
!1490 = !DILocation(line: 774, column: 3, scope: !1488)
!1491 = !DILocation(line: 776, column: 1, scope: !1479)
