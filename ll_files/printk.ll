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
%struct.buf_out_context = type { i32, [0 x i8] }
%struct.str_context = type { ptr, i32, i32 }

@_char_out = hidden global ptr @arch_printk_char_out, align 4, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"printk\00", align 1, !dbg !92
@printk_sym = internal constant %struct.llext_const_symbol { ptr @.str, ptr @printk }, section "._llext_const_symbol.static.printk_sym_", align 4, !dbg !99
@llvm.used = appending global [1 x ptr] [ptr @printk_sym], section "llvm.metadata"

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_access_grant(ptr noundef %0, ptr noundef %1) #0 !dbg !123 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !248
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !247, metadata !DIExpression()), !dbg !249
  %5 = load ptr, ptr %3, align 4, !dbg !250
  %6 = load ptr, ptr %4, align 4, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_object_release(ptr noundef %0) #0 !dbg !253 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load ptr, ptr %2, align 4, !dbg !259
  ret void, !dbg !260
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc(i8 noundef zeroext %0) #0 !dbg !261 {
  %2 = alloca i8, align 1
  store i8 %0, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !265, metadata !DIExpression()), !dbg !266
  %3 = load i8, ptr %2, align 1, !dbg !267
  ret ptr null, !dbg !268
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_object_alloc_size(i8 noundef zeroext %0, i32 noundef %1) #0 !dbg !269 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !273, metadata !DIExpression()), !dbg !275
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !274, metadata !DIExpression()), !dbg !276
  %5 = load i8, ptr %3, align 1, !dbg !277
  %6 = load i32, ptr %4, align 4, !dbg !278
  ret ptr null, !dbg !279
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_expires_ticks(ptr noundef %0) #0 !dbg !280 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !288, metadata !DIExpression()), !dbg !289
  %3 = load ptr, ptr %2, align 4, !dbg !290
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !291
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !292
  %6 = call i64 @z_timeout_expires(ptr noundef %5) #7, !dbg !293
  ret i64 %6, !dbg !294
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_thread_timeout_remaining_ticks(ptr noundef %0) #0 !dbg !295 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !297, metadata !DIExpression()), !dbg !298
  %3 = load ptr, ptr %2, align 4, !dbg !299
  %4 = getelementptr inbounds %struct.k_thread, ptr %3, i32 0, i32 0, !dbg !300
  %5 = getelementptr inbounds %struct._thread_base, ptr %4, i32 0, i32 7, !dbg !301
  %6 = call i64 @z_timeout_remaining(ptr noundef %5) #7, !dbg !302
  ret i64 %6, !dbg !303
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_expires_ticks(ptr noundef %0) #0 !dbg !304 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load ptr, ptr %2, align 4, !dbg !329
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !330
  %5 = call i64 @z_timeout_expires(ptr noundef %4) #7, !dbg !331
  ret i64 %5, !dbg !332
}

; Function Attrs: inlinehint nounwind optsize
define internal i64 @z_impl_k_timer_remaining_ticks(ptr noundef %0) #0 !dbg !333 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !335, metadata !DIExpression()), !dbg !336
  %3 = load ptr, ptr %2, align 4, !dbg !337
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 0, !dbg !338
  %5 = call i64 @z_timeout_remaining(ptr noundef %4) #7, !dbg !339
  ret i64 %5, !dbg !340
}

; Function Attrs: inlinehint nounwind optsize
define internal void @z_impl_k_timer_user_data_set(ptr noundef %0, ptr noundef %1) #0 !dbg !341 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !345, metadata !DIExpression()), !dbg !347
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !346, metadata !DIExpression()), !dbg !348
  %5 = load ptr, ptr %4, align 4, !dbg !349
  %6 = load ptr, ptr %3, align 4, !dbg !350
  %7 = getelementptr inbounds %struct.k_timer, ptr %6, i32 0, i32 6, !dbg !351
  store ptr %5, ptr %7, align 4, !dbg !352
  ret void, !dbg !353
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @z_impl_k_timer_user_data_get(ptr noundef %0) #0 !dbg !354 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !358, metadata !DIExpression()), !dbg !359
  %3 = load ptr, ptr %2, align 4, !dbg !360
  %4 = getelementptr inbounds %struct.k_timer, ptr %3, i32 0, i32 6, !dbg !361
  %5 = load ptr, ptr %4, align 4, !dbg !361
  ret ptr %5, !dbg !362
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_queue_is_empty(ptr noundef %0) #0 !dbg !363 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !385, metadata !DIExpression()), !dbg !386
  %3 = load ptr, ptr %2, align 4, !dbg !387
  %4 = getelementptr inbounds %struct.k_queue, ptr %3, i32 0, i32 0, !dbg !388
  %5 = call zeroext i1 @sys_sflist_is_empty(ptr noundef %4) #7, !dbg !389
  %6 = zext i1 %5 to i32, !dbg !390
  ret i32 %6, !dbg !391
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_sem_count_get(ptr noundef %0) #0 !dbg !392 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !402, metadata !DIExpression()), !dbg !403
  %3 = load ptr, ptr %2, align 4, !dbg !404
  %4 = getelementptr inbounds %struct.k_sem, ptr %3, i32 0, i32 1, !dbg !405
  %5 = load i32, ptr %4, align 4, !dbg !405
  ret i32 %5, !dbg !406
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_free_get(ptr noundef %0) #0 !dbg !407 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !425, metadata !DIExpression()), !dbg !426
  %3 = load ptr, ptr %2, align 4, !dbg !427
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 3, !dbg !428
  %5 = load i32, ptr %4, align 4, !dbg !428
  %6 = load ptr, ptr %2, align 4, !dbg !429
  %7 = getelementptr inbounds %struct.k_msgq, ptr %6, i32 0, i32 8, !dbg !430
  %8 = load i32, ptr %7, align 4, !dbg !430
  %9 = sub i32 %5, %8, !dbg !431
  ret i32 %9, !dbg !432
}

; Function Attrs: inlinehint nounwind optsize
define internal i32 @z_impl_k_msgq_num_used_get(ptr noundef %0) #0 !dbg !433 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !435, metadata !DIExpression()), !dbg !436
  %3 = load ptr, ptr %2, align 4, !dbg !437
  %4 = getelementptr inbounds %struct.k_msgq, ptr %3, i32 0, i32 8, !dbg !438
  %5 = load i32, ptr %4, align 4, !dbg !438
  ret i32 %5, !dbg !439
}

; Function Attrs: nounwind optsize
define weak hidden i32 @arch_printk_char_out(i32 noundef %0) #1 !dbg !440 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !442, metadata !DIExpression()), !dbg !443
  %3 = load i32, ptr %2, align 4, !dbg !444
  ret i32 0, !dbg !445
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind optsize
define hidden void @__printk_hook_install(ptr noundef %0) #1 !dbg !446 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !450, metadata !DIExpression()), !dbg !451
  %3 = load ptr, ptr %2, align 4, !dbg !452
  store ptr %3, ptr @_char_out, align 4, !dbg !453
  ret void, !dbg !454
}

; Function Attrs: nounwind optsize
define hidden ptr @__printk_get_hook() #1 !dbg !455 {
  %1 = load ptr, ptr @_char_out, align 4, !dbg !458
  ret ptr %1, !dbg !459
}

; Function Attrs: nounwind optsize
define hidden void @vprintk(ptr noundef %0, [1 x i32] %1) #1 !dbg !460 {
  %3 = alloca %struct.__va_list, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.buf_out_context, align 4
  %6 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0
  store [1 x i32] %1, ptr %6, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !471, metadata !DIExpression()), !dbg !483
  %7 = call zeroext i1 @k_is_user_context() #7, !dbg !484
  br i1 %7, label %8, label %18, !dbg !485

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %5, metadata !472, metadata !DIExpression()), !dbg !487
  call void @llvm.memset.p0.i32(ptr align 4 %5, i8 0, i32 4, i1 false), !dbg !487
  %9 = load ptr, ptr %4, align 4, !dbg !488
  %10 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !489
  %11 = load [1 x i32], ptr %10, align 4, !dbg !489
  %12 = call i32 @cbvprintf(ptr noundef @buf_char_out, ptr noundef %5, ptr noundef %9, [1 x i32] %11) #7, !dbg !489
  %13 = getelementptr inbounds %struct.buf_out_context, ptr %5, i32 0, i32 0, !dbg !490
  %14 = load i32, ptr %13, align 4, !dbg !490
  %15 = icmp ne i32 %14, 0, !dbg !492
  br i1 %15, label %16, label %17, !dbg !493

16:                                               ; preds = %8
  call void @buf_flush(ptr noundef %5) #7, !dbg !494
  br label %17, !dbg !496

17:                                               ; preds = %16, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !497
  br label %23, !dbg !498

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 4, !dbg !499
  %20 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !501
  %21 = load [1 x i32], ptr %20, align 4, !dbg !501
  %22 = call i32 @cbvprintf(ptr noundef @char_out, ptr noundef null, ptr noundef %19, [1 x i32] %21) #7, !dbg !501
  br label %23

23:                                               ; preds = %18, %17
  ret void, !dbg !502
}

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @k_is_user_context() #0 !dbg !503 {
  ret i1 false, !dbg !508
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: inlinehint nounwind optsize
define internal i32 @cbvprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %3) #0 !dbg !509 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %9, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !518, metadata !DIExpression()), !dbg !522
  store ptr %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !519, metadata !DIExpression()), !dbg !523
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !520, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata ptr %5, metadata !521, metadata !DIExpression()), !dbg !525
  %10 = load ptr, ptr %6, align 4, !dbg !526
  %11 = load ptr, ptr %7, align 4, !dbg !527
  %12 = load ptr, ptr %8, align 4, !dbg !528
  %13 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !529
  %14 = load [1 x i32], ptr %13, align 4, !dbg !529
  %15 = call i32 @z_cbvprintf_impl(ptr noundef %10, ptr noundef %11, ptr noundef %12, [1 x i32] %14, i32 noundef 0) #7, !dbg !529
  ret i32 %15, !dbg !530
}

; Function Attrs: nounwind optsize
define internal i32 @buf_char_out(i32 noundef %0, ptr noundef %1) #1 !dbg !531 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !535, metadata !DIExpression()), !dbg !539
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !536, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %5, metadata !537, metadata !DIExpression()), !dbg !542
  %6 = load ptr, ptr %4, align 4, !dbg !543
  store ptr %6, ptr %5, align 4, !dbg !542
  %7 = load i32, ptr %3, align 4, !dbg !544
  %8 = trunc i32 %7 to i8, !dbg !544
  %9 = load ptr, ptr %5, align 4, !dbg !545
  %10 = getelementptr inbounds %struct.buf_out_context, ptr %9, i32 0, i32 1, !dbg !546
  %11 = load ptr, ptr %5, align 4, !dbg !547
  %12 = getelementptr inbounds %struct.buf_out_context, ptr %11, i32 0, i32 0, !dbg !548
  %13 = load i32, ptr %12, align 4, !dbg !549
  %14 = add i32 %13, 1, !dbg !549
  store i32 %14, ptr %12, align 4, !dbg !549
  %15 = getelementptr inbounds [0 x i8], ptr %10, i32 0, i32 %13, !dbg !545
  store i8 %8, ptr %15, align 1, !dbg !550
  %16 = load ptr, ptr %5, align 4, !dbg !551
  %17 = getelementptr inbounds %struct.buf_out_context, ptr %16, i32 0, i32 0, !dbg !553
  %18 = load i32, ptr %17, align 4, !dbg !553
  %19 = icmp eq i32 %18, 0, !dbg !554
  br i1 %19, label %20, label %22, !dbg !555

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 4, !dbg !556
  call void @buf_flush(ptr noundef %21) #7, !dbg !558
  br label %22, !dbg !559

22:                                               ; preds = %20, %2
  %23 = load i32, ptr %3, align 4, !dbg !560
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !561
  ret i32 %23, !dbg !562
}

; Function Attrs: nounwind optsize
define internal void @buf_flush(ptr noundef %0) #1 !dbg !563 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !567, metadata !DIExpression()), !dbg !568
  %3 = load ptr, ptr %2, align 4, !dbg !569
  %4 = getelementptr inbounds %struct.buf_out_context, ptr %3, i32 0, i32 1, !dbg !570
  %5 = getelementptr inbounds [0 x i8], ptr %4, i32 0, i32 0, !dbg !569
  %6 = load ptr, ptr %2, align 4, !dbg !571
  %7 = getelementptr inbounds %struct.buf_out_context, ptr %6, i32 0, i32 0, !dbg !572
  %8 = load i32, ptr %7, align 4, !dbg !572
  call void @k_str_out(ptr noundef %5, i32 noundef %8) #7, !dbg !573
  %9 = load ptr, ptr %2, align 4, !dbg !574
  %10 = getelementptr inbounds %struct.buf_out_context, ptr %9, i32 0, i32 0, !dbg !575
  store i32 0, ptr %10, align 4, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind optsize
define internal i32 @char_out(i32 noundef %0, ptr noundef %1) #1 !dbg !578 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !580, metadata !DIExpression()), !dbg !582
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !581, metadata !DIExpression()), !dbg !583
  %5 = load ptr, ptr %4, align 4, !dbg !584
  %6 = load ptr, ptr @_char_out, align 4, !dbg !585
  %7 = load i32, ptr %3, align 4, !dbg !586
  %8 = call i32 %6(i32 noundef %7) #7, !dbg !585
  ret i32 %8, !dbg !587
}

; Function Attrs: nounwind optsize
define hidden void @z_impl_k_str_out(ptr noundef %0, i32 noundef %1) #1 !dbg !588 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !594, metadata !DIExpression()), !dbg !597
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !595, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %5, metadata !596, metadata !DIExpression()), !dbg !600
  store i32 0, ptr %5, align 4, !dbg !601
  br label %6, !dbg !603

6:                                                ; preds = %18, %2
  %7 = load i32, ptr %5, align 4, !dbg !604
  %8 = load i32, ptr %4, align 4, !dbg !606
  %9 = icmp ult i32 %7, %8, !dbg !607
  br i1 %9, label %10, label %21, !dbg !608

10:                                               ; preds = %6
  %11 = load ptr, ptr @_char_out, align 4, !dbg !609
  %12 = load ptr, ptr %3, align 4, !dbg !611
  %13 = load i32, ptr %5, align 4, !dbg !612
  %14 = getelementptr inbounds i8, ptr %12, i32 %13, !dbg !611
  %15 = load i8, ptr %14, align 1, !dbg !611
  %16 = zext i8 %15 to i32, !dbg !611
  %17 = call i32 %11(i32 noundef %16) #7, !dbg !609
  br label %18, !dbg !613

18:                                               ; preds = %10
  %19 = load i32, ptr %5, align 4, !dbg !614
  %20 = add i32 %19, 1, !dbg !614
  store i32 %20, ptr %5, align 4, !dbg !614
  br label %6, !dbg !615, !llvm.loop !616

21:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8, !dbg !618
  ret void, !dbg !618
}

; Function Attrs: nounwind optsize
define hidden void @printk(ptr noundef %0, ...) #1 !dbg !619 {
  %2 = alloca ptr, align 4
  %3 = alloca %struct.__va_list, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !623, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %3, metadata !624, metadata !DIExpression()), !dbg !627
  call void @llvm.va_start(ptr %3), !dbg !628
  %4 = load ptr, ptr %2, align 4, !dbg !629
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i32 0, i32 0, !dbg !630
  %6 = load [1 x i32], ptr %5, align 4, !dbg !630
  call void @vprintk(ptr noundef %4, [1 x i32] %6) #7, !dbg !630
  call void @llvm.va_end(ptr %3), !dbg !631
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8, !dbg !632
  ret void, !dbg !632
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind optsize
define hidden i32 @snprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) #1 !dbg !633 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca %struct.__va_list, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !637, metadata !DIExpression()), !dbg !642
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !638, metadata !DIExpression()), !dbg !643
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !639, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8, !dbg !645
  call void @llvm.dbg.declare(metadata ptr %7, metadata !640, metadata !DIExpression()), !dbg !646
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %8, metadata !641, metadata !DIExpression()), !dbg !648
  call void @llvm.va_start(ptr %7), !dbg !649
  %9 = load ptr, ptr %4, align 4, !dbg !650
  %10 = load i32, ptr %5, align 4, !dbg !651
  %11 = load ptr, ptr %6, align 4, !dbg !652
  %12 = getelementptr inbounds %struct.__va_list, ptr %7, i32 0, i32 0, !dbg !653
  %13 = load [1 x i32], ptr %12, align 4, !dbg !653
  %14 = call i32 @vsnprintk(ptr noundef %9, i32 noundef %10, ptr noundef %11, [1 x i32] %13) #7, !dbg !653
  store i32 %14, ptr %8, align 4, !dbg !654
  call void @llvm.va_end(ptr %7), !dbg !655
  %15 = load i32, ptr %8, align 4, !dbg !656
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8, !dbg !657
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8, !dbg !657
  ret i32 %15, !dbg !658
}

; Function Attrs: nounwind optsize
define hidden i32 @vsnprintk(ptr noundef %0, i32 noundef %1, ptr noundef %2, [1 x i32] %3) #1 !dbg !659 {
  %5 = alloca %struct.__va_list, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.str_context, align 4
  %10 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0
  store [1 x i32] %3, ptr %10, align 4
  store ptr %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !663, metadata !DIExpression()), !dbg !673
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !664, metadata !DIExpression()), !dbg !674
  store ptr %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !665, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata ptr %5, metadata !666, metadata !DIExpression()), !dbg !676
  call void @llvm.lifetime.start.p0(i64 12, ptr %9) #8, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %9, metadata !667, metadata !DIExpression()), !dbg !678
  %11 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 0, !dbg !679
  %12 = load ptr, ptr %6, align 4, !dbg !680
  store ptr %12, ptr %11, align 4, !dbg !679
  %13 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 1, !dbg !679
  %14 = load i32, ptr %7, align 4, !dbg !681
  store i32 %14, ptr %13, align 4, !dbg !679
  %15 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !679
  store i32 0, ptr %15, align 4, !dbg !679
  %16 = load ptr, ptr %8, align 4, !dbg !682
  %17 = getelementptr inbounds %struct.__va_list, ptr %5, i32 0, i32 0, !dbg !683
  %18 = load [1 x i32], ptr %17, align 4, !dbg !683
  %19 = call i32 @cbvprintf(ptr noundef @str_out, ptr noundef %9, ptr noundef %16, [1 x i32] %18) #7, !dbg !683
  %20 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !684
  %21 = load i32, ptr %20, align 4, !dbg !684
  %22 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 1, !dbg !686
  %23 = load i32, ptr %22, align 4, !dbg !686
  %24 = icmp slt i32 %21, %23, !dbg !687
  br i1 %24, label %25, label %30, !dbg !688

25:                                               ; preds = %4
  %26 = load ptr, ptr %6, align 4, !dbg !689
  %27 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !691
  %28 = load i32, ptr %27, align 4, !dbg !691
  %29 = getelementptr inbounds i8, ptr %26, i32 %28, !dbg !689
  store i8 0, ptr %29, align 1, !dbg !692
  br label %30, !dbg !693

30:                                               ; preds = %25, %4
  %31 = getelementptr inbounds %struct.str_context, ptr %9, i32 0, i32 2, !dbg !694
  %32 = load i32, ptr %31, align 4, !dbg !694
  call void @llvm.lifetime.end.p0(i64 12, ptr %9) #8, !dbg !695
  ret i32 %32, !dbg !696
}

; Function Attrs: nounwind optsize
define internal i32 @str_out(i32 noundef %0, ptr noundef %1) #1 !dbg !697 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !702, metadata !DIExpression()), !dbg !704
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !703, metadata !DIExpression()), !dbg !705
  %6 = load ptr, ptr %5, align 4, !dbg !706
  %7 = getelementptr inbounds %struct.str_context, ptr %6, i32 0, i32 0, !dbg !708
  %8 = load ptr, ptr %7, align 4, !dbg !708
  %9 = icmp eq ptr %8, null, !dbg !709
  br i1 %9, label %18, label %10, !dbg !710

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 4, !dbg !711
  %12 = getelementptr inbounds %struct.str_context, ptr %11, i32 0, i32 2, !dbg !712
  %13 = load i32, ptr %12, align 4, !dbg !712
  %14 = load ptr, ptr %5, align 4, !dbg !713
  %15 = getelementptr inbounds %struct.str_context, ptr %14, i32 0, i32 1, !dbg !714
  %16 = load i32, ptr %15, align 4, !dbg !714
  %17 = icmp sge i32 %13, %16, !dbg !715
  br i1 %17, label %18, label %24, !dbg !716

18:                                               ; preds = %10, %2
  %19 = load ptr, ptr %5, align 4, !dbg !717
  %20 = getelementptr inbounds %struct.str_context, ptr %19, i32 0, i32 2, !dbg !719
  %21 = load i32, ptr %20, align 4, !dbg !720
  %22 = add nsw i32 %21, 1, !dbg !720
  store i32 %22, ptr %20, align 4, !dbg !720
  %23 = load i32, ptr %4, align 4, !dbg !721
  store i32 %23, ptr %3, align 4, !dbg !722
  br label %55, !dbg !722

24:                                               ; preds = %10
  %25 = load ptr, ptr %5, align 4, !dbg !723
  %26 = getelementptr inbounds %struct.str_context, ptr %25, i32 0, i32 2, !dbg !725
  %27 = load i32, ptr %26, align 4, !dbg !725
  %28 = load ptr, ptr %5, align 4, !dbg !726
  %29 = getelementptr inbounds %struct.str_context, ptr %28, i32 0, i32 1, !dbg !727
  %30 = load i32, ptr %29, align 4, !dbg !727
  %31 = sub nsw i32 %30, 1, !dbg !728
  %32 = icmp eq i32 %27, %31, !dbg !729
  br i1 %32, label %33, label %42, !dbg !730

33:                                               ; preds = %24
  %34 = load ptr, ptr %5, align 4, !dbg !731
  %35 = getelementptr inbounds %struct.str_context, ptr %34, i32 0, i32 0, !dbg !733
  %36 = load ptr, ptr %35, align 4, !dbg !733
  %37 = load ptr, ptr %5, align 4, !dbg !734
  %38 = getelementptr inbounds %struct.str_context, ptr %37, i32 0, i32 2, !dbg !735
  %39 = load i32, ptr %38, align 4, !dbg !736
  %40 = add nsw i32 %39, 1, !dbg !736
  store i32 %40, ptr %38, align 4, !dbg !736
  %41 = getelementptr inbounds i8, ptr %36, i32 %39, !dbg !731
  store i8 0, ptr %41, align 1, !dbg !737
  br label %53, !dbg !738

42:                                               ; preds = %24
  %43 = load i32, ptr %4, align 4, !dbg !739
  %44 = trunc i32 %43 to i8, !dbg !739
  %45 = load ptr, ptr %5, align 4, !dbg !741
  %46 = getelementptr inbounds %struct.str_context, ptr %45, i32 0, i32 0, !dbg !742
  %47 = load ptr, ptr %46, align 4, !dbg !742
  %48 = load ptr, ptr %5, align 4, !dbg !743
  %49 = getelementptr inbounds %struct.str_context, ptr %48, i32 0, i32 2, !dbg !744
  %50 = load i32, ptr %49, align 4, !dbg !745
  %51 = add nsw i32 %50, 1, !dbg !745
  store i32 %51, ptr %49, align 4, !dbg !745
  %52 = getelementptr inbounds i8, ptr %47, i32 %50, !dbg !741
  store i8 %44, ptr %52, align 1, !dbg !746
  br label %53

53:                                               ; preds = %42, %33
  %54 = load i32, ptr %4, align 4, !dbg !747
  store i32 %54, ptr %3, align 4, !dbg !748
  br label %55, !dbg !748

55:                                               ; preds = %53, %18
  %56 = load i32, ptr %3, align 4, !dbg !749
  ret i32 %56, !dbg !749
}

; Function Attrs: optsize
declare !dbg !750 dso_local i64 @z_timeout_expires(ptr noundef) #6

; Function Attrs: optsize
declare !dbg !755 dso_local i64 @z_timeout_remaining(ptr noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal zeroext i1 @sys_sflist_is_empty(ptr noundef %0) #0 !dbg !756 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !761, metadata !DIExpression()), !dbg !762
  %3 = load ptr, ptr %2, align 4, !dbg !763
  %4 = call ptr @sys_sflist_peek_head(ptr noundef %3) #7, !dbg !764
  %5 = icmp eq ptr %4, null, !dbg !765
  ret i1 %5, !dbg !766
}

; Function Attrs: inlinehint nounwind optsize
define internal ptr @sys_sflist_peek_head(ptr noundef %0) #0 !dbg !767 {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !771, metadata !DIExpression()), !dbg !772
  %3 = load ptr, ptr %2, align 4, !dbg !773
  %4 = getelementptr inbounds %struct._sflist, ptr %3, i32 0, i32 0, !dbg !774
  %5 = load ptr, ptr %4, align 4, !dbg !774
  ret ptr %5, !dbg !775
}

; Function Attrs: optsize
declare !dbg !776 dso_local i32 @z_cbvprintf_impl(ptr noundef, ptr noundef, ptr noundef, [1 x i32], i32 noundef) #6

; Function Attrs: inlinehint nounwind optsize
define internal void @k_str_out(ptr noundef %0, i32 noundef %1) #0 !dbg !779 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !784, metadata !DIExpression()), !dbg !786
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !785, metadata !DIExpression()), !dbg !787
  br label %5, !dbg !788

5:                                                ; preds = %2
  call void asm sideeffect "", "~{memory}"() #8, !dbg !789, !srcloc !791
  br label %6, !dbg !792

6:                                                ; preds = %5
  %7 = load ptr, ptr %3, align 4, !dbg !793
  %8 = load i32, ptr %4, align 4, !dbg !794
  call void @z_impl_k_str_out(ptr noundef %7, i32 noundef %8) #7, !dbg !795
  ret void, !dbg !796
}

attributes #0 = { inlinehint nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { optsize "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_char_out", scope: !2, file: !94, line: 55, type: !113, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !91, splitDebugInlining: false, nameTableKind: None)
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
!27 = !DIEnumerator(name: "K_OBJ_DRIVER_RESET", value: 18)
!28 = !DIEnumerator(name: "K_OBJ_DRIVER_UART", value: 19)
!29 = !DIEnumerator(name: "K_OBJ_DRIVER_CRYPTO", value: 20)
!30 = !DIEnumerator(name: "K_OBJ_DRIVER_ADC", value: 21)
!31 = !DIEnumerator(name: "K_OBJ_DRIVER_AUXDISPLAY", value: 22)
!32 = !DIEnumerator(name: "K_OBJ_DRIVER_BBRAM", value: 23)
!33 = !DIEnumerator(name: "K_OBJ_DRIVER_CAN", value: 24)
!34 = !DIEnumerator(name: "K_OBJ_DRIVER_CHARGER", value: 25)
!35 = !DIEnumerator(name: "K_OBJ_DRIVER_COREDUMP", value: 26)
!36 = !DIEnumerator(name: "K_OBJ_DRIVER_COUNTER", value: 27)
!37 = !DIEnumerator(name: "K_OBJ_DRIVER_DAC", value: 28)
!38 = !DIEnumerator(name: "K_OBJ_DRIVER_DAI", value: 29)
!39 = !DIEnumerator(name: "K_OBJ_DRIVER_DMA", value: 30)
!40 = !DIEnumerator(name: "K_OBJ_DRIVER_EDAC", value: 31)
!41 = !DIEnumerator(name: "K_OBJ_DRIVER_EEPROM", value: 32)
!42 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE_EMUL", value: 33)
!43 = !DIEnumerator(name: "K_OBJ_DRIVER_EMUL_SENSOR_BACKEND_API", value: 34)
!44 = !DIEnumerator(name: "K_OBJ_DRIVER_ENTROPY", value: 35)
!45 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI", value: 36)
!46 = !DIEnumerator(name: "K_OBJ_DRIVER_ESPI_SAF", value: 37)
!47 = !DIEnumerator(name: "K_OBJ_DRIVER_FLASH", value: 38)
!48 = !DIEnumerator(name: "K_OBJ_DRIVER_FPGA", value: 39)
!49 = !DIEnumerator(name: "K_OBJ_DRIVER_FUEL_GAUGE", value: 40)
!50 = !DIEnumerator(name: "K_OBJ_DRIVER_HWSPINLOCK", value: 41)
!51 = !DIEnumerator(name: "K_OBJ_DRIVER_I2C", value: 42)
!52 = !DIEnumerator(name: "K_OBJ_DRIVER_I2S", value: 43)
!53 = !DIEnumerator(name: "K_OBJ_DRIVER_I3C", value: 44)
!54 = !DIEnumerator(name: "K_OBJ_DRIVER_IPM", value: 45)
!55 = !DIEnumerator(name: "K_OBJ_DRIVER_KSCAN", value: 46)
!56 = !DIEnumerator(name: "K_OBJ_DRIVER_LED", value: 47)
!57 = !DIEnumerator(name: "K_OBJ_DRIVER_MBOX", value: 48)
!58 = !DIEnumerator(name: "K_OBJ_DRIVER_MDIO", value: 49)
!59 = !DIEnumerator(name: "K_OBJ_DRIVER_MIPI_DSI", value: 50)
!60 = !DIEnumerator(name: "K_OBJ_DRIVER_PECI", value: 51)
!61 = !DIEnumerator(name: "K_OBJ_DRIVER_PS2", value: 52)
!62 = !DIEnumerator(name: "K_OBJ_DRIVER_PTP_CLOCK", value: 53)
!63 = !DIEnumerator(name: "K_OBJ_DRIVER_PWM", value: 54)
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
!122 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!123 = distinct !DISubprogram(name: "z_impl_k_object_access_grant", scope: !6, file: !6, line: 223, type: !124, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !245)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !111, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 32)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_thread", file: !128, line: 250, size: 896, elements: !129)
!128 = !DIFile(filename: "include/zephyr/kernel/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!129 = !{!130, !203, !216, !217, !218, !219, !240}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !127, file: !128, line: 252, baseType: !131, size: 384)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_base", file: !128, line: 58, size: 384, elements: !132)
!132 = !{!133, !161, !169, !172, !173, !186, !189, !190}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !128, line: 61, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !128, line: 61, size: 64, elements: !135)
!135 = !{!136, !152}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_dlist", scope: !134, file: !128, line: 62, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dnode_t", file: !138, line: 55, baseType: !139)
!138 = !DIFile(filename: "include/zephyr/sys/dlist.h", directory: "/home/sri/zephyrproject/zephyr")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dnode", file: !138, line: 37, size: 64, elements: !140)
!140 = !{!141, !147}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 38, baseType: !142, size: 32)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 38, size: 32, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !142, file: !138, line: 39, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !138, line: 40, baseType: !145, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !138, line: 42, baseType: !148, size: 32, offset: 32)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !138, line: 42, size: 32, elements: !149)
!149 = !{!150, !151}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !148, file: !138, line: 43, baseType: !145, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !138, line: 44, baseType: !145, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "qnode_rb", scope: !134, file: !128, line: 63, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rbnode", file: !154, line: 58, size: 64, elements: !155)
!154 = !DIFile(filename: "include/zephyr/sys/rb.h", directory: "/home/sri/zephyrproject/zephyr")
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !153, file: !154, line: 60, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !159)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 32)
!159 = !{!160}
!160 = !DISubrange(count: 2)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "pended_on", scope: !131, file: !128, line: 69, baseType: !162, size: 32, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "_wait_q_t", file: !164, line: 243, baseType: !165)
!164 = !DIFile(filename: "include/zephyr/kernel_structs.h", directory: "/home/sri/zephyrproject/zephyr")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 241, size: 64, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !165, file: !164, line: 242, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_dlist_t", file: !138, line: 51, baseType: !139)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "user_options", scope: !131, file: !128, line: 72, baseType: !170, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !171, line: 62, baseType: !7)
!171 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!172 = !DIDerivedType(tag: DW_TAG_member, name: "thread_state", scope: !131, file: !128, line: 75, baseType: !170, size: 8, offset: 104)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !128, line: 91, baseType: !174, size: 16, offset: 112)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !128, line: 91, size: 16, elements: !175)
!175 = !{!176, !183}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !128, line: 92, baseType: !177, size: 16)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !174, file: !128, line: 92, size: 16, elements: !178)
!178 = !{!179, !182}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !177, file: !128, line: 97, baseType: !180, size: 8)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !171, line: 56, baseType: !181)
!181 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sched_locked", scope: !177, file: !128, line: 98, baseType: !170, size: 8, offset: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "preempt", scope: !174, file: !128, line: 101, baseType: !184, size: 16)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !171, line: 63, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "order_key", scope: !131, file: !128, line: 108, baseType: !187, size: 32, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 64, baseType: !188)
!188 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "swap_data", scope: !131, file: !128, line: 132, baseType: !89, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !131, file: !128, line: 136, baseType: !191, size: 192, offset: 192)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_timeout", file: !164, line: 254, size: 192, elements: !192)
!192 = !{!193, !194, !200}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !164, line: 255, baseType: !137, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !191, file: !164, line: 256, baseType: !195, size: 32, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "_timeout_func_t", file: !164, line: 252, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 32)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "dticks", scope: !191, file: !164, line: 259, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !171, line: 59, baseType: !202)
!202 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "callee_saved", scope: !127, file: !128, line: 255, baseType: !204, size: 288, offset: 384)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_callee_saved", file: !205, line: 25, size: 288, elements: !206)
!205 = !DIFile(filename: "include/zephyr/arch/arm/thread.h", directory: "/home/sri/zephyrproject/zephyr")
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "v1", scope: !204, file: !205, line: 26, baseType: !187, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !204, file: !205, line: 27, baseType: !187, size: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !204, file: !205, line: 28, baseType: !187, size: 32, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !204, file: !205, line: 29, baseType: !187, size: 32, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "v5", scope: !204, file: !205, line: 30, baseType: !187, size: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !204, file: !205, line: 31, baseType: !187, size: 32, offset: 160)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "v7", scope: !204, file: !205, line: 32, baseType: !187, size: 32, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "v8", scope: !204, file: !205, line: 33, baseType: !187, size: 32, offset: 224)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "psp", scope: !204, file: !205, line: 34, baseType: !187, size: 32, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "init_data", scope: !127, file: !128, line: 258, baseType: !89, size: 32, offset: 672)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "join_queue", scope: !127, file: !128, line: 261, baseType: !163, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "errno_var", scope: !127, file: !128, line: 302, baseType: !90, size: 32, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "resource_pool", scope: !127, file: !128, line: 333, baseType: !220, size: 32, offset: 800)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_heap", file: !222, line: 5291, size: 160, elements: !223)
!222 = !DIFile(filename: "include/zephyr/kernel.h", directory: "/home/sri/zephyrproject/zephyr")
!223 = !{!224, !235, !236}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !221, file: !222, line: 5292, baseType: !225, size: 96)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !226, line: 56, size: 96, elements: !227)
!226 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!227 = !{!228, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !225, file: !226, line: 57, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 32)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !226, line: 57, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !225, file: !226, line: 58, baseType: !89, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !225, file: !226, line: 59, baseType: !233, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 46, baseType: !188)
!234 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !221, file: !222, line: 5293, baseType: !163, size: 64, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !221, file: !222, line: 5294, baseType: !237, offset: 160)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_spinlock", file: !238, line: 45, elements: !239)
!238 = !DIFile(filename: "include/zephyr/spinlock.h", directory: "/home/sri/zephyrproject/zephyr")
!239 = !{}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !127, file: !128, line: 355, baseType: !241, size: 64, offset: 832)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_arch", file: !205, line: 60, size: 64, elements: !242)
!242 = !{!243, !244}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "basepri", scope: !241, file: !205, line: 63, baseType: !187, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "swap_return_value", scope: !241, file: !205, line: 66, baseType: !187, size: 32, offset: 32)
!245 = !{!246, !247}
!246 = !DILocalVariable(name: "object", arg: 1, scope: !123, file: !6, line: 223, type: !111)
!247 = !DILocalVariable(name: "thread", arg: 2, scope: !123, file: !6, line: 224, type: !126)
!248 = !DILocation(line: 223, column: 61, scope: !123)
!249 = !DILocation(line: 224, column: 24, scope: !123)
!250 = !DILocation(line: 226, column: 9, scope: !123)
!251 = !DILocation(line: 227, column: 9, scope: !123)
!252 = !DILocation(line: 228, column: 1, scope: !123)
!253 = distinct !DISubprogram(name: "z_impl_k_object_release", scope: !6, file: !6, line: 243, type: !254, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !111}
!256 = !{!257}
!257 = !DILocalVariable(name: "object", arg: 1, scope: !253, file: !6, line: 243, type: !111)
!258 = !DILocation(line: 243, column: 56, scope: !253)
!259 = !DILocation(line: 245, column: 9, scope: !253)
!260 = !DILocation(line: 246, column: 1, scope: !253)
!261 = distinct !DISubprogram(name: "z_impl_k_object_alloc", scope: !6, file: !6, line: 359, type: !262, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!262 = !DISubroutineType(types: !263)
!263 = !{!89, !5}
!264 = !{!265}
!265 = !DILocalVariable(name: "otype", arg: 1, scope: !261, file: !6, line: 359, type: !5)
!266 = !DILocation(line: 359, column: 58, scope: !261)
!267 = !DILocation(line: 361, column: 9, scope: !261)
!268 = !DILocation(line: 363, column: 2, scope: !261)
!269 = distinct !DISubprogram(name: "z_impl_k_object_alloc_size", scope: !6, file: !6, line: 366, type: !270, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!89, !5, !233}
!272 = !{!273, !274}
!273 = !DILocalVariable(name: "otype", arg: 1, scope: !269, file: !6, line: 366, type: !5)
!274 = !DILocalVariable(name: "size", arg: 2, scope: !269, file: !6, line: 367, type: !233)
!275 = !DILocation(line: 366, column: 63, scope: !269)
!276 = !DILocation(line: 367, column: 13, scope: !269)
!277 = !DILocation(line: 369, column: 9, scope: !269)
!278 = !DILocation(line: 370, column: 9, scope: !269)
!279 = !DILocation(line: 372, column: 2, scope: !269)
!280 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_expires_ticks", scope: !222, file: !222, line: 656, type: !281, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !285}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_ticks_t", file: !284, line: 46, baseType: !201)
!284 = !DIFile(filename: "include/zephyr/sys_clock.h", directory: "/home/sri/zephyrproject/zephyr")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!287 = !{!288}
!288 = !DILocalVariable(name: "t", arg: 1, scope: !280, file: !222, line: 657, type: !285)
!289 = !DILocation(line: 657, column: 30, scope: !280)
!290 = !DILocation(line: 659, column: 28, scope: !280)
!291 = !DILocation(line: 659, column: 31, scope: !280)
!292 = !DILocation(line: 659, column: 36, scope: !280)
!293 = !DILocation(line: 659, column: 9, scope: !280)
!294 = !DILocation(line: 659, column: 2, scope: !280)
!295 = distinct !DISubprogram(name: "z_impl_k_thread_timeout_remaining_ticks", scope: !222, file: !222, line: 671, type: !281, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !296)
!296 = !{!297}
!297 = !DILocalVariable(name: "t", arg: 1, scope: !295, file: !222, line: 672, type: !285)
!298 = !DILocation(line: 672, column: 30, scope: !295)
!299 = !DILocation(line: 674, column: 30, scope: !295)
!300 = !DILocation(line: 674, column: 33, scope: !295)
!301 = !DILocation(line: 674, column: 38, scope: !295)
!302 = !DILocation(line: 674, column: 9, scope: !295)
!303 = !DILocation(line: 674, column: 2, scope: !295)
!304 = distinct !DISubprogram(name: "z_impl_k_timer_expires_ticks", scope: !222, file: !222, line: 1634, type: !305, scopeLine: 1636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !326)
!305 = !DISubroutineType(types: !306)
!306 = !{!283, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_timer", file: !222, line: 1439, size: 448, elements: !310)
!310 = !{!311, !312, !313, !318, !319, !324, !325}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !309, file: !222, line: 1445, baseType: !191, size: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !309, file: !222, line: 1448, baseType: !163, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_fn", scope: !309, file: !222, line: 1451, baseType: !314, size: 32, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 32)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "stop_fn", scope: !309, file: !222, line: 1454, baseType: !314, size: 32, offset: 288)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !309, file: !222, line: 1457, baseType: !320, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "k_timeout_t", file: !284, line: 67, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 65, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !321, file: !284, line: 66, baseType: !283, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !309, file: !222, line: 1460, baseType: !187, size: 32, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !309, file: !222, line: 1463, baseType: !89, size: 32, offset: 416)
!326 = !{!327}
!327 = !DILocalVariable(name: "timer", arg: 1, scope: !304, file: !222, line: 1635, type: !307)
!328 = !DILocation(line: 1635, column: 34, scope: !304)
!329 = !DILocation(line: 1637, column: 28, scope: !304)
!330 = !DILocation(line: 1637, column: 35, scope: !304)
!331 = !DILocation(line: 1637, column: 9, scope: !304)
!332 = !DILocation(line: 1637, column: 2, scope: !304)
!333 = distinct !DISubprogram(name: "z_impl_k_timer_remaining_ticks", scope: !222, file: !222, line: 1649, type: !305, scopeLine: 1651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!334 = !{!335}
!335 = !DILocalVariable(name: "timer", arg: 1, scope: !333, file: !222, line: 1650, type: !307)
!336 = !DILocation(line: 1650, column: 34, scope: !333)
!337 = !DILocation(line: 1652, column: 30, scope: !333)
!338 = !DILocation(line: 1652, column: 37, scope: !333)
!339 = !DILocation(line: 1652, column: 9, scope: !333)
!340 = !DILocation(line: 1652, column: 2, scope: !333)
!341 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_set", scope: !222, file: !222, line: 1689, type: !342, scopeLine: 1691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !317, !89}
!344 = !{!345, !346}
!345 = !DILocalVariable(name: "timer", arg: 1, scope: !341, file: !222, line: 1689, type: !317)
!346 = !DILocalVariable(name: "user_data", arg: 2, scope: !341, file: !222, line: 1690, type: !89)
!347 = !DILocation(line: 1689, column: 65, scope: !341)
!348 = !DILocation(line: 1690, column: 19, scope: !341)
!349 = !DILocation(line: 1692, column: 21, scope: !341)
!350 = !DILocation(line: 1692, column: 2, scope: !341)
!351 = !DILocation(line: 1692, column: 9, scope: !341)
!352 = !DILocation(line: 1692, column: 19, scope: !341)
!353 = !DILocation(line: 1693, column: 1, scope: !341)
!354 = distinct !DISubprogram(name: "z_impl_k_timer_user_data_get", scope: !222, file: !222, line: 1704, type: !355, scopeLine: 1705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!89, !307}
!357 = !{!358}
!358 = !DILocalVariable(name: "timer", arg: 1, scope: !354, file: !222, line: 1704, type: !307)
!359 = !DILocation(line: 1704, column: 72, scope: !354)
!360 = !DILocation(line: 1706, column: 9, scope: !354)
!361 = !DILocation(line: 1706, column: 16, scope: !354)
!362 = !DILocation(line: 1706, column: 2, scope: !354)
!363 = distinct !DISubprogram(name: "z_impl_k_queue_is_empty", scope: !222, file: !222, line: 2071, type: !364, scopeLine: 2072, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!364 = !DISubroutineType(types: !365)
!365 = !{!90, !366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_queue", file: !222, line: 1830, size: 128, elements: !368)
!368 = !{!369, !382, !383}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "data_q", scope: !367, file: !222, line: 1831, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sflist_t", file: !371, line: 60, baseType: !372)
!371 = !DIFile(filename: "include/zephyr/sys/sflist.h", directory: "/home/sri/zephyrproject/zephyr")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sflist", file: !371, line: 53, size: 64, elements: !373)
!373 = !{!374, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !372, file: !371, line: 54, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_sfnode_t", file: !371, line: 50, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sfnode", file: !371, line: 44, size: 32, elements: !378)
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next_and_flags", scope: !377, file: !371, line: 45, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "unative_t", file: !371, line: 40, baseType: !187)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !372, file: !371, line: 55, baseType: !375, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !367, file: !222, line: 1832, baseType: !237, offset: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !367, file: !222, line: 1833, baseType: !163, size: 64, offset: 64)
!384 = !{!385}
!385 = !DILocalVariable(name: "queue", arg: 1, scope: !363, file: !222, line: 2071, type: !366)
!386 = !DILocation(line: 2071, column: 59, scope: !363)
!387 = !DILocation(line: 2073, column: 35, scope: !363)
!388 = !DILocation(line: 2073, column: 42, scope: !363)
!389 = !DILocation(line: 2073, column: 14, scope: !363)
!390 = !DILocation(line: 2073, column: 9, scope: !363)
!391 = !DILocation(line: 2073, column: 2, scope: !363)
!392 = distinct !DISubprogram(name: "z_impl_k_sem_count_get", scope: !222, file: !222, line: 3209, type: !393, scopeLine: 3210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!393 = !DISubroutineType(types: !394)
!394 = !{!188, !395}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 32)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sem", file: !222, line: 3092, size: 128, elements: !397)
!397 = !{!398, !399, !400}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !396, file: !222, line: 3093, baseType: !163, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !396, file: !222, line: 3094, baseType: !188, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !396, file: !222, line: 3095, baseType: !188, size: 32, offset: 96)
!401 = !{!402}
!402 = !DILocalVariable(name: "sem", arg: 1, scope: !392, file: !222, line: 3209, type: !395)
!403 = !DILocation(line: 3209, column: 65, scope: !392)
!404 = !DILocation(line: 3211, column: 9, scope: !392)
!405 = !DILocation(line: 3211, column: 14, scope: !392)
!406 = !DILocation(line: 3211, column: 2, scope: !392)
!407 = distinct !DISubprogram(name: "z_impl_k_msgq_num_free_get", scope: !222, file: !222, line: 4649, type: !408, scopeLine: 4650, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!408 = !DISubroutineType(types: !409)
!409 = !{!187, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 32)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_msgq", file: !222, line: 4390, size: 320, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !419, !420, !421, !422, !423}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_q", scope: !411, file: !222, line: 4392, baseType: !163, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !411, file: !222, line: 4394, baseType: !237, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "msg_size", scope: !411, file: !222, line: 4396, baseType: !233, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !411, file: !222, line: 4398, baseType: !187, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_start", scope: !411, file: !222, line: 4400, baseType: !418, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_end", scope: !411, file: !222, line: 4402, baseType: !418, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "read_ptr", scope: !411, file: !222, line: 4404, baseType: !418, size: 32, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "write_ptr", scope: !411, file: !222, line: 4406, baseType: !418, size: 32, offset: 224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "used_msgs", scope: !411, file: !222, line: 4408, baseType: !187, size: 32, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !222, line: 4413, baseType: !170, size: 8, offset: 288)
!424 = !{!425}
!425 = !DILocalVariable(name: "msgq", arg: 1, scope: !407, file: !222, line: 4649, type: !410)
!426 = !DILocation(line: 4649, column: 66, scope: !407)
!427 = !DILocation(line: 4651, column: 9, scope: !407)
!428 = !DILocation(line: 4651, column: 15, scope: !407)
!429 = !DILocation(line: 4651, column: 26, scope: !407)
!430 = !DILocation(line: 4651, column: 32, scope: !407)
!431 = !DILocation(line: 4651, column: 24, scope: !407)
!432 = !DILocation(line: 4651, column: 2, scope: !407)
!433 = distinct !DISubprogram(name: "z_impl_k_msgq_num_used_get", scope: !222, file: !222, line: 4665, type: !408, scopeLine: 4666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!434 = !{!435}
!435 = !DILocalVariable(name: "msgq", arg: 1, scope: !433, file: !222, line: 4665, type: !410)
!436 = !DILocation(line: 4665, column: 66, scope: !433)
!437 = !DILocation(line: 4667, column: 9, scope: !433)
!438 = !DILocation(line: 4667, column: 15, scope: !433)
!439 = !DILocation(line: 4667, column: 2, scope: !433)
!440 = distinct !DISubprogram(name: "arch_printk_char_out", scope: !94, file: !94, line: 46, type: !114, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!441 = !{!442}
!442 = !DILocalVariable(name: "c", arg: 1, scope: !440, file: !94, line: 46, type: !90)
!443 = !DILocation(line: 46, column: 52, scope: !440)
!444 = !DILocation(line: 48, column: 9, scope: !440)
!445 = !DILocation(line: 51, column: 2, scope: !440)
!446 = distinct !DISubprogram(name: "__printk_hook_install", scope: !94, file: !94, line: 64, type: !447, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !113}
!449 = !{!450}
!450 = !DILocalVariable(name: "fn", arg: 1, scope: !446, file: !94, line: 64, type: !113)
!451 = !DILocation(line: 64, column: 34, scope: !446)
!452 = !DILocation(line: 66, column: 14, scope: !446)
!453 = !DILocation(line: 66, column: 12, scope: !446)
!454 = !DILocation(line: 67, column: 1, scope: !446)
!455 = distinct !DISubprogram(name: "__printk_get_hook", scope: !94, file: !94, line: 77, type: !456, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!456 = !DISubroutineType(types: !457)
!457 = !{!89}
!458 = !DILocation(line: 79, column: 9, scope: !455)
!459 = !DILocation(line: 79, column: 2, scope: !455)
!460 = distinct !DISubprogram(name: "vprintk", scope: !94, file: !94, line: 114, type: !461, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !107, !463}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !464, line: 22, baseType: !465)
!464 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stdarg.h", directory: "")
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !466)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 32, elements: !467)
!467 = !{!468}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "__ap", scope: !466, file: !3, line: 80, baseType: !89, size: 32)
!469 = !{!470, !471, !472}
!470 = !DILocalVariable(name: "fmt", arg: 1, scope: !460, file: !94, line: 114, type: !107)
!471 = !DILocalVariable(name: "ap", arg: 2, scope: !460, file: !94, line: 114, type: !463)
!472 = !DILocalVariable(name: "ctx", scope: !473, file: !94, line: 122, type: !475)
!473 = distinct !DILexicalBlock(scope: !474, file: !94, line: 121, column: 27)
!474 = distinct !DILexicalBlock(scope: !460, file: !94, line: 121, column: 6)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "buf_out_context", file: !94, line: 82, size: 32, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "buf_count", scope: !475, file: !94, line: 86, baseType: !188, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !475, file: !94, line: 87, baseType: !479, offset: 32)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 0)
!482 = !DILocation(line: 114, column: 26, scope: !460)
!483 = !DILocation(line: 114, column: 39, scope: !460)
!484 = !DILocation(line: 121, column: 6, scope: !474)
!485 = !DILocation(line: 121, column: 6, scope: !460)
!486 = !DILocation(line: 122, column: 3, scope: !473)
!487 = !DILocation(line: 122, column: 26, scope: !473)
!488 = !DILocation(line: 134, column: 33, scope: !473)
!489 = !DILocation(line: 134, column: 3, scope: !473)
!490 = !DILocation(line: 136, column: 11, scope: !491)
!491 = distinct !DILexicalBlock(scope: !473, file: !94, line: 136, column: 7)
!492 = !DILocation(line: 136, column: 7, scope: !491)
!493 = !DILocation(line: 136, column: 7, scope: !473)
!494 = !DILocation(line: 137, column: 4, scope: !495)
!495 = distinct !DILexicalBlock(scope: !491, file: !94, line: 136, column: 22)
!496 = !DILocation(line: 138, column: 3, scope: !495)
!497 = !DILocation(line: 139, column: 2, scope: !474)
!498 = !DILocation(line: 139, column: 2, scope: !473)
!499 = !DILocation(line: 149, column: 26, scope: !500)
!500 = distinct !DILexicalBlock(scope: !474, file: !94, line: 139, column: 9)
!501 = !DILocation(line: 149, column: 3, scope: !500)
!502 = !DILocation(line: 156, column: 1, scope: !460)
!503 = distinct !DISubprogram(name: "k_is_user_context", scope: !504, file: !504, line: 115, type: !505, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !239)
!504 = !DIFile(filename: "include/zephyr/syscall.h", directory: "/home/sri/zephyrproject/zephyr")
!505 = !DISubroutineType(types: !506)
!506 = !{!507}
!507 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!508 = !DILocation(line: 120, column: 2, scope: !503)
!509 = distinct !DISubprogram(name: "cbvprintf", scope: !510, file: !510, line: 744, type: !511, scopeLine: 745, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!510 = !DIFile(filename: "include/zephyr/sys/cbprintf.h", directory: "/home/sri/zephyrproject/zephyr")
!511 = !DISubroutineType(types: !512)
!512 = !{!90, !513, !89, !107, !463}
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "cbprintf_cb", file: !510, line: 302, baseType: !514)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 32)
!515 = !DISubroutineType(types: !516)
!516 = !{!90, null}
!517 = !{!518, !519, !520, !521}
!518 = !DILocalVariable(name: "out", arg: 1, scope: !509, file: !510, line: 744, type: !513)
!519 = !DILocalVariable(name: "ctx", arg: 2, scope: !509, file: !510, line: 744, type: !89)
!520 = !DILocalVariable(name: "format", arg: 3, scope: !509, file: !510, line: 744, type: !107)
!521 = !DILocalVariable(name: "ap", arg: 4, scope: !509, file: !510, line: 744, type: !463)
!522 = !DILocation(line: 744, column: 27, scope: !509)
!523 = !DILocation(line: 744, column: 38, scope: !509)
!524 = !DILocation(line: 744, column: 55, scope: !509)
!525 = !DILocation(line: 744, column: 71, scope: !509)
!526 = !DILocation(line: 746, column: 26, scope: !509)
!527 = !DILocation(line: 746, column: 31, scope: !509)
!528 = !DILocation(line: 746, column: 36, scope: !509)
!529 = !DILocation(line: 746, column: 9, scope: !509)
!530 = !DILocation(line: 746, column: 2, scope: !509)
!531 = distinct !DISubprogram(name: "buf_char_out", scope: !94, file: !94, line: 96, type: !532, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!90, !90, !89}
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "c", arg: 1, scope: !531, file: !94, line: 96, type: !90)
!536 = !DILocalVariable(name: "ctx_p", arg: 2, scope: !531, file: !94, line: 96, type: !89)
!537 = !DILocalVariable(name: "ctx", scope: !531, file: !94, line: 98, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 32)
!539 = !DILocation(line: 96, column: 29, scope: !531)
!540 = !DILocation(line: 96, column: 38, scope: !531)
!541 = !DILocation(line: 98, column: 2, scope: !531)
!542 = !DILocation(line: 98, column: 26, scope: !531)
!543 = !DILocation(line: 98, column: 32, scope: !531)
!544 = !DILocation(line: 100, column: 31, scope: !531)
!545 = !DILocation(line: 100, column: 2, scope: !531)
!546 = !DILocation(line: 100, column: 7, scope: !531)
!547 = !DILocation(line: 100, column: 11, scope: !531)
!548 = !DILocation(line: 100, column: 16, scope: !531)
!549 = !DILocation(line: 100, column: 25, scope: !531)
!550 = !DILocation(line: 100, column: 29, scope: !531)
!551 = !DILocation(line: 101, column: 6, scope: !552)
!552 = distinct !DILexicalBlock(scope: !531, file: !94, line: 101, column: 6)
!553 = !DILocation(line: 101, column: 11, scope: !552)
!554 = !DILocation(line: 101, column: 21, scope: !552)
!555 = !DILocation(line: 101, column: 6, scope: !531)
!556 = !DILocation(line: 102, column: 13, scope: !557)
!557 = distinct !DILexicalBlock(scope: !552, file: !94, line: 101, column: 27)
!558 = !DILocation(line: 102, column: 3, scope: !557)
!559 = !DILocation(line: 103, column: 2, scope: !557)
!560 = !DILocation(line: 105, column: 9, scope: !531)
!561 = !DILocation(line: 106, column: 1, scope: !531)
!562 = !DILocation(line: 105, column: 2, scope: !531)
!563 = distinct !DISubprogram(name: "buf_flush", scope: !94, file: !94, line: 90, type: !564, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !538}
!566 = !{!567}
!567 = !DILocalVariable(name: "ctx", arg: 1, scope: !563, file: !94, line: 90, type: !538)
!568 = !DILocation(line: 90, column: 47, scope: !563)
!569 = !DILocation(line: 92, column: 12, scope: !563)
!570 = !DILocation(line: 92, column: 17, scope: !563)
!571 = !DILocation(line: 92, column: 22, scope: !563)
!572 = !DILocation(line: 92, column: 27, scope: !563)
!573 = !DILocation(line: 92, column: 2, scope: !563)
!574 = !DILocation(line: 93, column: 2, scope: !563)
!575 = !DILocation(line: 93, column: 7, scope: !563)
!576 = !DILocation(line: 93, column: 17, scope: !563)
!577 = !DILocation(line: 94, column: 1, scope: !563)
!578 = distinct !DISubprogram(name: "char_out", scope: !94, file: !94, line: 108, type: !532, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !579)
!579 = !{!580, !581}
!580 = !DILocalVariable(name: "c", arg: 1, scope: !578, file: !94, line: 108, type: !90)
!581 = !DILocalVariable(name: "ctx_p", arg: 2, scope: !578, file: !94, line: 108, type: !89)
!582 = !DILocation(line: 108, column: 25, scope: !578)
!583 = !DILocation(line: 108, column: 34, scope: !578)
!584 = !DILocation(line: 110, column: 9, scope: !578)
!585 = !DILocation(line: 111, column: 9, scope: !578)
!586 = !DILocation(line: 111, column: 19, scope: !578)
!587 = !DILocation(line: 111, column: 2, scope: !578)
!588 = distinct !DISubprogram(name: "z_impl_k_str_out", scope: !94, file: !94, line: 158, type: !589, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !418, !591}
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !592, line: 51, baseType: !188)
!592 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/string.h", directory: "")
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(name: "c", arg: 1, scope: !588, file: !94, line: 158, type: !418)
!595 = !DILocalVariable(name: "n", arg: 2, scope: !588, file: !94, line: 158, type: !591)
!596 = !DILocalVariable(name: "i", scope: !588, file: !94, line: 160, type: !591)
!597 = !DILocation(line: 158, column: 29, scope: !588)
!598 = !DILocation(line: 158, column: 39, scope: !588)
!599 = !DILocation(line: 160, column: 2, scope: !588)
!600 = !DILocation(line: 160, column: 9, scope: !588)
!601 = !DILocation(line: 165, column: 9, scope: !602)
!602 = distinct !DILexicalBlock(scope: !588, file: !94, line: 165, column: 2)
!603 = !DILocation(line: 165, column: 7, scope: !602)
!604 = !DILocation(line: 165, column: 14, scope: !605)
!605 = distinct !DILexicalBlock(scope: !602, file: !94, line: 165, column: 2)
!606 = !DILocation(line: 165, column: 18, scope: !605)
!607 = !DILocation(line: 165, column: 16, scope: !605)
!608 = !DILocation(line: 165, column: 2, scope: !602)
!609 = !DILocation(line: 166, column: 3, scope: !610)
!610 = distinct !DILexicalBlock(scope: !605, file: !94, line: 165, column: 26)
!611 = !DILocation(line: 166, column: 13, scope: !610)
!612 = !DILocation(line: 166, column: 15, scope: !610)
!613 = !DILocation(line: 167, column: 2, scope: !610)
!614 = !DILocation(line: 165, column: 22, scope: !605)
!615 = !DILocation(line: 165, column: 2, scope: !605)
!616 = distinct !{!616, !608, !617}
!617 = !DILocation(line: 167, column: 2, scope: !602)
!618 = !DILocation(line: 172, column: 1, scope: !588)
!619 = distinct !DISubprogram(name: "printk", scope: !94, file: !94, line: 204, type: !620, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!620 = !DISubroutineType(types: !621)
!621 = !{null, !107, null}
!622 = !{!623, !624}
!623 = !DILocalVariable(name: "fmt", arg: 1, scope: !619, file: !94, line: 204, type: !107)
!624 = !DILocalVariable(name: "ap", scope: !619, file: !94, line: 206, type: !463)
!625 = !DILocation(line: 204, column: 25, scope: !619)
!626 = !DILocation(line: 206, column: 2, scope: !619)
!627 = !DILocation(line: 206, column: 10, scope: !619)
!628 = !DILocation(line: 208, column: 2, scope: !619)
!629 = !DILocation(line: 210, column: 10, scope: !619)
!630 = !DILocation(line: 210, column: 2, scope: !619)
!631 = !DILocation(line: 212, column: 2, scope: !619)
!632 = !DILocation(line: 213, column: 1, scope: !619)
!633 = distinct !DISubprogram(name: "snprintk", scope: !94, file: !94, line: 241, type: !634, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{!90, !418, !591, !107, null}
!636 = !{!637, !638, !639, !640, !641}
!637 = !DILocalVariable(name: "str", arg: 1, scope: !633, file: !94, line: 241, type: !418)
!638 = !DILocalVariable(name: "size", arg: 2, scope: !633, file: !94, line: 241, type: !591)
!639 = !DILocalVariable(name: "fmt", arg: 3, scope: !633, file: !94, line: 241, type: !107)
!640 = !DILocalVariable(name: "ap", scope: !633, file: !94, line: 243, type: !463)
!641 = !DILocalVariable(name: "ret", scope: !633, file: !94, line: 244, type: !90)
!642 = !DILocation(line: 241, column: 20, scope: !633)
!643 = !DILocation(line: 241, column: 32, scope: !633)
!644 = !DILocation(line: 241, column: 50, scope: !633)
!645 = !DILocation(line: 243, column: 2, scope: !633)
!646 = !DILocation(line: 243, column: 10, scope: !633)
!647 = !DILocation(line: 244, column: 2, scope: !633)
!648 = !DILocation(line: 244, column: 6, scope: !633)
!649 = !DILocation(line: 246, column: 2, scope: !633)
!650 = !DILocation(line: 247, column: 18, scope: !633)
!651 = !DILocation(line: 247, column: 23, scope: !633)
!652 = !DILocation(line: 247, column: 29, scope: !633)
!653 = !DILocation(line: 247, column: 8, scope: !633)
!654 = !DILocation(line: 247, column: 6, scope: !633)
!655 = !DILocation(line: 248, column: 2, scope: !633)
!656 = !DILocation(line: 250, column: 9, scope: !633)
!657 = !DILocation(line: 251, column: 1, scope: !633)
!658 = !DILocation(line: 250, column: 2, scope: !633)
!659 = distinct !DISubprogram(name: "vsnprintk", scope: !94, file: !94, line: 253, type: !660, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!90, !418, !591, !107, !463}
!662 = !{!663, !664, !665, !666, !667}
!663 = !DILocalVariable(name: "str", arg: 1, scope: !659, file: !94, line: 253, type: !418)
!664 = !DILocalVariable(name: "size", arg: 2, scope: !659, file: !94, line: 253, type: !591)
!665 = !DILocalVariable(name: "fmt", arg: 3, scope: !659, file: !94, line: 253, type: !107)
!666 = !DILocalVariable(name: "ap", arg: 4, scope: !659, file: !94, line: 253, type: !463)
!667 = !DILocalVariable(name: "ctx", scope: !659, file: !94, line: 255, type: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "str_context", file: !94, line: 219, size: 96, elements: !669)
!669 = !{!670, !671, !672}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !668, file: !94, line: 220, baseType: !418, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !668, file: !94, line: 221, baseType: !90, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !668, file: !94, line: 222, baseType: !90, size: 32, offset: 64)
!673 = !DILocation(line: 253, column: 21, scope: !659)
!674 = !DILocation(line: 253, column: 33, scope: !659)
!675 = !DILocation(line: 253, column: 51, scope: !659)
!676 = !DILocation(line: 253, column: 64, scope: !659)
!677 = !DILocation(line: 255, column: 2, scope: !659)
!678 = !DILocation(line: 255, column: 21, scope: !659)
!679 = !DILocation(line: 255, column: 27, scope: !659)
!680 = !DILocation(line: 255, column: 29, scope: !659)
!681 = !DILocation(line: 255, column: 34, scope: !659)
!682 = !DILocation(line: 257, column: 27, scope: !659)
!683 = !DILocation(line: 257, column: 2, scope: !659)
!684 = !DILocation(line: 259, column: 10, scope: !685)
!685 = distinct !DILexicalBlock(scope: !659, file: !94, line: 259, column: 6)
!686 = !DILocation(line: 259, column: 22, scope: !685)
!687 = !DILocation(line: 259, column: 16, scope: !685)
!688 = !DILocation(line: 259, column: 6, scope: !659)
!689 = !DILocation(line: 260, column: 3, scope: !690)
!690 = distinct !DILexicalBlock(scope: !685, file: !94, line: 259, column: 27)
!691 = !DILocation(line: 260, column: 11, scope: !690)
!692 = !DILocation(line: 260, column: 18, scope: !690)
!693 = !DILocation(line: 261, column: 2, scope: !690)
!694 = !DILocation(line: 263, column: 13, scope: !659)
!695 = !DILocation(line: 264, column: 1, scope: !659)
!696 = !DILocation(line: 263, column: 2, scope: !659)
!697 = distinct !DISubprogram(name: "str_out", scope: !94, file: !94, line: 225, type: !698, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !701)
!698 = !DISubroutineType(types: !699)
!699 = !{!90, !90, !700}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 32)
!701 = !{!702, !703}
!702 = !DILocalVariable(name: "c", arg: 1, scope: !697, file: !94, line: 225, type: !90)
!703 = !DILocalVariable(name: "ctx", arg: 2, scope: !697, file: !94, line: 225, type: !700)
!704 = !DILocation(line: 225, column: 24, scope: !697)
!705 = !DILocation(line: 225, column: 47, scope: !697)
!706 = !DILocation(line: 227, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !94, line: 227, column: 6)
!708 = !DILocation(line: 227, column: 11, scope: !707)
!709 = !DILocation(line: 227, column: 15, scope: !707)
!710 = !DILocation(line: 227, column: 20, scope: !707)
!711 = !DILocation(line: 227, column: 23, scope: !707)
!712 = !DILocation(line: 227, column: 28, scope: !707)
!713 = !DILocation(line: 227, column: 37, scope: !707)
!714 = !DILocation(line: 227, column: 42, scope: !707)
!715 = !DILocation(line: 227, column: 34, scope: !707)
!716 = !DILocation(line: 227, column: 6, scope: !697)
!717 = !DILocation(line: 228, column: 3, scope: !718)
!718 = distinct !DILexicalBlock(scope: !707, file: !94, line: 227, column: 47)
!719 = !DILocation(line: 228, column: 8, scope: !718)
!720 = !DILocation(line: 228, column: 13, scope: !718)
!721 = !DILocation(line: 229, column: 10, scope: !718)
!722 = !DILocation(line: 229, column: 3, scope: !718)
!723 = !DILocation(line: 232, column: 6, scope: !724)
!724 = distinct !DILexicalBlock(scope: !697, file: !94, line: 232, column: 6)
!725 = !DILocation(line: 232, column: 11, scope: !724)
!726 = !DILocation(line: 232, column: 20, scope: !724)
!727 = !DILocation(line: 232, column: 25, scope: !724)
!728 = !DILocation(line: 232, column: 29, scope: !724)
!729 = !DILocation(line: 232, column: 17, scope: !724)
!730 = !DILocation(line: 232, column: 6, scope: !697)
!731 = !DILocation(line: 233, column: 3, scope: !732)
!732 = distinct !DILexicalBlock(scope: !724, file: !94, line: 232, column: 34)
!733 = !DILocation(line: 233, column: 8, scope: !732)
!734 = !DILocation(line: 233, column: 12, scope: !732)
!735 = !DILocation(line: 233, column: 17, scope: !732)
!736 = !DILocation(line: 233, column: 22, scope: !732)
!737 = !DILocation(line: 233, column: 26, scope: !732)
!738 = !DILocation(line: 234, column: 2, scope: !732)
!739 = !DILocation(line: 235, column: 28, scope: !740)
!740 = distinct !DILexicalBlock(scope: !724, file: !94, line: 234, column: 9)
!741 = !DILocation(line: 235, column: 3, scope: !740)
!742 = !DILocation(line: 235, column: 8, scope: !740)
!743 = !DILocation(line: 235, column: 12, scope: !740)
!744 = !DILocation(line: 235, column: 17, scope: !740)
!745 = !DILocation(line: 235, column: 22, scope: !740)
!746 = !DILocation(line: 235, column: 26, scope: !740)
!747 = !DILocation(line: 238, column: 9, scope: !697)
!748 = !DILocation(line: 238, column: 2, scope: !697)
!749 = !DILocation(line: 239, column: 1, scope: !697)
!750 = !DISubprogram(name: "z_timeout_expires", scope: !222, file: !222, line: 642, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!751 = !DISubroutineType(types: !752)
!752 = !{!283, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!755 = !DISubprogram(name: "z_timeout_remaining", scope: !222, file: !222, line: 643, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!756 = distinct !DISubprogram(name: "sys_sflist_is_empty", scope: !371, file: !371, line: 335, type: !757, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!757 = !DISubroutineType(types: !758)
!758 = !{!507, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 32)
!760 = !{!761}
!761 = !DILocalVariable(name: "list", arg: 1, scope: !756, file: !371, line: 335, type: !759)
!762 = !DILocation(line: 335, column: 55, scope: !756)
!763 = !DILocation(line: 335, column: 92, scope: !756)
!764 = !DILocation(line: 335, column: 71, scope: !756)
!765 = !DILocation(line: 335, column: 98, scope: !756)
!766 = !DILocation(line: 335, column: 63, scope: !756)
!767 = distinct !DISubprogram(name: "sys_sflist_peek_head", scope: !371, file: !371, line: 255, type: !768, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !770)
!768 = !DISubroutineType(types: !769)
!769 = !{!375, !759}
!770 = !{!771}
!771 = !DILocalVariable(name: "list", arg: 1, scope: !767, file: !371, line: 255, type: !759)
!772 = !DILocation(line: 255, column: 64, scope: !767)
!773 = !DILocation(line: 257, column: 9, scope: !767)
!774 = !DILocation(line: 257, column: 15, scope: !767)
!775 = !DILocation(line: 257, column: 2, scope: !767)
!776 = !DISubprogram(name: "z_cbvprintf_impl", scope: !510, file: !510, line: 712, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !239)
!777 = !DISubroutineType(types: !778)
!778 = !{!90, !513, !89, !107, !463, !187}
!779 = distinct !DISubprogram(name: "k_str_out", scope: !780, file: !780, line: 1537, type: !781, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!780 = !DIFile(filename: "zephyr/include/generated/syscalls/kernel.h", directory: "/home/sri/zephyrproject/zephyr/build")
!781 = !DISubroutineType(types: !782)
!782 = !{null, !418, !233}
!783 = !{!784, !785}
!784 = !DILocalVariable(name: "c", arg: 1, scope: !779, file: !780, line: 1537, type: !418)
!785 = !DILocalVariable(name: "n", arg: 2, scope: !779, file: !780, line: 1537, type: !233)
!786 = !DILocation(line: 1537, column: 37, scope: !779)
!787 = !DILocation(line: 1537, column: 47, scope: !779)
!788 = !DILocation(line: 1547, column: 2, scope: !779)
!789 = !DILocation(line: 1547, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !779, file: !780, line: 1547, column: 5)
!791 = !{i64 157750}
!792 = !DILocation(line: 1547, column: 47, scope: !790)
!793 = !DILocation(line: 1548, column: 19, scope: !779)
!794 = !DILocation(line: 1548, column: 22, scope: !779)
!795 = !DILocation(line: 1548, column: 2, scope: !779)
!796 = !DILocation(line: 1549, column: 1, scope: !779)
