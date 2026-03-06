.class public Lcom/android/server/power/stats/BatteryUsageStatsProvider;
.super Ljava/lang/Object;
.source "BatteryUsageStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BatteryUsageStatsProv"


# instance fields
.field private final mAccumulatedBatteryUsageStatsSpanSize:I

.field private final mClock:Lcom/android/internal/os/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field private mLastAccumulationMonotonicHistorySize:J

.field private final mLock:Ljava/lang/Object;

.field private final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field private final mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

.field private mPowerCalculators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/PowerCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$rlWqUVwnllBfJlxnTRJ-GZmZAb0(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/Clock;Lcom/android/internal/os/MonotonicClock;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "powerAttributor"    # Lcom/android/server/power/stats/PowerAttributor;
    .param p3, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p4, "cpuScalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;
    .param p5, "powerStatsStore"    # Lcom/android/server/power/stats/PowerStatsStore;
    .param p6, "accumulatedBatteryUsageStatsSpanSize"    # I
    .param p7, "clock"    # Lcom/android/internal/os/Clock;
    .param p8, "monotonicClock"    # Lcom/android/internal/os/MonotonicClock;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    .line 83
    iput-object p5, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 84
    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 85
    iput-object p4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 86
    iput p6, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    .line 87
    iput-object p7, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 88
    iput-object p8, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 90
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;

    invoke-direct {v1}, Lcom/android/server/power/stats/BatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;

    invoke-direct {v1}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection$Reader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 92
    return-void
.end method

.method private applyPowerCalculators(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;Z)V
    .locals 17
    .param p1, "batteryUsageStatsBuilder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .param p3, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p4, "includeVirtualUids"    # Z

    .line 426
    move-object/from16 v1, p0

    monitor-enter p2

    .line 427
    :try_start_0
    invoke-direct {v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v0

    .line 428
    .local v0, "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v9, v2, v4

    .line 429
    .local v9, "realtimeUs":J
    iget-object v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    mul-long v11, v2, v4

    .line 430
    .local v11, "uptimeUs":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object v2

    .line 431
    .local v2, "powerComponents":[I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    .line 432
    .local v3, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 433
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 434
    .local v5, "uid":Landroid/os/BatteryStats$Uid;
    if-nez p4, :cond_0

    .line 435
    :try_start_2
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    const/16 v7, 0x442

    if-ne v6, v7, :cond_0

    .line 436
    move-object/from16 v7, p1

    goto :goto_1

    .line 458
    .end local v0    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .end local v2    # "powerComponents":[I
    .end local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v4    # "i":I
    .end local v5    # "uid":Landroid/os/BatteryStats$Uid;
    .end local v9    # "realtimeUs":J
    .end local v11    # "uptimeUs":J
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 439
    .restart local v0    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .restart local v2    # "powerComponents":[I
    .restart local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v4    # "i":I
    .restart local v5    # "uid":Landroid/os/BatteryStats$Uid;
    .restart local v9    # "realtimeUs":J
    .restart local v11    # "uptimeUs":J
    :cond_0
    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    .line 432
    .end local v5    # "uid":Landroid/os/BatteryStats$Uid;
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 458
    .end local v0    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .end local v2    # "powerComponents":[I
    .end local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v4    # "i":I
    .end local v9    # "realtimeUs":J
    .end local v11    # "uptimeUs":J
    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_6

    .line 432
    .restart local v0    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .restart local v2    # "powerComponents":[I
    .restart local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v4    # "i":I
    .restart local v9    # "realtimeUs":J
    .restart local v11    # "uptimeUs":J
    :cond_1
    move-object/from16 v7, p1

    .line 441
    .end local v4    # "i":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "count":I
    :goto_2
    if-ge v4, v5, :cond_5

    .line 442
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerCalculator;

    .line 443
    .local v6, "powerCalculator":Lcom/android/server/power/stats/PowerCalculator;
    if-eqz v2, :cond_4

    .line 444
    const/4 v8, 0x0

    .line 445
    .local v8, "include":Z
    array-length v13, v2

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_3

    aget v15, v2, v14

    .line 446
    .local v15, "powerComponent":I
    invoke-virtual {v6, v15}, Lcom/android/server/power/stats/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 447
    const/4 v8, 0x1

    .line 448
    goto :goto_4

    .line 446
    :cond_2
    nop

    .line 445
    .end local v15    # "powerComponent":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 451
    :cond_3
    :goto_4
    if-nez v8, :cond_4

    .line 452
    goto :goto_5

    .line 455
    .end local v8    # "include":Z
    :cond_4
    move-object/from16 v8, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 441
    .end local v6    # "powerCalculator":Lcom/android/server/power/stats/PowerCalculator;
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, p1

    goto :goto_2

    :cond_5
    nop

    .line 458
    .end local v0    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .end local v2    # "powerComponents":[I
    .end local v3    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v4    # "i":I
    .end local v5    # "count":I
    .end local v9    # "realtimeUs":J
    .end local v11    # "uptimeUs":J
    monitor-exit p2

    .line 459
    return-void

    .line 458
    :goto_6
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V
    .locals 6
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "userIds"    # [I

    .line 549
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    return-void

    .line 553
    :cond_0
    nop

    .line 554
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    .line 556
    .local v0, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 557
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    .line 558
    .local v2, "uidBuilder":Landroid/os/UidBatteryConsumer$Builder;
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    goto :goto_1

    .line 562
    :cond_1
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v3

    .line 563
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_2

    .line 564
    goto :goto_1

    .line 567
    :cond_2
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 568
    .local v4, "userId":I
    invoke-static {p2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_3

    .line 569
    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    .line 570
    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v5

    .line 571
    invoke-virtual {v5, v2}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    .line 556
    .end local v2    # "uidBuilder":Landroid/os/UidBatteryConsumer$Builder;
    .end local v3    # "uid":I
    .end local v4    # "userId":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 574
    .end local v1    # "i":I
    return-void
.end method

.method private computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;
    .locals 22
    .param p1, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p3, "monotonicStartTime"    # J
    .param p5, "monotonicEndTime"    # J
    .param p7, "currentTimeMs"    # J

    .line 366
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v6, v1

    .line 368
    .local v6, "includeProcessStateData":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    move v2, v3

    .line 370
    .local v2, "includeVirtualUids":Z
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v9

    .line 372
    .local v9, "minConsumedPowerThreshold":D
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "customEnergyConsumerNames":[Ljava/lang/String;
    new-instance v4, Landroid/os/BatteryUsageStats$Builder;

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v7

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v8

    invoke-direct/range {v4 .. v10}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    move-object v12, v4

    .line 378
    .local v12, "batteryUsageStatsBuilder":Landroid/os/BatteryUsageStats$Builder;
    invoke-direct {v0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v1

    .line 379
    .local v1, "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v3, v4

    .line 380
    .local v3, "usePowerCalculators":Z
    const-wide/16 v7, -0x1

    if-eqz v3, :cond_3

    cmp-long v4, p3, v7

    if-nez v4, :cond_2

    cmp-long v4, p5, v7

    if-eqz v4, :cond_3

    .line 383
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BatteryUsageStatsQuery specifies a time range that is incompatible with PowerCalculators: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v11, "BatteryUsageStatsProv"

    invoke-static {v11, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v3, 0x0

    .line 389
    :cond_3
    cmp-long v4, p3, v7

    if-nez v4, :cond_4

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v13

    move-wide v14, v13

    .end local p3    # "monotonicStartTime":J
    .local v13, "monotonicStartTime":J
    goto :goto_1

    .line 389
    .end local v13    # "monotonicStartTime":J
    .restart local p3    # "monotonicStartTime":J
    :cond_4
    move-wide/from16 v14, p3

    .line 392
    .end local p3    # "monotonicStartTime":J
    .local v14, "monotonicStartTime":J
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v16

    .line 393
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v18

    sub-long v18, v14, v18

    move-wide/from16 v20, v7

    add-long v7, v16, v18

    .line 392
    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 394
    cmp-long v4, p5, v20

    if-eqz v4, :cond_5

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v7

    .line 396
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v16

    sub-long v16, p5, v16

    add-long v7, v7, v16

    .line 395
    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    move-wide/from16 v7, p7

    goto :goto_2

    .line 398
    :cond_5
    move-wide/from16 v7, p7

    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 401
    :goto_2
    if-eqz v3, :cond_6

    .line 402
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getBatteryStats()Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v4

    .line 403
    .local v4, "stats":Lcom/android/server/power/stats/BatteryStatsImpl;
    move-object/from16 v11, p2

    invoke-direct {v0, v12, v4, v11, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->applyPowerCalculators(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;Z)V

    goto :goto_3

    .line 401
    .end local v4    # "stats":Lcom/android/server/power/stats/BatteryStatsImpl;
    :cond_6
    move-object/from16 v11, p2

    .line 405
    :goto_3
    invoke-virtual {v11}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHistory;->copy()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v4

    .line 408
    nop

    .line 409
    move-object/from16 v19, v1

    move/from16 v18, v2

    .end local v1    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .end local v2    # "includeVirtualUids":Z
    .local v18, "includeVirtualUids":Z
    .local v19, "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    invoke-virtual {v11}, Landroid/os/BatteryUsageStatsQuery;->getPreferredHistoryDurationMs()J

    move-result-wide v1

    .line 407
    invoke-virtual {v12, v4, v1, v2}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;J)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_4

    .line 405
    .end local v18    # "includeVirtualUids":Z
    .end local v19    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .restart local v1    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .restart local v2    # "includeVirtualUids":Z
    :cond_7
    move-object/from16 v19, v1

    move/from16 v18, v2

    .line 413
    .end local v1    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    .end local v2    # "includeVirtualUids":Z
    .restart local v18    # "includeVirtualUids":Z
    .restart local v19    # "powerCalculators":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerCalculator;>;"
    :goto_4
    iget-object v11, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v13

    move-wide/from16 v16, p5

    invoke-interface/range {v11 .. v17}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->buildUserBatteryConsumers(Landroid/os/BatteryUsageStats$Builder;[I)V

    .line 419
    move-object/from16 v1, p1

    invoke-direct {v0, v12, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 420
    return-object v12
.end method

.method private getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 5
    .param p1, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 300
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 301
    .local v0, "accumulatedStats":Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    nop

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 302
    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    sub-long/2addr v1, v3

    .line 303
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 304
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 306
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v1

    return-object v1
.end method

.method private getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 24
    .param p1, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 470
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 472
    .local v6, "includeProcessStateData":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getMinConsumedPowerThreshold()D

    move-result-wide v9

    .line 474
    .local v9, "minConsumedPowerThreshold":D
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "customEnergyConsumerNames":[Ljava/lang/String;
    new-instance v4, Landroid/os/BatteryUsageStats$Builder;

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isScreenStateDataNeeded()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->isPowerStateDataNeeded()Z

    move-result v8

    invoke-direct/range {v4 .. v10}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    .line 479
    .local v4, "builder":Landroid/os/BatteryUsageStats$Builder;
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v7, "BatteryUsageStatsProv"

    if-nez v0, :cond_1

    .line 480
    const-string v0, "PowerStatsStore is unavailable"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    .line 484
    :cond_1
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v8

    .line 485
    .local v8, "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 486
    .local v11, "spanMetadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    invoke-virtual {v11}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v12

    const-string v13, "battery-usage-stats"

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 487
    goto :goto_1

    .line 499
    :cond_2
    const-wide v14, 0x7fffffffffffffffL

    .line 500
    .local v14, "minTime":J
    const-wide/16 v16, 0x0

    .line 501
    .local v16, "maxTime":J
    invoke-virtual {v11}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide/from16 v2, v16

    .end local v16    # "maxTime":J
    .local v2, "maxTime":J
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 502
    .local v0, "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    move-wide/from16 v20, v9

    move-object v10, v8

    .end local v8    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v9    # "minConsumedPowerThreshold":D
    .local v10, "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .local v20, "minConsumedPowerThreshold":D
    iget-wide v8, v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    move-wide/from16 v22, v8

    iget-wide v8, v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long v8, v22, v8

    .line 503
    .local v8, "spanEndTime":J
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 504
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 505
    .end local v0    # "timeFrame":Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;
    .end local v8    # "spanEndTime":J
    move-object v8, v10

    move-object/from16 v0, v19

    move-wide/from16 v9, v20

    goto :goto_2

    .line 509
    .end local v10    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v20    # "minConsumedPowerThreshold":D
    .local v8, "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v9    # "minConsumedPowerThreshold":D
    :cond_3
    move-object/from16 v19, v0

    move-wide/from16 v20, v9

    move-object v10, v8

    .line 510
    .end local v8    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v9    # "minConsumedPowerThreshold":D
    .restart local v10    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v20    # "minConsumedPowerThreshold":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v8

    const-wide/16 v22, 0x0

    cmp-long v0, v8, v22

    if-eqz v0, :cond_4

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedFromTimestamp()J

    move-result-wide v8

    cmp-long v0, v14, v8

    if-lez v0, :cond_5

    .line 512
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v22

    if-eqz v0, :cond_6

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v8

    cmp-long v0, v2, v8

    if-gtz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x1

    :goto_4
    move v8, v0

    .line 514
    .local v8, "isInRange":Z
    if-nez v8, :cond_7

    .line 515
    move-object v8, v10

    move-object/from16 v0, v19

    move-wide/from16 v9, v20

    goto/16 :goto_1

    .line 518
    :cond_7
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 519
    move-wide/from16 v22, v2

    .end local v2    # "maxTime":J
    .local v22, "maxTime":J
    invoke-virtual {v11}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getId()J

    move-result-wide v1

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v1

    .line 520
    .local v1, "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    if-nez v1, :cond_9

    .line 542
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    :cond_8
    move-object/from16 v1, p0

    move-object v8, v10

    move-object/from16 v0, v19

    move-wide/from16 v9, v20

    goto/16 :goto_1

    .line 524
    :cond_9
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 525
    .local v2, "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    move-object v3, v2

    check-cast v3, Lcom/android/server/power/stats/BatteryUsageStatsSection;

    .line 526
    invoke-virtual {v3}, Lcom/android/server/power/stats/BatteryUsageStatsSection;->getBatteryUsageStats()Landroid/os/BatteryUsageStats;

    move-result-object v3

    .line 527
    .local v3, "snapshot":Landroid/os/BatteryUsageStats;
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 529
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 529
    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    goto :goto_5

    .line 518
    .end local v2    # "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .end local v3    # "snapshot":Landroid/os/BatteryUsageStats;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_6

    .line 535
    .restart local v2    # "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .restart local v3    # "snapshot":Landroid/os/BatteryUsageStats;
    :cond_a
    if-eqz v6, :cond_b

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v9

    if-nez v9, :cond_b

    .line 536
    const-string v9, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    goto :goto_5

    .line 540
    :cond_b
    invoke-virtual {v4, v3}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    nop

    .end local v2    # "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    .end local v3    # "snapshot":Landroid/os/BatteryUsageStats;
    goto :goto_5

    .line 542
    :cond_c
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V

    .line 543
    .end local v1    # "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    .end local v8    # "isInRange":Z
    .end local v11    # "spanMetadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .end local v14    # "minTime":J
    .end local v22    # "maxTime":J
    move-object/from16 v1, p0

    move-object v8, v10

    move-object/from16 v0, v19

    move-wide/from16 v9, v20

    goto/16 :goto_1

    .line 518
    .restart local v1    # "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    .restart local v8    # "isInRange":Z
    .restart local v11    # "spanMetadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .restart local v14    # "minTime":J
    .restart local v22    # "maxTime":J
    :goto_6
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2

    .line 544
    .end local v1    # "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    .end local v10    # "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .end local v11    # "spanMetadata":Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .end local v14    # "minTime":J
    .end local v20    # "minConsumedPowerThreshold":D
    .end local v22    # "maxTime":J
    .local v8, "toc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Metadata;>;"
    .restart local v9    # "minConsumedPowerThreshold":D
    :cond_d
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .locals 10
    .param p1, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p3, "currentTimeMs"    # J

    .line 278
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-wide v8, p3

    .local v0, "batteryUsageStats":Landroid/os/BatteryUsageStats;
    goto :goto_0

    .line 281
    .end local v0    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getAggregatedToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 282
    nop

    .line 283
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicStartTime()J

    move-result-wide v4

    .line 284
    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->getMonotonicEndTime()J

    move-result-wide v6

    .line 282
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v8, p3

    .end local p1    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .end local p2    # "query":Landroid/os/BatteryUsageStatsQuery;
    .end local p3    # "currentTimeMs":J
    .local v2, "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .local v3, "query":Landroid/os/BatteryUsageStatsQuery;
    .local v8, "currentTimeMs":J
    invoke-direct/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->computeBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;JJJ)Landroid/os/BatteryUsageStats$Builder;

    move-result-object p1

    .line 285
    .local p1, "builder":Landroid/os/BatteryUsageStats$Builder;
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 286
    .end local p1    # "builder":Landroid/os/BatteryUsageStats$Builder;
    .restart local v0    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    goto :goto_0

    .line 287
    .end local v0    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    .end local v2    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .end local v3    # "query":Landroid/os/BatteryUsageStatsQuery;
    .end local v8    # "currentTimeMs":J
    .local p1, "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .restart local p2    # "query":Landroid/os/BatteryUsageStatsQuery;
    .restart local p3    # "currentTimeMs":J
    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-wide v8, p3

    .end local p1    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .end local p2    # "query":Landroid/os/BatteryUsageStatsQuery;
    .end local p3    # "currentTimeMs":J
    .restart local v2    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .restart local v3    # "query":Landroid/os/BatteryUsageStatsQuery;
    .restart local v8    # "currentTimeMs":J
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    .line 295
    .restart local v0    # "batteryUsageStats":Landroid/os/BatteryUsageStats;
    :goto_0
    return-object v0
.end method

.method private getPowerCalculators()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/PowerCalculator;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_12

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    .line 100
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0x12

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/BatteryChargeCalculator;

    invoke-direct {v2}, Lcom/android/server/power/stats/BatteryChargeCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v1

    goto/16 :goto_1

    .line 104
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/CpuPowerCalculator;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0xd

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WakelockPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/MobileRadioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xe

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 124
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/PhonePowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xb

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/WifiPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_6
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 133
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0x9

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 137
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/SensorPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v5, Landroid/hardware/SensorManager;

    .line 138
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    .line 137
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_8
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 142
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/GnssPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_9
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/CameraPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_a
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 150
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/FlashlightPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_b
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 154
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AudioPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_c
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 158
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/VideoPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_d
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 162
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/ScreenPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_e
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/16 v3, 0xf

    invoke-interface {v1, v3}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 166
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v3, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_f
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_10

    .line 171
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_10
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/server/power/stats/PowerAttributor;->isPowerComponentSupported(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 175
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;

    iget-object v3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_11
    nop

    .line 185
    :cond_12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object v0

    .line 185
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private synthetic lambda$accumulateBatteryUsageStatsAsync$0(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method

.method private loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    .locals 8

    .line 310
    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider-IA;)V

    .line 311
    .local v0, "stats":Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 312
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 313
    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 314
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    const-string v2, "accumulated-battery-usage-stats"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/power/stats/PowerStatsStore;->loadPowerStatsSpan(J[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object v1

    .line 317
    .local v1, "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->getSections()Ljava/util/List;

    move-result-object v3

    .line 319
    .local v3, "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 320
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 321
    .local v5, "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    invoke-virtual {v5}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 322
    move-object v2, v5

    check-cast v2, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    .line 323
    invoke-virtual {v2}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;->getBatteryUsageStatsBuilder()Landroid/os/BatteryUsageStats$Builder;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 324
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 325
    nop

    .line 326
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getStartMonotonicTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 327
    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan;->getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getEndMonotonicTime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 328
    goto :goto_1

    .line 321
    :cond_0
    nop

    .line 319
    .end local v5    # "section":Lcom/android/server/power/stats/PowerStatsSpan$Section;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 332
    .end local v3    # "sections":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/PowerStatsSpan$Section;>;"
    .end local v4    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .locals 2
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    .line 463
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getEstimatedBatteryCapacity()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 464
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getBatteryTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 465
    invoke-virtual {p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getChargeTimeRemainingMs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 466
    return-void
.end method

.method public static shouldUpdateStats(Ljava/util/List;JJ)Z
    .locals 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "lastUpdateTimeStampMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;JJ)Z"
        }
    .end annotation

    .line 239
    .local p0, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 240
    .local v0, "allowableStatsAge":J
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 241
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    .line 242
    .local v4, "query":Landroid/os/BatteryUsageStatsQuery;
    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 240
    .end local v4    # "query":Landroid/os/BatteryUsageStatsQuery;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 245
    .end local v2    # "i":I
    sub-long v4, p1, p3

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method private updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V
    .locals 18
    .param p1, "accumulatedStats"    # Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    .param p2, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 338
    .local v2, "startMonotonicTime":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 339
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v2

    move-wide v7, v2

    goto :goto_0

    .line 338
    :cond_0
    move-wide v7, v2

    .line 341
    .end local v2    # "startMonotonicTime":J
    .local v7, "startMonotonicTime":J
    :goto_0
    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 342
    .local v2, "endWallClockTime":J
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v4}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v9

    .line 344
    .local v9, "endMonotonicTime":J
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    if-nez v4, :cond_1

    .line 345
    new-instance v11, Landroid/os/BatteryUsageStats$Builder;

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZZD)V

    iput-object v11, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getStartClockTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getMonotonicStartTime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    .line 349
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    iget-wide v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 352
    :cond_1
    iput-wide v9, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    .line 354
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v4, v2, v3}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    .line 355
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    sub-long v5, v9, v7

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryUsageStats$Builder;->setStatsDuration(J)Landroid/os/BatteryUsageStats$Builder;

    .line 357
    iget-object v4, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerAttributor:Lcom/android/server/power/stats/PowerAttributor;

    iget-object v5, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v6

    invoke-interface/range {v4 .. v10}, Lcom/android/server/power/stats/PowerAttributor;->estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    .line 360
    iget-object v4, v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    move-object/from16 v5, p2

    invoke-direct {v0, v4, v5}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->populateBatterySessionInfo(Landroid/os/BatteryUsageStats$Builder;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 361
    return-void
.end method


# virtual methods
.method public accumulateBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 11
    .param p1, "session"    # Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 214
    invoke-direct {p0}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->loadAccumulatedBatteryUsageStats()Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;

    move-result-object v0

    .line 215
    .local v0, "accumulatedStats":Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->updateAccumulatedBatteryUsageStats(Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;)V

    .line 217
    new-instance v1, Lcom/android/server/power/stats/PowerStatsSpan;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    move-object v4, v1

    .line 218
    .local v4, "powerStatsSpan":Lcom/android/server/power/stats/PowerStatsSpan;
    new-instance v1, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/AccumulatedBatteryUsageStatsSection;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    .line 220
    iget-wide v5, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    iget-wide v7, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startWallClockTime:J

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->endMonotonicTime:J

    iget-wide v9, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->startMonotonicTime:J

    sub-long v9, v1, v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 223
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    invoke-virtual {v1}, Lcom/android/internal/os/MonotonicClock;->write()V

    .line 224
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v1, v4}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    .line 226
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->discard()V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$AccumulatedBatteryUsageStats;->builder:Landroid/os/BatteryUsageStats$Builder;

    .line 229
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda1;-><init>(Landroid/os/BatteryUsageStats$Builder;)V

    .line 228
    invoke-virtual {v1, v4, v3}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpanAsync(Lcom/android/server/power/stats/PowerStatsSpan;Ljava/lang/Runnable;)V

    .line 231
    :goto_0
    return-void
.end method

.method public accumulateBatteryUsageStatsAsync(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getHistory()Lcom/android/internal/os/BatteryStatsHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHistory;->getMonotonicHistorySize()J

    move-result-wide v0

    .line 195
    .local v0, "historySize":J
    iget-wide v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mAccumulatedBatteryUsageStatsSpanSize:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 197
    monitor-exit p0

    return-void

    .line 200
    .end local v0    # "historySize":J
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 199
    .restart local v0    # "historySize":J
    :cond_0
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mLastAccumulationMonotonicHistorySize:J

    .line 200
    .end local v0    # "historySize":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object v0

    .line 206
    .local v0, "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    new-instance v1, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void

    .line 200
    .end local v0    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .param p2, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 271
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    .line 272
    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 271
    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/stats/BatteryStatsImpl;",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    .line 253
    .local p2, "queries":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v0, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryUsageStats;>;"
    monitor-enter p1

    .line 255
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    .line 256
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object v1

    .line 258
    .local v1, "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v2

    .line 259
    .local v2, "currentTimeMillis":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 260
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    invoke-direct {p0, v1, v5, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 263
    .end local v4    # "i":I
    return-object v0

    .line 256
    .end local v1    # "session":Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;
    .end local v2    # "currentTimeMillis":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
