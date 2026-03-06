.class Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsPullAtomCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 557
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 5
    .param p1, "atomTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;)I"
        }
    .end annotation

    .line 560
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatsPull-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 564
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 853
    :try_start_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tagId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    throw v2

    .line 856
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :catchall_0
    move-exception v2

    goto/16 :goto_0

    .line 851
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPressureStallInformation(ILjava/util/List;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 851
    return v2

    .line 566
    :sswitch_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 568
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->pullDataBytesTransfer(Ljava/util/List;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    return v2

    .line 849
    :sswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullCachedAppsHighWatermark(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 849
    return v2

    .line 630
    :sswitch_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmUwbActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 631
    :try_start_4
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullUwbActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    return v3

    .line 632
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_6
    throw v3

    .line 847
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHdrCapabilities(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 847
    return v2

    .line 728
    :sswitch_5
    :try_start_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 729
    :try_start_8
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessAssociationLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 729
    return v3

    .line 730
    :catchall_2
    move-exception v3

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a
    throw v3

    .line 724
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_6
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 725
    :try_start_b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcessStateLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 725
    return v3

    .line 726
    :catchall_3
    move-exception v3

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_d
    throw v3

    .line 845
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_7
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullPendingIntentsPerPackage(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 845
    return v2

    .line 843
    :sswitch_8
    :try_start_e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemServerPinnerStats(ILjava/util/List;)I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 843
    return v2

    .line 841
    :sswitch_9
    :try_start_f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullMediaCapabilitiesStats(ILjava/util/List;)I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 841
    return v2

    .line 839
    :sswitch_a
    :try_start_10
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityFloatingMenuStatsLocked(ILjava/util/List;)I

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 839
    return v2

    .line 837
    :sswitch_b
    :try_start_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAccessibilityShortcutStatsLocked(Ljava/util/List;)I

    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 837
    return v2

    .line 668
    :sswitch_c
    :try_start_12
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullVmStat(ILjava/util/List;)I

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 668
    return v2

    .line 823
    :sswitch_d
    :try_start_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmInstalledIncrementalPackagesLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 824
    :try_start_14
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullInstalledIncrementalPackagesLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 824
    return v3

    .line 825
    :catchall_4
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_16
    throw v3

    .line 664
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessDmabufMemory(ILjava/util/List;)I

    move-result v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    return v2

    .line 835
    :sswitch_f
    :try_start_17
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKeystoreAtoms(ILjava/util/List;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 835
    return v2

    .line 778
    :sswitch_10
    :try_start_18
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDetectionInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 779
    :try_start_19
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDetectorStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 779
    return v3

    .line 780
    :catchall_5
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1b
    throw v3

    .line 608
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_11
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerThreadGroupCluster(ILjava/util/List;)I

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 608
    return v2

    .line 600
    :sswitch_12
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 601
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuCyclesPerUidClusterLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    return v3

    .line 602
    :catchall_6
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_1f
    throw v3

    .line 590
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_13
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerClusterFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 591
    :try_start_20
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerClusterFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 591
    return v3

    .line 592
    :catchall_7
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_22
    throw v3

    .line 666
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_14
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemMemory(ILjava/util/List;)I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    return v2

    .line 819
    :sswitch_15
    :try_start_23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSettingsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 820
    :try_start_24
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSettingsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 820
    return v3

    .line 821
    :catchall_8
    move-exception v3

    :try_start_25
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_26
    throw v3

    .line 815
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_16
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 816
    :try_start_27
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 816
    return v3

    .line 817
    :catchall_9
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_29
    throw v3

    .line 656
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_17
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    .line 657
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 657
    return v3

    .line 658
    :catchall_a
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2c
    throw v3

    .line 798
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_18
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRuntimeAppOpAccessMessageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 799
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRuntimeAppOpAccessMessageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 799
    return v3

    .line 800
    :catchall_b
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_2f
    throw v3

    .line 802
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_19
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNotificationRemoteViewsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_0

    .line 803
    :try_start_30
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullNotificationRemoteViewsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 803
    return v3

    .line 804
    :catchall_c
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_32
    throw v3

    .line 650
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_1a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemorySnapshot(ILjava/util/List;)I

    move-result v2
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_0

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 650
    return v2

    .line 660
    :sswitch_1b
    :try_start_33
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_0

    .line 661
    :try_start_34
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 661
    return v3

    .line 662
    :catchall_d
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_36
    throw v3

    .line 794
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_1c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    .line 795
    :try_start_37
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppOpsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 795
    return v3

    .line 796
    :catchall_e
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_39
    throw v3

    .line 674
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_1d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCooldownDeviceLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    .line 675
    :try_start_3a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCooldownDeviceLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 675
    return v3

    .line 676
    :catchall_f
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3c
    throw v3

    .line 790
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_1e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmFaceSettingsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    .line 791
    :try_start_3d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullFaceSettingsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_10

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 791
    return v3

    .line 792
    :catchall_10
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_10

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_3f
    throw v3

    .line 786
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_1f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppsOnExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_0

    .line 787
    :try_start_40
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppsOnExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_11

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 787
    return v3

    .line 788
    :catchall_11
    move-exception v3

    :try_start_41
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_11

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_42
    throw v3

    .line 652
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_20
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemIonHeapSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    .line 653
    :try_start_43
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemIonHeapSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_12

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    return v3

    .line 654
    :catchall_12
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_12

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_45
    throw v3

    .line 782
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_21
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmExternalStorageInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_0

    .line 783
    :try_start_46
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullExternalStorageInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_13

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 783
    return v3

    .line 784
    :catchall_13
    move-exception v3

    :try_start_47
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_13

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_48
    throw v3

    .line 774
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_22
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTimeZoneDataInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_0

    .line 775
    :try_start_49
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTimeZoneDataInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_14

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 775
    return v3

    .line 776
    :catchall_14
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_14

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4b
    throw v3

    .line 770
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_23
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDangerousPermissionStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_0

    .line 771
    :try_start_4c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDangerousPermissionStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_15

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 771
    return v3

    .line 772
    :catchall_15
    move-exception v3

    :try_start_4d
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_15

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_4e
    throw v3

    .line 764
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_24
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmRoleHolderLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_0

    .line 765
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullRoleHolderLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_16

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 765
    return v3

    .line 766
    :catchall_16
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_16

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_51
    throw v3

    .line 711
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_25
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_0

    .line 712
    :try_start_52
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x4

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_17

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    return v3

    .line 714
    :catchall_17
    move-exception v3

    :try_start_53
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_17

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_54
    throw v3

    .line 756
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_26
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugFailingElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_0

    .line 757
    :try_start_55
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugFailingElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_18

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 757
    return v3

    .line 758
    :catchall_18
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_18

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_57
    throw v3

    .line 752
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_27
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDebugElapsedClockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_0

    .line 753
    :try_start_58
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDebugElapsedClockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_19

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 753
    return v3

    .line 754
    :catchall_19
    move-exception v3

    :try_start_59
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_19

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_5a
    throw v3

    .line 760
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_28
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBuildInformationLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_0

    .line 761
    :try_start_5b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBuildInformationLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    return v3

    .line 762
    :catchall_1a
    move-exception v3

    :try_start_5c
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_1a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_5d
    throw v3

    .line 646
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_29
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryHighWaterMarkLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_0

    .line 647
    :try_start_5e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryHighWaterMarkLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 647
    return v3

    .line 648
    :catchall_1b
    move-exception v3

    :try_start_5f
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_1b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_60
    throw v3

    .line 748
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDeviceCalculatedPowerUseLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_0

    .line 749
    :try_start_61
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDeviceCalculatedPowerUseLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_1c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    return v3

    .line 750
    :catchall_1c
    move-exception v3

    :try_start_62
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_63
    throw v3

    .line 744
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerThreadFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_0

    .line 745
    :try_start_64
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerThreadFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    return v3

    .line 746
    :catchall_1d
    move-exception v3

    :try_start_65
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_1d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_66
    throw v3

    .line 740
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessCpuTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_0

    .line 741
    :try_start_67
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessCpuTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_1e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 741
    return v3

    .line 742
    :catchall_1e
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_1e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_69
    throw v3

    .line 720
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_0

    .line 721
    :try_start_6a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_1f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 721
    return v3

    .line 722
    :catchall_1f
    move-exception v3

    :try_start_6b
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_1f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_6c
    throw v3

    .line 736
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmPowerProfileLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_0

    .line 737
    :try_start_6d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullPowerProfileLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_20

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 737
    return v3

    .line 738
    :catchall_20
    move-exception v3

    :try_start_6e
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_20

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_6f
    throw v3

    .line 732
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_2f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskIoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_0

    .line 733
    :try_start_70
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskIOLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_21

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 733
    return v3

    .line 734
    :catchall_21
    move-exception v3

    :try_start_71
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_21

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_72
    throw v3

    .line 706
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_30
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmNumBiometricsEnrolledLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_0

    .line 707
    :try_start_73
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    const/4 v4, 0x1

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullNumBiometricsEnrolledLocked(Lcom/android/server/stats/pull/StatsPullAtomService;IILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_22

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    return v3

    .line 709
    :catchall_22
    move-exception v3

    :try_start_74
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_22

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_75
    throw v3

    .line 716
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_31
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_0

    .line 717
    :try_start_76
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullProcStatsLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_23

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 717
    return v3

    .line 718
    :catchall_23
    move-exception v3

    :try_start_77
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_23

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_78
    throw v3

    .line 702
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_32
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCategorySizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_0

    .line 703
    :try_start_79
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCategorySizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_24

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 703
    return v3

    .line 704
    :catchall_24
    move-exception v3

    :try_start_7a
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_24

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_7b
    throw v3

    .line 698
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_33
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppSizeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_0

    .line 699
    :try_start_7c
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullAppSizeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_25

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 699
    return v3

    .line 700
    :catchall_25
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_25

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_7e
    throw v3

    .line 694
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_34
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDirectoryUsageLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_0

    .line 695
    :try_start_7f
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDirectoryUsageLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_26

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 695
    return v3

    .line 696
    :catchall_26
    move-exception v3

    :try_start_80
    monitor-exit v2
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_26

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_81
    throw v3

    .line 690
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_35
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDiskStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_0

    .line 691
    :try_start_82
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullDiskStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_27

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 691
    return v3

    .line 692
    :catchall_27
    move-exception v3

    :try_start_83
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_27

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_84
    throw v3

    .line 686
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_36
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmLooperStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_0

    .line 687
    :try_start_85
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullLooperStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_28

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 687
    return v3

    .line 688
    :catchall_28
    move-exception v3

    :try_start_86
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_28

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_87
    throw v3

    .line 682
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_37
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsExceptionsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_0

    .line 683
    :try_start_88
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsExceptionsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_29

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 683
    return v3

    .line 684
    :catchall_29
    move-exception v3

    :try_start_89
    monitor-exit v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_29

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_8a
    throw v3

    .line 678
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_38
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBinderCallsStatsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_0

    .line 679
    :try_start_8b
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBinderCallsStatsLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2a

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 679
    return v3

    .line 680
    :catchall_2a
    move-exception v3

    :try_start_8c
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_2a

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_8d
    throw v3

    .line 670
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_39
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmTemperatureLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_0

    .line 671
    :try_start_8e
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullTemperatureLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_2b

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 671
    return v3

    .line 672
    :catchall_2b
    move-exception v3

    :try_start_8f
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_2b

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_90
    throw v3

    .line 811
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3a
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmHealthHalLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_0

    .line 812
    :try_start_91
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullHealthHalLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_2c

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 812
    return v3

    .line 813
    :catchall_2c
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_2c

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_93
    throw v3

    .line 614
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3b
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuClusterTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_0

    .line 615
    :try_start_94
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuClusterTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_2d

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 615
    return v3

    .line 616
    :catchall_2d
    move-exception v3

    :try_start_95
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_2d

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_96
    throw v3

    .line 610
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3c
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuActiveTimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_0

    .line 611
    :try_start_97
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuActiveTimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_2e

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    return v3

    .line 612
    :catchall_2e
    move-exception v3

    :try_start_98
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_2e

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_99
    throw v3

    .line 638
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3d
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemUptimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_0

    .line 639
    :try_start_9a
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemUptimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2f

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 639
    return v3

    .line 640
    :catchall_2f
    move-exception v3

    :try_start_9b
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_2f

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9c
    throw v3

    .line 634
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3e
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmSystemElapsedRealtimeLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_0

    .line 635
    :try_start_9d
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullSystemElapsedRealtimeLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_30

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    return v3

    .line 636
    :catchall_30
    move-exception v3

    :try_start_9e
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_30

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_9f
    throw v3

    .line 642
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_3f
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmProcessMemoryStateLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_0

    .line 643
    :try_start_a0
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullProcessMemoryStateLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_31

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 643
    return v3

    .line 644
    :catchall_31
    move-exception v3

    :try_start_a1
    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_31

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a2
    throw v3

    .line 622
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_40
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmModemActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_0

    .line 623
    :try_start_a3
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullModemActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_32

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 623
    return v3

    .line 624
    :catchall_32
    move-exception v3

    :try_start_a4
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_32

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a5
    throw v3

    .line 618
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_41
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmWifiActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_0

    .line 619
    :try_start_a6
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullWifiActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_33

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    return v3

    .line 620
    :catchall_33
    move-exception v3

    :try_start_a7
    monitor-exit v2
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_33

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_a8
    throw v3

    .line 604
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_42
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidFreqLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a8
    .catchall {:try_start_a8 .. :try_end_a8} :catchall_0

    .line 605
    :try_start_a9
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidFreqLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_34

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 605
    return v3

    .line 606
    :catchall_34
    move-exception v3

    :try_start_aa
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_aa .. :try_end_aa} :catchall_34

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_ab
    throw v3

    .line 594
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_43
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmCpuTimePerUidLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ab
    .catchall {:try_start_ab .. :try_end_ab} :catchall_0

    .line 595
    :try_start_ac
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullCpuTimePerUidLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ac .. :try_end_ac} :catchall_35

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 595
    return v3

    .line 596
    :catchall_35
    move-exception v3

    :try_start_ad
    monitor-exit v2
    :try_end_ad
    .catchall {:try_start_ad .. :try_end_ad} :catchall_35

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_ae
    throw v3

    .line 626
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_44
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothActivityInfoLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_ae
    .catchall {:try_start_ae .. :try_end_ae} :catchall_0

    .line 627
    :try_start_af
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothActivityInfoLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_af .. :try_end_af} :catchall_36

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 627
    return v3

    .line 628
    :catchall_36
    move-exception v3

    :try_start_b0
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_b0 .. :try_end_b0} :catchall_36

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_b1
    throw v3

    .line 582
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_45
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmBluetoothBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b1
    .catchall {:try_start_b1 .. :try_end_b1} :catchall_0

    .line 583
    :try_start_b2
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullBluetoothBytesTransferLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b2 .. :try_end_b2} :catchall_37

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    return v3

    .line 584
    :catchall_37
    move-exception v3

    :try_start_b3
    monitor-exit v2
    :try_end_b3
    .catchall {:try_start_b3 .. :try_end_b3} :catchall_37

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_b4
    throw v3

    .line 586
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :sswitch_46
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmKernelWakelockLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b4
    .catchall {:try_start_b4 .. :try_end_b4} :catchall_0

    .line 587
    :try_start_b5
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->pullKernelWakelockLocked(ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_b5 .. :try_end_b5} :catchall_38

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 587
    return v3

    .line 588
    :catchall_38
    move-exception v3

    :try_start_b6
    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_b6 .. :try_end_b6} :catchall_38

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_b7
    throw v3

    .line 578
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :cond_1
    :sswitch_47
    iget-object v2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmDataBytesTransferLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b7
    .catchall {:try_start_b7 .. :try_end_b7} :catchall_0

    .line 579
    :try_start_b8
    iget-object v3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v3, p1, p2}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mpullDataBytesTransferLocked(Lcom/android/server/stats/pull/StatsPullAtomService;ILjava/util/List;)I

    move-result v3

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b8 .. :try_end_b8} :catchall_39

    .line 856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 579
    return v3

    .line 580
    :catchall_39
    move-exception v3

    :try_start_b9
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b9 .. :try_end_b9} :catchall_39

    .end local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .end local p1    # "atomTag":I
    .end local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :try_start_ba
    throw v3
    :try_end_ba
    .catchall {:try_start_ba .. :try_end_ba} :catchall_0

    .line 856
    .restart local p0    # "this":Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomCallbackImpl;
    .restart local p1    # "atomTag":I
    .restart local p2    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 857
    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_47
        0x2711 -> :sswitch_47
        0x2712 -> :sswitch_47
        0x2713 -> :sswitch_47
        0x2714 -> :sswitch_46
        0x2716 -> :sswitch_45
        0x2717 -> :sswitch_44
        0x2719 -> :sswitch_43
        0x271a -> :sswitch_42
        0x271b -> :sswitch_41
        0x271c -> :sswitch_40
        0x271d -> :sswitch_3f
        0x271e -> :sswitch_3e
        0x271f -> :sswitch_3d
        0x2720 -> :sswitch_3c
        0x2721 -> :sswitch_3b
        0x2723 -> :sswitch_3a
        0x2724 -> :sswitch_3a
        0x2725 -> :sswitch_39
        0x2726 -> :sswitch_38
        0x2727 -> :sswitch_37
        0x2728 -> :sswitch_36
        0x2729 -> :sswitch_35
        0x272a -> :sswitch_34
        0x272b -> :sswitch_33
        0x272c -> :sswitch_32
        0x272d -> :sswitch_31
        0x272e -> :sswitch_3a
        0x272f -> :sswitch_30
        0x2730 -> :sswitch_2f
        0x2731 -> :sswitch_2e
        0x2732 -> :sswitch_2d
        0x2733 -> :sswitch_2c
        0x2735 -> :sswitch_2b
        0x2737 -> :sswitch_2a
        0x273a -> :sswitch_29
        0x273b -> :sswitch_3a
        0x273c -> :sswitch_28
        0x273d -> :sswitch_3a
        0x273e -> :sswitch_27
        0x273f -> :sswitch_26
        0x2740 -> :sswitch_25
        0x2741 -> :sswitch_24
        0x2742 -> :sswitch_23
        0x2744 -> :sswitch_22
        0x2745 -> :sswitch_21
        0x2748 -> :sswitch_20
        0x2749 -> :sswitch_1f
        0x274a -> :sswitch_1e
        0x274b -> :sswitch_1d
        0x274c -> :sswitch_1c
        0x274d -> :sswitch_1b
        0x2750 -> :sswitch_1a
        0x2752 -> :sswitch_19
        0x2753 -> :sswitch_23
        0x2755 -> :sswitch_18
        0x2756 -> :sswitch_17
        0x275b -> :sswitch_16
        0x2760 -> :sswitch_15
        0x2762 -> :sswitch_47
        0x2763 -> :sswitch_47
        0x276c -> :sswitch_14
        0x276f -> :sswitch_13
        0x2770 -> :sswitch_12
        0x2772 -> :sswitch_11
        0x2774 -> :sswitch_47
        0x2776 -> :sswitch_10
        0x2777 -> :sswitch_f
        0x2779 -> :sswitch_e
        0x2782 -> :sswitch_d
        0x2785 -> :sswitch_c
        0x2786 -> :sswitch_f
        0x2787 -> :sswitch_f
        0x2788 -> :sswitch_f
        0x2789 -> :sswitch_f
        0x278a -> :sswitch_f
        0x278b -> :sswitch_f
        0x278c -> :sswitch_f
        0x278d -> :sswitch_f
        0x278f -> :sswitch_b
        0x2790 -> :sswitch_a
        0x2792 -> :sswitch_9
        0x27a6 -> :sswitch_8
        0x27a7 -> :sswitch_7
        0x27bb -> :sswitch_6
        0x27bc -> :sswitch_5
        0x27bf -> :sswitch_4
        0x27cc -> :sswitch_3
        0x27cd -> :sswitch_2
        0x27d8 -> :sswitch_47
        0x27dc -> :sswitch_1
        0x27ec -> :sswitch_3a
        0x27f5 -> :sswitch_0
    .end sparse-switch
.end method
