; ModuleID = '../bc_files/tracing_none.bc'
source_filename = "/home/sri/zephyrproject/zephyr/subsys/tracing/tracing_none.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-arm-none-eabi"

; Function Attrs: noinline nounwind optnone
define hidden void @sys_trace_isr_enter() #0 !dbg !11 {
  ret void, !dbg !16
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_trace_isr_exit() #0 !dbg !17 {
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_trace_isr_exit_to_scheduler() #0 !dbg !19 {
  ret void, !dbg !20
}

; Function Attrs: noinline nounwind optnone
define hidden void @sys_trace_idle() #0 !dbg !21 {
  ret void, !dbg !22
}

attributes #0 = { noinline nounwind optnone "denormal-fp-math"="preserve-sign,preserve-sign" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m0" "target-features"="+armv6-m,+soft-float,+strict-align,+thumb-mode,-aes,-bf16,-cdecp0,-cdecp1,-cdecp2,-cdecp3,-cdecp4,-cdecp5,-cdecp6,-cdecp7,-crc,-crypto,-d32,-dotprod,-dsp,-fce,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-hwdiv,-hwdiv-arm,-i8mm,-lob,-mve,-mve.fp,-neon,-pacbti,-ras,-sb,-sha2,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "tracing_none.c", directory: "/home/sri/zephyrproject/zephyr/build")
!2 = !{i32 7, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"static_rwdata", i32 1}
!6 = !{i32 1, !"enumsize_buildattr", i32 1}
!7 = !{i32 1, !"armlib_unavailable", i32 0}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{!"Component: Arm Compiler for Embedded 6.20 Tool: armclang [5e9ad700]"}
!11 = distinct !DISubprogram(name: "sys_trace_isr_enter", scope: !12, file: !12, line: 8, type: !13, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!12 = !DIFile(filename: "subsys/tracing/tracing_none.c", directory: "/home/sri/zephyrproject/zephyr")
!13 = !DISubroutineType(types: !14)
!14 = !{null}
!15 = !{}
!16 = !DILocation(line: 8, column: 33, scope: !11)
!17 = distinct !DISubprogram(name: "sys_trace_isr_exit", scope: !12, file: !12, line: 10, type: !13, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!18 = !DILocation(line: 10, column: 32, scope: !17)
!19 = distinct !DISubprogram(name: "sys_trace_isr_exit_to_scheduler", scope: !12, file: !12, line: 12, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 12, column: 45, scope: !19)
!21 = distinct !DISubprogram(name: "sys_trace_idle", scope: !12, file: !12, line: 14, type: !13, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!22 = !DILocation(line: 14, column: 28, scope: !21)
