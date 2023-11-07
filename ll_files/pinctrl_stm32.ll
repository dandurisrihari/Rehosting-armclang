; ModuleID = '../bc_files/pinctrl_stm32.bc'
source_filename = "/home/sri/zephyrproject/zephyr/drivers/pinctrl/pinctrl_stm32.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.device = type { ptr, ptr, ptr, ptr, ptr }
%struct.gpio_driver_api = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_driver_data = type { i32 }
%struct.pinctrl_soc_pin = type { i32, i32 }

@gpio_ports = internal constant [11 x ptr] [ptr @__device_dts_ord_28, ptr @__device_dts_ord_81, ptr @__device_dts_ord_25, ptr @__device_dts_ord_82, ptr @__device_dts_ord_83, ptr @__device_dts_ord_84, ptr null, ptr null, ptr null, ptr null, ptr null], align 4, !dbg !0
@__device_dts_ord_28 = external constant %struct.device, align 4
@__device_dts_ord_81 = external constant %struct.device, align 4
@__device_dts_ord_25 = external constant %struct.device, align 4
@__device_dts_ord_82 = external constant %struct.device, align 4
@__device_dts_ord_83 = external constant %struct.device, align 4
@__device_dts_ord_84 = external constant %struct.device, align 4

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @z_impl_device_is_ready(ptr noundef %0) #0 !dbg !131 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !135, metadata !DIExpression()), !dbg !136
  %3 = load ptr, ptr %2, align 4, !dbg !137
  %4 = call zeroext i1 @z_device_is_ready(ptr noundef %3), !dbg !138
  ret i1 %4, !dbg !139
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_pin_interrupt_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !140 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  %10 = alloca ptr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !141, metadata !DIExpression()), !dbg !142
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !143, metadata !DIExpression()), !dbg !144
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata ptr %8, metadata !147, metadata !DIExpression()), !dbg !148
  %13 = load ptr, ptr %5, align 4, !dbg !149
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 2, !dbg !150
  %15 = load ptr, ptr %14, align 4, !dbg !150
  store ptr %15, ptr %8, align 4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %9, metadata !151, metadata !DIExpression()), !dbg !153
  %16 = load ptr, ptr %5, align 4, !dbg !154
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1, !dbg !155
  %18 = load ptr, ptr %17, align 4, !dbg !155
  store ptr %18, ptr %9, align 4, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %10, metadata !156, metadata !DIExpression()), !dbg !158
  %19 = load ptr, ptr %5, align 4, !dbg !159
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 4, !dbg !160
  %21 = load ptr, ptr %20, align 4, !dbg !160
  store ptr %21, ptr %10, align 4, !dbg !158
  call void @llvm.dbg.declare(metadata ptr %11, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata ptr %12, metadata !163, metadata !DIExpression()), !dbg !164
  %22 = load ptr, ptr %8, align 4, !dbg !165
  %23 = getelementptr inbounds %struct.gpio_driver_api, ptr %22, i32 0, i32 6, !dbg !167
  %24 = load ptr, ptr %23, align 4, !dbg !167
  %25 = icmp eq ptr %24, null, !dbg !168
  br i1 %25, label %26, label %27, !dbg !169

26:                                               ; preds = %3
  store i32 -88, ptr %4, align 4, !dbg !170
  br label %56, !dbg !170

27:                                               ; preds = %3
  %28 = load i32, ptr %7, align 4, !dbg !172
  %29 = and i32 %28, 8388608, !dbg !174
  %30 = icmp ne i32 %29, 0, !dbg !175
  br i1 %30, label %31, label %43, !dbg !176

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 4, !dbg !177
  %33 = getelementptr inbounds %struct.gpio_driver_data, ptr %32, i32 0, i32 0, !dbg !178
  %34 = load i32, ptr %33, align 4, !dbg !178
  %35 = load i8, ptr %6, align 1, !dbg !179
  %36 = zext i8 %35 to i32, !dbg !180
  %37 = shl i32 1, %36, !dbg !181
  %38 = and i32 %34, %37, !dbg !182
  %39 = icmp ne i32 %38, 0, !dbg !183
  br i1 %39, label %40, label %43, !dbg !184

40:                                               ; preds = %31
  %41 = load i32, ptr %7, align 4, !dbg !185
  %42 = xor i32 %41, 100663296, !dbg !185
  store i32 %42, ptr %7, align 4, !dbg !185
  br label %43, !dbg !187

43:                                               ; preds = %40, %31, %27
  %44 = load i32, ptr %7, align 4, !dbg !188
  %45 = and i32 %44, 100663296, !dbg !189
  store i32 %45, ptr %11, align 4, !dbg !190
  %46 = load i32, ptr %7, align 4, !dbg !191
  %47 = and i32 %46, 23068672, !dbg !192
  store i32 %47, ptr %12, align 4, !dbg !193
  %48 = load ptr, ptr %8, align 4, !dbg !194
  %49 = getelementptr inbounds %struct.gpio_driver_api, ptr %48, i32 0, i32 6, !dbg !195
  %50 = load ptr, ptr %49, align 4, !dbg !195
  %51 = load ptr, ptr %5, align 4, !dbg !196
  %52 = load i8, ptr %6, align 1, !dbg !197
  %53 = load i32, ptr %12, align 4, !dbg !198
  %54 = load i32, ptr %11, align 4, !dbg !199
  %55 = call i32 %50(ptr noundef %51, i8 noundef zeroext %52, i32 noundef %53, i32 noundef %54), !dbg !194
  store i32 %55, ptr %4, align 4, !dbg !200
  br label %56, !dbg !200

56:                                               ; preds = %43, %26
  %57 = load i32, ptr %4, align 4, !dbg !201
  ret i32 %57, !dbg !201
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_pin_configure(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !202 {
  %4 = alloca ptr, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !203, metadata !DIExpression()), !dbg !204
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata ptr %7, metadata !209, metadata !DIExpression()), !dbg !210
  %10 = load ptr, ptr %4, align 4, !dbg !211
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 2, !dbg !212
  %12 = load ptr, ptr %11, align 4, !dbg !212
  store ptr %12, ptr %7, align 4, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %8, metadata !213, metadata !DIExpression()), !dbg !214
  %13 = load ptr, ptr %4, align 4, !dbg !215
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1, !dbg !216
  %15 = load ptr, ptr %14, align 4, !dbg !216
  store ptr %15, ptr %8, align 4, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %9, metadata !217, metadata !DIExpression()), !dbg !218
  %16 = load ptr, ptr %4, align 4, !dbg !219
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 4, !dbg !220
  %18 = load ptr, ptr %17, align 4, !dbg !220
  store ptr %18, ptr %9, align 4, !dbg !218
  %19 = load i32, ptr %6, align 4, !dbg !221
  %20 = and i32 %19, 1048576, !dbg !223
  %21 = icmp ne i32 %20, 0, !dbg !224
  br i1 %21, label %22, label %33, !dbg !225

22:                                               ; preds = %3
  %23 = load i32, ptr %6, align 4, !dbg !226
  %24 = and i32 %23, 786432, !dbg !227
  %25 = icmp ne i32 %24, 0, !dbg !228
  br i1 %25, label %26, label %33, !dbg !229

26:                                               ; preds = %22
  %27 = load i32, ptr %6, align 4, !dbg !230
  %28 = and i32 %27, 1, !dbg !231
  %29 = icmp ne i32 %28, 0, !dbg !232
  br i1 %29, label %30, label %33, !dbg !233

30:                                               ; preds = %26
  %31 = load i32, ptr %6, align 4, !dbg !234
  %32 = xor i32 %31, 786432, !dbg !234
  store i32 %32, ptr %6, align 4, !dbg !234
  br label %33, !dbg !236

33:                                               ; preds = %30, %26, %22, %3
  %34 = load i32, ptr %6, align 4, !dbg !237
  %35 = and i32 %34, -1048577, !dbg !237
  store i32 %35, ptr %6, align 4, !dbg !237
  %36 = load i32, ptr %6, align 4, !dbg !238
  %37 = and i32 %36, 1, !dbg !240
  %38 = icmp ne i32 %37, 0, !dbg !241
  br i1 %38, label %39, label %47, !dbg !242

39:                                               ; preds = %33
  %40 = load i8, ptr %5, align 1, !dbg !243
  %41 = zext i8 %40 to i32, !dbg !245
  %42 = shl i32 1, %41, !dbg !246
  %43 = load ptr, ptr %9, align 4, !dbg !247
  %44 = getelementptr inbounds %struct.gpio_driver_data, ptr %43, i32 0, i32 0, !dbg !248
  %45 = load i32, ptr %44, align 4, !dbg !249
  %46 = or i32 %45, %42, !dbg !249
  store i32 %46, ptr %44, align 4, !dbg !249
  br label %56, !dbg !250

47:                                               ; preds = %33
  %48 = load i8, ptr %5, align 1, !dbg !251
  %49 = zext i8 %48 to i32, !dbg !253
  %50 = shl i32 1, %49, !dbg !254
  %51 = xor i32 %50, -1, !dbg !255
  %52 = load ptr, ptr %9, align 4, !dbg !256
  %53 = getelementptr inbounds %struct.gpio_driver_data, ptr %52, i32 0, i32 0, !dbg !257
  %54 = load i32, ptr %53, align 4, !dbg !258
  %55 = and i32 %54, %51, !dbg !258
  store i32 %55, ptr %53, align 4, !dbg !258
  br label %56

56:                                               ; preds = %47, %39
  %57 = load ptr, ptr %7, align 4, !dbg !259
  %58 = getelementptr inbounds %struct.gpio_driver_api, ptr %57, i32 0, i32 0, !dbg !260
  %59 = load ptr, ptr %58, align 4, !dbg !260
  %60 = load ptr, ptr %4, align 4, !dbg !261
  %61 = load i8, ptr %5, align 1, !dbg !262
  %62 = load i32, ptr %6, align 4, !dbg !263
  %63 = call i32 %59(ptr noundef %60, i8 noundef zeroext %61, i32 noundef %62), !dbg !259
  ret i32 %63, !dbg !264
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_get_raw(ptr noundef %0, ptr noundef %1) #0 !dbg !265 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !266, metadata !DIExpression()), !dbg !267
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata ptr %5, metadata !270, metadata !DIExpression()), !dbg !271
  %6 = load ptr, ptr %3, align 4, !dbg !272
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !273
  %8 = load ptr, ptr %7, align 4, !dbg !273
  store ptr %8, ptr %5, align 4, !dbg !271
  %9 = load ptr, ptr %5, align 4, !dbg !274
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 1, !dbg !275
  %11 = load ptr, ptr %10, align 4, !dbg !275
  %12 = load ptr, ptr %3, align 4, !dbg !276
  %13 = load ptr, ptr %4, align 4, !dbg !277
  %14 = call i32 %11(ptr noundef %12, ptr noundef %13), !dbg !274
  ret i32 %14, !dbg !278
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_set_masked_raw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !279 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !282, metadata !DIExpression()), !dbg !283
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata ptr %7, metadata !286, metadata !DIExpression()), !dbg !287
  %8 = load ptr, ptr %4, align 4, !dbg !288
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 2, !dbg !289
  %10 = load ptr, ptr %9, align 4, !dbg !289
  store ptr %10, ptr %7, align 4, !dbg !287
  %11 = load ptr, ptr %7, align 4, !dbg !290
  %12 = getelementptr inbounds %struct.gpio_driver_api, ptr %11, i32 0, i32 2, !dbg !291
  %13 = load ptr, ptr %12, align 4, !dbg !291
  %14 = load ptr, ptr %4, align 4, !dbg !292
  %15 = load i32, ptr %5, align 4, !dbg !293
  %16 = load i32, ptr %6, align 4, !dbg !294
  %17 = call i32 %13(ptr noundef %14, i32 noundef %15, i32 noundef %16), !dbg !290
  ret i32 %17, !dbg !295
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_set_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !296 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !297, metadata !DIExpression()), !dbg !298
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !299, metadata !DIExpression()), !dbg !300
  call void @llvm.dbg.declare(metadata ptr %5, metadata !301, metadata !DIExpression()), !dbg !302
  %6 = load ptr, ptr %3, align 4, !dbg !303
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !304
  %8 = load ptr, ptr %7, align 4, !dbg !304
  store ptr %8, ptr %5, align 4, !dbg !302
  %9 = load ptr, ptr %5, align 4, !dbg !305
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 3, !dbg !306
  %11 = load ptr, ptr %10, align 4, !dbg !306
  %12 = load ptr, ptr %3, align 4, !dbg !307
  %13 = load i32, ptr %4, align 4, !dbg !308
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !305
  ret i32 %14, !dbg !309
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_clear_bits_raw(ptr noundef %0, i32 noundef %1) #0 !dbg !310 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !311, metadata !DIExpression()), !dbg !312
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata ptr %5, metadata !315, metadata !DIExpression()), !dbg !316
  %6 = load ptr, ptr %3, align 4, !dbg !317
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !318
  %8 = load ptr, ptr %7, align 4, !dbg !318
  store ptr %8, ptr %5, align 4, !dbg !316
  %9 = load ptr, ptr %5, align 4, !dbg !319
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 4, !dbg !320
  %11 = load ptr, ptr %10, align 4, !dbg !320
  %12 = load ptr, ptr %3, align 4, !dbg !321
  %13 = load i32, ptr %4, align 4, !dbg !322
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !319
  ret i32 %14, !dbg !323
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_port_toggle_bits(ptr noundef %0, i32 noundef %1) #0 !dbg !324 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !325, metadata !DIExpression()), !dbg !326
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata ptr %5, metadata !329, metadata !DIExpression()), !dbg !330
  %6 = load ptr, ptr %3, align 4, !dbg !331
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2, !dbg !332
  %8 = load ptr, ptr %7, align 4, !dbg !332
  store ptr %8, ptr %5, align 4, !dbg !330
  %9 = load ptr, ptr %5, align 4, !dbg !333
  %10 = getelementptr inbounds %struct.gpio_driver_api, ptr %9, i32 0, i32 5, !dbg !334
  %11 = load ptr, ptr %10, align 4, !dbg !334
  %12 = load ptr, ptr %3, align 4, !dbg !335
  %13 = load i32, ptr %4, align 4, !dbg !336
  %14 = call i32 %11(ptr noundef %12, i32 noundef %13), !dbg !333
  ret i32 %14, !dbg !337
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_gpio_get_pending_int(ptr noundef %0) #0 !dbg !338 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !344
  %5 = load ptr, ptr %3, align 4, !dbg !345
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 2, !dbg !346
  %7 = load ptr, ptr %6, align 4, !dbg !346
  store ptr %7, ptr %4, align 4, !dbg !344
  %8 = load ptr, ptr %4, align 4, !dbg !347
  %9 = getelementptr inbounds %struct.gpio_driver_api, ptr %8, i32 0, i32 8, !dbg !349
  %10 = load ptr, ptr %9, align 4, !dbg !349
  %11 = icmp eq ptr %10, null, !dbg !350
  br i1 %11, label %12, label %13, !dbg !351

12:                                               ; preds = %1
  store i32 -88, ptr %2, align 4, !dbg !352
  br label %19, !dbg !352

13:                                               ; preds = %1
  %14 = load ptr, ptr %4, align 4, !dbg !354
  %15 = getelementptr inbounds %struct.gpio_driver_api, ptr %14, i32 0, i32 8, !dbg !355
  %16 = load ptr, ptr %15, align 4, !dbg !355
  %17 = load ptr, ptr %3, align 4, !dbg !356
  %18 = call i32 %16(ptr noundef %17), !dbg !354
  store i32 %18, ptr %2, align 4, !dbg !357
  br label %19, !dbg !357

19:                                               ; preds = %13, %12
  %20 = load i32, ptr %2, align 4, !dbg !358
  ret i32 %20, !dbg !358
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @pinctrl_configure_pins(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #0 !dbg !359 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !371, metadata !DIExpression()), !dbg !372
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !373, metadata !DIExpression()), !dbg !374
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata ptr %8, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata ptr %9, metadata !379, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.declare(metadata ptr %10, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 0, ptr %10, align 4, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %11, metadata !383, metadata !DIExpression()), !dbg !384
  store i32 0, ptr %11, align 4, !dbg !384
  %13 = load i32, ptr %7, align 4, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %12, metadata !386, metadata !DIExpression()), !dbg !388
  store i8 0, ptr %12, align 1, !dbg !388
  br label %14, !dbg !389

14:                                               ; preds = %80, %3
  %15 = load i8, ptr %12, align 1, !dbg !390
  %16 = zext i8 %15 to i32, !dbg !390
  %17 = load i8, ptr %6, align 1, !dbg !392
  %18 = zext i8 %17 to i32, !dbg !392
  %19 = icmp slt i32 %16, %18, !dbg !393
  br i1 %19, label %20, label %83, !dbg !394

20:                                               ; preds = %14
  %21 = load ptr, ptr %5, align 4, !dbg !395
  %22 = load i8, ptr %12, align 1, !dbg !397
  %23 = zext i8 %22 to i32, !dbg !395
  %24 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %21, i32 %23, !dbg !395
  %25 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %24, i32 0, i32 0, !dbg !398
  %26 = load i32, ptr %25, align 4, !dbg !398
  store i32 %26, ptr %9, align 4, !dbg !399
  %27 = load i32, ptr %9, align 4, !dbg !400
  %28 = lshr i32 %27, 0, !dbg !402
  %29 = and i32 %28, 31, !dbg !403
  %30 = icmp ult i32 %29, 16, !dbg !404
  br i1 %30, label %31, label %39, !dbg !405

31:                                               ; preds = %20
  %32 = load ptr, ptr %5, align 4, !dbg !406
  %33 = load i8, ptr %12, align 1, !dbg !408
  %34 = zext i8 %33 to i32, !dbg !406
  %35 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %32, i32 %34, !dbg !406
  %36 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %35, i32 0, i32 1, !dbg !409
  %37 = load i32, ptr %36, align 4, !dbg !409
  %38 = or i32 %37, 32, !dbg !410
  store i32 %38, ptr %10, align 4, !dbg !411
  br label %60, !dbg !412

39:                                               ; preds = %20
  %40 = load i32, ptr %9, align 4, !dbg !413
  %41 = lshr i32 %40, 0, !dbg !415
  %42 = and i32 %41, 31, !dbg !416
  %43 = icmp eq i32 %42, 16, !dbg !417
  br i1 %43, label %44, label %45, !dbg !418

44:                                               ; preds = %39
  store i32 48, ptr %10, align 4, !dbg !419
  br label %59, !dbg !421

45:                                               ; preds = %39
  %46 = load i32, ptr %9, align 4, !dbg !422
  %47 = lshr i32 %46, 0, !dbg !424
  %48 = and i32 %47, 31, !dbg !425
  %49 = icmp eq i32 %48, 17, !dbg !426
  br i1 %49, label %50, label %57, !dbg !427

50:                                               ; preds = %45
  %51 = load ptr, ptr %5, align 4, !dbg !428
  %52 = load i8, ptr %12, align 1, !dbg !430
  %53 = zext i8 %52 to i32, !dbg !428
  %54 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %51, i32 %53, !dbg !428
  %55 = getelementptr inbounds %struct.pinctrl_soc_pin, ptr %54, i32 0, i32 1, !dbg !431
  %56 = load i32, ptr %55, align 4, !dbg !431
  store i32 %56, ptr %10, align 4, !dbg !432
  br label %58, !dbg !433

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %50
  br label %59

59:                                               ; preds = %58, %44
  br label %60

60:                                               ; preds = %59, %31
  %61 = load i32, ptr %9, align 4, !dbg !434
  %62 = lshr i32 %61, 9, !dbg !435
  %63 = and i32 %62, 15, !dbg !436
  %64 = shl i32 %63, 4, !dbg !437
  %65 = load i32, ptr %9, align 4, !dbg !438
  %66 = lshr i32 %65, 5, !dbg !439
  %67 = and i32 %66, 15, !dbg !440
  %68 = or i32 %64, %67, !dbg !441
  store i32 %68, ptr %8, align 4, !dbg !442
  %69 = load i32, ptr %8, align 4, !dbg !443
  %70 = load i32, ptr %10, align 4, !dbg !444
  %71 = load i32, ptr %9, align 4, !dbg !445
  %72 = lshr i32 %71, 0, !dbg !446
  %73 = and i32 %72, 31, !dbg !447
  %74 = call i32 @stm32_pin_configure(i32 noundef %69, i32 noundef %70, i32 noundef %73), !dbg !448
  store i32 %74, ptr %11, align 4, !dbg !449
  %75 = load i32, ptr %11, align 4, !dbg !450
  %76 = icmp slt i32 %75, 0, !dbg !452
  br i1 %76, label %77, label %79, !dbg !453

77:                                               ; preds = %60
  %78 = load i32, ptr %11, align 4, !dbg !454
  store i32 %78, ptr %4, align 4, !dbg !456
  br label %84, !dbg !456

79:                                               ; preds = %60
  br label %80, !dbg !457

80:                                               ; preds = %79
  %81 = load i8, ptr %12, align 1, !dbg !458
  %82 = add i8 %81, 1, !dbg !458
  store i8 %82, ptr %12, align 1, !dbg !458
  br label %14, !dbg !459, !llvm.loop !460

83:                                               ; preds = %14
  store i32 0, ptr %4, align 4, !dbg !462
  br label %84, !dbg !462

84:                                               ; preds = %83, %77
  %85 = load i32, ptr %4, align 4, !dbg !463
  ret i32 %85, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define internal i32 @stm32_pin_configure(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 !dbg !464 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !468
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !469, metadata !DIExpression()), !dbg !470
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %8, metadata !473, metadata !DIExpression()), !dbg !474
  %9 = load i32, ptr %5, align 4, !dbg !475
  %10 = lshr i32 %9, 4, !dbg !477
  %11 = icmp uge i32 %10, 11, !dbg !478
  br i1 %11, label %12, label %13, !dbg !479

12:                                               ; preds = %3
  store i32 -5, ptr %4, align 4, !dbg !480
  br label %31, !dbg !480

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4, !dbg !482
  %15 = lshr i32 %14, 4, !dbg !483
  %16 = getelementptr inbounds [11 x ptr], ptr @gpio_ports, i32 0, i32 %15, !dbg !484
  %17 = load ptr, ptr %16, align 4, !dbg !484
  store ptr %17, ptr %8, align 4, !dbg !485
  %18 = load ptr, ptr %8, align 4, !dbg !486
  %19 = icmp eq ptr %18, null, !dbg !488
  br i1 %19, label %23, label %20, !dbg !489

20:                                               ; preds = %13
  %21 = load ptr, ptr %8, align 4, !dbg !490
  %22 = call zeroext i1 @device_is_ready(ptr noundef %21), !dbg !491
  br i1 %22, label %24, label %23, !dbg !492

23:                                               ; preds = %20, %13
  store i32 -19, ptr %4, align 4, !dbg !493
  br label %31, !dbg !493

24:                                               ; preds = %20
  %25 = load ptr, ptr %8, align 4, !dbg !495
  %26 = load i32, ptr %5, align 4, !dbg !496
  %27 = and i32 %26, 15, !dbg !497
  %28 = load i32, ptr %6, align 4, !dbg !498
  %29 = load i32, ptr %7, align 4, !dbg !499
  %30 = call i32 @gpio_stm32_configure(ptr noundef %25, i32 noundef %27, i32 noundef %28, i32 noundef %29), !dbg !500
  store i32 %30, ptr %4, align 4, !dbg !501
  br label %31, !dbg !501

31:                                               ; preds = %24, %23, %12
  %32 = load i32, ptr %4, align 4, !dbg !502
  ret i32 %32, !dbg !502
}

declare zeroext i1 @z_device_is_ready(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @device_is_ready(ptr noundef %0) #0 !dbg !503 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !505, metadata !DIExpression()), !dbg !506
  br label %3, !dbg !507

3:                                                ; preds = %1
  call void asm sideeffect "", "~{memory}"() #3, !dbg !508, !srcloc !510
  br label %4, !dbg !511

4:                                                ; preds = %3
  %5 = load ptr, ptr %2, align 4, !dbg !512
  %6 = call zeroext i1 @z_impl_device_is_ready(ptr noundef %5), !dbg !513
  ret i1 %6, !dbg !514
}

declare i32 @gpio_stm32_configure(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gpio_ports", scope: !2, file: !114, line: 49, type: !118, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !111, splitDebugInlining: false, nameTableKind: None)
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
!128 = !{i32 8, !"PIC Level", i32 2}
!129 = !{i32 7, !"PIE Level", i32 2}
!130 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!131 = distinct !DISubprogram(name: "z_impl_device_is_ready", scope: !30, file: !30, line: 744, type: !132, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!49, !27}
!134 = !{}
!135 = !DILocalVariable(name: "dev", arg: 1, scope: !131, file: !30, line: 744, type: !27)
!136 = !DILocation(line: 744, column: 65, scope: !131)
!137 = !DILocation(line: 746, column: 27, scope: !131)
!138 = !DILocation(line: 746, column: 9, scope: !131)
!139 = !DILocation(line: 746, column: 2, scope: !131)
!140 = distinct !DISubprogram(name: "z_impl_gpio_pin_interrupt_configure", scope: !6, file: !6, line: 862, type: !24, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!141 = !DILocalVariable(name: "port", arg: 1, scope: !140, file: !6, line: 862, type: !27)
!142 = !DILocation(line: 862, column: 76, scope: !140)
!143 = !DILocalVariable(name: "pin", arg: 2, scope: !140, file: !6, line: 863, type: !52)
!144 = !DILocation(line: 863, column: 24, scope: !140)
!145 = !DILocalVariable(name: "flags", arg: 3, scope: !140, file: !6, line: 864, type: !53)
!146 = !DILocation(line: 864, column: 26, scope: !140)
!147 = !DILocalVariable(name: "api", scope: !140, file: !6, line: 866, type: !18)
!148 = !DILocation(line: 866, column: 32, scope: !140)
!149 = !DILocation(line: 867, column: 35, scope: !140)
!150 = !DILocation(line: 867, column: 41, scope: !140)
!151 = !DILocalVariable(name: "cfg", scope: !140, file: !6, line: 868, type: !152)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!153 = !DILocation(line: 868, column: 69, scope: !140)
!154 = !DILocation(line: 869, column: 38, scope: !140)
!155 = !DILocation(line: 869, column: 44, scope: !140)
!156 = !DILocalVariable(name: "data", scope: !140, file: !6, line: 870, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!158 = !DILocation(line: 870, column: 39, scope: !140)
!159 = !DILocation(line: 871, column: 36, scope: !140)
!160 = !DILocation(line: 871, column: 42, scope: !140)
!161 = !DILocalVariable(name: "trig", scope: !140, file: !6, line: 872, type: !12)
!162 = !DILocation(line: 872, column: 21, scope: !140)
!163 = !DILocalVariable(name: "mode", scope: !140, file: !6, line: 873, type: !5)
!164 = !DILocation(line: 873, column: 21, scope: !140)
!165 = !DILocation(line: 875, column: 6, scope: !166)
!166 = distinct !DILexicalBlock(scope: !140, file: !6, line: 875, column: 6)
!167 = !DILocation(line: 875, column: 11, scope: !166)
!168 = !DILocation(line: 875, column: 35, scope: !166)
!169 = !DILocation(line: 875, column: 6, scope: !140)
!170 = !DILocation(line: 876, column: 3, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !6, line: 875, column: 50)
!172 = !DILocation(line: 906, column: 8, scope: !173)
!173 = distinct !DILexicalBlock(scope: !140, file: !6, line: 906, column: 6)
!174 = !DILocation(line: 906, column: 14, scope: !173)
!175 = !DILocation(line: 906, column: 28, scope: !173)
!176 = !DILocation(line: 906, column: 34, scope: !173)
!177 = !DILocation(line: 907, column: 8, scope: !173)
!178 = !DILocation(line: 907, column: 14, scope: !173)
!179 = !DILocation(line: 907, column: 50, scope: !173)
!180 = !DILocation(line: 907, column: 49, scope: !173)
!181 = !DILocation(line: 907, column: 46, scope: !173)
!182 = !DILocation(line: 907, column: 21, scope: !173)
!183 = !DILocation(line: 907, column: 57, scope: !173)
!184 = !DILocation(line: 906, column: 6, scope: !140)
!185 = !DILocation(line: 909, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !173, file: !6, line: 907, column: 64)
!187 = !DILocation(line: 910, column: 2, scope: !186)
!188 = !DILocation(line: 912, column: 30, scope: !140)
!189 = !DILocation(line: 912, column: 36, scope: !140)
!190 = !DILocation(line: 912, column: 7, scope: !140)
!191 = !DILocation(line: 917, column: 30, scope: !140)
!192 = !DILocation(line: 917, column: 36, scope: !140)
!193 = !DILocation(line: 917, column: 7, scope: !140)
!194 = !DILocation(line: 920, column: 9, scope: !140)
!195 = !DILocation(line: 920, column: 14, scope: !140)
!196 = !DILocation(line: 920, column: 38, scope: !140)
!197 = !DILocation(line: 920, column: 44, scope: !140)
!198 = !DILocation(line: 920, column: 49, scope: !140)
!199 = !DILocation(line: 920, column: 55, scope: !140)
!200 = !DILocation(line: 920, column: 2, scope: !140)
!201 = !DILocation(line: 921, column: 1, scope: !140)
!202 = distinct !DISubprogram(name: "z_impl_gpio_pin_configure", scope: !6, file: !6, line: 961, type: !24, scopeLine: 964, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!203 = !DILocalVariable(name: "port", arg: 1, scope: !202, file: !6, line: 961, type: !27)
!204 = !DILocation(line: 961, column: 66, scope: !202)
!205 = !DILocalVariable(name: "pin", arg: 2, scope: !202, file: !6, line: 962, type: !52)
!206 = !DILocation(line: 962, column: 21, scope: !202)
!207 = !DILocalVariable(name: "flags", arg: 3, scope: !202, file: !6, line: 963, type: !53)
!208 = !DILocation(line: 963, column: 23, scope: !202)
!209 = !DILocalVariable(name: "api", scope: !202, file: !6, line: 965, type: !18)
!210 = !DILocation(line: 965, column: 32, scope: !202)
!211 = !DILocation(line: 966, column: 35, scope: !202)
!212 = !DILocation(line: 966, column: 41, scope: !202)
!213 = !DILocalVariable(name: "cfg", scope: !202, file: !6, line: 967, type: !152)
!214 = !DILocation(line: 967, column: 69, scope: !202)
!215 = !DILocation(line: 968, column: 38, scope: !202)
!216 = !DILocation(line: 968, column: 44, scope: !202)
!217 = !DILocalVariable(name: "data", scope: !202, file: !6, line: 969, type: !110)
!218 = !DILocation(line: 969, column: 27, scope: !202)
!219 = !DILocation(line: 970, column: 30, scope: !202)
!220 = !DILocation(line: 970, column: 36, scope: !202)
!221 = !DILocation(line: 993, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !202, file: !6, line: 993, column: 6)
!223 = !DILocation(line: 993, column: 14, scope: !222)
!224 = !DILocation(line: 993, column: 28, scope: !222)
!225 = !DILocation(line: 994, column: 6, scope: !222)
!226 = !DILocation(line: 994, column: 11, scope: !222)
!227 = !DILocation(line: 994, column: 17, scope: !222)
!228 = !DILocation(line: 994, column: 46, scope: !222)
!229 = !DILocation(line: 995, column: 6, scope: !222)
!230 = !DILocation(line: 995, column: 11, scope: !222)
!231 = !DILocation(line: 995, column: 17, scope: !222)
!232 = !DILocation(line: 995, column: 29, scope: !222)
!233 = !DILocation(line: 993, column: 6, scope: !202)
!234 = !DILocation(line: 996, column: 9, scope: !235)
!235 = distinct !DILexicalBlock(scope: !222, file: !6, line: 995, column: 36)
!236 = !DILocation(line: 997, column: 2, scope: !235)
!237 = !DILocation(line: 999, column: 8, scope: !202)
!238 = !DILocation(line: 1004, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !202, file: !6, line: 1004, column: 6)
!240 = !DILocation(line: 1004, column: 13, scope: !239)
!241 = !DILocation(line: 1004, column: 25, scope: !239)
!242 = !DILocation(line: 1004, column: 6, scope: !202)
!243 = !DILocation(line: 1005, column: 46, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !6, line: 1004, column: 31)
!245 = !DILocation(line: 1005, column: 45, scope: !244)
!246 = !DILocation(line: 1005, column: 42, scope: !244)
!247 = !DILocation(line: 1005, column: 3, scope: !244)
!248 = !DILocation(line: 1005, column: 9, scope: !244)
!249 = !DILocation(line: 1005, column: 16, scope: !244)
!250 = !DILocation(line: 1006, column: 2, scope: !244)
!251 = !DILocation(line: 1007, column: 47, scope: !252)
!252 = distinct !DILexicalBlock(scope: !239, file: !6, line: 1006, column: 9)
!253 = !DILocation(line: 1007, column: 46, scope: !252)
!254 = !DILocation(line: 1007, column: 43, scope: !252)
!255 = !DILocation(line: 1007, column: 19, scope: !252)
!256 = !DILocation(line: 1007, column: 3, scope: !252)
!257 = !DILocation(line: 1007, column: 9, scope: !252)
!258 = !DILocation(line: 1007, column: 16, scope: !252)
!259 = !DILocation(line: 1010, column: 9, scope: !202)
!260 = !DILocation(line: 1010, column: 14, scope: !202)
!261 = !DILocation(line: 1010, column: 28, scope: !202)
!262 = !DILocation(line: 1010, column: 34, scope: !202)
!263 = !DILocation(line: 1010, column: 39, scope: !202)
!264 = !DILocation(line: 1010, column: 2, scope: !202)
!265 = distinct !DISubprogram(name: "z_impl_gpio_port_get_raw", scope: !6, file: !6, line: 1229, type: !57, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!266 = !DILocalVariable(name: "port", arg: 1, scope: !265, file: !6, line: 1229, type: !27)
!267 = !DILocation(line: 1229, column: 65, scope: !265)
!268 = !DILocalVariable(name: "value", arg: 2, scope: !265, file: !6, line: 1230, type: !59)
!269 = !DILocation(line: 1230, column: 28, scope: !265)
!270 = !DILocalVariable(name: "api", scope: !265, file: !6, line: 1232, type: !18)
!271 = !DILocation(line: 1232, column: 32, scope: !265)
!272 = !DILocation(line: 1233, column: 35, scope: !265)
!273 = !DILocation(line: 1233, column: 41, scope: !265)
!274 = !DILocation(line: 1235, column: 9, scope: !265)
!275 = !DILocation(line: 1235, column: 14, scope: !265)
!276 = !DILocation(line: 1235, column: 27, scope: !265)
!277 = !DILocation(line: 1235, column: 33, scope: !265)
!278 = !DILocation(line: 1235, column: 2, scope: !265)
!279 = distinct !DISubprogram(name: "z_impl_gpio_port_set_masked_raw", scope: !6, file: !6, line: 1292, type: !63, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!280 = !DILocalVariable(name: "port", arg: 1, scope: !279, file: !6, line: 1292, type: !27)
!281 = !DILocation(line: 1292, column: 72, scope: !279)
!282 = !DILocalVariable(name: "mask", arg: 2, scope: !279, file: !6, line: 1293, type: !65)
!283 = !DILocation(line: 1293, column: 26, scope: !279)
!284 = !DILocalVariable(name: "value", arg: 3, scope: !279, file: !6, line: 1294, type: !60)
!285 = !DILocation(line: 1294, column: 27, scope: !279)
!286 = !DILocalVariable(name: "api", scope: !279, file: !6, line: 1296, type: !18)
!287 = !DILocation(line: 1296, column: 32, scope: !279)
!288 = !DILocation(line: 1297, column: 35, scope: !279)
!289 = !DILocation(line: 1297, column: 41, scope: !279)
!290 = !DILocation(line: 1299, column: 9, scope: !279)
!291 = !DILocation(line: 1299, column: 14, scope: !279)
!292 = !DILocation(line: 1299, column: 34, scope: !279)
!293 = !DILocation(line: 1299, column: 40, scope: !279)
!294 = !DILocation(line: 1299, column: 46, scope: !279)
!295 = !DILocation(line: 1299, column: 2, scope: !279)
!296 = distinct !DISubprogram(name: "z_impl_gpio_port_set_bits_raw", scope: !6, file: !6, line: 1347, type: !68, scopeLine: 1349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!297 = !DILocalVariable(name: "port", arg: 1, scope: !296, file: !6, line: 1347, type: !27)
!298 = !DILocation(line: 1347, column: 70, scope: !296)
!299 = !DILocalVariable(name: "pins", arg: 2, scope: !296, file: !6, line: 1348, type: !65)
!300 = !DILocation(line: 1348, column: 24, scope: !296)
!301 = !DILocalVariable(name: "api", scope: !296, file: !6, line: 1350, type: !18)
!302 = !DILocation(line: 1350, column: 32, scope: !296)
!303 = !DILocation(line: 1351, column: 35, scope: !296)
!304 = !DILocation(line: 1351, column: 41, scope: !296)
!305 = !DILocation(line: 1353, column: 9, scope: !296)
!306 = !DILocation(line: 1353, column: 14, scope: !296)
!307 = !DILocation(line: 1353, column: 32, scope: !296)
!308 = !DILocation(line: 1353, column: 38, scope: !296)
!309 = !DILocation(line: 1353, column: 2, scope: !296)
!310 = distinct !DISubprogram(name: "z_impl_gpio_port_clear_bits_raw", scope: !6, file: !6, line: 1385, type: !68, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!311 = !DILocalVariable(name: "port", arg: 1, scope: !310, file: !6, line: 1385, type: !27)
!312 = !DILocation(line: 1385, column: 72, scope: !310)
!313 = !DILocalVariable(name: "pins", arg: 2, scope: !310, file: !6, line: 1386, type: !65)
!314 = !DILocation(line: 1386, column: 26, scope: !310)
!315 = !DILocalVariable(name: "api", scope: !310, file: !6, line: 1388, type: !18)
!316 = !DILocation(line: 1388, column: 32, scope: !310)
!317 = !DILocation(line: 1389, column: 35, scope: !310)
!318 = !DILocation(line: 1389, column: 41, scope: !310)
!319 = !DILocation(line: 1391, column: 9, scope: !310)
!320 = !DILocation(line: 1391, column: 14, scope: !310)
!321 = !DILocation(line: 1391, column: 34, scope: !310)
!322 = !DILocation(line: 1391, column: 40, scope: !310)
!323 = !DILocation(line: 1391, column: 2, scope: !310)
!324 = distinct !DISubprogram(name: "z_impl_gpio_port_toggle_bits", scope: !6, file: !6, line: 1423, type: !68, scopeLine: 1425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!325 = !DILocalVariable(name: "port", arg: 1, scope: !324, file: !6, line: 1423, type: !27)
!326 = !DILocation(line: 1423, column: 69, scope: !324)
!327 = !DILocalVariable(name: "pins", arg: 2, scope: !324, file: !6, line: 1424, type: !65)
!328 = !DILocation(line: 1424, column: 30, scope: !324)
!329 = !DILocalVariable(name: "api", scope: !324, file: !6, line: 1426, type: !18)
!330 = !DILocation(line: 1426, column: 32, scope: !324)
!331 = !DILocation(line: 1427, column: 35, scope: !324)
!332 = !DILocation(line: 1427, column: 41, scope: !324)
!333 = !DILocation(line: 1429, column: 9, scope: !324)
!334 = !DILocation(line: 1429, column: 14, scope: !324)
!335 = !DILocation(line: 1429, column: 31, scope: !324)
!336 = !DILocation(line: 1429, column: 37, scope: !324)
!337 = !DILocation(line: 1429, column: 2, scope: !324)
!338 = distinct !DISubprogram(name: "z_impl_gpio_get_pending_int", scope: !6, file: !6, line: 1807, type: !339, scopeLine: 1808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!339 = !DISubroutineType(types: !340)
!340 = !{!26, !27}
!341 = !DILocalVariable(name: "dev", arg: 1, scope: !338, file: !6, line: 1807, type: !27)
!342 = !DILocation(line: 1807, column: 68, scope: !338)
!343 = !DILocalVariable(name: "api", scope: !338, file: !6, line: 1809, type: !18)
!344 = !DILocation(line: 1809, column: 32, scope: !338)
!345 = !DILocation(line: 1810, column: 35, scope: !338)
!346 = !DILocation(line: 1810, column: 40, scope: !338)
!347 = !DILocation(line: 1812, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !338, file: !6, line: 1812, column: 6)
!349 = !DILocation(line: 1812, column: 11, scope: !348)
!350 = !DILocation(line: 1812, column: 27, scope: !348)
!351 = !DILocation(line: 1812, column: 6, scope: !338)
!352 = !DILocation(line: 1813, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !348, file: !6, line: 1812, column: 42)
!354 = !DILocation(line: 1816, column: 9, scope: !338)
!355 = !DILocation(line: 1816, column: 14, scope: !338)
!356 = !DILocation(line: 1816, column: 30, scope: !338)
!357 = !DILocation(line: 1816, column: 2, scope: !338)
!358 = !DILocation(line: 1817, column: 1, scope: !338)
!359 = distinct !DISubprogram(name: "pinctrl_configure_pins", scope: !114, file: !114, line: 218, type: !360, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !134)
!360 = !DISubroutineType(types: !361)
!361 = !{!26, !362, !45, !370}
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "pinctrl_soc_pin_t", file: !365, line: 37, baseType: !366)
!365 = !DIFile(filename: "soc/arm/st_stm32/common/pinctrl_soc.h", directory: "/home/sri/zephyrproject/zephyr")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_soc_pin", file: !365, line: 32, size: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pinmux", scope: !366, file: !365, line: 34, baseType: !54, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pincfg", scope: !366, file: !365, line: 36, baseType: !54, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !46, line: 102, baseType: !7)
!371 = !DILocalVariable(name: "pins", arg: 1, scope: !359, file: !114, line: 218, type: !362)
!372 = !DILocation(line: 218, column: 53, scope: !359)
!373 = !DILocalVariable(name: "pin_cnt", arg: 2, scope: !359, file: !114, line: 218, type: !45)
!374 = !DILocation(line: 218, column: 67, scope: !359)
!375 = !DILocalVariable(name: "reg", arg: 3, scope: !359, file: !114, line: 219, type: !370)
!376 = !DILocation(line: 219, column: 17, scope: !359)
!377 = !DILocalVariable(name: "pin", scope: !359, file: !114, line: 221, type: !54)
!378 = !DILocation(line: 221, column: 11, scope: !359)
!379 = !DILocalVariable(name: "mux", scope: !359, file: !114, line: 221, type: !54)
!380 = !DILocation(line: 221, column: 16, scope: !359)
!381 = !DILocalVariable(name: "pin_cgf", scope: !359, file: !114, line: 222, type: !54)
!382 = !DILocation(line: 222, column: 11, scope: !359)
!383 = !DILocalVariable(name: "ret", scope: !359, file: !114, line: 223, type: !26)
!384 = !DILocation(line: 223, column: 6, scope: !359)
!385 = !DILocation(line: 225, column: 9, scope: !359)
!386 = !DILocalVariable(name: "i", scope: !387, file: !114, line: 234, type: !45)
!387 = distinct !DILexicalBlock(scope: !359, file: !114, line: 234, column: 2)
!388 = !DILocation(line: 234, column: 15, scope: !387)
!389 = !DILocation(line: 234, column: 7, scope: !387)
!390 = !DILocation(line: 234, column: 23, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !114, line: 234, column: 2)
!392 = !DILocation(line: 234, column: 27, scope: !391)
!393 = !DILocation(line: 234, column: 25, scope: !391)
!394 = !DILocation(line: 234, column: 2, scope: !387)
!395 = !DILocation(line: 235, column: 9, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !114, line: 234, column: 41)
!397 = !DILocation(line: 235, column: 14, scope: !396)
!398 = !DILocation(line: 235, column: 17, scope: !396)
!399 = !DILocation(line: 235, column: 7, scope: !396)
!400 = !DILocation(line: 259, column: 10, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !114, line: 259, column: 7)
!402 = !DILocation(line: 259, column: 15, scope: !401)
!403 = !DILocation(line: 259, column: 22, scope: !401)
!404 = !DILocation(line: 259, column: 31, scope: !401)
!405 = !DILocation(line: 259, column: 7, scope: !396)
!406 = !DILocation(line: 260, column: 14, scope: !407)
!407 = distinct !DILexicalBlock(scope: !401, file: !114, line: 259, column: 39)
!408 = !DILocation(line: 260, column: 19, scope: !407)
!409 = !DILocation(line: 260, column: 22, scope: !407)
!410 = !DILocation(line: 260, column: 29, scope: !407)
!411 = !DILocation(line: 260, column: 12, scope: !407)
!412 = !DILocation(line: 261, column: 3, scope: !407)
!413 = !DILocation(line: 261, column: 17, scope: !414)
!414 = distinct !DILexicalBlock(scope: !401, file: !114, line: 261, column: 14)
!415 = !DILocation(line: 261, column: 22, scope: !414)
!416 = !DILocation(line: 261, column: 29, scope: !414)
!417 = !DILocation(line: 261, column: 38, scope: !414)
!418 = !DILocation(line: 261, column: 14, scope: !401)
!419 = !DILocation(line: 262, column: 12, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !114, line: 261, column: 47)
!421 = !DILocation(line: 263, column: 3, scope: !420)
!422 = !DILocation(line: 263, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !414, file: !114, line: 263, column: 14)
!424 = !DILocation(line: 263, column: 22, scope: !423)
!425 = !DILocation(line: 263, column: 29, scope: !423)
!426 = !DILocation(line: 263, column: 38, scope: !423)
!427 = !DILocation(line: 263, column: 14, scope: !414)
!428 = !DILocation(line: 264, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !423, file: !114, line: 263, column: 47)
!430 = !DILocation(line: 264, column: 19, scope: !429)
!431 = !DILocation(line: 264, column: 22, scope: !429)
!432 = !DILocation(line: 264, column: 12, scope: !429)
!433 = !DILocation(line: 265, column: 3, scope: !429)
!434 = !DILocation(line: 271, column: 13, scope: !396)
!435 = !DILocation(line: 271, column: 18, scope: !396)
!436 = !DILocation(line: 271, column: 25, scope: !396)
!437 = !DILocation(line: 271, column: 33, scope: !396)
!438 = !DILocation(line: 271, column: 43, scope: !396)
!439 = !DILocation(line: 271, column: 48, scope: !396)
!440 = !DILocation(line: 271, column: 55, scope: !396)
!441 = !DILocation(line: 271, column: 38, scope: !396)
!442 = !DILocation(line: 271, column: 7, scope: !396)
!443 = !DILocation(line: 274, column: 29, scope: !396)
!444 = !DILocation(line: 274, column: 34, scope: !396)
!445 = !DILocation(line: 274, column: 46, scope: !396)
!446 = !DILocation(line: 274, column: 51, scope: !396)
!447 = !DILocation(line: 274, column: 58, scope: !396)
!448 = !DILocation(line: 274, column: 9, scope: !396)
!449 = !DILocation(line: 274, column: 7, scope: !396)
!450 = !DILocation(line: 275, column: 7, scope: !451)
!451 = distinct !DILexicalBlock(scope: !396, file: !114, line: 275, column: 7)
!452 = !DILocation(line: 275, column: 11, scope: !451)
!453 = !DILocation(line: 275, column: 7, scope: !396)
!454 = !DILocation(line: 276, column: 11, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !114, line: 275, column: 16)
!456 = !DILocation(line: 276, column: 4, scope: !455)
!457 = !DILocation(line: 278, column: 2, scope: !396)
!458 = !DILocation(line: 234, column: 37, scope: !391)
!459 = !DILocation(line: 234, column: 2, scope: !391)
!460 = distinct !{!460, !394, !461}
!461 = !DILocation(line: 278, column: 2, scope: !387)
!462 = !DILocation(line: 280, column: 2, scope: !359)
!463 = !DILocation(line: 281, column: 1, scope: !359)
!464 = distinct !DISubprogram(name: "stm32_pin_configure", scope: !114, file: !114, line: 201, type: !465, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!465 = !DISubroutineType(types: !466)
!466 = !{!26, !54, !54, !54}
!467 = !DILocalVariable(name: "pin", arg: 1, scope: !464, file: !114, line: 201, type: !54)
!468 = !DILocation(line: 201, column: 41, scope: !464)
!469 = !DILocalVariable(name: "pin_cgf", arg: 2, scope: !464, file: !114, line: 201, type: !54)
!470 = !DILocation(line: 201, column: 55, scope: !464)
!471 = !DILocalVariable(name: "pin_func", arg: 3, scope: !464, file: !114, line: 201, type: !54)
!472 = !DILocation(line: 201, column: 73, scope: !464)
!473 = !DILocalVariable(name: "port_device", scope: !464, file: !114, line: 203, type: !27)
!474 = !DILocation(line: 203, column: 23, scope: !464)
!475 = !DILocation(line: 205, column: 8, scope: !476)
!476 = distinct !DILexicalBlock(scope: !464, file: !114, line: 205, column: 6)
!477 = !DILocation(line: 205, column: 13, scope: !476)
!478 = !DILocation(line: 205, column: 19, scope: !476)
!479 = !DILocation(line: 205, column: 6, scope: !464)
!480 = !DILocation(line: 206, column: 3, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !114, line: 205, column: 38)
!482 = !DILocation(line: 209, column: 29, scope: !464)
!483 = !DILocation(line: 209, column: 34, scope: !464)
!484 = !DILocation(line: 209, column: 16, scope: !464)
!485 = !DILocation(line: 209, column: 14, scope: !464)
!486 = !DILocation(line: 211, column: 7, scope: !487)
!487 = distinct !DILexicalBlock(scope: !464, file: !114, line: 211, column: 6)
!488 = !DILocation(line: 211, column: 19, scope: !487)
!489 = !DILocation(line: 211, column: 34, scope: !487)
!490 = !DILocation(line: 211, column: 55, scope: !487)
!491 = !DILocation(line: 211, column: 39, scope: !487)
!492 = !DILocation(line: 211, column: 6, scope: !464)
!493 = !DILocation(line: 212, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !114, line: 211, column: 70)
!495 = !DILocation(line: 215, column: 30, scope: !464)
!496 = !DILocation(line: 215, column: 45, scope: !464)
!497 = !DILocation(line: 215, column: 50, scope: !464)
!498 = !DILocation(line: 215, column: 58, scope: !464)
!499 = !DILocation(line: 215, column: 67, scope: !464)
!500 = !DILocation(line: 215, column: 9, scope: !464)
!501 = !DILocation(line: 215, column: 2, scope: !464)
!502 = !DILocation(line: 216, column: 1, scope: !464)
!503 = distinct !DISubprogram(name: "device_is_ready", scope: !504, file: !504, line: 49, type: !132, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !134)
!504 = !DIFile(filename: "zephyr/include/generated/syscalls/device.h", directory: "/home/sri/zephyrproject/zephyr/build")
!505 = !DILocalVariable(name: "dev", arg: 1, scope: !503, file: !504, line: 49, type: !27)
!506 = !DILocation(line: 49, column: 59, scope: !503)
!507 = !DILocation(line: 57, column: 2, scope: !503)
!508 = !DILocation(line: 57, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !504, line: 57, column: 5)
!510 = !{i64 31798}
!511 = !DILocation(line: 57, column: 47, scope: !509)
!512 = !DILocation(line: 58, column: 32, scope: !503)
!513 = !DILocation(line: 58, column: 9, scope: !503)
!514 = !DILocation(line: 58, column: 2, scope: !503)
