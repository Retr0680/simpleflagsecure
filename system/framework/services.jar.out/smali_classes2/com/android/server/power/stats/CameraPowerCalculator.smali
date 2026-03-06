.class public Lcom/android/server/power/stats/CameraPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "CameraPowerCalculator.java"


# instance fields
.field private final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 36
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 38
    const-string v1, "camera.avg"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 39
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 13
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 49
    invoke-super/range {p0 .. p7}, Lcom/android/server/power/stats/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCameraEnergyConsumptionUC()J

    move-result-wide v0

    .line 52
    .local v0, "consumptionUc":J
    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v3

    .line 53
    .local v3, "powerModel":I
    nop

    .line 54
    const/4 v4, 0x0

    move-object v5, p2

    move-wide/from16 v6, p3

    invoke-virtual {p2, v6, v7, v4}, Landroid/os/BatteryStats;->getCameraOnTime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 57
    .local v8, "durationMs":J
    const/4 v10, 0x2

    if-ne v3, v10, :cond_0

    .line 58
    invoke-static {v0, v1}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v10

    .local v10, "powerMah":D
    goto :goto_0

    .line 60
    .end local v10    # "powerMah":D
    :cond_0
    iget-object v10, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v10, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v10

    .line 63
    .restart local v10    # "powerMah":D
    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 65
    const/4 v12, 0x3

    invoke-virtual {v4, v12, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v4

    check-cast v4, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 66
    invoke-virtual {v4, v12, v10, v11, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 67
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v12, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v4

    check-cast v4, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 70
    invoke-virtual {v4, v12, v10, v11, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 71
    return-void
.end method

.method protected calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 12
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 76
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getCameraEnergyConsumptionUC()J

    move-result-wide v0

    .line 77
    .local v0, "consumptionUc":J
    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v3

    .line 78
    .local v3, "powerModel":I
    iget-object v4, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 79
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/4 v6, 0x0

    move-wide v7, p3

    invoke-virtual {v4, v5, v7, v8, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v4

    .line 82
    .local v4, "durationMs":J
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 83
    invoke-static {v0, v1}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v9

    .local v9, "powerMah":D
    goto :goto_0

    .line 85
    .end local v9    # "powerMah":D
    :cond_0
    iget-object v6, p0, Lcom/android/server/power/stats/CameraPowerCalculator;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v9

    .line 88
    .restart local v9    # "powerMah":D
    :goto_0
    const/4 v6, 0x3

    invoke-virtual {p1, v6, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    .line 89
    invoke-virtual {v11, v6, v9, v10, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 90
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 43
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
