.class public Lcom/android/server/power/stats/GnssPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "GnssPowerCalculator.java"


# instance fields
.field private final mAveragePowerGnssOn:D

.field private final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 35
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 36
    const-string/jumbo v0, "gps.on"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    .line 37
    const/4 v0, 0x2

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const-string/jumbo v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 43
    .end local v1    # "i":I
    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D
    .locals 6
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "powerModel"    # I
    .param p4, "rawRealtimeUs"    # J
    .param p6, "averageGnssPowerMa"    # D
    .param p8, "consumedEnergyUC"    # J

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/android/server/power/stats/GnssPowerCalculator;->computeDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v0

    .line 91
    .local v0, "durationMs":J
    packed-switch p3, :pswitch_data_0

    .line 97
    invoke-direct {p0, v0, v1, p6, p7}, Lcom/android/server/power/stats/GnssPowerCalculator;->computePower(JD)D

    move-result-wide v2

    .local v2, "powerMah":D
    goto :goto_0

    .line 93
    .end local v2    # "powerMah":D
    :pswitch_0
    invoke-static {p8, p9}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    .line 94
    .restart local v2    # "powerMah":D
    nop

    .line 100
    :goto_0
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 101
    invoke-virtual {v5, v4, v2, v3, p3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 102
    return-wide v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private computeDuration(Landroid/os/BatteryStats$Uid;JI)J
    .locals 7
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 106
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 107
    .local v0, "sensorStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 108
    .local v1, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    if-nez v1, :cond_0

    .line 109
    const-wide/16 v2, 0x0

    return-wide v2

    .line 112
    :cond_0
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 113
    .local v2, "timer":Landroid/os/BatteryStats$Timer;
    invoke-virtual {v2, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    return-wide v3
.end method

.method private computePower(JD)D
    .locals 4
    .param p1, "sensorTime"    # J
    .param p3, "averageGnssPowerMa"    # D

    .line 117
    long-to-double v0, p1

    mul-double/2addr v0, p3

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getAverageGnssPower(Landroid/os/BatteryStats;JI)D
    .locals 18
    .param p1, "stats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 121
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerGnssOn:D

    .line 122
    .local v1, "averagePower":D
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_0

    .line 123
    return-wide v1

    .line 125
    :cond_0
    const-wide/16 v1, 0x0

    .line 126
    const-wide/16 v3, 0x0

    .line 127
    .local v3, "totalTime":J
    const-wide/16 v5, 0x0

    .line 128
    .local v5, "totalPower":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    .line 129
    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 130
    .local v12, "timePerLevel":J
    add-long/2addr v3, v12

    .line 131
    iget-object v14, v0, Lcom/android/server/power/stats/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    aget-wide v14, v14, v7

    move-wide/from16 v16, v1

    .end local v1    # "averagePower":D
    .local v16, "averagePower":D
    long-to-double v0, v12

    mul-double/2addr v14, v0

    add-double/2addr v5, v14

    .line 128
    .end local v12    # "timePerLevel":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    goto :goto_0

    .end local v16    # "averagePower":D
    .restart local v1    # "averagePower":D
    :cond_1
    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move-wide/from16 v16, v1

    .line 133
    .end local v1    # "averagePower":D
    .end local v7    # "i":I
    .restart local v16    # "averagePower":D
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_2

    .line 134
    long-to-double v0, v3

    div-double v1, v5, v0

    .end local v16    # "averagePower":D
    .restart local v1    # "averagePower":D
    goto :goto_1

    .line 133
    .end local v1    # "averagePower":D
    .restart local v16    # "averagePower":D
    :cond_2
    move-wide/from16 v1, v16

    .line 136
    .end local v16    # "averagePower":D
    .restart local v1    # "averagePower":D
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 22
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 53
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    .line 54
    .local v2, "appsPowerMah":D
    const/4 v4, 0x0

    move-object/from16 v5, p0

    move-object/from16 v15, p2

    move-wide/from16 v9, p3

    invoke-direct {v5, v15, v9, v10, v4}, Lcom/android/server/power/stats/GnssPowerCalculator;->getAverageGnssPower(Landroid/os/BatteryStats;JI)D

    move-result-wide v11

    .line 56
    .local v11, "averageGnssPowerMa":D
    nop

    .line 57
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v6

    .line 58
    .local v6, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_1

    .line 59
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UidBatteryConsumer$Builder;

    .line 60
    .local v13, "app":Landroid/os/UidBatteryConsumer$Builder;
    nop

    .line 61
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid;->getGnssEnergyConsumptionUC()J

    move-result-wide v8

    .line 62
    .local v8, "consumptionUC":J
    move-wide/from16 v20, v8

    move-object v9, v6

    move-object v6, v13

    move-wide/from16 v13, v20

    .end local v8    # "consumptionUC":J
    .local v6, "app":Landroid/os/UidBatteryConsumer$Builder;
    .local v9, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v13, "consumptionUC":J
    invoke-static {v13, v14, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v8

    .line 63
    .local v8, "powerModel":I
    move/from16 v16, v7

    .end local v7    # "i":I
    .local v16, "i":I
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    move/from16 v17, v16

    move-object/from16 v16, v9

    move-wide/from16 v9, p3

    .end local v9    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v16, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v17, "i":I
    invoke-direct/range {v5 .. v14}, Lcom/android/server/power/stats/GnssPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D

    move-result-wide v18

    .line 65
    .local v18, "powerMah":D
    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 66
    add-double v2, v2, v18

    .line 58
    .end local v6    # "app":Landroid/os/UidBatteryConsumer$Builder;
    .end local v8    # "powerModel":I
    .end local v13    # "consumptionUC":J
    .end local v18    # "powerMah":D
    :cond_0
    add-int/lit8 v7, v17, -0x1

    move-object/from16 v5, p0

    move-wide/from16 v9, p3

    move-object/from16 v6, v16

    const/4 v8, 0x1

    .end local v17    # "i":I
    .restart local v7    # "i":I
    goto :goto_0

    .end local v16    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .local v6, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    :cond_1
    move-object/from16 v16, v6

    move/from16 v17, v7

    .line 70
    .end local v6    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    .end local v7    # "i":I
    .restart local v16    # "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v15}, Landroid/os/BatteryStats;->getGnssEnergyConsumptionUC()J

    move-result-wide v5

    .line 71
    .local v5, "consumptionUC":J
    invoke-static {v5, v6, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    .line 73
    .local v7, "powerModel":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 74
    invoke-static {v5, v6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v8

    .local v8, "powerMah":D
    goto :goto_1

    .line 76
    .end local v8    # "powerMah":D
    :cond_2
    move-wide v8, v2

    .line 78
    .restart local v8    # "powerMah":D
    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 80
    const/16 v10, 0xa

    invoke-virtual {v4, v10, v8, v9, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 81
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 83
    invoke-virtual {v4, v10, v2, v3, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 84
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 47
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
