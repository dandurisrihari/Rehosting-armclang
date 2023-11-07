; ModuleID = '../bc_files/cortex_m_systick.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/timer/cortex_m_systick.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.k_spinlock = type {}
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }
%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.z_spinlock_key = type { i32 }
%struct.NVIC_Type = type { [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [1 x i32], [31 x i32], [64 x i32], [8 x i32] }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32 }

@overflow_cyc = internal global i32 0, align 4, !dbg !0
@cycle_count = internal global i32 0, align 4, !dbg !138
@announced_cycles = internal global i32 0, align 4, !dbg !140
@last_load = internal global i32 0, align 4, !dbg !136
@lock = internal global %struct.k_spinlock zeroinitializer, align 1, !dbg !131
@__init_sys_clock_driver_init = internal constant %struct.init_entry { %union.init_function { ptr @sys_clock_driver_init }, ptr null }, section ".z_init_PRE_KERNEL_20_0_", align 4, !dbg !109
@llvm.used = appending global [1 x ptr] [ptr @__init_sys_clock_driver_init], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define hidden void @sys_clock_isr(ptr noundef %0) #0 !dbg !151 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !155, metadata !DIExpression()), !dbg !156
  %5 = load ptr, ptr %2, align 4, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %3, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata ptr %4, metadata !160, metadata !DIExpression()), !dbg !161
  %6 = call i32 @elapsed(), !dbg !162
  %7 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !163
  %8 = load i32, ptr @cycle_count, align 4, !dbg !164
  %9 = add i32 %8, %7, !dbg !164
  store i32 %9, ptr @cycle_count, align 4, !dbg !164
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !165
  %10 = load i32, ptr @cycle_count, align 4, !dbg !166
  %11 = load i32, ptr @announced_cycles, align 4, !dbg !169
  %12 = sub i32 %10, %11, !dbg !170
  store i32 %12, ptr %3, align 4, !dbg !171
  %13 = load i32, ptr %3, align 4, !dbg !172
  %14 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !173
  %15 = sdiv i32 %14, 10000, !dbg !174
  %16 = udiv i32 %13, %15, !dbg !175
  store i32 %16, ptr %4, align 4, !dbg !176
  %17 = load i32, ptr %4, align 4, !dbg !177
  %18 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !178
  %19 = sdiv i32 %18, 10000, !dbg !179
  %20 = mul i32 %17, %19, !dbg !180
  %21 = load i32, ptr @announced_cycles, align 4, !dbg !181
  %22 = add i32 %21, %20, !dbg !181
  store i32 %22, ptr @announced_cycles, align 4, !dbg !181
  %23 = load i32, ptr %4, align 4, !dbg !182
  call void @sys_clock_announce(i32 noundef %23), !dbg !183
  call void @z_arm_int_exit(), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @elapsed() #0 !dbg !186 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !189, metadata !DIExpression()), !dbg !190
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !191
  store i32 %4, ptr %1, align 4, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !193
  %5 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !194
  store i32 %5, ptr %2, align 4, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %3, metadata !195, metadata !DIExpression()), !dbg !196
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !197
  store i32 %6, ptr %3, align 4, !dbg !196
  %7 = load i32, ptr %2, align 4, !dbg !198
  %8 = and i32 %7, 65536, !dbg !200
  %9 = icmp ne i32 %8, 0, !dbg !200
  br i1 %9, label %14, label %10, !dbg !201

10:                                               ; preds = %0
  %11 = load i32, ptr %1, align 4, !dbg !202
  %12 = load i32, ptr %3, align 4, !dbg !203
  %13 = icmp ult i32 %11, %12, !dbg !204
  br i1 %13, label %14, label %19, !dbg !205

14:                                               ; preds = %10, %0
  %15 = load i32, ptr @last_load, align 4, !dbg !206
  %16 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !208
  %17 = add i32 %16, %15, !dbg !208
  store volatile i32 %17, ptr @overflow_cyc, align 4, !dbg !208
  %18 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !209
  br label %19, !dbg !210

19:                                               ; preds = %14, %10
  %20 = load i32, ptr @last_load, align 4, !dbg !211
  %21 = load i32, ptr %3, align 4, !dbg !212
  %22 = sub i32 %20, %21, !dbg !213
  %23 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !214
  %24 = add i32 %22, %23, !dbg !215
  ret i32 %24, !dbg !216
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sys_clock_hw_cycles_per_sec() #0 !dbg !217 {
  ret i32 48000000, !dbg !219
}

declare void @sys_clock_announce(i32 noundef) #2

declare void @z_arm_int_exit() #2

; Function Attrs: noinline nounwind optnone
define hidden void @sys_clock_set_timeout(i32 noundef %0, i1 noundef zeroext %1) #0 !dbg !220 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.z_spinlock_key, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, ptr %11, align 4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !224, metadata !DIExpression()), !dbg !225
  %20 = zext i1 %1 to i8
  store i8 %20, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !226, metadata !DIExpression()), !dbg !227
  %21 = load i8, ptr %12, align 1, !dbg !228
  %22 = trunc i8 %21 to i1, !dbg !228
  br i1 %22, label %23, label %30, !dbg !230

23:                                               ; preds = %2
  %24 = load i32, ptr %11, align 4, !dbg !231
  %25 = sext i32 %24 to i64, !dbg !231
  %26 = icmp eq i64 %25, -1, !dbg !232
  br i1 %26, label %27, label %30, !dbg !233

27:                                               ; preds = %23
  %28 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !234
  %29 = and i32 %28, -2, !dbg !234
  store volatile i32 %29, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !234
  store i32 -16777216, ptr @last_load, align 4, !dbg !236
  br label %213, !dbg !237

30:                                               ; preds = %23, %2
  call void @llvm.dbg.declare(metadata ptr %13, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %14, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata ptr %15, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata ptr %16, metadata !244, metadata !DIExpression()), !dbg !245
  %31 = load i32, ptr @last_load, align 4, !dbg !246
  store i32 %31, ptr %16, align 4, !dbg !245
  %32 = load i32, ptr %11, align 4, !dbg !247
  %33 = sext i32 %32 to i64, !dbg !247
  %34 = icmp eq i64 %33, -1, !dbg !248
  br i1 %34, label %35, label %41, !dbg !249

35:                                               ; preds = %30
  %36 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !250
  %37 = sdiv i32 %36, 10000, !dbg !251
  %38 = sdiv i32 16777215, %37, !dbg !252
  %39 = sext i32 %38 to i64, !dbg !253
  %40 = sub nsw i64 %39, 1, !dbg !254
  br label %44, !dbg !249

41:                                               ; preds = %30
  %42 = load i32, ptr %11, align 4, !dbg !255
  %43 = sext i32 %42 to i64, !dbg !255
  br label %44, !dbg !249

44:                                               ; preds = %41, %35
  %45 = phi i64 [ %40, %35 ], [ %43, %41 ], !dbg !249
  %46 = trunc i64 %45 to i32, !dbg !249
  store i32 %46, ptr %11, align 4, !dbg !256
  %47 = load i32, ptr %11, align 4, !dbg !257
  %48 = sub nsw i32 %47, 1, !dbg !258
  %49 = icmp sle i32 %48, 0, !dbg !259
  br i1 %49, label %50, label %51, !dbg !260

50:                                               ; preds = %44
  br label %73, !dbg !260

51:                                               ; preds = %44
  %52 = load i32, ptr %11, align 4, !dbg !261
  %53 = sub nsw i32 %52, 1, !dbg !262
  %54 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !263
  %55 = sdiv i32 %54, 10000, !dbg !264
  %56 = sdiv i32 16777215, %55, !dbg !265
  %57 = sext i32 %56 to i64, !dbg !266
  %58 = sub nsw i64 %57, 1, !dbg !267
  %59 = trunc i64 %58 to i32, !dbg !268
  %60 = icmp slt i32 %53, %59, !dbg !269
  br i1 %60, label %61, label %64, !dbg !270

61:                                               ; preds = %51
  %62 = load i32, ptr %11, align 4, !dbg !271
  %63 = sub nsw i32 %62, 1, !dbg !272
  br label %71, !dbg !270

64:                                               ; preds = %51
  %65 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !273
  %66 = sdiv i32 %65, 10000, !dbg !274
  %67 = sdiv i32 16777215, %66, !dbg !275
  %68 = sext i32 %67 to i64, !dbg !276
  %69 = sub nsw i64 %68, 1, !dbg !277
  %70 = trunc i64 %69 to i32, !dbg !278
  br label %71, !dbg !270

71:                                               ; preds = %64, %61
  %72 = phi i32 [ %63, %61 ], [ %70, %64 ], !dbg !270
  br label %73, !dbg !260

73:                                               ; preds = %71, %50
  %74 = phi i32 [ 0, %50 ], [ %72, %71 ], !dbg !260
  store i32 %74, ptr %11, align 4, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %17, metadata !280, metadata !DIExpression()), !dbg !285
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !286, metadata !DIExpression()), !dbg !291
  %75 = load ptr, ptr %10, align 4, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %9, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata ptr %6, metadata !296, metadata !DIExpression()), !dbg !301
  %76 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !303, !srcloc !304
  store i32 %76, ptr %6, align 4, !dbg !303
  %77 = load i32, ptr %6, align 4, !dbg !305
  store i32 %77, ptr %9, align 4, !dbg !306
  %78 = load ptr, ptr %10, align 4, !dbg !307
  store ptr %78, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !308, metadata !DIExpression()), !dbg !312
  %79 = load ptr, ptr %5, align 4, !dbg !314
  %80 = load ptr, ptr %10, align 4, !dbg !315
  store ptr %80, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !316, metadata !DIExpression()), !dbg !318
  %81 = load ptr, ptr %4, align 4, !dbg !320
  %82 = load i32, ptr %9, align 4, !dbg !321
  %83 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !322
  store i32 %82, ptr %83, align 4, !dbg !322
  call void @llvm.dbg.declare(metadata ptr %18, metadata !323, metadata !DIExpression()), !dbg !324
  %84 = call i32 @elapsed(), !dbg !325
  store i32 %84, ptr %18, align 4, !dbg !324
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !326
  store i32 %85, ptr %14, align 4, !dbg !327
  %86 = load i32, ptr %18, align 4, !dbg !328
  %87 = load i32, ptr @cycle_count, align 4, !dbg !329
  %88 = add i32 %87, %86, !dbg !329
  store i32 %88, ptr @cycle_count, align 4, !dbg !329
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %19, metadata !331, metadata !DIExpression()), !dbg !332
  %89 = load i32, ptr @cycle_count, align 4, !dbg !333
  %90 = load i32, ptr @announced_cycles, align 4, !dbg !334
  %91 = sub i32 %89, %90, !dbg !335
  store i32 %91, ptr %19, align 4, !dbg !332
  %92 = load i32, ptr %19, align 4, !dbg !336
  %93 = icmp slt i32 %92, 0, !dbg !338
  br i1 %93, label %94, label %106, !dbg !339

94:                                               ; preds = %73
  %95 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !340
  %96 = sdiv i32 %95, 10000, !dbg !342
  %97 = udiv i32 %96, 16, !dbg !343
  %98 = icmp ugt i32 1024, %97, !dbg !344
  br i1 %98, label %99, label %100, !dbg !345

99:                                               ; preds = %94
  br label %104, !dbg !345

100:                                              ; preds = %94
  %101 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !346
  %102 = sdiv i32 %101, 10000, !dbg !347
  %103 = udiv i32 %102, 16, !dbg !348
  br label %104, !dbg !345

104:                                              ; preds = %100, %99
  %105 = phi i32 [ 1024, %99 ], [ %103, %100 ], !dbg !345
  store i32 %105, ptr @last_load, align 4, !dbg !349
  br label %183, !dbg !350

106:                                              ; preds = %73
  %107 = load i32, ptr %11, align 4, !dbg !351
  %108 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !353
  %109 = sdiv i32 %108, 10000, !dbg !354
  %110 = mul nsw i32 %107, %109, !dbg !355
  store i32 %110, ptr %13, align 4, !dbg !356
  %111 = load i32, ptr %19, align 4, !dbg !357
  %112 = load i32, ptr %13, align 4, !dbg !358
  %113 = add i32 %112, %111, !dbg !358
  store i32 %113, ptr %13, align 4, !dbg !358
  %114 = load i32, ptr %13, align 4, !dbg !359
  %115 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !360
  %116 = sdiv i32 %115, 10000, !dbg !361
  %117 = add i32 %114, %116, !dbg !362
  %118 = sub i32 %117, 1, !dbg !363
  %119 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !364
  %120 = sdiv i32 %119, 10000, !dbg !365
  %121 = udiv i32 %118, %120, !dbg !366
  %122 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !367
  %123 = sdiv i32 %122, 10000, !dbg !368
  %124 = mul i32 %121, %123, !dbg !369
  store i32 %124, ptr %13, align 4, !dbg !370
  %125 = load i32, ptr %19, align 4, !dbg !371
  %126 = load i32, ptr %13, align 4, !dbg !372
  %127 = sub i32 %126, %125, !dbg !372
  store i32 %127, ptr %13, align 4, !dbg !372
  %128 = load i32, ptr %13, align 4, !dbg !373
  %129 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !374
  %130 = sdiv i32 %129, 10000, !dbg !375
  %131 = udiv i32 %130, 16, !dbg !376
  %132 = icmp ugt i32 1024, %131, !dbg !377
  br i1 %132, label %133, label %134, !dbg !378

133:                                              ; preds = %106
  br label %138, !dbg !378

134:                                              ; preds = %106
  %135 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !379
  %136 = sdiv i32 %135, 10000, !dbg !380
  %137 = udiv i32 %136, 16, !dbg !381
  br label %138, !dbg !378

138:                                              ; preds = %134, %133
  %139 = phi i32 [ 1024, %133 ], [ %137, %134 ], !dbg !378
  %140 = icmp ugt i32 %128, %139, !dbg !382
  br i1 %140, label %141, label %143, !dbg !383

141:                                              ; preds = %138
  %142 = load i32, ptr %13, align 4, !dbg !384
  br label %155, !dbg !383

143:                                              ; preds = %138
  %144 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !385
  %145 = sdiv i32 %144, 10000, !dbg !386
  %146 = udiv i32 %145, 16, !dbg !387
  %147 = icmp ugt i32 1024, %146, !dbg !388
  br i1 %147, label %148, label %149, !dbg !389

148:                                              ; preds = %143
  br label %153, !dbg !389

149:                                              ; preds = %143
  %150 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !390
  %151 = sdiv i32 %150, 10000, !dbg !391
  %152 = udiv i32 %151, 16, !dbg !392
  br label %153, !dbg !389

153:                                              ; preds = %149, %148
  %154 = phi i32 [ 1024, %148 ], [ %152, %149 ], !dbg !389
  br label %155, !dbg !383

155:                                              ; preds = %153, %141
  %156 = phi i32 [ %142, %141 ], [ %154, %153 ], !dbg !383
  store i32 %156, ptr %13, align 4, !dbg !393
  %157 = load i32, ptr %13, align 4, !dbg !394
  %158 = zext i32 %157 to i64, !dbg !394
  %159 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !396
  %160 = sdiv i32 %159, 10000, !dbg !397
  %161 = sdiv i32 16777215, %160, !dbg !398
  %162 = sext i32 %161 to i64, !dbg !399
  %163 = sub nsw i64 %162, 1, !dbg !400
  %164 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !401
  %165 = sdiv i32 %164, 10000, !dbg !402
  %166 = sext i32 %165 to i64, !dbg !403
  %167 = mul nsw i64 %163, %166, !dbg !404
  %168 = icmp sgt i64 %158, %167, !dbg !405
  br i1 %168, label %169, label %180, !dbg !406

169:                                              ; preds = %155
  %170 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !407
  %171 = sdiv i32 %170, 10000, !dbg !409
  %172 = sdiv i32 16777215, %171, !dbg !410
  %173 = sext i32 %172 to i64, !dbg !411
  %174 = sub nsw i64 %173, 1, !dbg !412
  %175 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !413
  %176 = sdiv i32 %175, 10000, !dbg !414
  %177 = sext i32 %176 to i64, !dbg !415
  %178 = mul nsw i64 %174, %177, !dbg !416
  %179 = trunc i64 %178 to i32, !dbg !417
  store i32 %179, ptr @last_load, align 4, !dbg !418
  br label %182, !dbg !419

180:                                              ; preds = %155
  %181 = load i32, ptr %13, align 4, !dbg !420
  store i32 %181, ptr @last_load, align 4, !dbg !422
  br label %182

182:                                              ; preds = %180, %169
  br label %183

183:                                              ; preds = %182, %104
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !423
  store i32 %184, ptr %15, align 4, !dbg !424
  %185 = load i32, ptr @last_load, align 4, !dbg !425
  %186 = sub i32 %185, 1, !dbg !426
  store volatile i32 %186, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !427
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !428
  %187 = load i32, ptr %14, align 4, !dbg !429
  %188 = load i32, ptr %15, align 4, !dbg !431
  %189 = icmp ult i32 %187, %188, !dbg !432
  br i1 %189, label %190, label %198, !dbg !433

190:                                              ; preds = %183
  %191 = load i32, ptr %14, align 4, !dbg !434
  %192 = load i32, ptr %16, align 4, !dbg !436
  %193 = load i32, ptr %15, align 4, !dbg !437
  %194 = sub i32 %192, %193, !dbg !438
  %195 = add i32 %191, %194, !dbg !439
  %196 = load i32, ptr @cycle_count, align 4, !dbg !440
  %197 = add i32 %196, %195, !dbg !440
  store i32 %197, ptr @cycle_count, align 4, !dbg !440
  br label %204, !dbg !441

198:                                              ; preds = %183
  %199 = load i32, ptr %14, align 4, !dbg !442
  %200 = load i32, ptr %15, align 4, !dbg !444
  %201 = sub i32 %199, %200, !dbg !445
  %202 = load i32, ptr @cycle_count, align 4, !dbg !446
  %203 = add i32 %202, %201, !dbg !446
  store i32 %203, ptr @cycle_count, align 4, !dbg !446
  br label %204

204:                                              ; preds = %198, %190
  %205 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !447
  %206 = load [1 x i32], ptr %205, align 4, !dbg !447
  store [1 x i32] %206, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !448, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata ptr %7, metadata !454, metadata !DIExpression()), !dbg !455
  %207 = load ptr, ptr %8, align 4, !dbg !456
  %208 = load i32, ptr %7, align 4, !dbg !457
  store i32 %208, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !458, metadata !DIExpression()), !dbg !462
  %209 = load i32, ptr %3, align 4, !dbg !464
  %210 = icmp ne i32 %209, 0, !dbg !466
  br i1 %210, label %211, label %212, !dbg !467

211:                                              ; preds = %204
  br label %arch_irq_unlock.exit, !dbg !468

212:                                              ; preds = %204
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !470, !srcloc !471
  br label %arch_irq_unlock.exit, !dbg !472

arch_irq_unlock.exit:                             ; preds = %211, %212
  br label %213, !dbg !473

213:                                              ; preds = %arch_irq_unlock.exit, %27
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_clock_elapsed() #0 !dbg !474 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !475, metadata !DIExpression()), !dbg !476
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !286, metadata !DIExpression()), !dbg !477
  %12 = load ptr, ptr %8, align 4, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %7, metadata !294, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata ptr %4, metadata !296, metadata !DIExpression()), !dbg !481
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !483, !srcloc !304
  store i32 %13, ptr %4, align 4, !dbg !483
  %14 = load i32, ptr %4, align 4, !dbg !484
  store i32 %14, ptr %7, align 4, !dbg !485
  %15 = load ptr, ptr %8, align 4, !dbg !486
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !308, metadata !DIExpression()), !dbg !487
  %16 = load ptr, ptr %3, align 4, !dbg !489
  %17 = load ptr, ptr %8, align 4, !dbg !490
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !491
  %18 = load ptr, ptr %2, align 4, !dbg !493
  %19 = load i32, ptr %7, align 4, !dbg !494
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !495
  store i32 %19, ptr %20, align 4, !dbg !495
  call void @llvm.dbg.declare(metadata ptr %10, metadata !496, metadata !DIExpression()), !dbg !497
  %21 = load i32, ptr @cycle_count, align 4, !dbg !498
  %22 = load i32, ptr @announced_cycles, align 4, !dbg !499
  %23 = sub i32 %21, %22, !dbg !500
  store i32 %23, ptr %10, align 4, !dbg !497
  call void @llvm.dbg.declare(metadata ptr %11, metadata !501, metadata !DIExpression()), !dbg !502
  %24 = call i32 @elapsed(), !dbg !503
  %25 = load i32, ptr %10, align 4, !dbg !504
  %26 = add i32 %24, %25, !dbg !505
  store i32 %26, ptr %11, align 4, !dbg !502
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !506
  %28 = load [1 x i32], ptr %27, align 4, !dbg !506
  store [1 x i32] %28, ptr %5, align 4
  store ptr @lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !448, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata ptr %5, metadata !454, metadata !DIExpression()), !dbg !509
  %29 = load ptr, ptr %6, align 4, !dbg !510
  %30 = load i32, ptr %5, align 4, !dbg !511
  store i32 %30, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !458, metadata !DIExpression()), !dbg !512
  %31 = load i32, ptr %1, align 4, !dbg !514
  %32 = icmp ne i32 %31, 0, !dbg !515
  br i1 %32, label %33, label %34, !dbg !516

33:                                               ; preds = %0
  br label %arch_irq_unlock.exit, !dbg !517

34:                                               ; preds = %0
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !518, !srcloc !471
  br label %arch_irq_unlock.exit, !dbg !519

arch_irq_unlock.exit:                             ; preds = %33, %34
  %35 = load i32, ptr %11, align 4, !dbg !520
  %36 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !521
  %37 = sdiv i32 %36, 10000, !dbg !522
  %38 = udiv i32 %35, %37, !dbg !523
  ret i32 %38, !dbg !524
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @sys_clock_cycle_get_32() #0 !dbg !525 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_spinlock_key, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.z_spinlock_key, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.z_spinlock_key, align 4
  %10 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !526, metadata !DIExpression()), !dbg !527
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !286, metadata !DIExpression()), !dbg !528
  %11 = load ptr, ptr %8, align 4, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %7, metadata !294, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata ptr %4, metadata !296, metadata !DIExpression()), !dbg !532
  %12 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #3, !dbg !534, !srcloc !304
  store i32 %12, ptr %4, align 4, !dbg !534
  %13 = load i32, ptr %4, align 4, !dbg !535
  store i32 %13, ptr %7, align 4, !dbg !536
  %14 = load ptr, ptr %8, align 4, !dbg !537
  store ptr %14, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !308, metadata !DIExpression()), !dbg !538
  %15 = load ptr, ptr %3, align 4, !dbg !540
  %16 = load ptr, ptr %8, align 4, !dbg !541
  store ptr %16, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !316, metadata !DIExpression()), !dbg !542
  %17 = load ptr, ptr %2, align 4, !dbg !544
  %18 = load i32, ptr %7, align 4, !dbg !545
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !546
  store i32 %18, ptr %19, align 4, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %10, metadata !547, metadata !DIExpression()), !dbg !548
  %20 = load i32, ptr @cycle_count, align 4, !dbg !549
  store i32 %20, ptr %10, align 4, !dbg !548
  %21 = call i32 @elapsed(), !dbg !550
  %22 = load i32, ptr %10, align 4, !dbg !551
  %23 = add i32 %22, %21, !dbg !551
  store i32 %23, ptr %10, align 4, !dbg !551
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !552
  %25 = load [1 x i32], ptr %24, align 4, !dbg !552
  store [1 x i32] %25, ptr %5, align 4
  store ptr @lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !448, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata ptr %5, metadata !454, metadata !DIExpression()), !dbg !555
  %26 = load ptr, ptr %6, align 4, !dbg !556
  %27 = load i32, ptr %5, align 4, !dbg !557
  store i32 %27, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !458, metadata !DIExpression()), !dbg !558
  %28 = load i32, ptr %1, align 4, !dbg !560
  %29 = icmp ne i32 %28, 0, !dbg !561
  br i1 %29, label %30, label %31, !dbg !562

30:                                               ; preds = %0
  br label %arch_irq_unlock.exit, !dbg !563

31:                                               ; preds = %0
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #3, !dbg !564, !srcloc !471
  br label %arch_irq_unlock.exit, !dbg !565

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %10, align 4, !dbg !566
  ret i32 %32, !dbg !567
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_clock_idle_exit() #0 !dbg !568 {
  %1 = load i32, ptr @last_load, align 4, !dbg !571
  %2 = icmp eq i32 %1, -16777216, !dbg !573
  br i1 %2, label %3, label %6, !dbg !574

3:                                                ; preds = %0
  %4 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !575
  %5 = or i32 %4, 1, !dbg !575
  store volatile i32 %5, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !575
  br label %6, !dbg !577

6:                                                ; preds = %3, %0
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_clock_disable() #0 !dbg !579 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !580
  %2 = and i32 %1, -2, !dbg !580
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !580
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone
define internal i32 @sys_clock_driver_init() #0 !dbg !582 {
  call void @__NVIC_SetPriority(i8 noundef signext -1, i32 noundef 0), !dbg !583
  %1 = call i32 @sys_clock_hw_cycles_per_sec(), !dbg !584
  %2 = sdiv i32 %1, 10000, !dbg !585
  %3 = sub nsw i32 %2, 1, !dbg !586
  store i32 %3, ptr @last_load, align 4, !dbg !587
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !588
  %4 = load i32, ptr @last_load, align 4, !dbg !589
  store volatile i32 %4, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !590
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !591
  %5 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !592
  %6 = or i32 %5, 7, !dbg !592
  store volatile i32 %6, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !592
  ret i32 0, !dbg !593
}

; Function Attrs: noinline nounwind optnone
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #0 !dbg !594 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !598, metadata !DIExpression()), !dbg !599
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !600, metadata !DIExpression()), !dbg !601
  %5 = load i8, ptr %3, align 1, !dbg !602
  %6 = sext i8 %5 to i32, !dbg !604
  %7 = icmp sge i32 %6, 0, !dbg !605
  br i1 %7, label %8, label %34, !dbg !606

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !607
  %10 = sext i8 %9 to i32, !dbg !609
  %11 = lshr i32 %10, 2, !dbg !610
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !611
  %13 = load volatile i32, ptr %12, align 4, !dbg !611
  %14 = load i8, ptr %3, align 1, !dbg !612
  %15 = sext i8 %14 to i32, !dbg !613
  %16 = and i32 %15, 3, !dbg !614
  %17 = mul i32 %16, 8, !dbg !615
  %18 = shl i32 255, %17, !dbg !616
  %19 = xor i32 %18, -1, !dbg !617
  %20 = and i32 %13, %19, !dbg !618
  %21 = load i32, ptr %4, align 4, !dbg !619
  %22 = shl i32 %21, 6, !dbg !620
  %23 = and i32 %22, 255, !dbg !621
  %24 = load i8, ptr %3, align 1, !dbg !622
  %25 = sext i8 %24 to i32, !dbg !623
  %26 = and i32 %25, 3, !dbg !624
  %27 = mul i32 %26, 8, !dbg !625
  %28 = shl i32 %23, %27, !dbg !626
  %29 = or i32 %20, %28, !dbg !627
  %30 = load i8, ptr %3, align 1, !dbg !628
  %31 = sext i8 %30 to i32, !dbg !629
  %32 = lshr i32 %31, 2, !dbg !630
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !631
  store volatile i32 %29, ptr %33, align 4, !dbg !632
  br label %64, !dbg !633

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !634
  %36 = sext i8 %35 to i32, !dbg !636
  %37 = and i32 %36, 15, !dbg !637
  %38 = sub i32 %37, 8, !dbg !638
  %39 = lshr i32 %38, 2, !dbg !639
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !640
  %41 = load volatile i32, ptr %40, align 4, !dbg !640
  %42 = load i8, ptr %3, align 1, !dbg !641
  %43 = sext i8 %42 to i32, !dbg !642
  %44 = and i32 %43, 3, !dbg !643
  %45 = mul i32 %44, 8, !dbg !644
  %46 = shl i32 255, %45, !dbg !645
  %47 = xor i32 %46, -1, !dbg !646
  %48 = and i32 %41, %47, !dbg !647
  %49 = load i32, ptr %4, align 4, !dbg !648
  %50 = shl i32 %49, 6, !dbg !649
  %51 = and i32 %50, 255, !dbg !650
  %52 = load i8, ptr %3, align 1, !dbg !651
  %53 = sext i8 %52 to i32, !dbg !652
  %54 = and i32 %53, 3, !dbg !653
  %55 = mul i32 %54, 8, !dbg !654
  %56 = shl i32 %51, %55, !dbg !655
  %57 = or i32 %48, %56, !dbg !656
  %58 = load i8, ptr %3, align 1, !dbg !657
  %59 = sext i8 %58 to i32, !dbg !658
  %60 = and i32 %59, 15, !dbg !659
  %61 = sub i32 %60, 8, !dbg !660
  %62 = lshr i32 %61, 2, !dbg !661
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !662
  store volatile i32 %57, ptr %63, align 4, !dbg !663
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !664
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148, !149}
!llvm.ident = !{!150}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "overflow_cyc", scope: !2, file: !111, line: 78, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cortex_m_systick.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 66, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "modules/hal/stm32/stm32cube/stm32f0xx/soc/stm32f091xc.h", directory: "/home/sri/zephyrproject")
!7 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!9 = !DIEnumerator(name: "NonMaskableInt_IRQn", value: -14)
!10 = !DIEnumerator(name: "HardFault_IRQn", value: -13)
!11 = !DIEnumerator(name: "SVCall_IRQn", value: -5)
!12 = !DIEnumerator(name: "PendSV_IRQn", value: -2)
!13 = !DIEnumerator(name: "SysTick_IRQn", value: -1)
!14 = !DIEnumerator(name: "WWDG_IRQn", value: 0)
!15 = !DIEnumerator(name: "PVD_VDDIO2_IRQn", value: 1)
!16 = !DIEnumerator(name: "RTC_IRQn", value: 2)
!17 = !DIEnumerator(name: "FLASH_IRQn", value: 3)
!18 = !DIEnumerator(name: "RCC_CRS_IRQn", value: 4)
!19 = !DIEnumerator(name: "EXTI0_1_IRQn", value: 5)
!20 = !DIEnumerator(name: "EXTI2_3_IRQn", value: 6)
!21 = !DIEnumerator(name: "EXTI4_15_IRQn", value: 7)
!22 = !DIEnumerator(name: "TSC_IRQn", value: 8)
!23 = !DIEnumerator(name: "DMA1_Ch1_IRQn", value: 9)
!24 = !DIEnumerator(name: "DMA1_Ch2_3_DMA2_Ch1_2_IRQn", value: 10)
!25 = !DIEnumerator(name: "DMA1_Ch4_7_DMA2_Ch3_5_IRQn", value: 11)
!26 = !DIEnumerator(name: "ADC1_COMP_IRQn", value: 12)
!27 = !DIEnumerator(name: "TIM1_BRK_UP_TRG_COM_IRQn", value: 13)
!28 = !DIEnumerator(name: "TIM1_CC_IRQn", value: 14)
!29 = !DIEnumerator(name: "TIM2_IRQn", value: 15)
!30 = !DIEnumerator(name: "TIM3_IRQn", value: 16)
!31 = !DIEnumerator(name: "TIM6_DAC_IRQn", value: 17)
!32 = !DIEnumerator(name: "TIM7_IRQn", value: 18)
!33 = !DIEnumerator(name: "TIM14_IRQn", value: 19)
!34 = !DIEnumerator(name: "TIM15_IRQn", value: 20)
!35 = !DIEnumerator(name: "TIM16_IRQn", value: 21)
!36 = !DIEnumerator(name: "TIM17_IRQn", value: 22)
!37 = !DIEnumerator(name: "I2C1_IRQn", value: 23)
!38 = !DIEnumerator(name: "I2C2_IRQn", value: 24)
!39 = !DIEnumerator(name: "SPI1_IRQn", value: 25)
!40 = !DIEnumerator(name: "SPI2_IRQn", value: 26)
!41 = !DIEnumerator(name: "USART1_IRQn", value: 27)
!42 = !DIEnumerator(name: "USART2_IRQn", value: 28)
!43 = !DIEnumerator(name: "USART3_8_IRQn", value: 29)
!44 = !DIEnumerator(name: "CEC_CAN_IRQn", value: 30)
!45 = !{!46, !51, !64, !58, !66, !92}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !47, line: 46, baseType: !48)
!47 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !49, line: 59, baseType: !50)
!49 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!50 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "SysTick_Type", file: !53, line: 454, baseType: !54)
!53 = !DIFile(filename: "modules/hal/cmsis/CMSIS/Core/Include/core_cm0.h", directory: "/home/sri/zephyrproject")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 448, size: 128, elements: !55)
!55 = !{!56, !60, !61, !62}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "CTRL", scope: !54, file: !53, line: 450, baseType: !57, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !49, line: 64, baseType: !59)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "LOAD", scope: !54, file: !53, line: 451, baseType: !57, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "VAL", scope: !54, file: !53, line: 452, baseType: !57, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "CALIB", scope: !54, file: !53, line: 453, baseType: !63, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !49, line: 58, baseType: !65)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "NVIC_Type", file: !53, line: 326, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 314, size: 6400, elements: !69)
!69 = !{!70, !74, !78, !79, !80, !81, !82, !83, !84, !88}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ISER", scope: !68, file: !53, line: 316, baseType: !71, size: 32)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 32, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !68, file: !53, line: 317, baseType: !75, size: 992, offset: 32)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 992, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 31)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "ICER", scope: !68, file: !53, line: 318, baseType: !71, size: 32, offset: 1024)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !68, file: !53, line: 319, baseType: !75, size: 992, offset: 1056)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ISPR", scope: !68, file: !53, line: 320, baseType: !71, size: 32, offset: 2048)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED2", scope: !68, file: !53, line: 321, baseType: !75, size: 992, offset: 2080)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "ICPR", scope: !68, file: !53, line: 322, baseType: !71, size: 32, offset: 3072)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED3", scope: !68, file: !53, line: 323, baseType: !75, size: 992, offset: 3104)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED4", scope: !68, file: !53, line: 324, baseType: !85, size: 2048, offset: 4096)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2048, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "IP", scope: !68, file: !53, line: 325, baseType: !89, size: 256, offset: 6144)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 256, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 8)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "SCB_Type", file: !53, line: 352, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 341, size: 320, elements: !95)
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !107}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "CPUID", scope: !94, file: !53, line: 343, baseType: !63, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "ICSR", scope: !94, file: !53, line: 344, baseType: !57, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED0", scope: !94, file: !53, line: 345, baseType: !58, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "AIRCR", scope: !94, file: !53, line: 346, baseType: !57, size: 32, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "SCR", scope: !94, file: !53, line: 347, baseType: !57, size: 32, offset: 128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "CCR", scope: !94, file: !53, line: 348, baseType: !57, size: 32, offset: 160)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "RESERVED1", scope: !94, file: !53, line: 349, baseType: !58, size: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "SHP", scope: !94, file: !53, line: 350, baseType: !104, size: 64, offset: 224)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 2)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "SHCSR", scope: !94, file: !53, line: 351, baseType: !57, size: 32, offset: 288)
!108 = !{!109, !131, !136, !138, !140, !0}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__init_sys_clock_driver_init", scope: !2, file: !111, line: 311, type: !112, isLocal: true, isDefinition: true, align: 32)
!111 = !DIFile(filename: "drivers/timer/cortex_m_systick.c", directory: "/home/sri/zephyrproject/zephyr")
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !114, line: 92, size: 64, elements: !115)
!114 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!115 = !{!116, !130}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !113, file: !114, line: 94, baseType: !117, size: 32)
!117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !114, line: 59, size: 32, elements: !118)
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !117, file: !114, line: 66, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 32)
!121 = !DISubroutineType(types: !122)
!122 = !{!65}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !117, file: !114, line: 75, baseType: !124, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 32)
!125 = !DISubroutineType(types: !126)
!126 = !{!65, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !114, line: 50, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !113, file: !114, line: 99, baseType: !127, size: 32, offset: 32)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "lock", scope: !2, file: !111, line: 35, type: !133, isLocal: true, isDefinition: true)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !134, line: 45, elements: !135)
!134 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!135 = !{}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "last_load", scope: !2, file: !111, line: 37, type: !58, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "cycle_count", scope: !2, file: !111, line: 55, type: !58, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "announced_cycles", scope: !2, file: !111, line: 67, type: !58, isLocal: true, isDefinition: true)
!142 = !{i32 7, !"Dwarf Version", i32 4}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 1, !"static_rwdata", i32 1}
!146 = !{i32 1, !"enumsize_buildattr", i32 1}
!147 = !{i32 1, !"armlib_unavailable", i32 0}
!148 = !{i32 8, !"PIC Level", i32 2}
!149 = !{i32 7, !"PIE Level", i32 2}
!150 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!151 = distinct !DISubprogram(name: "sys_clock_isr", scope: !111, file: !111, line: 131, type: !152, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!155 = !DILocalVariable(name: "arg", arg: 1, scope: !151, file: !111, line: 131, type: !154)
!156 = !DILocation(line: 131, column: 26, scope: !151)
!157 = !DILocation(line: 133, column: 9, scope: !151)
!158 = !DILocalVariable(name: "dcycles", scope: !151, file: !111, line: 134, type: !58)
!159 = !DILocation(line: 134, column: 11, scope: !151)
!160 = !DILocalVariable(name: "dticks", scope: !151, file: !111, line: 135, type: !58)
!161 = !DILocation(line: 135, column: 11, scope: !151)
!162 = !DILocation(line: 138, column: 2, scope: !151)
!163 = !DILocation(line: 143, column: 17, scope: !151)
!164 = !DILocation(line: 143, column: 14, scope: !151)
!165 = !DILocation(line: 144, column: 15, scope: !151)
!166 = !DILocation(line: 159, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !111, line: 146, column: 11)
!168 = distinct !DILexicalBlock(scope: !151, file: !111, line: 146, column: 6)
!169 = !DILocation(line: 159, column: 27, scope: !167)
!170 = !DILocation(line: 159, column: 25, scope: !167)
!171 = !DILocation(line: 159, column: 11, scope: !167)
!172 = !DILocation(line: 160, column: 12, scope: !167)
!173 = !DILocation(line: 160, column: 23, scope: !167)
!174 = !DILocation(line: 160, column: 53, scope: !167)
!175 = !DILocation(line: 160, column: 20, scope: !167)
!176 = !DILocation(line: 160, column: 10, scope: !167)
!177 = !DILocation(line: 161, column: 23, scope: !167)
!178 = !DILocation(line: 161, column: 33, scope: !167)
!179 = !DILocation(line: 161, column: 63, scope: !167)
!180 = !DILocation(line: 161, column: 30, scope: !167)
!181 = !DILocation(line: 161, column: 20, scope: !167)
!182 = !DILocation(line: 162, column: 22, scope: !167)
!183 = !DILocation(line: 162, column: 3, scope: !167)
!184 = !DILocation(line: 166, column: 2, scope: !151)
!185 = !DILocation(line: 167, column: 1, scope: !151)
!186 = distinct !DISubprogram(name: "elapsed", scope: !111, file: !111, line: 98, type: !187, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!187 = !DISubroutineType(types: !188)
!188 = !{!58}
!189 = !DILocalVariable(name: "val1", scope: !186, file: !111, line: 100, type: !58)
!190 = !DILocation(line: 100, column: 11, scope: !186)
!191 = !DILocation(line: 100, column: 67, scope: !186)
!192 = !DILocalVariable(name: "ctrl", scope: !186, file: !111, line: 101, type: !58)
!193 = !DILocation(line: 101, column: 11, scope: !186)
!194 = !DILocation(line: 101, column: 67, scope: !186)
!195 = !DILocalVariable(name: "val2", scope: !186, file: !111, line: 102, type: !58)
!196 = !DILocation(line: 102, column: 11, scope: !186)
!197 = !DILocation(line: 102, column: 67, scope: !186)
!198 = !DILocation(line: 118, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !186, file: !111, line: 118, column: 6)
!200 = !DILocation(line: 118, column: 12, scope: !199)
!201 = !DILocation(line: 119, column: 6, scope: !199)
!202 = !DILocation(line: 119, column: 10, scope: !199)
!203 = !DILocation(line: 119, column: 17, scope: !199)
!204 = !DILocation(line: 119, column: 15, scope: !199)
!205 = !DILocation(line: 118, column: 6, scope: !186)
!206 = !DILocation(line: 120, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !199, file: !111, line: 119, column: 24)
!208 = !DILocation(line: 120, column: 16, scope: !207)
!209 = !DILocation(line: 124, column: 58, scope: !207)
!210 = !DILocation(line: 125, column: 2, scope: !207)
!211 = !DILocation(line: 127, column: 10, scope: !186)
!212 = !DILocation(line: 127, column: 22, scope: !186)
!213 = !DILocation(line: 127, column: 20, scope: !186)
!214 = !DILocation(line: 127, column: 30, scope: !186)
!215 = !DILocation(line: 127, column: 28, scope: !186)
!216 = !DILocation(line: 127, column: 2, scope: !186)
!217 = distinct !DISubprogram(name: "sys_clock_hw_cycles_per_sec", scope: !218, file: !218, line: 73, type: !121, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!218 = !DIFile(filename: "include/zephyr/sys/time_units.h", directory: "/home/sri/zephyrproject/zephyr")
!219 = !DILocation(line: 78, column: 2, scope: !217)
!220 = distinct !DISubprogram(name: "sys_clock_set_timeout", scope: !111, file: !111, line: 169, type: !221, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !64, !223}
!223 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!224 = !DILocalVariable(name: "ticks", arg: 1, scope: !220, file: !111, line: 169, type: !64)
!225 = !DILocation(line: 169, column: 36, scope: !220)
!226 = !DILocalVariable(name: "idle", arg: 2, scope: !220, file: !111, line: 169, type: !223)
!227 = !DILocation(line: 169, column: 49, scope: !220)
!228 = !DILocation(line: 177, column: 11, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !111, line: 177, column: 6)
!230 = !DILocation(line: 177, column: 16, scope: !229)
!231 = !DILocation(line: 177, column: 19, scope: !229)
!232 = !DILocation(line: 177, column: 25, scope: !229)
!233 = !DILocation(line: 177, column: 6, scope: !220)
!234 = !DILocation(line: 178, column: 57, scope: !235)
!235 = distinct !DILexicalBlock(scope: !229, file: !111, line: 177, column: 46)
!236 = !DILocation(line: 179, column: 13, scope: !235)
!237 = !DILocation(line: 180, column: 3, scope: !235)
!238 = !DILocalVariable(name: "delay", scope: !220, file: !111, line: 184, type: !58)
!239 = !DILocation(line: 184, column: 11, scope: !220)
!240 = !DILocalVariable(name: "val1", scope: !220, file: !111, line: 185, type: !58)
!241 = !DILocation(line: 185, column: 11, scope: !220)
!242 = !DILocalVariable(name: "val2", scope: !220, file: !111, line: 185, type: !58)
!243 = !DILocation(line: 185, column: 17, scope: !220)
!244 = !DILocalVariable(name: "last_load_", scope: !220, file: !111, line: 186, type: !58)
!245 = !DILocation(line: 186, column: 11, scope: !220)
!246 = !DILocation(line: 186, column: 24, scope: !220)
!247 = !DILocation(line: 188, column: 11, scope: !220)
!248 = !DILocation(line: 188, column: 17, scope: !220)
!249 = !DILocation(line: 188, column: 10, scope: !220)
!250 = !DILocation(line: 188, column: 67, scope: !220)
!251 = !DILocation(line: 188, column: 97, scope: !220)
!252 = !DILocation(line: 188, column: 64, scope: !220)
!253 = !DILocation(line: 188, column: 41, scope: !220)
!254 = !DILocation(line: 188, column: 107, scope: !220)
!255 = !DILocation(line: 188, column: 114, scope: !220)
!256 = !DILocation(line: 188, column: 8, scope: !220)
!257 = !DILocation(line: 189, column: 13, scope: !220)
!258 = !DILocation(line: 189, column: 19, scope: !220)
!259 = !DILocation(line: 189, column: 24, scope: !220)
!260 = !DILocation(line: 189, column: 11, scope: !220)
!261 = !DILocation(line: 189, column: 43, scope: !220)
!262 = !DILocation(line: 189, column: 49, scope: !220)
!263 = !DILocation(line: 189, column: 93, scope: !220)
!264 = !DILocation(line: 189, column: 123, scope: !220)
!265 = !DILocation(line: 189, column: 90, scope: !220)
!266 = !DILocation(line: 189, column: 67, scope: !220)
!267 = !DILocation(line: 189, column: 133, scope: !220)
!268 = !DILocation(line: 189, column: 57, scope: !220)
!269 = !DILocation(line: 189, column: 54, scope: !220)
!270 = !DILocation(line: 189, column: 41, scope: !220)
!271 = !DILocation(line: 189, column: 143, scope: !220)
!272 = !DILocation(line: 189, column: 149, scope: !220)
!273 = !DILocation(line: 189, column: 193, scope: !220)
!274 = !DILocation(line: 189, column: 223, scope: !220)
!275 = !DILocation(line: 189, column: 190, scope: !220)
!276 = !DILocation(line: 189, column: 167, scope: !220)
!277 = !DILocation(line: 189, column: 233, scope: !220)
!278 = !DILocation(line: 189, column: 157, scope: !220)
!279 = !DILocation(line: 189, column: 8, scope: !220)
!280 = !DILocalVariable(name: "key", scope: !220, file: !111, line: 191, type: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !134, line: 108, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !134, line: 34, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !282, file: !134, line: 35, baseType: !65, size: 32)
!285 = !DILocation(line: 191, column: 19, scope: !220)
!286 = !DILocalVariable(name: "l", arg: 1, scope: !287, file: !134, line: 160, type: !290)
!287 = distinct !DISubprogram(name: "k_spin_lock", scope: !134, file: !134, line: 160, type: !288, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!288 = !DISubroutineType(types: !289)
!289 = !{!281, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!291 = !DILocation(line: 160, column: 94, scope: !287, inlinedAt: !292)
!292 = distinct !DILocation(line: 191, column: 25, scope: !220)
!293 = !DILocation(line: 162, column: 9, scope: !287, inlinedAt: !292)
!294 = !DILocalVariable(name: "k", scope: !287, file: !134, line: 163, type: !281)
!295 = !DILocation(line: 163, column: 19, scope: !287, inlinedAt: !292)
!296 = !DILocalVariable(name: "key", scope: !297, file: !298, line: 44, type: !59)
!297 = distinct !DISubprogram(name: "arch_irq_lock", scope: !298, file: !298, line: 42, type: !299, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!298 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!299 = !DISubroutineType(types: !300)
!300 = !{!59}
!301 = !DILocation(line: 44, column: 15, scope: !297, inlinedAt: !302)
!302 = distinct !DILocation(line: 169, column: 10, scope: !287, inlinedAt: !292)
!303 = !DILocation(line: 48, column: 2, scope: !297, inlinedAt: !302)
!304 = !{i64 60017}
!305 = !DILocation(line: 80, column: 9, scope: !297, inlinedAt: !302)
!306 = !DILocation(line: 169, column: 8, scope: !287, inlinedAt: !292)
!307 = !DILocation(line: 171, column: 26, scope: !287, inlinedAt: !292)
!308 = !DILocalVariable(name: "l", arg: 1, scope: !309, file: !134, line: 110, type: !290)
!309 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !134, file: !134, line: 110, type: !310, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !290}
!312 = !DILocation(line: 110, column: 94, scope: !309, inlinedAt: !313)
!313 = distinct !DILocation(line: 171, column: 2, scope: !287, inlinedAt: !292)
!314 = !DILocation(line: 112, column: 9, scope: !309, inlinedAt: !313)
!315 = !DILocation(line: 177, column: 27, scope: !287, inlinedAt: !292)
!316 = !DILocalVariable(name: "l", arg: 1, scope: !317, file: !134, line: 121, type: !290)
!317 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !134, file: !134, line: 121, type: !310, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!318 = !DILocation(line: 121, column: 95, scope: !317, inlinedAt: !319)
!319 = distinct !DILocation(line: 177, column: 2, scope: !287, inlinedAt: !292)
!320 = !DILocation(line: 123, column: 9, scope: !317, inlinedAt: !319)
!321 = !DILocation(line: 179, column: 2, scope: !287, inlinedAt: !292)
!322 = !DILocation(line: 191, column: 25, scope: !220)
!323 = !DILocalVariable(name: "pending", scope: !220, file: !111, line: 193, type: !58)
!324 = !DILocation(line: 193, column: 11, scope: !220)
!325 = !DILocation(line: 193, column: 21, scope: !220)
!326 = !DILocation(line: 195, column: 58, scope: !220)
!327 = !DILocation(line: 195, column: 7, scope: !220)
!328 = !DILocation(line: 197, column: 17, scope: !220)
!329 = !DILocation(line: 197, column: 14, scope: !220)
!330 = !DILocation(line: 198, column: 15, scope: !220)
!331 = !DILocalVariable(name: "unannounced", scope: !220, file: !111, line: 200, type: !58)
!332 = !DILocation(line: 200, column: 11, scope: !220)
!333 = !DILocation(line: 200, column: 25, scope: !220)
!334 = !DILocation(line: 200, column: 39, scope: !220)
!335 = !DILocation(line: 200, column: 37, scope: !220)
!336 = !DILocation(line: 202, column: 15, scope: !337)
!337 = distinct !DILexicalBlock(scope: !220, file: !111, line: 202, column: 6)
!338 = !DILocation(line: 202, column: 27, scope: !337)
!339 = !DILocation(line: 202, column: 6, scope: !220)
!340 = !DILocation(line: 209, column: 40, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !111, line: 202, column: 32)
!342 = !DILocation(line: 209, column: 70, scope: !341)
!343 = !DILocation(line: 209, column: 78, scope: !341)
!344 = !DILocation(line: 209, column: 25, scope: !341)
!345 = !DILocation(line: 209, column: 16, scope: !341)
!346 = !DILocation(line: 209, column: 111, scope: !341)
!347 = !DILocation(line: 209, column: 141, scope: !341)
!348 = !DILocation(line: 209, column: 149, scope: !341)
!349 = !DILocation(line: 209, column: 13, scope: !341)
!350 = !DILocation(line: 210, column: 2, scope: !341)
!351 = !DILocation(line: 212, column: 11, scope: !352)
!352 = distinct !DILexicalBlock(scope: !337, file: !111, line: 210, column: 9)
!353 = !DILocation(line: 212, column: 20, scope: !352)
!354 = !DILocation(line: 212, column: 50, scope: !352)
!355 = !DILocation(line: 212, column: 17, scope: !352)
!356 = !DILocation(line: 212, column: 9, scope: !352)
!357 = !DILocation(line: 215, column: 12, scope: !352)
!358 = !DILocation(line: 215, column: 9, scope: !352)
!359 = !DILocation(line: 216, column: 14, scope: !352)
!360 = !DILocation(line: 216, column: 25, scope: !352)
!361 = !DILocation(line: 216, column: 55, scope: !352)
!362 = !DILocation(line: 216, column: 21, scope: !352)
!363 = !DILocation(line: 216, column: 65, scope: !352)
!364 = !DILocation(line: 216, column: 74, scope: !352)
!365 = !DILocation(line: 216, column: 104, scope: !352)
!366 = !DILocation(line: 216, column: 70, scope: !352)
!367 = !DILocation(line: 216, column: 118, scope: !352)
!368 = !DILocation(line: 216, column: 148, scope: !352)
!369 = !DILocation(line: 216, column: 115, scope: !352)
!370 = !DILocation(line: 216, column: 9, scope: !352)
!371 = !DILocation(line: 217, column: 12, scope: !352)
!372 = !DILocation(line: 217, column: 9, scope: !352)
!373 = !DILocation(line: 218, column: 14, scope: !352)
!374 = !DILocation(line: 218, column: 49, scope: !352)
!375 = !DILocation(line: 218, column: 79, scope: !352)
!376 = !DILocation(line: 218, column: 87, scope: !352)
!377 = !DILocation(line: 218, column: 34, scope: !352)
!378 = !DILocation(line: 218, column: 25, scope: !352)
!379 = !DILocation(line: 218, column: 120, scope: !352)
!380 = !DILocation(line: 218, column: 150, scope: !352)
!381 = !DILocation(line: 218, column: 158, scope: !352)
!382 = !DILocation(line: 218, column: 21, scope: !352)
!383 = !DILocation(line: 218, column: 12, scope: !352)
!384 = !DILocation(line: 218, column: 171, scope: !352)
!385 = !DILocation(line: 218, column: 206, scope: !352)
!386 = !DILocation(line: 218, column: 236, scope: !352)
!387 = !DILocation(line: 218, column: 244, scope: !352)
!388 = !DILocation(line: 218, column: 191, scope: !352)
!389 = !DILocation(line: 218, column: 182, scope: !352)
!390 = !DILocation(line: 218, column: 277, scope: !352)
!391 = !DILocation(line: 218, column: 307, scope: !352)
!392 = !DILocation(line: 218, column: 315, scope: !352)
!393 = !DILocation(line: 218, column: 9, scope: !352)
!394 = !DILocation(line: 219, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !352, file: !111, line: 219, column: 7)
!396 = !DILocation(line: 219, column: 43, scope: !395)
!397 = !DILocation(line: 219, column: 73, scope: !395)
!398 = !DILocation(line: 219, column: 40, scope: !395)
!399 = !DILocation(line: 219, column: 17, scope: !395)
!400 = !DILocation(line: 219, column: 83, scope: !395)
!401 = !DILocation(line: 219, column: 91, scope: !395)
!402 = !DILocation(line: 219, column: 121, scope: !395)
!403 = !DILocation(line: 219, column: 90, scope: !395)
!404 = !DILocation(line: 219, column: 88, scope: !395)
!405 = !DILocation(line: 219, column: 13, scope: !395)
!406 = !DILocation(line: 219, column: 7, scope: !352)
!407 = !DILocation(line: 220, column: 44, scope: !408)
!408 = distinct !DILexicalBlock(scope: !395, file: !111, line: 219, column: 132)
!409 = !DILocation(line: 220, column: 74, scope: !408)
!410 = !DILocation(line: 220, column: 41, scope: !408)
!411 = !DILocation(line: 220, column: 18, scope: !408)
!412 = !DILocation(line: 220, column: 84, scope: !408)
!413 = !DILocation(line: 220, column: 92, scope: !408)
!414 = !DILocation(line: 220, column: 122, scope: !408)
!415 = !DILocation(line: 220, column: 91, scope: !408)
!416 = !DILocation(line: 220, column: 89, scope: !408)
!417 = !DILocation(line: 220, column: 16, scope: !408)
!418 = !DILocation(line: 220, column: 14, scope: !408)
!419 = !DILocation(line: 221, column: 3, scope: !408)
!420 = !DILocation(line: 222, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !395, file: !111, line: 221, column: 10)
!422 = !DILocation(line: 222, column: 14, scope: !421)
!423 = !DILocation(line: 226, column: 58, scope: !220)
!424 = !DILocation(line: 226, column: 7, scope: !220)
!425 = !DILocation(line: 228, column: 58, scope: !220)
!426 = !DILocation(line: 228, column: 68, scope: !220)
!427 = !DILocation(line: 228, column: 56, scope: !220)
!428 = !DILocation(line: 229, column: 55, scope: !220)
!429 = !DILocation(line: 241, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !220, file: !111, line: 241, column: 6)
!431 = !DILocation(line: 241, column: 13, scope: !430)
!432 = !DILocation(line: 241, column: 11, scope: !430)
!433 = !DILocation(line: 241, column: 6, scope: !220)
!434 = !DILocation(line: 242, column: 19, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !111, line: 241, column: 19)
!436 = !DILocation(line: 242, column: 27, scope: !435)
!437 = !DILocation(line: 242, column: 40, scope: !435)
!438 = !DILocation(line: 242, column: 38, scope: !435)
!439 = !DILocation(line: 242, column: 24, scope: !435)
!440 = !DILocation(line: 242, column: 15, scope: !435)
!441 = !DILocation(line: 243, column: 2, scope: !435)
!442 = !DILocation(line: 244, column: 19, scope: !443)
!443 = distinct !DILexicalBlock(scope: !430, file: !111, line: 243, column: 9)
!444 = !DILocation(line: 244, column: 26, scope: !443)
!445 = !DILocation(line: 244, column: 24, scope: !443)
!446 = !DILocation(line: 244, column: 15, scope: !443)
!447 = !DILocation(line: 246, column: 2, scope: !220)
!448 = !DILocalVariable(name: "l", arg: 1, scope: !449, file: !134, line: 235, type: !290)
!449 = distinct !DISubprogram(name: "k_spin_unlock", scope: !134, file: !134, line: 235, type: !450, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !290, !281}
!452 = !DILocation(line: 235, column: 84, scope: !449, inlinedAt: !453)
!453 = distinct !DILocation(line: 246, column: 2, scope: !220)
!454 = !DILocalVariable(name: "key", arg: 2, scope: !449, file: !134, line: 236, type: !281)
!455 = !DILocation(line: 236, column: 23, scope: !449, inlinedAt: !453)
!456 = !DILocation(line: 238, column: 9, scope: !449, inlinedAt: !453)
!457 = !DILocation(line: 261, column: 22, scope: !449, inlinedAt: !453)
!458 = !DILocalVariable(name: "key", arg: 1, scope: !459, file: !298, line: 88, type: !59)
!459 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !298, file: !298, line: 88, type: !460, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !59}
!462 = !DILocation(line: 88, column: 80, scope: !459, inlinedAt: !463)
!463 = distinct !DILocation(line: 261, column: 2, scope: !449, inlinedAt: !453)
!464 = !DILocation(line: 91, column: 6, scope: !465, inlinedAt: !463)
!465 = distinct !DILexicalBlock(scope: !459, file: !298, line: 91, column: 6)
!466 = !DILocation(line: 91, column: 10, scope: !465, inlinedAt: !463)
!467 = !DILocation(line: 91, column: 6, scope: !459, inlinedAt: !463)
!468 = !DILocation(line: 92, column: 3, scope: !469, inlinedAt: !463)
!469 = distinct !DILexicalBlock(scope: !465, file: !298, line: 91, column: 17)
!470 = !DILocation(line: 94, column: 2, scope: !459, inlinedAt: !463)
!471 = !{i64 60321}
!472 = !DILocation(line: 114, column: 1, scope: !459, inlinedAt: !463)
!473 = !DILocation(line: 248, column: 1, scope: !220)
!474 = distinct !DISubprogram(name: "sys_clock_elapsed", scope: !111, file: !111, line: 250, type: !187, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!475 = !DILocalVariable(name: "key", scope: !474, file: !111, line: 256, type: !281)
!476 = !DILocation(line: 256, column: 19, scope: !474)
!477 = !DILocation(line: 160, column: 94, scope: !287, inlinedAt: !478)
!478 = distinct !DILocation(line: 256, column: 25, scope: !474)
!479 = !DILocation(line: 162, column: 9, scope: !287, inlinedAt: !478)
!480 = !DILocation(line: 163, column: 19, scope: !287, inlinedAt: !478)
!481 = !DILocation(line: 44, column: 15, scope: !297, inlinedAt: !482)
!482 = distinct !DILocation(line: 169, column: 10, scope: !287, inlinedAt: !478)
!483 = !DILocation(line: 48, column: 2, scope: !297, inlinedAt: !482)
!484 = !DILocation(line: 80, column: 9, scope: !297, inlinedAt: !482)
!485 = !DILocation(line: 169, column: 8, scope: !287, inlinedAt: !478)
!486 = !DILocation(line: 171, column: 26, scope: !287, inlinedAt: !478)
!487 = !DILocation(line: 110, column: 94, scope: !309, inlinedAt: !488)
!488 = distinct !DILocation(line: 171, column: 2, scope: !287, inlinedAt: !478)
!489 = !DILocation(line: 112, column: 9, scope: !309, inlinedAt: !488)
!490 = !DILocation(line: 177, column: 27, scope: !287, inlinedAt: !478)
!491 = !DILocation(line: 121, column: 95, scope: !317, inlinedAt: !492)
!492 = distinct !DILocation(line: 177, column: 2, scope: !287, inlinedAt: !478)
!493 = !DILocation(line: 123, column: 9, scope: !317, inlinedAt: !492)
!494 = !DILocation(line: 179, column: 2, scope: !287, inlinedAt: !478)
!495 = !DILocation(line: 256, column: 25, scope: !474)
!496 = !DILocalVariable(name: "unannounced", scope: !474, file: !111, line: 257, type: !58)
!497 = !DILocation(line: 257, column: 11, scope: !474)
!498 = !DILocation(line: 257, column: 25, scope: !474)
!499 = !DILocation(line: 257, column: 39, scope: !474)
!500 = !DILocation(line: 257, column: 37, scope: !474)
!501 = !DILocalVariable(name: "cyc", scope: !474, file: !111, line: 258, type: !58)
!502 = !DILocation(line: 258, column: 11, scope: !474)
!503 = !DILocation(line: 258, column: 17, scope: !474)
!504 = !DILocation(line: 258, column: 29, scope: !474)
!505 = !DILocation(line: 258, column: 27, scope: !474)
!506 = !DILocation(line: 260, column: 2, scope: !474)
!507 = !DILocation(line: 235, column: 84, scope: !449, inlinedAt: !508)
!508 = distinct !DILocation(line: 260, column: 2, scope: !474)
!509 = !DILocation(line: 236, column: 23, scope: !449, inlinedAt: !508)
!510 = !DILocation(line: 238, column: 9, scope: !449, inlinedAt: !508)
!511 = !DILocation(line: 261, column: 22, scope: !449, inlinedAt: !508)
!512 = !DILocation(line: 88, column: 80, scope: !459, inlinedAt: !513)
!513 = distinct !DILocation(line: 261, column: 2, scope: !449, inlinedAt: !508)
!514 = !DILocation(line: 91, column: 6, scope: !465, inlinedAt: !513)
!515 = !DILocation(line: 91, column: 10, scope: !465, inlinedAt: !513)
!516 = !DILocation(line: 91, column: 6, scope: !459, inlinedAt: !513)
!517 = !DILocation(line: 92, column: 3, scope: !469, inlinedAt: !513)
!518 = !DILocation(line: 94, column: 2, scope: !459, inlinedAt: !513)
!519 = !DILocation(line: 114, column: 1, scope: !459, inlinedAt: !513)
!520 = !DILocation(line: 261, column: 9, scope: !474)
!521 = !DILocation(line: 261, column: 16, scope: !474)
!522 = !DILocation(line: 261, column: 46, scope: !474)
!523 = !DILocation(line: 261, column: 13, scope: !474)
!524 = !DILocation(line: 261, column: 2, scope: !474)
!525 = distinct !DISubprogram(name: "sys_clock_cycle_get_32", scope: !111, file: !111, line: 264, type: !187, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!526 = !DILocalVariable(name: "key", scope: !525, file: !111, line: 266, type: !281)
!527 = !DILocation(line: 266, column: 19, scope: !525)
!528 = !DILocation(line: 160, column: 94, scope: !287, inlinedAt: !529)
!529 = distinct !DILocation(line: 266, column: 25, scope: !525)
!530 = !DILocation(line: 162, column: 9, scope: !287, inlinedAt: !529)
!531 = !DILocation(line: 163, column: 19, scope: !287, inlinedAt: !529)
!532 = !DILocation(line: 44, column: 15, scope: !297, inlinedAt: !533)
!533 = distinct !DILocation(line: 169, column: 10, scope: !287, inlinedAt: !529)
!534 = !DILocation(line: 48, column: 2, scope: !297, inlinedAt: !533)
!535 = !DILocation(line: 80, column: 9, scope: !297, inlinedAt: !533)
!536 = !DILocation(line: 169, column: 8, scope: !287, inlinedAt: !529)
!537 = !DILocation(line: 171, column: 26, scope: !287, inlinedAt: !529)
!538 = !DILocation(line: 110, column: 94, scope: !309, inlinedAt: !539)
!539 = distinct !DILocation(line: 171, column: 2, scope: !287, inlinedAt: !529)
!540 = !DILocation(line: 112, column: 9, scope: !309, inlinedAt: !539)
!541 = !DILocation(line: 177, column: 27, scope: !287, inlinedAt: !529)
!542 = !DILocation(line: 121, column: 95, scope: !317, inlinedAt: !543)
!543 = distinct !DILocation(line: 177, column: 2, scope: !287, inlinedAt: !529)
!544 = !DILocation(line: 123, column: 9, scope: !317, inlinedAt: !543)
!545 = !DILocation(line: 179, column: 2, scope: !287, inlinedAt: !529)
!546 = !DILocation(line: 266, column: 25, scope: !525)
!547 = !DILocalVariable(name: "ret", scope: !525, file: !111, line: 267, type: !58)
!548 = !DILocation(line: 267, column: 11, scope: !525)
!549 = !DILocation(line: 267, column: 17, scope: !525)
!550 = !DILocation(line: 269, column: 9, scope: !525)
!551 = !DILocation(line: 269, column: 6, scope: !525)
!552 = !DILocation(line: 270, column: 2, scope: !525)
!553 = !DILocation(line: 235, column: 84, scope: !449, inlinedAt: !554)
!554 = distinct !DILocation(line: 270, column: 2, scope: !525)
!555 = !DILocation(line: 236, column: 23, scope: !449, inlinedAt: !554)
!556 = !DILocation(line: 238, column: 9, scope: !449, inlinedAt: !554)
!557 = !DILocation(line: 261, column: 22, scope: !449, inlinedAt: !554)
!558 = !DILocation(line: 88, column: 80, scope: !459, inlinedAt: !559)
!559 = distinct !DILocation(line: 261, column: 2, scope: !449, inlinedAt: !554)
!560 = !DILocation(line: 91, column: 6, scope: !465, inlinedAt: !559)
!561 = !DILocation(line: 91, column: 10, scope: !465, inlinedAt: !559)
!562 = !DILocation(line: 91, column: 6, scope: !459, inlinedAt: !559)
!563 = !DILocation(line: 92, column: 3, scope: !469, inlinedAt: !559)
!564 = !DILocation(line: 94, column: 2, scope: !459, inlinedAt: !559)
!565 = !DILocation(line: 114, column: 1, scope: !459, inlinedAt: !559)
!566 = !DILocation(line: 271, column: 9, scope: !525)
!567 = !DILocation(line: 271, column: 2, scope: !525)
!568 = distinct !DISubprogram(name: "sys_clock_idle_exit", scope: !111, file: !111, line: 285, type: !569, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!569 = !DISubroutineType(types: !570)
!570 = !{null}
!571 = !DILocation(line: 287, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !111, line: 287, column: 6)
!573 = !DILocation(line: 287, column: 16, scope: !572)
!574 = !DILocation(line: 287, column: 6, scope: !568)
!575 = !DILocation(line: 288, column: 57, scope: !576)
!576 = distinct !DILexicalBlock(scope: !572, file: !111, line: 287, column: 31)
!577 = !DILocation(line: 289, column: 2, scope: !576)
!578 = !DILocation(line: 290, column: 1, scope: !568)
!579 = distinct !DISubprogram(name: "sys_clock_disable", scope: !111, file: !111, line: 292, type: !569, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !135)
!580 = !DILocation(line: 294, column: 56, scope: !579)
!581 = !DILocation(line: 295, column: 1, scope: !579)
!582 = distinct !DISubprogram(name: "sys_clock_driver_init", scope: !111, file: !111, line: 297, type: !121, scopeLine: 298, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!583 = !DILocation(line: 300, column: 2, scope: !582)
!584 = !DILocation(line: 301, column: 15, scope: !582)
!585 = !DILocation(line: 301, column: 45, scope: !582)
!586 = !DILocation(line: 301, column: 54, scope: !582)
!587 = !DILocation(line: 301, column: 12, scope: !582)
!588 = !DILocation(line: 302, column: 15, scope: !582)
!589 = !DILocation(line: 303, column: 58, scope: !582)
!590 = !DILocation(line: 303, column: 56, scope: !582)
!591 = !DILocation(line: 304, column: 55, scope: !582)
!592 = !DILocation(line: 305, column: 56, scope: !582)
!593 = !DILocation(line: 308, column: 2, scope: !582)
!594 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !53, file: !53, line: 732, type: !595, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !135)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !597, !58}
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !6, line: 107, baseType: !5)
!598 = !DILocalVariable(name: "IRQn", arg: 1, scope: !594, file: !53, line: 732, type: !597)
!599 = !DILocation(line: 732, column: 51, scope: !594)
!600 = !DILocalVariable(name: "priority", arg: 2, scope: !594, file: !53, line: 732, type: !58)
!601 = !DILocation(line: 732, column: 66, scope: !594)
!602 = !DILocation(line: 734, column: 17, scope: !603)
!603 = distinct !DILexicalBlock(scope: !594, file: !53, line: 734, column: 7)
!604 = !DILocation(line: 734, column: 7, scope: !603)
!605 = !DILocation(line: 734, column: 23, scope: !603)
!606 = !DILocation(line: 734, column: 7, scope: !594)
!607 = !DILocation(line: 736, column: 183, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !53, line: 735, column: 3)
!609 = !DILocation(line: 736, column: 173, scope: !608)
!610 = !DILocation(line: 736, column: 190, scope: !608)
!611 = !DILocation(line: 736, column: 110, scope: !608)
!612 = !DILocation(line: 736, column: 240, scope: !608)
!613 = !DILocation(line: 736, column: 230, scope: !608)
!614 = !DILocation(line: 736, column: 249, scope: !608)
!615 = !DILocation(line: 736, column: 259, scope: !608)
!616 = !DILocation(line: 736, column: 212, scope: !608)
!617 = !DILocation(line: 736, column: 203, scope: !608)
!618 = !DILocation(line: 736, column: 201, scope: !608)
!619 = !DILocation(line: 737, column: 11, scope: !608)
!620 = !DILocation(line: 737, column: 20, scope: !608)
!621 = !DILocation(line: 737, column: 33, scope: !608)
!622 = !DILocation(line: 737, column: 81, scope: !608)
!623 = !DILocation(line: 737, column: 71, scope: !608)
!624 = !DILocation(line: 737, column: 90, scope: !608)
!625 = !DILocation(line: 737, column: 100, scope: !608)
!626 = !DILocation(line: 737, column: 53, scope: !608)
!627 = !DILocation(line: 736, column: 268, scope: !608)
!628 = !DILocation(line: 736, column: 78, scope: !608)
!629 = !DILocation(line: 736, column: 68, scope: !608)
!630 = !DILocation(line: 736, column: 85, scope: !608)
!631 = !DILocation(line: 736, column: 5, scope: !608)
!632 = !DILocation(line: 736, column: 96, scope: !608)
!633 = !DILocation(line: 738, column: 3, scope: !608)
!634 = !DILocation(line: 741, column: 202, scope: !635)
!635 = distinct !DILexicalBlock(scope: !603, file: !53, line: 740, column: 3)
!636 = !DILocation(line: 741, column: 192, scope: !635)
!637 = !DILocation(line: 741, column: 209, scope: !635)
!638 = !DILocation(line: 741, column: 218, scope: !635)
!639 = !DILocation(line: 741, column: 224, scope: !635)
!640 = !DILocation(line: 741, column: 127, scope: !635)
!641 = !DILocation(line: 741, column: 274, scope: !635)
!642 = !DILocation(line: 741, column: 264, scope: !635)
!643 = !DILocation(line: 741, column: 283, scope: !635)
!644 = !DILocation(line: 741, column: 293, scope: !635)
!645 = !DILocation(line: 741, column: 246, scope: !635)
!646 = !DILocation(line: 741, column: 237, scope: !635)
!647 = !DILocation(line: 741, column: 235, scope: !635)
!648 = !DILocation(line: 742, column: 11, scope: !635)
!649 = !DILocation(line: 742, column: 20, scope: !635)
!650 = !DILocation(line: 742, column: 33, scope: !635)
!651 = !DILocation(line: 742, column: 81, scope: !635)
!652 = !DILocation(line: 742, column: 71, scope: !635)
!653 = !DILocation(line: 742, column: 90, scope: !635)
!654 = !DILocation(line: 742, column: 100, scope: !635)
!655 = !DILocation(line: 742, column: 53, scope: !635)
!656 = !DILocation(line: 741, column: 302, scope: !635)
!657 = !DILocation(line: 741, column: 80, scope: !635)
!658 = !DILocation(line: 741, column: 70, scope: !635)
!659 = !DILocation(line: 741, column: 87, scope: !635)
!660 = !DILocation(line: 741, column: 96, scope: !635)
!661 = !DILocation(line: 741, column: 102, scope: !635)
!662 = !DILocation(line: 741, column: 5, scope: !635)
!663 = !DILocation(line: 741, column: 113, scope: !635)
!664 = !DILocation(line: 744, column: 1, scope: !594)
