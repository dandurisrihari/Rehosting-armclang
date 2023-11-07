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

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !100 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !104, metadata !DIExpression()), !dbg !105
  %3 = load ptr, ptr %2, align 4, !dbg !106
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !107
  ret i1 %4, !dbg !108
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !109 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !110, metadata !DIExpression()), !dbg !111
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !112, metadata !DIExpression()), !dbg !113
  store ptr %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %8, metadata !116, metadata !DIExpression()), !dbg !117
  %9 = load ptr, ptr %5, align 4, !dbg !118
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 2, !dbg !119
  %11 = load ptr, ptr %10, align 4, !dbg !119
  store ptr %11, ptr %8, align 4, !dbg !117
  %12 = load ptr, ptr %8, align 4, !dbg !120
  %13 = getelementptr inbounds %struct.reset_driver_api, ptr %12, i32 0, i32 0, !dbg !122
  %14 = load ptr, ptr %13, align 4, !dbg !122
  %15 = icmp eq ptr %14, null, !dbg !123
  br i1 %15, label %16, label %17, !dbg !124

16:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !125
  br label %25, !dbg !125

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 4, !dbg !127
  %19 = getelementptr inbounds %struct.reset_driver_api, ptr %18, i32 0, i32 0, !dbg !128
  %20 = load ptr, ptr %19, align 4, !dbg !128
  %21 = load ptr, ptr %5, align 4, !dbg !129
  %22 = load i32, ptr %6, align 4, !dbg !130
  %23 = load ptr, ptr %7, align 4, !dbg !131
  %24 = call i32 %20(ptr noundef %21, i32 noundef %22, ptr noundef %23), !dbg !127
  store i32 %24, ptr %4, align 4, !dbg !132
  br label %25, !dbg !132

25:                                               ; preds = %17, %16
  %26 = load i32, ptr %4, align 4, !dbg !133
  ret i32 %26, !dbg !133
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_assert(ptr noundef %0, i32 noundef %1) #0 !dbg !134 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !135, metadata !DIExpression()), !dbg !136
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata ptr %6, metadata !139, metadata !DIExpression()), !dbg !140
  %7 = load ptr, ptr %4, align 4, !dbg !141
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !142
  %9 = load ptr, ptr %8, align 4, !dbg !142
  store ptr %9, ptr %6, align 4, !dbg !140
  %10 = load ptr, ptr %6, align 4, !dbg !143
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 1, !dbg !145
  %12 = load ptr, ptr %11, align 4, !dbg !145
  %13 = icmp eq ptr %12, null, !dbg !146
  br i1 %13, label %14, label %15, !dbg !147

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !148
  br label %22, !dbg !148

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !150
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 1, !dbg !151
  %18 = load ptr, ptr %17, align 4, !dbg !151
  %19 = load ptr, ptr %4, align 4, !dbg !152
  %20 = load i32, ptr %5, align 4, !dbg !153
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !150
  store i32 %21, ptr %3, align 4, !dbg !154
  br label %22, !dbg !154

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !155
  ret i32 %23, !dbg !155
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_deassert(ptr noundef %0, i32 noundef %1) #0 !dbg !156 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !157, metadata !DIExpression()), !dbg !158
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata ptr %6, metadata !161, metadata !DIExpression()), !dbg !162
  %7 = load ptr, ptr %4, align 4, !dbg !163
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !164
  %9 = load ptr, ptr %8, align 4, !dbg !164
  store ptr %9, ptr %6, align 4, !dbg !162
  %10 = load ptr, ptr %6, align 4, !dbg !165
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 2, !dbg !167
  %12 = load ptr, ptr %11, align 4, !dbg !167
  %13 = icmp eq ptr %12, null, !dbg !168
  br i1 %13, label %14, label %15, !dbg !169

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !170
  br label %22, !dbg !170

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !172
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 2, !dbg !173
  %18 = load ptr, ptr %17, align 4, !dbg !173
  %19 = load ptr, ptr %4, align 4, !dbg !174
  %20 = load i32, ptr %5, align 4, !dbg !175
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !172
  store i32 %21, ptr %3, align 4, !dbg !176
  br label %22, !dbg !176

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !177
  ret i32 %23, !dbg !177
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_reset_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !178 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata ptr %6, metadata !183, metadata !DIExpression()), !dbg !184
  %7 = load ptr, ptr %4, align 4, !dbg !185
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 2, !dbg !186
  %9 = load ptr, ptr %8, align 4, !dbg !186
  store ptr %9, ptr %6, align 4, !dbg !184
  %10 = load ptr, ptr %6, align 4, !dbg !187
  %11 = getelementptr inbounds %struct.reset_driver_api, ptr %10, i32 0, i32 3, !dbg !189
  %12 = load ptr, ptr %11, align 4, !dbg !189
  %13 = icmp eq ptr %12, null, !dbg !190
  br i1 %13, label %14, label %15, !dbg !191

14:                                               ; preds = %2
  store i32 -88, ptr %3, align 4, !dbg !192
  br label %22, !dbg !192

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 4, !dbg !194
  %17 = getelementptr inbounds %struct.reset_driver_api, ptr %16, i32 0, i32 3, !dbg !195
  %18 = load ptr, ptr %17, align 4, !dbg !195
  %19 = load ptr, ptr %4, align 4, !dbg !196
  %20 = load i32, ptr %5, align 4, !dbg !197
  %21 = call i32 %18(ptr noundef %19, i32 noundef %20), !dbg !194
  store i32 %21, ptr %3, align 4, !dbg !198
  br label %22, !dbg !198

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !199
  ret i32 %23, !dbg !199
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_stm32_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !200 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  store ptr %0, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !203, metadata !DIExpression()), !dbg !204
  store ptr %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata ptr %10, metadata !207, metadata !DIExpression()), !dbg !209
  %11 = load ptr, ptr %7, align 4, !dbg !210
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 1, !dbg !211
  %13 = load ptr, ptr %12, align 4, !dbg !211
  store ptr %13, ptr %10, align 4, !dbg !209
  %14 = load ptr, ptr %10, align 4, !dbg !212
  %15 = getelementptr inbounds %struct.reset_stm32_config, ptr %14, i32 0, i32 0, !dbg !213
  %16 = load i32, ptr %15, align 4, !dbg !213
  %17 = load i32, ptr %8, align 4, !dbg !214
  %18 = lshr i32 %17, 5, !dbg !215
  %19 = and i32 %18, 4095, !dbg !216
  %20 = add i32 %16, %19, !dbg !217
  %21 = load i32, ptr %8, align 4, !dbg !218
  %22 = and i32 %21, 31, !dbg !219
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !220, metadata !DIExpression()), !dbg !227
  store i32 %22, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata ptr %6, metadata !231, metadata !DIExpression()), !dbg !232
  %23 = load i32, ptr %4, align 4, !dbg !233
  %24 = inttoptr i32 %23 to ptr, !dbg !234
  %25 = load volatile i32, ptr %24, align 4, !dbg !235
  store i32 %25, ptr %6, align 4, !dbg !232
  %26 = load i32, ptr %6, align 4, !dbg !236
  %27 = load i32, ptr %5, align 4, !dbg !237
  %28 = shl i32 1, %27, !dbg !238
  %29 = and i32 %26, %28, !dbg !239
  %30 = icmp ne i32 %29, 0, !dbg !240
  %31 = xor i1 %30, true, !dbg !240
  %32 = xor i1 %31, true, !dbg !241
  %33 = zext i1 %32 to i32, !dbg !241
  %34 = trunc i32 %33 to i8, !dbg !241
  %35 = load ptr, ptr %9, align 4, !dbg !242
  store i8 %34, ptr %35, align 1, !dbg !243
  ret i32 0, !dbg !244
}

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_stm32_line_assert(ptr noundef %0, i32 noundef %1) #0 !dbg !245 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !246, metadata !DIExpression()), !dbg !247
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %8, metadata !250, metadata !DIExpression()), !dbg !251
  %9 = load ptr, ptr %6, align 4, !dbg !252
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !253
  %11 = load ptr, ptr %10, align 4, !dbg !253
  store ptr %11, ptr %8, align 4, !dbg !251
  %12 = load ptr, ptr %8, align 4, !dbg !254
  %13 = getelementptr inbounds %struct.reset_stm32_config, ptr %12, i32 0, i32 0, !dbg !255
  %14 = load i32, ptr %13, align 4, !dbg !255
  %15 = load i32, ptr %7, align 4, !dbg !256
  %16 = lshr i32 %15, 5, !dbg !257
  %17 = and i32 %16, 4095, !dbg !258
  %18 = add i32 %14, %17, !dbg !259
  %19 = load i32, ptr %7, align 4, !dbg !260
  %20 = and i32 %19, 31, !dbg !261
  store i32 %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !262, metadata !DIExpression()), !dbg !266
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !271
  %21 = load i32, ptr %3, align 4, !dbg !272
  %22 = inttoptr i32 %21 to ptr, !dbg !273
  %23 = load volatile i32, ptr %22, align 4, !dbg !274
  store i32 %23, ptr %5, align 4, !dbg !271
  %24 = load i32, ptr %5, align 4, !dbg !275
  %25 = load i32, ptr %4, align 4, !dbg !276
  %26 = shl i32 1, %25, !dbg !277
  %27 = or i32 %24, %26, !dbg !278
  %28 = load i32, ptr %3, align 4, !dbg !279
  %29 = inttoptr i32 %28 to ptr, !dbg !280
  store volatile i32 %27, ptr %29, align 4, !dbg !281
  ret i32 0, !dbg !282
}

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_stm32_line_deassert(ptr noundef %0, i32 noundef %1) #0 !dbg !283 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !284, metadata !DIExpression()), !dbg !285
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata ptr %8, metadata !288, metadata !DIExpression()), !dbg !289
  %9 = load ptr, ptr %6, align 4, !dbg !290
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !291
  %11 = load ptr, ptr %10, align 4, !dbg !291
  store ptr %11, ptr %8, align 4, !dbg !289
  %12 = load ptr, ptr %8, align 4, !dbg !292
  %13 = getelementptr inbounds %struct.reset_stm32_config, ptr %12, i32 0, i32 0, !dbg !293
  %14 = load i32, ptr %13, align 4, !dbg !293
  %15 = load i32, ptr %7, align 4, !dbg !294
  %16 = lshr i32 %15, 5, !dbg !295
  %17 = and i32 %16, 4095, !dbg !296
  %18 = add i32 %14, %17, !dbg !297
  %19 = load i32, ptr %7, align 4, !dbg !298
  %20 = and i32 %19, 31, !dbg !299
  store i32 %18, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !300, metadata !DIExpression()), !dbg !302
  store i32 %20, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata ptr %5, metadata !306, metadata !DIExpression()), !dbg !307
  %21 = load i32, ptr %3, align 4, !dbg !308
  %22 = inttoptr i32 %21 to ptr, !dbg !309
  %23 = load volatile i32, ptr %22, align 4, !dbg !310
  store i32 %23, ptr %5, align 4, !dbg !307
  %24 = load i32, ptr %5, align 4, !dbg !311
  %25 = load i32, ptr %4, align 4, !dbg !312
  %26 = shl i32 1, %25, !dbg !313
  %27 = xor i32 %26, -1, !dbg !314
  %28 = and i32 %24, %27, !dbg !315
  %29 = load i32, ptr %3, align 4, !dbg !316
  %30 = inttoptr i32 %29 to ptr, !dbg !317
  store volatile i32 %28, ptr %30, align 4, !dbg !318
  ret i32 0, !dbg !319
}

; Function Attrs: noinline nounwind optnone
define internal i32 @reset_stm32_line_toggle(ptr noundef %0, i32 noundef %1) #0 !dbg !320 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !321, metadata !DIExpression()), !dbg !322
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !323, metadata !DIExpression()), !dbg !324
  %5 = load ptr, ptr %3, align 4, !dbg !325
  %6 = load i32, ptr %4, align 4, !dbg !326
  %7 = call i32 @reset_stm32_line_assert(ptr noundef %5, i32 noundef %6), !dbg !327
  %8 = load ptr, ptr %3, align 4, !dbg !328
  %9 = load i32, ptr %4, align 4, !dbg !329
  %10 = call i32 @reset_stm32_line_deassert(ptr noundef %8, i32 noundef %9), !dbg !330
  ret i32 0, !dbg !331
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/reset/reset_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "reset_stm32_config", scope: !9, file: !2, line: 73, type: !86, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !61, splitDebugInlining: false, nameTableKind: None)
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
!97 = !{i32 8, !"PIC Level", i32 2}
!98 = !{i32 7, !"PIE Level", i32 2}
!99 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!100 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !26, file: !26, line: 744, type: !101, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{!44, !23}
!103 = !{}
!104 = !DILocalVariable(name: "dev", arg: 1, scope: !100, file: !26, line: 744, type: !23)
!105 = !DILocation(line: 744, column: 65, scope: !100)
!106 = !DILocation(line: 746, column: 27, scope: !100)
!107 = !DILocation(line: 746, column: 9, scope: !100)
!108 = !DILocation(line: 746, column: 2, scope: !100)
!109 = distinct !DISubprogram(name: "z_impl_reset_status", scope: !15, file: !15, line: 164, type: !20, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!110 = !DILocalVariable(name: "dev", arg: 1, scope: !109, file: !15, line: 164, type: !23)
!111 = !DILocation(line: 164, column: 60, scope: !109)
!112 = !DILocalVariable(name: "id", arg: 2, scope: !109, file: !15, line: 164, type: !47)
!113 = !DILocation(line: 164, column: 74, scope: !109)
!114 = !DILocalVariable(name: "status", arg: 3, scope: !109, file: !15, line: 164, type: !49)
!115 = !DILocation(line: 164, column: 87, scope: !109)
!116 = !DILocalVariable(name: "api", scope: !109, file: !15, line: 166, type: !12)
!117 = !DILocation(line: 166, column: 33, scope: !109)
!118 = !DILocation(line: 166, column: 72, scope: !109)
!119 = !DILocation(line: 166, column: 77, scope: !109)
!120 = !DILocation(line: 168, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !109, file: !15, line: 168, column: 6)
!122 = !DILocation(line: 168, column: 11, scope: !121)
!123 = !DILocation(line: 168, column: 18, scope: !121)
!124 = !DILocation(line: 168, column: 6, scope: !109)
!125 = !DILocation(line: 169, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !15, line: 168, column: 33)
!127 = !DILocation(line: 172, column: 9, scope: !109)
!128 = !DILocation(line: 172, column: 14, scope: !109)
!129 = !DILocation(line: 172, column: 21, scope: !109)
!130 = !DILocation(line: 172, column: 26, scope: !109)
!131 = !DILocation(line: 172, column: 30, scope: !109)
!132 = !DILocation(line: 172, column: 2, scope: !109)
!133 = !DILocation(line: 173, column: 1, scope: !109)
!134 = distinct !DISubprogram(name: "z_impl_reset_line_assert", scope: !15, file: !15, line: 207, type: !53, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!135 = !DILocalVariable(name: "dev", arg: 1, scope: !134, file: !15, line: 207, type: !23)
!136 = !DILocation(line: 207, column: 65, scope: !134)
!137 = !DILocalVariable(name: "id", arg: 2, scope: !134, file: !15, line: 207, type: !47)
!138 = !DILocation(line: 207, column: 79, scope: !134)
!139 = !DILocalVariable(name: "api", scope: !134, file: !15, line: 209, type: !12)
!140 = !DILocation(line: 209, column: 33, scope: !134)
!141 = !DILocation(line: 209, column: 72, scope: !134)
!142 = !DILocation(line: 209, column: 77, scope: !134)
!143 = !DILocation(line: 211, column: 6, scope: !144)
!144 = distinct !DILexicalBlock(scope: !134, file: !15, line: 211, column: 6)
!145 = !DILocation(line: 211, column: 11, scope: !144)
!146 = !DILocation(line: 211, column: 23, scope: !144)
!147 = !DILocation(line: 211, column: 6, scope: !134)
!148 = !DILocation(line: 212, column: 3, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !15, line: 211, column: 38)
!150 = !DILocation(line: 215, column: 9, scope: !134)
!151 = !DILocation(line: 215, column: 14, scope: !134)
!152 = !DILocation(line: 215, column: 26, scope: !134)
!153 = !DILocation(line: 215, column: 31, scope: !134)
!154 = !DILocation(line: 215, column: 2, scope: !134)
!155 = !DILocation(line: 216, column: 1, scope: !134)
!156 = distinct !DISubprogram(name: "z_impl_reset_line_deassert", scope: !15, file: !15, line: 249, type: !53, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!157 = !DILocalVariable(name: "dev", arg: 1, scope: !156, file: !15, line: 249, type: !23)
!158 = !DILocation(line: 249, column: 67, scope: !156)
!159 = !DILocalVariable(name: "id", arg: 2, scope: !156, file: !15, line: 249, type: !47)
!160 = !DILocation(line: 249, column: 81, scope: !156)
!161 = !DILocalVariable(name: "api", scope: !156, file: !15, line: 251, type: !12)
!162 = !DILocation(line: 251, column: 33, scope: !156)
!163 = !DILocation(line: 251, column: 72, scope: !156)
!164 = !DILocation(line: 251, column: 77, scope: !156)
!165 = !DILocation(line: 253, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !156, file: !15, line: 253, column: 6)
!167 = !DILocation(line: 253, column: 11, scope: !166)
!168 = !DILocation(line: 253, column: 25, scope: !166)
!169 = !DILocation(line: 253, column: 6, scope: !156)
!170 = !DILocation(line: 254, column: 3, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !15, line: 253, column: 40)
!172 = !DILocation(line: 257, column: 9, scope: !156)
!173 = !DILocation(line: 257, column: 14, scope: !156)
!174 = !DILocation(line: 257, column: 28, scope: !156)
!175 = !DILocation(line: 257, column: 33, scope: !156)
!176 = !DILocation(line: 257, column: 2, scope: !156)
!177 = !DILocation(line: 258, column: 1, scope: !156)
!178 = distinct !DISubprogram(name: "z_impl_reset_line_toggle", scope: !15, file: !15, line: 290, type: !53, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!179 = !DILocalVariable(name: "dev", arg: 1, scope: !178, file: !15, line: 290, type: !23)
!180 = !DILocation(line: 290, column: 65, scope: !178)
!181 = !DILocalVariable(name: "id", arg: 2, scope: !178, file: !15, line: 290, type: !47)
!182 = !DILocation(line: 290, column: 79, scope: !178)
!183 = !DILocalVariable(name: "api", scope: !178, file: !15, line: 292, type: !12)
!184 = !DILocation(line: 292, column: 33, scope: !178)
!185 = !DILocation(line: 292, column: 72, scope: !178)
!186 = !DILocation(line: 292, column: 77, scope: !178)
!187 = !DILocation(line: 294, column: 6, scope: !188)
!188 = distinct !DILexicalBlock(scope: !178, file: !15, line: 294, column: 6)
!189 = !DILocation(line: 294, column: 11, scope: !188)
!190 = !DILocation(line: 294, column: 23, scope: !188)
!191 = !DILocation(line: 294, column: 6, scope: !178)
!192 = !DILocation(line: 295, column: 3, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !15, line: 294, column: 38)
!194 = !DILocation(line: 298, column: 9, scope: !178)
!195 = !DILocation(line: 298, column: 14, scope: !178)
!196 = !DILocation(line: 298, column: 26, scope: !178)
!197 = !DILocation(line: 298, column: 31, scope: !178)
!198 = !DILocation(line: 298, column: 2, scope: !178)
!199 = !DILocation(line: 299, column: 1, scope: !178)
!200 = distinct !DISubprogram(name: "reset_stm32_status", scope: !2, file: !2, line: 22, type: !20, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!201 = !DILocalVariable(name: "dev", arg: 1, scope: !200, file: !2, line: 22, type: !23)
!202 = !DILocation(line: 22, column: 52, scope: !200)
!203 = !DILocalVariable(name: "id", arg: 2, scope: !200, file: !2, line: 22, type: !47)
!204 = !DILocation(line: 22, column: 66, scope: !200)
!205 = !DILocalVariable(name: "status", arg: 3, scope: !200, file: !2, line: 23, type: !49)
!206 = !DILocation(line: 23, column: 19, scope: !200)
!207 = !DILocalVariable(name: "config", scope: !200, file: !2, line: 25, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!209 = !DILocation(line: 25, column: 35, scope: !200)
!210 = !DILocation(line: 25, column: 44, scope: !200)
!211 = !DILocation(line: 25, column: 49, scope: !200)
!212 = !DILocation(line: 27, column: 27, scope: !200)
!213 = !DILocation(line: 27, column: 35, scope: !200)
!214 = !DILocation(line: 27, column: 45, scope: !200)
!215 = !DILocation(line: 27, column: 49, scope: !200)
!216 = !DILocation(line: 27, column: 56, scope: !200)
!217 = !DILocation(line: 27, column: 40, scope: !200)
!218 = !DILocation(line: 28, column: 8, scope: !200)
!219 = !DILocation(line: 28, column: 11, scope: !200)
!220 = !DILocalVariable(name: "addr", arg: 1, scope: !221, file: !222, line: 38, type: !225)
!221 = distinct !DISubprogram(name: "sys_test_bit", scope: !222, file: !222, line: 38, type: !223, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!222 = !DIFile(filename: "include/zephyr/arch/common/sys_bitops.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !DISubroutineType(types: !224)
!224 = !{!22, !225, !48}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_addr_t", file: !226, line: 21, baseType: !90)
!226 = !DIFile(filename: "include/zephyr/sys/sys_io.h", directory: "/home/sri/zephyrproject/zephyr")
!227 = !DILocation(line: 38, column: 74, scope: !221, inlinedAt: !228)
!228 = distinct !DILocation(line: 27, column: 14, scope: !200)
!229 = !DILocalVariable(name: "bit", arg: 2, scope: !221, file: !222, line: 38, type: !48)
!230 = !DILocation(line: 38, column: 93, scope: !221, inlinedAt: !228)
!231 = !DILocalVariable(name: "temp", scope: !221, file: !222, line: 40, type: !47)
!232 = !DILocation(line: 40, column: 11, scope: !221, inlinedAt: !228)
!233 = !DILocation(line: 40, column: 40, scope: !221, inlinedAt: !228)
!234 = !DILocation(line: 40, column: 19, scope: !221, inlinedAt: !228)
!235 = !DILocation(line: 40, column: 18, scope: !221, inlinedAt: !228)
!236 = !DILocation(line: 42, column: 9, scope: !221, inlinedAt: !228)
!237 = !DILocation(line: 42, column: 22, scope: !221, inlinedAt: !228)
!238 = !DILocation(line: 42, column: 19, scope: !221, inlinedAt: !228)
!239 = !DILocation(line: 42, column: 14, scope: !221, inlinedAt: !228)
!240 = !DILocation(line: 27, column: 13, scope: !200)
!241 = !DILocation(line: 27, column: 12, scope: !200)
!242 = !DILocation(line: 27, column: 3, scope: !200)
!243 = !DILocation(line: 27, column: 10, scope: !200)
!244 = !DILocation(line: 30, column: 2, scope: !200)
!245 = distinct !DISubprogram(name: "reset_stm32_line_assert", scope: !2, file: !2, line: 33, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!246 = !DILocalVariable(name: "dev", arg: 1, scope: !245, file: !2, line: 33, type: !23)
!247 = !DILocation(line: 33, column: 57, scope: !245)
!248 = !DILocalVariable(name: "id", arg: 2, scope: !245, file: !2, line: 33, type: !47)
!249 = !DILocation(line: 33, column: 71, scope: !245)
!250 = !DILocalVariable(name: "config", scope: !245, file: !2, line: 35, type: !208)
!251 = !DILocation(line: 35, column: 35, scope: !245)
!252 = !DILocation(line: 35, column: 44, scope: !245)
!253 = !DILocation(line: 35, column: 49, scope: !245)
!254 = !DILocation(line: 37, column: 14, scope: !245)
!255 = !DILocation(line: 37, column: 22, scope: !245)
!256 = !DILocation(line: 37, column: 32, scope: !245)
!257 = !DILocation(line: 37, column: 36, scope: !245)
!258 = !DILocation(line: 37, column: 43, scope: !245)
!259 = !DILocation(line: 37, column: 27, scope: !245)
!260 = !DILocation(line: 38, column: 9, scope: !245)
!261 = !DILocation(line: 38, column: 12, scope: !245)
!262 = !DILocalVariable(name: "addr", arg: 1, scope: !263, file: !222, line: 24, type: !225)
!263 = distinct !DISubprogram(name: "sys_set_bit", scope: !222, file: !222, line: 24, type: !264, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !225, !48}
!266 = !DILocation(line: 24, column: 74, scope: !263, inlinedAt: !267)
!267 = distinct !DILocation(line: 37, column: 2, scope: !245)
!268 = !DILocalVariable(name: "bit", arg: 2, scope: !263, file: !222, line: 24, type: !48)
!269 = !DILocation(line: 24, column: 93, scope: !263, inlinedAt: !267)
!270 = !DILocalVariable(name: "temp", scope: !263, file: !222, line: 26, type: !47)
!271 = !DILocation(line: 26, column: 11, scope: !263, inlinedAt: !267)
!272 = !DILocation(line: 26, column: 40, scope: !263, inlinedAt: !267)
!273 = !DILocation(line: 26, column: 19, scope: !263, inlinedAt: !267)
!274 = !DILocation(line: 26, column: 18, scope: !263, inlinedAt: !267)
!275 = !DILocation(line: 28, column: 31, scope: !263, inlinedAt: !267)
!276 = !DILocation(line: 28, column: 44, scope: !263, inlinedAt: !267)
!277 = !DILocation(line: 28, column: 41, scope: !263, inlinedAt: !267)
!278 = !DILocation(line: 28, column: 36, scope: !263, inlinedAt: !267)
!279 = !DILocation(line: 28, column: 24, scope: !263, inlinedAt: !267)
!280 = !DILocation(line: 28, column: 3, scope: !263, inlinedAt: !267)
!281 = !DILocation(line: 28, column: 29, scope: !263, inlinedAt: !267)
!282 = !DILocation(line: 40, column: 2, scope: !245)
!283 = distinct !DISubprogram(name: "reset_stm32_line_deassert", scope: !2, file: !2, line: 43, type: !53, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!284 = !DILocalVariable(name: "dev", arg: 1, scope: !283, file: !2, line: 43, type: !23)
!285 = !DILocation(line: 43, column: 59, scope: !283)
!286 = !DILocalVariable(name: "id", arg: 2, scope: !283, file: !2, line: 43, type: !47)
!287 = !DILocation(line: 43, column: 73, scope: !283)
!288 = !DILocalVariable(name: "config", scope: !283, file: !2, line: 45, type: !208)
!289 = !DILocation(line: 45, column: 35, scope: !283)
!290 = !DILocation(line: 45, column: 44, scope: !283)
!291 = !DILocation(line: 45, column: 49, scope: !283)
!292 = !DILocation(line: 51, column: 16, scope: !283)
!293 = !DILocation(line: 51, column: 24, scope: !283)
!294 = !DILocation(line: 51, column: 34, scope: !283)
!295 = !DILocation(line: 51, column: 38, scope: !283)
!296 = !DILocation(line: 51, column: 45, scope: !283)
!297 = !DILocation(line: 51, column: 29, scope: !283)
!298 = !DILocation(line: 52, column: 11, scope: !283)
!299 = !DILocation(line: 52, column: 14, scope: !283)
!300 = !DILocalVariable(name: "addr", arg: 1, scope: !301, file: !222, line: 31, type: !225)
!301 = distinct !DISubprogram(name: "sys_clear_bit", scope: !222, file: !222, line: 31, type: !264, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!302 = !DILocation(line: 31, column: 76, scope: !301, inlinedAt: !303)
!303 = distinct !DILocation(line: 51, column: 2, scope: !283)
!304 = !DILocalVariable(name: "bit", arg: 2, scope: !301, file: !222, line: 31, type: !48)
!305 = !DILocation(line: 31, column: 95, scope: !301, inlinedAt: !303)
!306 = !DILocalVariable(name: "temp", scope: !301, file: !222, line: 33, type: !47)
!307 = !DILocation(line: 33, column: 11, scope: !301, inlinedAt: !303)
!308 = !DILocation(line: 33, column: 40, scope: !301, inlinedAt: !303)
!309 = !DILocation(line: 33, column: 19, scope: !301, inlinedAt: !303)
!310 = !DILocation(line: 33, column: 18, scope: !301, inlinedAt: !303)
!311 = !DILocation(line: 35, column: 31, scope: !301, inlinedAt: !303)
!312 = !DILocation(line: 35, column: 45, scope: !301, inlinedAt: !303)
!313 = !DILocation(line: 35, column: 42, scope: !301, inlinedAt: !303)
!314 = !DILocation(line: 35, column: 38, scope: !301, inlinedAt: !303)
!315 = !DILocation(line: 35, column: 36, scope: !301, inlinedAt: !303)
!316 = !DILocation(line: 35, column: 24, scope: !301, inlinedAt: !303)
!317 = !DILocation(line: 35, column: 3, scope: !301, inlinedAt: !303)
!318 = !DILocation(line: 35, column: 29, scope: !301, inlinedAt: !303)
!319 = !DILocation(line: 55, column: 2, scope: !283)
!320 = distinct !DISubprogram(name: "reset_stm32_line_toggle", scope: !2, file: !2, line: 58, type: !53, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !103)
!321 = !DILocalVariable(name: "dev", arg: 1, scope: !320, file: !2, line: 58, type: !23)
!322 = !DILocation(line: 58, column: 57, scope: !320)
!323 = !DILocalVariable(name: "id", arg: 2, scope: !320, file: !2, line: 58, type: !47)
!324 = !DILocation(line: 58, column: 71, scope: !320)
!325 = !DILocation(line: 60, column: 26, scope: !320)
!326 = !DILocation(line: 60, column: 31, scope: !320)
!327 = !DILocation(line: 60, column: 2, scope: !320)
!328 = !DILocation(line: 61, column: 28, scope: !320)
!329 = !DILocation(line: 61, column: 33, scope: !320)
!330 = !DILocation(line: 61, column: 2, scope: !320)
!331 = !DILocation(line: 63, column: 2, scope: !320)
