.class public Lcom/android/server/power/stats/WakelockPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "WakelockPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 40
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 41
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 42
    const-string v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 43
    return-void
.end method

.method private calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V
    .locals 9
    .param p1, "result"    # Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "statsType"    # I

    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .local v0, "wakeLockTimeUs":J
    nop

    .line 113
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    .line 114
    .local v2, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 115
    .local v3, "wakelockStatsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 116
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 120
    .local v5, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    .line 121
    .local v6, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {v6, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v0, v7

    .line 115
    .end local v5    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v6    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 125
    .end local v4    # "i":I
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iput-wide v4, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 128
    iget-object v4, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v5, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 133
    return-void
.end method

.method private calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V
    .locals 8
    .param p1, "result"    # Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I
    .param p8, "osPowerMah"    # D
    .param p10, "osDurationMs"    # J
    .param p12, "totalAppDurationMs"    # J

    .line 138
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v6

    sub-long v6, v6, p12

    .line 140
    .local v6, "wakeTimeMillis":J
    const-wide/16 v1, 0x0

    cmp-long v3, v6, v1

    if-lez v3, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/server/power/stats/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v1

    .line 146
    .local v1, "power":D
    add-long v3, p10, v6

    iput-wide v3, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 147
    add-double v3, p8, v1

    iput-wide v3, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 148
    .end local v1    # "power":D
    goto :goto_0

    .line 149
    :cond_0
    iput-wide v1, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 150
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 152
    :goto_0
    return-void
.end method

.method private calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J
    .locals 8
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "rawUptimeUs"    # J

    .line 160
    invoke-virtual {p1, p4, p5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v0

    .line 161
    .local v0, "batteryUptimeUs":J
    nop

    .line 162
    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    .line 163
    .local v2, "screenOnTimeUs":J
    sub-long v4, v0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 29
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 53
    move-object/from16 v0, p1

    new-instance v1, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/WakelockPowerCalculator-IA;)V

    move-object v4, v1

    .line 54
    .local v4, "result":Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    const/4 v1, 0x0

    .line 55
    .local v1, "osBatteryConsumer":Landroid/os/UidBatteryConsumer$Builder;
    const-wide/16 v2, 0x0

    .line 56
    .local v2, "osPowerMah":D
    const-wide/16 v5, 0x0

    .line 57
    .local v5, "osDurationMs":J
    const-wide/16 v7, 0x0

    .line 58
    .local v7, "totalAppDurationMs":J
    const-wide/16 v9, 0x0

    .line 59
    .local v9, "appPowerMah":D
    nop

    .line 60
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v11

    .line 61
    .local v11, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    move-wide v14, v9

    move-wide v9, v2

    move-wide v2, v14

    move-wide v15, v7

    move/from16 v17, v13

    move-wide v13, v5

    .end local v5    # "osDurationMs":J
    .end local v7    # "totalAppDurationMs":J
    .local v2, "appPowerMah":D
    .local v9, "osPowerMah":D
    .local v12, "i":I
    .local v13, "osDurationMs":J
    .local v15, "totalAppDurationMs":J
    :goto_0
    const/16 v5, 0xc

    if-ltz v12, :cond_2

    .line 62
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    .line 63
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    move v7, v5

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    const/4 v8, 0x0

    move-wide/from16 v19, v9

    move-object/from16 v18, v11

    move-wide v10, v2

    move-object v9, v6

    move v2, v7

    move-object/from16 v3, p0

    move-wide/from16 v6, p3

    .end local v2    # "appPowerMah":D
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v11    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v9, "app":Landroid/os/UidBatteryConsumer$Builder;
    .local v10, "appPowerMah":D
    .local v18, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v19, "osPowerMah":D
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateApp(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V

    .line 65
    iget-wide v5, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v9, v2, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v5, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 66
    invoke-virtual {v3, v2, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 67
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-wide v2, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v15, v2

    .line 69
    iget-wide v2, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v2, v10

    .end local v10    # "appPowerMah":D
    .restart local v2    # "appPowerMah":D
    goto :goto_1

    .line 67
    .end local v2    # "appPowerMah":D
    .restart local v10    # "appPowerMah":D
    :cond_0
    move-wide v2, v10

    .line 72
    .end local v10    # "appPowerMah":D
    .restart local v2    # "appPowerMah":D
    :goto_1
    invoke-virtual {v9}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v5

    if-nez v5, :cond_1

    .line 73
    move-object v1, v9

    .line 74
    iget-wide v5, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    .line 75
    .end local v13    # "osDurationMs":J
    .restart local v5    # "osDurationMs":J
    iget-wide v7, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    move-wide v13, v5

    move-wide v9, v7

    .end local v19    # "osPowerMah":D
    .local v7, "osPowerMah":D
    goto :goto_2

    .line 72
    .end local v5    # "osDurationMs":J
    .end local v7    # "osPowerMah":D
    .restart local v13    # "osDurationMs":J
    .restart local v19    # "osPowerMah":D
    :cond_1
    move-wide/from16 v9, v19

    .line 61
    .end local v19    # "osPowerMah":D
    .local v9, "osPowerMah":D
    :goto_2
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v11, v18

    goto :goto_0

    .end local v18    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .restart local v11    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    :cond_2
    move-wide/from16 v19, v9

    move-object/from16 v18, v11

    move-wide v10, v2

    move v2, v5

    .line 82
    .end local v2    # "appPowerMah":D
    .end local v9    # "osPowerMah":D
    .end local v11    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .end local v12    # "i":I
    .restart local v10    # "appPowerMah":D
    .restart local v18    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .restart local v19    # "osPowerMah":D
    move-wide v5, v10

    .end local v10    # "appPowerMah":D
    .local v5, "appPowerMah":D
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v8, p5

    move-wide/from16 v27, v5

    move-wide/from16 v11, v19

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .end local v5    # "appPowerMah":D
    .end local v19    # "osPowerMah":D
    .local v11, "osPowerMah":D
    .local v27, "appPowerMah":D
    invoke-direct/range {v3 .. v16}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateRemaining(Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V

    .line 84
    move-wide v7, v15

    .end local v15    # "totalAppDurationMs":J
    .local v7, "totalAppDurationMs":J
    iget-wide v5, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    .line 85
    .local v5, "remainingPowerMah":D
    if-eqz v1, :cond_3

    .line 86
    iget-wide v9, v4, Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v1, v2, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    .line 88
    invoke-virtual {v3, v2, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 91
    :cond_3
    move-object/from16 v21, p0

    move-object/from16 v22, p2

    move-wide/from16 v23, p3

    move-wide/from16 v25, p5

    invoke-direct/range {v21 .. v26}, Lcom/android/server/power/stats/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v9

    .line 92
    .local v9, "wakeTimeMs":J
    const-wide/16 v15, 0x0

    cmp-long v3, v9, v15

    if-gez v3, :cond_4

    .line 93
    const-wide/16 v9, 0x0

    .line 95
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3, v2, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v19, v5

    move-wide/from16 v2, v27

    .end local v4    # "result":Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    .end local v5    # "remainingPowerMah":D
    .end local v27    # "appPowerMah":D
    .restart local v2    # "appPowerMah":D
    .local v17, "result":Lcom/android/server/power/stats/WakelockPowerCalculator$PowerAndDuration;
    .local v19, "remainingPowerMah":D
    add-double v4, v2, v19

    .line 99
    move-object/from16 v6, v16

    const/16 v15, 0xc

    invoke-virtual {v6, v15, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4, v15, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v4

    check-cast v4, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 105
    invoke-virtual {v4, v15, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 107
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 47
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
