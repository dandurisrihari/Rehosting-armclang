; ModuleID = '../bc_files/pinctrl_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/pinctrl/pinctrl_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.gpio_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_driver_data = type { i32 }
%struct.pinctrl_soc_pin = type { i32, i32 }

@gpio_ports = internal constant [11 x ptr] [ptr @__device_dts_ord_28, ptr @__device_dts_ord_81, ptr @__device_dts_ord_25, ptr @__device_dts_ord_82, ptr @__device_dts_ord_83, ptr @__device_dts_ord_84, ptr null, ptr null, ptr null, ptr null, ptr null], align 4, !dbg !0
@__device_dts_ord_28 = external dso_local constant %struct.device, align 4
@__device_dts_ord_81 = external dso_local constant %struct.device, align 4
@__device_dts_ord_25 = external dso_local constant %struct.device, align 4
@__device_dts_ord_82 = external dso_local constant %struct.device, align 4
@__device_dts_ord_83 = external dso_local constant %struct.device, align 4
@__device_dts_ord_84 = external dso_local constant %struct.device, align 4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !129 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !133, metadata !DIExpression()), !dbg !134
  %3 = load ptr, ptr %2, align 4, !dbg !135
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3) #5, !dbg !136
  ret i1 %4, !dbg !137
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !138 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !140, metadata !DIExpression()), !dbg !150
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !141, metadata !DIExpression()), !dbg !151
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !142, metadata !DIExpression()), !dbg !152
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %8, metadata !143, metadata !DIExpression()), !dbg !154
  %14 = load ptr, ptr %5, align 4, !dbg !155
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 2, !dbg !156
  %16 = load ptr, ptr %15, align 4, !dbg !156
  store ptr %16, ptr %8, align 4, !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %9, metadata !144, metadata !DIExpression()), !dbg !158
  %17 = load ptr, ptr %5, align 4, !dbg !159
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 1, !dbg !160
  %19 = load ptr, ptr %18, align 4, !dbg !160
  store ptr %19, ptr %9, align 4, !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %10, metadata !146, metadata !DIExpression()), !dbg !162
  %20 = load ptr, ptr %5, align 4, !dbg !163
  %21 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4, !dbg !164
  %22 = load ptr, ptr %21, align 4, !dbg !164
  store ptr %22, ptr %10, align 4, !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %11, metadata !148, metadata !DIExpression()), !dbg !166
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %12, metadata !149, metadata !DIExpression()), !dbg !168
  %23 = load ptr, ptr %8, align 4, !dbg !169
  %24 = getelementptr inbounds %struct.gpio_driver_api, ptr %23, i32 0, i32 6, !dbg !171
  %25 = load ptr, ptr %24, align 4, !dbg !171
  %26 = icmp eq ptr %25, null, !dbg !172
  br i1 %26, label %27, label %28, !dbg !173

27:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !174
  store i32 1, ptr %13, align 4
  br label %57, !dbg !174

28:                                               ; preds = %3
  %29 = load i32, ptr %7, align 4, !dbg !176
  %30 = and i32 %29, 8388608, !dbg !178
  %31 = icmp ne i32 %30, 0, !dbg !179
  br i1 %31, label %32, label %44, !dbg !180

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 4, !dbg !181
  %34 = getelementptr inbounds %struct.gpio_driver_data, ptr %33, i32 0, i32 0, !dbg !182
  %35 = load i32, ptr %34, align 4, !dbg !182
  %36 = load i8, ptr %6, align 1, !dbg !183
  %37 = zext i8 %36 to i32, !dbg !184
  %38 = shl i32 1, %37, !dbg !185
  %39 = and i32 %35, %38, !dbg !186
  %40 = icmp ne i32 %39, 0, !dbg !187
  br i1 %40, label %41, label %44, !dbg !188

41:                                               ; preds = %32
  %42 = load i32, ptr %7, align 4, !dbg !189
  %43 = xor i32 %42, 100663296, !dbg !189
  store i32 %43, ptr %7, align 4, !dbg !189
  br label %44, !dbg !191

44:                                               ; preds = %41, %32, %28
  %45 = load i32, ptr %7, align 4, !dbg !192
  %46 = and i32 %45, 100663296, !dbg !193
  store i32 %46, ptr %11, align 4, !dbg !194
  %47 = load i32, ptr %7, align 4, !dbg !195
  %48 = and i32 %47, 23068672, !dbg !196
  store i32 %48, ptr %12, align 4, !dbg !197
  %49 = load ptr, ptr %8, align 4, !dbg !198
  %50 = getelementptr inbounds %struct.gpio_driver_api, ptr %49, i32 0, i32 6, !dbg !199
  %51 = load ptr, ptr %50, align 4, !dbg !199
  %52 = load ptr, ptr %5, align 4, !dbg !200
  %53 = load i8, ptr %6, align 1, !dbg !201
  %54 = load i32, ptr %12, align 4, !dbg !202
  %55 = load i32, ptr %11, align 4, !dbg !203
  %56 = call i32 %51(ptr noundef %52, i8 noundef zeroext %53, i32 noundef %54, i32 noundef %55) #5, !dbg !198
  store i32 %56, ptr %4, align 4, !dbg !204
  store i32 1, ptr %13, align 4
  br label %57, !dbg !204

57:                                               ; preds = %44, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !205
  %58 = load i32, ptr %4, align 4, !dbg !205
  ret i32 %58, !dbg !205
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !206 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !208, metadata !DIExpression()), !dbg !214
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !209, metadata !DIExpression()), !dbg !215
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !210, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %7, metadata !211, metadata !DIExpression()), !dbg !218
  %10 = load ptr, ptr %4, align 4, !dbg !219
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !220
  %12 = load ptr, ptr %11, align 4, !dbg !220
  store ptr %12, ptr %7, align 4, !dbg !218
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %8, metadata !212, metadata !DIExpression()), !dbg !222
  %13 = load ptr, ptr %4, align 4, !dbg !223
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !224
  %15 = load ptr, ptr %14, align 4, !dbg !224
  store ptr %15, ptr %8, align 4, !dbg !222
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %9, metadata !213, metadata !DIExpression()), !dbg !226
  %16 = load ptr, ptr %4, align 4, !dbg !227
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !228
  %18 = load ptr, ptr %17, align 4, !dbg !228
  store ptr %18, ptr %9, align 4, !dbg !226
  %19 = load i32, ptr %6, align 4, !dbg !229
  %20 = and i32 %19, 1048576, !dbg !231
  %21 = icmp ne i32 %20, 0, !dbg !232
  br i1 %21, label %22, label %33, !dbg !233

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !234
  %24 = and i32 %23, 786432, !dbg !235
  %25 = icmp ne i32 %24, 0, !dbg !236
  br i1 %25, label %26, label %33, !dbg !237

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4, !dbg !238
  %28 = and i32 %27, 1, !dbg !239
  %29 = icmp ne i32 %28, 0, !dbg !240
  br i1 %29, label %30, label %33, !dbg !241

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !242
  %32 = xor i32 %31, 786432, !dbg !242
  store i32 %32, ptr %6, align 4, !dbg !242
  br label %33, !dbg !244

33:                                               ; preds = %30, %26, %22, %3
  %34 = load i32, ptr %6, align 4, !dbg !245
  %35 = and i32 %34, -1048577, !dbg !245
  store i32 %35, ptr %6, align 4, !dbg !245
  %36 = load i32, ptr %6, align 4, !dbg !246
  %37 = and i32 %36, 1, !dbg !248
  %38 = icmp ne i32 %37, 0, !dbg !249
  br i1 %38, label %39, label %47, !dbg !250

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !dbg !251
  %41 = zext i8 %40 to i32, !dbg !253
  %42 = shl i32 1, %41, !dbg !254
  %43 = load ptr, ptr %9, align 4, !dbg !255
  %44 = getelementptr inbounds %struct.gpio_driver_data, ptr %43, i32 0, i32 0, !dbg !256
  %45 = load i32, ptr %44, align 4, !dbg !257
  %46 = or i32 %45, %42, !dbg !257
  store i32 %46, ptr %44, align 4, !dbg !257
  br label %56, !dbg !258

47:                                               ; preds = %33
  %48 = load i8, ptr %5, align 1, !dbg !259
  %49 = zext i8 %48 to i32, !dbg !261
  %50 = shl i32 1, %49, !dbg !262
  %51 = xor i32 %50, -1, !dbg !263
  %52 = load ptr, ptr %9, align 4, !dbg !264
  %53 = getelementptr inbounds %struct.gpio_driver_data, ptr %52, i32 0, i32 0, !dbg !265
  %54 = load i32, ptr %53, align 4, !dbg !266
  %55 = and i32 %54, %51, !dbg !266
  store i32 %55, ptr %53, align 4, !dbg !266
  br label %56

56:                                               ; preds = %47, %39
  %57 = load ptr, ptr %7, align 4, !dbg !267
  %58 = getelementptr inbounds %struct.gpio_driver_api, ptr %57, i32 0, i32 0, !dbg !268
  %59 = load ptr, ptr %58, align 4, !dbg !268
  %60 = load ptr, ptr %4, align 4, !dbg !269
  %61 = load i8, ptr %5, align 1, !dbg !270
  %62 = load i32, ptr %6, align 4, !dbg !271
  %63 = call i32 %59(ptr noundef %60, i8 noundef zeroext %61, i32 noundef %62) #5, !dbg !267
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !272
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !272
  ret i32 %63, !dbg !273
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !274 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !276, metadata !DIExpression()), !dbg !279
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %5, metadata !278, metadata !DIExpression()), !dbg !282
  %6 = load ptr, ptr %3, align 4, !dbg !283
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !284
  %8 = load ptr, ptr %7, align 4, !dbg !284
  store ptr %8, ptr %5, align 4, !dbg !282
  %9 = load ptr, ptr %5, align 4, !dbg !285
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 1, !dbg !286
  %11 = load ptr, ptr %10, align 4, !dbg !286
  %12 = load ptr, ptr %3, align 4, !dbg !287
  %13 = load ptr, ptr %4, align 4, !dbg !288
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13) #5, !dbg !285
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !289
  ret i32 %14, !dbg !290
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !291 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !293, metadata !DIExpression()), !dbg !297
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !294, metadata !DIExpression()), !dbg !298
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !295, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %7, metadata !296, metadata !DIExpression()), !dbg !301
  %8 = load ptr, ptr %4, align 4, !dbg !302
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !303
  %10 = load ptr, ptr %9, align 4, !dbg !303
  store ptr %10, ptr %7, align 4, !dbg !301
  %11 = load ptr, ptr %7, align 4, !dbg !304
  %12 = getelementptr inbounds %struct.gpio_driver_api, ptr %11, i32 0, i32 2, !dbg !305
  %13 = load ptr, ptr %12, align 4, !dbg !305
  %14 = load ptr, ptr %4, align 4, !dbg !306
  %15 = load i32, ptr %5, align 4, !dbg !307
  %16 = load i32, ptr %6, align 4, !dbg !308
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, i32 noundef %16) #5, !dbg !304
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6, !dbg !309
  ret i32 %17, !dbg !310
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !311 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !313, metadata !DIExpression()), !dbg !316
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !319
  %6 = load ptr, ptr %3, align 4, !dbg !320
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !321
  %8 = load ptr, ptr %7, align 4, !dbg !321
  store ptr %8, ptr %5, align 4, !dbg !319
  %9 = load ptr, ptr %5, align 4, !dbg !322
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 3, !dbg !323
  %11 = load ptr, ptr %10, align 4, !dbg !323
  %12 = load ptr, ptr %3, align 4, !dbg !324
  %13 = load i32, ptr %4, align 4, !dbg !325
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !322
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !326
  ret i32 %14, !dbg !327
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !328 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !330, metadata !DIExpression()), !dbg !333
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %5, metadata !332, metadata !DIExpression()), !dbg !336
  %6 = load ptr, ptr %3, align 4, !dbg !337
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !338
  %8 = load ptr, ptr %7, align 4, !dbg !338
  store ptr %8, ptr %5, align 4, !dbg !336
  %9 = load ptr, ptr %5, align 4, !dbg !339
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 4, !dbg !340
  %11 = load ptr, ptr %10, align 4, !dbg !340
  %12 = load ptr, ptr %3, align 4, !dbg !341
  %13 = load i32, ptr %4, align 4, !dbg !342
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !339
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !343
  ret i32 %14, !dbg !344
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !345 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !347, metadata !DIExpression()), !dbg !350
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %5, metadata !349, metadata !DIExpression()), !dbg !353
  %6 = load ptr, ptr %3, align 4, !dbg !354
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !355
  %8 = load ptr, ptr %7, align 4, !dbg !355
  store ptr %8, ptr %5, align 4, !dbg !353
  %9 = load ptr, ptr %5, align 4, !dbg !356
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 5, !dbg !357
  %11 = load ptr, ptr %10, align 4, !dbg !357
  %12 = load ptr, ptr %3, align 4, !dbg !358
  %13 = load i32, ptr %4, align 4, !dbg !359
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13) #5, !dbg !356
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6, !dbg !360
  ret i32 %14, !dbg !361
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_gpio_get_pending_int(ptr noundef %0) #0 !dbg !362 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !366, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %4, metadata !367, metadata !DIExpression()), !dbg !370
  %6 = load ptr, ptr %3, align 4, !dbg !371
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !372
  %8 = load ptr, ptr %7, align 4, !dbg !372
  store ptr %8, ptr %4, align 4, !dbg !370
  %9 = load ptr, ptr %4, align 4, !dbg !373
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 8, !dbg !375
  %11 = load ptr, ptr %10, align 4, !dbg !375
  %12 = icmp eq ptr %11, null, !dbg !376
  br i1 %12, label %13, label %14, !dbg !377

13:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !378
  store i32 1, ptr %5, align 4
  br label %20, !dbg !378

14:                                               ; preds = %1
  %15 = load ptr, ptr %4, align 4, !dbg !380
  %16 = getelementptr inbounds %struct.gpio_driver_api, ptr %15, i32 0, i32 8, !dbg !381
  %17 = load ptr, ptr %16, align 4, !dbg !381
  %18 = load ptr, ptr %3, align 4, !dbg !382
  %19 = call i32 %17(ptr noundef %18) #5, !dbg !380
  store i32 %19, ptr %2, align 4, !dbg !383
  store i32 1, ptr %5, align 4
  br label %20, !dbg !383

20:                                               ; preds = %14, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6, !dbg !384
  %21 = load i32, ptr %2, align 4, !dbg !384
  ret i32 %21, !dbg !384
}

; Function Attrs: nounwind optsize
define hidden i32 @pinctrl_configure_pins(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #1 !dbg !385 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !398, metadata !DIExpression()), !dbg !407
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !399, metadata !DIExpression()), !dbg !408
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !400, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %8, metadata !401, metadata !DIExpression()), !dbg !411
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %9, metadata !402, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %10, metadata !403, metadata !DIExpression()), !dbg !414
  store i32 0, ptr %10, align 4, !dbg !414
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %11, metadata !404, metadata !DIExpression()), !dbg !416
  store i32 0, ptr %11, align 4, !dbg !416
  %14 = load i32, ptr %7, align 4, !dbg !417
  call void @llvm.lifetime.start.p0(i64 1, ptr %12) #6, !dbg !418
  call void @llvm.dbg.declare(metadata ptr %12, metadata !405, metadata !DIExpression()), !dbg !419
  store i8 0, ptr %12, align 1, !dbg !419
  br label %15, !dbg !418

15:                                               ; preds = %82, %3
  %16 = load i8, ptr %12, align 1, !dbg !420
  %17 = zext i8 %16 to i32, !dbg !420
  %18 = load i8, ptr %6, align 1, !dbg !422
  %19 = zext i8 %18 to i32, !dbg !422
  %20 = icmp slt i32 %17, %19, !dbg !423
  br i1 %20, label %22, label %21, !dbg !424

21:                                               ; preds = %15
  store i32 2, ptr %13, align 4
  br label %85, !dbg !424

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 4, !dbg !425
  %24 = load i8, ptr %12, align 1, !dbg !427
  %25 = zext i8 %24 to i32, !dbg !425
  %26 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %23, i32 %25, !dbg !425
  %27 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %26, i32 0, i32 0, !dbg !428
  %28 = load i32, ptr %27, align 4, !dbg !428
  store i32 %28, ptr %9, align 4, !dbg !429
  %29 = load i32, ptr %9, align 4, !dbg !430
  %30 = lshr i32 %29, 0, !dbg !432
  %31 = and i32 %30, 31, !dbg !433
  %32 = icmp ult i32 %31, 16, !dbg !434
  br i1 %32, label %33, label %41, !dbg !435

33:                                               ; preds = %22
  %34 = load ptr, ptr %5, align 4, !dbg !436
  %35 = load i8, ptr %12, align 1, !dbg !438
  %36 = zext i8 %35 to i32, !dbg !436
  %37 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %34, i32 %36, !dbg !436
  %38 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %37, i32 0, i32 1, !dbg !439
  %39 = load i32, ptr %38, align 4, !dbg !439
  %40 = or i32 %39, 32, !dbg !440
  store i32 %40, ptr %10, align 4, !dbg !441
  br label %62, !dbg !442

41:                                               ; preds = %22
  %42 = load i32, ptr %9, align 4, !dbg !443
  %43 = lshr i32 %42, 0, !dbg !445
  %44 = and i32 %43, 31, !dbg !446
  %45 = icmp eq i32 %44, 16, !dbg !447
  br i1 %45, label %46, label %47, !dbg !448

46:                                               ; preds = %41
  store i32 48, ptr %10, align 4, !dbg !449
  br label %61, !dbg !451

47:                                               ; preds = %41
  %48 = load i32, ptr %9, align 4, !dbg !452
  %49 = lshr i32 %48, 0, !dbg !454
  %50 = and i32 %49, 31, !dbg !455
  %51 = icmp eq i32 %50, 17, !dbg !456
  br i1 %51, label %52, label %59, !dbg !457

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 4, !dbg !458
  %54 = load i8, ptr %12, align 1, !dbg !460
  %55 = zext i8 %54 to i32, !dbg !458
  %56 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %53, i32 %55, !dbg !458
  %57 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %56, i32 0, i32 1, !dbg !461
  %58 = load i32, ptr %57, align 4, !dbg !461
  store i32 %58, ptr %10, align 4, !dbg !462
  br label %60, !dbg !463

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %46
  br label %62

62:                                               ; preds = %61, %33
  %63 = load i32, ptr %9, align 4, !dbg !464
  %64 = lshr i32 %63, 9, !dbg !465
  %65 = and i32 %64, 15, !dbg !466
  %66 = shl i32 %65, 4, !dbg !467
  %67 = load i32, ptr %9, align 4, !dbg !468
  %68 = lshr i32 %67, 5, !dbg !469
  %69 = and i32 %68, 15, !dbg !470
  %70 = or i32 %66, %69, !dbg !471
  store i32 %70, ptr %8, align 4, !dbg !472
  %71 = load i32, ptr %8, align 4, !dbg !473
  %72 = load i32, ptr %10, align 4, !dbg !474
  %73 = load i32, ptr %9, align 4, !dbg !475
  %74 = lshr i32 %73, 0, !dbg !476
  %75 = and i32 %74, 31, !dbg !477
  %76 = call i32 @stm32_pin_configure(i32 noundef %71, i32 noundef %72, i32 noundef %75) #5, !dbg !478
  store i32 %76, ptr %11, align 4, !dbg !479
  %77 = load i32, ptr %11, align 4, !dbg !480
  %78 = icmp slt i32 %77, 0, !dbg !482
  br i1 %78, label %79, label %81, !dbg !483

79:                                               ; preds = %62
  %80 = load i32, ptr %11, align 4, !dbg !484
  store i32 %80, ptr %4, align 4, !dbg !486
  store i32 1, ptr %13, align 4
  br label %85, !dbg !486

81:                                               ; preds = %62
  br label %82, !dbg !487

82:                                               ; preds = %81
  %83 = load i8, ptr %12, align 1, !dbg !488
  %84 = add i8 %83, 1, !dbg !488
  store i8 %84, ptr %12, align 1, !dbg !488
  br label %15, !dbg !489, !llvm.loop !490

85:                                               ; preds = %79, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr %12) #6, !dbg !489
  %86 = load i32, ptr %13, align 4
  switch i32 %86, label %88 [
    i32 2, label %87
  ]

87:                                               ; preds = %85
  store i32 0, ptr %4, align 4, !dbg !492
  store i32 1, ptr %13, align 4
  br label %88, !dbg !492

88:                                               ; preds = %87, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6, !dbg !493
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !493
  %89 = load i32, ptr %4, align 4, !dbg !493
  ret i32 %89, !dbg !493
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @stm32_pin_configure(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 !dbg !494 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !498, metadata !DIExpression()), !dbg !502
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !499, metadata !DIExpression()), !dbg !503
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !500, metadata !DIExpression()), !dbg !504
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6, !dbg !505
  call void @llvm.dbg.declare(metadata ptr %8, metadata !501, metadata !DIExpression()), !dbg !506
  %10 = load i32, ptr %5, align 4, !dbg !507
  %11 = lshr i32 %10, 4, !dbg !509
  %12 = icmp uge i32 %11, 11, !dbg !510
  br i1 %12, label %13, label %14, !dbg !511

13:                                               ; preds = %3
  store i32 -5, ptr %4, align 4, !dbg !512
  store i32 1, ptr %9, align 4
  br label %32, !dbg !512

14:                                               ; preds = %3
  %15 = load i32, ptr %5, align 4, !dbg !514
  %16 = lshr i32 %15, 4, !dbg !515
  %17 = getelementptr inbounds [11 x ptr], ptr @gpio_ports, i32 0, i32 %16, !dbg !516
  %18 = load ptr, ptr %17, align 4, !dbg !516
  store ptr %18, ptr %8, align 4, !dbg !517
  %19 = load ptr, ptr %8, align 4, !dbg !518
  %20 = icmp eq ptr %19, null, !dbg !520
  br i1 %20, label %24, label %21, !dbg !521

21:                                               ; preds = %14
  %22 = load ptr, ptr %8, align 4, !dbg !522
  %23 = call zeroext i1 @device_is_ready(ptr noundef %22) #5, !dbg !523
  br i1 %23, label %25, label %24, !dbg !524

24:                                               ; preds = %21, %14
  store i32 -19, ptr %4, align 4, !dbg !525
  store i32 1, ptr %9, align 4
  br label %32, !dbg !525

25:                                               ; preds = %21
  %26 = load ptr, ptr %8, align 4, !dbg !527
  %27 = load i32, ptr %5, align 4, !dbg !528
  %28 = and i32 %27, 15, !dbg !529
  %29 = load i32, ptr %6, align 4, !dbg !530
  %30 = load i32, ptr %7, align 4, !dbg !531
  %31 = call i32 @gpio_stm32_configure(ptr noundef %26, i32 noundef %28, i32 noundef %29, i32 noundef %30) #5, !dbg !532
  store i32 %31, ptr %4, align 4, !dbg !533
  store i32 1, ptr %9, align 4
  br label %32, !dbg !533

32:                                               ; preds = %25, %24, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6, !dbg !534
  %33 = load i32, ptr %4, align 4, !dbg !534
  ret i32 %33, !dbg !534
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare !dbg !535 dso_local zeroext i1 @z_device_is_ready(ptr noundef) #4

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !537 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !540, metadata !DIExpression()), !dbg !541
  br label %3, !dbg !542

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #6, !dbg !543, !srcloc !545
  br label %4, !dbg !546

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !547
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5) #5, !dbg !548
  ret i1 %6, !dbg !549
}

; Function Attrs: optsize
declare !dbg !550 dso_local i32 @gpio_stm32_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { optsize }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gpio_ports", scope: !2, file: !114, line: 49, type: !118, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !111, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "pinctrl_stm32.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5, !12}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_mode", file: !6, line: 766, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "include/zephyr/drivers/gpio.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "GPIO_INT_MODE_DISABLED", value: 2097152)
!10 = !DIEnumerator(name: "GPIO_INT_MODE_LEVEL", value: 4194304)
!11 = !DIEnumerator(name: "GPIO_INT_MODE_EDGE", value: 20971520)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gpio_int_trig", file: !6, line: 776, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "GPIO_INT_TRIG_LOW", value: 33554432)
!15 = !DIEnumerator(name: "GPIO_INT_TRIG_HIGH", value: 67108864)
!16 = !DIEnumerator(name: "GPIO_INT_TRIG_BOTH", value: 100663296)
!17 = !{!18, !100, !105, !51, !65, !12, !5, !110}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_api", file: !6, line: 788, size: 288, elements: !21)
!21 = !{!22, !55, !61, !66, !70, !71, !72, !76, !96}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "pin_configure", scope: !20, file: !6, line: 789, baseType: !23, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 32)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !27, !52, !53}
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 381, size: 160, elements: !31)
!30 = !DIFile(filename: "include/zephyr/device.h", directory: "/home/sri/zephyrproject/zephyr")
!31 = !{!32, !36, !39, !40, !50}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !30, line: 383, baseType: !33, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !29, file: !30, line: 385, baseType: !37, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "api", scope: !29, file: !30, line: 387, baseType: !37, size: 32, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !29, file: !30, line: 389, baseType: !41, size: 32, offset: 96)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_state", file: !30, line: 354, size: 16, elements: !43)
!43 = !{!44, !48}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "init_res", scope: !42, file: !30, line: 362, baseType: !45, size: 8)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 62, baseType: !47)
!46 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!47 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !42, file: !30, line: 367, baseType: !49, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !29, file: !30, line: 391, baseType: !51, size: 32, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_pin_t", file: !6, line: 252, baseType: !45)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_flags_t", file: !6, line: 272, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 64, baseType: !7)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "port_get_raw", scope: !20, file: !6, line: 795, baseType: !56, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 32)
!57 = !DISubroutineType(types: !58)
!58 = !{!26, !27, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_value_t", file: !6, line: 244, baseType: !54)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_masked_raw", scope: !20, file: !6, line: 797, baseType: !62, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 32)
!63 = !DISubroutineType(types: !64)
!64 = !{!26, !27, !65, !60}
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_port_pins_t", file: !6, line: 231, baseType: !54)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "port_set_bits_raw", scope: !20, file: !6, line: 800, baseType: !67, size: 32, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DISubroutineType(types: !69)
!69 = !{!26, !27, !65}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "port_clear_bits_raw", scope: !20, file: !6, line: 802, baseType: !67, size: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "port_toggle_bits", scope: !20, file: !6, line: 804, baseType: !67, size: 32, offset: 160)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pin_interrupt_configure", scope: !20, file: !6, line: 806, baseType: !73, size: 32, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 32)
!74 = !DISubroutineType(types: !75)
!75 = !{!26, !27, !52, !5, !12}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "manage_callback", scope: !20, file: !6, line: 809, baseType: !77, size: 32, offset: 224)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 32)
!78 = !DISubroutineType(types: !79)
!79 = !{!26, !27, !80, !49}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 32)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_callback", file: !6, line: 738, size: 96, elements: !82)
!82 = !{!83, !90, !95}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !81, file: !6, line: 742, baseType: !84, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_snode_t", file: !85, line: 39, baseType: !86)
!85 = !DIFile(filename: "include/zephyr/sys/slist.h", directory: "/home/sri/zephyrproject/zephyr")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_snode", file: !85, line: 33, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !86, file: !85, line: 34, baseType: !89, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !81, file: !6, line: 745, baseType: !91, size: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpio_callback_handler_t", file: !6, line: 724, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 32)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !27, !80, !65}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pin_mask", scope: !81, file: !6, line: 753, baseType: !65, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "get_pending_int", scope: !20, file: !6, line: 812, baseType: !97, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 32)
!98 = !DISubroutineType(types: !99)
!99 = !{!54, !27}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_config", file: !6, line: 688, size: 32, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "port_pin_mask", scope: !102, file: !6, line: 694, baseType: !65, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_driver_data", file: !6, line: 701, size: 32, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !107, file: !6, line: 707, baseType: !65, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 32)
!111 = !{!112, !0}
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression(DW_OP_constu, 11, DW_OP_stack_value))
!113 = distinct !DIGlobalVariable(name: "gpio_ports_cnt", scope: !2, file: !114, line: 64, type: !115, isLocal: true, isDefinition: true)
!114 = !DIFile(filename: "drivers/pinctrl/pinctrl_stm32.c", directory: "/home/sri/zephyrproject/zephyr")
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 46, baseType: !7)
!117 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 352, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!120 = !{!121}
!121 = !DISubrange(count: 11)
!122 = !{i32 7, !"Dwarf Version", i32 4}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 1, !"static_rwdata", i32 1}
!126 = !{i32 1, !"enumsize_buildattr", i32 1}
!127 = !{i32 1, !"armlib_unavailable", i32 0}
!128 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!129 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !30, file: !30, line: 744, type: !130, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !132)
!130 = !DISubroutineType(types: !131)
!131 = !{!49, !27}
!132 = !{!133}
!133 = !DILocalVariable(name: "dev", arg: 1, scope: !129, file: !30, line: 744, type: !27)
!134 = !DILocation(line: 744, column: 65, scope: !129)
!135 = !DILocation(line: 746, column: 27, scope: !129)
!136 = !DILocation(line: 746, column: 9, scope: !129)
!137 = !DILocation(line: 746, column: 2, scope: !129)
!138 = distinct !DISubprogram(name: "z_impl_gpio_pin_interrupt_configure", scope: !6, file: !6, line: 862, type: !24, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !139)
!139 = !{!140, !141, !142, !143, !144, !146, !148, !149}
!140 = !DILocalVariable(name: "port", arg: 1, scope: !138, file: !6, line: 862, type: !27)
!141 = !DILocalVariable(name: "pin", arg: 2, scope: !138, file: !6, line: 863, type: !52)
!142 = !DILocalVariable(name: "flags", arg: 3, scope: !138, file: !6, line: 864, type: !53)
!143 = !DILocalVariable(name: "api", scope: !138, file: !6, line: 866, type: !18)
!144 = !DILocalVariable(name: "cfg", scope: !138, file: !6, line: 868, type: !145)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!146 = !DILocalVariable(name: "data", scope: !138, file: !6, line: 870, type: !147)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!148 = !DILocalVariable(name: "trig", scope: !138, file: !6, line: 872, type: !12)
!149 = !DILocalVariable(name: "mode", scope: !138, file: !6, line: 873, type: !5)
!150 = !DILocation(line: 862, column: 76, scope: !138)
!151 = !DILocation(line: 863, column: 24, scope: !138)
!152 = !DILocation(line: 864, column: 26, scope: !138)
!153 = !DILocation(line: 866, column: 2, scope: !138)
!154 = !DILocation(line: 866, column: 32, scope: !138)
!155 = !DILocation(line: 867, column: 35, scope: !138)
!156 = !DILocation(line: 867, column: 41, scope: !138)
!157 = !DILocation(line: 868, column: 2, scope: !138)
!158 = !DILocation(line: 868, column: 69, scope: !138)
!159 = !DILocation(line: 869, column: 38, scope: !138)
!160 = !DILocation(line: 869, column: 44, scope: !138)
!161 = !DILocation(line: 870, column: 2, scope: !138)
!162 = !DILocation(line: 870, column: 39, scope: !138)
!163 = !DILocation(line: 871, column: 36, scope: !138)
!164 = !DILocation(line: 871, column: 42, scope: !138)
!165 = !DILocation(line: 872, column: 2, scope: !138)
!166 = !DILocation(line: 872, column: 21, scope: !138)
!167 = !DILocation(line: 873, column: 2, scope: !138)
!168 = !DILocation(line: 873, column: 21, scope: !138)
!169 = !DILocation(line: 875, column: 6, scope: !170)
!170 = distinct !DILexicalBlock(scope: !138, file: !6, line: 875, column: 6)
!171 = !DILocation(line: 875, column: 11, scope: !170)
!172 = !DILocation(line: 875, column: 35, scope: !170)
!173 = !DILocation(line: 875, column: 6, scope: !138)
!174 = !DILocation(line: 876, column: 3, scope: !175)
!175 = distinct !DILexicalBlock(scope: !170, file: !6, line: 875, column: 50)
!176 = !DILocation(line: 906, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !138, file: !6, line: 906, column: 6)
!178 = !DILocation(line: 906, column: 14, scope: !177)
!179 = !DILocation(line: 906, column: 28, scope: !177)
!180 = !DILocation(line: 906, column: 34, scope: !177)
!181 = !DILocation(line: 907, column: 8, scope: !177)
!182 = !DILocation(line: 907, column: 14, scope: !177)
!183 = !DILocation(line: 907, column: 50, scope: !177)
!184 = !DILocation(line: 907, column: 49, scope: !177)
!185 = !DILocation(line: 907, column: 46, scope: !177)
!186 = !DILocation(line: 907, column: 21, scope: !177)
!187 = !DILocation(line: 907, column: 57, scope: !177)
!188 = !DILocation(line: 906, column: 6, scope: !138)
!189 = !DILocation(line: 909, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !177, file: !6, line: 907, column: 64)
!191 = !DILocation(line: 910, column: 2, scope: !190)
!192 = !DILocation(line: 912, column: 30, scope: !138)
!193 = !DILocation(line: 912, column: 36, scope: !138)
!194 = !DILocation(line: 912, column: 7, scope: !138)
!195 = !DILocation(line: 917, column: 30, scope: !138)
!196 = !DILocation(line: 917, column: 36, scope: !138)
!197 = !DILocation(line: 917, column: 7, scope: !138)
!198 = !DILocation(line: 920, column: 9, scope: !138)
!199 = !DILocation(line: 920, column: 14, scope: !138)
!200 = !DILocation(line: 920, column: 38, scope: !138)
!201 = !DILocation(line: 920, column: 44, scope: !138)
!202 = !DILocation(line: 920, column: 49, scope: !138)
!203 = !DILocation(line: 920, column: 55, scope: !138)
!204 = !DILocation(line: 920, column: 2, scope: !138)
!205 = !DILocation(line: 921, column: 1, scope: !138)
!206 = distinct !DISubprogram(name: "z_impl_gpio_pin_configure", scope: !6, file: !6, line: 961, type: !24, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!207 = !{!208, !209, !210, !211, !212, !213}
!208 = !DILocalVariable(name: "port", arg: 1, scope: !206, file: !6, line: 961, type: !27)
!209 = !DILocalVariable(name: "pin", arg: 2, scope: !206, file: !6, line: 962, type: !52)
!210 = !DILocalVariable(name: "flags", arg: 3, scope: !206, file: !6, line: 963, type: !53)
!211 = !DILocalVariable(name: "api", scope: !206, file: !6, line: 965, type: !18)
!212 = !DILocalVariable(name: "cfg", scope: !206, file: !6, line: 967, type: !145)
!213 = !DILocalVariable(name: "data", scope: !206, file: !6, line: 969, type: !110)
!214 = !DILocation(line: 961, column: 66, scope: !206)
!215 = !DILocation(line: 962, column: 21, scope: !206)
!216 = !DILocation(line: 963, column: 23, scope: !206)
!217 = !DILocation(line: 965, column: 2, scope: !206)
!218 = !DILocation(line: 965, column: 32, scope: !206)
!219 = !DILocation(line: 966, column: 35, scope: !206)
!220 = !DILocation(line: 966, column: 41, scope: !206)
!221 = !DILocation(line: 967, column: 2, scope: !206)
!222 = !DILocation(line: 967, column: 69, scope: !206)
!223 = !DILocation(line: 968, column: 38, scope: !206)
!224 = !DILocation(line: 968, column: 44, scope: !206)
!225 = !DILocation(line: 969, column: 2, scope: !206)
!226 = !DILocation(line: 969, column: 27, scope: !206)
!227 = !DILocation(line: 970, column: 30, scope: !206)
!228 = !DILocation(line: 970, column: 36, scope: !206)
!229 = !DILocation(line: 993, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !206, file: !6, line: 993, column: 6)
!231 = !DILocation(line: 993, column: 14, scope: !230)
!232 = !DILocation(line: 993, column: 28, scope: !230)
!233 = !DILocation(line: 994, column: 6, scope: !230)
!234 = !DILocation(line: 994, column: 11, scope: !230)
!235 = !DILocation(line: 994, column: 17, scope: !230)
!236 = !DILocation(line: 994, column: 46, scope: !230)
!237 = !DILocation(line: 995, column: 6, scope: !230)
!238 = !DILocation(line: 995, column: 11, scope: !230)
!239 = !DILocation(line: 995, column: 17, scope: !230)
!240 = !DILocation(line: 995, column: 29, scope: !230)
!241 = !DILocation(line: 993, column: 6, scope: !206)
!242 = !DILocation(line: 996, column: 9, scope: !243)
!243 = distinct !DILexicalBlock(scope: !230, file: !6, line: 995, column: 36)
!244 = !DILocation(line: 997, column: 2, scope: !243)
!245 = !DILocation(line: 999, column: 8, scope: !206)
!246 = !DILocation(line: 1004, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !206, file: !6, line: 1004, column: 6)
!248 = !DILocation(line: 1004, column: 13, scope: !247)
!249 = !DILocation(line: 1004, column: 25, scope: !247)
!250 = !DILocation(line: 1004, column: 6, scope: !206)
!251 = !DILocation(line: 1005, column: 46, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !6, line: 1004, column: 31)
!253 = !DILocation(line: 1005, column: 45, scope: !252)
!254 = !DILocation(line: 1005, column: 42, scope: !252)
!255 = !DILocation(line: 1005, column: 3, scope: !252)
!256 = !DILocation(line: 1005, column: 9, scope: !252)
!257 = !DILocation(line: 1005, column: 16, scope: !252)
!258 = !DILocation(line: 1006, column: 2, scope: !252)
!259 = !DILocation(line: 1007, column: 47, scope: !260)
!260 = distinct !DILexicalBlock(scope: !247, file: !6, line: 1006, column: 9)
!261 = !DILocation(line: 1007, column: 46, scope: !260)
!262 = !DILocation(line: 1007, column: 43, scope: !260)
!263 = !DILocation(line: 1007, column: 19, scope: !260)
!264 = !DILocation(line: 1007, column: 3, scope: !260)
!265 = !DILocation(line: 1007, column: 9, scope: !260)
!266 = !DILocation(line: 1007, column: 16, scope: !260)
!267 = !DILocation(line: 1010, column: 9, scope: !206)
!268 = !DILocation(line: 1010, column: 14, scope: !206)
!269 = !DILocation(line: 1010, column: 28, scope: !206)
!270 = !DILocation(line: 1010, column: 34, scope: !206)
!271 = !DILocation(line: 1010, column: 39, scope: !206)
!272 = !DILocation(line: 1011, column: 1, scope: !206)
!273 = !DILocation(line: 1010, column: 2, scope: !206)
!274 = distinct !DISubprogram(name: "z_impl_gpio_port_get_raw", scope: !6, file: !6, line: 1229, type: !57, scopeLine: 1231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!275 = !{!276, !277, !278}
!276 = !DILocalVariable(name: "port", arg: 1, scope: !274, file: !6, line: 1229, type: !27)
!277 = !DILocalVariable(name: "value", arg: 2, scope: !274, file: !6, line: 1230, type: !59)
!278 = !DILocalVariable(name: "api", scope: !274, file: !6, line: 1232, type: !18)
!279 = !DILocation(line: 1229, column: 65, scope: !274)
!280 = !DILocation(line: 1230, column: 28, scope: !274)
!281 = !DILocation(line: 1232, column: 2, scope: !274)
!282 = !DILocation(line: 1232, column: 32, scope: !274)
!283 = !DILocation(line: 1233, column: 35, scope: !274)
!284 = !DILocation(line: 1233, column: 41, scope: !274)
!285 = !DILocation(line: 1235, column: 9, scope: !274)
!286 = !DILocation(line: 1235, column: 14, scope: !274)
!287 = !DILocation(line: 1235, column: 27, scope: !274)
!288 = !DILocation(line: 1235, column: 33, scope: !274)
!289 = !DILocation(line: 1236, column: 1, scope: !274)
!290 = !DILocation(line: 1235, column: 2, scope: !274)
!291 = distinct !DISubprogram(name: "z_impl_gpio_port_set_masked_raw", scope: !6, file: !6, line: 1292, type: !63, scopeLine: 1295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!292 = !{!293, !294, !295, !296}
!293 = !DILocalVariable(name: "port", arg: 1, scope: !291, file: !6, line: 1292, type: !27)
!294 = !DILocalVariable(name: "mask", arg: 2, scope: !291, file: !6, line: 1293, type: !65)
!295 = !DILocalVariable(name: "value", arg: 3, scope: !291, file: !6, line: 1294, type: !60)
!296 = !DILocalVariable(name: "api", scope: !291, file: !6, line: 1296, type: !18)
!297 = !DILocation(line: 1292, column: 72, scope: !291)
!298 = !DILocation(line: 1293, column: 26, scope: !291)
!299 = !DILocation(line: 1294, column: 27, scope: !291)
!300 = !DILocation(line: 1296, column: 2, scope: !291)
!301 = !DILocation(line: 1296, column: 32, scope: !291)
!302 = !DILocation(line: 1297, column: 35, scope: !291)
!303 = !DILocation(line: 1297, column: 41, scope: !291)
!304 = !DILocation(line: 1299, column: 9, scope: !291)
!305 = !DILocation(line: 1299, column: 14, scope: !291)
!306 = !DILocation(line: 1299, column: 34, scope: !291)
!307 = !DILocation(line: 1299, column: 40, scope: !291)
!308 = !DILocation(line: 1299, column: 46, scope: !291)
!309 = !DILocation(line: 1300, column: 1, scope: !291)
!310 = !DILocation(line: 1299, column: 2, scope: !291)
!311 = distinct !DISubprogram(name: "z_impl_gpio_port_set_bits_raw", scope: !6, file: !6, line: 1347, type: !68, scopeLine: 1349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315}
!313 = !DILocalVariable(name: "port", arg: 1, scope: !311, file: !6, line: 1347, type: !27)
!314 = !DILocalVariable(name: "pins", arg: 2, scope: !311, file: !6, line: 1348, type: !65)
!315 = !DILocalVariable(name: "api", scope: !311, file: !6, line: 1350, type: !18)
!316 = !DILocation(line: 1347, column: 70, scope: !311)
!317 = !DILocation(line: 1348, column: 24, scope: !311)
!318 = !DILocation(line: 1350, column: 2, scope: !311)
!319 = !DILocation(line: 1350, column: 32, scope: !311)
!320 = !DILocation(line: 1351, column: 35, scope: !311)
!321 = !DILocation(line: 1351, column: 41, scope: !311)
!322 = !DILocation(line: 1353, column: 9, scope: !311)
!323 = !DILocation(line: 1353, column: 14, scope: !311)
!324 = !DILocation(line: 1353, column: 32, scope: !311)
!325 = !DILocation(line: 1353, column: 38, scope: !311)
!326 = !DILocation(line: 1354, column: 1, scope: !311)
!327 = !DILocation(line: 1353, column: 2, scope: !311)
!328 = distinct !DISubprogram(name: "z_impl_gpio_port_clear_bits_raw", scope: !6, file: !6, line: 1385, type: !68, scopeLine: 1387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !329)
!329 = !{!330, !331, !332}
!330 = !DILocalVariable(name: "port", arg: 1, scope: !328, file: !6, line: 1385, type: !27)
!331 = !DILocalVariable(name: "pins", arg: 2, scope: !328, file: !6, line: 1386, type: !65)
!332 = !DILocalVariable(name: "api", scope: !328, file: !6, line: 1388, type: !18)
!333 = !DILocation(line: 1385, column: 72, scope: !328)
!334 = !DILocation(line: 1386, column: 26, scope: !328)
!335 = !DILocation(line: 1388, column: 2, scope: !328)
!336 = !DILocation(line: 1388, column: 32, scope: !328)
!337 = !DILocation(line: 1389, column: 35, scope: !328)
!338 = !DILocation(line: 1389, column: 41, scope: !328)
!339 = !DILocation(line: 1391, column: 9, scope: !328)
!340 = !DILocation(line: 1391, column: 14, scope: !328)
!341 = !DILocation(line: 1391, column: 34, scope: !328)
!342 = !DILocation(line: 1391, column: 40, scope: !328)
!343 = !DILocation(line: 1392, column: 1, scope: !328)
!344 = !DILocation(line: 1391, column: 2, scope: !328)
!345 = distinct !DISubprogram(name: "z_impl_gpio_port_toggle_bits", scope: !6, file: !6, line: 1423, type: !68, scopeLine: 1425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !346)
!346 = !{!347, !348, !349}
!347 = !DILocalVariable(name: "port", arg: 1, scope: !345, file: !6, line: 1423, type: !27)
!348 = !DILocalVariable(name: "pins", arg: 2, scope: !345, file: !6, line: 1424, type: !65)
!349 = !DILocalVariable(name: "api", scope: !345, file: !6, line: 1426, type: !18)
!350 = !DILocation(line: 1423, column: 69, scope: !345)
!351 = !DILocation(line: 1424, column: 30, scope: !345)
!352 = !DILocation(line: 1426, column: 2, scope: !345)
!353 = !DILocation(line: 1426, column: 32, scope: !345)
!354 = !DILocation(line: 1427, column: 35, scope: !345)
!355 = !DILocation(line: 1427, column: 41, scope: !345)
!356 = !DILocation(line: 1429, column: 9, scope: !345)
!357 = !DILocation(line: 1429, column: 14, scope: !345)
!358 = !DILocation(line: 1429, column: 31, scope: !345)
!359 = !DILocation(line: 1429, column: 37, scope: !345)
!360 = !DILocation(line: 1430, column: 1, scope: !345)
!361 = !DILocation(line: 1429, column: 2, scope: !345)
!362 = distinct !DISubprogram(name: "z_impl_gpio_get_pending_int", scope: !6, file: !6, line: 1807, type: !363, scopeLine: 1808, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{!26, !27}
!365 = !{!366, !367}
!366 = !DILocalVariable(name: "dev", arg: 1, scope: !362, file: !6, line: 1807, type: !27)
!367 = !DILocalVariable(name: "api", scope: !362, file: !6, line: 1809, type: !18)
!368 = !DILocation(line: 1807, column: 68, scope: !362)
!369 = !DILocation(line: 1809, column: 2, scope: !362)
!370 = !DILocation(line: 1809, column: 32, scope: !362)
!371 = !DILocation(line: 1810, column: 35, scope: !362)
!372 = !DILocation(line: 1810, column: 40, scope: !362)
!373 = !DILocation(line: 1812, column: 6, scope: !374)
!374 = distinct !DILexicalBlock(scope: !362, file: !6, line: 1812, column: 6)
!375 = !DILocation(line: 1812, column: 11, scope: !374)
!376 = !DILocation(line: 1812, column: 27, scope: !374)
!377 = !DILocation(line: 1812, column: 6, scope: !362)
!378 = !DILocation(line: 1813, column: 3, scope: !379)
!379 = distinct !DILexicalBlock(scope: !374, file: !6, line: 1812, column: 42)
!380 = !DILocation(line: 1816, column: 9, scope: !362)
!381 = !DILocation(line: 1816, column: 14, scope: !362)
!382 = !DILocation(line: 1816, column: 30, scope: !362)
!383 = !DILocation(line: 1816, column: 2, scope: !362)
!384 = !DILocation(line: 1817, column: 1, scope: !362)
!385 = distinct !DISubprogram(name: "pinctrl_configure_pins", scope: !114, file: !114, line: 218, type: !386, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !397)
!386 = !DISubroutineType(types: !387)
!387 = !{!26, !388, !45, !396}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !391, line: 32, size: 64, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !392, file: !391, line: 34, baseType: !54, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !392, file: !391, line: 36, baseType: !54, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !46, line: 102, baseType: !7)
!397 = !{!398, !399, !400, !401, !402, !403, !404, !405}
!398 = !DILocalVariable(name: "pins", arg: 1, scope: !385, file: !114, line: 218, type: !388)
!399 = !DILocalVariable(name: "pin_cnt", arg: 2, scope: !385, file: !114, line: 218, type: !45)
!400 = !DILocalVariable(name: "reg", arg: 3, scope: !385, file: !114, line: 219, type: !396)
!401 = !DILocalVariable(name: "pin", scope: !385, file: !114, line: 221, type: !54)
!402 = !DILocalVariable(name: "mux", scope: !385, file: !114, line: 221, type: !54)
!403 = !DILocalVariable(name: "pin_cgf", scope: !385, file: !114, line: 222, type: !54)
!404 = !DILocalVariable(name: "ret", scope: !385, file: !114, line: 223, type: !26)
!405 = !DILocalVariable(name: "i", scope: !406, file: !114, line: 234, type: !45)
!406 = distinct !DILexicalBlock(scope: !385, file: !114, line: 234, column: 2)
!407 = !DILocation(line: 218, column: 53, scope: !385)
!408 = !DILocation(line: 218, column: 67, scope: !385)
!409 = !DILocation(line: 219, column: 17, scope: !385)
!410 = !DILocation(line: 221, column: 2, scope: !385)
!411 = !DILocation(line: 221, column: 11, scope: !385)
!412 = !DILocation(line: 221, column: 16, scope: !385)
!413 = !DILocation(line: 222, column: 2, scope: !385)
!414 = !DILocation(line: 222, column: 11, scope: !385)
!415 = !DILocation(line: 223, column: 2, scope: !385)
!416 = !DILocation(line: 223, column: 6, scope: !385)
!417 = !DILocation(line: 225, column: 9, scope: !385)
!418 = !DILocation(line: 234, column: 7, scope: !406)
!419 = !DILocation(line: 234, column: 15, scope: !406)
!420 = !DILocation(line: 234, column: 23, scope: !421)
!421 = distinct !DILexicalBlock(scope: !406, file: !114, line: 234, column: 2)
!422 = !DILocation(line: 234, column: 27, scope: !421)
!423 = !DILocation(line: 234, column: 25, scope: !421)
!424 = !DILocation(line: 234, column: 2, scope: !406)
!425 = !DILocation(line: 235, column: 9, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !114, line: 234, column: 41)
!427 = !DILocation(line: 235, column: 14, scope: !426)
!428 = !DILocation(line: 235, column: 17, scope: !426)
!429 = !DILocation(line: 235, column: 7, scope: !426)
!430 = !DILocation(line: 259, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !426, file: !114, line: 259, column: 7)
!432 = !DILocation(line: 259, column: 15, scope: !431)
!433 = !DILocation(line: 259, column: 22, scope: !431)
!434 = !DILocation(line: 259, column: 31, scope: !431)
!435 = !DILocation(line: 259, column: 7, scope: !426)
!436 = !DILocation(line: 260, column: 14, scope: !437)
!437 = distinct !DILexicalBlock(scope: !431, file: !114, line: 259, column: 39)
!438 = !DILocation(line: 260, column: 19, scope: !437)
!439 = !DILocation(line: 260, column: 22, scope: !437)
!440 = !DILocation(line: 260, column: 29, scope: !437)
!441 = !DILocation(line: 260, column: 12, scope: !437)
!442 = !DILocation(line: 261, column: 3, scope: !437)
!443 = !DILocation(line: 261, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !431, file: !114, line: 261, column: 14)
!445 = !DILocation(line: 261, column: 22, scope: !444)
!446 = !DILocation(line: 261, column: 29, scope: !444)
!447 = !DILocation(line: 261, column: 38, scope: !444)
!448 = !DILocation(line: 261, column: 14, scope: !431)
!449 = !DILocation(line: 262, column: 12, scope: !450)
!450 = distinct !DILexicalBlock(scope: !444, file: !114, line: 261, column: 47)
!451 = !DILocation(line: 263, column: 3, scope: !450)
!452 = !DILocation(line: 263, column: 17, scope: !453)
!453 = distinct !DILexicalBlock(scope: !444, file: !114, line: 263, column: 14)
!454 = !DILocation(line: 263, column: 22, scope: !453)
!455 = !DILocation(line: 263, column: 29, scope: !453)
!456 = !DILocation(line: 263, column: 38, scope: !453)
!457 = !DILocation(line: 263, column: 14, scope: !444)
!458 = !DILocation(line: 264, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !453, file: !114, line: 263, column: 47)
!460 = !DILocation(line: 264, column: 19, scope: !459)
!461 = !DILocation(line: 264, column: 22, scope: !459)
!462 = !DILocation(line: 264, column: 12, scope: !459)
!463 = !DILocation(line: 265, column: 3, scope: !459)
!464 = !DILocation(line: 271, column: 13, scope: !426)
!465 = !DILocation(line: 271, column: 18, scope: !426)
!466 = !DILocation(line: 271, column: 25, scope: !426)
!467 = !DILocation(line: 271, column: 33, scope: !426)
!468 = !DILocation(line: 271, column: 43, scope: !426)
!469 = !DILocation(line: 271, column: 48, scope: !426)
!470 = !DILocation(line: 271, column: 55, scope: !426)
!471 = !DILocation(line: 271, column: 38, scope: !426)
!472 = !DILocation(line: 271, column: 7, scope: !426)
!473 = !DILocation(line: 274, column: 29, scope: !426)
!474 = !DILocation(line: 274, column: 34, scope: !426)
!475 = !DILocation(line: 274, column: 46, scope: !426)
!476 = !DILocation(line: 274, column: 51, scope: !426)
!477 = !DILocation(line: 274, column: 58, scope: !426)
!478 = !DILocation(line: 274, column: 9, scope: !426)
!479 = !DILocation(line: 274, column: 7, scope: !426)
!480 = !DILocation(line: 275, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !426, file: !114, line: 275, column: 7)
!482 = !DILocation(line: 275, column: 11, scope: !481)
!483 = !DILocation(line: 275, column: 7, scope: !426)
!484 = !DILocation(line: 276, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !114, line: 275, column: 16)
!486 = !DILocation(line: 276, column: 4, scope: !485)
!487 = !DILocation(line: 278, column: 2, scope: !426)
!488 = !DILocation(line: 234, column: 37, scope: !421)
!489 = !DILocation(line: 234, column: 2, scope: !421)
!490 = distinct !{!490, !424, !491}
!491 = !DILocation(line: 278, column: 2, scope: !406)
!492 = !DILocation(line: 280, column: 2, scope: !385)
!493 = !DILocation(line: 281, column: 1, scope: !385)
!494 = distinct !DISubprogram(name: "stm32_pin_configure", scope: !114, file: !114, line: 201, type: !495, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!26, !54, !54, !54}
!497 = !{!498, !499, !500, !501}
!498 = !DILocalVariable(name: "pin", arg: 1, scope: !494, file: !114, line: 201, type: !54)
!499 = !DILocalVariable(name: "pin_cgf", arg: 2, scope: !494, file: !114, line: 201, type: !54)
!500 = !DILocalVariable(name: "pin_func", arg: 3, scope: !494, file: !114, line: 201, type: !54)
!501 = !DILocalVariable(name: "port_device", scope: !494, file: !114, line: 203, type: !27)
!502 = !DILocation(line: 201, column: 41, scope: !494)
!503 = !DILocation(line: 201, column: 55, scope: !494)
!504 = !DILocation(line: 201, column: 73, scope: !494)
!505 = !DILocation(line: 203, column: 2, scope: !494)
!506 = !DILocation(line: 203, column: 23, scope: !494)
!507 = !DILocation(line: 205, column: 8, scope: !508)
!508 = distinct !DILexicalBlock(scope: !494, file: !114, line: 205, column: 6)
!509 = !DILocation(line: 205, column: 13, scope: !508)
!510 = !DILocation(line: 205, column: 19, scope: !508)
!511 = !DILocation(line: 205, column: 6, scope: !494)
!512 = !DILocation(line: 206, column: 3, scope: !513)
!513 = distinct !DILexicalBlock(scope: !508, file: !114, line: 205, column: 38)
!514 = !DILocation(line: 209, column: 29, scope: !494)
!515 = !DILocation(line: 209, column: 34, scope: !494)
!516 = !DILocation(line: 209, column: 16, scope: !494)
!517 = !DILocation(line: 209, column: 14, scope: !494)
!518 = !DILocation(line: 211, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !494, file: !114, line: 211, column: 6)
!520 = !DILocation(line: 211, column: 19, scope: !519)
!521 = !DILocation(line: 211, column: 34, scope: !519)
!522 = !DILocation(line: 211, column: 55, scope: !519)
!523 = !DILocation(line: 211, column: 39, scope: !519)
!524 = !DILocation(line: 211, column: 6, scope: !494)
!525 = !DILocation(line: 212, column: 3, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !114, line: 211, column: 70)
!527 = !DILocation(line: 215, column: 30, scope: !494)
!528 = !DILocation(line: 215, column: 45, scope: !494)
!529 = !DILocation(line: 215, column: 50, scope: !494)
!530 = !DILocation(line: 215, column: 58, scope: !494)
!531 = !DILocation(line: 215, column: 67, scope: !494)
!532 = !DILocation(line: 215, column: 9, scope: !494)
!533 = !DILocation(line: 215, column: 2, scope: !494)
!534 = !DILocation(line: 216, column: 1, scope: !494)
!535 = !DISubprogram(name: "z_device_is_ready", scope: !30, file: !30, line: 724, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!536 = !{}
!537 = distinct !DISubprogram(name: "device_is_ready", scope: !538, file: !538, line: 49, type: !130, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!538 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!539 = !{!540}
!540 = !DILocalVariable(name: "dev", arg: 1, scope: !537, file: !538, line: 49, type: !27)
!541 = !DILocation(line: 49, column: 59, scope: !537)
!542 = !DILocation(line: 57, column: 2, scope: !537)
!543 = !DILocation(line: 57, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !538, line: 57, column: 5)
!545 = !{i64 31702}
!546 = !DILocation(line: 57, column: 47, scope: !544)
!547 = !DILocation(line: 58, column: 32, scope: !537)
!548 = !DILocation(line: 58, column: 9, scope: !537)
!549 = !DILocation(line: 58, column: 2, scope: !537)
!550 = !DISubprogram(name: "gpio_stm32_configure", scope: !551, file: !551, line: 260, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!551 = !DIFile(filename: "drivers/gpio/gpio_stm32.h", directory: "/home/sri/zephyrproject/zephyr")
!552 = !DISubroutineType(types: !553)
!553 = !{!26, !27, !26, !26, !26}
