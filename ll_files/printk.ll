; ModuleID = '../bc_files/printk.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/printk.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.llext_const_symbol = type { ptr, ptr }
%struct.k_thread = type { %struct._thread_base, %struct._callee_saved, ptr, %struct._wait_q_t, i32, ptr, %struct._thread_arch }
%struct._thread_base = type { %union.anon, ptr, i8, i8, %union.anon.2, i32, ptr, %struct._timeout }
%union.anon = type { %struct._dnode }
%struct._dnode = type { %union.anon.0, %union.anon.1 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i16 }
%struct._timeout = type { %struct._dnode, ptr, i64 }
%struct._callee_saved = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._wait_q_t = type { %struct._dnode }
%struct._thread_arch = type { i32, i32 }
%struct.k_timer = type { %struct._timeout, %struct._wait_q_t, ptr, ptr, %struct.k_timeout_t, i32, ptr }
%struct.k_timeout_t = type { i64 }
%struct.k_queue = type { %struct._sflist, %struct.k_spinlock, %struct._wait_q_t }
%struct._sflist = type { ptr, ptr }
%struct.k_spinlock = type {}
%struct.k_sem = type { %struct._wait_q_t, i32, i32 }
%struct.k_msgq = type { %struct._wait_q_t, %struct.k_spinlock, i32, i32, ptr, ptr, ptr, ptr, i32, i8 }
%struct.__va_list = type { ptr }
%struct.str_context = type { ptr, i32, i32 }

@_char_out = hidden global ptr @arch_printk_char_out, align 4, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"printk\00", align 1, !dbg !92
@printk_sym = internal constant %struct.llext_const_symbol { ptr @.str, ptr @printk }, section "._llext_const_symbol.static.printk_sym_", align 4, !dbg !99
@llvm.used = appending global [1 x ptr] [ptr @printk_sym], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !125 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !247, metadata !DIExpression()), !dbg !248
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !249, metadata !DIExpression()), !dbg !250
  %5 = load ptr, ptr %3, align 4, !dbg !251
  %6 = load ptr, ptr %4, align 4, !dbg !252
  ret void, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !254 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load ptr, ptr %2, align 4, !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !261 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !264, metadata !DIExpression()), !dbg !265
  %3 = load i8, ptr %2, align 1, !dbg !266
  ret ptr null, !dbg !267
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !268 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !273, metadata !DIExpression()), !dbg !274
  %5 = load i8, ptr %3, align 1, !dbg !275
  %6 = load i32, ptr %4, align 4, !dbg !276
  ret ptr null, !dbg !277
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !278 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !285, metadata !DIExpression()), !dbg !286
  %3 = load ptr, ptr %2, align 4, !dbg !287
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !288
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !289
  %6 = call i64 @z_timeout_expires(ptr noundef %5), !dbg !290
  ret i64 %6, !dbg !291
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !292 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !293, metadata !DIExpression()), !dbg !294
  %3 = load ptr, ptr %2, align 4, !dbg !295
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !296
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !297
  %6 = call i64 @z_timeout_remaining(ptr noundef %5), !dbg !298
  ret i64 %6, !dbg !299
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !300 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !322, metadata !DIExpression()), !dbg !323
  %3 = load ptr, ptr %2, align 4, !dbg !324
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !325
  %5 = call i64 @z_timeout_expires(ptr noundef %4), !dbg !326
  ret i64 %5, !dbg !327
}

; Function Attrs: noinline nounwind optnone
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !328 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !329, metadata !DIExpression()), !dbg !330
  %3 = load ptr, ptr %2, align 4, !dbg !331
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !332
  %5 = call i64 @z_timeout_remaining(ptr noundef %4), !dbg !333
  ret i64 %5, !dbg !334
}

; Function Attrs: noinline nounwind optnone
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !335 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !338, metadata !DIExpression()), !dbg !339
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !340, metadata !DIExpression()), !dbg !341
  %5 = load ptr, ptr %4, align 4, !dbg !342
  %6 = load ptr, ptr %3, align 4, !dbg !343
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !344
  store ptr %5, ptr %7, align 4, !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !347 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !350, metadata !DIExpression()), !dbg !351
  %3 = load ptr, ptr %2, align 4, !dbg !352
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !353
  %5 = load ptr, ptr %4, align 4, !dbg !353
  ret ptr %5, !dbg !354
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !355 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !376, metadata !DIExpression()), !dbg !377
  %3 = load ptr, ptr %2, align 4, !dbg !378
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !379
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4), !dbg !380
  %6 = zext i1 %5 to i32, !dbg !381
  ret i32 %6, !dbg !382
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !383 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !392, metadata !DIExpression()), !dbg !393
  %3 = load ptr, ptr %2, align 4, !dbg !394
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !395
  %5 = load i32, ptr %4, align 4, !dbg !395
  ret i32 %5, !dbg !396
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !397 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load ptr, ptr %2, align 4, !dbg !416
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !417
  %5 = load i32, ptr %4, align 4, !dbg !417
  %6 = load ptr, ptr %2, align 4, !dbg !418
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !419
  %8 = load i32, ptr %7, align 4, !dbg !419
  %9 = sub i32 %5, %8, !dbg !420
  ret i32 %9, !dbg !421
}

; Function Attrs: noinline nounwind optnone
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !422 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !423, metadata !DIExpression()), !dbg !424
  %3 = load ptr, ptr %2, align 4, !dbg !425
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !426
  %5 = load i32, ptr %4, align 4, !dbg !426
  ret i32 %5, !dbg !427
}

; Function Attrs: noinline nounwind optnone
define weak hidden i32 @arch_printk_char_out(i32 noundef %0) #0 !dbg !428 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !429, metadata !DIExpression()), !dbg !430
  %3 = load i32, ptr %2, align 4, !dbg !431
  ret i32 0, !dbg !432
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @__printk_hook_install(ptr noundef %0) #0 !dbg !433 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = load ptr, ptr %2, align 4, !dbg !438
  store ptr %3, ptr @_char_out, align 4, !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @__printk_get_hook() #0 !dbg !441 {
  %1 = load ptr, ptr @_char_out, align 4, !dbg !444
  ret ptr %1, !dbg !445
}

; Function Attrs: noinline nounwind optnone
define hidden void @vprintk(ptr noundef %0, [1 x i32] %1) #0 !dbg !446 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca ptr, align 4
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0
  store [1 x i32] %1, ptr %5, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata ptr %3, metadata !457, metadata !DIExpression()), !dbg !458
  %6 = load ptr, ptr %4, align 4, !dbg !459
  %7 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !462
  %8 = load [1 x i32], ptr %7, align 4, !dbg !462
  call void @z_log_vprintk(ptr noundef %6, [1 x i32] %8), !dbg !462
  ret void, !dbg !463
}

declare void @z_log_vprintk(ptr noundef, [1 x i32]) #2

; Function Attrs: noinline nounwind optnone
define hidden void @z_impl_k_str_out(ptr noundef %0, i32 noundef %1) #0 !dbg !464 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !469, metadata !DIExpression()), !dbg !470
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata ptr %5, metadata !473, metadata !DIExpression()), !dbg !474
  store i32 0, ptr %5, align 4, !dbg !475
  br label %6, !dbg !477

6:                                                ; preds = %18, %2
  %7 = load i32, ptr %5, align 4, !dbg !478
  %8 = load i32, ptr %4, align 4, !dbg !480
  %9 = icmp ult i32 %7, %8, !dbg !481
  br i1 %9, label %10, label %21, !dbg !482

10:                                               ; preds = %6
  %11 = load ptr, ptr @_char_out, align 4, !dbg !483
  %12 = load ptr, ptr %3, align 4, !dbg !485
  %13 = load i32, ptr %5, align 4, !dbg !486
  %14 = getelementptr inbounds i8, ptr %12, i32 %13, !dbg !485
  %15 = load i8, ptr %14, align 1, !dbg !485
  %16 = zext i8 %15 to i32, !dbg !485
  %17 = call i32 %11(i32 noundef %16), !dbg !483
  br label %18, !dbg !487

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4, !dbg !488
  %20 = add i32 %19, 1, !dbg !488
  store i32 %20, ptr %5, align 4, !dbg !488
  br label %6, !dbg !489, !llvm.loop !490

21:                                               ; preds = %6
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone
define hidden void @printk(ptr noundef %0, ...) #0 !dbg !493 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.__va_list, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata ptr %3, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.va_start(ptr %3), !dbg !500
  %4 = load ptr, ptr %2, align 4, !dbg !501
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !502
  %6 = load [1 x i32], ptr %5, align 4, !dbg !502
  call void @vprintk(ptr noundef %4, [1 x i32] %6), !dbg !502
  call void @llvm.va_end(ptr %3), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: noinline nounwind optnone
define hidden i32 @snprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #0 !dbg !505 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !508, metadata !DIExpression()), !dbg !509
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !510, metadata !DIExpression()), !dbg !511
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata ptr %7, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata ptr %8, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.va_start(ptr %7), !dbg !518
  %9 = load ptr, ptr %4, align 4, !dbg !519
  %10 = load i32, ptr %5, align 4, !dbg !520
  %11 = load ptr, ptr %6, align 4, !dbg !521
  %12 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0, !dbg !522
  %13 = load [1 x i32], ptr %12, align 4, !dbg !522
  %14 = call i32 @vsnprintk(ptr noundef %9, i32 noundef %10, ptr noundef %11, [1 x i32] %13), !dbg !522
  store i32 %14, ptr %8, align 4, !dbg !523
  call void @llvm.va_end(ptr %7), !dbg !524
  %15 = load i32, ptr %8, align 4, !dbg !525
  ret i32 %15, !dbg !526
}

; Function Attrs: noinline nounwind optnone
define hidden i32 @vsnprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) #0 !dbg !527 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.str_context, align 4
  %10 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %10, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !530, metadata !DIExpression()), !dbg !531
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !532, metadata !DIExpression()), !dbg !533
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata ptr %5, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata ptr %9, metadata !538, metadata !DIExpression()), !dbg !544
  %11 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 0, !dbg !545
  %12 = load ptr, ptr %6, align 4, !dbg !546
  store ptr %12, ptr %11, align 4, !dbg !545
  %13 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 1, !dbg !545
  %14 = load i32, ptr %7, align 4, !dbg !547
  store i32 %14, ptr %13, align 4, !dbg !545
  %15 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !545
  store i32 0, ptr %15, align 4, !dbg !545
  %16 = load ptr, ptr %8, align 4, !dbg !548
  %17 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !549
  %18 = load [1 x i32], ptr %17, align 4, !dbg !549
  %19 = call i32 @cbvprintf(ptr noundef @str_out, ptr noundef %9, ptr noundef %16, [1 x i32] %18), !dbg !549
  %20 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !550
  %21 = load i32, ptr %20, align 4, !dbg !550
  %22 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 1, !dbg !552
  %23 = load i32, ptr %22, align 4, !dbg !552
  %24 = icmp slt i32 %21, %23, !dbg !553
  br i1 %24, label %25, label %30, !dbg !554

25:                                               ; preds = %4
  %26 = load ptr, ptr %6, align 4, !dbg !555
  %27 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !557
  %28 = load i32, ptr %27, align 4, !dbg !557
  %29 = getelementptr inbounds i8, ptr %26, i32 %28, !dbg !555
  store i8 0, ptr %29, align 1, !dbg !558
  br label %30, !dbg !559

30:                                               ; preds = %25, %4
  %31 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !560
  %32 = load i32, ptr %31, align 4, !dbg !560
  ret i32 %32, !dbg !561
}

; Function Attrs: noinline nounwind optnone
define internal i32 @cbvprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3) #0 !dbg !562 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %9, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !570, metadata !DIExpression()), !dbg !571
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !572, metadata !DIExpression()), !dbg !573
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.declare(metadata ptr %5, metadata !576, metadata !DIExpression()), !dbg !577
  %10 = load ptr, ptr %6, align 4, !dbg !578
  %11 = load ptr, ptr %7, align 4, !dbg !579
  %12 = load ptr, ptr %8, align 4, !dbg !580
  %13 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !581
  %14 = load [1 x i32], ptr %13, align 4, !dbg !581
  %15 = call i32 @z_cbvprintf_impl(ptr noundef %10, ptr noundef %11, ptr noundef %12, [1 x i32] %14, i32 noundef 0), !dbg !581
  ret i32 %15, !dbg !582
}

; Function Attrs: noinline nounwind optnone
define internal i32 @str_out(i32 noundef %0, ptr noundef %1) #0 !dbg !583 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !587, metadata !DIExpression()), !dbg !588
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !589, metadata !DIExpression()), !dbg !590
  %6 = load ptr, ptr %5, align 4, !dbg !591
  %7 = getelementptr inbounds %struct.str_context, ptr %6, i32 0, i32 0, !dbg !593
  %8 = load ptr, ptr %7, align 4, !dbg !593
  %9 = icmp eq ptr %8, null, !dbg !594
  br i1 %9, label %18, label %10, !dbg !595

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 4, !dbg !596
  %12 = getelementptr inbounds %struct.str_context, ptr %11, i32 0, i32 2, !dbg !597
  %13 = load i32, ptr %12, align 4, !dbg !597
  %14 = load ptr, ptr %5, align 4, !dbg !598
  %15 = getelementptr inbounds %struct.str_context, ptr %14, i32 0, i32 1, !dbg !599
  %16 = load i32, ptr %15, align 4, !dbg !599
  %17 = icmp sge i32 %13, %16, !dbg !600
  br i1 %17, label %18, label %24, !dbg !601

18:                                               ; preds = %10, %2
  %19 = load ptr, ptr %5, align 4, !dbg !602
  %20 = getelementptr inbounds %struct.str_context, ptr %19, i32 0, i32 2, !dbg !604
  %21 = load i32, ptr %20, align 4, !dbg !605
  %22 = add nsw i32 %21, 1, !dbg !605
  store i32 %22, ptr %20, align 4, !dbg !605
  %23 = load i32, ptr %4, align 4, !dbg !606
  store i32 %23, ptr %3, align 4, !dbg !607
  br label %55, !dbg !607

24:                                               ; preds = %10
  %25 = load ptr, ptr %5, align 4, !dbg !608
  %26 = getelementptr inbounds %struct.str_context, ptr %25, i32 0, i32 2, !dbg !610
  %27 = load i32, ptr %26, align 4, !dbg !610
  %28 = load ptr, ptr %5, align 4, !dbg !611
  %29 = getelementptr inbounds %struct.str_context, ptr %28, i32 0, i32 1, !dbg !612
  %30 = load i32, ptr %29, align 4, !dbg !612
  %31 = sub nsw i32 %30, 1, !dbg !613
  %32 = icmp eq i32 %27, %31, !dbg !614
  br i1 %32, label %33, label %42, !dbg !615

33:                                               ; preds = %24
  %34 = load ptr, ptr %5, align 4, !dbg !616
  %35 = getelementptr inbounds %struct.str_context, ptr %34, i32 0, i32 0, !dbg !618
  %36 = load ptr, ptr %35, align 4, !dbg !618
  %37 = load ptr, ptr %5, align 4, !dbg !619
  %38 = getelementptr inbounds %struct.str_context, ptr %37, i32 0, i32 2, !dbg !620
  %39 = load i32, ptr %38, align 4, !dbg !621
  %40 = add nsw i32 %39, 1, !dbg !621
  store i32 %40, ptr %38, align 4, !dbg !621
  %41 = getelementptr inbounds i8, ptr %36, i32 %39, !dbg !616
  store i8 0, ptr %41, align 1, !dbg !622
  br label %53, !dbg !623

42:                                               ; preds = %24
  %43 = load i32, ptr %4, align 4, !dbg !624
  %44 = trunc i32 %43 to i8, !dbg !624
  %45 = load ptr, ptr %5, align 4, !dbg !626
  %46 = getelementptr inbounds %struct.str_context, ptr %45, i32 0, i32 0, !dbg !627
  %47 = load ptr, ptr %46, align 4, !dbg !627
  %48 = load ptr, ptr %5, align 4, !dbg !628
  %49 = getelementptr inbounds %struct.str_context, ptr %48, i32 0, i32 2, !dbg !629
  %50 = load i32, ptr %49, align 4, !dbg !630
  %51 = add nsw i32 %50, 1, !dbg !630
  store i32 %51, ptr %49, align 4, !dbg !630
  %52 = getelementptr inbounds i8, ptr %47, i32 %50, !dbg !626
  store i8 %44, ptr %52, align 1, !dbg !631
  br label %53

53:                                               ; preds = %42, %33
  %54 = load i32, ptr %4, align 4, !dbg !632
  store i32 %54, ptr %3, align 4, !dbg !633
  br label %55, !dbg !633

55:                                               ; preds = %53, %18
  %56 = load i32, ptr %3, align 4, !dbg !634
  ret i32 %56, !dbg !634
}

declare i64 @z_timeout_expires(ptr noundef) #2

declare i64 @z_timeout_remaining(ptr noundef) #2

; Function Attrs: noinline nounwind optnone
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !635 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !640, metadata !DIExpression()), !dbg !641
  %3 = load ptr, ptr %2, align 4, !dbg !642
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3), !dbg !643
  %5 = icmp eq ptr %4, null, !dbg !644
  ret i1 %5, !dbg !645
}

; Function Attrs: noinline nounwind optnone
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !646 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !649, metadata !DIExpression()), !dbg !650
  %3 = load ptr, ptr %2, align 4, !dbg !651
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !652
  %5 = load ptr, ptr %4, align 4, !dbg !652
  ret ptr %5, !dbg !653
}

declare i32 @z_cbvprintf_impl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], i32 noundef) #2

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_char_out", scope: !2, file: !94, line: 55, type: !113, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "printk.c", directory: "/home/sri/zephyrproject/zephyr/build")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "k_objects", file: !6, line: 29, baseType: !7, size: 8, elements: !8)
!6 = !DIFile(filename: "include/zephyr/sys/kobject.h", directory: "/home/sri/zephyrproject/zephyr")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!9 = !DIEnumerator(name: "K_OBJ_ANY", value: 0)
!10 = !DIEnumerator(name: "K_OBJ_MEM_SLAB", value: 1)
!11 = !DIEnumerator(name: "K_OBJ_MSGQ", value: 2)
!12 = !DIEnumerator(name: "K_OBJ_MUTEX", value: 3)
!13 = !DIEnumerator(name: "K_OBJ_PIPE", value: 4)
!14 = !DIEnumerator(name: "K_OBJ_QUEUE", value: 5)
!15 = !DIEnumerator(name: "K_OBJ_POLL_SIGNAL", value: 6)
!16 = !DIEnumerator(name: "K_OBJ_SEM", value: 7)
!17 = !DIEnumerator(name: "K_OBJ_STACK", value: 8)
!18 = !DIEnumerator(name: "K_OBJ_THREAD", value: 9)
!19 = !DIEnumerator(name: "K_OBJ_TIMER", value: 10)
!20 = !DIEnumerator(name: "K_OBJ_THREAD_STACK_ELEMENT", value: 11)
!21 = !DIEnumerator(name: "K_OBJ_NET_SOCKET", value: 12)
!22 = !DIEnumerator(name: "K_OBJ_NET_IF", value: 13)
!23 = !DIEnumerator(name: "K_OBJ_SYS_MUTEX", value: 14)
!24 = !DIEnumerator(name: "K_OBJ_FUTEX", value: 15)
!25 = !DIEnumerator(name: "K_OBJ_CONDVAR", value: 16)
!26 = !DIEnumerator(name: "K_OBJ_DRIVER_GPIO", value: 17)
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 54)
!64 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR_PARENT", value: 55)
!65 = !DIEnumerator(name: "K_OBJ_DRIVER_REGULATOR", value: 56)
!66 = !DIEnumerator(name: "K_OBJ_DRIVER_RETAINED_MEM", value: 57)
!67 = !DIEnumerator(name: "K_OBJ_DRIVER_RTC", value: 58)
!68 = !DIEnumerator(name: "K_OBJ_DRIVER_SDHC", value: 59)
!69 = !DIEnumerator(name: "K_OBJ_DRIVER_SENSOR", value: 60)
!70 = !DIEnumerator(name: "K_OBJ_DRIVER_SMBUS", value: 61)
!71 = !DIEnumerator(name: "K_OBJ_DRIVER_SPI", value: 62)
!72 = !DIEnumerator(name: "K_OBJ_DRIVER_SYSCON", value: 63)
!73 = !DIEnumerator(name: "K_OBJ_DRIVER_W1", value: 64)
!74 = !DIEnumerator(name: "K_OBJ_DRIVER_WDT", value: 65)
!75 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN_TRANSCEIVER", value: 66)
!76 = !DIEnumerator(name: "K_OBJ_DRIVER_UART_MUX", value: 67)
!77 = !DIEnumerator(name: "K_OBJ_DRIVER_ITS", value: 68)
!78 = !DIEnumerator(name: "K_OBJ_DRIVER_TGPIO", value: 69)
!79 = !DIEnumerator(name: "K_OBJ_DRIVER_PCIE_CTRL", value: 70)
!80 = !DIEnumerator(name: "K_OBJ_DRIVER_SVC", value: 71)
!81 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12_EMUL", value: 72)
!82 = !DIEnumerator(name: "K_OBJ_DRIVER_BC12", value: 73)
!83 = !DIEnumerator(name: "K_OBJ_DRIVER_TCPC", value: 74)
!84 = !DIEnumerator(name: "K_OBJ_DRIVER_IVSHMEM", value: 75)
!85 = !DIEnumerator(name: "K_OBJ_DRIVER_EC_HOST_CMD_BACKEND_API", value: 76)
!86 = !DIEnumerator(name: "K_OBJ_DRIVER_ETHPHY", value: 77)
!87 = !DIEnumerator(name: "K_OBJ_LAST", value: 78)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !{!0, !92, !99}
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !94, line: 214, type: !95, isLocal: true, isDefinition: true)
!94 = !DIFile(filename: "lib/os/printk.c", directory: "/home/sri/zephyrproject/zephyr")
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 56, elements: !97)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!97 = !{!98}
!98 = !DISubrange(count: 7)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "printk_sym", scope: !2, file: !94, line: 214, type: !101, isLocal: true, isDefinition: true, align: 32)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llext_const_symbol", file: !103, line: 30, size: 64, elements: !104)
!103 = !DIFile(filename: "include/zephyr/llext/symbol.h", directory: "/home/sri/zephyrproject/zephyr")
!104 = !{!105, !109}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 32, baseType: !106, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !102, file: !103, line: 35, baseType: !110, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 32)
!114 = !DISubroutineType(types: !115)
!115 = !{!90, !90}
!116 = !{i32 7, !"Dwarf Version", i32 4}
!117 = !{i32 2, !"Debug Info Version", i32 3}
!118 = !{i32 1, !"wchar_size", i32 4}
!119 = !{i32 1, !"static_rwdata", i32 1}
!120 = !{i32 1, !"enumsize_buildattr", i32 1}
!121 = !{i32 1, !"armlib_unavailable", i32 0}
!122 = !{i32 8, !"PIC Level", i32 2}
!123 = !{i32 7, !"PIE Level", i32 2}
!124 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!125 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !126, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !111, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !130, line: 250, size: 896, elements: !131)
!130 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!131 = !{!132, !205, !218, !219, !220, !221, !242}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !129, file: !130, line: 252, baseType: !133, size: 384)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !130, line: 58, size: 384, elements: !134)
!134 = !{!135, !163, !171, !174, !175, !188, !191, !192}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !130, line: 61, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !130, line: 61, size: 64, elements: !137)
!137 = !{!138, !154}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !136, file: !130, line: 62, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !140, line: 55, baseType: !141)
!140 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !140, line: 37, size: 64, elements: !142)
!142 = !{!143, !149}
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 38, baseType: !144, size: 32)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 38, size: 32, elements: !145)
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !144, file: !140, line: 39, baseType: !147, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !144, file: !140, line: 40, baseType: !147, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !141, file: !140, line: 42, baseType: !150, size: 32, offset: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !141, file: !140, line: 42, size: 32, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !150, file: !140, line: 43, baseType: !147, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !140, line: 44, baseType: !147, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !136, file: !130, line: 63, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !156, line: 58, size: 64, elements: !157)
!156 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !155, file: !156, line: 60, baseType: !159, size: 64)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !161)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 32)
!161 = !{!162}
!162 = !DISubrange(count: 2)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !133, file: !130, line: 69, baseType: !164, size: 32, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !166, line: 243, baseType: !167)
!166 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !166, line: 241, size: 64, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !167, file: !166, line: 242, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !140, line: 51, baseType: !141)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !133, file: !130, line: 72, baseType: !172, size: 8, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !173, line: 62, baseType: !7)
!173 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !133, file: !130, line: 75, baseType: !172, size: 8, offset: 104)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !130, line: 91, baseType: !176, size: 16, offset: 112)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !130, line: 91, size: 16, elements: !177)
!177 = !{!178, !185}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !130, line: 92, baseType: !179, size: 16)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !130, line: 92, size: 16, elements: !180)
!180 = !{!181, !184}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !179, file: !130, line: 97, baseType: !182, size: 8)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !173, line: 56, baseType: !183)
!183 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !179, file: !130, line: 98, baseType: !172, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !176, file: !130, line: 101, baseType: !186, size: 16)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !173, line: 63, baseType: !187)
!187 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !133, file: !130, line: 108, baseType: !189, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !173, line: 64, baseType: !190)
!190 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !133, file: !130, line: 132, baseType: !89, size: 32, offset: 160)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !133, file: !130, line: 136, baseType: !193, size: 192, offset: 192)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !166, line: 254, size: 192, elements: !194)
!194 = !{!195, !196, !202}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !193, file: !166, line: 255, baseType: !139, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !193, file: !166, line: 256, baseType: !197, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !166, line: 252, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 32)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !193, file: !166, line: 259, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !173, line: 59, baseType: !204)
!204 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !129, file: !130, line: 255, baseType: !206, size: 288, offset: 384)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !207, line: 25, size: 288, elements: !208)
!207 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !206, file: !207, line: 26, baseType: !189, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !206, file: !207, line: 27, baseType: !189, size: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !206, file: !207, line: 28, baseType: !189, size: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !206, file: !207, line: 29, baseType: !189, size: 32, offset: 96)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !206, file: !207, line: 30, baseType: !189, size: 32, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !206, file: !207, line: 31, baseType: !189, size: 32, offset: 160)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !206, file: !207, line: 32, baseType: !189, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !206, file: !207, line: 33, baseType: !189, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !206, file: !207, line: 34, baseType: !189, size: 32, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !129, file: !130, line: 258, baseType: !89, size: 32, offset: 672)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !129, file: !130, line: 261, baseType: !165, size: 64, offset: 704)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !129, file: !130, line: 302, baseType: !90, size: 32, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !129, file: !130, line: 333, baseType: !222, size: 32, offset: 800)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !224, line: 5291, size: 160, elements: !225)
!224 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!225 = !{!226, !237, !238}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !223, file: !224, line: 5292, baseType: !227, size: 96)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !228, line: 56, size: 96, elements: !229)
!228 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!229 = !{!230, !233, !234}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !227, file: !228, line: 57, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 32)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !228, line: 57, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !227, file: !228, line: 58, baseType: !89, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !227, file: !228, line: 59, baseType: !235, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !236, line: 46, baseType: !190)
!236 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!237 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !223, file: !224, line: 5293, baseType: !165, size: 64, offset: 96)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !223, file: !224, line: 5294, baseType: !239, offset: 160)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !240, line: 45, elements: !241)
!240 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!241 = !{}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !129, file: !130, line: 355, baseType: !243, size: 64, offset: 832)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !207, line: 60, size: 64, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !243, file: !207, line: 63, baseType: !189, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !243, file: !207, line: 66, baseType: !189, size: 32, offset: 32)
!247 = !DILocalVariable(name: "object", arg: 1, scope: !125, file: !6, line: 223, type: !111)
!248 = !DILocation(line: 223, column: 61, scope: !125)
!249 = !DILocalVariable(name: "thread", arg: 2, scope: !125, file: !6, line: 224, type: !128)
!250 = !DILocation(line: 224, column: 24, scope: !125)
!251 = !DILocation(line: 226, column: 9, scope: !125)
!252 = !DILocation(line: 227, column: 9, scope: !125)
!253 = !DILocation(line: 228, column: 1, scope: !125)
!254 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !255, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !111}
!257 = !DILocalVariable(name: "object", arg: 1, scope: !254, file: !6, line: 243, type: !111)
!258 = !DILocation(line: 243, column: 56, scope: !254)
!259 = !DILocation(line: 245, column: 9, scope: !254)
!260 = !DILocation(line: 246, column: 1, scope: !254)
!261 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !262, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!262 = !DISubroutineType(types: !263)
!263 = !{!89, !5}
!264 = !DILocalVariable(name: "otype", arg: 1, scope: !261, file: !6, line: 359, type: !5)
!265 = !DILocation(line: 359, column: 58, scope: !261)
!266 = !DILocation(line: 361, column: 9, scope: !261)
!267 = !DILocation(line: 363, column: 2, scope: !261)
!268 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !269, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!269 = !DISubroutineType(types: !270)
!270 = !{!89, !5, !235}
!271 = !DILocalVariable(name: "otype", arg: 1, scope: !268, file: !6, line: 366, type: !5)
!272 = !DILocation(line: 366, column: 63, scope: !268)
!273 = !DILocalVariable(name: "size", arg: 2, scope: !268, file: !6, line: 367, type: !235)
!274 = !DILocation(line: 367, column: 13, scope: !268)
!275 = !DILocation(line: 369, column: 9, scope: !268)
!276 = !DILocation(line: 370, column: 9, scope: !268)
!277 = !DILocation(line: 372, column: 2, scope: !268)
!278 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !224, file: !224, line: 656, type: !279, scopeLine: 658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !283}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !282, line: 46, baseType: !203)
!282 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!285 = !DILocalVariable(name: "t", arg: 1, scope: !278, file: !224, line: 657, type: !283)
!286 = !DILocation(line: 657, column: 30, scope: !278)
!287 = !DILocation(line: 659, column: 28, scope: !278)
!288 = !DILocation(line: 659, column: 31, scope: !278)
!289 = !DILocation(line: 659, column: 36, scope: !278)
!290 = !DILocation(line: 659, column: 9, scope: !278)
!291 = !DILocation(line: 659, column: 2, scope: !278)
!292 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !224, file: !224, line: 671, type: !279, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!293 = !DILocalVariable(name: "t", arg: 1, scope: !292, file: !224, line: 672, type: !283)
!294 = !DILocation(line: 672, column: 30, scope: !292)
!295 = !DILocation(line: 674, column: 30, scope: !292)
!296 = !DILocation(line: 674, column: 33, scope: !292)
!297 = !DILocation(line: 674, column: 38, scope: !292)
!298 = !DILocation(line: 674, column: 9, scope: !292)
!299 = !DILocation(line: 674, column: 2, scope: !292)
!300 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !224, file: !224, line: 1634, type: !301, scopeLine: 1636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!301 = !DISubroutineType(types: !302)
!302 = !{!281, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !224, line: 1439, size: 448, elements: !306)
!306 = !{!307, !308, !309, !314, !315, !320, !321}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !305, file: !224, line: 1445, baseType: !193, size: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !305, file: !224, line: 1448, baseType: !165, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !305, file: !224, line: 1451, baseType: !310, size: 32, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 32)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !305, file: !224, line: 1454, baseType: !310, size: 32, offset: 288)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !305, file: !224, line: 1457, baseType: !316, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !282, line: 67, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !282, line: 65, size: 64, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !317, file: !282, line: 66, baseType: !281, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !305, file: !224, line: 1460, baseType: !189, size: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !305, file: !224, line: 1463, baseType: !89, size: 32, offset: 416)
!322 = !DILocalVariable(name: "timer", arg: 1, scope: !300, file: !224, line: 1635, type: !303)
!323 = !DILocation(line: 1635, column: 34, scope: !300)
!324 = !DILocation(line: 1637, column: 28, scope: !300)
!325 = !DILocation(line: 1637, column: 35, scope: !300)
!326 = !DILocation(line: 1637, column: 9, scope: !300)
!327 = !DILocation(line: 1637, column: 2, scope: !300)
!328 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !224, file: !224, line: 1649, type: !301, scopeLine: 1651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!329 = !DILocalVariable(name: "timer", arg: 1, scope: !328, file: !224, line: 1650, type: !303)
!330 = !DILocation(line: 1650, column: 34, scope: !328)
!331 = !DILocation(line: 1652, column: 30, scope: !328)
!332 = !DILocation(line: 1652, column: 37, scope: !328)
!333 = !DILocation(line: 1652, column: 9, scope: !328)
!334 = !DILocation(line: 1652, column: 2, scope: !328)
!335 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !224, file: !224, line: 1689, type: !336, scopeLine: 1691, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !313, !89}
!338 = !DILocalVariable(name: "timer", arg: 1, scope: !335, file: !224, line: 1689, type: !313)
!339 = !DILocation(line: 1689, column: 65, scope: !335)
!340 = !DILocalVariable(name: "user_data", arg: 2, scope: !335, file: !224, line: 1690, type: !89)
!341 = !DILocation(line: 1690, column: 19, scope: !335)
!342 = !DILocation(line: 1692, column: 21, scope: !335)
!343 = !DILocation(line: 1692, column: 2, scope: !335)
!344 = !DILocation(line: 1692, column: 9, scope: !335)
!345 = !DILocation(line: 1692, column: 19, scope: !335)
!346 = !DILocation(line: 1693, column: 1, scope: !335)
!347 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !224, file: !224, line: 1704, type: !348, scopeLine: 1705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!348 = !DISubroutineType(types: !349)
!349 = !{!89, !303}
!350 = !DILocalVariable(name: "timer", arg: 1, scope: !347, file: !224, line: 1704, type: !303)
!351 = !DILocation(line: 1704, column: 72, scope: !347)
!352 = !DILocation(line: 1706, column: 9, scope: !347)
!353 = !DILocation(line: 1706, column: 16, scope: !347)
!354 = !DILocation(line: 1706, column: 2, scope: !347)
!355 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !224, file: !224, line: 2071, type: !356, scopeLine: 2072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!356 = !DISubroutineType(types: !357)
!357 = !{!90, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !224, line: 1830, size: 128, elements: !360)
!360 = !{!361, !374, !375}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !359, file: !224, line: 1831, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !363, line: 60, baseType: !364)
!363 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !363, line: 53, size: 64, elements: !365)
!365 = !{!366, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !364, file: !363, line: 54, baseType: !367, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !363, line: 50, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !363, line: 44, size: 32, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !369, file: !363, line: 45, baseType: !372, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !363, line: 40, baseType: !189)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !364, file: !363, line: 55, baseType: !367, size: 32, offset: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !359, file: !224, line: 1832, baseType: !239, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !359, file: !224, line: 1833, baseType: !165, size: 64, offset: 64)
!376 = !DILocalVariable(name: "queue", arg: 1, scope: !355, file: !224, line: 2071, type: !358)
!377 = !DILocation(line: 2071, column: 59, scope: !355)
!378 = !DILocation(line: 2073, column: 35, scope: !355)
!379 = !DILocation(line: 2073, column: 42, scope: !355)
!380 = !DILocation(line: 2073, column: 14, scope: !355)
!381 = !DILocation(line: 2073, column: 9, scope: !355)
!382 = !DILocation(line: 2073, column: 2, scope: !355)
!383 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !224, file: !224, line: 3209, type: !384, scopeLine: 3210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!384 = !DISubroutineType(types: !385)
!385 = !{!190, !386}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 32)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !224, line: 3092, size: 128, elements: !388)
!388 = !{!389, !390, !391}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !387, file: !224, line: 3093, baseType: !165, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !387, file: !224, line: 3094, baseType: !190, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !387, file: !224, line: 3095, baseType: !190, size: 32, offset: 96)
!392 = !DILocalVariable(name: "sem", arg: 1, scope: !383, file: !224, line: 3209, type: !386)
!393 = !DILocation(line: 3209, column: 65, scope: !383)
!394 = !DILocation(line: 3211, column: 9, scope: !383)
!395 = !DILocation(line: 3211, column: 14, scope: !383)
!396 = !DILocation(line: 3211, column: 2, scope: !383)
!397 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !224, file: !224, line: 4649, type: !398, scopeLine: 4650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!398 = !DISubroutineType(types: !399)
!399 = !{!189, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 32)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !224, line: 4390, size: 320, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !409, !410, !411, !412, !413}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !401, file: !224, line: 4392, baseType: !165, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !401, file: !224, line: 4394, baseType: !239, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !401, file: !224, line: 4396, baseType: !235, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !401, file: !224, line: 4398, baseType: !189, size: 32, offset: 96)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !401, file: !224, line: 4400, baseType: !408, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !401, file: !224, line: 4402, baseType: !408, size: 32, offset: 160)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !401, file: !224, line: 4404, baseType: !408, size: 32, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !401, file: !224, line: 4406, baseType: !408, size: 32, offset: 224)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !401, file: !224, line: 4408, baseType: !189, size: 32, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !224, line: 4413, baseType: !172, size: 8, offset: 288)
!414 = !DILocalVariable(name: "msgq", arg: 1, scope: !397, file: !224, line: 4649, type: !400)
!415 = !DILocation(line: 4649, column: 66, scope: !397)
!416 = !DILocation(line: 4651, column: 9, scope: !397)
!417 = !DILocation(line: 4651, column: 15, scope: !397)
!418 = !DILocation(line: 4651, column: 26, scope: !397)
!419 = !DILocation(line: 4651, column: 32, scope: !397)
!420 = !DILocation(line: 4651, column: 24, scope: !397)
!421 = !DILocation(line: 4651, column: 2, scope: !397)
!422 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !224, file: !224, line: 4665, type: !398, scopeLine: 4666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!423 = !DILocalVariable(name: "msgq", arg: 1, scope: !422, file: !224, line: 4665, type: !400)
!424 = !DILocation(line: 4665, column: 66, scope: !422)
!425 = !DILocation(line: 4667, column: 9, scope: !422)
!426 = !DILocation(line: 4667, column: 15, scope: !422)
!427 = !DILocation(line: 4667, column: 2, scope: !422)
!428 = distinct !DISubprogram(name: "arch_printk_char_out", scope: !94, file: !94, line: 46, type: !114, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!429 = !DILocalVariable(name: "c", arg: 1, scope: !428, file: !94, line: 46, type: !90)
!430 = !DILocation(line: 46, column: 52, scope: !428)
!431 = !DILocation(line: 48, column: 9, scope: !428)
!432 = !DILocation(line: 51, column: 2, scope: !428)
!433 = distinct !DISubprogram(name: "__printk_hook_install", scope: !94, file: !94, line: 64, type: !434, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !113}
!436 = !DILocalVariable(name: "fn", arg: 1, scope: !433, file: !94, line: 64, type: !113)
!437 = !DILocation(line: 64, column: 34, scope: !433)
!438 = !DILocation(line: 66, column: 14, scope: !433)
!439 = !DILocation(line: 66, column: 12, scope: !433)
!440 = !DILocation(line: 67, column: 1, scope: !433)
!441 = distinct !DISubprogram(name: "__printk_get_hook", scope: !94, file: !94, line: 77, type: !442, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!442 = !DISubroutineType(types: !443)
!443 = !{!89}
!444 = !DILocation(line: 79, column: 9, scope: !441)
!445 = !DILocation(line: 79, column: 2, scope: !441)
!446 = distinct !DISubprogram(name: "vprintk", scope: !94, file: !94, line: 114, type: !447, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !107, !449}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !450, line: 22, baseType: !451)
!450 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !452, file: !3, line: 80, baseType: !89, size: 32)
!455 = !DILocalVariable(name: "fmt", arg: 1, scope: !446, file: !94, line: 114, type: !107)
!456 = !DILocation(line: 114, column: 26, scope: !446)
!457 = !DILocalVariable(name: "ap", arg: 2, scope: !446, file: !94, line: 114, type: !449)
!458 = !DILocation(line: 114, column: 39, scope: !446)
!459 = !DILocation(line: 117, column: 17, scope: !460)
!460 = distinct !DILexicalBlock(scope: !461, file: !94, line: 116, column: 9)
!461 = distinct !DILexicalBlock(scope: !446, file: !94, line: 116, column: 6)
!462 = !DILocation(line: 117, column: 3, scope: !460)
!463 = !DILocation(line: 118, column: 3, scope: !460)
!464 = distinct !DISubprogram(name: "z_impl_k_str_out", scope: !94, file: !94, line: 158, type: !465, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !408, !467}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !468, line: 51, baseType: !190)
!468 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!469 = !DILocalVariable(name: "c", arg: 1, scope: !464, file: !94, line: 158, type: !408)
!470 = !DILocation(line: 158, column: 29, scope: !464)
!471 = !DILocalVariable(name: "n", arg: 2, scope: !464, file: !94, line: 158, type: !467)
!472 = !DILocation(line: 158, column: 39, scope: !464)
!473 = !DILocalVariable(name: "i", scope: !464, file: !94, line: 160, type: !467)
!474 = !DILocation(line: 160, column: 9, scope: !464)
!475 = !DILocation(line: 165, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !464, file: !94, line: 165, column: 2)
!477 = !DILocation(line: 165, column: 7, scope: !476)
!478 = !DILocation(line: 165, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !94, line: 165, column: 2)
!480 = !DILocation(line: 165, column: 18, scope: !479)
!481 = !DILocation(line: 165, column: 16, scope: !479)
!482 = !DILocation(line: 165, column: 2, scope: !476)
!483 = !DILocation(line: 166, column: 3, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !94, line: 165, column: 26)
!485 = !DILocation(line: 166, column: 13, scope: !484)
!486 = !DILocation(line: 166, column: 15, scope: !484)
!487 = !DILocation(line: 167, column: 2, scope: !484)
!488 = !DILocation(line: 165, column: 22, scope: !479)
!489 = !DILocation(line: 165, column: 2, scope: !479)
!490 = distinct !{!490, !482, !491}
!491 = !DILocation(line: 167, column: 2, scope: !476)
!492 = !DILocation(line: 172, column: 1, scope: !464)
!493 = distinct !DISubprogram(name: "printk", scope: !94, file: !94, line: 204, type: !494, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !107, null}
!496 = !DILocalVariable(name: "fmt", arg: 1, scope: !493, file: !94, line: 204, type: !107)
!497 = !DILocation(line: 204, column: 25, scope: !493)
!498 = !DILocalVariable(name: "ap", scope: !493, file: !94, line: 206, type: !449)
!499 = !DILocation(line: 206, column: 10, scope: !493)
!500 = !DILocation(line: 208, column: 2, scope: !493)
!501 = !DILocation(line: 210, column: 10, scope: !493)
!502 = !DILocation(line: 210, column: 2, scope: !493)
!503 = !DILocation(line: 212, column: 2, scope: !493)
!504 = !DILocation(line: 213, column: 1, scope: !493)
!505 = distinct !DISubprogram(name: "snprintk", scope: !94, file: !94, line: 241, type: !506, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!506 = !DISubroutineType(types: !507)
!507 = !{!90, !408, !467, !107, null}
!508 = !DILocalVariable(name: "str", arg: 1, scope: !505, file: !94, line: 241, type: !408)
!509 = !DILocation(line: 241, column: 20, scope: !505)
!510 = !DILocalVariable(name: "size", arg: 2, scope: !505, file: !94, line: 241, type: !467)
!511 = !DILocation(line: 241, column: 32, scope: !505)
!512 = !DILocalVariable(name: "fmt", arg: 3, scope: !505, file: !94, line: 241, type: !107)
!513 = !DILocation(line: 241, column: 50, scope: !505)
!514 = !DILocalVariable(name: "ap", scope: !505, file: !94, line: 243, type: !449)
!515 = !DILocation(line: 243, column: 10, scope: !505)
!516 = !DILocalVariable(name: "ret", scope: !505, file: !94, line: 244, type: !90)
!517 = !DILocation(line: 244, column: 6, scope: !505)
!518 = !DILocation(line: 246, column: 2, scope: !505)
!519 = !DILocation(line: 247, column: 18, scope: !505)
!520 = !DILocation(line: 247, column: 23, scope: !505)
!521 = !DILocation(line: 247, column: 29, scope: !505)
!522 = !DILocation(line: 247, column: 8, scope: !505)
!523 = !DILocation(line: 247, column: 6, scope: !505)
!524 = !DILocation(line: 248, column: 2, scope: !505)
!525 = !DILocation(line: 250, column: 9, scope: !505)
!526 = !DILocation(line: 250, column: 2, scope: !505)
!527 = distinct !DISubprogram(name: "vsnprintk", scope: !94, file: !94, line: 253, type: !528, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !241)
!528 = !DISubroutineType(types: !529)
!529 = !{!90, !408, !467, !107, !449}
!530 = !DILocalVariable(name: "str", arg: 1, scope: !527, file: !94, line: 253, type: !408)
!531 = !DILocation(line: 253, column: 21, scope: !527)
!532 = !DILocalVariable(name: "size", arg: 2, scope: !527, file: !94, line: 253, type: !467)
!533 = !DILocation(line: 253, column: 33, scope: !527)
!534 = !DILocalVariable(name: "fmt", arg: 3, scope: !527, file: !94, line: 253, type: !107)
!535 = !DILocation(line: 253, column: 51, scope: !527)
!536 = !DILocalVariable(name: "ap", arg: 4, scope: !527, file: !94, line: 253, type: !449)
!537 = !DILocation(line: 253, column: 64, scope: !527)
!538 = !DILocalVariable(name: "ctx", scope: !527, file: !94, line: 255, type: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "str_context", file: !94, line: 219, size: 96, elements: !540)
!540 = !{!541, !542, !543}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !539, file: !94, line: 220, baseType: !408, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !539, file: !94, line: 221, baseType: !90, size: 32, offset: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !539, file: !94, line: 222, baseType: !90, size: 32, offset: 64)
!544 = !DILocation(line: 255, column: 21, scope: !527)
!545 = !DILocation(line: 255, column: 27, scope: !527)
!546 = !DILocation(line: 255, column: 29, scope: !527)
!547 = !DILocation(line: 255, column: 34, scope: !527)
!548 = !DILocation(line: 257, column: 27, scope: !527)
!549 = !DILocation(line: 257, column: 2, scope: !527)
!550 = !DILocation(line: 259, column: 10, scope: !551)
!551 = distinct !DILexicalBlock(scope: !527, file: !94, line: 259, column: 6)
!552 = !DILocation(line: 259, column: 22, scope: !551)
!553 = !DILocation(line: 259, column: 16, scope: !551)
!554 = !DILocation(line: 259, column: 6, scope: !527)
!555 = !DILocation(line: 260, column: 3, scope: !556)
!556 = distinct !DILexicalBlock(scope: !551, file: !94, line: 259, column: 27)
!557 = !DILocation(line: 260, column: 11, scope: !556)
!558 = !DILocation(line: 260, column: 18, scope: !556)
!559 = !DILocation(line: 261, column: 2, scope: !556)
!560 = !DILocation(line: 263, column: 13, scope: !527)
!561 = !DILocation(line: 263, column: 2, scope: !527)
!562 = distinct !DISubprogram(name: "cbvprintf", scope: !563, file: !563, line: 744, type: !564, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!563 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!564 = !DISubroutineType(types: !565)
!565 = !{!90, !566, !89, !107, !449}
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !563, line: 302, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 32)
!568 = !DISubroutineType(types: !569)
!569 = !{!90, null}
!570 = !DILocalVariable(name: "out", arg: 1, scope: !562, file: !563, line: 744, type: !566)
!571 = !DILocation(line: 744, column: 27, scope: !562)
!572 = !DILocalVariable(name: "ctx", arg: 2, scope: !562, file: !563, line: 744, type: !89)
!573 = !DILocation(line: 744, column: 38, scope: !562)
!574 = !DILocalVariable(name: "format", arg: 3, scope: !562, file: !563, line: 744, type: !107)
!575 = !DILocation(line: 744, column: 55, scope: !562)
!576 = !DILocalVariable(name: "ap", arg: 4, scope: !562, file: !563, line: 744, type: !449)
!577 = !DILocation(line: 744, column: 71, scope: !562)
!578 = !DILocation(line: 746, column: 26, scope: !562)
!579 = !DILocation(line: 746, column: 31, scope: !562)
!580 = !DILocation(line: 746, column: 36, scope: !562)
!581 = !DILocation(line: 746, column: 9, scope: !562)
!582 = !DILocation(line: 746, column: 2, scope: !562)
!583 = distinct !DISubprogram(name: "str_out", scope: !94, file: !94, line: 225, type: !584, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!584 = !DISubroutineType(types: !585)
!585 = !{!90, !90, !586}
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 32)
!587 = !DILocalVariable(name: "c", arg: 1, scope: !583, file: !94, line: 225, type: !90)
!588 = !DILocation(line: 225, column: 24, scope: !583)
!589 = !DILocalVariable(name: "ctx", arg: 2, scope: !583, file: !94, line: 225, type: !586)
!590 = !DILocation(line: 225, column: 47, scope: !583)
!591 = !DILocation(line: 227, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !583, file: !94, line: 227, column: 6)
!593 = !DILocation(line: 227, column: 11, scope: !592)
!594 = !DILocation(line: 227, column: 15, scope: !592)
!595 = !DILocation(line: 227, column: 20, scope: !592)
!596 = !DILocation(line: 227, column: 23, scope: !592)
!597 = !DILocation(line: 227, column: 28, scope: !592)
!598 = !DILocation(line: 227, column: 37, scope: !592)
!599 = !DILocation(line: 227, column: 42, scope: !592)
!600 = !DILocation(line: 227, column: 34, scope: !592)
!601 = !DILocation(line: 227, column: 6, scope: !583)
!602 = !DILocation(line: 228, column: 3, scope: !603)
!603 = distinct !DILexicalBlock(scope: !592, file: !94, line: 227, column: 47)
!604 = !DILocation(line: 228, column: 8, scope: !603)
!605 = !DILocation(line: 228, column: 13, scope: !603)
!606 = !DILocation(line: 229, column: 10, scope: !603)
!607 = !DILocation(line: 229, column: 3, scope: !603)
!608 = !DILocation(line: 232, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !583, file: !94, line: 232, column: 6)
!610 = !DILocation(line: 232, column: 11, scope: !609)
!611 = !DILocation(line: 232, column: 20, scope: !609)
!612 = !DILocation(line: 232, column: 25, scope: !609)
!613 = !DILocation(line: 232, column: 29, scope: !609)
!614 = !DILocation(line: 232, column: 17, scope: !609)
!615 = !DILocation(line: 232, column: 6, scope: !583)
!616 = !DILocation(line: 233, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !94, line: 232, column: 34)
!618 = !DILocation(line: 233, column: 8, scope: !617)
!619 = !DILocation(line: 233, column: 12, scope: !617)
!620 = !DILocation(line: 233, column: 17, scope: !617)
!621 = !DILocation(line: 233, column: 22, scope: !617)
!622 = !DILocation(line: 233, column: 26, scope: !617)
!623 = !DILocation(line: 234, column: 2, scope: !617)
!624 = !DILocation(line: 235, column: 28, scope: !625)
!625 = distinct !DILexicalBlock(scope: !609, file: !94, line: 234, column: 9)
!626 = !DILocation(line: 235, column: 3, scope: !625)
!627 = !DILocation(line: 235, column: 8, scope: !625)
!628 = !DILocation(line: 235, column: 12, scope: !625)
!629 = !DILocation(line: 235, column: 17, scope: !625)
!630 = !DILocation(line: 235, column: 22, scope: !625)
!631 = !DILocation(line: 235, column: 26, scope: !625)
!632 = !DILocation(line: 238, column: 9, scope: !583)
!633 = !DILocation(line: 238, column: 2, scope: !583)
!634 = !DILocation(line: 239, column: 1, scope: !583)
!635 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !363, file: !363, line: 335, type: !636, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!636 = !DISubroutineType(types: !637)
!637 = !{!638, !639}
!638 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 32)
!640 = !DILocalVariable(name: "list", arg: 1, scope: !635, file: !363, line: 335, type: !639)
!641 = !DILocation(line: 335, column: 55, scope: !635)
!642 = !DILocation(line: 335, column: 92, scope: !635)
!643 = !DILocation(line: 335, column: 71, scope: !635)
!644 = !DILocation(line: 335, column: 98, scope: !635)
!645 = !DILocation(line: 335, column: 63, scope: !635)
!646 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !363, file: !363, line: 255, type: !647, scopeLine: 256, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !241)
!647 = !DISubroutineType(types: !648)
!648 = !{!367, !639}
!649 = !DILocalVariable(name: "list", arg: 1, scope: !646, file: !363, line: 255, type: !639)
!650 = !DILocation(line: 255, column: 64, scope: !646)
!651 = !DILocation(line: 257, column: 9, scope: !646)
!652 = !DILocation(line: 257, column: 15, scope: !646)
!653 = !DILocation(line: 257, column: 2, scope: !646)
