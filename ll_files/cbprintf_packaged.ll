; ModuleID = '../bc_files/cbprintf_packaged.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/cbprintf_packaged.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.__va_list = type { ptr }
%union.anon = type { double }
%struct.cbprintf_package_desc = type { i8, i8, i8, i8 }
%struct.cbprintf_package_hdr_ext = type { %union.cbprintf_package_hdr, ptr }
%union.cbprintf_package_hdr = type { ptr }
%union.anon.0 = type { %struct.__va_list }

@__rodata_region_start = external dso_local global [0 x i8], align 1
@__rodata_region_end = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind optsize
define hidden i32 @cbvprintf_package(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, [1 x i32] %4) #0 !dbg !38 {
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
  %29 = alloca i32, align 4
  %30 = alloca %union.anon, align 8
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i8, align 1
  %38 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0
  store [1 x i32] %4, ptr %38, align 4
  store ptr %0, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !50, metadata !DIExpression()), !dbg !120
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !51, metadata !DIExpression()), !dbg !121
  store i32 %2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !52, metadata !DIExpression()), !dbg !122
  store ptr %3, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !53, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata ptr %7, metadata !54, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !125
  call void @llvm.dbg.declare(metadata ptr %12, metadata !55, metadata !DIExpression()), !dbg !126
  %39 = load ptr, ptr %8, align 4, !dbg !127
  store ptr %39, ptr %12, align 4, !dbg !126
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %13, metadata !56, metadata !DIExpression()), !dbg !129
  %40 = load ptr, ptr %12, align 4, !dbg !130
  store ptr %40, ptr %13, align 4, !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6, !dbg !131
  call void @llvm.dbg.declare(metadata ptr %14, metadata !57, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %15, metadata !58, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 16, ptr %16) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %16, metadata !59, metadata !DIExpression()), !dbg !136
  call void @llvm.lifetime.start.p0(i64 16, ptr %17) #6, !dbg !137
  call void @llvm.dbg.declare(metadata ptr %17, metadata !63, metadata !DIExpression()), !dbg !138
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #6, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %18, metadata !64, metadata !DIExpression()), !dbg !140
  store i32 0, ptr %18, align 4, !dbg !140
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %19, metadata !65, metadata !DIExpression()), !dbg !142
  store i32 0, ptr %19, align 4, !dbg !142
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #6, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %20, metadata !66, metadata !DIExpression()), !dbg !144
  store i32 0, ptr %20, align 4, !dbg !144
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #6, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %21, metadata !67, metadata !DIExpression()), !dbg !146
  store i32 -1, ptr %21, align 4, !dbg !146
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #6, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %22, metadata !68, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #6, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %23, metadata !69, metadata !DIExpression()), !dbg !150
  call void @llvm.lifetime.start.p0(i64 1, ptr %24) #6, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %24, metadata !70, metadata !DIExpression()), !dbg !152
  store i8 0, ptr %24, align 1, !dbg !152
  call void @llvm.lifetime.start.p0(i64 1, ptr %25) #6, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %25, metadata !72, metadata !DIExpression()), !dbg !154
  %41 = load i32, ptr %10, align 4, !dbg !155
  %42 = and i32 %41, 4, !dbg !156
  %43 = icmp ne i32 %42, 0, !dbg !157
  %44 = xor i1 %43, true, !dbg !157
  %45 = xor i1 %44, true, !dbg !158
  %46 = zext i1 %45 to i8, !dbg !154
  store i8 %46, ptr %25, align 1, !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #6, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %26, metadata !73, metadata !DIExpression()), !dbg !160
  %47 = load i32, ptr %10, align 4, !dbg !161
  %48 = lshr i32 %47, 3, !dbg !162
  %49 = and i32 %48, 7, !dbg !163
  %50 = add i32 1, %49, !dbg !164
  store i32 %50, ptr %26, align 4, !dbg !160
  call void @llvm.lifetime.start.p0(i64 1, ptr %27) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %27, metadata !74, metadata !DIExpression()), !dbg !166
  store i8 0, ptr %27, align 1, !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #6, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %28, metadata !75, metadata !DIExpression()), !dbg !168
  %51 = load ptr, ptr %8, align 4, !dbg !169
  store ptr %51, ptr %28, align 4, !dbg !168
  %52 = load ptr, ptr %8, align 4, !dbg !170
  %53 = ptrtoint ptr %52 to i32, !dbg !172
  %54 = urem i32 %53, 4, !dbg !173
  %55 = icmp ne i32 %54, 0, !dbg !173
  br i1 %55, label %56, label %57, !dbg !174

56:                                               ; preds = %5
  store i32 -14, ptr %6, align 4, !dbg !175
  store i32 1, ptr %29, align 4
  br label %564, !dbg !175

57:                                               ; preds = %5
  %58 = load ptr, ptr %13, align 4, !dbg !177
  %59 = getelementptr inbounds i8, ptr %58, i32 4, !dbg !177
  store ptr %59, ptr %13, align 4, !dbg !177
  %60 = load ptr, ptr %12, align 4, !dbg !178
  %61 = icmp eq ptr %60, null, !dbg !180
  br i1 %61, label %62, label %70, !dbg !181

62:                                               ; preds = %57
  %63 = load i32, ptr %9, align 4, !dbg !182
  %64 = urem i32 %63, 8, !dbg !184
  %65 = load ptr, ptr %13, align 4, !dbg !185
  %66 = getelementptr inbounds i8, ptr %65, i32 %64, !dbg !185
  store ptr %66, ptr %13, align 4, !dbg !185
  %67 = load i32, ptr %9, align 4, !dbg !186
  %68 = urem i32 %67, 8, !dbg !187
  %69 = sub i32 8, %68, !dbg !188
  store i32 %69, ptr %9, align 4, !dbg !189
  br label %70, !dbg !190

70:                                               ; preds = %62, %57
  %71 = load ptr, ptr %12, align 4, !dbg !191
  %72 = icmp ne ptr %71, null, !dbg !193
  br i1 %72, label %73, label %83, !dbg !194

73:                                               ; preds = %70
  %74 = load ptr, ptr %13, align 4, !dbg !195
  %75 = ptrtoint ptr %74 to i32, !dbg !196
  %76 = load ptr, ptr %12, align 4, !dbg !197
  %77 = ptrtoint ptr %76 to i32, !dbg !198
  %78 = sub i32 %75, %77, !dbg !199
  %79 = add i32 %78, 4, !dbg !200
  %80 = load i32, ptr %9, align 4, !dbg !201
  %81 = icmp ugt i32 %79, %80, !dbg !202
  br i1 %81, label %82, label %83, !dbg !203

82:                                               ; preds = %73
  store i32 -28, ptr %6, align 4, !dbg !204
  store i32 1, ptr %29, align 4
  br label %564, !dbg !204

83:                                               ; preds = %73, %70
  %84 = load ptr, ptr %11, align 4, !dbg !206
  %85 = getelementptr inbounds i8, ptr %84, i32 -1, !dbg !206
  store ptr %85, ptr %11, align 4, !dbg !206
  store ptr %84, ptr %23, align 4, !dbg !207
  store i32 4, ptr %15, align 4, !dbg !208
  store i32 4, ptr %14, align 4, !dbg !209
  br label %233, !dbg !210

86:                                               ; No predecessors!
  br label %87, !dbg !211

87:                                               ; preds = %391, %201, %199, %117, %116, %115, %114, %111, %106, %86
  br label %88, !dbg !211

88:                                               ; preds = %87
  %89 = load ptr, ptr %11, align 4, !dbg !212
  %90 = getelementptr inbounds i8, ptr %89, i32 1, !dbg !212
  store ptr %90, ptr %11, align 4, !dbg !212
  %91 = load i8, ptr %90, align 1, !dbg !214
  %92 = zext i8 %91 to i32, !dbg !214
  %93 = icmp eq i32 %92, 0, !dbg !215
  br i1 %93, label %94, label %95, !dbg !216

94:                                               ; preds = %88
  br label %392, !dbg !217

95:                                               ; preds = %88
  %96 = load i8, ptr %24, align 1, !dbg !219, !range !221, !noundef !222
  %97 = trunc i8 %96 to i1, !dbg !219
  br i1 %97, label %107, label %98, !dbg !223

98:                                               ; preds = %95
  %99 = load ptr, ptr %11, align 4, !dbg !224
  %100 = load i8, ptr %99, align 1, !dbg !227
  %101 = zext i8 %100 to i32, !dbg !227
  %102 = icmp eq i32 %101, 37, !dbg !228
  br i1 %102, label %103, label %106, !dbg !229

103:                                              ; preds = %98
  store i8 1, ptr %24, align 1, !dbg !230
  %104 = load i32, ptr %21, align 4, !dbg !232
  %105 = add nsw i32 %104, 1, !dbg !232
  store i32 %105, ptr %21, align 4, !dbg !232
  store i32 4, ptr %15, align 4, !dbg !233
  store i32 4, ptr %14, align 4, !dbg !234
  br label %106, !dbg !235

106:                                              ; preds = %103, %98
  br label %87, !dbg !236, !llvm.loop !237

107:                                              ; preds = %95
  %108 = load ptr, ptr %11, align 4, !dbg !239
  %109 = load i8, ptr %108, align 1, !dbg !240
  %110 = zext i8 %109 to i32, !dbg !240
  switch i32 %110, label %201 [
    i32 37, label %111
    i32 35, label %114
    i32 45, label %114
    i32 43, label %114
    i32 32, label %114
    i32 48, label %114
    i32 49, label %114
    i32 50, label %114
    i32 51, label %114
    i32 52, label %114
    i32 53, label %114
    i32 54, label %114
    i32 55, label %114
    i32 56, label %114
    i32 57, label %114
    i32 46, label %114
    i32 104, label %114
    i32 108, label %114
    i32 76, label %114
    i32 42, label %202
    i32 106, label %115
    i32 122, label %116
    i32 116, label %117
    i32 99, label %118
    i32 100, label %118
    i32 105, label %118
    i32 111, label %118
    i32 117, label %118
    i32 120, label %118
    i32 88, label %118
    i32 115, label %134
    i32 112, label %135
    i32 110, label %135
    i32 97, label %136
    i32 65, label %136
    i32 101, label %136
    i32 69, label %136
    i32 102, label %136
    i32 70, label %136
    i32 103, label %136
    i32 71, label %136
  ], !dbg !241

111:                                              ; preds = %107
  store i8 0, ptr %24, align 1, !dbg !242
  %112 = load i32, ptr %21, align 4, !dbg !243
  %113 = add nsw i32 %112, -1, !dbg !243
  store i32 %113, ptr %21, align 4, !dbg !243
  br label %87, !dbg !244, !llvm.loop !237

114:                                              ; preds = %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107, %107
  br label %87, !dbg !245, !llvm.loop !237

115:                                              ; preds = %107
  store i32 8, ptr %15, align 4, !dbg !246
  store i32 8, ptr %14, align 4, !dbg !247
  br label %87, !dbg !248, !llvm.loop !237

116:                                              ; preds = %107
  store i32 4, ptr %15, align 4, !dbg !249
  store i32 4, ptr %14, align 4, !dbg !250
  br label %87, !dbg !251, !llvm.loop !237

117:                                              ; preds = %107
  store i32 4, ptr %15, align 4, !dbg !252
  store i32 4, ptr %14, align 4, !dbg !253
  br label %87, !dbg !254, !llvm.loop !237

118:                                              ; preds = %107, %107, %107, %107, %107, %107, %107
  %119 = load ptr, ptr %11, align 4, !dbg !255
  %120 = getelementptr inbounds i8, ptr %119, i32 -1, !dbg !255
  %121 = load i8, ptr %120, align 1, !dbg !255
  %122 = zext i8 %121 to i32, !dbg !255
  %123 = icmp eq i32 %122, 108, !dbg !257
  br i1 %123, label %124, label %133, !dbg !258

124:                                              ; preds = %118
  %125 = load ptr, ptr %11, align 4, !dbg !259
  %126 = getelementptr inbounds i8, ptr %125, i32 -2, !dbg !259
  %127 = load i8, ptr %126, align 1, !dbg !259
  %128 = zext i8 %127 to i32, !dbg !259
  %129 = icmp eq i32 %128, 108, !dbg !262
  br i1 %129, label %130, label %131, !dbg !263

130:                                              ; preds = %124
  store i32 8, ptr %15, align 4, !dbg !264
  store i32 8, ptr %14, align 4, !dbg !266
  br label %132, !dbg !267

131:                                              ; preds = %124
  store i32 4, ptr %15, align 4, !dbg !268
  store i32 4, ptr %14, align 4, !dbg !270
  br label %132

132:                                              ; preds = %131, %130
  br label %133, !dbg !271

133:                                              ; preds = %132, %118
  store i8 0, ptr %24, align 1, !dbg !272
  br label %202, !dbg !273

134:                                              ; preds = %107
  store i8 1, ptr %27, align 1, !dbg !274
  br label %135, !dbg !275

135:                                              ; preds = %107, %107, %134
  store i32 4, ptr %15, align 4, !dbg !276
  store i32 4, ptr %14, align 4, !dbg !277
  store i8 0, ptr %24, align 1, !dbg !278
  br label %202, !dbg !279

136:                                              ; preds = %107, %107, %107, %107, %107, %107, %107, %107
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #6, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %30, metadata !88, metadata !DIExpression()), !dbg !281
  %137 = load ptr, ptr %11, align 4, !dbg !282
  %138 = getelementptr inbounds i8, ptr %137, i32 -1, !dbg !282
  %139 = load i8, ptr %138, align 1, !dbg !282
  %140 = zext i8 %139 to i32, !dbg !282
  %141 = icmp eq i32 %140, 76, !dbg !284
  br i1 %141, label %142, label %150, !dbg !285

142:                                              ; preds = %136
  %143 = load ptr, ptr %7, align 4, !dbg !286
  %144 = ptrtoint ptr %143 to i32, !dbg !286
  %145 = add i32 %144, 7, !dbg !286
  %146 = and i32 %145, -8, !dbg !286
  %147 = inttoptr i32 %146 to ptr, !dbg !286
  %148 = getelementptr inbounds i8, ptr %147, i32 8, !dbg !286
  store ptr %148, ptr %7, align 4, !dbg !286
  %149 = load double, ptr %147, align 8, !dbg !286
  store double %149, ptr %30, align 8, !dbg !288
  store i32 8, ptr %15, align 4, !dbg !289
  store i32 8, ptr %14, align 4, !dbg !290
  br label %158, !dbg !291

150:                                              ; preds = %136
  %151 = load ptr, ptr %7, align 4, !dbg !292
  %152 = ptrtoint ptr %151 to i32, !dbg !292
  %153 = add i32 %152, 7, !dbg !292
  %154 = and i32 %153, -8, !dbg !292
  %155 = inttoptr i32 %154 to ptr, !dbg !292
  %156 = getelementptr inbounds i8, ptr %155, i32 8, !dbg !292
  store ptr %156, ptr %7, align 4, !dbg !292
  %157 = load double, ptr %155, align 8, !dbg !292
  store double %157, ptr %30, align 8, !dbg !294
  store i32 8, ptr %15, align 4, !dbg !295
  store i32 8, ptr %14, align 4, !dbg !296
  br label %158

158:                                              ; preds = %150, %142
  %159 = load ptr, ptr %13, align 4, !dbg !297
  %160 = ptrtoint ptr %159 to i32, !dbg !298
  %161 = load i32, ptr %15, align 4, !dbg !299
  %162 = sub i32 %161, 1, !dbg !300
  %163 = add i32 %160, %162, !dbg !301
  %164 = load i32, ptr %15, align 4, !dbg !302
  %165 = udiv i32 %163, %164, !dbg !303
  %166 = load i32, ptr %15, align 4, !dbg !304
  %167 = mul i32 %165, %166, !dbg !305
  %168 = inttoptr i32 %167 to ptr, !dbg !306
  store ptr %168, ptr %13, align 4, !dbg !307
  %169 = load ptr, ptr %12, align 4, !dbg !308
  %170 = icmp ne ptr %169, null, !dbg !310
  br i1 %170, label %171, label %195, !dbg !311

171:                                              ; preds = %158
  %172 = load ptr, ptr %13, align 4, !dbg !312
  %173 = ptrtoint ptr %172 to i32, !dbg !315
  %174 = load ptr, ptr %12, align 4, !dbg !316
  %175 = ptrtoint ptr %174 to i32, !dbg !317
  %176 = sub i32 %173, %175, !dbg !318
  %177 = load i32, ptr %14, align 4, !dbg !319
  %178 = add i32 %176, %177, !dbg !320
  %179 = load i32, ptr %9, align 4, !dbg !321
  %180 = icmp ugt i32 %178, %179, !dbg !322
  br i1 %180, label %181, label %182, !dbg !323

181:                                              ; preds = %171
  store i32 -28, ptr %6, align 4, !dbg !324
  store i32 1, ptr %29, align 4
  br label %199, !dbg !324

182:                                              ; preds = %171
  %183 = load ptr, ptr %11, align 4, !dbg !326
  %184 = getelementptr inbounds i8, ptr %183, i32 -1, !dbg !326
  %185 = load i8, ptr %184, align 1, !dbg !326
  %186 = zext i8 %185 to i32, !dbg !326
  %187 = icmp eq i32 %186, 76, !dbg !329
  br i1 %187, label %188, label %191, !dbg !330

188:                                              ; preds = %182
  %189 = load double, ptr %30, align 8, !dbg !331
  %190 = load ptr, ptr %13, align 4, !dbg !333
  store double %189, ptr %190, align 8, !dbg !334
  br label %194, !dbg !335

191:                                              ; preds = %182
  %192 = load double, ptr %30, align 8, !dbg !336
  %193 = load ptr, ptr %13, align 4, !dbg !338
  store double %192, ptr %193, align 8, !dbg !339
  br label %194

194:                                              ; preds = %191, %188
  br label %195, !dbg !340

195:                                              ; preds = %194, %158
  %196 = load i32, ptr %14, align 4, !dbg !341
  %197 = load ptr, ptr %13, align 4, !dbg !342
  %198 = getelementptr inbounds i8, ptr %197, i32 %196, !dbg !342
  store ptr %198, ptr %13, align 4, !dbg !342
  store i8 0, ptr %24, align 1, !dbg !343
  store i32 3, ptr %29, align 4
  br label %199, !dbg !344, !llvm.loop !237

199:                                              ; preds = %195, %181
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #6, !dbg !345
  %200 = load i32, ptr %29, align 4
  switch i32 %200, label %564 [
    i32 3, label %87
  ]

201:                                              ; preds = %107
  store i8 0, ptr %24, align 1, !dbg !346
  br label %87, !dbg !347, !llvm.loop !237

202:                                              ; preds = %135, %107, %133
  %203 = load ptr, ptr %13, align 4, !dbg !348
  %204 = ptrtoint ptr %203 to i32, !dbg !349
  %205 = load i32, ptr %15, align 4, !dbg !350
  %206 = sub i32 %205, 1, !dbg !351
  %207 = add i32 %204, %206, !dbg !352
  %208 = load i32, ptr %15, align 4, !dbg !353
  %209 = udiv i32 %207, %208, !dbg !354
  %210 = load i32, ptr %15, align 4, !dbg !355
  %211 = mul i32 %209, %210, !dbg !356
  %212 = inttoptr i32 %211 to ptr, !dbg !357
  store ptr %212, ptr %13, align 4, !dbg !358
  %213 = load ptr, ptr %12, align 4, !dbg !359
  %214 = icmp ne ptr %213, null, !dbg !361
  br i1 %214, label %215, label %226, !dbg !362

215:                                              ; preds = %202
  %216 = load ptr, ptr %13, align 4, !dbg !363
  %217 = ptrtoint ptr %216 to i32, !dbg !364
  %218 = load ptr, ptr %12, align 4, !dbg !365
  %219 = ptrtoint ptr %218 to i32, !dbg !366
  %220 = sub i32 %217, %219, !dbg !367
  %221 = load i32, ptr %14, align 4, !dbg !368
  %222 = add i32 %220, %221, !dbg !369
  %223 = load i32, ptr %9, align 4, !dbg !370
  %224 = icmp ugt i32 %222, %223, !dbg !371
  br i1 %224, label %225, label %226, !dbg !372

225:                                              ; preds = %215
  store i32 -28, ptr %6, align 4, !dbg !373
  store i32 1, ptr %29, align 4
  br label %564, !dbg !373

226:                                              ; preds = %215, %202
  %227 = load i8, ptr %27, align 1, !dbg !375, !range !221, !noundef !222
  %228 = trunc i8 %227 to i1, !dbg !375
  br i1 %228, label %229, label %338, !dbg !376

229:                                              ; preds = %226
  %230 = load ptr, ptr %7, align 4, !dbg !377
  %231 = getelementptr inbounds i8, ptr %230, i32 4, !dbg !377
  store ptr %231, ptr %7, align 4, !dbg !377
  %232 = load ptr, ptr %230, align 4, !dbg !377
  store ptr %232, ptr %23, align 4, !dbg !378
  br label %233, !dbg !379

233:                                              ; preds = %229, %83
  call void @llvm.dbg.label(metadata !119), !dbg !380
  %234 = load ptr, ptr %12, align 4, !dbg !381
  %235 = icmp ne ptr %234, null, !dbg !383
  br i1 %235, label %236, label %239, !dbg !384

236:                                              ; preds = %233
  %237 = load ptr, ptr %23, align 4, !dbg !385
  %238 = load ptr, ptr %13, align 4, !dbg !387
  store ptr %237, ptr %238, align 4, !dbg !388
  br label %239, !dbg !389

239:                                              ; preds = %236, %233
  call void @llvm.dbg.declare(metadata ptr %31, metadata !97, metadata !DIExpression()), !dbg !390
  %240 = load i32, ptr %26, align 4, !dbg !391
  %241 = add nsw i32 %240, -1, !dbg !391
  store i32 %241, ptr %26, align 4, !dbg !391
  %242 = icmp sgt i32 %240, 0, !dbg !392
  br i1 %242, label %243, label %244, !dbg !393

243:                                              ; preds = %239
  br label %248, !dbg !393

244:                                              ; preds = %239
  %245 = load ptr, ptr %23, align 4, !dbg !394
  %246 = call zeroext i1 @ptr_in_rodata(ptr noundef %245) #7, !dbg !395
  %247 = zext i1 %246 to i32, !dbg !395
  br label %248, !dbg !393

248:                                              ; preds = %244, %243
  %249 = phi i32 [ 1, %243 ], [ %247, %244 ], !dbg !393
  %250 = icmp ne i32 %249, 0, !dbg !393
  %251 = zext i1 %250 to i8, !dbg !390
  store i8 %251, ptr %31, align 1, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %32, metadata !100, metadata !DIExpression()), !dbg !396
  %252 = load i32, ptr %10, align 4, !dbg !397
  %253 = and i32 %252, 2, !dbg !398
  %254 = icmp ne i32 %253, 0, !dbg !399
  %255 = xor i1 %254, true, !dbg !399
  %256 = xor i1 %255, true, !dbg !400
  %257 = zext i1 %256 to i8, !dbg !396
  store i8 %257, ptr %32, align 1, !dbg !396
  %258 = load i8, ptr %31, align 1, !dbg !401, !range !221, !noundef !222
  %259 = trunc i8 %258 to i1, !dbg !401
  br i1 %259, label %260, label %264, !dbg !402

260:                                              ; preds = %248
  %261 = load i8, ptr %32, align 1, !dbg !403, !range !221, !noundef !222
  %262 = trunc i8 %261 to i1, !dbg !403
  br i1 %262, label %264, label %263, !dbg !404

263:                                              ; preds = %260
  br label %335, !dbg !405

264:                                              ; preds = %260, %248
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #6, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %33, metadata !101, metadata !DIExpression()), !dbg !408
  %265 = load ptr, ptr %13, align 4, !dbg !409
  %266 = ptrtoint ptr %265 to i32, !dbg !410
  %267 = load ptr, ptr %12, align 4, !dbg !411
  %268 = ptrtoint ptr %267 to i32, !dbg !412
  %269 = sub i32 %266, %268, !dbg !413
  %270 = udiv i32 %269, 4, !dbg !414
  store i32 %270, ptr %33, align 4, !dbg !408
  %271 = load i8, ptr %32, align 1, !dbg !415, !range !221, !noundef !222
  %272 = trunc i8 %271 to i1, !dbg !415
  br i1 %272, label %273, label %277, !dbg !417

273:                                              ; preds = %264
  %274 = load i32, ptr %33, align 4, !dbg !418
  %275 = icmp ugt i32 %274, 127, !dbg !419
  br i1 %275, label %276, label %277, !dbg !420

276:                                              ; preds = %273
  store i32 -5, ptr %6, align 4, !dbg !421
  store i32 1, ptr %29, align 4
  br label %332, !dbg !421

277:                                              ; preds = %273, %264
  %278 = load i32, ptr %18, align 4, !dbg !423
  %279 = icmp uge i32 %278, 16, !dbg !425
  br i1 %279, label %280, label %281, !dbg !426

280:                                              ; preds = %277
  store i32 -5, ptr %6, align 4, !dbg !427
  store i32 1, ptr %29, align 4
  br label %332, !dbg !427

281:                                              ; preds = %277
  %282 = load ptr, ptr %12, align 4, !dbg !429
  %283 = icmp ne ptr %282, null, !dbg !431
  br i1 %283, label %284, label %308, !dbg !432

284:                                              ; preds = %281
  %285 = load i32, ptr %33, align 4, !dbg !433
  %286 = trunc i32 %285 to i8, !dbg !433
  %287 = load i32, ptr %18, align 4, !dbg !435
  %288 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %287, !dbg !436
  store i8 %286, ptr %288, align 1, !dbg !437
  %289 = load i32, ptr %21, align 4, !dbg !438
  %290 = trunc i32 %289 to i8, !dbg !438
  %291 = load i32, ptr %18, align 4, !dbg !439
  %292 = getelementptr inbounds [16 x i8], ptr %17, i32 0, i32 %291, !dbg !440
  store i8 %290, ptr %292, align 1, !dbg !441
  %293 = load i8, ptr %31, align 1, !dbg !442, !range !221, !noundef !222
  %294 = trunc i8 %293 to i1, !dbg !442
  br i1 %294, label %295, label %304, !dbg !444

295:                                              ; preds = %284
  %296 = load i32, ptr %18, align 4, !dbg !445
  %297 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %296, !dbg !447
  %298 = load i8, ptr %297, align 1, !dbg !448
  %299 = zext i8 %298 to i32, !dbg !448
  %300 = or i32 %299, 128, !dbg !448
  %301 = trunc i32 %300 to i8, !dbg !448
  store i8 %301, ptr %297, align 1, !dbg !448
  %302 = load i32, ptr %20, align 4, !dbg !449
  %303 = add i32 %302, 1, !dbg !449
  store i32 %303, ptr %20, align 4, !dbg !449
  br label %307, !dbg !450

304:                                              ; preds = %284
  %305 = load i32, ptr %19, align 4, !dbg !451
  %306 = add i32 %305, 1, !dbg !451
  store i32 %306, ptr %19, align 4, !dbg !451
  br label %307

307:                                              ; preds = %304, %295
  br label %329, !dbg !453

308:                                              ; preds = %281
  %309 = load i8, ptr %31, align 1, !dbg !454, !range !221, !noundef !222
  %310 = trunc i8 %309 to i1, !dbg !454
  br i1 %310, label %311, label %314, !dbg !456

311:                                              ; preds = %308
  %312 = load i32, ptr %9, align 4, !dbg !457
  %313 = add i32 %312, 1, !dbg !457
  store i32 %313, ptr %9, align 4, !dbg !457
  br label %328, !dbg !459

314:                                              ; preds = %308
  %315 = load i8, ptr %25, align 1, !dbg !460, !range !221, !noundef !222
  %316 = trunc i8 %315 to i1, !dbg !460
  br i1 %316, label %317, label %320, !dbg !462

317:                                              ; preds = %314
  %318 = load i32, ptr %9, align 4, !dbg !463
  %319 = add i32 %318, 2, !dbg !463
  store i32 %319, ptr %9, align 4, !dbg !463
  br label %327, !dbg !465

320:                                              ; preds = %314
  %321 = load ptr, ptr %23, align 4, !dbg !466
  %322 = call i32 @strlen(ptr noundef %321) #8, !dbg !468
  %323 = add i32 %322, 1, !dbg !469
  %324 = add i32 %323, 1, !dbg !470
  %325 = load i32, ptr %9, align 4, !dbg !471
  %326 = add i32 %325, %324, !dbg !471
  store i32 %326, ptr %9, align 4, !dbg !471
  br label %327

327:                                              ; preds = %320, %317
  br label %328

328:                                              ; preds = %327, %311
  br label %329

329:                                              ; preds = %328, %307
  %330 = load i32, ptr %18, align 4, !dbg !472
  %331 = add i32 %330, 1, !dbg !472
  store i32 %331, ptr %18, align 4, !dbg !472
  store i32 0, ptr %29, align 4, !dbg !473
  br label %332, !dbg !473

332:                                              ; preds = %329, %280, %276
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #6, !dbg !473
  %333 = load i32, ptr %29, align 4
  switch i32 %333, label %564 [
    i32 0, label %334
  ]

334:                                              ; preds = %332
  br label %335

335:                                              ; preds = %334, %263
  %336 = load ptr, ptr %13, align 4, !dbg !474
  %337 = getelementptr inbounds i8, ptr %336, i32 4, !dbg !474
  store ptr %337, ptr %13, align 4, !dbg !474
  store i8 0, ptr %27, align 1, !dbg !475
  br label %391, !dbg !476

338:                                              ; preds = %226
  %339 = load i32, ptr %14, align 4, !dbg !477
  %340 = icmp eq i32 %339, 4, !dbg !478
  br i1 %340, label %341, label %353, !dbg !479

341:                                              ; preds = %338
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #6, !dbg !480
  call void @llvm.dbg.declare(metadata ptr %34, metadata !104, metadata !DIExpression()), !dbg !481
  %342 = load ptr, ptr %7, align 4, !dbg !482
  %343 = getelementptr inbounds i8, ptr %342, i32 4, !dbg !482
  store ptr %343, ptr %7, align 4, !dbg !482
  %344 = load i32, ptr %342, align 4, !dbg !482
  store i32 %344, ptr %34, align 4, !dbg !481
  %345 = load ptr, ptr %12, align 4, !dbg !483
  %346 = icmp ne ptr %345, null, !dbg !485
  br i1 %346, label %347, label %350, !dbg !486

347:                                              ; preds = %341
  %348 = load i32, ptr %34, align 4, !dbg !487
  %349 = load ptr, ptr %13, align 4, !dbg !489
  store i32 %348, ptr %349, align 4, !dbg !490
  br label %350, !dbg !491

350:                                              ; preds = %347, %341
  %351 = load ptr, ptr %13, align 4, !dbg !492
  %352 = getelementptr inbounds i8, ptr %351, i32 4, !dbg !492
  store ptr %352, ptr %13, align 4, !dbg !492
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #6, !dbg !493
  br label %390, !dbg !494

353:                                              ; preds = %338
  %354 = load i32, ptr %14, align 4, !dbg !495
  %355 = icmp eq i32 %354, 4, !dbg !496
  br i1 %355, label %356, label %368, !dbg !497

356:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #6, !dbg !498
  call void @llvm.dbg.declare(metadata ptr %35, metadata !107, metadata !DIExpression()), !dbg !499
  %357 = load ptr, ptr %7, align 4, !dbg !500
  %358 = getelementptr inbounds i8, ptr %357, i32 4, !dbg !500
  store ptr %358, ptr %7, align 4, !dbg !500
  %359 = load i32, ptr %357, align 4, !dbg !500
  store i32 %359, ptr %35, align 4, !dbg !499
  %360 = load ptr, ptr %12, align 4, !dbg !501
  %361 = icmp ne ptr %360, null, !dbg !503
  br i1 %361, label %362, label %365, !dbg !504

362:                                              ; preds = %356
  %363 = load i32, ptr %35, align 4, !dbg !505
  %364 = load ptr, ptr %13, align 4, !dbg !507
  store i32 %363, ptr %364, align 4, !dbg !508
  br label %365, !dbg !509

365:                                              ; preds = %362, %356
  %366 = load ptr, ptr %13, align 4, !dbg !510
  %367 = getelementptr inbounds i8, ptr %366, i32 4, !dbg !510
  store ptr %367, ptr %13, align 4, !dbg !510
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #6, !dbg !511
  br label %389, !dbg !512

368:                                              ; preds = %353
  %369 = load i32, ptr %14, align 4, !dbg !513
  %370 = icmp eq i32 %369, 8, !dbg !514
  br i1 %370, label %371, label %387, !dbg !515

371:                                              ; preds = %368
  call void @llvm.lifetime.start.p0(i64 8, ptr %36) #6, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %36, metadata !110, metadata !DIExpression()), !dbg !517
  %372 = load ptr, ptr %7, align 4, !dbg !518
  %373 = ptrtoint ptr %372 to i32, !dbg !518
  %374 = add i32 %373, 7, !dbg !518
  %375 = and i32 %374, -8, !dbg !518
  %376 = inttoptr i32 %375 to ptr, !dbg !518
  %377 = getelementptr inbounds i8, ptr %376, i32 8, !dbg !518
  store ptr %377, ptr %7, align 4, !dbg !518
  %378 = load i64, ptr %376, align 8, !dbg !518
  store i64 %378, ptr %36, align 8, !dbg !517
  %379 = load ptr, ptr %12, align 4, !dbg !519
  %380 = icmp ne ptr %379, null, !dbg !521
  br i1 %380, label %381, label %384, !dbg !522

381:                                              ; preds = %371
  %382 = load i64, ptr %36, align 8, !dbg !523
  %383 = load ptr, ptr %13, align 4, !dbg !527
  store i64 %382, ptr %383, align 8, !dbg !528
  br label %384, !dbg !529

384:                                              ; preds = %381, %371
  %385 = load ptr, ptr %13, align 4, !dbg !530
  %386 = getelementptr inbounds i8, ptr %385, i32 8, !dbg !530
  store ptr %386, ptr %13, align 4, !dbg !530
  call void @llvm.lifetime.end.p0(i64 8, ptr %36) #6, !dbg !531
  br label %388, !dbg !532

387:                                              ; preds = %368
  store i32 -5, ptr %6, align 4, !dbg !533
  store i32 1, ptr %29, align 4
  br label %564, !dbg !533

388:                                              ; preds = %384
  br label %389

389:                                              ; preds = %388, %365
  br label %390

390:                                              ; preds = %389, %350
  br label %391

391:                                              ; preds = %390, %335
  br label %87, !dbg !211, !llvm.loop !237

392:                                              ; preds = %94
  %393 = load ptr, ptr %13, align 4, !dbg !535
  %394 = ptrtoint ptr %393 to i32, !dbg !537
  %395 = load ptr, ptr %12, align 4, !dbg !538
  %396 = ptrtoint ptr %395 to i32, !dbg !539
  %397 = sub i32 %394, %396, !dbg !540
  %398 = udiv i32 %397, 4, !dbg !541
  %399 = icmp ugt i32 %398, 255, !dbg !542
  br i1 %399, label %400, label %401, !dbg !543

400:                                              ; preds = %392
  store i32 -5, ptr %6, align 4, !dbg !544
  store i32 1, ptr %29, align 4
  br label %564, !dbg !544

401:                                              ; preds = %392
  %402 = load ptr, ptr %12, align 4, !dbg !546
  %403 = icmp eq ptr %402, null, !dbg !548
  br i1 %403, label %404, label %413, !dbg !549

404:                                              ; preds = %401
  %405 = load ptr, ptr %13, align 4, !dbg !550
  %406 = ptrtoint ptr %405 to i32, !dbg !552
  %407 = load ptr, ptr %12, align 4, !dbg !553
  %408 = ptrtoint ptr %407 to i32, !dbg !554
  %409 = sub i32 %406, %408, !dbg !555
  %410 = load i32, ptr %9, align 4, !dbg !556
  %411 = add i32 %409, %410, !dbg !557
  %412 = sub i32 %411, 8, !dbg !558
  store i32 %412, ptr %6, align 4, !dbg !559
  store i32 1, ptr %29, align 4
  br label %564, !dbg !559

413:                                              ; preds = %401
  %414 = load ptr, ptr %12, align 4, !dbg !560
  store ptr null, ptr %414, align 4, !dbg !561
  %415 = load ptr, ptr %13, align 4, !dbg !562
  %416 = ptrtoint ptr %415 to i32, !dbg !563
  %417 = load ptr, ptr %12, align 4, !dbg !564
  %418 = ptrtoint ptr %417 to i32, !dbg !565
  %419 = sub i32 %416, %418, !dbg !566
  %420 = udiv i32 %419, 4, !dbg !567
  %421 = trunc i32 %420 to i8, !dbg !568
  %422 = load ptr, ptr %28, align 4, !dbg !569
  %423 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %422, i32 0, i32 0, !dbg !570
  store i8 %421, ptr %423, align 1, !dbg !571
  %424 = load i8, ptr %25, align 1, !dbg !572, !range !221, !noundef !222
  %425 = trunc i8 %424 to i1, !dbg !572
  br i1 %425, label %426, label %433, !dbg !574

426:                                              ; preds = %413
  %427 = load ptr, ptr %28, align 4, !dbg !575
  %428 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %427, i32 0, i32 1, !dbg !577
  store i8 0, ptr %428, align 1, !dbg !578
  %429 = load i32, ptr %19, align 4, !dbg !579
  %430 = trunc i32 %429 to i8, !dbg !579
  %431 = load ptr, ptr %28, align 4, !dbg !580
  %432 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %431, i32 0, i32 3, !dbg !581
  store i8 %430, ptr %432, align 1, !dbg !582
  br label %440, !dbg !583

433:                                              ; preds = %413
  %434 = load i32, ptr %19, align 4, !dbg !584
  %435 = trunc i32 %434 to i8, !dbg !584
  %436 = load ptr, ptr %28, align 4, !dbg !586
  %437 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %436, i32 0, i32 1, !dbg !587
  store i8 %435, ptr %437, align 1, !dbg !588
  %438 = load ptr, ptr %28, align 4, !dbg !589
  %439 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %438, i32 0, i32 3, !dbg !590
  store i8 0, ptr %439, align 1, !dbg !591
  br label %440

440:                                              ; preds = %433, %426
  %441 = load i32, ptr %20, align 4, !dbg !592
  %442 = trunc i32 %441 to i8, !dbg !592
  %443 = load ptr, ptr %28, align 4, !dbg !593
  %444 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %443, i32 0, i32 2, !dbg !594
  store i8 %442, ptr %444, align 1, !dbg !595
  %445 = load i32, ptr %20, align 4, !dbg !596
  %446 = icmp ne i32 %445, 0, !dbg !596
  br i1 %446, label %447, label %487, !dbg !597

447:                                              ; preds = %440
  store i32 0, ptr %22, align 4, !dbg !598
  br label %448, !dbg !599

448:                                              ; preds = %483, %447
  %449 = load i32, ptr %22, align 4, !dbg !600
  %450 = load i32, ptr %18, align 4, !dbg !601
  %451 = icmp ult i32 %449, %450, !dbg !602
  br i1 %451, label %452, label %486, !dbg !603

452:                                              ; preds = %448
  %453 = load i32, ptr %22, align 4, !dbg !604
  %454 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %453, !dbg !606
  %455 = load i8, ptr %454, align 1, !dbg !606
  %456 = zext i8 %455 to i32, !dbg !606
  %457 = and i32 %456, 128, !dbg !607
  %458 = icmp ne i32 %457, 0, !dbg !607
  br i1 %458, label %460, label %459, !dbg !608

459:                                              ; preds = %452
  br label %483, !dbg !609

460:                                              ; preds = %452
  call void @llvm.lifetime.start.p0(i64 1, ptr %37) #6, !dbg !611
  call void @llvm.dbg.declare(metadata ptr %37, metadata !113, metadata !DIExpression()), !dbg !612
  %461 = load i32, ptr %22, align 4, !dbg !613
  %462 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %461, !dbg !614
  %463 = load i8, ptr %462, align 1, !dbg !614
  %464 = zext i8 %463 to i32, !dbg !614
  %465 = and i32 %464, 127, !dbg !615
  %466 = trunc i32 %465 to i8, !dbg !614
  store i8 %466, ptr %37, align 1, !dbg !612
  %467 = load ptr, ptr %13, align 4, !dbg !616
  %468 = ptrtoint ptr %467 to i32, !dbg !618
  %469 = load ptr, ptr %12, align 4, !dbg !619
  %470 = ptrtoint ptr %469 to i32, !dbg !620
  %471 = sub i32 %468, %470, !dbg !621
  %472 = add i32 %471, 1, !dbg !622
  %473 = load i32, ptr %9, align 4, !dbg !623
  %474 = icmp ugt i32 %472, %473, !dbg !624
  br i1 %474, label %475, label %476, !dbg !625

475:                                              ; preds = %460
  store i32 -28, ptr %6, align 4, !dbg !626
  store i32 1, ptr %29, align 4
  br label %480, !dbg !626

476:                                              ; preds = %460
  %477 = load i8, ptr %37, align 1, !dbg !628
  %478 = load ptr, ptr %13, align 4, !dbg !629
  %479 = getelementptr inbounds i8, ptr %478, i32 1, !dbg !629
  store ptr %479, ptr %13, align 4, !dbg !629
  store i8 %477, ptr %478, align 1, !dbg !630
  store i32 0, ptr %29, align 4, !dbg !631
  br label %480, !dbg !631

480:                                              ; preds = %476, %475
  call void @llvm.lifetime.end.p0(i64 1, ptr %37) #6, !dbg !631
  %481 = load i32, ptr %29, align 4
  switch i32 %481, label %564 [
    i32 0, label %482
  ]

482:                                              ; preds = %480
  br label %483, !dbg !632

483:                                              ; preds = %482, %459
  %484 = load i32, ptr %22, align 4, !dbg !633
  %485 = add i32 %484, 1, !dbg !633
  store i32 %485, ptr %22, align 4, !dbg !633
  br label %448, !dbg !634, !llvm.loop !635

486:                                              ; preds = %448
  br label %487, !dbg !637

487:                                              ; preds = %486, %440
  store i32 0, ptr %22, align 4, !dbg !638
  br label %488, !dbg !640

488:                                              ; preds = %555, %487
  %489 = load i32, ptr %22, align 4, !dbg !641
  %490 = load i32, ptr %18, align 4, !dbg !643
  %491 = icmp ult i32 %489, %490, !dbg !644
  br i1 %491, label %492, label %558, !dbg !645

492:                                              ; preds = %488
  %493 = load i32, ptr %20, align 4, !dbg !646
  %494 = icmp ne i32 %493, 0, !dbg !646
  br i1 %494, label %495, label %503, !dbg !649

495:                                              ; preds = %492
  %496 = load i32, ptr %22, align 4, !dbg !650
  %497 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %496, !dbg !651
  %498 = load i8, ptr %497, align 1, !dbg !651
  %499 = zext i8 %498 to i32, !dbg !651
  %500 = and i32 %499, 128, !dbg !652
  %501 = icmp ne i32 %500, 0, !dbg !652
  br i1 %501, label %502, label %503, !dbg !653

502:                                              ; preds = %495
  br label %555, !dbg !654

503:                                              ; preds = %495, %492
  %504 = load i8, ptr %25, align 1, !dbg !656, !range !221, !noundef !222
  %505 = trunc i8 %504 to i1, !dbg !656
  br i1 %505, label %506, label %512, !dbg !658

506:                                              ; preds = %503
  store i32 0, ptr %14, align 4, !dbg !659
  %507 = load i32, ptr %22, align 4, !dbg !661
  %508 = getelementptr inbounds [16 x i8], ptr %17, i32 0, i32 %507, !dbg !662
  %509 = load i8, ptr %508, align 1, !dbg !662
  %510 = load ptr, ptr %13, align 4, !dbg !663
  %511 = getelementptr inbounds i8, ptr %510, i32 1, !dbg !663
  store ptr %511, ptr %13, align 4, !dbg !663
  store i8 %509, ptr %510, align 1, !dbg !664
  br label %531, !dbg !665

512:                                              ; preds = %503
  %513 = load ptr, ptr %12, align 4, !dbg !666
  %514 = load i32, ptr %22, align 4, !dbg !668
  %515 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %514, !dbg !669
  %516 = load i8, ptr %515, align 1, !dbg !669
  %517 = zext i8 %516 to i32, !dbg !669
  %518 = mul i32 %517, 4, !dbg !670
  %519 = getelementptr inbounds i8, ptr %513, i32 %518, !dbg !671
  %520 = load ptr, ptr %519, align 4, !dbg !672
  store ptr %520, ptr %23, align 4, !dbg !673
  %521 = load ptr, ptr %12, align 4, !dbg !674
  %522 = load i32, ptr %22, align 4, !dbg !675
  %523 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %522, !dbg !676
  %524 = load i8, ptr %523, align 1, !dbg !676
  %525 = zext i8 %524 to i32, !dbg !676
  %526 = mul i32 %525, 4, !dbg !677
  %527 = getelementptr inbounds i8, ptr %521, i32 %526, !dbg !678
  store ptr null, ptr %527, align 4, !dbg !679
  %528 = load ptr, ptr %23, align 4, !dbg !680
  %529 = call i32 @strlen(ptr noundef %528) #8, !dbg !681
  %530 = add i32 %529, 1, !dbg !682
  store i32 %530, ptr %14, align 4, !dbg !683
  br label %531

531:                                              ; preds = %512, %506
  %532 = load ptr, ptr %13, align 4, !dbg !684
  %533 = ptrtoint ptr %532 to i32, !dbg !686
  %534 = load ptr, ptr %12, align 4, !dbg !687
  %535 = ptrtoint ptr %534 to i32, !dbg !688
  %536 = sub i32 %533, %535, !dbg !689
  %537 = add i32 %536, 1, !dbg !690
  %538 = load i32, ptr %14, align 4, !dbg !691
  %539 = add i32 %537, %538, !dbg !692
  %540 = load i32, ptr %9, align 4, !dbg !693
  %541 = icmp ugt i32 %539, %540, !dbg !694
  br i1 %541, label %542, label %543, !dbg !695

542:                                              ; preds = %531
  store i32 -28, ptr %6, align 4, !dbg !696
  store i32 1, ptr %29, align 4
  br label %564, !dbg !696

543:                                              ; preds = %531
  %544 = load i32, ptr %22, align 4, !dbg !698
  %545 = getelementptr inbounds [16 x i8], ptr %16, i32 0, i32 %544, !dbg !699
  %546 = load i8, ptr %545, align 1, !dbg !699
  %547 = load ptr, ptr %13, align 4, !dbg !700
  %548 = getelementptr inbounds i8, ptr %547, i32 1, !dbg !700
  store ptr %548, ptr %13, align 4, !dbg !700
  store i8 %546, ptr %547, align 1, !dbg !701
  %549 = load ptr, ptr %13, align 4, !dbg !702
  %550 = load ptr, ptr %23, align 4, !dbg !703
  %551 = load i32, ptr %14, align 4, !dbg !704
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %549, ptr align 1 %550, i32 %551, i1 false), !dbg !705
  %552 = load i32, ptr %14, align 4, !dbg !706
  %553 = load ptr, ptr %13, align 4, !dbg !707
  %554 = getelementptr inbounds i8, ptr %553, i32 %552, !dbg !707
  store ptr %554, ptr %13, align 4, !dbg !707
  br label %555, !dbg !708

555:                                              ; preds = %543, %502
  %556 = load i32, ptr %22, align 4, !dbg !709
  %557 = add i32 %556, 1, !dbg !709
  store i32 %557, ptr %22, align 4, !dbg !709
  br label %488, !dbg !710, !llvm.loop !711

558:                                              ; preds = %488
  %559 = load ptr, ptr %13, align 4, !dbg !713
  %560 = ptrtoint ptr %559 to i32, !dbg !714
  %561 = load ptr, ptr %12, align 4, !dbg !715
  %562 = ptrtoint ptr %561 to i32, !dbg !716
  %563 = sub i32 %560, %562, !dbg !717
  store i32 %563, ptr %6, align 4, !dbg !718
  store i32 1, ptr %29, align 4
  br label %564, !dbg !718

564:                                              ; preds = %558, %542, %480, %404, %400, %387, %332, %225, %199, %82, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 1, ptr %27) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 1, ptr %25) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 1, ptr %24) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 16, ptr %17) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 16, ptr %16) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6, !dbg !719
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !719
  %565 = load i32, ptr %6, align 4, !dbg !719
  ret i32 %565, !dbg !719
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @ptr_in_rodata(ptr noundef %0) #3 !dbg !720 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !724, metadata !DIExpression()), !dbg !725
  %3 = load ptr, ptr %2, align 4, !dbg !726
  %4 = call zeroext i1 @linker_is_in_rodata(ptr noundef %3) #7, !dbg !727
  ret i1 %4, !dbg !728
}

; Function Attrs: nounwind optsize
declare !dbg !729 dso_local i32 @strlen(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind optsize
define hidden i32 @cbprintf_package(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ...) #0 !dbg !732 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.__va_list, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !736, metadata !DIExpression()), !dbg !742
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !737, metadata !DIExpression()), !dbg !743
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !738, metadata !DIExpression()), !dbg !744
  store ptr %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !739, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !746
  call void @llvm.dbg.declare(metadata ptr %9, metadata !740, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %10, metadata !741, metadata !DIExpression()), !dbg !749
  call void @llvm.va_start(ptr %9), !dbg !750
  %11 = load ptr, ptr %5, align 4, !dbg !751
  %12 = load i32, ptr %6, align 4, !dbg !752
  %13 = load i32, ptr %7, align 4, !dbg !753
  %14 = load ptr, ptr %8, align 4, !dbg !754
  %15 = getelementptr inbounds %struct.__va_list, ptr %9, i32 0, i32 0, !dbg !755
  %16 = load [1 x i32], ptr %15, align 4, !dbg !755
  %17 = call i32 @cbvprintf_package(ptr noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef %14, [1 x i32] %16) #7, !dbg !755
  store i32 %17, ptr %10, align 4, !dbg !756
  call void @llvm.va_end(ptr %9), !dbg !757
  %18 = load i32, ptr %10, align 4, !dbg !758
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !759
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !759
  ret i32 %18, !dbg !760
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind optsize
define hidden i32 @cbpprintf_external(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !761 {
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
  %20 = alloca i32, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !773, metadata !DIExpression()), !dbg !792
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !774, metadata !DIExpression()), !dbg !793
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !775, metadata !DIExpression()), !dbg !794
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !776, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %10, metadata !777, metadata !DIExpression()), !dbg !797
  %21 = load ptr, ptr %9, align 4, !dbg !798
  store ptr %21, ptr %10, align 4, !dbg !797
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !799
  call void @llvm.dbg.declare(metadata ptr %11, metadata !778, metadata !DIExpression()), !dbg !800
  %22 = load ptr, ptr %9, align 4, !dbg !801
  store ptr %22, ptr %11, align 4, !dbg !800
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %12, metadata !784, metadata !DIExpression()), !dbg !803
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %13, metadata !785, metadata !DIExpression()), !dbg !804
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %14, metadata !786, metadata !DIExpression()), !dbg !806
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %15, metadata !787, metadata !DIExpression()), !dbg !807
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %16, metadata !788, metadata !DIExpression()), !dbg !808
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %17, metadata !789, metadata !DIExpression()), !dbg !809
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %18, metadata !790, metadata !DIExpression()), !dbg !810
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #6, !dbg !805
  call void @llvm.dbg.declare(metadata ptr %19, metadata !791, metadata !DIExpression()), !dbg !811
  %23 = load ptr, ptr %10, align 4, !dbg !812
  %24 = icmp eq ptr %23, null, !dbg !814
  br i1 %24, label %25, label %26, !dbg !815

25:                                               ; preds = %4
  store i32 -5, ptr %5, align 4, !dbg !816
  store i32 1, ptr %20, align 4
  br label %90, !dbg !816

26:                                               ; preds = %4
  %27 = load ptr, ptr %11, align 4, !dbg !818
  %28 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %27, i32 0, i32 0, !dbg !819
  %29 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %28, i32 0, i32 0, !dbg !820
  %30 = load i8, ptr %29, align 1, !dbg !820
  %31 = zext i8 %30 to i32, !dbg !818
  %32 = mul i32 %31, 4, !dbg !821
  store i32 %32, ptr %15, align 4, !dbg !822
  %33 = load ptr, ptr %11, align 4, !dbg !823
  %34 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %33, i32 0, i32 0, !dbg !824
  %35 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %34, i32 0, i32 1, !dbg !825
  %36 = load i8, ptr %35, align 1, !dbg !825
  %37 = zext i8 %36 to i32, !dbg !823
  store i32 %37, ptr %16, align 4, !dbg !826
  %38 = load ptr, ptr %11, align 4, !dbg !827
  %39 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %38, i32 0, i32 0, !dbg !828
  %40 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %39, i32 0, i32 2, !dbg !829
  %41 = load i8, ptr %40, align 1, !dbg !829
  %42 = zext i8 %41 to i32, !dbg !827
  store i32 %42, ptr %17, align 4, !dbg !830
  %43 = load ptr, ptr %11, align 4, !dbg !831
  %44 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %43, i32 0, i32 0, !dbg !832
  %45 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %44, i32 0, i32 3, !dbg !833
  %46 = load i8, ptr %45, align 1, !dbg !833
  %47 = zext i8 %46 to i32, !dbg !831
  store i32 %47, ptr %18, align 4, !dbg !834
  %48 = load ptr, ptr %10, align 4, !dbg !835
  %49 = load i32, ptr %15, align 4, !dbg !836
  %50 = getelementptr inbounds i8, ptr %48, i32 %49, !dbg !837
  %51 = load i32, ptr %17, align 4, !dbg !838
  %52 = getelementptr inbounds i8, ptr %50, i32 %51, !dbg !839
  %53 = load i32, ptr %18, align 4, !dbg !840
  %54 = mul i32 2, %53, !dbg !841
  %55 = getelementptr inbounds i8, ptr %52, i32 %54, !dbg !842
  store ptr %55, ptr %12, align 4, !dbg !843
  store i32 0, ptr %14, align 4, !dbg !844
  br label %56, !dbg !846

56:                                               ; preds = %76, %26
  %57 = load i32, ptr %14, align 4, !dbg !847
  %58 = load i32, ptr %16, align 4, !dbg !849
  %59 = icmp ult i32 %57, %58, !dbg !850
  br i1 %59, label %60, label %79, !dbg !851

60:                                               ; preds = %56
  %61 = load ptr, ptr %12, align 4, !dbg !852
  %62 = getelementptr inbounds i8, ptr %61, i32 1, !dbg !852
  store ptr %62, ptr %12, align 4, !dbg !852
  %63 = load i8, ptr %61, align 1, !dbg !854
  %64 = zext i8 %63 to i32, !dbg !854
  store i32 %64, ptr %19, align 4, !dbg !855
  %65 = load ptr, ptr %10, align 4, !dbg !856
  %66 = load i32, ptr %19, align 4, !dbg !857
  %67 = mul i32 %66, 4, !dbg !858
  %68 = getelementptr inbounds i8, ptr %65, i32 %67, !dbg !859
  store ptr %68, ptr %13, align 4, !dbg !860
  %69 = load ptr, ptr %12, align 4, !dbg !861
  %70 = load ptr, ptr %13, align 4, !dbg !862
  store ptr %69, ptr %70, align 4, !dbg !863
  %71 = load ptr, ptr %12, align 4, !dbg !864
  %72 = call i32 @strlen(ptr noundef %71) #8, !dbg !865
  %73 = add i32 %72, 1, !dbg !866
  %74 = load ptr, ptr %12, align 4, !dbg !867
  %75 = getelementptr inbounds i8, ptr %74, i32 %73, !dbg !867
  store ptr %75, ptr %12, align 4, !dbg !867
  br label %76, !dbg !868

76:                                               ; preds = %60
  %77 = load i32, ptr %14, align 4, !dbg !869
  %78 = add i32 %77, 1, !dbg !869
  store i32 %78, ptr %14, align 4, !dbg !869
  br label %56, !dbg !870, !llvm.loop !871

79:                                               ; preds = %56
  %80 = load ptr, ptr %10, align 4, !dbg !873
  %81 = getelementptr inbounds i8, ptr %80, i32 8, !dbg !873
  store ptr %81, ptr %10, align 4, !dbg !873
  %82 = load ptr, ptr %6, align 4, !dbg !874
  %83 = load ptr, ptr %7, align 4, !dbg !875
  %84 = load ptr, ptr %8, align 4, !dbg !876
  %85 = load ptr, ptr %11, align 4, !dbg !877
  %86 = getelementptr inbounds %struct.cbprintf_package_hdr_ext, ptr %85, i32 0, i32 1, !dbg !878
  %87 = load ptr, ptr %86, align 1, !dbg !878
  %88 = load ptr, ptr %10, align 4, !dbg !879
  %89 = call i32 @cbprintf_via_va_list(ptr noundef %82, ptr noundef %83, ptr noundef %84, ptr noundef %87, ptr noundef %88) #7, !dbg !880
  store i32 %89, ptr %5, align 4, !dbg !881
  store i32 1, ptr %20, align 4
  br label %90, !dbg !881

90:                                               ; preds = %79, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !882
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !882
  %91 = load i32, ptr %5, align 4, !dbg !882
  ret i32 %91, !dbg !882
}

; Function Attrs: nounwind optsize
define internal i32 @cbprintf_via_va_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !883 {
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca %union.anon.0, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !887, metadata !DIExpression()), !dbg !897
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !888, metadata !DIExpression()), !dbg !898
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !889, metadata !DIExpression()), !dbg !899
  store ptr %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !890, metadata !DIExpression()), !dbg !900
  store ptr %4, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !891, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !902
  call void @llvm.dbg.declare(metadata ptr %11, metadata !892, metadata !DIExpression()), !dbg !903
  %12 = load ptr, ptr %10, align 4, !dbg !904
  store ptr %12, ptr %11, align 4, !dbg !905
  %13 = load ptr, ptr %7, align 4, !dbg !906
  %14 = load ptr, ptr %6, align 4, !dbg !907
  %15 = load ptr, ptr %8, align 4, !dbg !908
  %16 = load ptr, ptr %9, align 4, !dbg !909
  %17 = getelementptr inbounds %struct.__va_list, ptr %11, i32 0, i32 0, !dbg !906
  %18 = load [1 x i32], ptr %17, align 4, !dbg !906
  %19 = call i32 %13(ptr noundef %14, ptr noundef %15, ptr noundef %16, [1 x i32] %18) #7, !dbg !906
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !910
  ret i32 %19, !dbg !911
}

; Function Attrs: nounwind optsize
define hidden zeroext i1 @is_ptr(ptr noundef %0, i32 noundef %1) #0 !dbg !912 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !916, metadata !DIExpression()), !dbg !921
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !917, metadata !DIExpression()), !dbg !922
  call void @llvm.lifetime.start.p0(i64 1, ptr %6) #6, !dbg !923
  call void @llvm.dbg.declare(metadata ptr %6, metadata !918, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #6, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %7, metadata !919, metadata !DIExpression()), !dbg !926
  store i8 0, ptr %7, align 1, !dbg !926
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %8, metadata !920, metadata !DIExpression()), !dbg !928
  store i32 0, ptr %8, align 4, !dbg !928
  br label %10, !dbg !929

10:                                               ; preds = %51, %2
  %11 = load ptr, ptr %4, align 4, !dbg !930
  %12 = getelementptr inbounds i8, ptr %11, i32 1, !dbg !930
  store ptr %12, ptr %4, align 4, !dbg !930
  %13 = load i8, ptr %11, align 1, !dbg !931
  store i8 %13, ptr %6, align 1, !dbg !932
  %14 = zext i8 %13 to i32, !dbg !933
  %15 = icmp ne i32 %14, 0, !dbg !934
  br i1 %15, label %16, label %52, !dbg !929

16:                                               ; preds = %10
  %17 = load i8, ptr %7, align 1, !dbg !935, !range !221, !noundef !222
  %18 = trunc i8 %17 to i1, !dbg !935
  br i1 %18, label %19, label %42, !dbg !938

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4, !dbg !939
  %21 = load i32, ptr %5, align 4, !dbg !942
  %22 = icmp eq i32 %20, %21, !dbg !943
  br i1 %22, label %23, label %34, !dbg !944

23:                                               ; preds = %19
  %24 = load i8, ptr %6, align 1, !dbg !945
  %25 = zext i8 %24 to i32, !dbg !945
  %26 = icmp eq i32 %25, 112, !dbg !948
  br i1 %26, label %27, label %28, !dbg !949

27:                                               ; preds = %23
  store i1 true, ptr %3, align 1, !dbg !950
  store i32 1, ptr %9, align 4
  br label %53, !dbg !950

28:                                               ; preds = %23
  %29 = load i8, ptr %6, align 1, !dbg !952
  %30 = call zeroext i1 @is_fmt_spec(i8 noundef zeroext %29) #7, !dbg !954
  br i1 %30, label %31, label %32, !dbg !955

31:                                               ; preds = %28
  store i1 false, ptr %3, align 1, !dbg !956
  store i32 1, ptr %9, align 4
  br label %53, !dbg !956

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32
  br label %41, !dbg !958

34:                                               ; preds = %19
  %35 = load i8, ptr %6, align 1, !dbg !959
  %36 = call zeroext i1 @is_fmt_spec(i8 noundef zeroext %35) #7, !dbg !961
  br i1 %36, label %37, label %40, !dbg !962

37:                                               ; preds = %34
  %38 = load i32, ptr %8, align 4, !dbg !963
  %39 = add nsw i32 %38, 1, !dbg !963
  store i32 %39, ptr %8, align 4, !dbg !963
  store i8 0, ptr %7, align 1, !dbg !965
  br label %40, !dbg !966

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %33
  br label %42, !dbg !967

42:                                               ; preds = %41, %16
  %43 = load i8, ptr %6, align 1, !dbg !968
  %44 = zext i8 %43 to i32, !dbg !968
  %45 = icmp eq i32 %44, 37, !dbg !970
  br i1 %45, label %46, label %51, !dbg !971

46:                                               ; preds = %42
  %47 = load i8, ptr %7, align 1, !dbg !972, !range !221, !noundef !222
  %48 = trunc i8 %47 to i1, !dbg !972
  %49 = xor i1 %48, true, !dbg !974
  %50 = zext i1 %49 to i8, !dbg !975
  store i8 %50, ptr %7, align 1, !dbg !975
  br label %51, !dbg !976

51:                                               ; preds = %46, %42
  br label %10, !dbg !929, !llvm.loop !977

52:                                               ; preds = %10
  store i1 false, ptr %3, align 1, !dbg !979
  store i32 1, ptr %9, align 4
  br label %53, !dbg !979

53:                                               ; preds = %52, %31, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !980
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #6, !dbg !980
  call void @llvm.lifetime.end.p0(i64 1, ptr %6) #6, !dbg !980
  %54 = load i1, ptr %3, align 1, !dbg !980
  ret i1 %54, !dbg !980
}

; Function Attrs: nounwind optsize
define internal zeroext i1 @is_fmt_spec(i8 noundef zeroext %0) #0 !dbg !981 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !985, metadata !DIExpression()), !dbg !986
  %3 = load i8, ptr %2, align 1, !dbg !987
  %4 = zext i8 %3 to i32, !dbg !987
  %5 = icmp sge i32 %4, 64, !dbg !988
  br i1 %5, label %6, label %10, !dbg !989

6:                                                ; preds = %1
  %7 = load i8, ptr %2, align 1, !dbg !990
  %8 = zext i8 %7 to i32, !dbg !990
  %9 = icmp sle i32 %8, 122, !dbg !991
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ], !dbg !992
  ret i1 %11, !dbg !993
}

; Function Attrs: nounwind optsize
define hidden i32 @cbprintf_package_convert(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) #0 !dbg !994 {
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
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 4
  %28 = alloca ptr, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca ptr, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca ptr, align 4
  %38 = alloca i8, align 1
  %39 = alloca i32, align 4
  %40 = alloca i8, align 1
  %41 = alloca i32, align 4
  %42 = alloca ptr, align 4
  %43 = alloca %struct.cbprintf_package_desc, align 1
  %44 = alloca [16 x i8], align 1
  %45 = alloca [16 x i8], align 1
  %46 = alloca i8, align 1
  %47 = alloca i8, align 1
  %48 = alloca ptr, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i8, align 1
  %52 = alloca i8, align 1
  %53 = alloca ptr, align 4
  %54 = alloca i8, align 1
  %55 = alloca %struct.cbprintf_package_desc, align 1
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i8, align 1
  %59 = alloca ptr, align 4
  %60 = alloca i16, align 2
  store ptr %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1005, metadata !DIExpression()), !dbg !1075
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1006, metadata !DIExpression()), !dbg !1076
  store ptr %2, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1007, metadata !DIExpression()), !dbg !1077
  store ptr %3, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1008, metadata !DIExpression()), !dbg !1078
  store i32 %4, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1009, metadata !DIExpression()), !dbg !1079
  store ptr %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1010, metadata !DIExpression()), !dbg !1080
  store i32 %6, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1011, metadata !DIExpression()), !dbg !1081
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1012, metadata !DIExpression()), !dbg !1083
  %61 = load ptr, ptr %9, align 4, !dbg !1084
  store ptr %61, ptr %16, align 4, !dbg !1083
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #6, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1013, metadata !DIExpression()), !dbg !1086
  %62 = load ptr, ptr %9, align 4, !dbg !1087
  store ptr %62, ptr %17, align 4, !dbg !1086
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #6, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1015, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #6, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1016, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #6, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1017, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 1, ptr %21) #6, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1018, metadata !DIExpression()), !dbg !1093
  %63 = load i32, ptr %13, align 4, !dbg !1094
  %64 = and i32 %63, 8, !dbg !1095
  %65 = icmp ne i32 %64, 0, !dbg !1094
  %66 = zext i1 %65 to i64, !dbg !1094
  %67 = select i1 %65, i32 1, i32 0, !dbg !1094
  %68 = icmp ne i32 %67, 0, !dbg !1094
  %69 = zext i1 %68 to i8, !dbg !1093
  store i8 %69, ptr %21, align 1, !dbg !1093
  call void @llvm.lifetime.start.p0(i64 1, ptr %22) #6, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1019, metadata !DIExpression()), !dbg !1097
  call void @llvm.lifetime.start.p0(i64 1, ptr %23) #6, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1020, metadata !DIExpression()), !dbg !1099
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #6, !dbg !1100
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1021, metadata !DIExpression()), !dbg !1101
  %70 = load ptr, ptr %9, align 4, !dbg !1102
  store ptr %70, ptr %24, align 4, !dbg !1101
  %71 = load i32, ptr %10, align 4, !dbg !1103
  %72 = icmp ne i32 %71, 0, !dbg !1104
  br i1 %72, label %73, label %75, !dbg !1103

73:                                               ; preds = %7
  %74 = load i32, ptr %10, align 4, !dbg !1105
  br label %78, !dbg !1103

75:                                               ; preds = %7
  %76 = load ptr, ptr %9, align 4, !dbg !1106
  %77 = call i32 @get_package_len(ptr noundef %76) #7, !dbg !1107
  br label %78, !dbg !1103

78:                                               ; preds = %75, %73
  %79 = phi i32 [ %74, %73 ], [ %77, %75 ], !dbg !1103
  store i32 %79, ptr %10, align 4, !dbg !1108
  %80 = load ptr, ptr %24, align 4, !dbg !1109
  %81 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %80, i32 0, i32 2, !dbg !1110
  %82 = load i8, ptr %81, align 1, !dbg !1110
  %83 = zext i8 %82 to i32, !dbg !1109
  store i32 %83, ptr %19, align 4, !dbg !1111
  %84 = load i32, ptr %19, align 4, !dbg !1112
  %85 = icmp ne i32 %84, 0, !dbg !1112
  br i1 %85, label %86, label %90, !dbg !1113

86:                                               ; preds = %78
  %87 = load i32, ptr %13, align 4, !dbg !1114
  %88 = and i32 %87, 1, !dbg !1115
  %89 = icmp eq i32 %88, 1, !dbg !1116
  br label %90

90:                                               ; preds = %86, %78
  %91 = phi i1 [ false, %78 ], [ %89, %86 ], !dbg !1117
  %92 = zext i1 %91 to i8, !dbg !1118
  store i8 %92, ptr %23, align 1, !dbg !1118
  %93 = load ptr, ptr %24, align 4, !dbg !1119
  %94 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %93, i32 0, i32 3, !dbg !1120
  %95 = load i8, ptr %94, align 1, !dbg !1120
  %96 = zext i8 %95 to i32, !dbg !1119
  store i32 %96, ptr %20, align 4, !dbg !1121
  %97 = load i32, ptr %20, align 4, !dbg !1122
  %98 = icmp ugt i32 %97, 0, !dbg !1123
  br i1 %98, label %99, label %103, !dbg !1124

99:                                               ; preds = %90
  %100 = load i32, ptr %13, align 4, !dbg !1125
  %101 = and i32 %100, 2, !dbg !1126
  %102 = icmp eq i32 %101, 2, !dbg !1127
  br label %103

103:                                              ; preds = %99, %90
  %104 = phi i1 [ false, %90 ], [ %102, %99 ], !dbg !1117
  %105 = zext i1 %104 to i8, !dbg !1128
  store i8 %105, ptr %22, align 1, !dbg !1128
  %106 = load i8, ptr %22, align 1, !dbg !1129, !range !221, !noundef !222
  %107 = trunc i8 %106 to i1, !dbg !1129
  br i1 %107, label %122, label %108, !dbg !1131

108:                                              ; preds = %103
  %109 = load i8, ptr %23, align 1, !dbg !1132, !range !221, !noundef !222
  %110 = trunc i8 %109 to i1, !dbg !1132
  br i1 %110, label %122, label %111, !dbg !1133

111:                                              ; preds = %108
  %112 = load ptr, ptr %11, align 4, !dbg !1134
  %113 = icmp ne ptr %112, null, !dbg !1134
  br i1 %113, label %114, label %120, !dbg !1137

114:                                              ; preds = %111
  %115 = load ptr, ptr %11, align 4, !dbg !1138
  %116 = load ptr, ptr %9, align 4, !dbg !1140
  %117 = load i32, ptr %10, align 4, !dbg !1141
  %118 = load ptr, ptr %12, align 4, !dbg !1142
  %119 = call i32 %115(ptr noundef %116, i32 noundef %117, ptr noundef %118) #7, !dbg !1138
  br label %120, !dbg !1143

120:                                              ; preds = %114, %111
  %121 = load i32, ptr %10, align 4, !dbg !1144
  store i32 %121, ptr %8, align 4, !dbg !1145
  store i32 1, ptr %25, align 4
  br label %555, !dbg !1145

122:                                              ; preds = %108, %103
  %123 = load ptr, ptr %24, align 4, !dbg !1146
  %124 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %123, i32 0, i32 0, !dbg !1147
  %125 = load i8, ptr %124, align 1, !dbg !1147
  %126 = zext i8 %125 to i32, !dbg !1146
  %127 = mul i32 %126, 4, !dbg !1148
  store i32 %127, ptr %18, align 4, !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #6, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1023, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #6, !dbg !1152
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1024, metadata !DIExpression()), !dbg !1153
  %128 = load ptr, ptr %16, align 4, !dbg !1154
  %129 = getelementptr inbounds i8, ptr %128, i32 4, !dbg !1155
  %130 = load ptr, ptr %129, align 4, !dbg !1156
  store ptr %130, ptr %27, align 4, !dbg !1153
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #6, !dbg !1157
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1025, metadata !DIExpression()), !dbg !1158
  %131 = load ptr, ptr %16, align 4, !dbg !1159
  %132 = load i32, ptr %18, align 4, !dbg !1160
  %133 = getelementptr inbounds i8, ptr %131, i32 %132, !dbg !1159
  store ptr %133, ptr %28, align 4, !dbg !1158
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #6, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1026, metadata !DIExpression()), !dbg !1162
  store i32 0, ptr %29, align 4, !dbg !1162
  %134 = load ptr, ptr %11, align 4, !dbg !1163
  %135 = icmp eq ptr %134, null, !dbg !1164
  br i1 %135, label %136, label %283, !dbg !1165

136:                                              ; preds = %122
  %137 = load i32, ptr %10, align 4, !dbg !1166
  store i32 %137, ptr %26, align 4, !dbg !1167
  %138 = load i8, ptr %23, align 1, !dbg !1168, !range !221, !noundef !222
  %139 = trunc i8 %138 to i1, !dbg !1168
  br i1 %139, label %140, label %179, !dbg !1169

140:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #6, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1027, metadata !DIExpression()), !dbg !1171
  store i32 0, ptr %30, align 4, !dbg !1171
  br label %141, !dbg !1170

141:                                              ; preds = %175, %140
  %142 = load i32, ptr %30, align 4, !dbg !1172
  %143 = load i32, ptr %19, align 4, !dbg !1173
  %144 = icmp ult i32 %142, %143, !dbg !1174
  br i1 %144, label %146, label %145, !dbg !1175

145:                                              ; preds = %141
  store i32 2, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #6, !dbg !1176
  br label %178

146:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #6, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1033, metadata !DIExpression()), !dbg !1178
  %147 = load ptr, ptr %17, align 4, !dbg !1179
  %148 = load ptr, ptr %28, align 4, !dbg !1180
  %149 = load i8, ptr %148, align 1, !dbg !1181
  %150 = zext i8 %149 to i32, !dbg !1179
  %151 = getelementptr inbounds i32, ptr %147, i32 %150, !dbg !1179
  %152 = load ptr, ptr %151, align 4, !dbg !1182
  store ptr %152, ptr %31, align 4, !dbg !1178
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #6, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1036, metadata !DIExpression()), !dbg !1184
  %153 = load ptr, ptr %11, align 4, !dbg !1185
  %154 = load ptr, ptr %31, align 4, !dbg !1186
  %155 = call i32 @append_string(ptr noundef %153, ptr noundef null, ptr noundef %154, i16 noundef zeroext 0) #7, !dbg !1187
  store i32 %155, ptr %32, align 4, !dbg !1184
  %156 = load ptr, ptr %14, align 4, !dbg !1188
  %157 = icmp ne ptr %156, null, !dbg !1188
  br i1 %157, label %158, label %169, !dbg !1190

158:                                              ; preds = %146
  %159 = load i32, ptr %29, align 4, !dbg !1191
  %160 = load i32, ptr %15, align 4, !dbg !1192
  %161 = icmp ult i32 %159, %160, !dbg !1193
  br i1 %161, label %162, label %169, !dbg !1194

162:                                              ; preds = %158
  %163 = load i32, ptr %32, align 4, !dbg !1195
  %164 = trunc i32 %163 to i16, !dbg !1197
  %165 = load ptr, ptr %14, align 4, !dbg !1198
  %166 = load i32, ptr %29, align 4, !dbg !1199
  %167 = add i32 %166, 1, !dbg !1199
  store i32 %167, ptr %29, align 4, !dbg !1199
  %168 = getelementptr inbounds i16, ptr %165, i32 %166, !dbg !1198
  store i16 %164, ptr %168, align 2, !dbg !1200
  br label %169, !dbg !1201

169:                                              ; preds = %162, %158, %146
  %170 = load i32, ptr %32, align 4, !dbg !1202
  %171 = load i32, ptr %26, align 4, !dbg !1203
  %172 = add nsw i32 %171, %170, !dbg !1203
  store i32 %172, ptr %26, align 4, !dbg !1203
  %173 = load ptr, ptr %28, align 4, !dbg !1204
  %174 = getelementptr inbounds i8, ptr %173, i32 1, !dbg !1204
  store ptr %174, ptr %28, align 4, !dbg !1204
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #6, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #6, !dbg !1205
  br label %175, !dbg !1206

175:                                              ; preds = %169
  %176 = load i32, ptr %30, align 4, !dbg !1207
  %177 = add i32 %176, 1, !dbg !1207
  store i32 %177, ptr %30, align 4, !dbg !1207
  br label %141, !dbg !1176, !llvm.loop !1208

178:                                              ; preds = %145
  br label %191, !dbg !1210

179:                                              ; preds = %136
  %180 = load i32, ptr %19, align 4, !dbg !1211
  %181 = icmp ne i32 %180, 0, !dbg !1211
  br i1 %181, label %182, label %190, !dbg !1214

182:                                              ; preds = %179
  %183 = load i32, ptr %13, align 4, !dbg !1215
  %184 = and i32 %183, 4, !dbg !1216
  %185 = icmp ne i32 %184, 0, !dbg !1216
  br i1 %185, label %186, label %190, !dbg !1217

186:                                              ; preds = %182
  %187 = load i32, ptr %19, align 4, !dbg !1218
  %188 = load ptr, ptr %28, align 4, !dbg !1220
  %189 = getelementptr inbounds i8, ptr %188, i32 %187, !dbg !1220
  store ptr %189, ptr %28, align 4, !dbg !1220
  br label %190, !dbg !1221

190:                                              ; preds = %186, %182, %179
  br label %191

191:                                              ; preds = %190, %178
  call void @llvm.lifetime.start.p0(i64 1, ptr %33) #6, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1037, metadata !DIExpression()), !dbg !1223
  %192 = load i32, ptr %13, align 4, !dbg !1224
  %193 = and i32 %192, 5, !dbg !1225
  %194 = icmp ne i32 %193, 0, !dbg !1226
  %195 = xor i1 %194, true, !dbg !1226
  %196 = zext i1 %195 to i8, !dbg !1223
  store i8 %196, ptr %33, align 1, !dbg !1223
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #6, !dbg !1227
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1038, metadata !DIExpression()), !dbg !1228
  store i32 0, ptr %34, align 4, !dbg !1228
  br label %197, !dbg !1227

197:                                              ; preds = %278, %191
  %198 = load i32, ptr %34, align 4, !dbg !1229
  %199 = load i32, ptr %20, align 4, !dbg !1230
  %200 = icmp ult i32 %198, %199, !dbg !1231
  br i1 %200, label %202, label %201, !dbg !1232

201:                                              ; preds = %197
  store i32 5, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #6, !dbg !1233
  br label %281

202:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 1, ptr %35) #6, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1040, metadata !DIExpression()), !dbg !1235
  %203 = load ptr, ptr %28, align 4, !dbg !1236
  %204 = getelementptr inbounds i8, ptr %203, i32 1, !dbg !1236
  store ptr %204, ptr %28, align 4, !dbg !1236
  %205 = load i8, ptr %203, align 1, !dbg !1237
  store i8 %205, ptr %35, align 1, !dbg !1235
  call void @llvm.lifetime.start.p0(i64 1, ptr %36) #6, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1043, metadata !DIExpression()), !dbg !1239
  %206 = load ptr, ptr %28, align 4, !dbg !1240
  %207 = getelementptr inbounds i8, ptr %206, i32 1, !dbg !1240
  store ptr %207, ptr %28, align 4, !dbg !1240
  %208 = load i8, ptr %206, align 1, !dbg !1241
  store i8 %208, ptr %36, align 1, !dbg !1239
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #6, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1044, metadata !DIExpression()), !dbg !1243
  %209 = load ptr, ptr %17, align 4, !dbg !1244
  %210 = load i8, ptr %36, align 1, !dbg !1245
  %211 = zext i8 %210 to i32, !dbg !1244
  %212 = getelementptr inbounds i32, ptr %209, i32 %211, !dbg !1244
  %213 = load ptr, ptr %212, align 4, !dbg !1246
  store ptr %213, ptr %37, align 4, !dbg !1243
  call void @llvm.lifetime.start.p0(i64 1, ptr %38) #6, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1045, metadata !DIExpression()), !dbg !1248
  %214 = load ptr, ptr %37, align 4, !dbg !1249
  %215 = call zeroext i1 @ptr_in_rodata(ptr noundef %214) #7, !dbg !1250
  %216 = zext i1 %215 to i8, !dbg !1248
  store i8 %216, ptr %38, align 1, !dbg !1248
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #6, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1046, metadata !DIExpression()), !dbg !1252
  %217 = load i8, ptr %21, align 1, !dbg !1253, !range !221, !noundef !222
  %218 = trunc i8 %217 to i1, !dbg !1253
  br i1 %218, label %219, label %230, !dbg !1255

219:                                              ; preds = %202
  %220 = load ptr, ptr %27, align 4, !dbg !1256
  %221 = load i8, ptr %35, align 1, !dbg !1257
  %222 = zext i8 %221 to i32, !dbg !1257
  %223 = call zeroext i1 @is_ptr(ptr noundef %220, i32 noundef %222) #7, !dbg !1258
  br i1 %223, label %224, label %230, !dbg !1259

224:                                              ; preds = %219
  br label %225, !dbg !1260

225:                                              ; preds = %224
  br label %227, !dbg !1262

226:                                              ; No predecessors!
  br label %227, !dbg !1266

227:                                              ; preds = %226, %225
  %228 = load i32, ptr %26, align 4, !dbg !1267
  %229 = sub nsw i32 %228, 2, !dbg !1267
  store i32 %229, ptr %26, align 4, !dbg !1267
  store i32 7, ptr %25, align 4
  br label %275, !dbg !1268

230:                                              ; preds = %219, %202
  %231 = load i8, ptr %38, align 1, !dbg !1269, !range !221, !noundef !222
  %232 = trunc i8 %231 to i1, !dbg !1269
  br i1 %232, label %233, label %246, !dbg !1270

233:                                              ; preds = %230
  %234 = load i32, ptr %13, align 4, !dbg !1271
  %235 = and i32 %234, 1, !dbg !1274
  %236 = icmp ne i32 %235, 0, !dbg !1274
  br i1 %236, label %237, label %238, !dbg !1275

237:                                              ; preds = %233
  br label %251, !dbg !1276

238:                                              ; preds = %233
  %239 = load i8, ptr %33, align 1, !dbg !1278, !range !221, !noundef !222
  %240 = trunc i8 %239 to i1, !dbg !1278
  %241 = zext i1 %240 to i64, !dbg !1278
  %242 = select i1 %240, i32 2, i32 1, !dbg !1278
  %243 = load i32, ptr %26, align 4, !dbg !1280
  %244 = sub nsw i32 %243, %242, !dbg !1280
  store i32 %244, ptr %26, align 4, !dbg !1280
  br label %245

245:                                              ; preds = %238
  br label %274, !dbg !1281

246:                                              ; preds = %230
  %247 = load i32, ptr %13, align 4, !dbg !1282
  %248 = and i32 %247, 2, !dbg !1283
  %249 = icmp ne i32 %248, 0, !dbg !1283
  br i1 %249, label %250, label %273, !dbg !1284

250:                                              ; preds = %246
  br label %251, !dbg !1285

251:                                              ; preds = %250, %237
  call void @llvm.dbg.label(metadata !1071), !dbg !1286
  %252 = load ptr, ptr %11, align 4, !dbg !1287
  %253 = load ptr, ptr %37, align 4, !dbg !1288
  %254 = call i32 @append_string(ptr noundef %252, ptr noundef null, ptr noundef %253, i16 noundef zeroext 0) #7, !dbg !1289
  store i32 %254, ptr %39, align 4, !dbg !1290
  %255 = load ptr, ptr %14, align 4, !dbg !1291
  %256 = icmp ne ptr %255, null, !dbg !1291
  br i1 %256, label %257, label %268, !dbg !1293

257:                                              ; preds = %251
  %258 = load i32, ptr %29, align 4, !dbg !1294
  %259 = load i32, ptr %15, align 4, !dbg !1295
  %260 = icmp ult i32 %258, %259, !dbg !1296
  br i1 %260, label %261, label %268, !dbg !1297

261:                                              ; preds = %257
  %262 = load i32, ptr %39, align 4, !dbg !1298
  %263 = trunc i32 %262 to i16, !dbg !1300
  %264 = load ptr, ptr %14, align 4, !dbg !1301
  %265 = load i32, ptr %29, align 4, !dbg !1302
  %266 = add i32 %265, 1, !dbg !1302
  store i32 %266, ptr %29, align 4, !dbg !1302
  %267 = getelementptr inbounds i16, ptr %264, i32 %265, !dbg !1301
  store i16 %263, ptr %267, align 2, !dbg !1303
  br label %268, !dbg !1304

268:                                              ; preds = %261, %257, %251
  %269 = load i32, ptr %39, align 4, !dbg !1305
  %270 = sub nsw i32 %269, 1, !dbg !1306
  %271 = load i32, ptr %26, align 4, !dbg !1307
  %272 = add nsw i32 %271, %270, !dbg !1307
  store i32 %272, ptr %26, align 4, !dbg !1307
  br label %273, !dbg !1308

273:                                              ; preds = %268, %246
  br label %274

274:                                              ; preds = %273, %245
  store i32 0, ptr %25, align 4, !dbg !1309
  br label %275, !dbg !1309

275:                                              ; preds = %274, %227
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #6, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 1, ptr %38) #6, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #6, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 1, ptr %36) #6, !dbg !1309
  call void @llvm.lifetime.end.p0(i64 1, ptr %35) #6, !dbg !1309
  %276 = load i32, ptr %25, align 4
  switch i32 %276, label %557 [
    i32 0, label %277
    i32 7, label %278
  ]

277:                                              ; preds = %275
  br label %278, !dbg !1310

278:                                              ; preds = %277, %275
  %279 = load i32, ptr %34, align 4, !dbg !1311
  %280 = add i32 %279, 1, !dbg !1311
  store i32 %280, ptr %34, align 4, !dbg !1311
  br label %197, !dbg !1233, !llvm.loop !1312

281:                                              ; preds = %201
  %282 = load i32, ptr %26, align 4, !dbg !1314
  store i32 %282, ptr %8, align 4, !dbg !1315
  store i32 1, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %33) #6, !dbg !1316
  br label %554

283:                                              ; preds = %122
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1047, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %44, metadata !1048, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1049, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1050, metadata !DIExpression()), !dbg !1320
  call void @llvm.dbg.declare(metadata ptr %47, metadata !1051, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %48, metadata !1052, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.declare(metadata ptr %49, metadata !1053, metadata !DIExpression()), !dbg !1323
  %284 = load i8, ptr %23, align 1, !dbg !1324, !range !221, !noundef !222
  %285 = trunc i8 %284 to i1, !dbg !1324
  br i1 %285, label %286, label %290, !dbg !1326

286:                                              ; preds = %283
  %287 = load i32, ptr %19, align 4, !dbg !1327
  %288 = trunc i32 %287 to i8, !dbg !1327
  store i8 %288, ptr %46, align 1, !dbg !1329
  store i8 0, ptr %47, align 1, !dbg !1330
  %289 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 0, !dbg !1331
  store ptr %289, ptr %48, align 4, !dbg !1332
  br label %303, !dbg !1333

290:                                              ; preds = %283
  %291 = load i32, ptr %19, align 4, !dbg !1334
  %292 = icmp ne i32 %291, 0, !dbg !1334
  br i1 %292, label %293, label %301, !dbg !1336

293:                                              ; preds = %290
  %294 = load i32, ptr %13, align 4, !dbg !1337
  %295 = and i32 %294, 4, !dbg !1338
  %296 = icmp ne i32 %295, 0, !dbg !1338
  br i1 %296, label %297, label %301, !dbg !1339

297:                                              ; preds = %293
  store i8 0, ptr %46, align 1, !dbg !1340
  %298 = load i32, ptr %19, align 4, !dbg !1342
  %299 = trunc i32 %298 to i8, !dbg !1342
  store i8 %299, ptr %47, align 1, !dbg !1343
  %300 = getelementptr inbounds [16 x i8], ptr %45, i32 0, i32 0, !dbg !1344
  store ptr %300, ptr %48, align 4, !dbg !1345
  br label %302, !dbg !1346

301:                                              ; preds = %293, %290
  store i8 0, ptr %46, align 1, !dbg !1347
  store i8 0, ptr %47, align 1, !dbg !1349
  store ptr null, ptr %48, align 4, !dbg !1350
  br label %302

302:                                              ; preds = %301, %297
  br label %303

303:                                              ; preds = %302, %286
  %304 = load ptr, ptr %48, align 4, !dbg !1351
  %305 = icmp ne ptr %304, null, !dbg !1351
  br i1 %305, label %306, label %310, !dbg !1353

306:                                              ; preds = %303
  %307 = load ptr, ptr %48, align 4, !dbg !1354
  %308 = load ptr, ptr %28, align 4, !dbg !1356
  %309 = load i32, ptr %19, align 4, !dbg !1357
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %307, ptr align 1 %308, i32 %309, i1 false), !dbg !1358
  br label %310, !dbg !1359

310:                                              ; preds = %306, %303
  %311 = load i32, ptr %19, align 4, !dbg !1360
  %312 = load ptr, ptr %28, align 4, !dbg !1361
  %313 = getelementptr inbounds i8, ptr %312, i32 %311, !dbg !1361
  store ptr %313, ptr %28, align 4, !dbg !1361
  call void @llvm.lifetime.start.p0(i64 4, ptr %50) #6, !dbg !1362
  call void @llvm.dbg.declare(metadata ptr %50, metadata !1054, metadata !DIExpression()), !dbg !1363
  store i32 0, ptr %50, align 4, !dbg !1363
  br label %314, !dbg !1362

314:                                              ; preds = %394, %310
  %315 = load i32, ptr %50, align 4, !dbg !1364
  %316 = load i32, ptr %20, align 4, !dbg !1365
  %317 = icmp ult i32 %315, %316, !dbg !1366
  br i1 %317, label %319, label %318, !dbg !1367

318:                                              ; preds = %314
  store i32 11, ptr %25, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %50) #6, !dbg !1368
  br label %397

319:                                              ; preds = %314
  call void @llvm.lifetime.start.p0(i64 1, ptr %51) #6, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %51, metadata !1056, metadata !DIExpression()), !dbg !1370
  %320 = load ptr, ptr %28, align 4, !dbg !1371
  %321 = getelementptr inbounds i8, ptr %320, i32 1, !dbg !1371
  store ptr %321, ptr %28, align 4, !dbg !1371
  %322 = load i8, ptr %320, align 1, !dbg !1372
  store i8 %322, ptr %51, align 1, !dbg !1370
  call void @llvm.lifetime.start.p0(i64 1, ptr %52) #6, !dbg !1373
  call void @llvm.dbg.declare(metadata ptr %52, metadata !1059, metadata !DIExpression()), !dbg !1374
  %323 = load ptr, ptr %28, align 4, !dbg !1375
  %324 = getelementptr inbounds i8, ptr %323, i32 1, !dbg !1375
  store ptr %324, ptr %28, align 4, !dbg !1375
  %325 = load i8, ptr %323, align 1, !dbg !1376
  store i8 %325, ptr %52, align 1, !dbg !1374
  call void @llvm.lifetime.start.p0(i64 4, ptr %53) #6, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %53, metadata !1060, metadata !DIExpression()), !dbg !1378
  %326 = load ptr, ptr %17, align 4, !dbg !1379
  %327 = load i8, ptr %52, align 1, !dbg !1380
  %328 = zext i8 %327 to i32, !dbg !1379
  %329 = getelementptr inbounds i32, ptr %326, i32 %328, !dbg !1379
  %330 = load ptr, ptr %329, align 4, !dbg !1381
  store ptr %330, ptr %53, align 4, !dbg !1378
  call void @llvm.lifetime.start.p0(i64 1, ptr %54) #6, !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %54, metadata !1061, metadata !DIExpression()), !dbg !1383
  %331 = load ptr, ptr %53, align 4, !dbg !1384
  %332 = call zeroext i1 @ptr_in_rodata(ptr noundef %331) #7, !dbg !1385
  %333 = zext i1 %332 to i8, !dbg !1383
  store i8 %333, ptr %54, align 1, !dbg !1383
  %334 = load i8, ptr %21, align 1, !dbg !1386, !range !221, !noundef !222
  %335 = trunc i8 %334 to i1, !dbg !1386
  br i1 %335, label %336, label %342, !dbg !1388

336:                                              ; preds = %319
  %337 = load ptr, ptr %27, align 4, !dbg !1389
  %338 = load i8, ptr %51, align 1, !dbg !1390
  %339 = zext i8 %338 to i32, !dbg !1390
  %340 = call zeroext i1 @is_ptr(ptr noundef %337, i32 noundef %339) #7, !dbg !1391
  br i1 %340, label %341, label %342, !dbg !1392

341:                                              ; preds = %336
  store i32 13, ptr %25, align 4
  br label %391, !dbg !1393

342:                                              ; preds = %336, %319
  %343 = load i8, ptr %54, align 1, !dbg !1395, !range !221, !noundef !222
  %344 = trunc i8 %343 to i1, !dbg !1395
  br i1 %344, label %345, label %368, !dbg !1397

345:                                              ; preds = %342
  %346 = load i32, ptr %13, align 4, !dbg !1398
  %347 = and i32 %346, 1, !dbg !1401
  %348 = icmp ne i32 %347, 0, !dbg !1401
  br i1 %348, label %349, label %355, !dbg !1402

349:                                              ; preds = %345
  %350 = load i8, ptr %52, align 1, !dbg !1403
  %351 = load i8, ptr %46, align 1, !dbg !1405
  %352 = add i8 %351, 1, !dbg !1405
  store i8 %352, ptr %46, align 1, !dbg !1405
  %353 = zext i8 %351 to i32, !dbg !1406
  %354 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %353, !dbg !1406
  store i8 %350, ptr %354, align 1, !dbg !1407
  br label %367, !dbg !1408

355:                                              ; preds = %345
  %356 = load i32, ptr %13, align 4, !dbg !1409
  %357 = and i32 %356, 4, !dbg !1411
  %358 = icmp ne i32 %357, 0, !dbg !1411
  br i1 %358, label %359, label %365, !dbg !1412

359:                                              ; preds = %355
  %360 = load i8, ptr %52, align 1, !dbg !1413
  %361 = load i8, ptr %47, align 1, !dbg !1415
  %362 = add i8 %361, 1, !dbg !1415
  store i8 %362, ptr %47, align 1, !dbg !1415
  %363 = zext i8 %361 to i32, !dbg !1416
  %364 = getelementptr inbounds [16 x i8], ptr %45, i32 0, i32 %363, !dbg !1416
  store i8 %360, ptr %364, align 1, !dbg !1417
  br label %366, !dbg !1418

365:                                              ; preds = %355
  br label %366

366:                                              ; preds = %365, %359
  br label %367

367:                                              ; preds = %366, %349
  br label %390, !dbg !1419

368:                                              ; preds = %342
  %369 = load i32, ptr %13, align 4, !dbg !1420
  %370 = and i32 %369, 2, !dbg !1423
  %371 = icmp ne i32 %370, 0, !dbg !1423
  br i1 %371, label %372, label %378, !dbg !1424

372:                                              ; preds = %368
  %373 = load i8, ptr %52, align 1, !dbg !1425
  %374 = load i8, ptr %46, align 1, !dbg !1427
  %375 = add i8 %374, 1, !dbg !1427
  store i8 %375, ptr %46, align 1, !dbg !1427
  %376 = zext i8 %374 to i32, !dbg !1428
  %377 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %376, !dbg !1428
  store i8 %373, ptr %377, align 1, !dbg !1429
  br label %389, !dbg !1430

378:                                              ; preds = %368
  %379 = load i8, ptr %51, align 1, !dbg !1431
  %380 = load i8, ptr %47, align 1, !dbg !1433
  %381 = add i8 %380, 1, !dbg !1433
  store i8 %381, ptr %47, align 1, !dbg !1433
  %382 = zext i8 %380 to i32, !dbg !1434
  %383 = getelementptr inbounds [16 x i8], ptr %45, i32 0, i32 %382, !dbg !1434
  store i8 %379, ptr %383, align 1, !dbg !1435
  %384 = load i8, ptr %52, align 1, !dbg !1436
  %385 = load i8, ptr %47, align 1, !dbg !1437
  %386 = add i8 %385, 1, !dbg !1437
  store i8 %386, ptr %47, align 1, !dbg !1437
  %387 = zext i8 %385 to i32, !dbg !1438
  %388 = getelementptr inbounds [16 x i8], ptr %45, i32 0, i32 %387, !dbg !1438
  store i8 %384, ptr %388, align 1, !dbg !1439
  br label %389

389:                                              ; preds = %378, %372
  br label %390

390:                                              ; preds = %389, %367
  store i32 0, ptr %25, align 4, !dbg !1440
  br label %391, !dbg !1440

391:                                              ; preds = %390, %341
  call void @llvm.lifetime.end.p0(i64 1, ptr %54) #6, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr %53) #6, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 1, ptr %52) #6, !dbg !1440
  call void @llvm.lifetime.end.p0(i64 1, ptr %51) #6, !dbg !1440
  %392 = load i32, ptr %25, align 4
  switch i32 %392, label %557 [
    i32 0, label %393
    i32 13, label %394
  ]

393:                                              ; preds = %391
  br label %394, !dbg !1441

394:                                              ; preds = %393, %391
  %395 = load i32, ptr %50, align 4, !dbg !1442
  %396 = add i32 %395, 1, !dbg !1442
  store i32 %396, ptr %50, align 4, !dbg !1442
  br label %314, !dbg !1368, !llvm.loop !1443

397:                                              ; preds = %318
  %398 = load ptr, ptr %24, align 4, !dbg !1445
  %399 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %398, i32 0, i32 0, !dbg !1446
  %400 = load i8, ptr %399, align 1, !dbg !1446
  %401 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %43, i32 0, i32 0, !dbg !1447
  store i8 %400, ptr %401, align 1, !dbg !1448
  %402 = load ptr, ptr %24, align 4, !dbg !1449
  %403 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %402, i32 0, i32 1, !dbg !1450
  %404 = load i8, ptr %403, align 1, !dbg !1450
  %405 = zext i8 %404 to i32, !dbg !1449
  %406 = load i8, ptr %46, align 1, !dbg !1451
  %407 = zext i8 %406 to i32, !dbg !1451
  %408 = add nsw i32 %405, %407, !dbg !1452
  %409 = trunc i32 %408 to i8, !dbg !1449
  %410 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %43, i32 0, i32 1, !dbg !1453
  store i8 %409, ptr %410, align 1, !dbg !1454
  %411 = load i32, ptr %13, align 4, !dbg !1455
  %412 = and i32 %411, 2, !dbg !1456
  %413 = icmp ne i32 %412, 0, !dbg !1456
  br i1 %413, label %414, label %415, !dbg !1457

414:                                              ; preds = %397
  br label %419, !dbg !1457

415:                                              ; preds = %397
  %416 = load i8, ptr %47, align 1, !dbg !1458
  %417 = zext i8 %416 to i32, !dbg !1458
  %418 = sdiv i32 %417, 2, !dbg !1459
  br label %419, !dbg !1457

419:                                              ; preds = %415, %414
  %420 = phi i32 [ 0, %414 ], [ %418, %415 ], !dbg !1457
  %421 = trunc i32 %420 to i8, !dbg !1457
  %422 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %43, i32 0, i32 3, !dbg !1460
  store i8 %421, ptr %422, align 1, !dbg !1461
  %423 = load i32, ptr %13, align 4, !dbg !1462
  %424 = and i32 %423, 1, !dbg !1463
  %425 = icmp ne i32 %424, 0, !dbg !1463
  br i1 %425, label %426, label %427, !dbg !1464

426:                                              ; preds = %419
  br label %437, !dbg !1464

427:                                              ; preds = %419
  %428 = load i32, ptr %13, align 4, !dbg !1465
  %429 = and i32 %428, 4, !dbg !1466
  %430 = icmp ne i32 %429, 0, !dbg !1466
  br i1 %430, label %431, label %434, !dbg !1467

431:                                              ; preds = %427
  %432 = load i8, ptr %47, align 1, !dbg !1468
  %433 = zext i8 %432 to i32, !dbg !1468
  br label %435, !dbg !1467

434:                                              ; preds = %427
  br label %435, !dbg !1467

435:                                              ; preds = %434, %431
  %436 = phi i32 [ %433, %431 ], [ 0, %434 ], !dbg !1467
  br label %437, !dbg !1464

437:                                              ; preds = %435, %426
  %438 = phi i32 [ 0, %426 ], [ %436, %435 ], !dbg !1464
  %439 = trunc i32 %438 to i8, !dbg !1464
  %440 = getelementptr inbounds %struct.cbprintf_package_desc, ptr %43, i32 0, i32 2, !dbg !1469
  store i8 %439, ptr %440, align 1, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %55, metadata !1062, metadata !DIExpression()), !dbg !1471
  %441 = load ptr, ptr %24, align 4, !dbg !1472
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %55, ptr align 1 %441, i32 4, i1 false), !dbg !1473
  %442 = load ptr, ptr %24, align 4, !dbg !1474
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %442, ptr align 1 %43, i32 4, i1 false), !dbg !1475
  %443 = load ptr, ptr %11, align 4, !dbg !1476
  %444 = load ptr, ptr %9, align 4, !dbg !1477
  %445 = load i32, ptr %18, align 4, !dbg !1478
  %446 = load ptr, ptr %12, align 4, !dbg !1479
  %447 = call i32 %443(ptr noundef %444, i32 noundef %445, ptr noundef %446) #7, !dbg !1476
  store i32 %447, ptr %49, align 4, !dbg !1480
  %448 = load i32, ptr %49, align 4, !dbg !1481
  %449 = icmp slt i32 %448, 0, !dbg !1483
  br i1 %449, label %450, label %452, !dbg !1484

450:                                              ; preds = %437
  %451 = load i32, ptr %49, align 4, !dbg !1485
  store i32 %451, ptr %8, align 4, !dbg !1487
  store i32 1, ptr %25, align 4
  br label %554, !dbg !1487

452:                                              ; preds = %437
  %453 = load i32, ptr %49, align 4, !dbg !1488
  store i32 %453, ptr %26, align 4, !dbg !1489
  %454 = load ptr, ptr %24, align 4, !dbg !1490
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %454, ptr align 1 %55, i32 4, i1 false), !dbg !1491
  %455 = load ptr, ptr %11, align 4, !dbg !1492
  %456 = getelementptr inbounds [16 x i8], ptr %45, i32 0, i32 0, !dbg !1493
  %457 = load i8, ptr %47, align 1, !dbg !1494
  %458 = zext i8 %457 to i32, !dbg !1494
  %459 = load ptr, ptr %12, align 4, !dbg !1495
  %460 = call i32 %455(ptr noundef %456, i32 noundef %458, ptr noundef %459) #7, !dbg !1492
  store i32 %460, ptr %49, align 4, !dbg !1496
  %461 = load i32, ptr %49, align 4, !dbg !1497
  %462 = icmp slt i32 %461, 0, !dbg !1499
  br i1 %462, label %463, label %465, !dbg !1500

463:                                              ; preds = %452
  %464 = load i32, ptr %49, align 4, !dbg !1501
  store i32 %464, ptr %8, align 4, !dbg !1503
  store i32 1, ptr %25, align 4
  br label %554, !dbg !1503

465:                                              ; preds = %452
  %466 = load i32, ptr %49, align 4, !dbg !1504
  %467 = load i32, ptr %26, align 4, !dbg !1505
  %468 = add nsw i32 %467, %466, !dbg !1505
  store i32 %468, ptr %26, align 4, !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %56, metadata !1063, metadata !DIExpression()), !dbg !1506
  %469 = load i32, ptr %10, align 4, !dbg !1507
  %470 = load i32, ptr %18, align 4, !dbg !1508
  %471 = load i32, ptr %19, align 4, !dbg !1509
  %472 = add i32 %470, %471, !dbg !1510
  %473 = load i32, ptr %20, align 4, !dbg !1511
  %474 = mul i32 2, %473, !dbg !1512
  %475 = add i32 %472, %474, !dbg !1513
  %476 = sub i32 %469, %475, !dbg !1514
  store i32 %476, ptr %56, align 4, !dbg !1506
  %477 = load ptr, ptr %11, align 4, !dbg !1515
  %478 = load ptr, ptr %28, align 4, !dbg !1516
  %479 = load i32, ptr %56, align 4, !dbg !1517
  %480 = load ptr, ptr %12, align 4, !dbg !1518
  %481 = call i32 %477(ptr noundef %478, i32 noundef %479, ptr noundef %480) #7, !dbg !1515
  store i32 %481, ptr %49, align 4, !dbg !1519
  %482 = load i32, ptr %49, align 4, !dbg !1520
  %483 = icmp slt i32 %482, 0, !dbg !1522
  br i1 %483, label %484, label %486, !dbg !1523

484:                                              ; preds = %465
  %485 = load i32, ptr %49, align 4, !dbg !1524
  store i32 %485, ptr %8, align 4, !dbg !1526
  store i32 1, ptr %25, align 4
  br label %554, !dbg !1526

486:                                              ; preds = %465
  %487 = load i32, ptr %49, align 4, !dbg !1527
  %488 = load i32, ptr %26, align 4, !dbg !1528
  %489 = add nsw i32 %488, %487, !dbg !1528
  store i32 %489, ptr %26, align 4, !dbg !1528
  call void @llvm.lifetime.start.p0(i64 4, ptr %57) #6, !dbg !1529
  call void @llvm.dbg.declare(metadata ptr %57, metadata !1064, metadata !DIExpression()), !dbg !1530
  store i32 0, ptr %57, align 4, !dbg !1530
  br label %490, !dbg !1529

490:                                              ; preds = %544, %486
  %491 = load i32, ptr %57, align 4, !dbg !1531
  %492 = load i8, ptr %46, align 1, !dbg !1532
  %493 = zext i8 %492 to i32, !dbg !1532
  %494 = icmp ult i32 %491, %493, !dbg !1533
  br i1 %494, label %496, label %495, !dbg !1534

495:                                              ; preds = %490
  store i32 14, ptr %25, align 4
  br label %547, !dbg !1534

496:                                              ; preds = %490
  call void @llvm.lifetime.start.p0(i64 1, ptr %58) #6, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %58, metadata !1066, metadata !DIExpression()), !dbg !1536
  %497 = load i32, ptr %57, align 4, !dbg !1537
  %498 = getelementptr inbounds [16 x i8], ptr %44, i32 0, i32 %497, !dbg !1538
  %499 = load i8, ptr %498, align 1, !dbg !1538
  store i8 %499, ptr %58, align 1, !dbg !1536
  call void @llvm.lifetime.start.p0(i64 4, ptr %59) #6, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %59, metadata !1069, metadata !DIExpression()), !dbg !1540
  %500 = load ptr, ptr %17, align 4, !dbg !1541
  %501 = load i8, ptr %58, align 1, !dbg !1542
  %502 = zext i8 %501 to i32, !dbg !1541
  %503 = getelementptr inbounds i32, ptr %500, i32 %502, !dbg !1541
  %504 = load ptr, ptr %503, align 4, !dbg !1543
  store ptr %504, ptr %59, align 4, !dbg !1540
  call void @llvm.lifetime.start.p0(i64 2, ptr %60) #6, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %60, metadata !1070, metadata !DIExpression()), !dbg !1545
  %505 = load ptr, ptr %14, align 4, !dbg !1546
  %506 = icmp ne ptr %505, null, !dbg !1546
  br i1 %506, label %507, label %513, !dbg !1546

507:                                              ; preds = %496
  %508 = load ptr, ptr %14, align 4, !dbg !1547
  %509 = load i32, ptr %57, align 4, !dbg !1548
  %510 = getelementptr inbounds i16, ptr %508, i32 %509, !dbg !1547
  %511 = load i16, ptr %510, align 2, !dbg !1547
  %512 = zext i16 %511 to i32, !dbg !1547
  br label %514, !dbg !1546

513:                                              ; preds = %496
  br label %514, !dbg !1546

514:                                              ; preds = %513, %507
  %515 = phi i32 [ %512, %507 ], [ 0, %513 ], !dbg !1546
  %516 = trunc i32 %515 to i16, !dbg !1546
  store i16 %516, ptr %60, align 2, !dbg !1545
  %517 = load ptr, ptr %11, align 4, !dbg !1549
  %518 = load ptr, ptr %12, align 4, !dbg !1550
  %519 = call i32 %517(ptr noundef %58, i32 noundef 1, ptr noundef %518) #7, !dbg !1549
  store i32 %519, ptr %49, align 4, !dbg !1551
  %520 = load i32, ptr %49, align 4, !dbg !1552
  %521 = icmp slt i32 %520, 0, !dbg !1554
  br i1 %521, label %522, label %524, !dbg !1555

522:                                              ; preds = %514
  %523 = load i32, ptr %49, align 4, !dbg !1556
  store i32 %523, ptr %8, align 4, !dbg !1558
  store i32 1, ptr %25, align 4
  br label %541, !dbg !1558

524:                                              ; preds = %514
  %525 = load i32, ptr %49, align 4, !dbg !1559
  %526 = load i32, ptr %26, align 4, !dbg !1560
  %527 = add nsw i32 %526, %525, !dbg !1560
  store i32 %527, ptr %26, align 4, !dbg !1560
  %528 = load ptr, ptr %11, align 4, !dbg !1561
  %529 = load ptr, ptr %12, align 4, !dbg !1562
  %530 = load ptr, ptr %59, align 4, !dbg !1563
  %531 = load i16, ptr %60, align 2, !dbg !1564
  %532 = call i32 @append_string(ptr noundef %528, ptr noundef %529, ptr noundef %530, i16 noundef zeroext %531) #7, !dbg !1565
  store i32 %532, ptr %49, align 4, !dbg !1566
  %533 = load i32, ptr %49, align 4, !dbg !1567
  %534 = icmp slt i32 %533, 0, !dbg !1569
  br i1 %534, label %535, label %537, !dbg !1570

535:                                              ; preds = %524
  %536 = load i32, ptr %49, align 4, !dbg !1571
  store i32 %536, ptr %8, align 4, !dbg !1573
  store i32 1, ptr %25, align 4
  br label %541, !dbg !1573

537:                                              ; preds = %524
  %538 = load i32, ptr %49, align 4, !dbg !1574
  %539 = load i32, ptr %26, align 4, !dbg !1575
  %540 = add nsw i32 %539, %538, !dbg !1575
  store i32 %540, ptr %26, align 4, !dbg !1575
  store i32 0, ptr %25, align 4, !dbg !1576
  br label %541, !dbg !1576

541:                                              ; preds = %537, %535, %522
  call void @llvm.lifetime.end.p0(i64 2, ptr %60) #6, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 4, ptr %59) #6, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 1, ptr %58) #6, !dbg !1576
  %542 = load i32, ptr %25, align 4
  switch i32 %542, label %547 [
    i32 0, label %543
  ]

543:                                              ; preds = %541
  br label %544, !dbg !1577

544:                                              ; preds = %543
  %545 = load i32, ptr %57, align 4, !dbg !1578
  %546 = add i32 %545, 1, !dbg !1578
  store i32 %546, ptr %57, align 4, !dbg !1578
  br label %490, !dbg !1579, !llvm.loop !1580

547:                                              ; preds = %541, %495
  call void @llvm.lifetime.end.p0(i64 4, ptr %57) #6, !dbg !1579
  %548 = load i32, ptr %25, align 4
  switch i32 %548, label %554 [
    i32 14, label %549
  ]

549:                                              ; preds = %547
  %550 = load ptr, ptr %11, align 4, !dbg !1582
  %551 = load ptr, ptr %12, align 4, !dbg !1583
  %552 = call i32 %550(ptr noundef null, i32 noundef 0, ptr noundef %551) #7, !dbg !1582
  %553 = load i32, ptr %26, align 4, !dbg !1584
  store i32 %553, ptr %8, align 4, !dbg !1585
  store i32 1, ptr %25, align 4
  br label %554, !dbg !1585

554:                                              ; preds = %549, %547, %484, %463, %450, %281
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #6, !dbg !1586
  br label %555

555:                                              ; preds = %554, %120
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 1, ptr %23) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 1, ptr %22) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 1, ptr %21) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #6, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6, !dbg !1586
  %556 = load i32, ptr %8, align 4, !dbg !1586
  ret i32 %556, !dbg !1586

557:                                              ; preds = %391, %275
  unreachable
}

; Function Attrs: nounwind optsize
define internal i32 @get_package_len(ptr noundef %0) #0 !dbg !1587 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1591, metadata !DIExpression()), !dbg !1599
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6, !dbg !1600
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1592, metadata !DIExpression()), !dbg !1601
  %9 = load ptr, ptr %2, align 4, !dbg !1602
  store ptr %9, ptr %3, align 4, !dbg !1601
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !1603
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1593, metadata !DIExpression()), !dbg !1604
  %10 = load ptr, ptr %3, align 4, !dbg !1605
  store ptr %10, ptr %4, align 4, !dbg !1604
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1594, metadata !DIExpression()), !dbg !1607
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1595, metadata !DIExpression()), !dbg !1608
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1596, metadata !DIExpression()), !dbg !1609
  %11 = load ptr, ptr %3, align 4, !dbg !1610
  %12 = getelementptr inbounds i8, ptr %11, i32 0, !dbg !1610
  %13 = load i8, ptr %12, align 1, !dbg !1610
  %14 = zext i8 %13 to i32, !dbg !1610
  %15 = mul i32 %14, 4, !dbg !1611
  store i32 %15, ptr %5, align 4, !dbg !1612
  %16 = load ptr, ptr %3, align 4, !dbg !1613
  %17 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !1613
  %18 = load i8, ptr %17, align 1, !dbg !1613
  %19 = zext i8 %18 to i32, !dbg !1613
  store i32 %19, ptr %6, align 4, !dbg !1614
  %20 = load ptr, ptr %3, align 4, !dbg !1615
  %21 = getelementptr inbounds i8, ptr %20, i32 2, !dbg !1615
  %22 = load i8, ptr %21, align 1, !dbg !1615
  %23 = zext i8 %22 to i32, !dbg !1615
  store i32 %23, ptr %7, align 4, !dbg !1616
  %24 = load i32, ptr %5, align 4, !dbg !1617
  %25 = load ptr, ptr %3, align 4, !dbg !1618
  %26 = getelementptr inbounds i8, ptr %25, i32 %24, !dbg !1618
  store ptr %26, ptr %3, align 4, !dbg !1618
  %27 = load i32, ptr %7, align 4, !dbg !1619
  %28 = load ptr, ptr %3, align 4, !dbg !1620
  %29 = getelementptr inbounds i8, ptr %28, i32 %27, !dbg !1620
  store ptr %29, ptr %3, align 4, !dbg !1620
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !1621
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1597, metadata !DIExpression()), !dbg !1622
  store i32 0, ptr %8, align 4, !dbg !1622
  br label %30, !dbg !1621

30:                                               ; preds = %43, %1
  %31 = load i32, ptr %8, align 4, !dbg !1623
  %32 = load i32, ptr %6, align 4, !dbg !1625
  %33 = icmp ult i32 %31, %32, !dbg !1626
  br i1 %33, label %35, label %34, !dbg !1627

34:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !1628
  br label %46

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 4, !dbg !1629
  %37 = getelementptr inbounds i8, ptr %36, i32 1, !dbg !1629
  store ptr %37, ptr %3, align 4, !dbg !1629
  %38 = load ptr, ptr %3, align 4, !dbg !1631
  %39 = call i32 @strlen(ptr noundef %38) #8, !dbg !1632
  %40 = add i32 %39, 1, !dbg !1633
  %41 = load ptr, ptr %3, align 4, !dbg !1634
  %42 = getelementptr inbounds i8, ptr %41, i32 %40, !dbg !1634
  store ptr %42, ptr %3, align 4, !dbg !1634
  br label %43, !dbg !1635

43:                                               ; preds = %35
  %44 = load i32, ptr %8, align 4, !dbg !1636
  %45 = add i32 %44, 1, !dbg !1636
  store i32 %45, ptr %8, align 4, !dbg !1636
  br label %30, !dbg !1628, !llvm.loop !1637

46:                                               ; preds = %34
  %47 = load ptr, ptr %3, align 4, !dbg !1639
  %48 = load ptr, ptr %4, align 4, !dbg !1640
  %49 = ptrtoint ptr %47 to i32, !dbg !1641
  %50 = ptrtoint ptr %48 to i32, !dbg !1641
  %51 = sub i32 %49, %50, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !1642
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6, !dbg !1642
  ret i32 %51, !dbg !1643
}

; Function Attrs: nounwind optsize
define internal i32 @append_string(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 !dbg !1644 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i16, align 2
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1648, metadata !DIExpression()), !dbg !1652
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1649, metadata !DIExpression()), !dbg !1653
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1650, metadata !DIExpression()), !dbg !1654
  store i16 %3, ptr %9, align 2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1651, metadata !DIExpression()), !dbg !1655
  %10 = load ptr, ptr %6, align 4, !dbg !1656
  %11 = icmp eq ptr %10, null, !dbg !1658
  br i1 %11, label %12, label %16, !dbg !1659

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4, !dbg !1660
  %14 = call i32 @strlen(ptr noundef %13) #8, !dbg !1662
  %15 = add i32 1, %14, !dbg !1663
  store i32 %15, ptr %5, align 4, !dbg !1664
  br label %36, !dbg !1664

16:                                               ; preds = %4
  %17 = load i16, ptr %9, align 2, !dbg !1665
  %18 = zext i16 %17 to i32, !dbg !1665
  %19 = icmp sgt i32 %18, 0, !dbg !1666
  br i1 %19, label %20, label %23, !dbg !1665

20:                                               ; preds = %16
  %21 = load i16, ptr %9, align 2, !dbg !1667
  %22 = zext i16 %21 to i32, !dbg !1667
  br label %27, !dbg !1665

23:                                               ; preds = %16
  %24 = load ptr, ptr %8, align 4, !dbg !1668
  %25 = call i32 @strlen(ptr noundef %24) #8, !dbg !1669
  %26 = add i32 %25, 1, !dbg !1670
  br label %27, !dbg !1665

27:                                               ; preds = %23, %20
  %28 = phi i32 [ %22, %20 ], [ %26, %23 ], !dbg !1665
  %29 = trunc i32 %28 to i16, !dbg !1665
  store i16 %29, ptr %9, align 2, !dbg !1671
  %30 = load ptr, ptr %6, align 4, !dbg !1672
  %31 = load ptr, ptr %8, align 4, !dbg !1673
  %32 = load i16, ptr %9, align 2, !dbg !1674
  %33 = zext i16 %32 to i32, !dbg !1674
  %34 = load ptr, ptr %7, align 4, !dbg !1675
  %35 = call i32 %30(ptr noundef %31, i32 noundef %33, ptr noundef %34) #7, !dbg !1672
  store i32 %35, ptr %5, align 4, !dbg !1676
  br label %36, !dbg !1676

36:                                               ; preds = %27, %12
  %37 = load i32, ptr %5, align 4, !dbg !1677
  ret i32 %37, !dbg !1677
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @linker_is_in_rodata(ptr noundef %0) #3 !dbg !1678 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1683, metadata !DIExpression()), !dbg !1684
  %3 = load ptr, ptr %2, align 4, !dbg !1685
  %4 = icmp uge ptr %3, @__rodata_region_start, !dbg !1686
  br i1 %4, label %5, label %8, !dbg !1687

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 4, !dbg !1688
  %7 = icmp ult ptr %6, @__rodata_region_end, !dbg !1689
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ], !dbg !1690
  ret i1 %9, !dbg !1691
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cbprintf_packaged.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !6, !7, !8, !10, !12, !16, !18, !19, !20, !22, !24, !25, !26, !29, !13}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 102, baseType: !5)
!4 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!9 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 51, baseType: !5)
!17 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!23 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !4, line: 62, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !4, line: 63, baseType: !30)
!30 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 1, !"static_rwdata", i32 1}
!35 = !{i32 1, !"enumsize_buildattr", i32 1}
!36 = !{i32 1, !"armlib_unavailable", i32 0}
!37 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!38 = distinct !DISubprogram(name: "cbvprintf_package", scope: !39, file: !39, line: 233, type: !40, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!39 = !DIFile(filename: "lib/os/cbprintf_packaged.c", directory: "/home/sri/zephyrproject/zephyr")
!40 = !DISubroutineType(types: !41)
!41 = !{!18, !6, !16, !42, !13, !43}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !4, line: 64, baseType: !5)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !44, line: 22, baseType: !45)
!44 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !46, file: !1, baseType: !6, size: 32)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !63, !64, !65, !66, !67, !68, !69, !70, !72, !73, !74, !75, !88, !97, !100, !101, !104, !107, !110, !113, !119}
!50 = !DILocalVariable(name: "packaged", arg: 1, scope: !38, file: !39, line: 233, type: !6)
!51 = !DILocalVariable(name: "len", arg: 2, scope: !38, file: !39, line: 233, type: !16)
!52 = !DILocalVariable(name: "flags", arg: 3, scope: !38, file: !39, line: 233, type: !42)
!53 = !DILocalVariable(name: "fmt", arg: 4, scope: !38, file: !39, line: 234, type: !13)
!54 = !DILocalVariable(name: "ap", arg: 5, scope: !38, file: !39, line: 234, type: !43)
!55 = !DILocalVariable(name: "buf0", scope: !38, file: !39, line: 247, type: !26)
!56 = !DILocalVariable(name: "buf", scope: !38, file: !39, line: 248, type: !26)
!57 = !DILocalVariable(name: "size", scope: !38, file: !39, line: 249, type: !5)
!58 = !DILocalVariable(name: "align", scope: !38, file: !39, line: 250, type: !5)
!59 = !DILocalVariable(name: "str_ptr_pos", scope: !38, file: !39, line: 251, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 128, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 16)
!63 = !DILocalVariable(name: "str_ptr_arg", scope: !38, file: !39, line: 252, type: !60)
!64 = !DILocalVariable(name: "s_idx", scope: !38, file: !39, line: 253, type: !5)
!65 = !DILocalVariable(name: "s_rw_cnt", scope: !38, file: !39, line: 254, type: !5)
!66 = !DILocalVariable(name: "s_ro_cnt", scope: !38, file: !39, line: 255, type: !5)
!67 = !DILocalVariable(name: "arg_idx", scope: !38, file: !39, line: 256, type: !18)
!68 = !DILocalVariable(name: "i", scope: !38, file: !39, line: 257, type: !5)
!69 = !DILocalVariable(name: "s", scope: !38, file: !39, line: 258, type: !13)
!70 = !DILocalVariable(name: "parsing", scope: !38, file: !39, line: 259, type: !71)
!71 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!72 = !DILocalVariable(name: "rws_pos_en", scope: !38, file: !39, line: 263, type: !71)
!73 = !DILocalVariable(name: "fros_cnt", scope: !38, file: !39, line: 268, type: !18)
!74 = !DILocalVariable(name: "is_str_arg", scope: !38, file: !39, line: 269, type: !71)
!75 = !DILocalVariable(name: "pkg_hdr", scope: !38, file: !39, line: 270, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "cbprintf_package_hdr", file: !78, line: 78, size: 32, elements: !79)
!78 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!79 = !{!80, !87}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !77, file: !78, line: 80, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cbprintf_package_desc", file: !78, line: 45, size: 32, elements: !82)
!82 = !{!83, !84, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !81, file: !78, line: 47, baseType: !27, size: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "str_cnt", scope: !81, file: !78, line: 50, baseType: !27, size: 8, offset: 8)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "ro_str_cnt", scope: !81, file: !78, line: 53, baseType: !27, size: 8, offset: 16)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rw_str_cnt", scope: !81, file: !78, line: 56, baseType: !27, size: 8, offset: 24)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !77, file: !78, line: 82, baseType: !6, size: 32)
!88 = !DILocalVariable(name: "v", scope: !89, file: !39, line: 567, type: !93)
!89 = distinct !DILexicalBlock(scope: !90, file: !39, line: 562, column: 14)
!90 = distinct !DILexicalBlock(scope: !91, file: !39, line: 481, column: 18)
!91 = distinct !DILexicalBlock(scope: !92, file: !39, line: 466, column: 3)
!92 = distinct !DILexicalBlock(scope: !38, file: !39, line: 343, column: 12)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 567, size: 64, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !93, file: !39, line: 567, baseType: !11, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ld", scope: !93, file: !39, line: 567, baseType: !9, size: 64)
!97 = !DILocalVariable(name: "is_ro", scope: !98, file: !39, line: 620, type: !71)
!98 = distinct !DILexicalBlock(scope: !99, file: !39, line: 613, column: 19)
!99 = distinct !DILexicalBlock(scope: !92, file: !39, line: 613, column: 7)
!100 = !DILocalVariable(name: "do_ro", scope: !98, file: !39, line: 621, type: !71)
!101 = !DILocalVariable(name: "s_ptr_idx", scope: !102, file: !39, line: 626, type: !42)
!102 = distinct !DILexicalBlock(scope: !103, file: !39, line: 625, column: 11)
!103 = distinct !DILexicalBlock(scope: !98, file: !39, line: 623, column: 8)
!104 = !DILocalVariable(name: "v", scope: !105, file: !39, line: 684, type: !18)
!105 = distinct !DILexicalBlock(scope: !106, file: !39, line: 683, column: 35)
!106 = distinct !DILexicalBlock(scope: !99, file: !39, line: 683, column: 14)
!107 = !DILocalVariable(name: "v", scope: !108, file: !39, line: 691, type: !21)
!108 = distinct !DILexicalBlock(scope: !109, file: !39, line: 690, column: 36)
!109 = distinct !DILexicalBlock(scope: !106, file: !39, line: 690, column: 14)
!110 = !DILocalVariable(name: "v", scope: !111, file: !39, line: 698, type: !23)
!111 = distinct !DILexicalBlock(scope: !112, file: !39, line: 697, column: 41)
!112 = distinct !DILexicalBlock(scope: !109, file: !39, line: 697, column: 14)
!113 = !DILocalVariable(name: "pos", scope: !114, file: !39, line: 762, type: !27)
!114 = distinct !DILexicalBlock(scope: !115, file: !39, line: 757, column: 31)
!115 = distinct !DILexicalBlock(scope: !116, file: !39, line: 757, column: 3)
!116 = distinct !DILexicalBlock(scope: !117, file: !39, line: 757, column: 3)
!117 = distinct !DILexicalBlock(scope: !118, file: !39, line: 756, column: 16)
!118 = distinct !DILexicalBlock(scope: !38, file: !39, line: 756, column: 6)
!119 = !DILabel(scope: !98, name: "process_string", file: !39, line: 615)
!120 = !DILocation(line: 233, column: 29, scope: !38)
!121 = !DILocation(line: 233, column: 46, scope: !38)
!122 = !DILocation(line: 233, column: 60, scope: !38)
!123 = !DILocation(line: 234, column: 21, scope: !38)
!124 = !DILocation(line: 234, column: 34, scope: !38)
!125 = !DILocation(line: 247, column: 2, scope: !38)
!126 = !DILocation(line: 247, column: 11, scope: !38)
!127 = !DILocation(line: 247, column: 18, scope: !38)
!128 = !DILocation(line: 248, column: 2, scope: !38)
!129 = !DILocation(line: 248, column: 11, scope: !38)
!130 = !DILocation(line: 248, column: 17, scope: !38)
!131 = !DILocation(line: 249, column: 2, scope: !38)
!132 = !DILocation(line: 249, column: 15, scope: !38)
!133 = !DILocation(line: 250, column: 2, scope: !38)
!134 = !DILocation(line: 250, column: 15, scope: !38)
!135 = !DILocation(line: 251, column: 2, scope: !38)
!136 = !DILocation(line: 251, column: 10, scope: !38)
!137 = !DILocation(line: 252, column: 2, scope: !38)
!138 = !DILocation(line: 252, column: 10, scope: !38)
!139 = !DILocation(line: 253, column: 2, scope: !38)
!140 = !DILocation(line: 253, column: 15, scope: !38)
!141 = !DILocation(line: 254, column: 2, scope: !38)
!142 = !DILocation(line: 254, column: 15, scope: !38)
!143 = !DILocation(line: 255, column: 2, scope: !38)
!144 = !DILocation(line: 255, column: 15, scope: !38)
!145 = !DILocation(line: 256, column: 2, scope: !38)
!146 = !DILocation(line: 256, column: 6, scope: !38)
!147 = !DILocation(line: 257, column: 2, scope: !38)
!148 = !DILocation(line: 257, column: 15, scope: !38)
!149 = !DILocation(line: 258, column: 2, scope: !38)
!150 = !DILocation(line: 258, column: 14, scope: !38)
!151 = !DILocation(line: 259, column: 2, scope: !38)
!152 = !DILocation(line: 259, column: 8, scope: !38)
!153 = !DILocation(line: 263, column: 2, scope: !38)
!154 = !DILocation(line: 263, column: 8, scope: !38)
!155 = !DILocation(line: 263, column: 24, scope: !38)
!156 = !DILocation(line: 263, column: 30, scope: !38)
!157 = !DILocation(line: 263, column: 22, scope: !38)
!158 = !DILocation(line: 263, column: 21, scope: !38)
!159 = !DILocation(line: 268, column: 2, scope: !38)
!160 = !DILocation(line: 268, column: 6, scope: !38)
!161 = !DILocation(line: 268, column: 24, scope: !38)
!162 = !DILocation(line: 268, column: 31, scope: !38)
!163 = !DILocation(line: 268, column: 37, scope: !38)
!164 = !DILocation(line: 268, column: 19, scope: !38)
!165 = !DILocation(line: 269, column: 2, scope: !38)
!166 = !DILocation(line: 269, column: 8, scope: !38)
!167 = !DILocation(line: 270, column: 2, scope: !38)
!168 = !DILocation(line: 270, column: 30, scope: !38)
!169 = !DILocation(line: 270, column: 40, scope: !38)
!170 = !DILocation(line: 273, column: 17, scope: !171)
!171 = distinct !DILexicalBlock(scope: !38, file: !39, line: 273, column: 6)
!172 = !DILocation(line: 273, column: 6, scope: !171)
!173 = !DILocation(line: 273, column: 26, scope: !171)
!174 = !DILocation(line: 273, column: 6, scope: !38)
!175 = !DILocation(line: 274, column: 3, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !39, line: 273, column: 44)
!177 = !DILocation(line: 297, column: 6, scope: !38)
!178 = !DILocation(line: 305, column: 6, scope: !179)
!179 = distinct !DILexicalBlock(scope: !38, file: !39, line: 305, column: 6)
!180 = !DILocation(line: 305, column: 11, scope: !179)
!181 = !DILocation(line: 305, column: 6, scope: !38)
!182 = !DILocation(line: 306, column: 10, scope: !183)
!183 = distinct !DILexicalBlock(scope: !179, file: !39, line: 305, column: 17)
!184 = !DILocation(line: 306, column: 14, scope: !183)
!185 = !DILocation(line: 306, column: 7, scope: !183)
!186 = !DILocation(line: 320, column: 333, scope: !183)
!187 = !DILocation(line: 320, column: 337, scope: !183)
!188 = !DILocation(line: 320, column: 330, scope: !183)
!189 = !DILocation(line: 320, column: 7, scope: !183)
!190 = !DILocation(line: 321, column: 2, scope: !183)
!191 = !DILocation(line: 327, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !38, file: !39, line: 327, column: 6)
!193 = !DILocation(line: 327, column: 11, scope: !192)
!194 = !DILocation(line: 327, column: 16, scope: !192)
!195 = !DILocation(line: 327, column: 31, scope: !192)
!196 = !DILocation(line: 327, column: 20, scope: !192)
!197 = !DILocation(line: 327, column: 48, scope: !192)
!198 = !DILocation(line: 327, column: 37, scope: !192)
!199 = !DILocation(line: 327, column: 35, scope: !192)
!200 = !DILocation(line: 327, column: 54, scope: !192)
!201 = !DILocation(line: 327, column: 73, scope: !192)
!202 = !DILocation(line: 327, column: 71, scope: !192)
!203 = !DILocation(line: 327, column: 6, scope: !38)
!204 = !DILocation(line: 328, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !192, file: !39, line: 327, column: 78)
!206 = !DILocation(line: 338, column: 9, scope: !38)
!207 = !DILocation(line: 338, column: 4, scope: !38)
!208 = !DILocation(line: 339, column: 8, scope: !38)
!209 = !DILocation(line: 340, column: 7, scope: !38)
!210 = !DILocation(line: 341, column: 2, scope: !38)
!211 = !DILocation(line: 343, column: 2, scope: !38)
!212 = !DILocation(line: 468, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !91, file: !39, line: 468, column: 8)
!214 = !DILocation(line: 468, column: 8, scope: !213)
!215 = !DILocation(line: 468, column: 15, scope: !213)
!216 = !DILocation(line: 468, column: 8, scope: !91)
!217 = !DILocation(line: 469, column: 5, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !39, line: 468, column: 24)
!219 = !DILocation(line: 472, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !91, file: !39, line: 472, column: 8)
!221 = !{i8 0, i8 2}
!222 = !{}
!223 = !DILocation(line: 472, column: 8, scope: !91)
!224 = !DILocation(line: 473, column: 10, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !39, line: 473, column: 9)
!226 = distinct !DILexicalBlock(scope: !220, file: !39, line: 472, column: 18)
!227 = !DILocation(line: 473, column: 9, scope: !225)
!228 = !DILocation(line: 473, column: 14, scope: !225)
!229 = !DILocation(line: 473, column: 9, scope: !226)
!230 = !DILocation(line: 474, column: 14, scope: !231)
!231 = distinct !DILexicalBlock(scope: !225, file: !39, line: 473, column: 22)
!232 = !DILocation(line: 475, column: 13, scope: !231)
!233 = !DILocation(line: 476, column: 12, scope: !231)
!234 = !DILocation(line: 477, column: 11, scope: !231)
!235 = !DILocation(line: 478, column: 5, scope: !231)
!236 = !DILocation(line: 479, column: 5, scope: !226)
!237 = distinct !{!237, !211, !238}
!238 = !DILocation(line: 712, column: 2, scope: !38)
!239 = !DILocation(line: 481, column: 13, scope: !91)
!240 = !DILocation(line: 481, column: 12, scope: !91)
!241 = !DILocation(line: 481, column: 4, scope: !91)
!242 = !DILocation(line: 483, column: 13, scope: !90)
!243 = !DILocation(line: 484, column: 12, scope: !90)
!244 = !DILocation(line: 485, column: 5, scope: !90)
!245 = !DILocation(line: 505, column: 5, scope: !90)
!246 = !DILocation(line: 511, column: 11, scope: !90)
!247 = !DILocation(line: 512, column: 10, scope: !90)
!248 = !DILocation(line: 513, column: 5, scope: !90)
!249 = !DILocation(line: 516, column: 11, scope: !90)
!250 = !DILocation(line: 517, column: 10, scope: !90)
!251 = !DILocation(line: 518, column: 5, scope: !90)
!252 = !DILocation(line: 521, column: 11, scope: !90)
!253 = !DILocation(line: 522, column: 10, scope: !90)
!254 = !DILocation(line: 523, column: 5, scope: !90)
!255 = !DILocation(line: 532, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !90, file: !39, line: 532, column: 9)
!257 = !DILocation(line: 532, column: 17, scope: !256)
!258 = !DILocation(line: 532, column: 9, scope: !90)
!259 = !DILocation(line: 533, column: 10, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !39, line: 533, column: 10)
!261 = distinct !DILexicalBlock(scope: !256, file: !39, line: 532, column: 25)
!262 = !DILocation(line: 533, column: 18, scope: !260)
!263 = !DILocation(line: 533, column: 10, scope: !261)
!264 = !DILocation(line: 534, column: 13, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !39, line: 533, column: 26)
!266 = !DILocation(line: 535, column: 12, scope: !265)
!267 = !DILocation(line: 536, column: 6, scope: !265)
!268 = !DILocation(line: 537, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !260, file: !39, line: 536, column: 13)
!270 = !DILocation(line: 538, column: 12, scope: !269)
!271 = !DILocation(line: 540, column: 5, scope: !261)
!272 = !DILocation(line: 541, column: 13, scope: !90)
!273 = !DILocation(line: 542, column: 5, scope: !90)
!274 = !DILocation(line: 545, column: 16, scope: !90)
!275 = !DILocation(line: 545, column: 5, scope: !90)
!276 = !DILocation(line: 550, column: 11, scope: !90)
!277 = !DILocation(line: 551, column: 10, scope: !90)
!278 = !DILocation(line: 552, column: 13, scope: !90)
!279 = !DILocation(line: 553, column: 5, scope: !90)
!280 = !DILocation(line: 567, column: 5, scope: !89)
!281 = !DILocation(line: 567, column: 41, scope: !89)
!282 = !DILocation(line: 569, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !89, file: !39, line: 569, column: 9)
!284 = !DILocation(line: 569, column: 17, scope: !283)
!285 = !DILocation(line: 569, column: 9, scope: !89)
!286 = !DILocation(line: 570, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !39, line: 569, column: 25)
!288 = !DILocation(line: 570, column: 11, scope: !287)
!289 = !DILocation(line: 571, column: 12, scope: !287)
!290 = !DILocation(line: 572, column: 11, scope: !287)
!291 = !DILocation(line: 573, column: 5, scope: !287)
!292 = !DILocation(line: 574, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !39, line: 573, column: 12)
!294 = !DILocation(line: 574, column: 10, scope: !293)
!295 = !DILocation(line: 575, column: 12, scope: !293)
!296 = !DILocation(line: 576, column: 11, scope: !293)
!297 = !DILocation(line: 579, column: 39, scope: !89)
!298 = !DILocation(line: 579, column: 23, scope: !89)
!299 = !DILocation(line: 579, column: 63, scope: !89)
!300 = !DILocation(line: 579, column: 70, scope: !89)
!301 = !DILocation(line: 579, column: 44, scope: !89)
!302 = !DILocation(line: 579, column: 94, scope: !89)
!303 = !DILocation(line: 579, column: 76, scope: !89)
!304 = !DILocation(line: 579, column: 120, scope: !89)
!305 = !DILocation(line: 579, column: 102, scope: !89)
!306 = !DILocation(line: 579, column: 11, scope: !89)
!307 = !DILocation(line: 579, column: 9, scope: !89)
!308 = !DILocation(line: 580, column: 9, scope: !309)
!309 = distinct !DILexicalBlock(scope: !89, file: !39, line: 580, column: 9)
!310 = !DILocation(line: 580, column: 14, scope: !309)
!311 = !DILocation(line: 580, column: 9, scope: !89)
!312 = !DILocation(line: 582, column: 22, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !39, line: 582, column: 10)
!314 = distinct !DILexicalBlock(scope: !309, file: !39, line: 580, column: 20)
!315 = !DILocation(line: 582, column: 11, scope: !313)
!316 = !DILocation(line: 582, column: 39, scope: !313)
!317 = !DILocation(line: 582, column: 28, scope: !313)
!318 = !DILocation(line: 582, column: 26, scope: !313)
!319 = !DILocation(line: 582, column: 47, scope: !313)
!320 = !DILocation(line: 582, column: 45, scope: !313)
!321 = !DILocation(line: 582, column: 54, scope: !313)
!322 = !DILocation(line: 582, column: 52, scope: !313)
!323 = !DILocation(line: 582, column: 10, scope: !314)
!324 = !DILocation(line: 583, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !313, file: !39, line: 582, column: 59)
!326 = !DILocation(line: 587, column: 17, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !39, line: 587, column: 17)
!328 = distinct !DILexicalBlock(scope: !314, file: !39, line: 585, column: 10)
!329 = !DILocation(line: 587, column: 25, scope: !327)
!330 = !DILocation(line: 587, column: 17, scope: !328)
!331 = !DILocation(line: 588, column: 31, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !39, line: 587, column: 33)
!333 = !DILocation(line: 588, column: 23, scope: !332)
!334 = !DILocation(line: 588, column: 27, scope: !332)
!335 = !DILocation(line: 589, column: 6, scope: !332)
!336 = !DILocation(line: 590, column: 26, scope: !337)
!337 = distinct !DILexicalBlock(scope: !327, file: !39, line: 589, column: 13)
!338 = !DILocation(line: 590, column: 18, scope: !337)
!339 = !DILocation(line: 590, column: 22, scope: !337)
!340 = !DILocation(line: 592, column: 5, scope: !314)
!341 = !DILocation(line: 593, column: 12, scope: !89)
!342 = !DILocation(line: 593, column: 9, scope: !89)
!343 = !DILocation(line: 594, column: 13, scope: !89)
!344 = !DILocation(line: 595, column: 5, scope: !89)
!345 = !DILocation(line: 596, column: 4, scope: !90)
!346 = !DILocation(line: 599, column: 13, scope: !90)
!347 = !DILocation(line: 600, column: 5, scope: !90)
!348 = !DILocation(line: 605, column: 37, scope: !92)
!349 = !DILocation(line: 605, column: 21, scope: !92)
!350 = !DILocation(line: 605, column: 61, scope: !92)
!351 = !DILocation(line: 605, column: 68, scope: !92)
!352 = !DILocation(line: 605, column: 42, scope: !92)
!353 = !DILocation(line: 605, column: 92, scope: !92)
!354 = !DILocation(line: 605, column: 74, scope: !92)
!355 = !DILocation(line: 605, column: 118, scope: !92)
!356 = !DILocation(line: 605, column: 100, scope: !92)
!357 = !DILocation(line: 605, column: 9, scope: !92)
!358 = !DILocation(line: 605, column: 7, scope: !92)
!359 = !DILocation(line: 608, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !92, file: !39, line: 608, column: 7)
!361 = !DILocation(line: 608, column: 12, scope: !360)
!362 = !DILocation(line: 608, column: 17, scope: !360)
!363 = !DILocation(line: 608, column: 32, scope: !360)
!364 = !DILocation(line: 608, column: 21, scope: !360)
!365 = !DILocation(line: 608, column: 49, scope: !360)
!366 = !DILocation(line: 608, column: 38, scope: !360)
!367 = !DILocation(line: 608, column: 36, scope: !360)
!368 = !DILocation(line: 608, column: 57, scope: !360)
!369 = !DILocation(line: 608, column: 55, scope: !360)
!370 = !DILocation(line: 608, column: 64, scope: !360)
!371 = !DILocation(line: 608, column: 62, scope: !360)
!372 = !DILocation(line: 608, column: 7, scope: !92)
!373 = !DILocation(line: 609, column: 4, scope: !374)
!374 = distinct !DILexicalBlock(scope: !360, file: !39, line: 608, column: 69)
!375 = !DILocation(line: 613, column: 7, scope: !99)
!376 = !DILocation(line: 613, column: 7, scope: !92)
!377 = !DILocation(line: 614, column: 8, scope: !98)
!378 = !DILocation(line: 614, column: 6, scope: !98)
!379 = !DILocation(line: 614, column: 4, scope: !98)
!380 = !DILocation(line: 615, column: 1, scope: !98)
!381 = !DILocation(line: 616, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !98, file: !39, line: 616, column: 8)
!383 = !DILocation(line: 616, column: 13, scope: !382)
!384 = !DILocation(line: 616, column: 8, scope: !98)
!385 = !DILocation(line: 617, column: 27, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !39, line: 616, column: 19)
!387 = !DILocation(line: 617, column: 21, scope: !386)
!388 = !DILocation(line: 617, column: 25, scope: !386)
!389 = !DILocation(line: 618, column: 4, scope: !386)
!390 = !DILocation(line: 620, column: 10, scope: !98)
!391 = !DILocation(line: 620, column: 27, scope: !98)
!392 = !DILocation(line: 620, column: 30, scope: !98)
!393 = !DILocation(line: 620, column: 18, scope: !98)
!394 = !DILocation(line: 620, column: 55, scope: !98)
!395 = !DILocation(line: 620, column: 41, scope: !98)
!396 = !DILocation(line: 621, column: 10, scope: !98)
!397 = !DILocation(line: 621, column: 21, scope: !98)
!398 = !DILocation(line: 621, column: 27, scope: !98)
!399 = !DILocation(line: 621, column: 19, scope: !98)
!400 = !DILocation(line: 621, column: 18, scope: !98)
!401 = !DILocation(line: 623, column: 8, scope: !103)
!402 = !DILocation(line: 623, column: 14, scope: !103)
!403 = !DILocation(line: 623, column: 18, scope: !103)
!404 = !DILocation(line: 623, column: 8, scope: !98)
!405 = !DILocation(line: 625, column: 4, scope: !406)
!406 = distinct !DILexicalBlock(scope: !103, file: !39, line: 623, column: 25)
!407 = !DILocation(line: 626, column: 5, scope: !102)
!408 = !DILocation(line: 626, column: 14, scope: !102)
!409 = !DILocation(line: 626, column: 38, scope: !102)
!410 = !DILocation(line: 626, column: 27, scope: !102)
!411 = !DILocation(line: 626, column: 55, scope: !102)
!412 = !DILocation(line: 626, column: 44, scope: !102)
!413 = !DILocation(line: 626, column: 42, scope: !102)
!414 = !DILocation(line: 626, column: 61, scope: !102)
!415 = !DILocation(line: 634, column: 9, scope: !416)
!416 = distinct !DILexicalBlock(scope: !102, file: !39, line: 634, column: 9)
!417 = !DILocation(line: 634, column: 15, scope: !416)
!418 = !DILocation(line: 634, column: 18, scope: !416)
!419 = !DILocation(line: 634, column: 28, scope: !416)
!420 = !DILocation(line: 634, column: 9, scope: !102)
!421 = !DILocation(line: 636, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !416, file: !39, line: 634, column: 52)
!423 = !DILocation(line: 639, column: 9, scope: !424)
!424 = distinct !DILexicalBlock(scope: !102, file: !39, line: 639, column: 9)
!425 = !DILocation(line: 639, column: 15, scope: !424)
!426 = !DILocation(line: 639, column: 9, scope: !102)
!427 = !DILocation(line: 641, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !39, line: 639, column: 206)
!429 = !DILocation(line: 644, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !102, file: !39, line: 644, column: 9)
!431 = !DILocation(line: 644, column: 14, scope: !430)
!432 = !DILocation(line: 644, column: 9, scope: !102)
!433 = !DILocation(line: 649, column: 27, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !39, line: 644, column: 20)
!435 = !DILocation(line: 649, column: 18, scope: !434)
!436 = !DILocation(line: 649, column: 6, scope: !434)
!437 = !DILocation(line: 649, column: 25, scope: !434)
!438 = !DILocation(line: 650, column: 27, scope: !434)
!439 = !DILocation(line: 650, column: 18, scope: !434)
!440 = !DILocation(line: 650, column: 6, scope: !434)
!441 = !DILocation(line: 650, column: 25, scope: !434)
!442 = !DILocation(line: 651, column: 10, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !39, line: 651, column: 10)
!444 = !DILocation(line: 651, column: 10, scope: !434)
!445 = !DILocation(line: 653, column: 19, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !39, line: 651, column: 17)
!447 = !DILocation(line: 653, column: 7, scope: !446)
!448 = !DILocation(line: 653, column: 26, scope: !446)
!449 = !DILocation(line: 654, column: 15, scope: !446)
!450 = !DILocation(line: 655, column: 6, scope: !446)
!451 = !DILocation(line: 656, column: 15, scope: !452)
!452 = distinct !DILexicalBlock(scope: !443, file: !39, line: 655, column: 13)
!453 = !DILocation(line: 658, column: 5, scope: !434)
!454 = !DILocation(line: 658, column: 16, scope: !455)
!455 = distinct !DILexicalBlock(scope: !430, file: !39, line: 658, column: 16)
!456 = !DILocation(line: 658, column: 16, scope: !430)
!457 = !DILocation(line: 663, column: 10, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !39, line: 658, column: 23)
!459 = !DILocation(line: 664, column: 5, scope: !458)
!460 = !DILocation(line: 664, column: 16, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !39, line: 664, column: 16)
!462 = !DILocation(line: 664, column: 16, scope: !455)
!463 = !DILocation(line: 669, column: 10, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !39, line: 664, column: 28)
!465 = !DILocation(line: 670, column: 5, scope: !464)
!466 = !DILocation(line: 675, column: 20, scope: !467)
!467 = distinct !DILexicalBlock(scope: !461, file: !39, line: 670, column: 12)
!468 = !DILocation(line: 675, column: 13, scope: !467)
!469 = !DILocation(line: 675, column: 23, scope: !467)
!470 = !DILocation(line: 675, column: 27, scope: !467)
!471 = !DILocation(line: 675, column: 10, scope: !467)
!472 = !DILocation(line: 678, column: 10, scope: !102)
!473 = !DILocation(line: 679, column: 4, scope: !103)
!474 = !DILocation(line: 680, column: 8, scope: !98)
!475 = !DILocation(line: 682, column: 15, scope: !98)
!476 = !DILocation(line: 683, column: 3, scope: !98)
!477 = !DILocation(line: 683, column: 14, scope: !106)
!478 = !DILocation(line: 683, column: 19, scope: !106)
!479 = !DILocation(line: 683, column: 14, scope: !99)
!480 = !DILocation(line: 684, column: 4, scope: !105)
!481 = !DILocation(line: 684, column: 8, scope: !105)
!482 = !DILocation(line: 684, column: 12, scope: !105)
!483 = !DILocation(line: 686, column: 8, scope: !484)
!484 = distinct !DILexicalBlock(scope: !105, file: !39, line: 686, column: 8)
!485 = !DILocation(line: 686, column: 13, scope: !484)
!486 = !DILocation(line: 686, column: 8, scope: !105)
!487 = !DILocation(line: 687, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !39, line: 686, column: 19)
!489 = !DILocation(line: 687, column: 13, scope: !488)
!490 = !DILocation(line: 687, column: 17, scope: !488)
!491 = !DILocation(line: 688, column: 4, scope: !488)
!492 = !DILocation(line: 689, column: 8, scope: !105)
!493 = !DILocation(line: 690, column: 3, scope: !106)
!494 = !DILocation(line: 690, column: 3, scope: !105)
!495 = !DILocation(line: 690, column: 14, scope: !109)
!496 = !DILocation(line: 690, column: 19, scope: !109)
!497 = !DILocation(line: 690, column: 14, scope: !106)
!498 = !DILocation(line: 691, column: 4, scope: !108)
!499 = !DILocation(line: 691, column: 9, scope: !108)
!500 = !DILocation(line: 691, column: 13, scope: !108)
!501 = !DILocation(line: 693, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !108, file: !39, line: 693, column: 8)
!503 = !DILocation(line: 693, column: 13, scope: !502)
!504 = !DILocation(line: 693, column: 8, scope: !108)
!505 = !DILocation(line: 694, column: 20, scope: !506)
!506 = distinct !DILexicalBlock(scope: !502, file: !39, line: 693, column: 19)
!507 = !DILocation(line: 694, column: 14, scope: !506)
!508 = !DILocation(line: 694, column: 18, scope: !506)
!509 = !DILocation(line: 695, column: 4, scope: !506)
!510 = !DILocation(line: 696, column: 8, scope: !108)
!511 = !DILocation(line: 697, column: 3, scope: !109)
!512 = !DILocation(line: 697, column: 3, scope: !108)
!513 = !DILocation(line: 697, column: 14, scope: !112)
!514 = !DILocation(line: 697, column: 19, scope: !112)
!515 = !DILocation(line: 697, column: 14, scope: !109)
!516 = !DILocation(line: 698, column: 4, scope: !111)
!517 = !DILocation(line: 698, column: 14, scope: !111)
!518 = !DILocation(line: 698, column: 18, scope: !111)
!519 = !DILocation(line: 700, column: 8, scope: !520)
!520 = distinct !DILexicalBlock(scope: !111, file: !39, line: 700, column: 8)
!521 = !DILocation(line: 700, column: 13, scope: !520)
!522 = !DILocation(line: 700, column: 8, scope: !111)
!523 = !DILocation(line: 704, column: 26, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !39, line: 703, column: 12)
!525 = distinct !DILexicalBlock(scope: !526, file: !39, line: 701, column: 9)
!526 = distinct !DILexicalBlock(scope: !520, file: !39, line: 700, column: 19)
!527 = !DILocation(line: 704, column: 20, scope: !524)
!528 = !DILocation(line: 704, column: 24, scope: !524)
!529 = !DILocation(line: 706, column: 4, scope: !526)
!530 = !DILocation(line: 707, column: 8, scope: !111)
!531 = !DILocation(line: 708, column: 3, scope: !112)
!532 = !DILocation(line: 708, column: 3, scope: !111)
!533 = !DILocation(line: 710, column: 4, scope: !534)
!534 = distinct !DILexicalBlock(scope: !112, file: !39, line: 708, column: 10)
!535 = !DILocation(line: 720, column: 18, scope: !536)
!536 = distinct !DILexicalBlock(scope: !38, file: !39, line: 720, column: 6)
!537 = !DILocation(line: 720, column: 7, scope: !536)
!538 = !DILocation(line: 720, column: 35, scope: !536)
!539 = !DILocation(line: 720, column: 24, scope: !536)
!540 = !DILocation(line: 720, column: 22, scope: !536)
!541 = !DILocation(line: 720, column: 41, scope: !536)
!542 = !DILocation(line: 720, column: 55, scope: !536)
!543 = !DILocation(line: 720, column: 6, scope: !38)
!544 = !DILocation(line: 722, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !536, file: !39, line: 720, column: 62)
!546 = !DILocation(line: 729, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !38, file: !39, line: 729, column: 6)
!548 = !DILocation(line: 729, column: 11, scope: !547)
!549 = !DILocation(line: 729, column: 6, scope: !38)
!550 = !DILocation(line: 730, column: 22, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !39, line: 729, column: 17)
!552 = !DILocation(line: 730, column: 11, scope: !551)
!553 = !DILocation(line: 730, column: 39, scope: !551)
!554 = !DILocation(line: 730, column: 28, scope: !551)
!555 = !DILocation(line: 730, column: 26, scope: !551)
!556 = !DILocation(line: 730, column: 47, scope: !551)
!557 = !DILocation(line: 730, column: 45, scope: !551)
!558 = !DILocation(line: 730, column: 51, scope: !551)
!559 = !DILocation(line: 730, column: 3, scope: !551)
!560 = !DILocation(line: 734, column: 12, scope: !38)
!561 = !DILocation(line: 734, column: 17, scope: !38)
!562 = !DILocation(line: 737, column: 34, scope: !38)
!563 = !DILocation(line: 737, column: 23, scope: !38)
!564 = !DILocation(line: 737, column: 51, scope: !38)
!565 = !DILocation(line: 737, column: 40, scope: !38)
!566 = !DILocation(line: 737, column: 38, scope: !38)
!567 = !DILocation(line: 737, column: 57, scope: !38)
!568 = !DILocation(line: 737, column: 22, scope: !38)
!569 = !DILocation(line: 737, column: 2, scope: !38)
!570 = !DILocation(line: 737, column: 16, scope: !38)
!571 = !DILocation(line: 737, column: 20, scope: !38)
!572 = !DILocation(line: 739, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !38, file: !39, line: 739, column: 6)
!574 = !DILocation(line: 739, column: 6, scope: !38)
!575 = !DILocation(line: 741, column: 3, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !39, line: 739, column: 18)
!577 = !DILocation(line: 741, column: 17, scope: !576)
!578 = !DILocation(line: 741, column: 25, scope: !576)
!579 = !DILocation(line: 742, column: 30, scope: !576)
!580 = !DILocation(line: 742, column: 3, scope: !576)
!581 = !DILocation(line: 742, column: 17, scope: !576)
!582 = !DILocation(line: 742, column: 28, scope: !576)
!583 = !DILocation(line: 743, column: 2, scope: !576)
!584 = !DILocation(line: 745, column: 27, scope: !585)
!585 = distinct !DILexicalBlock(scope: !573, file: !39, line: 743, column: 9)
!586 = !DILocation(line: 745, column: 3, scope: !585)
!587 = !DILocation(line: 745, column: 17, scope: !585)
!588 = !DILocation(line: 745, column: 25, scope: !585)
!589 = !DILocation(line: 746, column: 3, scope: !585)
!590 = !DILocation(line: 746, column: 17, scope: !585)
!591 = !DILocation(line: 746, column: 28, scope: !585)
!592 = !DILocation(line: 749, column: 29, scope: !38)
!593 = !DILocation(line: 749, column: 2, scope: !38)
!594 = !DILocation(line: 749, column: 16, scope: !38)
!595 = !DILocation(line: 749, column: 27, scope: !38)
!596 = !DILocation(line: 756, column: 6, scope: !118)
!597 = !DILocation(line: 756, column: 6, scope: !38)
!598 = !DILocation(line: 757, column: 10, scope: !116)
!599 = !DILocation(line: 757, column: 8, scope: !116)
!600 = !DILocation(line: 757, column: 15, scope: !115)
!601 = !DILocation(line: 757, column: 19, scope: !115)
!602 = !DILocation(line: 757, column: 17, scope: !115)
!603 = !DILocation(line: 757, column: 3, scope: !116)
!604 = !DILocation(line: 758, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !114, file: !39, line: 758, column: 8)
!606 = !DILocation(line: 758, column: 10, scope: !605)
!607 = !DILocation(line: 758, column: 25, scope: !605)
!608 = !DILocation(line: 758, column: 8, scope: !114)
!609 = !DILocation(line: 759, column: 5, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !39, line: 758, column: 42)
!611 = !DILocation(line: 762, column: 4, scope: !114)
!612 = !DILocation(line: 762, column: 12, scope: !114)
!613 = !DILocation(line: 762, column: 30, scope: !114)
!614 = !DILocation(line: 762, column: 18, scope: !114)
!615 = !DILocation(line: 762, column: 33, scope: !114)
!616 = !DILocation(line: 765, column: 20, scope: !617)
!617 = distinct !DILexicalBlock(scope: !114, file: !39, line: 765, column: 8)
!618 = !DILocation(line: 765, column: 9, scope: !617)
!619 = !DILocation(line: 765, column: 37, scope: !617)
!620 = !DILocation(line: 765, column: 26, scope: !617)
!621 = !DILocation(line: 765, column: 24, scope: !617)
!622 = !DILocation(line: 765, column: 43, scope: !617)
!623 = !DILocation(line: 765, column: 49, scope: !617)
!624 = !DILocation(line: 765, column: 47, scope: !617)
!625 = !DILocation(line: 765, column: 8, scope: !114)
!626 = !DILocation(line: 766, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !617, file: !39, line: 765, column: 54)
!628 = !DILocation(line: 769, column: 13, scope: !114)
!629 = !DILocation(line: 769, column: 8, scope: !114)
!630 = !DILocation(line: 769, column: 11, scope: !114)
!631 = !DILocation(line: 770, column: 3, scope: !115)
!632 = !DILocation(line: 770, column: 3, scope: !114)
!633 = !DILocation(line: 757, column: 27, scope: !115)
!634 = !DILocation(line: 757, column: 3, scope: !115)
!635 = distinct !{!635, !603, !636}
!636 = !DILocation(line: 770, column: 3, scope: !116)
!637 = !DILocation(line: 771, column: 2, scope: !117)
!638 = !DILocation(line: 774, column: 9, scope: !639)
!639 = distinct !DILexicalBlock(scope: !38, file: !39, line: 774, column: 2)
!640 = !DILocation(line: 774, column: 7, scope: !639)
!641 = !DILocation(line: 774, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !639, file: !39, line: 774, column: 2)
!643 = !DILocation(line: 774, column: 18, scope: !642)
!644 = !DILocation(line: 774, column: 16, scope: !642)
!645 = !DILocation(line: 774, column: 2, scope: !639)
!646 = !DILocation(line: 776, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !39, line: 776, column: 7)
!648 = distinct !DILexicalBlock(scope: !642, file: !39, line: 774, column: 30)
!649 = !DILocation(line: 776, column: 16, scope: !647)
!650 = !DILocation(line: 776, column: 31, scope: !647)
!651 = !DILocation(line: 776, column: 19, scope: !647)
!652 = !DILocation(line: 776, column: 34, scope: !647)
!653 = !DILocation(line: 776, column: 7, scope: !648)
!654 = !DILocation(line: 777, column: 4, scope: !655)
!655 = distinct !DILexicalBlock(scope: !647, file: !39, line: 776, column: 50)
!656 = !DILocation(line: 780, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !648, file: !39, line: 780, column: 7)
!658 = !DILocation(line: 780, column: 7, scope: !648)
!659 = !DILocation(line: 781, column: 9, scope: !660)
!660 = distinct !DILexicalBlock(scope: !657, file: !39, line: 780, column: 19)
!661 = !DILocation(line: 782, column: 25, scope: !660)
!662 = !DILocation(line: 782, column: 13, scope: !660)
!663 = !DILocation(line: 782, column: 8, scope: !660)
!664 = !DILocation(line: 782, column: 11, scope: !660)
!665 = !DILocation(line: 783, column: 3, scope: !660)
!666 = !DILocation(line: 785, column: 19, scope: !667)
!667 = distinct !DILexicalBlock(scope: !657, file: !39, line: 783, column: 10)
!668 = !DILocation(line: 785, column: 38, scope: !667)
!669 = !DILocation(line: 785, column: 26, scope: !667)
!670 = !DILocation(line: 785, column: 41, scope: !667)
!671 = !DILocation(line: 785, column: 24, scope: !667)
!672 = !DILocation(line: 785, column: 8, scope: !667)
!673 = !DILocation(line: 785, column: 6, scope: !667)
!674 = !DILocation(line: 787, column: 15, scope: !667)
!675 = !DILocation(line: 787, column: 34, scope: !667)
!676 = !DILocation(line: 787, column: 22, scope: !667)
!677 = !DILocation(line: 787, column: 37, scope: !667)
!678 = !DILocation(line: 787, column: 20, scope: !667)
!679 = !DILocation(line: 787, column: 52, scope: !667)
!680 = !DILocation(line: 789, column: 18, scope: !667)
!681 = !DILocation(line: 789, column: 11, scope: !667)
!682 = !DILocation(line: 789, column: 21, scope: !667)
!683 = !DILocation(line: 789, column: 9, scope: !667)
!684 = !DILocation(line: 793, column: 19, scope: !685)
!685 = distinct !DILexicalBlock(scope: !648, file: !39, line: 793, column: 7)
!686 = !DILocation(line: 793, column: 8, scope: !685)
!687 = !DILocation(line: 793, column: 36, scope: !685)
!688 = !DILocation(line: 793, column: 25, scope: !685)
!689 = !DILocation(line: 793, column: 23, scope: !685)
!690 = !DILocation(line: 793, column: 42, scope: !685)
!691 = !DILocation(line: 793, column: 48, scope: !685)
!692 = !DILocation(line: 793, column: 46, scope: !685)
!693 = !DILocation(line: 793, column: 55, scope: !685)
!694 = !DILocation(line: 793, column: 53, scope: !685)
!695 = !DILocation(line: 793, column: 7, scope: !648)
!696 = !DILocation(line: 794, column: 4, scope: !697)
!697 = distinct !DILexicalBlock(scope: !685, file: !39, line: 793, column: 60)
!698 = !DILocation(line: 797, column: 24, scope: !648)
!699 = !DILocation(line: 797, column: 12, scope: !648)
!700 = !DILocation(line: 797, column: 7, scope: !648)
!701 = !DILocation(line: 797, column: 10, scope: !648)
!702 = !DILocation(line: 799, column: 10, scope: !648)
!703 = !DILocation(line: 799, column: 15, scope: !648)
!704 = !DILocation(line: 799, column: 18, scope: !648)
!705 = !DILocation(line: 799, column: 3, scope: !648)
!706 = !DILocation(line: 800, column: 10, scope: !648)
!707 = !DILocation(line: 800, column: 7, scope: !648)
!708 = !DILocation(line: 801, column: 2, scope: !648)
!709 = !DILocation(line: 774, column: 26, scope: !642)
!710 = !DILocation(line: 774, column: 2, scope: !642)
!711 = distinct !{!711, !645, !712}
!712 = !DILocation(line: 801, column: 2, scope: !639)
!713 = !DILocation(line: 808, column: 21, scope: !38)
!714 = !DILocation(line: 808, column: 10, scope: !38)
!715 = !DILocation(line: 808, column: 38, scope: !38)
!716 = !DILocation(line: 808, column: 27, scope: !38)
!717 = !DILocation(line: 808, column: 25, scope: !38)
!718 = !DILocation(line: 808, column: 2, scope: !38)
!719 = !DILocation(line: 813, column: 1, scope: !38)
!720 = distinct !DISubprogram(name: "ptr_in_rodata", scope: !39, file: !39, line: 33, type: !721, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !723)
!721 = !DISubroutineType(types: !722)
!722 = !{!71, !13}
!723 = !{!724}
!724 = !DILocalVariable(name: "addr", arg: 1, scope: !720, file: !39, line: 33, type: !13)
!725 = !DILocation(line: 33, column: 47, scope: !720)
!726 = !DILocation(line: 41, column: 29, scope: !720)
!727 = !DILocation(line: 41, column: 9, scope: !720)
!728 = !DILocation(line: 41, column: 2, scope: !720)
!729 = !DISubprogram(name: "strlen", scope: !17, file: !17, line: 335, type: !730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !222)
!730 = !DISubroutineType(types: !731)
!731 = !{!5, !13}
!732 = distinct !DISubprogram(name: "cbprintf_package", scope: !39, file: !39, line: 815, type: !733, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!18, !6, !16, !42, !13, null}
!735 = !{!736, !737, !738, !739, !740, !741}
!736 = !DILocalVariable(name: "packaged", arg: 1, scope: !732, file: !39, line: 815, type: !6)
!737 = !DILocalVariable(name: "len", arg: 2, scope: !732, file: !39, line: 815, type: !16)
!738 = !DILocalVariable(name: "flags", arg: 3, scope: !732, file: !39, line: 815, type: !42)
!739 = !DILocalVariable(name: "format", arg: 4, scope: !732, file: !39, line: 816, type: !13)
!740 = !DILocalVariable(name: "ap", scope: !732, file: !39, line: 818, type: !43)
!741 = !DILocalVariable(name: "ret", scope: !732, file: !39, line: 819, type: !18)
!742 = !DILocation(line: 815, column: 28, scope: !732)
!743 = !DILocation(line: 815, column: 45, scope: !732)
!744 = !DILocation(line: 815, column: 59, scope: !732)
!745 = !DILocation(line: 816, column: 20, scope: !732)
!746 = !DILocation(line: 818, column: 2, scope: !732)
!747 = !DILocation(line: 818, column: 10, scope: !732)
!748 = !DILocation(line: 819, column: 2, scope: !732)
!749 = !DILocation(line: 819, column: 6, scope: !732)
!750 = !DILocation(line: 821, column: 2, scope: !732)
!751 = !DILocation(line: 822, column: 26, scope: !732)
!752 = !DILocation(line: 822, column: 36, scope: !732)
!753 = !DILocation(line: 822, column: 41, scope: !732)
!754 = !DILocation(line: 822, column: 48, scope: !732)
!755 = !DILocation(line: 822, column: 8, scope: !732)
!756 = !DILocation(line: 822, column: 6, scope: !732)
!757 = !DILocation(line: 823, column: 2, scope: !732)
!758 = !DILocation(line: 824, column: 9, scope: !732)
!759 = !DILocation(line: 825, column: 1, scope: !732)
!760 = !DILocation(line: 824, column: 2, scope: !732)
!761 = distinct !DISubprogram(name: "cbpprintf_external", scope: !39, file: !39, line: 827, type: !762, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !772)
!762 = !DISubroutineType(types: !763)
!763 = !{!18, !764, !768, !6, !6}
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !78, line: 302, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 32)
!766 = !DISubroutineType(types: !767)
!767 = !{!18, null}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbvprintf_external_formatter_func", file: !78, line: 333, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 32)
!770 = !DISubroutineType(types: !771)
!771 = !{!18, !764, !6, !13, !43}
!772 = !{!773, !774, !775, !776, !777, !778, !784, !785, !786, !787, !788, !789, !790, !791}
!773 = !DILocalVariable(name: "out", arg: 1, scope: !761, file: !39, line: 827, type: !764)
!774 = !DILocalVariable(name: "formatter", arg: 2, scope: !761, file: !39, line: 828, type: !768)
!775 = !DILocalVariable(name: "ctx", arg: 3, scope: !761, file: !39, line: 829, type: !6)
!776 = !DILocalVariable(name: "packaged", arg: 4, scope: !761, file: !39, line: 829, type: !6)
!777 = !DILocalVariable(name: "buf", scope: !761, file: !39, line: 831, type: !26)
!778 = !DILocalVariable(name: "hdr", scope: !761, file: !39, line: 832, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 32)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cbprintf_package_hdr_ext", file: !78, line: 96, size: 64, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !780, file: !78, line: 98, baseType: !77, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !780, file: !78, line: 101, baseType: !25, size: 32, offset: 32)
!784 = !DILocalVariable(name: "s", scope: !761, file: !39, line: 833, type: !25)
!785 = !DILocalVariable(name: "ps", scope: !761, file: !39, line: 833, type: !24)
!786 = !DILocalVariable(name: "i", scope: !761, file: !39, line: 834, type: !5)
!787 = !DILocalVariable(name: "args_size", scope: !761, file: !39, line: 834, type: !5)
!788 = !DILocalVariable(name: "s_nbr", scope: !761, file: !39, line: 834, type: !5)
!789 = !DILocalVariable(name: "ros_nbr", scope: !761, file: !39, line: 834, type: !5)
!790 = !DILocalVariable(name: "rws_nbr", scope: !761, file: !39, line: 834, type: !5)
!791 = !DILocalVariable(name: "s_idx", scope: !761, file: !39, line: 834, type: !5)
!792 = !DILocation(line: 827, column: 36, scope: !761)
!793 = !DILocation(line: 828, column: 44, scope: !761)
!794 = !DILocation(line: 829, column: 16, scope: !761)
!795 = !DILocation(line: 829, column: 27, scope: !761)
!796 = !DILocation(line: 831, column: 2, scope: !761)
!797 = !DILocation(line: 831, column: 11, scope: !761)
!798 = !DILocation(line: 831, column: 17, scope: !761)
!799 = !DILocation(line: 832, column: 2, scope: !761)
!800 = !DILocation(line: 832, column: 35, scope: !761)
!801 = !DILocation(line: 832, column: 41, scope: !761)
!802 = !DILocation(line: 833, column: 2, scope: !761)
!803 = !DILocation(line: 833, column: 8, scope: !761)
!804 = !DILocation(line: 833, column: 13, scope: !761)
!805 = !DILocation(line: 834, column: 2, scope: !761)
!806 = !DILocation(line: 834, column: 15, scope: !761)
!807 = !DILocation(line: 834, column: 18, scope: !761)
!808 = !DILocation(line: 834, column: 29, scope: !761)
!809 = !DILocation(line: 834, column: 36, scope: !761)
!810 = !DILocation(line: 834, column: 45, scope: !761)
!811 = !DILocation(line: 834, column: 54, scope: !761)
!812 = !DILocation(line: 836, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !761, file: !39, line: 836, column: 6)
!814 = !DILocation(line: 836, column: 10, scope: !813)
!815 = !DILocation(line: 836, column: 6, scope: !761)
!816 = !DILocation(line: 837, column: 3, scope: !817)
!817 = distinct !DILexicalBlock(scope: !813, file: !39, line: 836, column: 16)
!818 = !DILocation(line: 841, column: 14, scope: !761)
!819 = !DILocation(line: 841, column: 19, scope: !761)
!820 = !DILocation(line: 841, column: 28, scope: !761)
!821 = !DILocation(line: 841, column: 32, scope: !761)
!822 = !DILocation(line: 841, column: 12, scope: !761)
!823 = !DILocation(line: 842, column: 10, scope: !761)
!824 = !DILocation(line: 842, column: 15, scope: !761)
!825 = !DILocation(line: 842, column: 24, scope: !761)
!826 = !DILocation(line: 842, column: 8, scope: !761)
!827 = !DILocation(line: 843, column: 12, scope: !761)
!828 = !DILocation(line: 843, column: 17, scope: !761)
!829 = !DILocation(line: 843, column: 26, scope: !761)
!830 = !DILocation(line: 843, column: 10, scope: !761)
!831 = !DILocation(line: 844, column: 12, scope: !761)
!832 = !DILocation(line: 844, column: 17, scope: !761)
!833 = !DILocation(line: 844, column: 26, scope: !761)
!834 = !DILocation(line: 844, column: 10, scope: !761)
!835 = !DILocation(line: 847, column: 15, scope: !761)
!836 = !DILocation(line: 847, column: 21, scope: !761)
!837 = !DILocation(line: 847, column: 19, scope: !761)
!838 = !DILocation(line: 847, column: 33, scope: !761)
!839 = !DILocation(line: 847, column: 31, scope: !761)
!840 = !DILocation(line: 847, column: 47, scope: !761)
!841 = !DILocation(line: 847, column: 45, scope: !761)
!842 = !DILocation(line: 847, column: 41, scope: !761)
!843 = !DILocation(line: 847, column: 4, scope: !761)
!844 = !DILocation(line: 852, column: 9, scope: !845)
!845 = distinct !DILexicalBlock(scope: !761, file: !39, line: 852, column: 2)
!846 = !DILocation(line: 852, column: 7, scope: !845)
!847 = !DILocation(line: 852, column: 14, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !39, line: 852, column: 2)
!849 = !DILocation(line: 852, column: 18, scope: !848)
!850 = !DILocation(line: 852, column: 16, scope: !848)
!851 = !DILocation(line: 852, column: 2, scope: !845)
!852 = !DILocation(line: 854, column: 24, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !39, line: 852, column: 30)
!854 = !DILocation(line: 854, column: 11, scope: !853)
!855 = !DILocation(line: 854, column: 9, scope: !853)
!856 = !DILocation(line: 855, column: 18, scope: !853)
!857 = !DILocation(line: 855, column: 24, scope: !853)
!858 = !DILocation(line: 855, column: 30, scope: !853)
!859 = !DILocation(line: 855, column: 22, scope: !853)
!860 = !DILocation(line: 855, column: 6, scope: !853)
!861 = !DILocation(line: 857, column: 9, scope: !853)
!862 = !DILocation(line: 857, column: 4, scope: !853)
!863 = !DILocation(line: 857, column: 7, scope: !853)
!864 = !DILocation(line: 859, column: 15, scope: !853)
!865 = !DILocation(line: 859, column: 8, scope: !853)
!866 = !DILocation(line: 859, column: 18, scope: !853)
!867 = !DILocation(line: 859, column: 5, scope: !853)
!868 = !DILocation(line: 860, column: 2, scope: !853)
!869 = !DILocation(line: 852, column: 26, scope: !848)
!870 = !DILocation(line: 852, column: 2, scope: !848)
!871 = distinct !{!871, !851, !872}
!872 = !DILocation(line: 860, column: 2, scope: !845)
!873 = !DILocation(line: 863, column: 6, scope: !761)
!874 = !DILocation(line: 866, column: 30, scope: !761)
!875 = !DILocation(line: 866, column: 35, scope: !761)
!876 = !DILocation(line: 866, column: 46, scope: !761)
!877 = !DILocation(line: 866, column: 51, scope: !761)
!878 = !DILocation(line: 866, column: 56, scope: !761)
!879 = !DILocation(line: 866, column: 61, scope: !761)
!880 = !DILocation(line: 866, column: 9, scope: !761)
!881 = !DILocation(line: 866, column: 2, scope: !761)
!882 = !DILocation(line: 867, column: 1, scope: !761)
!883 = distinct !DISubprogram(name: "cbprintf_via_va_list", scope: !39, file: !39, line: 179, type: !884, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !886)
!884 = !DISubroutineType(types: !885)
!885 = !{!18, !764, !768, !6, !13, !6}
!886 = !{!887, !888, !889, !890, !891, !892}
!887 = !DILocalVariable(name: "out", arg: 1, scope: !883, file: !39, line: 179, type: !764)
!888 = !DILocalVariable(name: "formatter", arg: 2, scope: !883, file: !39, line: 180, type: !768)
!889 = !DILocalVariable(name: "ctx", arg: 3, scope: !883, file: !39, line: 181, type: !6)
!890 = !DILocalVariable(name: "fmt", arg: 4, scope: !883, file: !39, line: 182, type: !13)
!891 = !DILocalVariable(name: "buf", arg: 5, scope: !883, file: !39, line: 182, type: !6)
!892 = !DILocalVariable(name: "u", scope: !883, file: !39, line: 187, type: !893)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !39, line: 184, size: 32, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ap", scope: !893, file: !39, line: 185, baseType: !43, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !893, file: !39, line: 186, baseType: !6, size: 32)
!897 = !DILocation(line: 179, column: 45, scope: !883)
!898 = !DILocation(line: 180, column: 39, scope: !883)
!899 = !DILocation(line: 181, column: 11, scope: !883)
!900 = !DILocation(line: 182, column: 17, scope: !883)
!901 = !DILocation(line: 182, column: 28, scope: !883)
!902 = !DILocation(line: 184, column: 2, scope: !883)
!903 = !DILocation(line: 187, column: 4, scope: !883)
!904 = !DILocation(line: 189, column: 10, scope: !883)
!905 = !DILocation(line: 189, column: 8, scope: !883)
!906 = !DILocation(line: 191, column: 9, scope: !883)
!907 = !DILocation(line: 191, column: 19, scope: !883)
!908 = !DILocation(line: 191, column: 24, scope: !883)
!909 = !DILocation(line: 191, column: 29, scope: !883)
!910 = !DILocation(line: 192, column: 1, scope: !883)
!911 = !DILocation(line: 191, column: 2, scope: !883)
!912 = distinct !DISubprogram(name: "is_ptr", scope: !39, file: !39, line: 881, type: !913, scopeLine: 882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!71, !13, !18}
!915 = !{!916, !917, !918, !919, !920}
!916 = !DILocalVariable(name: "fmt", arg: 1, scope: !912, file: !39, line: 881, type: !13)
!917 = !DILocalVariable(name: "n", arg: 2, scope: !912, file: !39, line: 881, type: !18)
!918 = !DILocalVariable(name: "c", scope: !912, file: !39, line: 883, type: !15)
!919 = !DILocalVariable(name: "mod", scope: !912, file: !39, line: 884, type: !71)
!920 = !DILocalVariable(name: "cnt", scope: !912, file: !39, line: 885, type: !18)
!921 = !DILocation(line: 881, column: 26, scope: !912)
!922 = !DILocation(line: 881, column: 35, scope: !912)
!923 = !DILocation(line: 883, column: 2, scope: !912)
!924 = !DILocation(line: 883, column: 7, scope: !912)
!925 = !DILocation(line: 884, column: 2, scope: !912)
!926 = !DILocation(line: 884, column: 8, scope: !912)
!927 = !DILocation(line: 885, column: 2, scope: !912)
!928 = !DILocation(line: 885, column: 6, scope: !912)
!929 = !DILocation(line: 887, column: 2, scope: !912)
!930 = !DILocation(line: 887, column: 18, scope: !912)
!931 = !DILocation(line: 887, column: 14, scope: !912)
!932 = !DILocation(line: 887, column: 12, scope: !912)
!933 = !DILocation(line: 887, column: 9, scope: !912)
!934 = !DILocation(line: 887, column: 22, scope: !912)
!935 = !DILocation(line: 888, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !39, line: 888, column: 7)
!937 = distinct !DILexicalBlock(scope: !912, file: !39, line: 887, column: 31)
!938 = !DILocation(line: 888, column: 7, scope: !937)
!939 = !DILocation(line: 889, column: 8, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !39, line: 889, column: 8)
!941 = distinct !DILexicalBlock(scope: !936, file: !39, line: 888, column: 12)
!942 = !DILocation(line: 889, column: 15, scope: !940)
!943 = !DILocation(line: 889, column: 12, scope: !940)
!944 = !DILocation(line: 889, column: 8, scope: !941)
!945 = !DILocation(line: 890, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !39, line: 890, column: 9)
!947 = distinct !DILexicalBlock(scope: !940, file: !39, line: 889, column: 18)
!948 = !DILocation(line: 890, column: 11, scope: !946)
!949 = !DILocation(line: 890, column: 9, scope: !947)
!950 = !DILocation(line: 891, column: 6, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !39, line: 890, column: 19)
!952 = !DILocation(line: 892, column: 28, scope: !953)
!953 = distinct !DILexicalBlock(scope: !946, file: !39, line: 892, column: 16)
!954 = !DILocation(line: 892, column: 16, scope: !953)
!955 = !DILocation(line: 892, column: 16, scope: !946)
!956 = !DILocation(line: 893, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !39, line: 892, column: 32)
!958 = !DILocation(line: 895, column: 4, scope: !947)
!959 = !DILocation(line: 895, column: 27, scope: !960)
!960 = distinct !DILexicalBlock(scope: !940, file: !39, line: 895, column: 15)
!961 = !DILocation(line: 895, column: 15, scope: !960)
!962 = !DILocation(line: 895, column: 15, scope: !940)
!963 = !DILocation(line: 896, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !39, line: 895, column: 31)
!965 = !DILocation(line: 897, column: 9, scope: !964)
!966 = !DILocation(line: 898, column: 4, scope: !964)
!967 = !DILocation(line: 899, column: 3, scope: !941)
!968 = !DILocation(line: 900, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !937, file: !39, line: 900, column: 7)
!970 = !DILocation(line: 900, column: 9, scope: !969)
!971 = !DILocation(line: 900, column: 7, scope: !937)
!972 = !DILocation(line: 901, column: 11, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !39, line: 900, column: 17)
!974 = !DILocation(line: 901, column: 10, scope: !973)
!975 = !DILocation(line: 901, column: 8, scope: !973)
!976 = !DILocation(line: 902, column: 3, scope: !973)
!977 = distinct !{!977, !929, !978}
!978 = !DILocation(line: 903, column: 2, scope: !912)
!979 = !DILocation(line: 905, column: 2, scope: !912)
!980 = !DILocation(line: 906, column: 1, scope: !912)
!981 = distinct !DISubprogram(name: "is_fmt_spec", scope: !39, file: !39, line: 873, type: !982, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{!71, !15}
!984 = !{!985}
!985 = !DILocalVariable(name: "c", arg: 1, scope: !981, file: !39, line: 873, type: !15)
!986 = !DILocation(line: 873, column: 31, scope: !981)
!987 = !DILocation(line: 875, column: 10, scope: !981)
!988 = !DILocation(line: 875, column: 12, scope: !981)
!989 = !DILocation(line: 875, column: 19, scope: !981)
!990 = !DILocation(line: 875, column: 23, scope: !981)
!991 = !DILocation(line: 875, column: 25, scope: !981)
!992 = !DILocation(line: 0, scope: !981)
!993 = !DILocation(line: 875, column: 2, scope: !981)
!994 = distinct !DISubprogram(name: "cbprintf_package_convert", scope: !39, file: !39, line: 908, type: !995, scopeLine: 915, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1004)
!995 = !DISubroutineType(types: !996)
!996 = !{!18, !6, !16, !997, !6, !42, !1003, !16}
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_convert_cb", file: !78, line: 313, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 32)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!18, !1001, !16, !6}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!1004 = !{!1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1023, !1024, !1025, !1026, !1027, !1033, !1036, !1037, !1038, !1040, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1056, !1059, !1060, !1061, !1062, !1063, !1064, !1066, !1069, !1070, !1071}
!1005 = !DILocalVariable(name: "in_packaged", arg: 1, scope: !994, file: !39, line: 908, type: !6)
!1006 = !DILocalVariable(name: "in_len", arg: 2, scope: !994, file: !39, line: 909, type: !16)
!1007 = !DILocalVariable(name: "cb", arg: 3, scope: !994, file: !39, line: 910, type: !997)
!1008 = !DILocalVariable(name: "ctx", arg: 4, scope: !994, file: !39, line: 911, type: !6)
!1009 = !DILocalVariable(name: "flags", arg: 5, scope: !994, file: !39, line: 912, type: !42)
!1010 = !DILocalVariable(name: "strl", arg: 6, scope: !994, file: !39, line: 913, type: !1003)
!1011 = !DILocalVariable(name: "strl_len", arg: 7, scope: !994, file: !39, line: 914, type: !16)
!1012 = !DILocalVariable(name: "buf", scope: !994, file: !39, line: 918, type: !26)
!1013 = !DILocalVariable(name: "buf32", scope: !994, file: !39, line: 919, type: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!1015 = !DILocalVariable(name: "args_size", scope: !994, file: !39, line: 920, type: !5)
!1016 = !DILocalVariable(name: "ros_nbr", scope: !994, file: !39, line: 920, type: !5)
!1017 = !DILocalVariable(name: "rws_nbr", scope: !994, file: !39, line: 920, type: !5)
!1018 = !DILocalVariable(name: "fmt_present", scope: !994, file: !39, line: 921, type: !71)
!1019 = !DILocalVariable(name: "rw_cpy", scope: !994, file: !39, line: 922, type: !71)
!1020 = !DILocalVariable(name: "ro_cpy", scope: !994, file: !39, line: 923, type: !71)
!1021 = !DILocalVariable(name: "in_desc", scope: !994, file: !39, line: 924, type: !1022)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!1023 = !DILocalVariable(name: "out_len", scope: !994, file: !39, line: 960, type: !18)
!1024 = !DILocalVariable(name: "fmt", scope: !994, file: !39, line: 965, type: !13)
!1025 = !DILocalVariable(name: "str_pos", scope: !994, file: !39, line: 966, type: !26)
!1026 = !DILocalVariable(name: "strl_cnt", scope: !994, file: !39, line: 967, type: !16)
!1027 = !DILocalVariable(name: "i", scope: !1028, file: !39, line: 973, type: !5)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !39, line: 973, column: 4)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !39, line: 972, column: 15)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !39, line: 972, column: 7)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !39, line: 970, column: 15)
!1032 = distinct !DILexicalBlock(scope: !994, file: !39, line: 970, column: 6)
!1033 = !DILocalVariable(name: "str", scope: !1034, file: !39, line: 974, type: !13)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !39, line: 973, column: 47)
!1035 = distinct !DILexicalBlock(scope: !1028, file: !39, line: 973, column: 4)
!1036 = !DILocalVariable(name: "len", scope: !1034, file: !39, line: 975, type: !18)
!1037 = !DILocalVariable(name: "drop_ro_str_pos", scope: !1031, file: !39, line: 990, type: !71)
!1038 = !DILocalVariable(name: "i", scope: !1039, file: !39, line: 995, type: !5)
!1039 = distinct !DILexicalBlock(scope: !1031, file: !39, line: 995, column: 3)
!1040 = !DILocalVariable(name: "arg_idx", scope: !1041, file: !39, line: 996, type: !27)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !39, line: 995, column: 46)
!1042 = distinct !DILexicalBlock(scope: !1039, file: !39, line: 995, column: 3)
!1043 = !DILocalVariable(name: "arg_pos", scope: !1041, file: !39, line: 997, type: !27)
!1044 = !DILocalVariable(name: "str", scope: !1041, file: !39, line: 998, type: !13)
!1045 = !DILocalVariable(name: "is_ro", scope: !1041, file: !39, line: 999, type: !71)
!1046 = !DILocalVariable(name: "len", scope: !1041, file: !39, line: 1000, type: !18)
!1047 = !DILocalVariable(name: "out_desc", scope: !994, file: !39, line: 1038, type: !81)
!1048 = !DILocalVariable(name: "cpy_str_pos", scope: !994, file: !39, line: 1040, type: !60)
!1049 = !DILocalVariable(name: "keep_str_pos", scope: !994, file: !39, line: 1042, type: !60)
!1050 = !DILocalVariable(name: "scpy_cnt", scope: !994, file: !39, line: 1043, type: !27)
!1051 = !DILocalVariable(name: "keep_cnt", scope: !994, file: !39, line: 1044, type: !27)
!1052 = !DILocalVariable(name: "dst", scope: !994, file: !39, line: 1045, type: !26)
!1053 = !DILocalVariable(name: "rv", scope: !994, file: !39, line: 1046, type: !18)
!1054 = !DILocalVariable(name: "i", scope: !1055, file: !39, line: 1074, type: !5)
!1055 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1074, column: 2)
!1056 = !DILocalVariable(name: "arg_idx", scope: !1057, file: !39, line: 1075, type: !27)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !39, line: 1074, column: 45)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !39, line: 1074, column: 2)
!1059 = !DILocalVariable(name: "arg_pos", scope: !1057, file: !39, line: 1076, type: !27)
!1060 = !DILocalVariable(name: "str", scope: !1057, file: !39, line: 1077, type: !13)
!1061 = !DILocalVariable(name: "is_ro", scope: !1057, file: !39, line: 1078, type: !71)
!1062 = !DILocalVariable(name: "in_desc_backup", scope: !994, file: !39, line: 1114, type: !81)
!1063 = !DILocalVariable(name: "strs_len", scope: !994, file: !39, line: 1134, type: !16)
!1064 = !DILocalVariable(name: "i", scope: !1065, file: !39, line: 1143, type: !5)
!1065 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1143, column: 2)
!1066 = !DILocalVariable(name: "loc", scope: !1067, file: !39, line: 1144, type: !27)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !39, line: 1143, column: 46)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !39, line: 1143, column: 2)
!1069 = !DILocalVariable(name: "str", scope: !1067, file: !39, line: 1145, type: !13)
!1070 = !DILocalVariable(name: "str_len", scope: !1067, file: !39, line: 1146, type: !29)
!1071 = !DILabel(scope: !1072, name: "calculate_string_length", file: !39, line: 1021)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !39, line: 1020, column: 37)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !39, line: 1020, column: 15)
!1074 = distinct !DILexicalBlock(scope: !1041, file: !39, line: 1014, column: 8)
!1075 = !DILocation(line: 908, column: 36, scope: !994)
!1076 = !DILocation(line: 909, column: 16, scope: !994)
!1077 = !DILocation(line: 910, column: 29, scope: !994)
!1078 = !DILocation(line: 911, column: 15, scope: !994)
!1079 = !DILocation(line: 912, column: 18, scope: !994)
!1080 = !DILocation(line: 913, column: 19, scope: !994)
!1081 = !DILocation(line: 914, column: 16, scope: !994)
!1082 = !DILocation(line: 918, column: 2, scope: !994)
!1083 = !DILocation(line: 918, column: 11, scope: !994)
!1084 = !DILocation(line: 918, column: 17, scope: !994)
!1085 = !DILocation(line: 919, column: 2, scope: !994)
!1086 = !DILocation(line: 919, column: 12, scope: !994)
!1087 = !DILocation(line: 919, column: 20, scope: !994)
!1088 = !DILocation(line: 920, column: 2, scope: !994)
!1089 = !DILocation(line: 920, column: 15, scope: !994)
!1090 = !DILocation(line: 920, column: 26, scope: !994)
!1091 = !DILocation(line: 920, column: 35, scope: !994)
!1092 = !DILocation(line: 921, column: 2, scope: !994)
!1093 = !DILocation(line: 921, column: 8, scope: !994)
!1094 = !DILocation(line: 921, column: 22, scope: !994)
!1095 = !DILocation(line: 921, column: 28, scope: !994)
!1096 = !DILocation(line: 922, column: 2, scope: !994)
!1097 = !DILocation(line: 922, column: 8, scope: !994)
!1098 = !DILocation(line: 923, column: 2, scope: !994)
!1099 = !DILocation(line: 923, column: 8, scope: !994)
!1100 = !DILocation(line: 924, column: 2, scope: !994)
!1101 = !DILocation(line: 924, column: 32, scope: !994)
!1102 = !DILocation(line: 924, column: 42, scope: !994)
!1103 = !DILocation(line: 926, column: 11, scope: !994)
!1104 = !DILocation(line: 926, column: 18, scope: !994)
!1105 = !DILocation(line: 926, column: 25, scope: !994)
!1106 = !DILocation(line: 926, column: 50, scope: !994)
!1107 = !DILocation(line: 926, column: 34, scope: !994)
!1108 = !DILocation(line: 926, column: 9, scope: !994)
!1109 = !DILocation(line: 931, column: 12, scope: !994)
!1110 = !DILocation(line: 931, column: 21, scope: !994)
!1111 = !DILocation(line: 931, column: 10, scope: !994)
!1112 = !DILocation(line: 932, column: 11, scope: !994)
!1113 = !DILocation(line: 932, column: 19, scope: !994)
!1114 = !DILocation(line: 933, column: 4, scope: !994)
!1115 = !DILocation(line: 933, column: 10, scope: !994)
!1116 = !DILocation(line: 933, column: 26, scope: !994)
!1117 = !DILocation(line: 0, scope: !994)
!1118 = !DILocation(line: 932, column: 9, scope: !994)
!1119 = !DILocation(line: 938, column: 12, scope: !994)
!1120 = !DILocation(line: 938, column: 21, scope: !994)
!1121 = !DILocation(line: 938, column: 10, scope: !994)
!1122 = !DILocation(line: 939, column: 11, scope: !994)
!1123 = !DILocation(line: 939, column: 19, scope: !994)
!1124 = !DILocation(line: 939, column: 23, scope: !994)
!1125 = !DILocation(line: 940, column: 5, scope: !994)
!1126 = !DILocation(line: 940, column: 11, scope: !994)
!1127 = !DILocation(line: 940, column: 27, scope: !994)
!1128 = !DILocation(line: 939, column: 9, scope: !994)
!1129 = !DILocation(line: 946, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !994, file: !39, line: 946, column: 6)
!1131 = !DILocation(line: 946, column: 14, scope: !1130)
!1132 = !DILocation(line: 946, column: 18, scope: !1130)
!1133 = !DILocation(line: 946, column: 6, scope: !994)
!1134 = !DILocation(line: 947, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !39, line: 947, column: 7)
!1136 = distinct !DILexicalBlock(scope: !1130, file: !39, line: 946, column: 26)
!1137 = !DILocation(line: 947, column: 7, scope: !1136)
!1138 = !DILocation(line: 948, column: 4, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !39, line: 947, column: 11)
!1140 = !DILocation(line: 948, column: 7, scope: !1139)
!1141 = !DILocation(line: 948, column: 20, scope: !1139)
!1142 = !DILocation(line: 948, column: 28, scope: !1139)
!1143 = !DILocation(line: 949, column: 3, scope: !1139)
!1144 = !DILocation(line: 951, column: 10, scope: !1136)
!1145 = !DILocation(line: 951, column: 3, scope: !1136)
!1146 = !DILocation(line: 958, column: 14, scope: !994)
!1147 = !DILocation(line: 958, column: 23, scope: !994)
!1148 = !DILocation(line: 958, column: 27, scope: !994)
!1149 = !DILocation(line: 958, column: 12, scope: !994)
!1150 = !DILocation(line: 960, column: 2, scope: !994)
!1151 = !DILocation(line: 960, column: 6, scope: !994)
!1152 = !DILocation(line: 965, column: 2, scope: !994)
!1153 = !DILocation(line: 965, column: 14, scope: !994)
!1154 = !DILocation(line: 965, column: 37, scope: !994)
!1155 = !DILocation(line: 965, column: 41, scope: !994)
!1156 = !DILocation(line: 965, column: 20, scope: !994)
!1157 = !DILocation(line: 966, column: 2, scope: !994)
!1158 = !DILocation(line: 966, column: 11, scope: !994)
!1159 = !DILocation(line: 966, column: 22, scope: !994)
!1160 = !DILocation(line: 966, column: 26, scope: !994)
!1161 = !DILocation(line: 967, column: 2, scope: !994)
!1162 = !DILocation(line: 967, column: 9, scope: !994)
!1163 = !DILocation(line: 970, column: 6, scope: !1032)
!1164 = !DILocation(line: 970, column: 9, scope: !1032)
!1165 = !DILocation(line: 970, column: 6, scope: !994)
!1166 = !DILocation(line: 971, column: 18, scope: !1031)
!1167 = !DILocation(line: 971, column: 11, scope: !1031)
!1168 = !DILocation(line: 972, column: 7, scope: !1030)
!1169 = !DILocation(line: 972, column: 7, scope: !1031)
!1170 = !DILocation(line: 973, column: 9, scope: !1028)
!1171 = !DILocation(line: 973, column: 22, scope: !1028)
!1172 = !DILocation(line: 973, column: 29, scope: !1035)
!1173 = !DILocation(line: 973, column: 33, scope: !1035)
!1174 = !DILocation(line: 973, column: 31, scope: !1035)
!1175 = !DILocation(line: 973, column: 4, scope: !1028)
!1176 = !DILocation(line: 973, column: 4, scope: !1035)
!1177 = !DILocation(line: 974, column: 5, scope: !1034)
!1178 = !DILocation(line: 974, column: 17, scope: !1034)
!1179 = !DILocation(line: 974, column: 40, scope: !1034)
!1180 = !DILocation(line: 974, column: 47, scope: !1034)
!1181 = !DILocation(line: 974, column: 46, scope: !1034)
!1182 = !DILocation(line: 974, column: 23, scope: !1034)
!1183 = !DILocation(line: 975, column: 5, scope: !1034)
!1184 = !DILocation(line: 975, column: 9, scope: !1034)
!1185 = !DILocation(line: 975, column: 29, scope: !1034)
!1186 = !DILocation(line: 975, column: 36, scope: !1034)
!1187 = !DILocation(line: 975, column: 15, scope: !1034)
!1188 = !DILocation(line: 978, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1034, file: !39, line: 978, column: 9)
!1190 = !DILocation(line: 978, column: 14, scope: !1189)
!1191 = !DILocation(line: 978, column: 17, scope: !1189)
!1192 = !DILocation(line: 978, column: 28, scope: !1189)
!1193 = !DILocation(line: 978, column: 26, scope: !1189)
!1194 = !DILocation(line: 978, column: 9, scope: !1034)
!1195 = !DILocation(line: 979, column: 35, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !39, line: 978, column: 38)
!1197 = !DILocation(line: 979, column: 25, scope: !1196)
!1198 = !DILocation(line: 979, column: 6, scope: !1196)
!1199 = !DILocation(line: 979, column: 19, scope: !1196)
!1200 = !DILocation(line: 979, column: 23, scope: !1196)
!1201 = !DILocation(line: 980, column: 5, scope: !1196)
!1202 = !DILocation(line: 981, column: 16, scope: !1034)
!1203 = !DILocation(line: 981, column: 13, scope: !1034)
!1204 = !DILocation(line: 982, column: 12, scope: !1034)
!1205 = !DILocation(line: 983, column: 4, scope: !1035)
!1206 = !DILocation(line: 983, column: 4, scope: !1034)
!1207 = !DILocation(line: 973, column: 43, scope: !1035)
!1208 = distinct !{!1208, !1175, !1209}
!1209 = !DILocation(line: 983, column: 4, scope: !1028)
!1210 = !DILocation(line: 984, column: 3, scope: !1029)
!1211 = !DILocation(line: 985, column: 8, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !39, line: 985, column: 8)
!1213 = distinct !DILexicalBlock(scope: !1030, file: !39, line: 984, column: 10)
!1214 = !DILocation(line: 985, column: 16, scope: !1212)
!1215 = !DILocation(line: 985, column: 19, scope: !1212)
!1216 = !DILocation(line: 985, column: 25, scope: !1212)
!1217 = !DILocation(line: 985, column: 8, scope: !1213)
!1218 = !DILocation(line: 986, column: 16, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !39, line: 985, column: 41)
!1220 = !DILocation(line: 986, column: 13, scope: !1219)
!1221 = !DILocation(line: 987, column: 4, scope: !1219)
!1222 = !DILocation(line: 990, column: 3, scope: !1031)
!1223 = !DILocation(line: 990, column: 9, scope: !1031)
!1224 = !DILocation(line: 990, column: 29, scope: !1031)
!1225 = !DILocation(line: 990, column: 35, scope: !1031)
!1226 = !DILocation(line: 990, column: 27, scope: !1031)
!1227 = !DILocation(line: 995, column: 8, scope: !1039)
!1228 = !DILocation(line: 995, column: 21, scope: !1039)
!1229 = !DILocation(line: 995, column: 28, scope: !1042)
!1230 = !DILocation(line: 995, column: 32, scope: !1042)
!1231 = !DILocation(line: 995, column: 30, scope: !1042)
!1232 = !DILocation(line: 995, column: 3, scope: !1039)
!1233 = !DILocation(line: 995, column: 3, scope: !1042)
!1234 = !DILocation(line: 996, column: 4, scope: !1041)
!1235 = !DILocation(line: 996, column: 12, scope: !1041)
!1236 = !DILocation(line: 996, column: 30, scope: !1041)
!1237 = !DILocation(line: 996, column: 22, scope: !1041)
!1238 = !DILocation(line: 997, column: 4, scope: !1041)
!1239 = !DILocation(line: 997, column: 12, scope: !1041)
!1240 = !DILocation(line: 997, column: 30, scope: !1041)
!1241 = !DILocation(line: 997, column: 22, scope: !1041)
!1242 = !DILocation(line: 998, column: 4, scope: !1041)
!1243 = !DILocation(line: 998, column: 16, scope: !1041)
!1244 = !DILocation(line: 998, column: 39, scope: !1041)
!1245 = !DILocation(line: 998, column: 45, scope: !1041)
!1246 = !DILocation(line: 998, column: 22, scope: !1041)
!1247 = !DILocation(line: 999, column: 4, scope: !1041)
!1248 = !DILocation(line: 999, column: 10, scope: !1041)
!1249 = !DILocation(line: 999, column: 32, scope: !1041)
!1250 = !DILocation(line: 999, column: 18, scope: !1041)
!1251 = !DILocation(line: 1000, column: 4, scope: !1041)
!1252 = !DILocation(line: 1000, column: 8, scope: !1041)
!1253 = !DILocation(line: 1002, column: 8, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1041, file: !39, line: 1002, column: 8)
!1255 = !DILocation(line: 1002, column: 20, scope: !1254)
!1256 = !DILocation(line: 1002, column: 30, scope: !1254)
!1257 = !DILocation(line: 1002, column: 35, scope: !1254)
!1258 = !DILocation(line: 1002, column: 23, scope: !1254)
!1259 = !DILocation(line: 1002, column: 8, scope: !1041)
!1260 = !DILocation(line: 1003, column: 5, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1254, file: !39, line: 1002, column: 45)
!1262 = !DILocation(line: 1003, column: 91, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !39, line: 1003, column: 89)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !39, line: 1003, column: 14)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !39, line: 1003, column: 8)
!1266 = !DILocation(line: 1003, column: 553, scope: !1265)
!1267 = !DILocation(line: 1010, column: 13, scope: !1261)
!1268 = !DILocation(line: 1011, column: 5, scope: !1261)
!1269 = !DILocation(line: 1014, column: 8, scope: !1074)
!1270 = !DILocation(line: 1014, column: 8, scope: !1041)
!1271 = !DILocation(line: 1015, column: 9, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !39, line: 1015, column: 9)
!1273 = distinct !DILexicalBlock(scope: !1074, file: !39, line: 1014, column: 15)
!1274 = !DILocation(line: 1015, column: 15, scope: !1272)
!1275 = !DILocation(line: 1015, column: 9, scope: !1273)
!1276 = !DILocation(line: 1016, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !39, line: 1015, column: 31)
!1278 = !DILocation(line: 1018, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !39, line: 1017, column: 12)
!1280 = !DILocation(line: 1018, column: 14, scope: !1279)
!1281 = !DILocation(line: 1020, column: 4, scope: !1273)
!1282 = !DILocation(line: 1020, column: 15, scope: !1073)
!1283 = !DILocation(line: 1020, column: 21, scope: !1073)
!1284 = !DILocation(line: 1020, column: 15, scope: !1074)
!1285 = !DILocation(line: 1020, column: 37, scope: !1073)
!1286 = !DILocation(line: 1021, column: 1, scope: !1072)
!1287 = !DILocation(line: 1022, column: 25, scope: !1072)
!1288 = !DILocation(line: 1022, column: 32, scope: !1072)
!1289 = !DILocation(line: 1022, column: 11, scope: !1072)
!1290 = !DILocation(line: 1022, column: 9, scope: !1072)
!1291 = !DILocation(line: 1025, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1072, file: !39, line: 1025, column: 9)
!1293 = !DILocation(line: 1025, column: 14, scope: !1292)
!1294 = !DILocation(line: 1025, column: 17, scope: !1292)
!1295 = !DILocation(line: 1025, column: 28, scope: !1292)
!1296 = !DILocation(line: 1025, column: 26, scope: !1292)
!1297 = !DILocation(line: 1025, column: 9, scope: !1072)
!1298 = !DILocation(line: 1026, column: 35, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1292, file: !39, line: 1025, column: 38)
!1300 = !DILocation(line: 1026, column: 25, scope: !1299)
!1301 = !DILocation(line: 1026, column: 6, scope: !1299)
!1302 = !DILocation(line: 1026, column: 19, scope: !1299)
!1303 = !DILocation(line: 1026, column: 23, scope: !1299)
!1304 = !DILocation(line: 1027, column: 5, scope: !1299)
!1305 = !DILocation(line: 1031, column: 17, scope: !1072)
!1306 = !DILocation(line: 1031, column: 21, scope: !1072)
!1307 = !DILocation(line: 1031, column: 13, scope: !1072)
!1308 = !DILocation(line: 1032, column: 4, scope: !1072)
!1309 = !DILocation(line: 1033, column: 3, scope: !1042)
!1310 = !DILocation(line: 1033, column: 3, scope: !1041)
!1311 = !DILocation(line: 995, column: 42, scope: !1042)
!1312 = distinct !{!1312, !1232, !1313}
!1313 = !DILocation(line: 1033, column: 3, scope: !1039)
!1314 = !DILocation(line: 1035, column: 10, scope: !1031)
!1315 = !DILocation(line: 1035, column: 3, scope: !1031)
!1316 = !DILocation(line: 1036, column: 2, scope: !1032)
!1317 = !DILocation(line: 1038, column: 31, scope: !994)
!1318 = !DILocation(line: 1040, column: 10, scope: !994)
!1319 = !DILocation(line: 1042, column: 10, scope: !994)
!1320 = !DILocation(line: 1043, column: 10, scope: !994)
!1321 = !DILocation(line: 1044, column: 10, scope: !994)
!1322 = !DILocation(line: 1045, column: 11, scope: !994)
!1323 = !DILocation(line: 1046, column: 6, scope: !994)
!1324 = !DILocation(line: 1052, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1052, column: 6)
!1326 = !DILocation(line: 1052, column: 6, scope: !994)
!1327 = !DILocation(line: 1053, column: 14, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !39, line: 1052, column: 14)
!1329 = !DILocation(line: 1053, column: 12, scope: !1328)
!1330 = !DILocation(line: 1054, column: 12, scope: !1328)
!1331 = !DILocation(line: 1055, column: 9, scope: !1328)
!1332 = !DILocation(line: 1055, column: 7, scope: !1328)
!1333 = !DILocation(line: 1056, column: 2, scope: !1328)
!1334 = !DILocation(line: 1056, column: 13, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1325, file: !39, line: 1056, column: 13)
!1336 = !DILocation(line: 1056, column: 21, scope: !1335)
!1337 = !DILocation(line: 1056, column: 24, scope: !1335)
!1338 = !DILocation(line: 1056, column: 30, scope: !1335)
!1339 = !DILocation(line: 1056, column: 13, scope: !1325)
!1340 = !DILocation(line: 1057, column: 12, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !39, line: 1056, column: 46)
!1342 = !DILocation(line: 1058, column: 14, scope: !1341)
!1343 = !DILocation(line: 1058, column: 12, scope: !1341)
!1344 = !DILocation(line: 1059, column: 9, scope: !1341)
!1345 = !DILocation(line: 1059, column: 7, scope: !1341)
!1346 = !DILocation(line: 1060, column: 2, scope: !1341)
!1347 = !DILocation(line: 1061, column: 12, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1335, file: !39, line: 1060, column: 9)
!1349 = !DILocation(line: 1062, column: 12, scope: !1348)
!1350 = !DILocation(line: 1063, column: 7, scope: !1348)
!1351 = !DILocation(line: 1065, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1065, column: 6)
!1353 = !DILocation(line: 1065, column: 6, scope: !994)
!1354 = !DILocation(line: 1066, column: 10, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !39, line: 1065, column: 11)
!1356 = !DILocation(line: 1066, column: 15, scope: !1355)
!1357 = !DILocation(line: 1066, column: 24, scope: !1355)
!1358 = !DILocation(line: 1066, column: 3, scope: !1355)
!1359 = !DILocation(line: 1067, column: 2, scope: !1355)
!1360 = !DILocation(line: 1068, column: 13, scope: !994)
!1361 = !DILocation(line: 1068, column: 10, scope: !994)
!1362 = !DILocation(line: 1074, column: 7, scope: !1055)
!1363 = !DILocation(line: 1074, column: 20, scope: !1055)
!1364 = !DILocation(line: 1074, column: 27, scope: !1058)
!1365 = !DILocation(line: 1074, column: 31, scope: !1058)
!1366 = !DILocation(line: 1074, column: 29, scope: !1058)
!1367 = !DILocation(line: 1074, column: 2, scope: !1055)
!1368 = !DILocation(line: 1074, column: 2, scope: !1058)
!1369 = !DILocation(line: 1075, column: 3, scope: !1057)
!1370 = !DILocation(line: 1075, column: 11, scope: !1057)
!1371 = !DILocation(line: 1075, column: 29, scope: !1057)
!1372 = !DILocation(line: 1075, column: 21, scope: !1057)
!1373 = !DILocation(line: 1076, column: 3, scope: !1057)
!1374 = !DILocation(line: 1076, column: 11, scope: !1057)
!1375 = !DILocation(line: 1076, column: 29, scope: !1057)
!1376 = !DILocation(line: 1076, column: 21, scope: !1057)
!1377 = !DILocation(line: 1077, column: 3, scope: !1057)
!1378 = !DILocation(line: 1077, column: 15, scope: !1057)
!1379 = !DILocation(line: 1077, column: 38, scope: !1057)
!1380 = !DILocation(line: 1077, column: 44, scope: !1057)
!1381 = !DILocation(line: 1077, column: 21, scope: !1057)
!1382 = !DILocation(line: 1078, column: 3, scope: !1057)
!1383 = !DILocation(line: 1078, column: 9, scope: !1057)
!1384 = !DILocation(line: 1078, column: 31, scope: !1057)
!1385 = !DILocation(line: 1078, column: 17, scope: !1057)
!1386 = !DILocation(line: 1080, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1057, file: !39, line: 1080, column: 7)
!1388 = !DILocation(line: 1080, column: 19, scope: !1387)
!1389 = !DILocation(line: 1080, column: 29, scope: !1387)
!1390 = !DILocation(line: 1080, column: 34, scope: !1387)
!1391 = !DILocation(line: 1080, column: 22, scope: !1387)
!1392 = !DILocation(line: 1080, column: 7, scope: !1057)
!1393 = !DILocation(line: 1081, column: 4, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1387, file: !39, line: 1080, column: 44)
!1395 = !DILocation(line: 1084, column: 7, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1057, file: !39, line: 1084, column: 7)
!1397 = !DILocation(line: 1084, column: 7, scope: !1057)
!1398 = !DILocation(line: 1085, column: 8, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !39, line: 1085, column: 8)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !39, line: 1084, column: 14)
!1401 = !DILocation(line: 1085, column: 14, scope: !1399)
!1402 = !DILocation(line: 1085, column: 8, scope: !1400)
!1403 = !DILocation(line: 1087, column: 31, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !39, line: 1085, column: 30)
!1405 = !DILocation(line: 1087, column: 25, scope: !1404)
!1406 = !DILocation(line: 1087, column: 5, scope: !1404)
!1407 = !DILocation(line: 1087, column: 29, scope: !1404)
!1408 = !DILocation(line: 1088, column: 4, scope: !1404)
!1409 = !DILocation(line: 1088, column: 15, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1399, file: !39, line: 1088, column: 15)
!1411 = !DILocation(line: 1088, column: 21, scope: !1410)
!1412 = !DILocation(line: 1088, column: 15, scope: !1399)
!1413 = !DILocation(line: 1090, column: 32, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !39, line: 1088, column: 37)
!1415 = !DILocation(line: 1090, column: 26, scope: !1414)
!1416 = !DILocation(line: 1090, column: 5, scope: !1414)
!1417 = !DILocation(line: 1090, column: 30, scope: !1414)
!1418 = !DILocation(line: 1091, column: 4, scope: !1414)
!1419 = !DILocation(line: 1094, column: 3, scope: !1400)
!1420 = !DILocation(line: 1095, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !39, line: 1095, column: 8)
!1422 = distinct !DILexicalBlock(scope: !1396, file: !39, line: 1094, column: 10)
!1423 = !DILocation(line: 1095, column: 14, scope: !1421)
!1424 = !DILocation(line: 1095, column: 8, scope: !1422)
!1425 = !DILocation(line: 1097, column: 31, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !39, line: 1095, column: 30)
!1427 = !DILocation(line: 1097, column: 25, scope: !1426)
!1428 = !DILocation(line: 1097, column: 5, scope: !1426)
!1429 = !DILocation(line: 1097, column: 29, scope: !1426)
!1430 = !DILocation(line: 1098, column: 4, scope: !1426)
!1431 = !DILocation(line: 1100, column: 32, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1421, file: !39, line: 1098, column: 11)
!1433 = !DILocation(line: 1100, column: 26, scope: !1432)
!1434 = !DILocation(line: 1100, column: 5, scope: !1432)
!1435 = !DILocation(line: 1100, column: 30, scope: !1432)
!1436 = !DILocation(line: 1101, column: 32, scope: !1432)
!1437 = !DILocation(line: 1101, column: 26, scope: !1432)
!1438 = !DILocation(line: 1101, column: 5, scope: !1432)
!1439 = !DILocation(line: 1101, column: 30, scope: !1432)
!1440 = !DILocation(line: 1104, column: 2, scope: !1058)
!1441 = !DILocation(line: 1104, column: 2, scope: !1057)
!1442 = !DILocation(line: 1074, column: 41, scope: !1058)
!1443 = distinct !{!1443, !1367, !1444}
!1444 = !DILocation(line: 1104, column: 2, scope: !1055)
!1445 = !DILocation(line: 1107, column: 17, scope: !994)
!1446 = !DILocation(line: 1107, column: 26, scope: !994)
!1447 = !DILocation(line: 1107, column: 11, scope: !994)
!1448 = !DILocation(line: 1107, column: 15, scope: !994)
!1449 = !DILocation(line: 1108, column: 21, scope: !994)
!1450 = !DILocation(line: 1108, column: 30, scope: !994)
!1451 = !DILocation(line: 1108, column: 40, scope: !994)
!1452 = !DILocation(line: 1108, column: 38, scope: !994)
!1453 = !DILocation(line: 1108, column: 11, scope: !994)
!1454 = !DILocation(line: 1108, column: 19, scope: !994)
!1455 = !DILocation(line: 1109, column: 25, scope: !994)
!1456 = !DILocation(line: 1109, column: 31, scope: !994)
!1457 = !DILocation(line: 1109, column: 24, scope: !994)
!1458 = !DILocation(line: 1109, column: 54, scope: !994)
!1459 = !DILocation(line: 1109, column: 63, scope: !994)
!1460 = !DILocation(line: 1109, column: 11, scope: !994)
!1461 = !DILocation(line: 1109, column: 22, scope: !994)
!1462 = !DILocation(line: 1110, column: 25, scope: !994)
!1463 = !DILocation(line: 1110, column: 31, scope: !994)
!1464 = !DILocation(line: 1110, column: 24, scope: !994)
!1465 = !DILocation(line: 1111, column: 6, scope: !994)
!1466 = !DILocation(line: 1111, column: 12, scope: !994)
!1467 = !DILocation(line: 1111, column: 5, scope: !994)
!1468 = !DILocation(line: 1111, column: 30, scope: !994)
!1469 = !DILocation(line: 1110, column: 11, scope: !994)
!1470 = !DILocation(line: 1110, column: 22, scope: !994)
!1471 = !DILocation(line: 1114, column: 31, scope: !994)
!1472 = !DILocation(line: 1114, column: 49, scope: !994)
!1473 = !DILocation(line: 1114, column: 48, scope: !994)
!1474 = !DILocation(line: 1115, column: 3, scope: !994)
!1475 = !DILocation(line: 1115, column: 13, scope: !994)
!1476 = !DILocation(line: 1118, column: 7, scope: !994)
!1477 = !DILocation(line: 1118, column: 10, scope: !994)
!1478 = !DILocation(line: 1118, column: 23, scope: !994)
!1479 = !DILocation(line: 1118, column: 34, scope: !994)
!1480 = !DILocation(line: 1118, column: 5, scope: !994)
!1481 = !DILocation(line: 1119, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1119, column: 6)
!1483 = !DILocation(line: 1119, column: 9, scope: !1482)
!1484 = !DILocation(line: 1119, column: 6, scope: !994)
!1485 = !DILocation(line: 1120, column: 10, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !39, line: 1119, column: 14)
!1487 = !DILocation(line: 1120, column: 3, scope: !1486)
!1488 = !DILocation(line: 1122, column: 12, scope: !994)
!1489 = !DILocation(line: 1122, column: 10, scope: !994)
!1490 = !DILocation(line: 1124, column: 3, scope: !994)
!1491 = !DILocation(line: 1124, column: 13, scope: !994)
!1492 = !DILocation(line: 1127, column: 7, scope: !994)
!1493 = !DILocation(line: 1127, column: 10, scope: !994)
!1494 = !DILocation(line: 1127, column: 24, scope: !994)
!1495 = !DILocation(line: 1127, column: 34, scope: !994)
!1496 = !DILocation(line: 1127, column: 5, scope: !994)
!1497 = !DILocation(line: 1128, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1128, column: 6)
!1499 = !DILocation(line: 1128, column: 9, scope: !1498)
!1500 = !DILocation(line: 1128, column: 6, scope: !994)
!1501 = !DILocation(line: 1129, column: 10, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !39, line: 1128, column: 14)
!1503 = !DILocation(line: 1129, column: 3, scope: !1502)
!1504 = !DILocation(line: 1131, column: 13, scope: !994)
!1505 = !DILocation(line: 1131, column: 10, scope: !994)
!1506 = !DILocation(line: 1134, column: 9, scope: !994)
!1507 = !DILocation(line: 1134, column: 20, scope: !994)
!1508 = !DILocation(line: 1134, column: 30, scope: !994)
!1509 = !DILocation(line: 1134, column: 42, scope: !994)
!1510 = !DILocation(line: 1134, column: 40, scope: !994)
!1511 = !DILocation(line: 1134, column: 56, scope: !994)
!1512 = !DILocation(line: 1134, column: 54, scope: !994)
!1513 = !DILocation(line: 1134, column: 50, scope: !994)
!1514 = !DILocation(line: 1134, column: 27, scope: !994)
!1515 = !DILocation(line: 1136, column: 7, scope: !994)
!1516 = !DILocation(line: 1136, column: 10, scope: !994)
!1517 = !DILocation(line: 1136, column: 19, scope: !994)
!1518 = !DILocation(line: 1136, column: 29, scope: !994)
!1519 = !DILocation(line: 1136, column: 5, scope: !994)
!1520 = !DILocation(line: 1137, column: 6, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !994, file: !39, line: 1137, column: 6)
!1522 = !DILocation(line: 1137, column: 9, scope: !1521)
!1523 = !DILocation(line: 1137, column: 6, scope: !994)
!1524 = !DILocation(line: 1138, column: 10, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !39, line: 1137, column: 14)
!1526 = !DILocation(line: 1138, column: 3, scope: !1525)
!1527 = !DILocation(line: 1140, column: 13, scope: !994)
!1528 = !DILocation(line: 1140, column: 10, scope: !994)
!1529 = !DILocation(line: 1143, column: 7, scope: !1065)
!1530 = !DILocation(line: 1143, column: 20, scope: !1065)
!1531 = !DILocation(line: 1143, column: 27, scope: !1068)
!1532 = !DILocation(line: 1143, column: 31, scope: !1068)
!1533 = !DILocation(line: 1143, column: 29, scope: !1068)
!1534 = !DILocation(line: 1143, column: 2, scope: !1065)
!1535 = !DILocation(line: 1144, column: 3, scope: !1067)
!1536 = !DILocation(line: 1144, column: 11, scope: !1067)
!1537 = !DILocation(line: 1144, column: 29, scope: !1067)
!1538 = !DILocation(line: 1144, column: 17, scope: !1067)
!1539 = !DILocation(line: 1145, column: 3, scope: !1067)
!1540 = !DILocation(line: 1145, column: 15, scope: !1067)
!1541 = !DILocation(line: 1145, column: 38, scope: !1067)
!1542 = !DILocation(line: 1145, column: 44, scope: !1067)
!1543 = !DILocation(line: 1145, column: 21, scope: !1067)
!1544 = !DILocation(line: 1146, column: 3, scope: !1067)
!1545 = !DILocation(line: 1146, column: 12, scope: !1067)
!1546 = !DILocation(line: 1146, column: 22, scope: !1067)
!1547 = !DILocation(line: 1146, column: 29, scope: !1067)
!1548 = !DILocation(line: 1146, column: 34, scope: !1067)
!1549 = !DILocation(line: 1148, column: 8, scope: !1067)
!1550 = !DILocation(line: 1148, column: 20, scope: !1067)
!1551 = !DILocation(line: 1148, column: 6, scope: !1067)
!1552 = !DILocation(line: 1149, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1067, file: !39, line: 1149, column: 7)
!1554 = !DILocation(line: 1149, column: 10, scope: !1553)
!1555 = !DILocation(line: 1149, column: 7, scope: !1067)
!1556 = !DILocation(line: 1150, column: 11, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !39, line: 1149, column: 15)
!1558 = !DILocation(line: 1150, column: 4, scope: !1557)
!1559 = !DILocation(line: 1152, column: 14, scope: !1067)
!1560 = !DILocation(line: 1152, column: 11, scope: !1067)
!1561 = !DILocation(line: 1154, column: 22, scope: !1067)
!1562 = !DILocation(line: 1154, column: 26, scope: !1067)
!1563 = !DILocation(line: 1154, column: 31, scope: !1067)
!1564 = !DILocation(line: 1154, column: 36, scope: !1067)
!1565 = !DILocation(line: 1154, column: 8, scope: !1067)
!1566 = !DILocation(line: 1154, column: 6, scope: !1067)
!1567 = !DILocation(line: 1155, column: 7, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1067, file: !39, line: 1155, column: 7)
!1569 = !DILocation(line: 1155, column: 10, scope: !1568)
!1570 = !DILocation(line: 1155, column: 7, scope: !1067)
!1571 = !DILocation(line: 1156, column: 11, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !39, line: 1155, column: 15)
!1573 = !DILocation(line: 1156, column: 4, scope: !1572)
!1574 = !DILocation(line: 1158, column: 14, scope: !1067)
!1575 = !DILocation(line: 1158, column: 11, scope: !1067)
!1576 = !DILocation(line: 1159, column: 2, scope: !1068)
!1577 = !DILocation(line: 1159, column: 2, scope: !1067)
!1578 = !DILocation(line: 1143, column: 42, scope: !1068)
!1579 = !DILocation(line: 1143, column: 2, scope: !1068)
!1580 = distinct !{!1580, !1534, !1581}
!1581 = !DILocation(line: 1159, column: 2, scope: !1065)
!1582 = !DILocation(line: 1162, column: 8, scope: !994)
!1583 = !DILocation(line: 1162, column: 17, scope: !994)
!1584 = !DILocation(line: 1164, column: 9, scope: !994)
!1585 = !DILocation(line: 1164, column: 2, scope: !994)
!1586 = !DILocation(line: 1165, column: 1, scope: !994)
!1587 = distinct !DISubprogram(name: "get_package_len", scope: !39, file: !39, line: 196, type: !1588, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1590)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!16, !6}
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1591 = !DILocalVariable(name: "packaged", arg: 1, scope: !1587, file: !39, line: 196, type: !6)
!1592 = !DILocalVariable(name: "buf", scope: !1587, file: !39, line: 200, type: !26)
!1593 = !DILocalVariable(name: "start", scope: !1587, file: !39, line: 201, type: !26)
!1594 = !DILocalVariable(name: "args_size", scope: !1587, file: !39, line: 202, type: !5)
!1595 = !DILocalVariable(name: "s_nbr", scope: !1587, file: !39, line: 202, type: !5)
!1596 = !DILocalVariable(name: "ros_nbr", scope: !1587, file: !39, line: 202, type: !5)
!1597 = !DILocalVariable(name: "i", scope: !1598, file: !39, line: 215, type: !5)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !39, line: 215, column: 2)
!1599 = !DILocation(line: 196, column: 37, scope: !1587)
!1600 = !DILocation(line: 200, column: 2, scope: !1587)
!1601 = !DILocation(line: 200, column: 11, scope: !1587)
!1602 = !DILocation(line: 200, column: 17, scope: !1587)
!1603 = !DILocation(line: 201, column: 2, scope: !1587)
!1604 = !DILocation(line: 201, column: 11, scope: !1587)
!1605 = !DILocation(line: 201, column: 19, scope: !1587)
!1606 = !DILocation(line: 202, column: 2, scope: !1587)
!1607 = !DILocation(line: 202, column: 15, scope: !1587)
!1608 = !DILocation(line: 202, column: 26, scope: !1587)
!1609 = !DILocation(line: 202, column: 33, scope: !1587)
!1610 = !DILocation(line: 204, column: 14, scope: !1587)
!1611 = !DILocation(line: 204, column: 21, scope: !1587)
!1612 = !DILocation(line: 204, column: 12, scope: !1587)
!1613 = !DILocation(line: 205, column: 10, scope: !1587)
!1614 = !DILocation(line: 205, column: 8, scope: !1587)
!1615 = !DILocation(line: 206, column: 12, scope: !1587)
!1616 = !DILocation(line: 206, column: 10, scope: !1587)
!1617 = !DILocation(line: 209, column: 9, scope: !1587)
!1618 = !DILocation(line: 209, column: 6, scope: !1587)
!1619 = !DILocation(line: 212, column: 9, scope: !1587)
!1620 = !DILocation(line: 212, column: 6, scope: !1587)
!1621 = !DILocation(line: 215, column: 7, scope: !1598)
!1622 = !DILocation(line: 215, column: 20, scope: !1598)
!1623 = !DILocation(line: 215, column: 27, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1598, file: !39, line: 215, column: 2)
!1625 = !DILocation(line: 215, column: 31, scope: !1624)
!1626 = !DILocation(line: 215, column: 29, scope: !1624)
!1627 = !DILocation(line: 215, column: 2, scope: !1598)
!1628 = !DILocation(line: 215, column: 2, scope: !1624)
!1629 = !DILocation(line: 216, column: 6, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !39, line: 215, column: 43)
!1631 = !DILocation(line: 217, column: 31, scope: !1630)
!1632 = !DILocation(line: 217, column: 10, scope: !1630)
!1633 = !DILocation(line: 217, column: 36, scope: !1630)
!1634 = !DILocation(line: 217, column: 7, scope: !1630)
!1635 = !DILocation(line: 218, column: 2, scope: !1630)
!1636 = !DILocation(line: 215, column: 39, scope: !1624)
!1637 = distinct !{!1637, !1627, !1638}
!1638 = !DILocation(line: 218, column: 2, scope: !1598)
!1639 = !DILocation(line: 220, column: 29, scope: !1587)
!1640 = !DILocation(line: 220, column: 35, scope: !1587)
!1641 = !DILocation(line: 220, column: 33, scope: !1587)
!1642 = !DILocation(line: 221, column: 1, scope: !1587)
!1643 = !DILocation(line: 220, column: 2, scope: !1587)
!1644 = distinct !DISubprogram(name: "append_string", scope: !39, file: !39, line: 223, type: !1645, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!18, !997, !6, !13, !29}
!1647 = !{!1648, !1649, !1650, !1651}
!1648 = !DILocalVariable(name: "cb", arg: 1, scope: !1644, file: !39, line: 223, type: !997)
!1649 = !DILocalVariable(name: "ctx", arg: 2, scope: !1644, file: !39, line: 223, type: !6)
!1650 = !DILocalVariable(name: "str", arg: 3, scope: !1644, file: !39, line: 223, type: !13)
!1651 = !DILocalVariable(name: "strl", arg: 4, scope: !1644, file: !39, line: 223, type: !29)
!1652 = !DILocation(line: 223, column: 46, scope: !1644)
!1653 = !DILocation(line: 223, column: 56, scope: !1644)
!1654 = !DILocation(line: 223, column: 73, scope: !1644)
!1655 = !DILocation(line: 223, column: 87, scope: !1644)
!1656 = !DILocation(line: 225, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1644, file: !39, line: 225, column: 6)
!1658 = !DILocation(line: 225, column: 9, scope: !1657)
!1659 = !DILocation(line: 225, column: 6, scope: !1644)
!1660 = !DILocation(line: 226, column: 21, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !39, line: 225, column: 15)
!1662 = !DILocation(line: 226, column: 14, scope: !1661)
!1663 = !DILocation(line: 226, column: 12, scope: !1661)
!1664 = !DILocation(line: 226, column: 3, scope: !1661)
!1665 = !DILocation(line: 229, column: 9, scope: !1644)
!1666 = !DILocation(line: 229, column: 14, scope: !1644)
!1667 = !DILocation(line: 229, column: 20, scope: !1644)
!1668 = !DILocation(line: 229, column: 34, scope: !1644)
!1669 = !DILocation(line: 229, column: 27, scope: !1644)
!1670 = !DILocation(line: 229, column: 39, scope: !1644)
!1671 = !DILocation(line: 229, column: 7, scope: !1644)
!1672 = !DILocation(line: 230, column: 9, scope: !1644)
!1673 = !DILocation(line: 230, column: 12, scope: !1644)
!1674 = !DILocation(line: 230, column: 17, scope: !1644)
!1675 = !DILocation(line: 230, column: 23, scope: !1644)
!1676 = !DILocation(line: 230, column: 2, scope: !1644)
!1677 = !DILocation(line: 231, column: 1, scope: !1644)
!1678 = distinct !DISubprogram(name: "linker_is_in_rodata", scope: !1679, file: !1679, line: 24, type: !1680, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1682)
!1679 = !DIFile(filename: "include/zephyr/linker/utils.h", directory: "/home/sri/zephyrproject/zephyr")
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!71, !1001}
!1682 = !{!1683}
!1683 = !DILocalVariable(name: "addr", arg: 1, scope: !1678, file: !1679, line: 24, type: !1001)
!1684 = !DILocation(line: 24, column: 53, scope: !1678)
!1685 = !DILocation(line: 49, column: 25, scope: !1678)
!1686 = !DILocation(line: 49, column: 30, scope: !1678)
!1687 = !DILocation(line: 49, column: 70, scope: !1678)
!1688 = !DILocation(line: 50, column: 18, scope: !1678)
!1689 = !DILocation(line: 50, column: 23, scope: !1678)
!1690 = !DILocation(line: 0, scope: !1678)
!1691 = !DILocation(line: 49, column: 2, scope: !1678)
