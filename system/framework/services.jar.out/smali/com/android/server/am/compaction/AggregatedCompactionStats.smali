.class Lcom/android/server/am/compaction/AggregatedCompactionStats;
.super Ljava/lang/Object;
.source "AggregatedCompactionStats.java"


# instance fields
.field public mFullCompactPerformed:J

.field public mFullCompactRequested:J

.field public mMaxCompactEfficiency:D

.field public mMaxSwapEfficiency:D

.field public mProcCompactionsMiscThrottled:J

.field public mProcCompactionsNoPidThrottled:J

.field public mProcCompactionsOomAdjThrottled:J

.field public mProcCompactionsRSSThrottled:J

.field public mProcCompactionsTimeThrottled:J

.field public mSomeCompactPerformed:J

.field public mSomeCompactRequested:J

.field public mSumOrigAnonRss:J

.field public mTotalAnonMemFreedKBs:J

.field public mTotalCpuTimeMillis:J

.field public mTotalDeltaAnonRssKBs:J

.field public mTotalZramConsumedKBs:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMemStats(JJJJJ)V
    .locals 10
    .param p1, "anonRssSaved"    # J
    .param p3, "zramConsumed"    # J
    .param p5, "memFreed"    # J
    .param p7, "origAnonRss"    # J
    .param p9, "totalCpuTimeMillis"    # J

    .line 52
    move-wide v0, p5

    move-wide/from16 v2, p7

    long-to-double v4, v0

    long-to-double v6, v2

    div-double/2addr v4, v6

    .line 53
    .local v4, "compactEfficiency":D
    iget-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    .line 54
    iput-wide v4, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    .line 56
    :cond_0
    long-to-double v6, p1

    long-to-double v8, v2

    div-double/2addr v6, v8

    .line 57
    .local v6, "swapEfficiency":D
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    cmpl-double v8, v6, v8

    if-lez v8, :cond_1

    .line 58
    iput-wide v6, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    .line 60
    :cond_1
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    add-long/2addr v8, p1

    iput-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    .line 61
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    add-long/2addr v8, p3

    iput-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    .line 62
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    add-long/2addr v8, v0

    iput-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    .line 63
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    add-long/2addr v8, v2

    iput-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    .line 64
    iget-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    add-long v8, v8, p9

    iput-wide v8, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    .line 65
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v2, v4

    .line 70
    .local v2, "totalCompactRequested":J
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    iget-wide v6, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    add-long/2addr v4, v6

    .line 71
    .local v4, "totalCompactPerformed":J
    const-string v6, "    Performed / Requested:"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      Some: ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "      Full: ("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->getThrottledSome()J

    move-result-wide v6

    .line 76
    .local v6, "throttledSome":J
    invoke-virtual {v0}, Lcom/android/server/am/compaction/AggregatedCompactionStats;->getThrottledFull()J

    move-result-wide v8

    .line 78
    .local v8, "throttledFull":J
    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-gtz v12, :cond_0

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move-wide/from16 v18, v4

    move-wide/from16 v16, v10

    goto/16 :goto_1

    .line 79
    :goto_0
    const-string v12, "    Throttled:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "       Some: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " Full: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v12, "    Throttled by Type:"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    sub-long v12, v2, v4

    .line 84
    .local v12, "compactionsThrottled":J
    iget-wide v14, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    sub-long v14, v12, v14

    move-wide/from16 v16, v10

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    sub-long/2addr v14, v10

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    sub-long/2addr v14, v10

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    sub-long/2addr v14, v10

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    sub-long/2addr v14, v10

    .line 88
    .local v14, "unaccountedThrottled":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "       NoPid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v4

    .end local v4    # "totalCompactPerformed":J
    .local v18, "totalCompactPerformed":J
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsNoPidThrottled:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " OomAdj: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsOomAdjThrottled:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Time: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsTimeThrottled:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " RSS: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsRSSThrottled:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Misc: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mProcCompactionsMiscThrottled:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " Unaccounted: "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    long-to-double v4, v12

    long-to-double v10, v2

    div-double/2addr v4, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    .line 95
    .local v4, "compactThrottlePercentage":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    Throttle Percentage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .end local v4    # "compactThrottlePercentage":D
    .end local v12    # "compactionsThrottled":J
    .end local v14    # "unaccountedThrottled":J
    :goto_1
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_3

    .line 99
    const-string v4, "    -----Memory Stats----"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Total Delta Anon RSS (KB) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Total Physical ZRAM Consumed (KB): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Total Anon Memory Freed (KB): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Avg Swap Efficiency (KB) (Delta Anon RSS/Orig Anon RSS): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    long-to-double v10, v10

    iget-wide v12, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Max Swap Efficiency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxSwapEfficiency:D

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Avg Compaction Efficiency (Anon Freed/Anon RSS): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    long-to-double v10, v10

    iget-wide v12, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSumOrigAnonRss:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Max Compaction Efficiency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mMaxCompactEfficiency:D

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Avg Compression Ratio (1 - ZRAM Consumed/DeltaAnonRSS): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalZramConsumedKBs:J

    long-to-double v10, v10

    iget-wide v12, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalDeltaAnonRssKBs:J

    long-to-double v12, v12

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_2

    .line 116
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    iget-wide v10, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    div-long v10, v4, v10

    goto :goto_2

    .line 117
    :cond_2
    move-wide/from16 v10, v16

    :goto_2
    nop

    .line 118
    .local v10, "avgKBsPerProcCompact":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    Avg Anon Mem Freed/Compaction (KB) : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    iget-wide v4, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalCpuTimeMillis:J

    long-to-double v4, v4

    iget-wide v12, v0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mTotalAnonMemFreedKBs:J

    long-to-double v12, v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double/2addr v12, v14

    div-double/2addr v4, v12

    .line 121
    .local v4, "compactionCost":D
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    Compaction Cost (ms/MB): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .end local v4    # "compactionCost":D
    .end local v10    # "avgKBsPerProcCompact":J
    :cond_3
    return-void
.end method

.method public getThrottledFull()J
    .locals 4

    .line 48
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactPerformed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getThrottledSome()J
    .locals 4

    .line 46
    iget-wide v0, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    iget-wide v2, p0, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
