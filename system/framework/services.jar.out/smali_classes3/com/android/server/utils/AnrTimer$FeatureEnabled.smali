.class Lcom/android/server/utils/AnrTimer$FeatureEnabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "AnrTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/AnrTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureEnabled"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/AnrTimer<",
        "TV;>.FeatureSwitch;"
    }
.end annotation


# instance fields
.field private mNative:J

.field private mTotalRestarted:I

.field final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 546
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    .line 539
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    .line 542
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    .line 547
    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLabel(Lcom/android/server/utils/AnrTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmExtend(Lcom/android/server/utils/AnrTimer$Args;)Z

    move-result v4

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/utils/AnrTimer$Args;->mFreeze:Z

    nop

    if-eqz v5, :cond_0

    invoke-static {p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmArgs(Lcom/android/server/utils/AnrTimer;)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/utils/AnrTimer$Args;->-$$Nest$fgetmInjector(Lcom/android/server/utils/AnrTimer$Args;)Lcom/android/server/utils/AnrTimer$Injector;

    move-result-object v5

    .line 549
    invoke-virtual {v5}, Lcom/android/server/utils/AnrTimer$Injector;->freezerEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 547
    :goto_0
    invoke-static {p1, v3, v4, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnativeAnrTimerCreate(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;ZZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    .line 550
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 551
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 553
    monitor-exit v0

    .line 554
    return-void

    .line 553
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 550
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to create native timer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 703
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 704
    .local v0, "r":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 707
    :cond_0
    return-object v0
.end method


# virtual methods
.method accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;"
        }
    .end annotation

    .line 608
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 609
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 610
    .local v1, "timer":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v4, "accept"

    invoke-static {v3, v4, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    monitor-exit v0

    return-object v2

    .line 620
    .end local v1    # "timer":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 614
    .restart local v1    # "timer":Ljava/lang/Integer;
    :cond_0
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerAccept(JI)Z

    move-result v3

    .line 615
    .local v3, "accepted":Z
    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v5, "accept"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V

    .line 619
    if-eqz v3, :cond_1

    new-instance v2, Lcom/android/server/utils/AnrTimer$TimerLock;

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/android/server/utils/AnrTimer$TimerLock;-><init>(Lcom/android/server/utils/AnrTimer;I)V

    :cond_1
    monitor-exit v0

    return-object v2

    .line 620
    .end local v1    # "timer":Ljava/lang/Integer;
    .end local v3    # "accepted":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method cancel(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 584
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 585
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 586
    .local v1, "timer":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 587
    monitor-exit v0

    return v2

    .line 595
    .end local v1    # "timer":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 589
    .restart local v1    # "timer":Ljava/lang/Integer;
    :cond_0
    iget-wide v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerCancel(JI)Z

    move-result v3

    if-nez v3, :cond_1

    .line 591
    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result v4

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 592
    monitor-exit v0

    return v2

    .line 594
    :cond_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 595
    .end local v1    # "timer":Ljava/lang/Integer;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method close()V
    .locals 6

    .line 688
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v0

    monitor-enter v0

    .line 689
    :try_start_0
    invoke-static {}, Lcom/android/server/utils/AnrTimer;->-$$Nest$sfgetsAnrTimerList()Landroid/util/LongSparseArray;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 690
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 691
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 692
    :try_start_1
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-static {v2, v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerClose(J)I

    goto :goto_0

    .line 694
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 693
    :cond_0
    :goto_0
    iput-wide v4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    .line 694
    monitor-exit v1

    .line 695
    return-void

    .line 694
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 690
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method discard(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 630
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 631
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->removeLocked(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 632
    .local v1, "timer":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v3, "discard"

    invoke-static {v2, v3, p1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mnotFoundLocked(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 634
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 639
    .end local v1    # "timer":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 636
    .restart local v1    # "timer":Ljava/lang/Integer;
    :cond_0
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDiscard(JI)Z

    .line 637
    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const-string v3, "discard"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$mtrace(Lcom/android/server/utils/AnrTimer;Ljava/lang/String;I)V

    .line 638
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 639
    .end local v1    # "timer":Ljava/lang/Integer;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "verbose"    # Z

    .line 666
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 667
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 668
    const-string v1, "closed"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 669
    monitor-exit v0

    return-void

    .line 681
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 671
    :cond_0
    iget-wide v1, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    invoke-static {v1, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerDump(J)[Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "nativeDump":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 673
    const-string v2, "no-data"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    monitor-exit v0

    return-void

    .line 676
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 677
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 676
    .end local v4    # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 680
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restarted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    .end local v1    # "nativeDump":[Ljava/lang/String;
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method enabled()Z
    .locals 1

    .line 660
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    const/4 v0, 0x1

    return v0
.end method

.method release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/AnrTimer<",
            "TV;>.Timer",
            "Lock;",
            ")V"
        }
    .end annotation

    .line 651
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "t":Lcom/android/server/utils/AnrTimer$TimerLock;, "Lcom/android/server/utils/AnrTimer<TV;>.TimerLock;"
    iget v0, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    if-nez v0, :cond_0

    return-void

    .line 652
    :cond_0
    iget-wide v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J

    iget v2, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerRelease(JI)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to release id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/utils/AnrTimer$TimerLock;->mTimerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "AnrTimer"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    :cond_1
    return-void
.end method

.method start(Ljava/lang/Object;IIJ)V
    .locals 8
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IIJ)V"
        }
    .end annotation

    .line 561
    .local p0, "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .local p1, "arg":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 564
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->cancel(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    :try_start_1
    iget v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mTotalRestarted:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    move v4, p2

    move v5, p3

    move-wide v6, p4

    goto :goto_1

    .line 566
    :cond_0
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->mNative:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "timeoutMs":J
    .local v4, "pid":I
    .local v5, "uid":I
    .local v6, "timeoutMs":J
    :try_start_3
    invoke-static/range {v2 .. v7}, Lcom/android/server/utils/AnrTimer;->-$$Nest$smnativeAnrTimerStart(JIIJ)I

    move-result p2

    .line 567
    .local p2, "timerId":I
    if-lez p2, :cond_1

    .line 568
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerArgMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 570
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmTotalStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 571
    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    iget-object p4, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result p4

    iget-object p5, p0, Lcom/android/server/utils/AnrTimer$FeatureEnabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p5}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object p5

    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result p5

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fputmMaxStarted(Lcom/android/server/utils/AnrTimer;I)V

    .line 575
    .end local p2    # "timerId":I
    monitor-exit v1

    .line 576
    return-void

    .line 575
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 573
    .restart local p2    # "timerId":I
    :cond_1
    new-instance p3, Ljava/lang/RuntimeException;

    const-string p4, "unable to start timer"

    invoke-direct {p3, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v4    # "pid":I
    .end local v5    # "uid":I
    .end local v6    # "timeoutMs":J
    .end local p0    # "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .end local p1    # "arg":Ljava/lang/Object;, "TV;"
    throw p3

    .line 575
    .restart local p0    # "this":Lcom/android/server/utils/AnrTimer$FeatureEnabled;, "Lcom/android/server/utils/AnrTimer<TV;>.FeatureEnabled;"
    .restart local p1    # "arg":Ljava/lang/Object;, "TV;"
    .local p2, "pid":I
    .restart local p3    # "uid":I
    .restart local p4    # "timeoutMs":J
    :catchall_2
    move-exception v0

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .end local p2    # "pid":I
    .end local p3    # "uid":I
    .end local p4    # "timeoutMs":J
    .restart local v4    # "pid":I
    .restart local v5    # "uid":I
    .restart local v6    # "timeoutMs":J
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
