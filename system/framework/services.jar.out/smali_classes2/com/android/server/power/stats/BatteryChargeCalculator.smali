.class public Lcom/android/server/power/stats/BatteryChargeCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "BatteryChargeCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 18
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 38
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 39
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v3

    .line 38
    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->addDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    .line 41
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getBatteryCapacity()I

    move-result v3

    .line 42
    .local v3, "batteryCapacityMah":I
    int-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    .line 44
    nop

    .line 45
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    mul-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 46
    .local v4, "dischargedPowerLowerBoundMah":D
    nop

    .line 47
    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    mul-int/2addr v8, v3

    int-to-double v8, v8

    div-double/2addr v8, v6

    .line 48
    .local v8, "dischargedPowerUpperBoundMah":D
    nop

    .line 49
    invoke-virtual {v0, v4, v5, v8, v9}, Landroid/os/BatteryUsageStats$Builder;->addDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v6

    .line 50
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->addDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 52
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v6

    .line 53
    .local v6, "batteryTimeRemainingMs":J
    const-wide/16 v10, -0x1

    cmp-long v14, v6, v10

    if-eqz v14, :cond_0

    .line 54
    div-long v14, v6, v12

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 57
    :cond_0
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v14

    .line 58
    .local v14, "chargeTimeRemainingMs":J
    cmp-long v10, v14, v10

    if-eqz v10, :cond_1

    .line 59
    div-long v10, v14, v12

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    .line 62
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v10

    div-long/2addr v10, v12

    .line 63
    .local v10, "dischargeMah":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_2

    .line 64
    add-double v12, v4, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v12, v12, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v16

    double-to-long v10, v12

    .line 68
    :cond_2
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    long-to-double v12, v10

    .line 70
    invoke-virtual {v2, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    .line 71
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 32
    const/4 v0, 0x1

    return v0
.end method
