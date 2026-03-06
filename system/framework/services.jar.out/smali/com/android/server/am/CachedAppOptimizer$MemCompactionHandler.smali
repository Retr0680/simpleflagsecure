.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1704
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1705
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1706
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1709
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1711
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1712
    .local v1, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-result-object v2

    .line 1718
    .local v2, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    sget-object v3, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    nop

    if-ne v2, v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1719
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_1

    .line 1722
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1724
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction as process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is now perceptible."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1731
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z
    .locals 21
    .param p1, "profile"    # Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rssBefore"    # [J

    .line 1807
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x2

    aget-wide v4, p4, v3

    .line 1808
    .local v4, "anonRssBefore":J
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    .line 1809
    invoke-virtual {v6, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;

    move-result-object v6

    .line 1811
    .local v6, "lastCompactionStats":Lcom/android/server/am/compaction/SingleCompactionStats;
    const/4 v7, 0x0

    aget-wide v8, p4, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-string v9, "ActivityManager"

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-nez v8, :cond_1

    aget-wide v14, p4, v13

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    aget-wide v14, p4, v3

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    aget-wide v14, p4, v12

    cmp-long v8, v14, v10

    if-nez v8, :cond_1

    .line 1814
    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v3}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1816
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping compaction forprocess "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with no memory usage. Dead?"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    :cond_0
    return v13

    .line 1823
    :cond_1
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-object/from16 v14, p1

    if-ne v14, v8, :cond_6

    .line 1824
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move v15, v7

    iget-wide v7, v8, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v7, v7, v10

    const-string v8, "KB."

    move/from16 v16, v3

    const-string v3, "Skipping full compaction for process "

    if-lez v7, :cond_3

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v17, v10

    iget-wide v10, v7, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v7, v4, v10

    if-gez v7, :cond_4

    .line 1826
    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v7}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1828
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; anon RSS is too small: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    :cond_2
    return v13

    .line 1824
    :cond_3
    move-wide/from16 v17, v10

    .line 1835
    :cond_4
    if-eqz v6, :cond_7

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v7, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v7, v10, v17

    if-lez v7, :cond_7

    .line 1836
    invoke-virtual {v6}, Lcom/android/server/am/compaction/SingleCompactionStats;->getRssAfterCompaction()[J

    move-result-object v7

    .line 1837
    .local v7, "lastRss":[J
    aget-wide v10, p4, v13

    aget-wide v17, v7, v13

    sub-long v10, v10, v17

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    aget-wide v17, p4, v16

    aget-wide v19, v7, v16

    sub-long v17, v17, v19

    .line 1838
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    add-long v10, v10, v16

    aget-wide v16, p4, v12

    aget-wide v18, v7, v12

    sub-long v16, v16, v18

    .line 1839
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    add-long v10, v10, v16

    .line 1840
    .local v10, "absDelta":J
    iget-object v12, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move/from16 v16, v13

    iget-wide v13, v12, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v12, v10, v13

    if-gtz v12, :cond_7

    .line 1842
    iget-object v12, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v12}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1844
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; abs delta is too small: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_5
    return v16

    .line 1823
    .end local v7    # "lastRss":[J
    .end local v10    # "absDelta":J
    :cond_6
    move v15, v7

    .line 1853
    :cond_7
    return v15
.end method

.method private shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 3
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "procState"    # I

    .line 1790
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1795
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping full compaction for process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; proc state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1802
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z
    .locals 20
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "start"    # J
    .param p4, "pendingProfile"    # Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .param p5, "source"    # Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    .line 1736
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 1737
    .local v3, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1739
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v5

    .line 1740
    .local v5, "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v6

    .line 1748
    .local v6, "lastCompactTime":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_9

    .line 1749
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-object/from16 v9, p5

    if-ne v9, v8, :cond_8

    .line 1750
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-string/jumbo v11, "ms ago"

    const-string v12, " last="

    const-string v13, "/"

    const-string v14, ": too soon. throttle="

    const-string v15, "ActivityManager"

    if-ne v2, v8, :cond_4

    .line 1751
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v5, v8, :cond_1

    sub-long v16, p2, v6

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v19, v11

    const/16 v18, 0x1

    iget-wide v10, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v8, v16, v10

    if-ltz v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v6

    goto :goto_1

    :cond_1
    move-object/from16 v19, v11

    const/16 v18, 0x1

    :goto_0
    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v5, v8, :cond_3

    sub-long v10, p2, v6

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v16, v6

    .end local v6    # "lastCompactTime":J
    .local v16, "lastCompactTime":J
    iget-wide v6, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v6, v10, v6

    nop

    if-gez v6, :cond_a

    .line 1756
    :goto_1
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v6}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping some compaction for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v7, p2, v16

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    :cond_2
    return v18

    .line 1751
    .end local v16    # "lastCompactTime":J
    .restart local v6    # "lastCompactTime":J
    :cond_3
    move-wide/from16 v16, v6

    .end local v6    # "lastCompactTime":J
    .restart local v16    # "lastCompactTime":J
    goto :goto_2

    .line 1766
    .end local v16    # "lastCompactTime":J
    .restart local v6    # "lastCompactTime":J
    :cond_4
    move-wide/from16 v16, v6

    move-object v7, v11

    const/16 v18, 0x1

    .end local v6    # "lastCompactTime":J
    .restart local v16    # "lastCompactTime":J
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v2, v6, :cond_a

    .line 1767
    sget-object v6, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v5, v6, :cond_5

    sub-long v10, p2, v16

    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v1, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v1, v10, v1

    if-ltz v1, :cond_6

    :cond_5
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v5, v1, :cond_a

    sub-long v1, p2, v16

    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v6, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v1, v1, v10

    if-gez v1, :cond_a

    .line 1772
    :cond_6
    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping full compaction for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v10, v2, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v10, p2, v16

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    :cond_7
    return v18

    .line 1749
    .end local v16    # "lastCompactTime":J
    .restart local v6    # "lastCompactTime":J
    :cond_8
    move-wide/from16 v16, v6

    .end local v6    # "lastCompactTime":J
    .restart local v16    # "lastCompactTime":J
    goto :goto_2

    .line 1748
    .end local v16    # "lastCompactTime":J
    .restart local v6    # "lastCompactTime":J
    :cond_9
    move-object/from16 v9, p5

    move-wide/from16 v16, v6

    .line 1786
    .end local v6    # "lastCompactTime":J
    .restart local v16    # "lastCompactTime":J
    :cond_a
    :goto_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 77
    .param p1, "msg"    # Landroid/os/Message;

    .line 1858
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget v0, v7, Landroid/os/Message;->what:I

    const-wide/16 v8, 0x40

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 2030
    :pswitch_1
    iget v2, v7, Landroid/os/Message;->arg1:I

    .line 2031
    .local v2, "pid":I
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    iget v3, v7, Landroid/os/Message;->arg2:I

    aget-object v3, v0, v3

    .line 2032
    .local v3, "compactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Performing native compaction for pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2032
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-string v0, "compactNative"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2037
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    goto :goto_0

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed compacting native pid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2042
    goto/16 :goto_a

    .line 2020
    .end local v2    # "pid":I
    .end local v3    # "compactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    :pswitch_2
    const-string v0, "compactSystem"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2021
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v2

    .line 2022
    .local v2, "memFreedBefore":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$mcompactSystem(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 2023
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetMemoryFreedCompaction()J

    move-result-wide v4

    .line 2024
    .local v4, "memFreedAfter":J
    sub-long v10, v4, v2

    .line 2025
    .local v10, "memFreed":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v10, v11}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSystemCompactionPerformed(J)V

    .line 2026
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 2027
    goto/16 :goto_a

    .line 1860
    .end local v2    # "memFreedBefore":J
    .end local v4    # "memFreedAfter":J
    .end local v10    # "memFreed":J
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1867
    .local v3, "start":J
    iget v10, v7, Landroid/os/Message;->arg1:I

    .line 1868
    .local v10, "newOomAdj":I
    iget v11, v7, Landroid/os/Message;->arg2:I

    .line 1873
    .local v11, "procState":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    .line 1874
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    if-eqz v0, :cond_1

    .line 1876
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    const-string v0, "ActivityManager"

    const-string v5, "No processes pending compaction, bail out"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1894
    :catchall_0
    move-exception v0

    move-wide/from16 v54, v3

    move/from16 v25, v10

    move/from16 v24, v11

    goto/16 :goto_c

    .line 1880
    :cond_0
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    .line 1882
    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmPendingCompactionProcesses(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 1883
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    move-object v13, v0

    .line 1884
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isForceCompact()Z

    move-result v0

    move/from16 v30, v0

    .line 1885
    .local v30, "forceCompaction":Z
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setForceCompact(Z)V

    .line 1886
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v28

    move/from16 v14, v28

    .line 1887
    .local v14, "pid":I
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v15, v0

    .line 1888
    .local v15, "name":Ljava/lang/String;
    invoke-virtual {v13, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setHasPendingCompact(Z)V

    .line 1889
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactSource()Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    move-result-object v6

    .line 1890
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1891
    .local v16, "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    move-object/from16 v49, v0

    .line 1892
    .local v49, "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastCompactTime()J

    move-result-wide v17

    move-wide/from16 v50, v17

    .line 1893
    .local v50, "lastCompactTime":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getLastOomAdjChangeReason()I

    move-result v26

    move/from16 v17, v26

    .line 1894
    .local v17, "oomAdjReason":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1897
    if-nez v14, :cond_3

    .line 1900
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1902
    const-string v0, "ActivityManager"

    const-string v2, "Compaction failed, pid is 0"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v12, v6, v15}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1907
    return-void

    .line 1910
    :cond_3
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x1

    if-nez v30, :cond_8

    .line 1911
    invoke-direct {v1, v5}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldOomAdjThrottleCompaction(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1912
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v8, v6, v15}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1915
    return-void

    .line 1917
    :cond_4
    move v9, v2

    move-object v2, v5

    move-object/from16 v5, v16

    .end local v16    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    .local v5, "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldTimeThrottleCompaction(Lcom/android/server/am/ProcessRecord;JLcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1919
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v0, v9, v6, v15}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1922
    return-void

    .line 1924
    :cond_5
    invoke-direct {v1, v2, v11}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldThrottleMiscCompaction(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1925
    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v8, v0, v6, v15}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1928
    return-void

    .line 1930
    :cond_6
    move/from16 v31, v0

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    .line 1931
    .local v0, "rssBefore":[J
    invoke-direct {v1, v5, v14, v15, v0}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->shouldRssThrottleCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;ILjava/lang/String;[J)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1932
    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v6, v15}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1935
    return-void

    .line 1931
    :cond_7
    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v16, v12

    move-object v8, v0

    goto :goto_3

    .line 1938
    .end local v0    # "rssBefore":[J
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v5, "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    :cond_8
    move/from16 v31, v0

    move v9, v2

    move-object v2, v5

    move-object/from16 v5, v16

    .end local v16    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v5, "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v0

    .line 1940
    .restart local v0    # "rssBefore":[J
    move/from16 v32, v8

    iget-object v8, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v8}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmDebugCompaction(Lcom/android/server/am/CachedAppOptimizer;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1942
    const-string v8, "ActivityManager"

    move/from16 v33, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v12

    const-string v12, "Forcing compaction for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1940
    :cond_9
    move/from16 v33, v9

    move/from16 v16, v12

    .line 1946
    :goto_2
    move-object v8, v0

    .end local v0    # "rssBefore":[J
    .local v8, "rssBefore":[J
    :goto_3
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1947
    invoke-virtual {v0, v5}, Lcom/android/server/am/CachedAppOptimizer;->resolveCompactionProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v9

    .line 1948
    .local v9, "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v9, v0, :cond_b

    .line 1950
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_a

    .line 1951
    const-string v0, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v54, v3

    .end local v3    # "start":J
    .local v54, "start":J
    const-string v3, "Resolved no compaction for "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested profile="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1950
    .end local v54    # "start":J
    .restart local v3    # "start":J
    :cond_a
    move-wide/from16 v54, v3

    .line 1954
    .end local v3    # "start":J
    .restart local v54    # "start":J
    :goto_4
    return-void

    .line 1958
    .end local v54    # "start":J
    .restart local v3    # "start":J
    :cond_b
    move-wide/from16 v54, v3

    .end local v3    # "start":J
    .restart local v54    # "start":J
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compact "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1959
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lastOomAdjReason: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    move/from16 v3, v17

    .end local v17    # "oomAdjReason":I
    .local v3, "oomAdjReason":I
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " source: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 1958
    move/from16 v26, v3

    const-wide/16 v3, 0x40

    .end local v3    # "oomAdjReason":I
    .local v26, "oomAdjReason":I
    :try_start_6
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1962
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v3

    .line 1963
    .local v3, "zramUsedKbBefore":J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v17

    move-wide/from16 v56, v17

    .line 1964
    .local v56, "startCpuTime":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v9, v14}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    .line 1965
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v17

    move-wide/from16 v58, v17

    .line 1966
    .local v58, "endCpuTime":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcessDependencies(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v23

    .line 1967
    .local v23, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-wide/from16 v60, v17

    .line 1968
    .local v60, "end":J
    sub-long v62, v60, v54

    .line 1969
    .local v62, "time":J
    sub-long v64, v58, v56

    .line 1970
    .local v64, "deltaCpuTimeNanos":J
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v17

    move-wide/from16 v66, v17

    .line 1971
    .local v66, "zramUsedKbAfter":J
    aget-wide v17, v23, v16

    aget-wide v19, v8, v16

    sub-long v68, v17, v19

    .line 1972
    .local v68, "deltaTotalRss":J
    aget-wide v17, v23, v32

    aget-wide v19, v8, v32

    sub-long v70, v17, v19

    .line 1973
    .local v70, "deltaFileRss":J
    aget-wide v17, v23, v33

    aget-wide v19, v8, v33

    move-wide/from16 v72, v3

    .end local v3    # "zramUsedKbBefore":J
    .local v72, "zramUsedKbBefore":J
    sub-long v3, v17, v19

    .line 1974
    .local v3, "deltaAnonRss":J
    aget-wide v17, v23, v31

    aget-wide v19, v8, v31

    sub-long v74, v17, v19

    .line 1975
    .local v74, "deltaSwapRss":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->getReqCompactProfile()Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    packed-switch v0, :pswitch_data_1

    .line 1995
    :pswitch_4
    :try_start_7
    const-string v0, "ActivityManager"

    const-string v12, "Compaction: Unknown requested action"

    invoke-static {v0, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2015
    const-wide/16 v52, 0x40

    invoke-static/range {v52 .. v53}, Landroid/os/Trace;->traceEnd(J)V

    .line 1996
    return-void

    .line 2015
    .end local v3    # "deltaAnonRss":J
    .end local v23    # "rssAfter":[J
    .end local v56    # "startCpuTime":J
    .end local v58    # "endCpuTime":J
    .end local v60    # "end":J
    .end local v62    # "time":J
    .end local v64    # "deltaCpuTimeNanos":J
    .end local v66    # "zramUsedKbAfter":J
    .end local v68    # "deltaTotalRss":J
    .end local v70    # "deltaFileRss":J
    .end local v72    # "zramUsedKbBefore":J
    .end local v74    # "deltaSwapRss":J
    :catchall_1
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    goto/16 :goto_b

    .line 2009
    :catch_1
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    goto/16 :goto_8

    .line 1981
    .restart local v3    # "deltaAnonRss":J
    .restart local v23    # "rssAfter":[J
    .restart local v56    # "startCpuTime":J
    .restart local v58    # "endCpuTime":J
    .restart local v60    # "end":J
    .restart local v62    # "time":J
    .restart local v64    # "deltaCpuTimeNanos":J
    .restart local v66    # "zramUsedKbAfter":J
    .restart local v68    # "deltaTotalRss":J
    .restart local v70    # "deltaFileRss":J
    .restart local v72    # "zramUsedKbBefore":J
    .restart local v74    # "deltaSwapRss":J
    :pswitch_5
    move-object v12, v13

    move/from16 v28, v14

    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .local v12, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v28, "pid":I
    neg-long v13, v3

    .line 1982
    .local v13, "anonRssSavings":J
    move-object/from16 v17, v12

    move-object v12, v15

    move/from16 v0, v16

    .end local v15    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    .local v17, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    sub-long v15, v66, v72

    .line 1983
    .local v15, "zramConsumed":J
    move-object/from16 v19, v17

    .end local v17    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v19, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    sub-long v17, v13, v15

    .line 1984
    .local v17, "memFreed":J
    const-wide/32 v20, 0xf4240

    :try_start_8
    div-long v21, v64, v20

    .line 1985
    .local v21, "totalCpuTimeMillis":J
    aget-wide v24, v8, v33

    .line 1986
    .local v24, "origAnonRss":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    move-object/from16 v27, v0

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v30, :cond_c

    move/from16 v29, v32

    goto :goto_5

    :cond_c
    const/16 v29, 0x0

    :goto_5
    move/from16 v76, v11

    move-object v11, v6

    move-object/from16 v6, v19

    move-wide/from16 v19, v24

    move/from16 v24, v76

    move/from16 v25, v10

    move-object/from16 v10, v27

    move/from16 v27, v0

    const/4 v0, 0x0

    .end local v10    # "newOomAdj":I
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .local v19, "origAnonRss":J
    .local v24, "procState":I
    .local v25, "newOomAdj":I
    :try_start_9
    invoke-virtual/range {v10 .. v29}, Lcom/android/server/am/compaction/CompactionStatsManager;->logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V

    .line 1990
    goto :goto_6

    .line 2015
    .end local v3    # "deltaAnonRss":J
    .end local v13    # "anonRssSavings":J
    .end local v15    # "zramConsumed":J
    .end local v17    # "memFreed":J
    .end local v19    # "origAnonRss":J
    .end local v21    # "totalCpuTimeMillis":J
    .end local v23    # "rssAfter":[J
    .end local v56    # "startCpuTime":J
    .end local v58    # "endCpuTime":J
    .end local v60    # "end":J
    .end local v62    # "time":J
    .end local v64    # "deltaCpuTimeNanos":J
    .end local v66    # "zramUsedKbAfter":J
    .end local v68    # "deltaTotalRss":J
    .end local v70    # "deltaFileRss":J
    .end local v72    # "zramUsedKbBefore":J
    .end local v74    # "deltaSwapRss":J
    :catchall_2
    move-exception v0

    goto/16 :goto_b

    .line 2009
    :catch_2
    move-exception v0

    goto/16 :goto_8

    .line 2015
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .local v19, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catchall_3
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move-object v11, v6

    move-object/from16 v6, v19

    .end local v10    # "newOomAdj":I
    .end local v19    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    goto/16 :goto_b

    .line 2009
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v19    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    :catch_3
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move-object v11, v6

    move-object/from16 v6, v19

    .end local v10    # "newOomAdj":I
    .end local v19    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    goto/16 :goto_8

    .line 1977
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v28    # "pid":I
    .restart local v3    # "deltaAnonRss":J
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .local v15, "name":Ljava/lang/String;
    .restart local v23    # "rssAfter":[J
    .restart local v56    # "startCpuTime":J
    .restart local v58    # "endCpuTime":J
    .restart local v60    # "end":J
    .restart local v62    # "time":J
    .restart local v64    # "deltaCpuTimeNanos":J
    .restart local v66    # "zramUsedKbAfter":J
    .restart local v68    # "deltaTotalRss":J
    .restart local v70    # "deltaFileRss":J
    .restart local v72    # "zramUsedKbBefore":J
    .restart local v74    # "deltaSwapRss":J
    :pswitch_6
    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move/from16 v0, v16

    move-object v11, v6

    move-object v6, v13

    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v28    # "pid":I
    iget-object v10, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v10, v10, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/compaction/CompactionStatsManager;->logSomeCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    .line 1979
    nop

    .line 1998
    :goto_6
    move/from16 v10, v31

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    .line 1999
    move/from16 v13, v33

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v33

    aget-wide v14, v8, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aget-wide v14, v8, v32

    .line 2000
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aget-wide v13, v8, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    aget-wide v13, v8, v10

    .line 2001
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 2002
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static/range {v62 .. v63}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v43

    .line 2003
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    invoke-static/range {v72 .. v73}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    sub-long v13, v72, v66

    .line 2004
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v32, v12

    .end local v12    # "name":Ljava/lang/String;
    .local v32, "name":Ljava/lang/String;
    :try_start_a
    filled-new-array/range {v31 .. v48}, [Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1998
    .end local v32    # "name":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    const/16 v10, 0x756f

    :try_start_b
    invoke-static {v10, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2005
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$fgetmProcLock(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerGlobalLock;

    move-result-object v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2006
    move-wide/from16 v13, v60

    .end local v60    # "end":J
    .local v13, "end":J
    :try_start_c
    invoke-virtual {v6, v13, v14}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactTime(J)V

    .line 2007
    invoke-virtual {v6, v5}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setLastCompactProfile(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;)V

    .line 2008
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 2015
    .end local v3    # "deltaAnonRss":J
    .end local v13    # "end":J
    .end local v23    # "rssAfter":[J
    .end local v56    # "startCpuTime":J
    .end local v58    # "endCpuTime":J
    .end local v62    # "time":J
    .end local v64    # "deltaCpuTimeNanos":J
    .end local v66    # "zramUsedKbAfter":J
    .end local v68    # "deltaTotalRss":J
    .end local v70    # "deltaFileRss":J
    .end local v72    # "zramUsedKbBefore":J
    .end local v74    # "deltaSwapRss":J
    const-wide/16 v52, 0x40

    :goto_7
    invoke-static/range {v52 .. v53}, Landroid/os/Trace;->traceEnd(J)V

    .line 2016
    goto/16 :goto_9

    .line 2008
    .restart local v3    # "deltaAnonRss":J
    .restart local v13    # "end":J
    .restart local v23    # "rssAfter":[J
    .restart local v56    # "startCpuTime":J
    .restart local v58    # "endCpuTime":J
    .restart local v62    # "time":J
    .restart local v64    # "deltaCpuTimeNanos":J
    .restart local v66    # "zramUsedKbAfter":J
    .restart local v68    # "deltaTotalRss":J
    .restart local v70    # "deltaFileRss":J
    .restart local v72    # "zramUsedKbBefore":J
    .restart local v74    # "deltaSwapRss":J
    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v8    # "rssBefore":[J
    .end local v9    # "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v11    # "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .end local v30    # "forceCompaction":Z
    .end local v49    # "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v50    # "lastCompactTime":J
    .end local v54    # "start":J
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 2015
    .end local v3    # "deltaAnonRss":J
    .end local v13    # "end":J
    .end local v23    # "rssAfter":[J
    .end local v56    # "startCpuTime":J
    .end local v58    # "endCpuTime":J
    .end local v62    # "time":J
    .end local v64    # "deltaCpuTimeNanos":J
    .end local v66    # "zramUsedKbAfter":J
    .end local v68    # "deltaTotalRss":J
    .end local v70    # "deltaFileRss":J
    .end local v72    # "zramUsedKbBefore":J
    .end local v74    # "deltaSwapRss":J
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v8    # "rssBefore":[J
    .restart local v9    # "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v11    # "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    .restart local v30    # "forceCompaction":Z
    .restart local v32    # "name":Ljava/lang/String;
    .restart local v49    # "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v50    # "lastCompactTime":J
    .restart local v54    # "start":J
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_5
    move-exception v0

    move-object/from16 v12, v32

    .end local v32    # "name":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_b

    .line 2009
    .end local v12    # "name":Ljava/lang/String;
    .restart local v32    # "name":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v12, v32

    .end local v32    # "name":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    goto/16 :goto_8

    .line 2015
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v28    # "pid":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .local v13, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v28    # "pid":I
    goto/16 :goto_b

    .line 2009
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v28    # "pid":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v28    # "pid":I
    goto :goto_8

    .line 2015
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .local v3, "oomAdjReason":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v26, v3

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    .end local v3    # "oomAdjReason":I
    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    goto :goto_b

    .line 2009
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .restart local v3    # "oomAdjReason":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    :catch_6
    move-exception v0

    move/from16 v26, v3

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move-object v11, v6

    move-object v6, v13

    .end local v3    # "oomAdjReason":I
    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    goto :goto_8

    .line 2015
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    .local v17, "oomAdjReason":I
    :catchall_8
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move/from16 v26, v17

    move-object v11, v6

    move-object v6, v13

    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "oomAdjReason":I
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    goto :goto_b

    .line 2009
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .local v6, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    .restart local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v14    # "pid":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v17    # "oomAdjReason":I
    :catch_7
    move-exception v0

    move/from16 v25, v10

    move/from16 v24, v11

    move/from16 v28, v14

    move-object v12, v15

    move/from16 v26, v17

    move-object v11, v6

    move-object v6, v13

    .end local v10    # "newOomAdj":I
    .end local v13    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v14    # "pid":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v17    # "oomAdjReason":I
    .local v6, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .local v11, "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    :goto_8
    nop

    .line 2011
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception occurred while compacting pid: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ". Exception:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2013
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2011
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 2015
    const-wide/16 v52, 0x40

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 2017
    :goto_9
    nop

    .line 2045
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v8    # "rssBefore":[J
    .end local v9    # "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v11    # "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .end local v30    # "forceCompaction":Z
    .end local v49    # "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v50    # "lastCompactTime":J
    .end local v54    # "start":J
    :goto_a
    return-void

    .line 2015
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .restart local v8    # "rssBefore":[J
    .restart local v9    # "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v11    # "compactSource":Lcom/android/server/am/CachedAppOptimizer$CompactSource;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v26    # "oomAdjReason":I
    .restart local v28    # "pid":I
    .restart local v30    # "forceCompaction":Z
    .restart local v49    # "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .restart local v50    # "lastCompactTime":J
    .restart local v54    # "start":J
    :goto_b
    const-wide/16 v52, 0x40

    invoke-static/range {v52 .. v53}, Landroid/os/Trace;->traceEnd(J)V

    .line 2016
    throw v0

    .line 1894
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "requestedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v6    # "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    .end local v8    # "rssBefore":[J
    .end local v9    # "resolvedProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v12    # "name":Ljava/lang/String;
    .end local v24    # "procState":I
    .end local v25    # "newOomAdj":I
    .end local v26    # "oomAdjReason":I
    .end local v28    # "pid":I
    .end local v30    # "forceCompaction":Z
    .end local v49    # "lastCompactProfile":Lcom/android/server/am/CachedAppOptimizer$CompactProfile;
    .end local v50    # "lastCompactTime":J
    .end local v54    # "start":J
    .local v3, "start":J
    .restart local v10    # "newOomAdj":I
    .local v11, "procState":I
    :catchall_9
    move-exception v0

    move-wide/from16 v54, v3

    move/from16 v25, v10

    move/from16 v24, v11

    .end local v3    # "start":J
    .end local v10    # "newOomAdj":I
    .end local v11    # "procState":I
    .restart local v24    # "procState":I
    .restart local v25    # "newOomAdj":I
    .restart local v54    # "start":J
    :goto_c
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
