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

; Function Attrs: nounwind optsize
define hidden void @sys_clock_isr(ptr noundef %0) #0 !dbg !149 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !154, metadata !DIExpression()), !dbg !157
  %5 = load ptr, ptr %2, align 4, !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %3, metadata !155, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %4, metadata !156, metadata !DIExpression()), !dbg !162
  %6 = call i32 @elapsed() #6, !dbg !163
  %7 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !164
  %8 = load i32, ptr @cycle_count, align 4, !dbg !165
  %9 = add i32 %8, %7, !dbg !165
  store i32 %9, ptr @cycle_count, align 4, !dbg !165
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !166
  %10 = load i32, ptr @cycle_count, align 4, !dbg !167
  %11 = load i32, ptr @announced_cycles, align 4, !dbg !170
  %12 = sub i32 %10, %11, !dbg !171
  store i32 %12, ptr %3, align 4, !dbg !172
  %13 = load i32, ptr %3, align 4, !dbg !173
  %14 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !174
  %15 = sdiv i32 %14, 10000, !dbg !175
  %16 = udiv i32 %13, %15, !dbg !176
  store i32 %16, ptr %4, align 4, !dbg !177
  %17 = load i32, ptr %4, align 4, !dbg !178
  %18 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !179
  %19 = sdiv i32 %18, 10000, !dbg !180
  %20 = mul i32 %17, %19, !dbg !181
  %21 = load i32, ptr @announced_cycles, align 4, !dbg !182
  %22 = add i32 %21, %20, !dbg !182
  store i32 %22, ptr @announced_cycles, align 4, !dbg !182
  %23 = load i32, ptr %4, align 4, !dbg !183
  call void @sys_clock_announce(i32 noundef %23) #6, !dbg !184
  call void @z_arm_int_exit() #6, !dbg !185
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !186
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !186
  ret void, !dbg !186
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define internal i32 @elapsed() #0 !dbg !187 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #5, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %1, metadata !191, metadata !DIExpression()), !dbg !195
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !196
  store i32 %4, ptr %1, align 4, !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #5, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !198
  %5 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !199
  store i32 %5, ptr %2, align 4, !dbg !198
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %3, metadata !193, metadata !DIExpression()), !dbg !201
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !202
  store i32 %6, ptr %3, align 4, !dbg !201
  %7 = load i32, ptr %2, align 4, !dbg !203
  %8 = and i32 %7, 65536, !dbg !205
  %9 = icmp ne i32 %8, 0, !dbg !205
  br i1 %9, label %14, label %10, !dbg !206

10:                                               ; preds = %0
  %11 = load i32, ptr %1, align 4, !dbg !207
  %12 = load i32, ptr %3, align 4, !dbg !208
  %13 = icmp ult i32 %11, %12, !dbg !209
  br i1 %13, label %14, label %19, !dbg !210

14:                                               ; preds = %10, %0
  %15 = load i32, ptr @last_load, align 4, !dbg !211
  %16 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !213
  %17 = add i32 %16, %15, !dbg !213
  store volatile i32 %17, ptr @overflow_cyc, align 4, !dbg !213
  %18 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !214
  br label %19, !dbg !215

19:                                               ; preds = %14, %10
  %20 = load i32, ptr @last_load, align 4, !dbg !216
  %21 = load i32, ptr %3, align 4, !dbg !217
  %22 = sub i32 %20, %21, !dbg !218
  %23 = load volatile i32, ptr @overflow_cyc, align 4, !dbg !219
  %24 = add i32 %22, %23, !dbg !220
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #5, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #5, !dbg !221
  ret i32 %24, !dbg !222
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @sys_clock_hw_cycles_per_sec() #3 !dbg !223 {
  ret i32 48000000, !dbg !225
}

; Function Attrs: optsize
declare !dbg !226 dso_local void @sys_clock_announce(i32 noundef) #4

; Function Attrs: optsize
declare !dbg !230 dso_local void @z_arm_int_exit() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
define hidden void @sys_clock_set_timeout(i32 noundef %0, i1 noundef zeroext %1) #0 !dbg !234 {
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
  call void @llvm.dbg.declare(metadata ptr %11, metadata !239, metadata !DIExpression()), !dbg !252
  %20 = zext i1 %1 to i8
  store i8 %20, ptr %12, align 1
  call void @llvm.dbg.declare(metadata ptr %12, metadata !240, metadata !DIExpression()), !dbg !253
  %21 = load i8, ptr %12, align 1, !dbg !254, !range !256, !noundef !135
  %22 = trunc i8 %21 to i1, !dbg !254
  br i1 %22, label %23, label %30, !dbg !257

23:                                               ; preds = %2
  %24 = load i32, ptr %11, align 4, !dbg !258
  %25 = sext i32 %24 to i64, !dbg !258
  %26 = icmp eq i64 %25, -1, !dbg !259
  br i1 %26, label %27, label %30, !dbg !260

27:                                               ; preds = %23
  %28 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !261
  %29 = and i32 %28, -2, !dbg !261
  store volatile i32 %29, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !261
  store i32 -16777216, ptr @last_load, align 4, !dbg !263
  br label %213, !dbg !264

30:                                               ; preds = %23, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #5, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %13, metadata !241, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #5, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %14, metadata !242, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #5, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %15, metadata !243, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #5, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %16, metadata !244, metadata !DIExpression()), !dbg !271
  %31 = load i32, ptr @last_load, align 4, !dbg !272
  store i32 %31, ptr %16, align 4, !dbg !271
  %32 = load i32, ptr %11, align 4, !dbg !273
  %33 = sext i32 %32 to i64, !dbg !273
  %34 = icmp eq i64 %33, -1, !dbg !274
  br i1 %34, label %35, label %41, !dbg !275

35:                                               ; preds = %30
  %36 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !276
  %37 = sdiv i32 %36, 10000, !dbg !277
  %38 = sdiv i32 16777215, %37, !dbg !278
  %39 = sext i32 %38 to i64, !dbg !279
  %40 = sub nsw i64 %39, 1, !dbg !280
  br label %44, !dbg !275

41:                                               ; preds = %30
  %42 = load i32, ptr %11, align 4, !dbg !281
  %43 = sext i32 %42 to i64, !dbg !281
  br label %44, !dbg !275

44:                                               ; preds = %41, %35
  %45 = phi i64 [ %40, %35 ], [ %43, %41 ], !dbg !275
  %46 = trunc i64 %45 to i32, !dbg !275
  store i32 %46, ptr %11, align 4, !dbg !282
  %47 = load i32, ptr %11, align 4, !dbg !283
  %48 = sub nsw i32 %47, 1, !dbg !284
  %49 = icmp sle i32 %48, 0, !dbg !285
  br i1 %49, label %50, label %51, !dbg !286

50:                                               ; preds = %44
  br label %73, !dbg !286

51:                                               ; preds = %44
  %52 = load i32, ptr %11, align 4, !dbg !287
  %53 = sub nsw i32 %52, 1, !dbg !288
  %54 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !289
  %55 = sdiv i32 %54, 10000, !dbg !290
  %56 = sdiv i32 16777215, %55, !dbg !291
  %57 = sext i32 %56 to i64, !dbg !292
  %58 = sub nsw i64 %57, 1, !dbg !293
  %59 = trunc i64 %58 to i32, !dbg !294
  %60 = icmp slt i32 %53, %59, !dbg !295
  br i1 %60, label %61, label %64, !dbg !296

61:                                               ; preds = %51
  %62 = load i32, ptr %11, align 4, !dbg !297
  %63 = sub nsw i32 %62, 1, !dbg !298
  br label %71, !dbg !296

64:                                               ; preds = %51
  %65 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !299
  %66 = sdiv i32 %65, 10000, !dbg !300
  %67 = sdiv i32 16777215, %66, !dbg !301
  %68 = sext i32 %67 to i64, !dbg !302
  %69 = sub nsw i64 %68, 1, !dbg !303
  %70 = trunc i64 %69 to i32, !dbg !304
  br label %71, !dbg !296

71:                                               ; preds = %64, %61
  %72 = phi i32 [ %63, %61 ], [ %70, %64 ], !dbg !296
  br label %73, !dbg !286

73:                                               ; preds = %71, %50
  %74 = phi i32 [ 0, %50 ], [ %72, %71 ], !dbg !286
  store i32 %74, ptr %11, align 4, !dbg !305
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #5, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %17, metadata !245, metadata !DIExpression()), !dbg !307
  store ptr @lock, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !308, metadata !DIExpression()), !dbg !315
  %75 = load ptr, ptr %10, align 4, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %9, metadata !314, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %6, metadata !325, metadata !DIExpression()), !dbg !327
  %76 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !328, !srcloc !329
  store i32 %76, ptr %6, align 4, !dbg !328
  %77 = load i32, ptr %6, align 4, !dbg !330
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5, !dbg !331
  store i32 %77, ptr %9, align 4, !dbg !332
  %78 = load ptr, ptr %10, align 4, !dbg !333
  store ptr %78, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !334, metadata !DIExpression()), !dbg !339
  %79 = load ptr, ptr %5, align 4, !dbg !341
  %80 = load ptr, ptr %10, align 4, !dbg !342
  store ptr %80, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !346
  %81 = load ptr, ptr %4, align 4, !dbg !348
  %82 = load i32, ptr %9, align 4, !dbg !349
  %83 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !350
  store i32 %82, ptr %83, align 4, !dbg !350
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #5, !dbg !351
  call void @llvm.dbg.declare(metadata ptr %18, metadata !250, metadata !DIExpression()), !dbg !352
  %84 = call i32 @elapsed() #6, !dbg !353
  store i32 %84, ptr %18, align 4, !dbg !352
  %85 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !354
  store i32 %85, ptr %14, align 4, !dbg !355
  %86 = load i32, ptr %18, align 4, !dbg !356
  %87 = load i32, ptr @cycle_count, align 4, !dbg !357
  %88 = add i32 %87, %86, !dbg !357
  store i32 %88, ptr @cycle_count, align 4, !dbg !357
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #5, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %19, metadata !251, metadata !DIExpression()), !dbg !360
  %89 = load i32, ptr @cycle_count, align 4, !dbg !361
  %90 = load i32, ptr @announced_cycles, align 4, !dbg !362
  %91 = sub i32 %89, %90, !dbg !363
  store i32 %91, ptr %19, align 4, !dbg !360
  %92 = load i32, ptr %19, align 4, !dbg !364
  %93 = icmp slt i32 %92, 0, !dbg !366
  br i1 %93, label %94, label %106, !dbg !367

94:                                               ; preds = %73
  %95 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !368
  %96 = sdiv i32 %95, 10000, !dbg !370
  %97 = udiv i32 %96, 16, !dbg !371
  %98 = icmp ugt i32 1024, %97, !dbg !372
  br i1 %98, label %99, label %100, !dbg !373

99:                                               ; preds = %94
  br label %104, !dbg !373

100:                                              ; preds = %94
  %101 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !374
  %102 = sdiv i32 %101, 10000, !dbg !375
  %103 = udiv i32 %102, 16, !dbg !376
  br label %104, !dbg !373

104:                                              ; preds = %100, %99
  %105 = phi i32 [ 1024, %99 ], [ %103, %100 ], !dbg !373
  store i32 %105, ptr @last_load, align 4, !dbg !377
  br label %183, !dbg !378

106:                                              ; preds = %73
  %107 = load i32, ptr %11, align 4, !dbg !379
  %108 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !381
  %109 = sdiv i32 %108, 10000, !dbg !382
  %110 = mul nsw i32 %107, %109, !dbg !383
  store i32 %110, ptr %13, align 4, !dbg !384
  %111 = load i32, ptr %19, align 4, !dbg !385
  %112 = load i32, ptr %13, align 4, !dbg !386
  %113 = add i32 %112, %111, !dbg !386
  store i32 %113, ptr %13, align 4, !dbg !386
  %114 = load i32, ptr %13, align 4, !dbg !387
  %115 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !388
  %116 = sdiv i32 %115, 10000, !dbg !389
  %117 = add i32 %114, %116, !dbg !390
  %118 = sub i32 %117, 1, !dbg !391
  %119 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !392
  %120 = sdiv i32 %119, 10000, !dbg !393
  %121 = udiv i32 %118, %120, !dbg !394
  %122 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !395
  %123 = sdiv i32 %122, 10000, !dbg !396
  %124 = mul i32 %121, %123, !dbg !397
  store i32 %124, ptr %13, align 4, !dbg !398
  %125 = load i32, ptr %19, align 4, !dbg !399
  %126 = load i32, ptr %13, align 4, !dbg !400
  %127 = sub i32 %126, %125, !dbg !400
  store i32 %127, ptr %13, align 4, !dbg !400
  %128 = load i32, ptr %13, align 4, !dbg !401
  %129 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !402
  %130 = sdiv i32 %129, 10000, !dbg !403
  %131 = udiv i32 %130, 16, !dbg !404
  %132 = icmp ugt i32 1024, %131, !dbg !405
  br i1 %132, label %133, label %134, !dbg !406

133:                                              ; preds = %106
  br label %138, !dbg !406

134:                                              ; preds = %106
  %135 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !407
  %136 = sdiv i32 %135, 10000, !dbg !408
  %137 = udiv i32 %136, 16, !dbg !409
  br label %138, !dbg !406

138:                                              ; preds = %134, %133
  %139 = phi i32 [ 1024, %133 ], [ %137, %134 ], !dbg !406
  %140 = icmp ugt i32 %128, %139, !dbg !410
  br i1 %140, label %141, label %143, !dbg !411

141:                                              ; preds = %138
  %142 = load i32, ptr %13, align 4, !dbg !412
  br label %155, !dbg !411

143:                                              ; preds = %138
  %144 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !413
  %145 = sdiv i32 %144, 10000, !dbg !414
  %146 = udiv i32 %145, 16, !dbg !415
  %147 = icmp ugt i32 1024, %146, !dbg !416
  br i1 %147, label %148, label %149, !dbg !417

148:                                              ; preds = %143
  br label %153, !dbg !417

149:                                              ; preds = %143
  %150 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !418
  %151 = sdiv i32 %150, 10000, !dbg !419
  %152 = udiv i32 %151, 16, !dbg !420
  br label %153, !dbg !417

153:                                              ; preds = %149, %148
  %154 = phi i32 [ 1024, %148 ], [ %152, %149 ], !dbg !417
  br label %155, !dbg !411

155:                                              ; preds = %153, %141
  %156 = phi i32 [ %142, %141 ], [ %154, %153 ], !dbg !411
  store i32 %156, ptr %13, align 4, !dbg !421
  %157 = load i32, ptr %13, align 4, !dbg !422
  %158 = zext i32 %157 to i64, !dbg !422
  %159 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !424
  %160 = sdiv i32 %159, 10000, !dbg !425
  %161 = sdiv i32 16777215, %160, !dbg !426
  %162 = sext i32 %161 to i64, !dbg !427
  %163 = sub nsw i64 %162, 1, !dbg !428
  %164 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !429
  %165 = sdiv i32 %164, 10000, !dbg !430
  %166 = sext i32 %165 to i64, !dbg !431
  %167 = mul nsw i64 %163, %166, !dbg !432
  %168 = icmp sgt i64 %158, %167, !dbg !433
  br i1 %168, label %169, label %180, !dbg !434

169:                                              ; preds = %155
  %170 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !435
  %171 = sdiv i32 %170, 10000, !dbg !437
  %172 = sdiv i32 16777215, %171, !dbg !438
  %173 = sext i32 %172 to i64, !dbg !439
  %174 = sub nsw i64 %173, 1, !dbg !440
  %175 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !441
  %176 = sdiv i32 %175, 10000, !dbg !442
  %177 = sext i32 %176 to i64, !dbg !443
  %178 = mul nsw i64 %174, %177, !dbg !444
  %179 = trunc i64 %178 to i32, !dbg !445
  store i32 %179, ptr @last_load, align 4, !dbg !446
  br label %182, !dbg !447

180:                                              ; preds = %155
  %181 = load i32, ptr %13, align 4, !dbg !448
  store i32 %181, ptr @last_load, align 4, !dbg !450
  br label %182

182:                                              ; preds = %180, %169
  br label %183

183:                                              ; preds = %182, %104
  %184 = load volatile i32, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !451
  store i32 %184, ptr %15, align 4, !dbg !452
  %185 = load i32, ptr @last_load, align 4, !dbg !453
  %186 = sub i32 %185, 1, !dbg !454
  store volatile i32 %186, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !455
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !456
  %187 = load i32, ptr %14, align 4, !dbg !457
  %188 = load i32, ptr %15, align 4, !dbg !459
  %189 = icmp ult i32 %187, %188, !dbg !460
  br i1 %189, label %190, label %198, !dbg !461

190:                                              ; preds = %183
  %191 = load i32, ptr %14, align 4, !dbg !462
  %192 = load i32, ptr %16, align 4, !dbg !464
  %193 = load i32, ptr %15, align 4, !dbg !465
  %194 = sub i32 %192, %193, !dbg !466
  %195 = add i32 %191, %194, !dbg !467
  %196 = load i32, ptr @cycle_count, align 4, !dbg !468
  %197 = add i32 %196, %195, !dbg !468
  store i32 %197, ptr @cycle_count, align 4, !dbg !468
  br label %204, !dbg !469

198:                                              ; preds = %183
  %199 = load i32, ptr %14, align 4, !dbg !470
  %200 = load i32, ptr %15, align 4, !dbg !472
  %201 = sub i32 %199, %200, !dbg !473
  %202 = load i32, ptr @cycle_count, align 4, !dbg !474
  %203 = add i32 %202, %201, !dbg !474
  store i32 %203, ptr @cycle_count, align 4, !dbg !474
  br label %204

204:                                              ; preds = %198, %190
  %205 = getelementptr inbounds %struct.z_spinlock_key, ptr %17, i32 0, i32 0, !dbg !475
  %206 = load [1 x i32], ptr %205, align 4, !dbg !475
  store [1 x i32] %206, ptr %7, align 4
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !476, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata ptr %7, metadata !481, metadata !DIExpression()), !dbg !484
  %207 = load ptr, ptr %8, align 4, !dbg !485
  %208 = load i32, ptr %7, align 4, !dbg !486
  store i32 %208, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !487, metadata !DIExpression()), !dbg !492
  %209 = load i32, ptr %3, align 4, !dbg !494
  %210 = icmp ne i32 %209, 0, !dbg !496
  br i1 %210, label %211, label %212, !dbg !497

211:                                              ; preds = %204
  br label %arch_irq_unlock.exit, !dbg !498

212:                                              ; preds = %204
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !500, !srcloc !501
  br label %arch_irq_unlock.exit, !dbg !502

arch_irq_unlock.exit:                             ; preds = %211, %212
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #5, !dbg !503
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #5, !dbg !503
  br label %213, !dbg !503

213:                                              ; preds = %arch_irq_unlock.exit, %27
  ret void, !dbg !503
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_clock_elapsed() #0 !dbg !504 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %9, metadata !506, metadata !DIExpression()), !dbg !510
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !308, metadata !DIExpression()), !dbg !511
  %12 = load ptr, ptr %8, align 4, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %7, metadata !314, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %4, metadata !325, metadata !DIExpression()), !dbg !517
  %13 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !518, !srcloc !329
  store i32 %13, ptr %4, align 4, !dbg !518
  %14 = load i32, ptr %4, align 4, !dbg !519
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !520
  store i32 %14, ptr %7, align 4, !dbg !521
  %15 = load ptr, ptr %8, align 4, !dbg !522
  store ptr %15, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !334, metadata !DIExpression()), !dbg !523
  %16 = load ptr, ptr %3, align 4, !dbg !525
  %17 = load ptr, ptr %8, align 4, !dbg !526
  store ptr %17, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !527
  %18 = load ptr, ptr %2, align 4, !dbg !529
  %19 = load i32, ptr %7, align 4, !dbg !530
  %20 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !531
  store i32 %19, ptr %20, align 4, !dbg !531
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %10, metadata !507, metadata !DIExpression()), !dbg !533
  %21 = load i32, ptr @cycle_count, align 4, !dbg !534
  %22 = load i32, ptr @announced_cycles, align 4, !dbg !535
  %23 = sub i32 %21, %22, !dbg !536
  store i32 %23, ptr %10, align 4, !dbg !533
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %11, metadata !508, metadata !DIExpression()), !dbg !538
  %24 = call i32 @elapsed() #6, !dbg !539
  %25 = load i32, ptr %10, align 4, !dbg !540
  %26 = add i32 %24, %25, !dbg !541
  store i32 %26, ptr %11, align 4, !dbg !538
  %27 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !542
  %28 = load [1 x i32], ptr %27, align 4, !dbg !542
  store [1 x i32] %28, ptr %5, align 4
  store ptr @lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !476, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata ptr %5, metadata !481, metadata !DIExpression()), !dbg !545
  %29 = load ptr, ptr %6, align 4, !dbg !546
  %30 = load i32, ptr %5, align 4, !dbg !547
  store i32 %30, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !487, metadata !DIExpression()), !dbg !548
  %31 = load i32, ptr %1, align 4, !dbg !550
  %32 = icmp ne i32 %31, 0, !dbg !551
  br i1 %32, label %33, label %34, !dbg !552

33:                                               ; preds = %0
  br label %arch_irq_unlock.exit, !dbg !553

34:                                               ; preds = %0
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !554, !srcloc !501
  br label %arch_irq_unlock.exit, !dbg !555

arch_irq_unlock.exit:                             ; preds = %33, %34
  %35 = load i32, ptr %11, align 4, !dbg !556
  %36 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !557
  %37 = sdiv i32 %36, 10000, !dbg !558
  %38 = udiv i32 %35, %37, !dbg !559
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5, !dbg !560
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5, !dbg !560
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5, !dbg !560
  ret i32 %38, !dbg !561
}

; Function Attrs: nounwind optsize
define hidden i32 @sys_clock_cycle_get_32() #0 !dbg !562 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %9, metadata !564, metadata !DIExpression()), !dbg !567
  store ptr @lock, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !308, metadata !DIExpression()), !dbg !568
  %11 = load ptr, ptr %8, align 4, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %7, metadata !314, metadata !DIExpression()), !dbg !571
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5, !dbg !572
  call void @llvm.dbg.declare(metadata ptr %4, metadata !325, metadata !DIExpression()), !dbg !574
  %12 = call i32 asm sideeffect "mrs $0, PRIMASK;cpsid i", "=r,~{memory}"() #5, !dbg !575, !srcloc !329
  store i32 %12, ptr %4, align 4, !dbg !575
  %13 = load i32, ptr %4, align 4, !dbg !576
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5, !dbg !577
  store i32 %13, ptr %7, align 4, !dbg !578
  %14 = load ptr, ptr %8, align 4, !dbg !579
  store ptr %14, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !334, metadata !DIExpression()), !dbg !580
  %15 = load ptr, ptr %3, align 4, !dbg !582
  %16 = load ptr, ptr %8, align 4, !dbg !583
  store ptr %16, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !343, metadata !DIExpression()), !dbg !584
  %17 = load ptr, ptr %2, align 4, !dbg !586
  %18 = load i32, ptr %7, align 4, !dbg !587
  %19 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !588
  store i32 %18, ptr %19, align 4, !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5, !dbg !589
  call void @llvm.dbg.declare(metadata ptr %10, metadata !565, metadata !DIExpression()), !dbg !590
  %20 = load i32, ptr @cycle_count, align 4, !dbg !591
  store i32 %20, ptr %10, align 4, !dbg !590
  %21 = call i32 @elapsed() #6, !dbg !592
  %22 = load i32, ptr %10, align 4, !dbg !593
  %23 = add i32 %22, %21, !dbg !593
  store i32 %23, ptr %10, align 4, !dbg !593
  %24 = getelementptr inbounds %struct.z_spinlock_key, ptr %9, i32 0, i32 0, !dbg !594
  %25 = load [1 x i32], ptr %24, align 4, !dbg !594
  store [1 x i32] %25, ptr %5, align 4
  store ptr @lock, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !476, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata ptr %5, metadata !481, metadata !DIExpression()), !dbg !597
  %26 = load ptr, ptr %6, align 4, !dbg !598
  %27 = load i32, ptr %5, align 4, !dbg !599
  store i32 %27, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !487, metadata !DIExpression()), !dbg !600
  %28 = load i32, ptr %1, align 4, !dbg !602
  %29 = icmp ne i32 %28, 0, !dbg !603
  br i1 %29, label %30, label %31, !dbg !604

30:                                               ; preds = %0
  br label %arch_irq_unlock.exit, !dbg !605

31:                                               ; preds = %0
  call void asm sideeffect "cpsie i;isb", "~{memory}"() #5, !dbg !606, !srcloc !501
  br label %arch_irq_unlock.exit, !dbg !607

arch_irq_unlock.exit:                             ; preds = %30, %31
  %32 = load i32, ptr %10, align 4, !dbg !608
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5, !dbg !609
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5, !dbg !609
  ret i32 %32, !dbg !610
}

; Function Attrs: nounwind optsize
define hidden void @sys_clock_idle_exit() #0 !dbg !611 {
  %1 = load i32, ptr @last_load, align 4, !dbg !612
  %2 = icmp eq i32 %1, -16777216, !dbg !614
  br i1 %2, label %3, label %6, !dbg !615

3:                                                ; preds = %0
  %4 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !616
  %5 = or i32 %4, 1, !dbg !616
  store volatile i32 %5, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !616
  br label %6, !dbg !618

6:                                                ; preds = %3, %0
  ret void, !dbg !619
}

; Function Attrs: nounwind optsize
define hidden void @sys_clock_disable() #0 !dbg !620 {
  %1 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !621
  %2 = and i32 %1, -2, !dbg !621
  store volatile i32 %2, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: nounwind optsize
define internal i32 @sys_clock_driver_init() #0 !dbg !623 {
  call void @__NVIC_SetPriority(i8 noundef signext -1, i32 noundef 0) #6, !dbg !624
  %1 = call i32 @sys_clock_hw_cycles_per_sec() #6, !dbg !625
  %2 = sdiv i32 %1, 10000, !dbg !626
  %3 = sub nsw i32 %2, 1, !dbg !627
  store i32 %3, ptr @last_load, align 4, !dbg !628
  store volatile i32 0, ptr @overflow_cyc, align 4, !dbg !629
  %4 = load i32, ptr @last_load, align 4, !dbg !630
  store volatile i32 %4, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 1), align 4, !dbg !631
  store volatile i32 0, ptr getelementptr inbounds (%struct.SysTick_Type, ptr inttoptr (i32 -536813552 to ptr), i32 0, i32 2), align 4, !dbg !632
  %5 = load volatile i32, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !633
  %6 = or i32 %5, 7, !dbg !633
  store volatile i32 %6, ptr inttoptr (i32 -536813552 to ptr), align 4, !dbg !633
  ret i32 0, !dbg !634
}

; Function Attrs: inlinehint nounwind optsize
define internal void @__NVIC_SetPriority(i8 noundef signext %0, i32 noundef %1) #3 !dbg !635 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !640, metadata !DIExpression()), !dbg !642
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !641, metadata !DIExpression()), !dbg !643
  %5 = load i8, ptr %3, align 1, !dbg !644
  %6 = sext i8 %5 to i32, !dbg !646
  %7 = icmp sge i32 %6, 0, !dbg !647
  br i1 %7, label %8, label %34, !dbg !648

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1, !dbg !649
  %10 = sext i8 %9 to i32, !dbg !651
  %11 = lshr i32 %10, 2, !dbg !652
  %12 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %11, !dbg !653
  %13 = load volatile i32, ptr %12, align 4, !dbg !653
  %14 = load i8, ptr %3, align 1, !dbg !654
  %15 = sext i8 %14 to i32, !dbg !655
  %16 = and i32 %15, 3, !dbg !656
  %17 = mul i32 %16, 8, !dbg !657
  %18 = shl i32 255, %17, !dbg !658
  %19 = xor i32 %18, -1, !dbg !659
  %20 = and i32 %13, %19, !dbg !660
  %21 = load i32, ptr %4, align 4, !dbg !661
  %22 = shl i32 %21, 6, !dbg !662
  %23 = and i32 %22, 255, !dbg !663
  %24 = load i8, ptr %3, align 1, !dbg !664
  %25 = sext i8 %24 to i32, !dbg !665
  %26 = and i32 %25, 3, !dbg !666
  %27 = mul i32 %26, 8, !dbg !667
  %28 = shl i32 %23, %27, !dbg !668
  %29 = or i32 %20, %28, !dbg !669
  %30 = load i8, ptr %3, align 1, !dbg !670
  %31 = sext i8 %30 to i32, !dbg !671
  %32 = lshr i32 %31, 2, !dbg !672
  %33 = getelementptr inbounds [8 x i32], ptr getelementptr inbounds (%struct.NVIC_Type, ptr inttoptr (i32 -536813312 to ptr), i32 0, i32 9), i32 0, i32 %32, !dbg !673
  store volatile i32 %29, ptr %33, align 4, !dbg !674
  br label %64, !dbg !675

34:                                               ; preds = %2
  %35 = load i8, ptr %3, align 1, !dbg !676
  %36 = sext i8 %35 to i32, !dbg !678
  %37 = and i32 %36, 15, !dbg !679
  %38 = sub i32 %37, 8, !dbg !680
  %39 = lshr i32 %38, 2, !dbg !681
  %40 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %39, !dbg !682
  %41 = load volatile i32, ptr %40, align 4, !dbg !682
  %42 = load i8, ptr %3, align 1, !dbg !683
  %43 = sext i8 %42 to i32, !dbg !684
  %44 = and i32 %43, 3, !dbg !685
  %45 = mul i32 %44, 8, !dbg !686
  %46 = shl i32 255, %45, !dbg !687
  %47 = xor i32 %46, -1, !dbg !688
  %48 = and i32 %41, %47, !dbg !689
  %49 = load i32, ptr %4, align 4, !dbg !690
  %50 = shl i32 %49, 6, !dbg !691
  %51 = and i32 %50, 255, !dbg !692
  %52 = load i8, ptr %3, align 1, !dbg !693
  %53 = sext i8 %52 to i32, !dbg !694
  %54 = and i32 %53, 3, !dbg !695
  %55 = mul i32 %54, 8, !dbg !696
  %56 = shl i32 %51, %55, !dbg !697
  %57 = or i32 %48, %56, !dbg !698
  %58 = load i8, ptr %3, align 1, !dbg !699
  %59 = sext i8 %58 to i32, !dbg !700
  %60 = and i32 %59, 15, !dbg !701
  %61 = sub i32 %60, 8, !dbg !702
  %62 = lshr i32 %61, 2, !dbg !703
  %63 = getelementptr inbounds [2 x i32], ptr getelementptr inbounds (%struct.SCB_Type, ptr inttoptr (i32 -536810240 to ptr), i32 0, i32 7), i32 0, i32 %62, !dbg !704
  store volatile i32 %57, ptr %63, align 4, !dbg !705
  br label %64

64:                                               ; preds = %34, %8
  ret void, !dbg !706
}

attributes #0 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "overflow_cyc", scope: !2, file: !111, line: 78, type: !57, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !45, globals: !108, splitDebugInlining: false, nameTableKind: None)
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
!148 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!149 = distinct !DISubprogram(name: "sys_clock_isr", scope: !111, file: !111, line: 131, type: !150, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!153 = !{!154, !155, !156}
!154 = !DILocalVariable(name: "arg", arg: 1, scope: !149, file: !111, line: 131, type: !152)
!155 = !DILocalVariable(name: "dcycles", scope: !149, file: !111, line: 134, type: !58)
!156 = !DILocalVariable(name: "dticks", scope: !149, file: !111, line: 135, type: !58)
!157 = !DILocation(line: 131, column: 26, scope: !149)
!158 = !DILocation(line: 133, column: 9, scope: !149)
!159 = !DILocation(line: 134, column: 2, scope: !149)
!160 = !DILocation(line: 134, column: 11, scope: !149)
!161 = !DILocation(line: 135, column: 2, scope: !149)
!162 = !DILocation(line: 135, column: 11, scope: !149)
!163 = !DILocation(line: 138, column: 2, scope: !149)
!164 = !DILocation(line: 143, column: 17, scope: !149)
!165 = !DILocation(line: 143, column: 14, scope: !149)
!166 = !DILocation(line: 144, column: 15, scope: !149)
!167 = !DILocation(line: 159, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !111, line: 146, column: 11)
!169 = distinct !DILexicalBlock(scope: !149, file: !111, line: 146, column: 6)
!170 = !DILocation(line: 159, column: 27, scope: !168)
!171 = !DILocation(line: 159, column: 25, scope: !168)
!172 = !DILocation(line: 159, column: 11, scope: !168)
!173 = !DILocation(line: 160, column: 12, scope: !168)
!174 = !DILocation(line: 160, column: 23, scope: !168)
!175 = !DILocation(line: 160, column: 53, scope: !168)
!176 = !DILocation(line: 160, column: 20, scope: !168)
!177 = !DILocation(line: 160, column: 10, scope: !168)
!178 = !DILocation(line: 161, column: 23, scope: !168)
!179 = !DILocation(line: 161, column: 33, scope: !168)
!180 = !DILocation(line: 161, column: 63, scope: !168)
!181 = !DILocation(line: 161, column: 30, scope: !168)
!182 = !DILocation(line: 161, column: 20, scope: !168)
!183 = !DILocation(line: 162, column: 22, scope: !168)
!184 = !DILocation(line: 162, column: 3, scope: !168)
!185 = !DILocation(line: 166, column: 2, scope: !149)
!186 = !DILocation(line: 167, column: 1, scope: !149)
!187 = distinct !DISubprogram(name: "elapsed", scope: !111, file: !111, line: 98, type: !188, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!58}
!190 = !{!191, !192, !193}
!191 = !DILocalVariable(name: "val1", scope: !187, file: !111, line: 100, type: !58)
!192 = !DILocalVariable(name: "ctrl", scope: !187, file: !111, line: 101, type: !58)
!193 = !DILocalVariable(name: "val2", scope: !187, file: !111, line: 102, type: !58)
!194 = !DILocation(line: 100, column: 2, scope: !187)
!195 = !DILocation(line: 100, column: 11, scope: !187)
!196 = !DILocation(line: 100, column: 67, scope: !187)
!197 = !DILocation(line: 101, column: 2, scope: !187)
!198 = !DILocation(line: 101, column: 11, scope: !187)
!199 = !DILocation(line: 101, column: 67, scope: !187)
!200 = !DILocation(line: 102, column: 2, scope: !187)
!201 = !DILocation(line: 102, column: 11, scope: !187)
!202 = !DILocation(line: 102, column: 67, scope: !187)
!203 = !DILocation(line: 118, column: 7, scope: !204)
!204 = distinct !DILexicalBlock(scope: !187, file: !111, line: 118, column: 6)
!205 = !DILocation(line: 118, column: 12, scope: !204)
!206 = !DILocation(line: 119, column: 6, scope: !204)
!207 = !DILocation(line: 119, column: 10, scope: !204)
!208 = !DILocation(line: 119, column: 17, scope: !204)
!209 = !DILocation(line: 119, column: 15, scope: !204)
!210 = !DILocation(line: 118, column: 6, scope: !187)
!211 = !DILocation(line: 120, column: 19, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !111, line: 119, column: 24)
!213 = !DILocation(line: 120, column: 16, scope: !212)
!214 = !DILocation(line: 124, column: 58, scope: !212)
!215 = !DILocation(line: 125, column: 2, scope: !212)
!216 = !DILocation(line: 127, column: 10, scope: !187)
!217 = !DILocation(line: 127, column: 22, scope: !187)
!218 = !DILocation(line: 127, column: 20, scope: !187)
!219 = !DILocation(line: 127, column: 30, scope: !187)
!220 = !DILocation(line: 127, column: 28, scope: !187)
!221 = !DILocation(line: 128, column: 1, scope: !187)
!222 = !DILocation(line: 127, column: 2, scope: !187)
!223 = distinct !DISubprogram(name: "sys_clock_hw_cycles_per_sec", scope: !224, file: !224, line: 73, type: !121, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!224 = !DIFile(filename: "include/zephyr/sys/time_units.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !DILocation(line: 78, column: 2, scope: !223)
!226 = !DISubprogram(name: "sys_clock_announce", scope: !227, file: !227, line: 100, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !135)
!227 = !DIFile(filename: "include/zephyr/drivers/timer/system_timer.h", directory: "/home/sri/zephyrproject/zephyr")
!228 = !DISubroutineType(types: !229)
!229 = !{null, !64}
!230 = !DISubprogram(name: "z_arm_int_exit", scope: !231, file: !231, line: 153, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !135)
!231 = !DIFile(filename: "include/zephyr/arch/arm/irq.h", directory: "/home/sri/zephyrproject/zephyr")
!232 = !DISubroutineType(types: !233)
!233 = !{null}
!234 = distinct !DISubprogram(name: "sys_clock_set_timeout", scope: !111, file: !111, line: 169, type: !235, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !64, !237}
!237 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !250, !251}
!239 = !DILocalVariable(name: "ticks", arg: 1, scope: !234, file: !111, line: 169, type: !64)
!240 = !DILocalVariable(name: "idle", arg: 2, scope: !234, file: !111, line: 169, type: !237)
!241 = !DILocalVariable(name: "delay", scope: !234, file: !111, line: 184, type: !58)
!242 = !DILocalVariable(name: "val1", scope: !234, file: !111, line: 185, type: !58)
!243 = !DILocalVariable(name: "val2", scope: !234, file: !111, line: 185, type: !58)
!244 = !DILocalVariable(name: "last_load_", scope: !234, file: !111, line: 186, type: !58)
!245 = !DILocalVariable(name: "key", scope: !234, file: !111, line: 191, type: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_spinlock_key_t", file: !134, line: 108, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "z_spinlock_key", file: !134, line: 34, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !247, file: !134, line: 35, baseType: !65, size: 32)
!250 = !DILocalVariable(name: "pending", scope: !234, file: !111, line: 193, type: !58)
!251 = !DILocalVariable(name: "unannounced", scope: !234, file: !111, line: 200, type: !58)
!252 = !DILocation(line: 169, column: 36, scope: !234)
!253 = !DILocation(line: 169, column: 49, scope: !234)
!254 = !DILocation(line: 177, column: 11, scope: !255)
!255 = distinct !DILexicalBlock(scope: !234, file: !111, line: 177, column: 6)
!256 = !{i8 0, i8 2}
!257 = !DILocation(line: 177, column: 16, scope: !255)
!258 = !DILocation(line: 177, column: 19, scope: !255)
!259 = !DILocation(line: 177, column: 25, scope: !255)
!260 = !DILocation(line: 177, column: 6, scope: !234)
!261 = !DILocation(line: 178, column: 57, scope: !262)
!262 = distinct !DILexicalBlock(scope: !255, file: !111, line: 177, column: 46)
!263 = !DILocation(line: 179, column: 13, scope: !262)
!264 = !DILocation(line: 180, column: 3, scope: !262)
!265 = !DILocation(line: 184, column: 2, scope: !234)
!266 = !DILocation(line: 184, column: 11, scope: !234)
!267 = !DILocation(line: 185, column: 2, scope: !234)
!268 = !DILocation(line: 185, column: 11, scope: !234)
!269 = !DILocation(line: 185, column: 17, scope: !234)
!270 = !DILocation(line: 186, column: 2, scope: !234)
!271 = !DILocation(line: 186, column: 11, scope: !234)
!272 = !DILocation(line: 186, column: 24, scope: !234)
!273 = !DILocation(line: 188, column: 11, scope: !234)
!274 = !DILocation(line: 188, column: 17, scope: !234)
!275 = !DILocation(line: 188, column: 10, scope: !234)
!276 = !DILocation(line: 188, column: 67, scope: !234)
!277 = !DILocation(line: 188, column: 97, scope: !234)
!278 = !DILocation(line: 188, column: 64, scope: !234)
!279 = !DILocation(line: 188, column: 41, scope: !234)
!280 = !DILocation(line: 188, column: 107, scope: !234)
!281 = !DILocation(line: 188, column: 114, scope: !234)
!282 = !DILocation(line: 188, column: 8, scope: !234)
!283 = !DILocation(line: 189, column: 13, scope: !234)
!284 = !DILocation(line: 189, column: 19, scope: !234)
!285 = !DILocation(line: 189, column: 24, scope: !234)
!286 = !DILocation(line: 189, column: 11, scope: !234)
!287 = !DILocation(line: 189, column: 43, scope: !234)
!288 = !DILocation(line: 189, column: 49, scope: !234)
!289 = !DILocation(line: 189, column: 93, scope: !234)
!290 = !DILocation(line: 189, column: 123, scope: !234)
!291 = !DILocation(line: 189, column: 90, scope: !234)
!292 = !DILocation(line: 189, column: 67, scope: !234)
!293 = !DILocation(line: 189, column: 133, scope: !234)
!294 = !DILocation(line: 189, column: 57, scope: !234)
!295 = !DILocation(line: 189, column: 54, scope: !234)
!296 = !DILocation(line: 189, column: 41, scope: !234)
!297 = !DILocation(line: 189, column: 143, scope: !234)
!298 = !DILocation(line: 189, column: 149, scope: !234)
!299 = !DILocation(line: 189, column: 193, scope: !234)
!300 = !DILocation(line: 189, column: 223, scope: !234)
!301 = !DILocation(line: 189, column: 190, scope: !234)
!302 = !DILocation(line: 189, column: 167, scope: !234)
!303 = !DILocation(line: 189, column: 233, scope: !234)
!304 = !DILocation(line: 189, column: 157, scope: !234)
!305 = !DILocation(line: 189, column: 8, scope: !234)
!306 = !DILocation(line: 191, column: 2, scope: !234)
!307 = !DILocation(line: 191, column: 19, scope: !234)
!308 = !DILocalVariable(name: "l", arg: 1, scope: !309, file: !134, line: 160, type: !312)
!309 = distinct !DISubprogram(name: "k_spin_lock", scope: !134, file: !134, line: 160, type: !310, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!310 = !DISubroutineType(types: !311)
!311 = !{!246, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 32)
!313 = !{!308, !314}
!314 = !DILocalVariable(name: "k", scope: !309, file: !134, line: 163, type: !246)
!315 = !DILocation(line: 160, column: 94, scope: !309, inlinedAt: !316)
!316 = distinct !DILocation(line: 191, column: 25, scope: !234)
!317 = !DILocation(line: 162, column: 9, scope: !309, inlinedAt: !316)
!318 = !DILocation(line: 163, column: 19, scope: !309, inlinedAt: !316)
!319 = !DILocation(line: 44, column: 2, scope: !320, inlinedAt: !326)
!320 = distinct !DISubprogram(name: "arch_irq_lock", scope: !321, file: !321, line: 42, type: !322, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!321 = !DIFile(filename: "include/zephyr/arch/arm/asm_inline_gcc.h", directory: "/home/sri/zephyrproject/zephyr")
!322 = !DISubroutineType(types: !323)
!323 = !{!59}
!324 = !{!325}
!325 = !DILocalVariable(name: "key", scope: !320, file: !321, line: 44, type: !59)
!326 = distinct !DILocation(line: 169, column: 10, scope: !309, inlinedAt: !316)
!327 = !DILocation(line: 44, column: 15, scope: !320, inlinedAt: !326)
!328 = !DILocation(line: 48, column: 2, scope: !320, inlinedAt: !326)
!329 = !{i64 60017}
!330 = !DILocation(line: 80, column: 9, scope: !320, inlinedAt: !326)
!331 = !DILocation(line: 81, column: 1, scope: !320, inlinedAt: !326)
!332 = !DILocation(line: 169, column: 8, scope: !309, inlinedAt: !316)
!333 = !DILocation(line: 171, column: 26, scope: !309, inlinedAt: !316)
!334 = !DILocalVariable(name: "l", arg: 1, scope: !335, file: !134, line: 110, type: !312)
!335 = distinct !DISubprogram(name: "z_spinlock_validate_pre", scope: !134, file: !134, line: 110, type: !336, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !312}
!338 = !{!334}
!339 = !DILocation(line: 110, column: 94, scope: !335, inlinedAt: !340)
!340 = distinct !DILocation(line: 171, column: 2, scope: !309, inlinedAt: !316)
!341 = !DILocation(line: 112, column: 9, scope: !335, inlinedAt: !340)
!342 = !DILocation(line: 177, column: 27, scope: !309, inlinedAt: !316)
!343 = !DILocalVariable(name: "l", arg: 1, scope: !344, file: !134, line: 121, type: !312)
!344 = distinct !DISubprogram(name: "z_spinlock_validate_post", scope: !134, file: !134, line: 121, type: !336, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!345 = !{!343}
!346 = !DILocation(line: 121, column: 95, scope: !344, inlinedAt: !347)
!347 = distinct !DILocation(line: 177, column: 2, scope: !309, inlinedAt: !316)
!348 = !DILocation(line: 123, column: 9, scope: !344, inlinedAt: !347)
!349 = !DILocation(line: 179, column: 2, scope: !309, inlinedAt: !316)
!350 = !DILocation(line: 191, column: 25, scope: !234)
!351 = !DILocation(line: 193, column: 2, scope: !234)
!352 = !DILocation(line: 193, column: 11, scope: !234)
!353 = !DILocation(line: 193, column: 21, scope: !234)
!354 = !DILocation(line: 195, column: 58, scope: !234)
!355 = !DILocation(line: 195, column: 7, scope: !234)
!356 = !DILocation(line: 197, column: 17, scope: !234)
!357 = !DILocation(line: 197, column: 14, scope: !234)
!358 = !DILocation(line: 198, column: 15, scope: !234)
!359 = !DILocation(line: 200, column: 2, scope: !234)
!360 = !DILocation(line: 200, column: 11, scope: !234)
!361 = !DILocation(line: 200, column: 25, scope: !234)
!362 = !DILocation(line: 200, column: 39, scope: !234)
!363 = !DILocation(line: 200, column: 37, scope: !234)
!364 = !DILocation(line: 202, column: 15, scope: !365)
!365 = distinct !DILexicalBlock(scope: !234, file: !111, line: 202, column: 6)
!366 = !DILocation(line: 202, column: 27, scope: !365)
!367 = !DILocation(line: 202, column: 6, scope: !234)
!368 = !DILocation(line: 209, column: 40, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !111, line: 202, column: 32)
!370 = !DILocation(line: 209, column: 70, scope: !369)
!371 = !DILocation(line: 209, column: 78, scope: !369)
!372 = !DILocation(line: 209, column: 25, scope: !369)
!373 = !DILocation(line: 209, column: 16, scope: !369)
!374 = !DILocation(line: 209, column: 111, scope: !369)
!375 = !DILocation(line: 209, column: 141, scope: !369)
!376 = !DILocation(line: 209, column: 149, scope: !369)
!377 = !DILocation(line: 209, column: 13, scope: !369)
!378 = !DILocation(line: 210, column: 2, scope: !369)
!379 = !DILocation(line: 212, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !365, file: !111, line: 210, column: 9)
!381 = !DILocation(line: 212, column: 20, scope: !380)
!382 = !DILocation(line: 212, column: 50, scope: !380)
!383 = !DILocation(line: 212, column: 17, scope: !380)
!384 = !DILocation(line: 212, column: 9, scope: !380)
!385 = !DILocation(line: 215, column: 12, scope: !380)
!386 = !DILocation(line: 215, column: 9, scope: !380)
!387 = !DILocation(line: 216, column: 14, scope: !380)
!388 = !DILocation(line: 216, column: 25, scope: !380)
!389 = !DILocation(line: 216, column: 55, scope: !380)
!390 = !DILocation(line: 216, column: 21, scope: !380)
!391 = !DILocation(line: 216, column: 65, scope: !380)
!392 = !DILocation(line: 216, column: 74, scope: !380)
!393 = !DILocation(line: 216, column: 104, scope: !380)
!394 = !DILocation(line: 216, column: 70, scope: !380)
!395 = !DILocation(line: 216, column: 118, scope: !380)
!396 = !DILocation(line: 216, column: 148, scope: !380)
!397 = !DILocation(line: 216, column: 115, scope: !380)
!398 = !DILocation(line: 216, column: 9, scope: !380)
!399 = !DILocation(line: 217, column: 12, scope: !380)
!400 = !DILocation(line: 217, column: 9, scope: !380)
!401 = !DILocation(line: 218, column: 14, scope: !380)
!402 = !DILocation(line: 218, column: 49, scope: !380)
!403 = !DILocation(line: 218, column: 79, scope: !380)
!404 = !DILocation(line: 218, column: 87, scope: !380)
!405 = !DILocation(line: 218, column: 34, scope: !380)
!406 = !DILocation(line: 218, column: 25, scope: !380)
!407 = !DILocation(line: 218, column: 120, scope: !380)
!408 = !DILocation(line: 218, column: 150, scope: !380)
!409 = !DILocation(line: 218, column: 158, scope: !380)
!410 = !DILocation(line: 218, column: 21, scope: !380)
!411 = !DILocation(line: 218, column: 12, scope: !380)
!412 = !DILocation(line: 218, column: 171, scope: !380)
!413 = !DILocation(line: 218, column: 206, scope: !380)
!414 = !DILocation(line: 218, column: 236, scope: !380)
!415 = !DILocation(line: 218, column: 244, scope: !380)
!416 = !DILocation(line: 218, column: 191, scope: !380)
!417 = !DILocation(line: 218, column: 182, scope: !380)
!418 = !DILocation(line: 218, column: 277, scope: !380)
!419 = !DILocation(line: 218, column: 307, scope: !380)
!420 = !DILocation(line: 218, column: 315, scope: !380)
!421 = !DILocation(line: 218, column: 9, scope: !380)
!422 = !DILocation(line: 219, column: 7, scope: !423)
!423 = distinct !DILexicalBlock(scope: !380, file: !111, line: 219, column: 7)
!424 = !DILocation(line: 219, column: 43, scope: !423)
!425 = !DILocation(line: 219, column: 73, scope: !423)
!426 = !DILocation(line: 219, column: 40, scope: !423)
!427 = !DILocation(line: 219, column: 17, scope: !423)
!428 = !DILocation(line: 219, column: 83, scope: !423)
!429 = !DILocation(line: 219, column: 91, scope: !423)
!430 = !DILocation(line: 219, column: 121, scope: !423)
!431 = !DILocation(line: 219, column: 90, scope: !423)
!432 = !DILocation(line: 219, column: 88, scope: !423)
!433 = !DILocation(line: 219, column: 13, scope: !423)
!434 = !DILocation(line: 219, column: 7, scope: !380)
!435 = !DILocation(line: 220, column: 44, scope: !436)
!436 = distinct !DILexicalBlock(scope: !423, file: !111, line: 219, column: 132)
!437 = !DILocation(line: 220, column: 74, scope: !436)
!438 = !DILocation(line: 220, column: 41, scope: !436)
!439 = !DILocation(line: 220, column: 18, scope: !436)
!440 = !DILocation(line: 220, column: 84, scope: !436)
!441 = !DILocation(line: 220, column: 92, scope: !436)
!442 = !DILocation(line: 220, column: 122, scope: !436)
!443 = !DILocation(line: 220, column: 91, scope: !436)
!444 = !DILocation(line: 220, column: 89, scope: !436)
!445 = !DILocation(line: 220, column: 16, scope: !436)
!446 = !DILocation(line: 220, column: 14, scope: !436)
!447 = !DILocation(line: 221, column: 3, scope: !436)
!448 = !DILocation(line: 222, column: 16, scope: !449)
!449 = distinct !DILexicalBlock(scope: !423, file: !111, line: 221, column: 10)
!450 = !DILocation(line: 222, column: 14, scope: !449)
!451 = !DILocation(line: 226, column: 58, scope: !234)
!452 = !DILocation(line: 226, column: 7, scope: !234)
!453 = !DILocation(line: 228, column: 58, scope: !234)
!454 = !DILocation(line: 228, column: 68, scope: !234)
!455 = !DILocation(line: 228, column: 56, scope: !234)
!456 = !DILocation(line: 229, column: 55, scope: !234)
!457 = !DILocation(line: 241, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !234, file: !111, line: 241, column: 6)
!459 = !DILocation(line: 241, column: 13, scope: !458)
!460 = !DILocation(line: 241, column: 11, scope: !458)
!461 = !DILocation(line: 241, column: 6, scope: !234)
!462 = !DILocation(line: 242, column: 19, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !111, line: 241, column: 19)
!464 = !DILocation(line: 242, column: 27, scope: !463)
!465 = !DILocation(line: 242, column: 40, scope: !463)
!466 = !DILocation(line: 242, column: 38, scope: !463)
!467 = !DILocation(line: 242, column: 24, scope: !463)
!468 = !DILocation(line: 242, column: 15, scope: !463)
!469 = !DILocation(line: 243, column: 2, scope: !463)
!470 = !DILocation(line: 244, column: 19, scope: !471)
!471 = distinct !DILexicalBlock(scope: !458, file: !111, line: 243, column: 9)
!472 = !DILocation(line: 244, column: 26, scope: !471)
!473 = !DILocation(line: 244, column: 24, scope: !471)
!474 = !DILocation(line: 244, column: 15, scope: !471)
!475 = !DILocation(line: 246, column: 2, scope: !234)
!476 = !DILocalVariable(name: "l", arg: 1, scope: !477, file: !134, line: 235, type: !312)
!477 = distinct !DISubprogram(name: "k_spin_unlock", scope: !134, file: !134, line: 235, type: !478, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !312, !246}
!480 = !{!476, !481}
!481 = !DILocalVariable(name: "key", arg: 2, scope: !477, file: !134, line: 236, type: !246)
!482 = !DILocation(line: 235, column: 84, scope: !477, inlinedAt: !483)
!483 = distinct !DILocation(line: 246, column: 2, scope: !234)
!484 = !DILocation(line: 236, column: 23, scope: !477, inlinedAt: !483)
!485 = !DILocation(line: 238, column: 9, scope: !477, inlinedAt: !483)
!486 = !DILocation(line: 261, column: 22, scope: !477, inlinedAt: !483)
!487 = !DILocalVariable(name: "key", arg: 1, scope: !488, file: !321, line: 88, type: !59)
!488 = distinct !DISubprogram(name: "arch_irq_unlock", scope: !321, file: !321, line: 88, type: !489, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !59}
!491 = !{!487}
!492 = !DILocation(line: 88, column: 80, scope: !488, inlinedAt: !493)
!493 = distinct !DILocation(line: 261, column: 2, scope: !477, inlinedAt: !483)
!494 = !DILocation(line: 91, column: 6, scope: !495, inlinedAt: !493)
!495 = distinct !DILexicalBlock(scope: !488, file: !321, line: 91, column: 6)
!496 = !DILocation(line: 91, column: 10, scope: !495, inlinedAt: !493)
!497 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !493)
!498 = !DILocation(line: 92, column: 3, scope: !499, inlinedAt: !493)
!499 = distinct !DILexicalBlock(scope: !495, file: !321, line: 91, column: 17)
!500 = !DILocation(line: 94, column: 2, scope: !488, inlinedAt: !493)
!501 = !{i64 60321}
!502 = !DILocation(line: 114, column: 1, scope: !488, inlinedAt: !493)
!503 = !DILocation(line: 248, column: 1, scope: !234)
!504 = distinct !DISubprogram(name: "sys_clock_elapsed", scope: !111, file: !111, line: 250, type: !188, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507, !508}
!506 = !DILocalVariable(name: "key", scope: !504, file: !111, line: 256, type: !246)
!507 = !DILocalVariable(name: "unannounced", scope: !504, file: !111, line: 257, type: !58)
!508 = !DILocalVariable(name: "cyc", scope: !504, file: !111, line: 258, type: !58)
!509 = !DILocation(line: 256, column: 2, scope: !504)
!510 = !DILocation(line: 256, column: 19, scope: !504)
!511 = !DILocation(line: 160, column: 94, scope: !309, inlinedAt: !512)
!512 = distinct !DILocation(line: 256, column: 25, scope: !504)
!513 = !DILocation(line: 162, column: 9, scope: !309, inlinedAt: !512)
!514 = !DILocation(line: 163, column: 19, scope: !309, inlinedAt: !512)
!515 = !DILocation(line: 44, column: 2, scope: !320, inlinedAt: !516)
!516 = distinct !DILocation(line: 169, column: 10, scope: !309, inlinedAt: !512)
!517 = !DILocation(line: 44, column: 15, scope: !320, inlinedAt: !516)
!518 = !DILocation(line: 48, column: 2, scope: !320, inlinedAt: !516)
!519 = !DILocation(line: 80, column: 9, scope: !320, inlinedAt: !516)
!520 = !DILocation(line: 81, column: 1, scope: !320, inlinedAt: !516)
!521 = !DILocation(line: 169, column: 8, scope: !309, inlinedAt: !512)
!522 = !DILocation(line: 171, column: 26, scope: !309, inlinedAt: !512)
!523 = !DILocation(line: 110, column: 94, scope: !335, inlinedAt: !524)
!524 = distinct !DILocation(line: 171, column: 2, scope: !309, inlinedAt: !512)
!525 = !DILocation(line: 112, column: 9, scope: !335, inlinedAt: !524)
!526 = !DILocation(line: 177, column: 27, scope: !309, inlinedAt: !512)
!527 = !DILocation(line: 121, column: 95, scope: !344, inlinedAt: !528)
!528 = distinct !DILocation(line: 177, column: 2, scope: !309, inlinedAt: !512)
!529 = !DILocation(line: 123, column: 9, scope: !344, inlinedAt: !528)
!530 = !DILocation(line: 179, column: 2, scope: !309, inlinedAt: !512)
!531 = !DILocation(line: 256, column: 25, scope: !504)
!532 = !DILocation(line: 257, column: 2, scope: !504)
!533 = !DILocation(line: 257, column: 11, scope: !504)
!534 = !DILocation(line: 257, column: 25, scope: !504)
!535 = !DILocation(line: 257, column: 39, scope: !504)
!536 = !DILocation(line: 257, column: 37, scope: !504)
!537 = !DILocation(line: 258, column: 2, scope: !504)
!538 = !DILocation(line: 258, column: 11, scope: !504)
!539 = !DILocation(line: 258, column: 17, scope: !504)
!540 = !DILocation(line: 258, column: 29, scope: !504)
!541 = !DILocation(line: 258, column: 27, scope: !504)
!542 = !DILocation(line: 260, column: 2, scope: !504)
!543 = !DILocation(line: 235, column: 84, scope: !477, inlinedAt: !544)
!544 = distinct !DILocation(line: 260, column: 2, scope: !504)
!545 = !DILocation(line: 236, column: 23, scope: !477, inlinedAt: !544)
!546 = !DILocation(line: 238, column: 9, scope: !477, inlinedAt: !544)
!547 = !DILocation(line: 261, column: 22, scope: !477, inlinedAt: !544)
!548 = !DILocation(line: 88, column: 80, scope: !488, inlinedAt: !549)
!549 = distinct !DILocation(line: 261, column: 2, scope: !477, inlinedAt: !544)
!550 = !DILocation(line: 91, column: 6, scope: !495, inlinedAt: !549)
!551 = !DILocation(line: 91, column: 10, scope: !495, inlinedAt: !549)
!552 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !549)
!553 = !DILocation(line: 92, column: 3, scope: !499, inlinedAt: !549)
!554 = !DILocation(line: 94, column: 2, scope: !488, inlinedAt: !549)
!555 = !DILocation(line: 114, column: 1, scope: !488, inlinedAt: !549)
!556 = !DILocation(line: 261, column: 9, scope: !504)
!557 = !DILocation(line: 261, column: 16, scope: !504)
!558 = !DILocation(line: 261, column: 46, scope: !504)
!559 = !DILocation(line: 261, column: 13, scope: !504)
!560 = !DILocation(line: 262, column: 1, scope: !504)
!561 = !DILocation(line: 261, column: 2, scope: !504)
!562 = distinct !DISubprogram(name: "sys_clock_cycle_get_32", scope: !111, file: !111, line: 264, type: !188, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!563 = !{!564, !565}
!564 = !DILocalVariable(name: "key", scope: !562, file: !111, line: 266, type: !246)
!565 = !DILocalVariable(name: "ret", scope: !562, file: !111, line: 267, type: !58)
!566 = !DILocation(line: 266, column: 2, scope: !562)
!567 = !DILocation(line: 266, column: 19, scope: !562)
!568 = !DILocation(line: 160, column: 94, scope: !309, inlinedAt: !569)
!569 = distinct !DILocation(line: 266, column: 25, scope: !562)
!570 = !DILocation(line: 162, column: 9, scope: !309, inlinedAt: !569)
!571 = !DILocation(line: 163, column: 19, scope: !309, inlinedAt: !569)
!572 = !DILocation(line: 44, column: 2, scope: !320, inlinedAt: !573)
!573 = distinct !DILocation(line: 169, column: 10, scope: !309, inlinedAt: !569)
!574 = !DILocation(line: 44, column: 15, scope: !320, inlinedAt: !573)
!575 = !DILocation(line: 48, column: 2, scope: !320, inlinedAt: !573)
!576 = !DILocation(line: 80, column: 9, scope: !320, inlinedAt: !573)
!577 = !DILocation(line: 81, column: 1, scope: !320, inlinedAt: !573)
!578 = !DILocation(line: 169, column: 8, scope: !309, inlinedAt: !569)
!579 = !DILocation(line: 171, column: 26, scope: !309, inlinedAt: !569)
!580 = !DILocation(line: 110, column: 94, scope: !335, inlinedAt: !581)
!581 = distinct !DILocation(line: 171, column: 2, scope: !309, inlinedAt: !569)
!582 = !DILocation(line: 112, column: 9, scope: !335, inlinedAt: !581)
!583 = !DILocation(line: 177, column: 27, scope: !309, inlinedAt: !569)
!584 = !DILocation(line: 121, column: 95, scope: !344, inlinedAt: !585)
!585 = distinct !DILocation(line: 177, column: 2, scope: !309, inlinedAt: !569)
!586 = !DILocation(line: 123, column: 9, scope: !344, inlinedAt: !585)
!587 = !DILocation(line: 179, column: 2, scope: !309, inlinedAt: !569)
!588 = !DILocation(line: 266, column: 25, scope: !562)
!589 = !DILocation(line: 267, column: 2, scope: !562)
!590 = !DILocation(line: 267, column: 11, scope: !562)
!591 = !DILocation(line: 267, column: 17, scope: !562)
!592 = !DILocation(line: 269, column: 9, scope: !562)
!593 = !DILocation(line: 269, column: 6, scope: !562)
!594 = !DILocation(line: 270, column: 2, scope: !562)
!595 = !DILocation(line: 235, column: 84, scope: !477, inlinedAt: !596)
!596 = distinct !DILocation(line: 270, column: 2, scope: !562)
!597 = !DILocation(line: 236, column: 23, scope: !477, inlinedAt: !596)
!598 = !DILocation(line: 238, column: 9, scope: !477, inlinedAt: !596)
!599 = !DILocation(line: 261, column: 22, scope: !477, inlinedAt: !596)
!600 = !DILocation(line: 88, column: 80, scope: !488, inlinedAt: !601)
!601 = distinct !DILocation(line: 261, column: 2, scope: !477, inlinedAt: !596)
!602 = !DILocation(line: 91, column: 6, scope: !495, inlinedAt: !601)
!603 = !DILocation(line: 91, column: 10, scope: !495, inlinedAt: !601)
!604 = !DILocation(line: 91, column: 6, scope: !488, inlinedAt: !601)
!605 = !DILocation(line: 92, column: 3, scope: !499, inlinedAt: !601)
!606 = !DILocation(line: 94, column: 2, scope: !488, inlinedAt: !601)
!607 = !DILocation(line: 114, column: 1, scope: !488, inlinedAt: !601)
!608 = !DILocation(line: 271, column: 9, scope: !562)
!609 = !DILocation(line: 272, column: 1, scope: !562)
!610 = !DILocation(line: 271, column: 2, scope: !562)
!611 = distinct !DISubprogram(name: "sys_clock_idle_exit", scope: !111, file: !111, line: 285, type: !232, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!612 = !DILocation(line: 287, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !611, file: !111, line: 287, column: 6)
!614 = !DILocation(line: 287, column: 16, scope: !613)
!615 = !DILocation(line: 287, column: 6, scope: !611)
!616 = !DILocation(line: 288, column: 57, scope: !617)
!617 = distinct !DILexicalBlock(scope: !613, file: !111, line: 287, column: 31)
!618 = !DILocation(line: 289, column: 2, scope: !617)
!619 = !DILocation(line: 290, column: 1, scope: !611)
!620 = distinct !DISubprogram(name: "sys_clock_disable", scope: !111, file: !111, line: 292, type: !232, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!621 = !DILocation(line: 294, column: 56, scope: !620)
!622 = !DILocation(line: 295, column: 1, scope: !620)
!623 = distinct !DISubprogram(name: "sys_clock_driver_init", scope: !111, file: !111, line: 297, type: !121, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!624 = !DILocation(line: 300, column: 2, scope: !623)
!625 = !DILocation(line: 301, column: 15, scope: !623)
!626 = !DILocation(line: 301, column: 45, scope: !623)
!627 = !DILocation(line: 301, column: 54, scope: !623)
!628 = !DILocation(line: 301, column: 12, scope: !623)
!629 = !DILocation(line: 302, column: 15, scope: !623)
!630 = !DILocation(line: 303, column: 58, scope: !623)
!631 = !DILocation(line: 303, column: 56, scope: !623)
!632 = !DILocation(line: 304, column: 55, scope: !623)
!633 = !DILocation(line: 305, column: 56, scope: !623)
!634 = !DILocation(line: 308, column: 2, scope: !623)
!635 = distinct !DISubprogram(name: "__NVIC_SetPriority", scope: !53, file: !53, line: 732, type: !636, scopeLine: 733, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !638, !58}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRQn_Type", file: !6, line: 107, baseType: !5)
!639 = !{!640, !641}
!640 = !DILocalVariable(name: "IRQn", arg: 1, scope: !635, file: !53, line: 732, type: !638)
!641 = !DILocalVariable(name: "priority", arg: 2, scope: !635, file: !53, line: 732, type: !58)
!642 = !DILocation(line: 732, column: 51, scope: !635)
!643 = !DILocation(line: 732, column: 66, scope: !635)
!644 = !DILocation(line: 734, column: 17, scope: !645)
!645 = distinct !DILexicalBlock(scope: !635, file: !53, line: 734, column: 7)
!646 = !DILocation(line: 734, column: 7, scope: !645)
!647 = !DILocation(line: 734, column: 23, scope: !645)
!648 = !DILocation(line: 734, column: 7, scope: !635)
!649 = !DILocation(line: 736, column: 183, scope: !650)
!650 = distinct !DILexicalBlock(scope: !645, file: !53, line: 735, column: 3)
!651 = !DILocation(line: 736, column: 173, scope: !650)
!652 = !DILocation(line: 736, column: 190, scope: !650)
!653 = !DILocation(line: 736, column: 110, scope: !650)
!654 = !DILocation(line: 736, column: 240, scope: !650)
!655 = !DILocation(line: 736, column: 230, scope: !650)
!656 = !DILocation(line: 736, column: 249, scope: !650)
!657 = !DILocation(line: 736, column: 259, scope: !650)
!658 = !DILocation(line: 736, column: 212, scope: !650)
!659 = !DILocation(line: 736, column: 203, scope: !650)
!660 = !DILocation(line: 736, column: 201, scope: !650)
!661 = !DILocation(line: 737, column: 11, scope: !650)
!662 = !DILocation(line: 737, column: 20, scope: !650)
!663 = !DILocation(line: 737, column: 33, scope: !650)
!664 = !DILocation(line: 737, column: 81, scope: !650)
!665 = !DILocation(line: 737, column: 71, scope: !650)
!666 = !DILocation(line: 737, column: 90, scope: !650)
!667 = !DILocation(line: 737, column: 100, scope: !650)
!668 = !DILocation(line: 737, column: 53, scope: !650)
!669 = !DILocation(line: 736, column: 268, scope: !650)
!670 = !DILocation(line: 736, column: 78, scope: !650)
!671 = !DILocation(line: 736, column: 68, scope: !650)
!672 = !DILocation(line: 736, column: 85, scope: !650)
!673 = !DILocation(line: 736, column: 5, scope: !650)
!674 = !DILocation(line: 736, column: 96, scope: !650)
!675 = !DILocation(line: 738, column: 3, scope: !650)
!676 = !DILocation(line: 741, column: 202, scope: !677)
!677 = distinct !DILexicalBlock(scope: !645, file: !53, line: 740, column: 3)
!678 = !DILocation(line: 741, column: 192, scope: !677)
!679 = !DILocation(line: 741, column: 209, scope: !677)
!680 = !DILocation(line: 741, column: 218, scope: !677)
!681 = !DILocation(line: 741, column: 224, scope: !677)
!682 = !DILocation(line: 741, column: 127, scope: !677)
!683 = !DILocation(line: 741, column: 274, scope: !677)
!684 = !DILocation(line: 741, column: 264, scope: !677)
!685 = !DILocation(line: 741, column: 283, scope: !677)
!686 = !DILocation(line: 741, column: 293, scope: !677)
!687 = !DILocation(line: 741, column: 246, scope: !677)
!688 = !DILocation(line: 741, column: 237, scope: !677)
!689 = !DILocation(line: 741, column: 235, scope: !677)
!690 = !DILocation(line: 742, column: 11, scope: !677)
!691 = !DILocation(line: 742, column: 20, scope: !677)
!692 = !DILocation(line: 742, column: 33, scope: !677)
!693 = !DILocation(line: 742, column: 81, scope: !677)
!694 = !DILocation(line: 742, column: 71, scope: !677)
!695 = !DILocation(line: 742, column: 90, scope: !677)
!696 = !DILocation(line: 742, column: 100, scope: !677)
!697 = !DILocation(line: 742, column: 53, scope: !677)
!698 = !DILocation(line: 741, column: 302, scope: !677)
!699 = !DILocation(line: 741, column: 80, scope: !677)
!700 = !DILocation(line: 741, column: 70, scope: !677)
!701 = !DILocation(line: 741, column: 87, scope: !677)
!702 = !DILocation(line: 741, column: 96, scope: !677)
!703 = !DILocation(line: 741, column: 102, scope: !677)
!704 = !DILocation(line: 741, column: 5, scope: !677)
!705 = !DILocation(line: 741, column: 113, scope: !677)
!706 = !DILocation(line: 744, column: 1, scope: !635)
