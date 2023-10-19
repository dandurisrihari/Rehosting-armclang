; ModuleID = '../bc_files/reset_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/reset/reset_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.reset_stm32_config = type { i32 }
%struct.reset_driver_api = type { ptr, ptr, ptr, ptr }
%struct.device_state = type { i8, i8 }
%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.init_entry = type { %union.init_function, ptr }
%union.init_function = type { ptr }

@.str = private unnamed_addr constant [17 x i8] c"reset-controller\00", align 1, !dbg !0
@reset_stm32_config = internal constant %struct.reset_stm32_config { i32 1073876992 }, align 4, !dbg !7
@reset_stm32_driver_api = internal constant %struct.reset_driver_api { ptr @reset_stm32_status, ptr @reset_stm32_line_assert, ptr @reset_stm32_line_deassert, ptr @reset_stm32_line_toggle }, align 4, !dbg !84
@__devstate_dts_ord_31 = internal global %struct.device_state zeroinitializer, section ".z_devstate", align 1, !dbg !82
@__device_dts_ord_31 = hidden constant %struct.device { ptr @.str, ptr @reset_stm32_config, ptr @reset_stm32_driver_api, ptr @__devstate_dts_ord_31, ptr null }, section "._device.static.1_35_", align 4, !dbg !62
@__init___device_dts_ord_31 = internal constant %struct.init_entry { %union.init_function zeroinitializer, ptr @__device_dts_ord_31 }, section ".z_init_PRE_KERNEL_135_00031_", align 4, !dbg !64
@llvm.used = appending global [2 x ptr] [ptr @__device_dts_ord_31, ptr @__init___device_dts_ord_31], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !98 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = load ptr, ptr %2, align 4, !dbg !104
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !105
  ret i1 %4, !dbg !106
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !107 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !109, metadata !DIExpression()), !dbg !113
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !110, metadata !DIExpression()), !dbg !114
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %8, metadata !112, metadata !DIExpression()), !dbg !117
  %10 = load ptr, ptr %5, align 4, !dbg !118
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !119
  %12 = load ptr, ptr %11, align 4, !dbg !119
  store ptr %12, ptr %8, align 4, !dbg !117
  %13 = load ptr, ptr %8, align 4, !dbg !120
  %14 = getelementptr inbounds %struct.reset_driver_api, ptr %13, i32 0, i32 0, !dbg !122
  %15 = load ptr, ptr %14, align 4, !dbg !122
  %16 = icmp eq ptr %15, null, !dbg !123
  br i1 %16, label %17, label %18, !dbg !124

17:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !125
  store i32 1, ptr %9, align 4
  br label %26, !dbg !125

18:                                               ; preds = %3
  %19 = load ptr, ptr %8, align 4, !dbg !127
  %20 = getelementptr inbounds %struct.reset_driver_api, ptr %19, i32 0, i32 0, !dbg !128
  %21 = load ptr, ptr %20, align 4, !dbg !128
  %22 = load ptr, ptr %5, align 4, !dbg !129
  %23 = load i32, ptr %6, align 4, !dbg !130
  %24 = load ptr, ptr %7, align 4, !dbg !131
  %25 = call i32 %21(ptr noundef %22, i32 noundef %23, ptr noundef %24) #5, !dbg !127
  store i32 %25, ptr %4, align 4, !dbg !132
  store i32 1, ptr %9, align 4
  br label %26, !dbg !132

26:                                               ; preds = %18, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !133
  %27 = load i32, ptr %4, align 4, !dbg !133
  ret i32 %27, !dbg !133
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_assert(ptr noundef %0, i32 noundef %1) #0 !dbg !134 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !136, metadata !DIExpression()), !dbg !139
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %6, metadata !138, metadata !DIExpression()), !dbg !142
  %8 = load ptr, ptr %4, align 4, !dbg !143
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !144
  %10 = load ptr, ptr %9, align 4, !dbg !144
  store ptr %10, ptr %6, align 4, !dbg !142
  %11 = load ptr, ptr %6, align 4, !dbg !145
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 1, !dbg !147
  %13 = load ptr, ptr %12, align 4, !dbg !147
  %14 = icmp eq ptr %13, null, !dbg !148
  br i1 %14, label %15, label %16, !dbg !149

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !150
  store i32 1, ptr %7, align 4
  br label %23, !dbg !150

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !152
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 1, !dbg !153
  %19 = load ptr, ptr %18, align 4, !dbg !153
  %20 = load ptr, ptr %4, align 4, !dbg !154
  %21 = load i32, ptr %5, align 4, !dbg !155
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #5, !dbg !152
  store i32 %22, ptr %3, align 4, !dbg !156
  store i32 1, ptr %7, align 4
  br label %23, !dbg !156

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !157
  %24 = load i32, ptr %3, align 4, !dbg !157
  ret i32 %24, !dbg !157
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_deassert(ptr noundef %0, i32 noundef %1) #0 !dbg !158 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !160, metadata !DIExpression()), !dbg !163
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !161, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %6, metadata !162, metadata !DIExpression()), !dbg !166
  %8 = load ptr, ptr %4, align 4, !dbg !167
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !168
  %10 = load ptr, ptr %9, align 4, !dbg !168
  store ptr %10, ptr %6, align 4, !dbg !166
  %11 = load ptr, ptr %6, align 4, !dbg !169
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 2, !dbg !171
  %13 = load ptr, ptr %12, align 4, !dbg !171
  %14 = icmp eq ptr %13, null, !dbg !172
  br i1 %14, label %15, label %16, !dbg !173

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !174
  store i32 1, ptr %7, align 4
  br label %23, !dbg !174

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !176
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 2, !dbg !177
  %19 = load ptr, ptr %18, align 4, !dbg !177
  %20 = load ptr, ptr %4, align 4, !dbg !178
  %21 = load i32, ptr %5, align 4, !dbg !179
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #5, !dbg !176
  store i32 %22, ptr %3, align 4, !dbg !180
  store i32 1, ptr %7, align 4
  br label %23, !dbg !180

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !181
  %24 = load i32, ptr %3, align 4, !dbg !181
  ret i32 %24, !dbg !181
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !182 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !184, metadata !DIExpression()), !dbg !187
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !185, metadata !DIExpression()), !dbg !188
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %6, metadata !186, metadata !DIExpression()), !dbg !190
  %8 = load ptr, ptr %4, align 4, !dbg !191
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !192
  %10 = load ptr, ptr %9, align 4, !dbg !192
  store ptr %10, ptr %6, align 4, !dbg !190
  %11 = load ptr, ptr %6, align 4, !dbg !193
  %12 = getelementptr inbounds %struct.reset_driver_api, ptr %11, i32 0, i32 3, !dbg !195
  %13 = load ptr, ptr %12, align 4, !dbg !195
  %14 = icmp eq ptr %13, null, !dbg !196
  br i1 %14, label %15, label %16, !dbg !197

15:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !198
  store i32 1, ptr %7, align 4
  br label %23, !dbg !198

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 4, !dbg !200
  %18 = getelementptr inbounds %struct.reset_driver_api, ptr %17, i32 0, i32 3, !dbg !201
  %19 = load ptr, ptr %18, align 4, !dbg !201
  %20 = load ptr, ptr %4, align 4, !dbg !202
  %21 = load i32, ptr %5, align 4, !dbg !203
  %22 = call i32 %19(ptr noundef %20, i32 noundef %21) #5, !dbg !200
  store i32 %22, ptr %3, align 4, !dbg !204
  store i32 1, ptr %7, align 4
  br label %23, !dbg !204

23:                                               ; preds = %16, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !205
  %24 = load i32, ptr %3, align 4, !dbg !205
  ret i32 %24, !dbg !205
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare !dbg !206 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @reset_stm32_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #4 !dbg !208 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !210, metadata !DIExpression()), !dbg !215
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !211, metadata !DIExpression()), !dbg !216
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !212, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %10, metadata !213, metadata !DIExpression()), !dbg !219
  %11 = load ptr, ptr %7, align 4, !dbg !220
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !221
  %13 = load ptr, ptr %12, align 4, !dbg !221
  store ptr %13, ptr %10, align 4, !dbg !219
  %14 = load ptr, ptr %10, align 4, !dbg !222
  %15 = getelementptr inbounds %struct.reset_stm32_config, ptr %14, i32 0, i32 0, !dbg !223
  %16 = load i32, ptr %15, align 4, !dbg !223
  %17 = load i32, ptr %8, align 4, !dbg !224
  %18 = lshr i32 %17, 5, !dbg !225
  %19 = and i32 %18, 4095, !dbg !226
  %20 = add i32 %16, %19, !dbg !227
  %21 = load i32, ptr %8, align 4, !dbg !228
  %22 = and i32 %21, 31, !dbg !229
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !230, metadata !DIExpression()), !dbg !240
  store i32 %22, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !238, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %6, metadata !239, metadata !DIExpression()), !dbg !244
  %23 = load i32, ptr %4, align 4, !dbg !245
  %24 = inttoptr i32 %23 to ptr, !dbg !246
  %25 = load volatile i32, ptr %24, align 4, !dbg !247
  store i32 %25, ptr %6, align 4, !dbg !244
  %26 = load i32, ptr %6, align 4, !dbg !248
  %27 = load i32, ptr %5, align 4, !dbg !249
  %28 = shl i32 1, %27, !dbg !250
  %29 = and i32 %26, %28, !dbg !251
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6, !dbg !252
  %30 = icmp ne i32 %29, 0, !dbg !253
  %31 = xor i1 %30, true, !dbg !253
  %32 = xor i1 %31, true, !dbg !254
  %33 = zext i1 %32 to i32, !dbg !254
  %34 = trunc i32 %33 to i8, !dbg !254
  %35 = load ptr, ptr %9, align 4, !dbg !255
  store i8 %34, ptr %35, align 1, !dbg !256
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !257
  ret i32 0, !dbg !258
}

; Function Attrs: nounwind optsize
define internal i32 @reset_stm32_line_assert(ptr noundef %0, i32 noundef %1) #4 !dbg !259 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !261, metadata !DIExpression()), !dbg !264
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !262, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %8, metadata !263, metadata !DIExpression()), !dbg !267
  %9 = load ptr, ptr %6, align 4, !dbg !268
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !269
  %11 = load ptr, ptr %10, align 4, !dbg !269
  store ptr %11, ptr %8, align 4, !dbg !267
  %12 = load ptr, ptr %8, align 4, !dbg !270
  %13 = getelementptr inbounds %struct.reset_stm32_config, ptr %12, i32 0, i32 0, !dbg !271
  %14 = load i32, ptr %13, align 4, !dbg !271
  %15 = load i32, ptr %7, align 4, !dbg !272
  %16 = lshr i32 %15, 5, !dbg !273
  %17 = and i32 %16, 4095, !dbg !274
  %18 = add i32 %14, %17, !dbg !275
  %19 = load i32, ptr %7, align 4, !dbg !276
  %20 = and i32 %19, 31, !dbg !277
  store i32 %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !278, metadata !DIExpression()), !dbg !285
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %5, metadata !284, metadata !DIExpression()), !dbg !289
  %21 = load i32, ptr %3, align 4, !dbg !290
  %22 = inttoptr i32 %21 to ptr, !dbg !291
  %23 = load volatile i32, ptr %22, align 4, !dbg !292
  store i32 %23, ptr %5, align 4, !dbg !289
  %24 = load i32, ptr %5, align 4, !dbg !293
  %25 = load i32, ptr %4, align 4, !dbg !294
  %26 = shl i32 1, %25, !dbg !295
  %27 = or i32 %24, %26, !dbg !296
  %28 = load i32, ptr %3, align 4, !dbg !297
  %29 = inttoptr i32 %28 to ptr, !dbg !298
  store volatile i32 %27, ptr %29, align 4, !dbg !299
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !301
  ret i32 0, !dbg !302
}

; Function Attrs: nounwind optsize
define internal i32 @reset_stm32_line_deassert(ptr noundef %0, i32 noundef %1) #4 !dbg !303 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !305, metadata !DIExpression()), !dbg !308
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %8, metadata !307, metadata !DIExpression()), !dbg !311
  %9 = load ptr, ptr %6, align 4, !dbg !312
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !313
  %11 = load ptr, ptr %10, align 4, !dbg !313
  store ptr %11, ptr %8, align 4, !dbg !311
  %12 = load ptr, ptr %8, align 4, !dbg !314
  %13 = getelementptr inbounds %struct.reset_stm32_config, ptr %12, i32 0, i32 0, !dbg !315
  %14 = load i32, ptr %13, align 4, !dbg !315
  %15 = load i32, ptr %7, align 4, !dbg !316
  %16 = lshr i32 %15, 5, !dbg !317
  %17 = and i32 %16, 4095, !dbg !318
  %18 = add i32 %14, %17, !dbg !319
  %19 = load i32, ptr %7, align 4, !dbg !320
  %20 = and i32 %19, 31, !dbg !321
  store i32 %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !322, metadata !DIExpression()), !dbg !327
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !325, metadata !DIExpression()), !dbg !329
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !330
  call void @llvm.dbg.declare(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !331
  %21 = load i32, ptr %3, align 4, !dbg !332
  %22 = inttoptr i32 %21 to ptr, !dbg !333
  %23 = load volatile i32, ptr %22, align 4, !dbg !334
  store i32 %23, ptr %5, align 4, !dbg !331
  %24 = load i32, ptr %5, align 4, !dbg !335
  %25 = load i32, ptr %4, align 4, !dbg !336
  %26 = shl i32 1, %25, !dbg !337
  %27 = xor i32 %26, -1, !dbg !338
  %28 = and i32 %24, %27, !dbg !339
  %29 = load i32, ptr %3, align 4, !dbg !340
  %30 = inttoptr i32 %29 to ptr, !dbg !341
  store volatile i32 %28, ptr %30, align 4, !dbg !342
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !343
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !344
  ret i32 0, !dbg !345
}

; Function Attrs: nounwind optsize
define internal i32 @reset_stm32_line_toggle(ptr noundef %0, i32 noundef %1) #4 !dbg !346 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !348, metadata !DIExpression()), !dbg !350
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !349, metadata !DIExpression()), !dbg !351
  %5 = load ptr, ptr %3, align 4, !dbg !352
  %6 = load i32, ptr %4, align 4, !dbg !353
  %7 = call i32 @reset_stm32_line_assert(ptr noundef %5, i32 noundef %6) #5, !dbg !354
  %8 = load ptr, ptr %3, align 4, !dbg !355
  %9 = load i32, ptr %4, align 4, !dbg !356
  %10 = call i32 @reset_stm32_line_deassert(ptr noundef %8, i32 noundef %9) #5, !dbg !357
  ret i32 0, !dbg !358
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/reset/reset_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "reset_stm32_config", scope: !9, file: !2, line: 73, type: !86, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !61, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "reset_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!11 = !{!12, !46, !59}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_driver_api", file: !15, line: 140, size: 128, elements: !16)
!15 = !DIFile(filename: "include/zephyr/drivers/reset.h", directory: "/home/sri/zephyrproject/zephyr")
!16 = !{!17, !50, !55, !57}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !14, file: !15, line: 141, baseType: !18, size: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_status", file: !15, line: 114, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 32)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !47, !49}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 381, size: 160, elements: !27)
!26 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!27 = !{!28, !31, !34, !35, !45}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !25, file: !26, line: 383, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 32)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !25, file: !26, line: 385, baseType: !32, size: 32, offset: 32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !25, file: !26, line: 387, baseType: !32, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !25, file: !26, line: 389, baseType: !36, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !26, line: 354, size: 16, elements: !38)
!38 = !{!39, !43}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !37, file: !26, line: 362, baseType: !40, size: 8)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !41, line: 62, baseType: !42)
!41 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !37, file: !26, line: 367, baseType: !44, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!44 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !26, line: 391, baseType: !46, size: 32, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 64, baseType: !48)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "line_assert", scope: !14, file: !15, line: 142, baseType: !51, size: 32, offset: 32)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_assert", file: !15, line: 121, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 32)
!53 = !DISubroutineType(types: !54)
!54 = !{!22, !23, !47}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "line_deassert", scope: !14, file: !15, line: 143, baseType: !56, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_deassert", file: !15, line: 128, baseType: !52)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "line_toggle", scope: !14, file: !15, line: 144, baseType: !58, size: 32, offset: 96)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "reset_api_line_toggle", file: !15, line: 135, baseType: !52)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !47)
!61 = !{!0, !62, !64, !82, !7, !84}
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "__device_dts_ord_31", scope: !9, file: !2, line: 77, type: !24, isLocal: false, isDefinition: true, align: 32)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "__init___device_dts_ord_31", scope: !9, file: !2, line: 77, type: !66, isLocal: true, isDefinition: true, align: 32)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "init_entry", file: !68, line: 92, size: 64, elements: !69)
!68 = !DIFile(filename: "include/zephyr/init.h", directory: "/home/sri/zephyrproject/zephyr")
!69 = !{!70, !81}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "init_fn", scope: !67, file: !68, line: 94, baseType: !71, size: 32)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "init_function", file: !68, line: 59, size: 32, elements: !72)
!72 = !{!73, !77}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !71, file: !68, line: 66, baseType: !74, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 32)
!75 = !DISubroutineType(types: !76)
!76 = !{!22}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !71, file: !68, line: 75, baseType: !78, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 32)
!79 = !DISubroutineType(types: !80)
!80 = !{!22, !23}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !67, file: !68, line: 99, baseType: !23, size: 32, offset: 32)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__devstate_dts_ord_31", scope: !9, file: !2, line: 77, type: !37, isLocal: true, isDefinition: true, align: 8)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "reset_stm32_driver_api", scope: !9, file: !2, line: 66, type: !13, isLocal: true, isDefinition: true)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reset_stm32_config", file: !2, line: 18, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !87, file: !2, line: 19, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !41, line: 102, baseType: !48)
!91 = !{i32 7, !"Dwarf Version", i32 4}
!92 = !{i32 2, !"Debug Info Version", i32 3}
!93 = !{i32 1, !"wchar_size", i32 4}
!94 = !{i32 1, !"static_rwdata", i32 1}
!95 = !{i32 1, !"enumsize_buildattr", i32 1}
!96 = !{i32 1, !"armlib_unavailable", i32 0}
!97 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!98 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !26, file: !26, line: 744, type: !99, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!44, !23}
!101 = !{!102}
!102 = !DILocalVariable(name: "dev", arg: 1, scope: !98, file: !26, line: 744, type: !23)
!103 = !DILocation(line: 744, column: 65, scope: !98)
!104 = !DILocation(line: 746, column: 27, scope: !98)
!105 = !DILocation(line: 746, column: 9, scope: !98)
!106 = !DILocation(line: 746, column: 2, scope: !98)
!107 = distinct !DISubprogram(name: "z_impl_reset_status", scope: !15, file: !15, line: 164, type: !20, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DILocalVariable(name: "dev", arg: 1, scope: !107, file: !15, line: 164, type: !23)
!110 = !DILocalVariable(name: "id", arg: 2, scope: !107, file: !15, line: 164, type: !47)
!111 = !DILocalVariable(name: "status", arg: 3, scope: !107, file: !15, line: 164, type: !49)
!112 = !DILocalVariable(name: "api", scope: !107, file: !15, line: 166, type: !12)
!113 = !DILocation(line: 164, column: 60, scope: !107)
!114 = !DILocation(line: 164, column: 74, scope: !107)
!115 = !DILocation(line: 164, column: 87, scope: !107)
!116 = !DILocation(line: 166, column: 2, scope: !107)
!117 = !DILocation(line: 166, column: 33, scope: !107)
!118 = !DILocation(line: 166, column: 72, scope: !107)
!119 = !DILocation(line: 166, column: 77, scope: !107)
!120 = !DILocation(line: 168, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !107, file: !15, line: 168, column: 6)
!122 = !DILocation(line: 168, column: 11, scope: !121)
!123 = !DILocation(line: 168, column: 18, scope: !121)
!124 = !DILocation(line: 168, column: 6, scope: !107)
!125 = !DILocation(line: 169, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !15, line: 168, column: 33)
!127 = !DILocation(line: 172, column: 9, scope: !107)
!128 = !DILocation(line: 172, column: 14, scope: !107)
!129 = !DILocation(line: 172, column: 21, scope: !107)
!130 = !DILocation(line: 172, column: 26, scope: !107)
!131 = !DILocation(line: 172, column: 30, scope: !107)
!132 = !DILocation(line: 172, column: 2, scope: !107)
!133 = !DILocation(line: 173, column: 1, scope: !107)
!134 = distinct !DISubprogram(name: "z_impl_reset_line_assert", scope: !15, file: !15, line: 207, type: !53, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !135)
!135 = !{!136, !137, !138}
!136 = !DILocalVariable(name: "dev", arg: 1, scope: !134, file: !15, line: 207, type: !23)
!137 = !DILocalVariable(name: "id", arg: 2, scope: !134, file: !15, line: 207, type: !47)
!138 = !DILocalVariable(name: "api", scope: !134, file: !15, line: 209, type: !12)
!139 = !DILocation(line: 207, column: 65, scope: !134)
!140 = !DILocation(line: 207, column: 79, scope: !134)
!141 = !DILocation(line: 209, column: 2, scope: !134)
!142 = !DILocation(line: 209, column: 33, scope: !134)
!143 = !DILocation(line: 209, column: 72, scope: !134)
!144 = !DILocation(line: 209, column: 77, scope: !134)
!145 = !DILocation(line: 211, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !134, file: !15, line: 211, column: 6)
!147 = !DILocation(line: 211, column: 11, scope: !146)
!148 = !DILocation(line: 211, column: 23, scope: !146)
!149 = !DILocation(line: 211, column: 6, scope: !134)
!150 = !DILocation(line: 212, column: 3, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !15, line: 211, column: 38)
!152 = !DILocation(line: 215, column: 9, scope: !134)
!153 = !DILocation(line: 215, column: 14, scope: !134)
!154 = !DILocation(line: 215, column: 26, scope: !134)
!155 = !DILocation(line: 215, column: 31, scope: !134)
!156 = !DILocation(line: 215, column: 2, scope: !134)
!157 = !DILocation(line: 216, column: 1, scope: !134)
!158 = distinct !DISubprogram(name: "z_impl_reset_line_deassert", scope: !15, file: !15, line: 249, type: !53, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !159)
!159 = !{!160, !161, !162}
!160 = !DILocalVariable(name: "dev", arg: 1, scope: !158, file: !15, line: 249, type: !23)
!161 = !DILocalVariable(name: "id", arg: 2, scope: !158, file: !15, line: 249, type: !47)
!162 = !DILocalVariable(name: "api", scope: !158, file: !15, line: 251, type: !12)
!163 = !DILocation(line: 249, column: 67, scope: !158)
!164 = !DILocation(line: 249, column: 81, scope: !158)
!165 = !DILocation(line: 251, column: 2, scope: !158)
!166 = !DILocation(line: 251, column: 33, scope: !158)
!167 = !DILocation(line: 251, column: 72, scope: !158)
!168 = !DILocation(line: 251, column: 77, scope: !158)
!169 = !DILocation(line: 253, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !158, file: !15, line: 253, column: 6)
!171 = !DILocation(line: 253, column: 11, scope: !170)
!172 = !DILocation(line: 253, column: 25, scope: !170)
!173 = !DILocation(line: 253, column: 6, scope: !158)
!174 = !DILocation(line: 254, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !15, line: 253, column: 40)
!176 = !DILocation(line: 257, column: 9, scope: !158)
!177 = !DILocation(line: 257, column: 14, scope: !158)
!178 = !DILocation(line: 257, column: 28, scope: !158)
!179 = !DILocation(line: 257, column: 33, scope: !158)
!180 = !DILocation(line: 257, column: 2, scope: !158)
!181 = !DILocation(line: 258, column: 1, scope: !158)
!182 = distinct !DISubprogram(name: "z_impl_reset_line_toggle", scope: !15, file: !15, line: 290, type: !53, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !183)
!183 = !{!184, !185, !186}
!184 = !DILocalVariable(name: "dev", arg: 1, scope: !182, file: !15, line: 290, type: !23)
!185 = !DILocalVariable(name: "id", arg: 2, scope: !182, file: !15, line: 290, type: !47)
!186 = !DILocalVariable(name: "api", scope: !182, file: !15, line: 292, type: !12)
!187 = !DILocation(line: 290, column: 65, scope: !182)
!188 = !DILocation(line: 290, column: 79, scope: !182)
!189 = !DILocation(line: 292, column: 2, scope: !182)
!190 = !DILocation(line: 292, column: 33, scope: !182)
!191 = !DILocation(line: 292, column: 72, scope: !182)
!192 = !DILocation(line: 292, column: 77, scope: !182)
!193 = !DILocation(line: 294, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !182, file: !15, line: 294, column: 6)
!195 = !DILocation(line: 294, column: 11, scope: !194)
!196 = !DILocation(line: 294, column: 23, scope: !194)
!197 = !DILocation(line: 294, column: 6, scope: !182)
!198 = !DILocation(line: 295, column: 3, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !15, line: 294, column: 38)
!200 = !DILocation(line: 298, column: 9, scope: !182)
!201 = !DILocation(line: 298, column: 14, scope: !182)
!202 = !DILocation(line: 298, column: 26, scope: !182)
!203 = !DILocation(line: 298, column: 31, scope: !182)
!204 = !DILocation(line: 298, column: 2, scope: !182)
!205 = !DILocation(line: 299, column: 1, scope: !182)
!206 = !DISubprogram(name: "z_device_is_ready", scope: !26, file: !26, line: 724, type: !99, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !207)
!207 = !{}
!208 = distinct !DISubprogram(name: "reset_stm32_status", scope: !2, file: !2, line: 22, type: !20, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(name: "dev", arg: 1, scope: !208, file: !2, line: 22, type: !23)
!211 = !DILocalVariable(name: "id", arg: 2, scope: !208, file: !2, line: 22, type: !47)
!212 = !DILocalVariable(name: "status", arg: 3, scope: !208, file: !2, line: 23, type: !49)
!213 = !DILocalVariable(name: "config", scope: !208, file: !2, line: 25, type: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!215 = !DILocation(line: 22, column: 52, scope: !208)
!216 = !DILocation(line: 22, column: 66, scope: !208)
!217 = !DILocation(line: 23, column: 19, scope: !208)
!218 = !DILocation(line: 25, column: 2, scope: !208)
!219 = !DILocation(line: 25, column: 35, scope: !208)
!220 = !DILocation(line: 25, column: 44, scope: !208)
!221 = !DILocation(line: 25, column: 49, scope: !208)
!222 = !DILocation(line: 27, column: 27, scope: !208)
!223 = !DILocation(line: 27, column: 35, scope: !208)
!224 = !DILocation(line: 27, column: 45, scope: !208)
!225 = !DILocation(line: 27, column: 49, scope: !208)
!226 = !DILocation(line: 27, column: 56, scope: !208)
!227 = !DILocation(line: 27, column: 40, scope: !208)
!228 = !DILocation(line: 28, column: 8, scope: !208)
!229 = !DILocation(line: 28, column: 11, scope: !208)
!230 = !DILocalVariable(name: "addr", arg: 1, scope: !231, file: !232, line: 38, type: !235)
!231 = distinct !DISubprogram(name: "sys_test_bit", scope: !232, file: !232, line: 38, type: !233, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !237)
!232 = !DIFile(filename: "include/zephyr/arch/common/sys_bitops.h", directory: "/home/sri/zephyrproject/zephyr")
!233 = !DISubroutineType(types: !234)
!234 = !{!22, !235, !48}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_addr_t", file: !236, line: 21, baseType: !90)
!236 = !DIFile(filename: "include/zephyr/sys/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!237 = !{!230, !238, !239}
!238 = !DILocalVariable(name: "bit", arg: 2, scope: !231, file: !232, line: 38, type: !48)
!239 = !DILocalVariable(name: "temp", scope: !231, file: !232, line: 40, type: !47)
!240 = !DILocation(line: 38, column: 74, scope: !231, inlinedAt: !241)
!241 = distinct !DILocation(line: 27, column: 14, scope: !208)
!242 = !DILocation(line: 38, column: 93, scope: !231, inlinedAt: !241)
!243 = !DILocation(line: 40, column: 2, scope: !231, inlinedAt: !241)
!244 = !DILocation(line: 40, column: 11, scope: !231, inlinedAt: !241)
!245 = !DILocation(line: 40, column: 40, scope: !231, inlinedAt: !241)
!246 = !DILocation(line: 40, column: 19, scope: !231, inlinedAt: !241)
!247 = !DILocation(line: 40, column: 18, scope: !231, inlinedAt: !241)
!248 = !DILocation(line: 42, column: 9, scope: !231, inlinedAt: !241)
!249 = !DILocation(line: 42, column: 22, scope: !231, inlinedAt: !241)
!250 = !DILocation(line: 42, column: 19, scope: !231, inlinedAt: !241)
!251 = !DILocation(line: 42, column: 14, scope: !231, inlinedAt: !241)
!252 = !DILocation(line: 43, column: 1, scope: !231, inlinedAt: !241)
!253 = !DILocation(line: 27, column: 13, scope: !208)
!254 = !DILocation(line: 27, column: 12, scope: !208)
!255 = !DILocation(line: 27, column: 3, scope: !208)
!256 = !DILocation(line: 27, column: 10, scope: !208)
!257 = !DILocation(line: 31, column: 1, scope: !208)
!258 = !DILocation(line: 30, column: 2, scope: !208)
!259 = distinct !DISubprogram(name: "reset_stm32_line_assert", scope: !2, file: !2, line: 33, type: !53, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !260)
!260 = !{!261, !262, !263}
!261 = !DILocalVariable(name: "dev", arg: 1, scope: !259, file: !2, line: 33, type: !23)
!262 = !DILocalVariable(name: "id", arg: 2, scope: !259, file: !2, line: 33, type: !47)
!263 = !DILocalVariable(name: "config", scope: !259, file: !2, line: 35, type: !214)
!264 = !DILocation(line: 33, column: 57, scope: !259)
!265 = !DILocation(line: 33, column: 71, scope: !259)
!266 = !DILocation(line: 35, column: 2, scope: !259)
!267 = !DILocation(line: 35, column: 35, scope: !259)
!268 = !DILocation(line: 35, column: 44, scope: !259)
!269 = !DILocation(line: 35, column: 49, scope: !259)
!270 = !DILocation(line: 37, column: 14, scope: !259)
!271 = !DILocation(line: 37, column: 22, scope: !259)
!272 = !DILocation(line: 37, column: 32, scope: !259)
!273 = !DILocation(line: 37, column: 36, scope: !259)
!274 = !DILocation(line: 37, column: 43, scope: !259)
!275 = !DILocation(line: 37, column: 27, scope: !259)
!276 = !DILocation(line: 38, column: 9, scope: !259)
!277 = !DILocation(line: 38, column: 12, scope: !259)
!278 = !DILocalVariable(name: "addr", arg: 1, scope: !279, file: !232, line: 24, type: !235)
!279 = distinct !DISubprogram(name: "sys_set_bit", scope: !232, file: !232, line: 24, type: !280, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !235, !48}
!282 = !{!278, !283, !284}
!283 = !DILocalVariable(name: "bit", arg: 2, scope: !279, file: !232, line: 24, type: !48)
!284 = !DILocalVariable(name: "temp", scope: !279, file: !232, line: 26, type: !47)
!285 = !DILocation(line: 24, column: 74, scope: !279, inlinedAt: !286)
!286 = distinct !DILocation(line: 37, column: 2, scope: !259)
!287 = !DILocation(line: 24, column: 93, scope: !279, inlinedAt: !286)
!288 = !DILocation(line: 26, column: 2, scope: !279, inlinedAt: !286)
!289 = !DILocation(line: 26, column: 11, scope: !279, inlinedAt: !286)
!290 = !DILocation(line: 26, column: 40, scope: !279, inlinedAt: !286)
!291 = !DILocation(line: 26, column: 19, scope: !279, inlinedAt: !286)
!292 = !DILocation(line: 26, column: 18, scope: !279, inlinedAt: !286)
!293 = !DILocation(line: 28, column: 31, scope: !279, inlinedAt: !286)
!294 = !DILocation(line: 28, column: 44, scope: !279, inlinedAt: !286)
!295 = !DILocation(line: 28, column: 41, scope: !279, inlinedAt: !286)
!296 = !DILocation(line: 28, column: 36, scope: !279, inlinedAt: !286)
!297 = !DILocation(line: 28, column: 24, scope: !279, inlinedAt: !286)
!298 = !DILocation(line: 28, column: 3, scope: !279, inlinedAt: !286)
!299 = !DILocation(line: 28, column: 29, scope: !279, inlinedAt: !286)
!300 = !DILocation(line: 29, column: 1, scope: !279, inlinedAt: !286)
!301 = !DILocation(line: 41, column: 1, scope: !259)
!302 = !DILocation(line: 40, column: 2, scope: !259)
!303 = distinct !DISubprogram(name: "reset_stm32_line_deassert", scope: !2, file: !2, line: 43, type: !53, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !304)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "dev", arg: 1, scope: !303, file: !2, line: 43, type: !23)
!306 = !DILocalVariable(name: "id", arg: 2, scope: !303, file: !2, line: 43, type: !47)
!307 = !DILocalVariable(name: "config", scope: !303, file: !2, line: 45, type: !214)
!308 = !DILocation(line: 43, column: 59, scope: !303)
!309 = !DILocation(line: 43, column: 73, scope: !303)
!310 = !DILocation(line: 45, column: 2, scope: !303)
!311 = !DILocation(line: 45, column: 35, scope: !303)
!312 = !DILocation(line: 45, column: 44, scope: !303)
!313 = !DILocation(line: 45, column: 49, scope: !303)
!314 = !DILocation(line: 51, column: 16, scope: !303)
!315 = !DILocation(line: 51, column: 24, scope: !303)
!316 = !DILocation(line: 51, column: 34, scope: !303)
!317 = !DILocation(line: 51, column: 38, scope: !303)
!318 = !DILocation(line: 51, column: 45, scope: !303)
!319 = !DILocation(line: 51, column: 29, scope: !303)
!320 = !DILocation(line: 52, column: 11, scope: !303)
!321 = !DILocation(line: 52, column: 14, scope: !303)
!322 = !DILocalVariable(name: "addr", arg: 1, scope: !323, file: !232, line: 31, type: !235)
!323 = distinct !DISubprogram(name: "sys_clear_bit", scope: !232, file: !232, line: 31, type: !280, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !324)
!324 = !{!322, !325, !326}
!325 = !DILocalVariable(name: "bit", arg: 2, scope: !323, file: !232, line: 31, type: !48)
!326 = !DILocalVariable(name: "temp", scope: !323, file: !232, line: 33, type: !47)
!327 = !DILocation(line: 31, column: 76, scope: !323, inlinedAt: !328)
!328 = distinct !DILocation(line: 51, column: 2, scope: !303)
!329 = !DILocation(line: 31, column: 95, scope: !323, inlinedAt: !328)
!330 = !DILocation(line: 33, column: 2, scope: !323, inlinedAt: !328)
!331 = !DILocation(line: 33, column: 11, scope: !323, inlinedAt: !328)
!332 = !DILocation(line: 33, column: 40, scope: !323, inlinedAt: !328)
!333 = !DILocation(line: 33, column: 19, scope: !323, inlinedAt: !328)
!334 = !DILocation(line: 33, column: 18, scope: !323, inlinedAt: !328)
!335 = !DILocation(line: 35, column: 31, scope: !323, inlinedAt: !328)
!336 = !DILocation(line: 35, column: 45, scope: !323, inlinedAt: !328)
!337 = !DILocation(line: 35, column: 42, scope: !323, inlinedAt: !328)
!338 = !DILocation(line: 35, column: 38, scope: !323, inlinedAt: !328)
!339 = !DILocation(line: 35, column: 36, scope: !323, inlinedAt: !328)
!340 = !DILocation(line: 35, column: 24, scope: !323, inlinedAt: !328)
!341 = !DILocation(line: 35, column: 3, scope: !323, inlinedAt: !328)
!342 = !DILocation(line: 35, column: 29, scope: !323, inlinedAt: !328)
!343 = !DILocation(line: 36, column: 1, scope: !323, inlinedAt: !328)
!344 = !DILocation(line: 56, column: 1, scope: !303)
!345 = !DILocation(line: 55, column: 2, scope: !303)
!346 = distinct !DISubprogram(name: "reset_stm32_line_toggle", scope: !2, file: !2, line: 58, type: !53, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !347)
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "dev", arg: 1, scope: !346, file: !2, line: 58, type: !23)
!349 = !DILocalVariable(name: "id", arg: 2, scope: !346, file: !2, line: 58, type: !47)
!350 = !DILocation(line: 58, column: 57, scope: !346)
!351 = !DILocation(line: 58, column: 71, scope: !346)
!352 = !DILocation(line: 60, column: 26, scope: !346)
!353 = !DILocation(line: 60, column: 31, scope: !346)
!354 = !DILocation(line: 60, column: 2, scope: !346)
!355 = !DILocation(line: 61, column: 28, scope: !346)
!356 = !DILocation(line: 61, column: 33, scope: !346)
!357 = !DILocation(line: 61, column: 2, scope: !346)
!358 = !DILocation(line: 63, column: 2, scope: !346)
