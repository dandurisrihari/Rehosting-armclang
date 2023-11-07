; ModuleID = '../bc_files/multi_heap.bc'
source_filename = "/home/sri/zephyrproject/zephyr/lib/os/multi_heap.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

%struct.sys_multi_heap = type { i32, ptr, [8 x %struct.sys_multi_heap_rec] }
%struct.sys_multi_heap_rec = type { ptr, ptr }
%struct.sys_heap = type { ptr, ptr, i32 }

; Function Attrs: noinline nounwind optnone
define hidden void @sys_multi_heap_init(ptr noundef %0, ptr noundef %1) #0 !dbg !16 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !51, metadata !DIExpression()), !dbg !52
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !53, metadata !DIExpression()), !dbg !54
  %5 = load ptr, ptr %3, align 4, !dbg !55
  %6 = getelementptr inbounds %struct.sys_multi_heap, ptr %5, i32 0, i32 0, !dbg !56
  store i32 0, ptr %6, align 4, !dbg !57
  %7 = load ptr, ptr %4, align 4, !dbg !58
  %8 = load ptr, ptr %3, align 4, !dbg !59
  %9 = getelementptr inbounds %struct.sys_multi_heap, ptr %8, i32 0, i32 1, !dbg !60
  store ptr %7, ptr %9, align 4, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone
define hidden void @sys_multi_heap_add_heap(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !63 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sys_multi_heap_rec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !66, metadata !DIExpression()), !dbg !67
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !68, metadata !DIExpression()), !dbg !69
  store ptr %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !70, metadata !DIExpression()), !dbg !71
  %13 = load ptr, ptr %5, align 4, !dbg !72
  %14 = load ptr, ptr %4, align 4, !dbg !73
  %15 = getelementptr inbounds %struct.sys_multi_heap, ptr %14, i32 0, i32 2, !dbg !74
  %16 = load ptr, ptr %4, align 4, !dbg !75
  %17 = getelementptr inbounds %struct.sys_multi_heap, ptr %16, i32 0, i32 0, !dbg !76
  %18 = load i32, ptr %17, align 4, !dbg !76
  %19 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %15, i32 0, i32 %18, !dbg !73
  %20 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %19, i32 0, i32 0, !dbg !77
  store ptr %13, ptr %20, align 4, !dbg !78
  %21 = load ptr, ptr %6, align 4, !dbg !79
  %22 = load ptr, ptr %4, align 4, !dbg !80
  %23 = getelementptr inbounds %struct.sys_multi_heap, ptr %22, i32 0, i32 2, !dbg !81
  %24 = load ptr, ptr %4, align 4, !dbg !82
  %25 = getelementptr inbounds %struct.sys_multi_heap, ptr %24, i32 0, i32 0, !dbg !83
  %26 = load i32, ptr %25, align 4, !dbg !84
  %27 = add nsw i32 %26, 1, !dbg !84
  store i32 %27, ptr %25, align 4, !dbg !84
  %28 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %23, i32 0, i32 %26, !dbg !80
  %29 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %28, i32 0, i32 1, !dbg !85
  store ptr %21, ptr %29, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %7, metadata !87, metadata !DIExpression()), !dbg !89
  store i32 0, ptr %7, align 4, !dbg !89
  br label %30, !dbg !90

30:                                               ; preds = %81, %3
  %31 = load i32, ptr %7, align 4, !dbg !91
  %32 = load ptr, ptr %4, align 4, !dbg !93
  %33 = getelementptr inbounds %struct.sys_multi_heap, ptr %32, i32 0, i32 0, !dbg !94
  %34 = load i32, ptr %33, align 4, !dbg !94
  %35 = icmp slt i32 %31, %34, !dbg !95
  br i1 %35, label %36, label %84, !dbg !96

36:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %8, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata ptr %9, metadata !100, metadata !DIExpression()), !dbg !101
  store i32 -1, ptr %9, align 4, !dbg !101
  call void @llvm.dbg.declare(metadata ptr %10, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 -1, ptr %10, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata ptr %11, metadata !104, metadata !DIExpression()), !dbg !106
  %37 = load i32, ptr %7, align 4, !dbg !107
  store i32 %37, ptr %11, align 4, !dbg !106
  br label %38, !dbg !108

38:                                               ; preds = %61, %36
  %39 = load i32, ptr %11, align 4, !dbg !109
  %40 = load ptr, ptr %4, align 4, !dbg !111
  %41 = getelementptr inbounds %struct.sys_multi_heap, ptr %40, i32 0, i32 0, !dbg !112
  %42 = load i32, ptr %41, align 4, !dbg !112
  %43 = icmp slt i32 %39, %42, !dbg !113
  br i1 %43, label %44, label %64, !dbg !114

44:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %12, metadata !115, metadata !DIExpression()), !dbg !117
  %45 = load ptr, ptr %4, align 4, !dbg !118
  %46 = getelementptr inbounds %struct.sys_multi_heap, ptr %45, i32 0, i32 2, !dbg !119
  %47 = load i32, ptr %11, align 4, !dbg !120
  %48 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %46, i32 0, i32 %47, !dbg !118
  %49 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %48, i32 0, i32 0, !dbg !121
  %50 = load ptr, ptr %49, align 4, !dbg !121
  %51 = getelementptr inbounds %struct.sys_heap, ptr %50, i32 0, i32 0, !dbg !122
  %52 = load ptr, ptr %51, align 4, !dbg !122
  %53 = ptrtoint ptr %52 to i32, !dbg !123
  store i32 %53, ptr %12, align 4, !dbg !117
  %54 = load i32, ptr %12, align 4, !dbg !124
  %55 = load i32, ptr %10, align 4, !dbg !126
  %56 = icmp ult i32 %54, %55, !dbg !127
  br i1 %56, label %57, label %60, !dbg !128

57:                                               ; preds = %44
  %58 = load i32, ptr %11, align 4, !dbg !129
  store i32 %58, ptr %9, align 4, !dbg !131
  %59 = load i32, ptr %12, align 4, !dbg !132
  store i32 %59, ptr %10, align 4, !dbg !133
  br label %60, !dbg !134

60:                                               ; preds = %57, %44
  br label %61, !dbg !135

61:                                               ; preds = %60
  %62 = load i32, ptr %11, align 4, !dbg !136
  %63 = add nsw i32 %62, 1, !dbg !136
  store i32 %63, ptr %11, align 4, !dbg !136
  br label %38, !dbg !137, !llvm.loop !138

64:                                               ; preds = %38
  %65 = load ptr, ptr %4, align 4, !dbg !140
  %66 = getelementptr inbounds %struct.sys_multi_heap, ptr %65, i32 0, i32 2, !dbg !141
  %67 = load i32, ptr %7, align 4, !dbg !142
  %68 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %66, i32 0, i32 %67, !dbg !140
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %8, ptr align 4 %68, i32 8, i1 false), !dbg !140
  %69 = load ptr, ptr %4, align 4, !dbg !143
  %70 = getelementptr inbounds %struct.sys_multi_heap, ptr %69, i32 0, i32 2, !dbg !144
  %71 = load i32, ptr %7, align 4, !dbg !145
  %72 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %70, i32 0, i32 %71, !dbg !143
  %73 = load ptr, ptr %4, align 4, !dbg !146
  %74 = getelementptr inbounds %struct.sys_multi_heap, ptr %73, i32 0, i32 2, !dbg !147
  %75 = load i32, ptr %9, align 4, !dbg !148
  %76 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %74, i32 0, i32 %75, !dbg !146
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %72, ptr align 4 %76, i32 8, i1 false), !dbg !146
  %77 = load ptr, ptr %4, align 4, !dbg !149
  %78 = getelementptr inbounds %struct.sys_multi_heap, ptr %77, i32 0, i32 2, !dbg !150
  %79 = load i32, ptr %9, align 4, !dbg !151
  %80 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %78, i32 0, i32 %79, !dbg !149
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %80, ptr align 4 %8, i32 8, i1 false), !dbg !152
  br label %81, !dbg !153

81:                                               ; preds = %64
  %82 = load i32, ptr %7, align 4, !dbg !154
  %83 = add nsw i32 %82, 1, !dbg !154
  store i32 %83, ptr %7, align 4, !dbg !154
  br label %30, !dbg !155, !llvm.loop !156

84:                                               ; preds = %30
  ret void, !dbg !158
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_multi_heap_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !159 {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !162, metadata !DIExpression()), !dbg !163
  store ptr %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !164, metadata !DIExpression()), !dbg !165
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !166, metadata !DIExpression()), !dbg !167
  %7 = load ptr, ptr %4, align 4, !dbg !168
  %8 = getelementptr inbounds %struct.sys_multi_heap, ptr %7, i32 0, i32 1, !dbg !169
  %9 = load ptr, ptr %8, align 4, !dbg !169
  %10 = load ptr, ptr %4, align 4, !dbg !170
  %11 = load ptr, ptr %5, align 4, !dbg !171
  %12 = load i32, ptr %6, align 4, !dbg !172
  %13 = call ptr %9(ptr noundef %10, ptr noundef %11, i32 noundef 0, i32 noundef %12), !dbg !168
  ret ptr %13, !dbg !173
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_multi_heap_aligned_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 !dbg !174 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !175, metadata !DIExpression()), !dbg !176
  store ptr %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !177, metadata !DIExpression()), !dbg !178
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !179, metadata !DIExpression()), !dbg !180
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !181, metadata !DIExpression()), !dbg !182
  %9 = load ptr, ptr %5, align 4, !dbg !183
  %10 = getelementptr inbounds %struct.sys_multi_heap, ptr %9, i32 0, i32 1, !dbg !184
  %11 = load ptr, ptr %10, align 4, !dbg !184
  %12 = load ptr, ptr %5, align 4, !dbg !185
  %13 = load ptr, ptr %6, align 4, !dbg !186
  %14 = load i32, ptr %7, align 4, !dbg !187
  %15 = load i32, ptr %8, align 4, !dbg !188
  %16 = call ptr %11(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15), !dbg !183
  ret ptr %16, !dbg !189
}

; Function Attrs: noinline nounwind optnone
define hidden ptr @sys_multi_heap_get_heap(ptr noundef %0, ptr noundef %1) #0 !dbg !190 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !197, metadata !DIExpression()), !dbg !198
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !199, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.declare(metadata ptr %5, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata ptr %6, metadata !203, metadata !DIExpression()), !dbg !204
  %8 = load ptr, ptr %4, align 4, !dbg !205
  %9 = ptrtoint ptr %8 to i32, !dbg !206
  store i32 %9, ptr %6, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %7, metadata !207, metadata !DIExpression()), !dbg !208
  store i32 0, ptr %7, align 4, !dbg !209
  br label %10, !dbg !211

10:                                               ; preds = %31, %2
  %11 = load i32, ptr %7, align 4, !dbg !212
  %12 = load ptr, ptr %3, align 4, !dbg !214
  %13 = getelementptr inbounds %struct.sys_multi_heap, ptr %12, i32 0, i32 0, !dbg !215
  %14 = load i32, ptr %13, align 4, !dbg !215
  %15 = icmp slt i32 %11, %14, !dbg !216
  br i1 %15, label %16, label %34, !dbg !217

16:                                               ; preds = %10
  %17 = load ptr, ptr %3, align 4, !dbg !218
  %18 = getelementptr inbounds %struct.sys_multi_heap, ptr %17, i32 0, i32 2, !dbg !220
  %19 = load i32, ptr %7, align 4, !dbg !221
  %20 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %18, i32 0, i32 %19, !dbg !218
  %21 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %20, i32 0, i32 0, !dbg !222
  %22 = load ptr, ptr %21, align 4, !dbg !222
  %23 = getelementptr inbounds %struct.sys_heap, ptr %22, i32 0, i32 0, !dbg !223
  %24 = load ptr, ptr %23, align 4, !dbg !223
  %25 = ptrtoint ptr %24 to i32, !dbg !224
  store i32 %25, ptr %5, align 4, !dbg !225
  %26 = load i32, ptr %6, align 4, !dbg !226
  %27 = load i32, ptr %5, align 4, !dbg !228
  %28 = icmp ult i32 %26, %27, !dbg !229
  br i1 %28, label %29, label %30, !dbg !230

29:                                               ; preds = %16
  br label %34, !dbg !231

30:                                               ; preds = %16
  br label %31, !dbg !233

31:                                               ; preds = %30
  %32 = load i32, ptr %7, align 4, !dbg !234
  %33 = add nsw i32 %32, 1, !dbg !234
  store i32 %33, ptr %7, align 4, !dbg !234
  br label %10, !dbg !235, !llvm.loop !236

34:                                               ; preds = %29, %10
  %35 = load ptr, ptr %3, align 4, !dbg !238
  %36 = getelementptr inbounds %struct.sys_multi_heap, ptr %35, i32 0, i32 2, !dbg !239
  %37 = load i32, ptr %7, align 4, !dbg !240
  %38 = sub nsw i32 %37, 1, !dbg !241
  %39 = getelementptr inbounds [8 x %struct.sys_multi_heap_rec], ptr %36, i32 0, i32 %38, !dbg !238
  ret ptr %39, !dbg !242
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_multi_heap_free(ptr noundef %0, ptr noundef %1) #0 !dbg !243 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !246, metadata !DIExpression()), !dbg !247
  store ptr %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata ptr %5, metadata !250, metadata !DIExpression()), !dbg !251
  %6 = load ptr, ptr %3, align 4, !dbg !252
  %7 = load ptr, ptr %4, align 4, !dbg !253
  %8 = call ptr @sys_multi_heap_get_heap(ptr noundef %6, ptr noundef %7), !dbg !254
  store ptr %8, ptr %5, align 4, !dbg !255
  %9 = load ptr, ptr %5, align 4, !dbg !256
  %10 = icmp ne ptr %9, null, !dbg !258
  br i1 %10, label %11, label %16, !dbg !259

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4, !dbg !260
  %13 = getelementptr inbounds %struct.sys_multi_heap_rec, ptr %12, i32 0, i32 0, !dbg !262
  %14 = load ptr, ptr %13, align 4, !dbg !262
  %15 = load ptr, ptr %4, align 4, !dbg !263
  call void @sys_heap_free(ptr noundef %14, ptr noundef %15), !dbg !264
  br label %16, !dbg !265

16:                                               ; preds = %11, %2
  ret void, !dbg !266
}

declare void @sys_heap_free(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "multi_heap.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !4, line: 102, baseType: !5)
!4 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/bin/../include/stdint.h", directory: "")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 1, !"static_rwdata", i32 1}
!11 = !{i32 1, !"enumsize_buildattr", i32 1}
!12 = !{i32 1, !"armlib_unavailable", i32 0}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!16 = distinct !DISubprogram(name: "sys_multi_heap_init", scope: !17, file: !17, line: 9, type: !18, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!17 = !DIFile(filename: "lib/os/multi_heap.c", directory: "/home/sri/zephyrproject/zephyr")
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !27}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 32)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_multi_heap", file: !22, line: 60, size: 576, elements: !23)
!22 = !DIFile(filename: "include/zephyr/sys/multi_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!23 = !{!24, !26, !33}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nheaps", scope: !21, file: !22, line: 61, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !21, file: !22, line: 62, baseType: !27, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_multi_heap_fn_t", file: !22, line: 51, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 32)
!29 = !DISubroutineType(types: !30)
!30 = !{!6, !20, !6, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !5)
!32 = !DIFile(filename: "/opt/arm/developmentstudio-2023.0/sw/ARMCompiler6.20/lib/clang/17/include/stddef.h", directory: "")
!33 = !DIDerivedType(tag: DW_TAG_member, name: "heaps", scope: !21, file: !22, line: 63, baseType: !34, size: 512, offset: 64)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !48)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_multi_heap_rec", file: !22, line: 55, size: 64, elements: !36)
!36 = !{!37, !47}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !35, file: !22, line: 56, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 32)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sys_heap", file: !40, line: 56, size: 96, elements: !41)
!40 = !DIFile(filename: "include/zephyr/sys/sys_heap.h", directory: "/home/sri/zephyrproject/zephyr")
!41 = !{!42, !45, !46}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "heap", scope: !39, file: !40, line: 57, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 32)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_heap", file: !40, line: 57, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "init_mem", scope: !39, file: !40, line: 58, baseType: !6, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes", scope: !39, file: !40, line: 59, baseType: !31, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !35, file: !22, line: 57, baseType: !6, size: 32, offset: 32)
!48 = !{!49}
!49 = !DISubrange(count: 8)
!50 = !{}
!51 = !DILocalVariable(name: "heap", arg: 1, scope: !16, file: !17, line: 9, type: !20)
!52 = !DILocation(line: 9, column: 49, scope: !16)
!53 = !DILocalVariable(name: "choice_fn", arg: 2, scope: !16, file: !17, line: 9, type: !27)
!54 = !DILocation(line: 9, column: 75, scope: !16)
!55 = !DILocation(line: 11, column: 2, scope: !16)
!56 = !DILocation(line: 11, column: 8, scope: !16)
!57 = !DILocation(line: 11, column: 15, scope: !16)
!58 = !DILocation(line: 12, column: 17, scope: !16)
!59 = !DILocation(line: 12, column: 2, scope: !16)
!60 = !DILocation(line: 12, column: 8, scope: !16)
!61 = !DILocation(line: 12, column: 15, scope: !16)
!62 = !DILocation(line: 13, column: 1, scope: !16)
!63 = distinct !DISubprogram(name: "sys_multi_heap_add_heap", scope: !17, file: !17, line: 15, type: !64, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !20, !38, !6}
!66 = !DILocalVariable(name: "mheap", arg: 1, scope: !63, file: !17, line: 15, type: !20)
!67 = !DILocation(line: 15, column: 53, scope: !63)
!68 = !DILocalVariable(name: "heap", arg: 2, scope: !63, file: !17, line: 16, type: !38)
!69 = !DILocation(line: 16, column: 21, scope: !63)
!70 = !DILocalVariable(name: "user_data", arg: 3, scope: !63, file: !17, line: 16, type: !6)
!71 = !DILocation(line: 16, column: 33, scope: !63)
!72 = !DILocation(line: 20, column: 37, scope: !63)
!73 = !DILocation(line: 20, column: 2, scope: !63)
!74 = !DILocation(line: 20, column: 9, scope: !63)
!75 = !DILocation(line: 20, column: 15, scope: !63)
!76 = !DILocation(line: 20, column: 22, scope: !63)
!77 = !DILocation(line: 20, column: 30, scope: !63)
!78 = !DILocation(line: 20, column: 35, scope: !63)
!79 = !DILocation(line: 21, column: 44, scope: !63)
!80 = !DILocation(line: 21, column: 2, scope: !63)
!81 = !DILocation(line: 21, column: 9, scope: !63)
!82 = !DILocation(line: 21, column: 15, scope: !63)
!83 = !DILocation(line: 21, column: 22, scope: !63)
!84 = !DILocation(line: 21, column: 28, scope: !63)
!85 = !DILocation(line: 21, column: 32, scope: !63)
!86 = !DILocation(line: 21, column: 42, scope: !63)
!87 = !DILocalVariable(name: "i", scope: !88, file: !17, line: 24, type: !25)
!88 = distinct !DILexicalBlock(scope: !63, file: !17, line: 24, column: 2)
!89 = !DILocation(line: 24, column: 11, scope: !88)
!90 = !DILocation(line: 24, column: 7, scope: !88)
!91 = !DILocation(line: 24, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !17, line: 24, column: 2)
!93 = !DILocation(line: 24, column: 22, scope: !92)
!94 = !DILocation(line: 24, column: 29, scope: !92)
!95 = !DILocation(line: 24, column: 20, scope: !92)
!96 = !DILocation(line: 24, column: 2, scope: !88)
!97 = !DILocalVariable(name: "swap", scope: !98, file: !17, line: 25, type: !35)
!98 = distinct !DILexicalBlock(scope: !92, file: !17, line: 24, column: 42)
!99 = !DILocation(line: 25, column: 29, scope: !98)
!100 = !DILocalVariable(name: "lowest", scope: !98, file: !17, line: 26, type: !25)
!101 = !DILocation(line: 26, column: 7, scope: !98)
!102 = !DILocalVariable(name: "lowest_addr", scope: !98, file: !17, line: 27, type: !3)
!103 = !DILocation(line: 27, column: 13, scope: !98)
!104 = !DILocalVariable(name: "j", scope: !105, file: !17, line: 29, type: !25)
!105 = distinct !DILexicalBlock(scope: !98, file: !17, line: 29, column: 3)
!106 = !DILocation(line: 29, column: 12, scope: !105)
!107 = !DILocation(line: 29, column: 16, scope: !105)
!108 = !DILocation(line: 29, column: 8, scope: !105)
!109 = !DILocation(line: 29, column: 19, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !17, line: 29, column: 3)
!111 = !DILocation(line: 29, column: 23, scope: !110)
!112 = !DILocation(line: 29, column: 30, scope: !110)
!113 = !DILocation(line: 29, column: 21, scope: !110)
!114 = !DILocation(line: 29, column: 3, scope: !105)
!115 = !DILocalVariable(name: "haddr", scope: !116, file: !17, line: 30, type: !3)
!116 = distinct !DILexicalBlock(scope: !110, file: !17, line: 29, column: 43)
!117 = !DILocation(line: 30, column: 14, scope: !116)
!118 = !DILocation(line: 30, column: 33, scope: !116)
!119 = !DILocation(line: 30, column: 40, scope: !116)
!120 = !DILocation(line: 30, column: 46, scope: !116)
!121 = !DILocation(line: 30, column: 49, scope: !116)
!122 = !DILocation(line: 30, column: 55, scope: !116)
!123 = !DILocation(line: 30, column: 22, scope: !116)
!124 = !DILocation(line: 32, column: 8, scope: !125)
!125 = distinct !DILexicalBlock(scope: !116, file: !17, line: 32, column: 8)
!126 = !DILocation(line: 32, column: 16, scope: !125)
!127 = !DILocation(line: 32, column: 14, scope: !125)
!128 = !DILocation(line: 32, column: 8, scope: !116)
!129 = !DILocation(line: 33, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !17, line: 32, column: 29)
!131 = !DILocation(line: 33, column: 12, scope: !130)
!132 = !DILocation(line: 34, column: 19, scope: !130)
!133 = !DILocation(line: 34, column: 17, scope: !130)
!134 = !DILocation(line: 35, column: 4, scope: !130)
!135 = !DILocation(line: 36, column: 3, scope: !116)
!136 = !DILocation(line: 29, column: 39, scope: !110)
!137 = !DILocation(line: 29, column: 3, scope: !110)
!138 = distinct !{!138, !114, !139}
!139 = !DILocation(line: 36, column: 3, scope: !105)
!140 = !DILocation(line: 37, column: 10, scope: !98)
!141 = !DILocation(line: 37, column: 17, scope: !98)
!142 = !DILocation(line: 37, column: 23, scope: !98)
!143 = !DILocation(line: 38, column: 3, scope: !98)
!144 = !DILocation(line: 38, column: 10, scope: !98)
!145 = !DILocation(line: 38, column: 16, scope: !98)
!146 = !DILocation(line: 38, column: 21, scope: !98)
!147 = !DILocation(line: 38, column: 28, scope: !98)
!148 = !DILocation(line: 38, column: 34, scope: !98)
!149 = !DILocation(line: 39, column: 3, scope: !98)
!150 = !DILocation(line: 39, column: 10, scope: !98)
!151 = !DILocation(line: 39, column: 16, scope: !98)
!152 = !DILocation(line: 39, column: 26, scope: !98)
!153 = !DILocation(line: 40, column: 2, scope: !98)
!154 = !DILocation(line: 24, column: 38, scope: !92)
!155 = !DILocation(line: 24, column: 2, scope: !92)
!156 = distinct !{!156, !96, !157}
!157 = !DILocation(line: 40, column: 2, scope: !88)
!158 = !DILocation(line: 41, column: 1, scope: !63)
!159 = distinct !DISubprogram(name: "sys_multi_heap_alloc", scope: !17, file: !17, line: 43, type: !160, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!160 = !DISubroutineType(types: !161)
!161 = !{!6, !20, !6, !31}
!162 = !DILocalVariable(name: "mheap", arg: 1, scope: !159, file: !17, line: 43, type: !20)
!163 = !DILocation(line: 43, column: 51, scope: !159)
!164 = !DILocalVariable(name: "cfg", arg: 2, scope: !159, file: !17, line: 43, type: !6)
!165 = !DILocation(line: 43, column: 64, scope: !159)
!166 = !DILocalVariable(name: "bytes", arg: 3, scope: !159, file: !17, line: 43, type: !31)
!167 = !DILocation(line: 43, column: 76, scope: !159)
!168 = !DILocation(line: 45, column: 9, scope: !159)
!169 = !DILocation(line: 45, column: 16, scope: !159)
!170 = !DILocation(line: 45, column: 23, scope: !159)
!171 = !DILocation(line: 45, column: 30, scope: !159)
!172 = !DILocation(line: 45, column: 38, scope: !159)
!173 = !DILocation(line: 45, column: 2, scope: !159)
!174 = distinct !DISubprogram(name: "sys_multi_heap_aligned_alloc", scope: !17, file: !17, line: 48, type: !29, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!175 = !DILocalVariable(name: "mheap", arg: 1, scope: !174, file: !17, line: 48, type: !20)
!176 = !DILocation(line: 48, column: 59, scope: !174)
!177 = !DILocalVariable(name: "cfg", arg: 2, scope: !174, file: !17, line: 49, type: !6)
!178 = !DILocation(line: 49, column: 14, scope: !174)
!179 = !DILocalVariable(name: "align", arg: 3, scope: !174, file: !17, line: 49, type: !31)
!180 = !DILocation(line: 49, column: 26, scope: !174)
!181 = !DILocalVariable(name: "bytes", arg: 4, scope: !174, file: !17, line: 49, type: !31)
!182 = !DILocation(line: 49, column: 40, scope: !174)
!183 = !DILocation(line: 51, column: 9, scope: !174)
!184 = !DILocation(line: 51, column: 16, scope: !174)
!185 = !DILocation(line: 51, column: 23, scope: !174)
!186 = !DILocation(line: 51, column: 30, scope: !174)
!187 = !DILocation(line: 51, column: 35, scope: !174)
!188 = !DILocation(line: 51, column: 42, scope: !174)
!189 = !DILocation(line: 51, column: 2, scope: !174)
!190 = distinct !DISubprogram(name: "sys_multi_heap_get_heap", scope: !17, file: !17, line: 54, type: !191, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!191 = !DISubroutineType(types: !192)
!192 = !{!193, !195, !6}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!197 = !DILocalVariable(name: "mheap", arg: 1, scope: !190, file: !17, line: 54, type: !195)
!198 = !DILocation(line: 54, column: 87, scope: !190)
!199 = !DILocalVariable(name: "addr", arg: 2, scope: !190, file: !17, line: 55, type: !6)
!200 = !DILocation(line: 55, column: 15, scope: !190)
!201 = !DILocalVariable(name: "haddr", scope: !190, file: !17, line: 57, type: !3)
!202 = !DILocation(line: 57, column: 12, scope: !190)
!203 = !DILocalVariable(name: "baddr", scope: !190, file: !17, line: 57, type: !3)
!204 = !DILocation(line: 57, column: 19, scope: !190)
!205 = !DILocation(line: 57, column: 39, scope: !190)
!206 = !DILocation(line: 57, column: 27, scope: !190)
!207 = !DILocalVariable(name: "i", scope: !190, file: !17, line: 58, type: !25)
!208 = !DILocation(line: 58, column: 6, scope: !190)
!209 = !DILocation(line: 68, column: 9, scope: !210)
!210 = distinct !DILexicalBlock(scope: !190, file: !17, line: 68, column: 2)
!211 = !DILocation(line: 68, column: 7, scope: !210)
!212 = !DILocation(line: 68, column: 14, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !17, line: 68, column: 2)
!214 = !DILocation(line: 68, column: 18, scope: !213)
!215 = !DILocation(line: 68, column: 25, scope: !213)
!216 = !DILocation(line: 68, column: 16, scope: !213)
!217 = !DILocation(line: 68, column: 2, scope: !210)
!218 = !DILocation(line: 69, column: 22, scope: !219)
!219 = distinct !DILexicalBlock(scope: !213, file: !17, line: 68, column: 38)
!220 = !DILocation(line: 69, column: 29, scope: !219)
!221 = !DILocation(line: 69, column: 35, scope: !219)
!222 = !DILocation(line: 69, column: 38, scope: !219)
!223 = !DILocation(line: 69, column: 44, scope: !219)
!224 = !DILocation(line: 69, column: 11, scope: !219)
!225 = !DILocation(line: 69, column: 9, scope: !219)
!226 = !DILocation(line: 70, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !219, file: !17, line: 70, column: 7)
!228 = !DILocation(line: 70, column: 15, scope: !227)
!229 = !DILocation(line: 70, column: 13, scope: !227)
!230 = !DILocation(line: 70, column: 7, scope: !219)
!231 = !DILocation(line: 71, column: 4, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !17, line: 70, column: 22)
!233 = !DILocation(line: 73, column: 2, scope: !219)
!234 = !DILocation(line: 68, column: 34, scope: !213)
!235 = !DILocation(line: 68, column: 2, scope: !213)
!236 = distinct !{!236, !217, !237}
!237 = !DILocation(line: 73, column: 2, scope: !210)
!238 = !DILocation(line: 79, column: 10, scope: !190)
!239 = !DILocation(line: 79, column: 17, scope: !190)
!240 = !DILocation(line: 79, column: 23, scope: !190)
!241 = !DILocation(line: 79, column: 24, scope: !190)
!242 = !DILocation(line: 79, column: 2, scope: !190)
!243 = distinct !DISubprogram(name: "sys_multi_heap_free", scope: !17, file: !17, line: 83, type: !244, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !50)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !20, !6}
!246 = !DILocalVariable(name: "mheap", arg: 1, scope: !243, file: !17, line: 83, type: !20)
!247 = !DILocation(line: 83, column: 49, scope: !243)
!248 = !DILocalVariable(name: "block", arg: 2, scope: !243, file: !17, line: 83, type: !6)
!249 = !DILocation(line: 83, column: 62, scope: !243)
!250 = !DILocalVariable(name: "heap", scope: !243, file: !17, line: 85, type: !193)
!251 = !DILocation(line: 85, column: 35, scope: !243)
!252 = !DILocation(line: 87, column: 33, scope: !243)
!253 = !DILocation(line: 87, column: 40, scope: !243)
!254 = !DILocation(line: 87, column: 9, scope: !243)
!255 = !DILocation(line: 87, column: 7, scope: !243)
!256 = !DILocation(line: 89, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !243, file: !17, line: 89, column: 6)
!258 = !DILocation(line: 89, column: 11, scope: !257)
!259 = !DILocation(line: 89, column: 6, scope: !243)
!260 = !DILocation(line: 90, column: 17, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !17, line: 89, column: 26)
!262 = !DILocation(line: 90, column: 23, scope: !261)
!263 = !DILocation(line: 90, column: 29, scope: !261)
!264 = !DILocation(line: 90, column: 3, scope: !261)
!265 = !DILocation(line: 91, column: 2, scope: !261)
!266 = !DILocation(line: 92, column: 1, scope: !243)
