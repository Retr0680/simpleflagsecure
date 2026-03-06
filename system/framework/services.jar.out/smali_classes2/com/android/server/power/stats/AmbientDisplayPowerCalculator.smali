.class public Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "AmbientDisplayPowerCalculator.java"


# instance fields
.field private final mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 39
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    .line 41
    .local v0, "numDisplays":I
    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 42
    const/4 v1, 0x0

    .local v1, "display":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 44
    const-string v4, "ambient.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 46
    .end local v1    # "display":I
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .locals 4
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J
    .param p4, "statsType"    # I

    .line 69
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private calculateEstimatedPower(Landroid/os/BatteryStats;J)D
    .locals 8
    .param p1, "batteryStats"    # Landroid/os/BatteryStats;
    .param p2, "rawRealtimeUs"    # J

    .line 84
    iget-object v0, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v0, v0

    .line 85
    .local v0, "numDisplays":I
    const-wide/16 v1, 0x0

    .line 86
    .local v1, "power":D
    const/4 v3, 0x0

    .local v3, "display":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 87
    invoke-virtual {p1, v3, p2, p3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 89
    .local v4, "dozeTime":J
    iget-object v6, p0, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    add-double/2addr v1, v6

    .line 86
    .end local v4    # "dozeTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 91
    .end local v3    # "display":I
    return-wide v1
.end method

.method private calculateTotalPower(ILandroid/os/BatteryStats;JJ)D
    .locals 2
    .param p1, "powerModel"    # I
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "consumptionUC"    # J

    .line 74
    packed-switch p1, :pswitch_data_0

    .line 79
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateEstimatedPower(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    return-wide v0

    .line 76
    :pswitch_0
    invoke-static {p5, p6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 13
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 55
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getScreenDozeEnergyConsumptionUC()J

    move-result-wide v5

    .line 56
    .local v5, "energyConsumerUC":J
    move-object/from16 v7, p7

    invoke-static {v5, v6, v7}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v1

    .line 57
    .local v1, "powerModel":I
    const/4 v8, 0x0

    move-wide/from16 v3, p3

    invoke-direct {p0, p2, v3, v4, v8}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v9

    .line 59
    .local v9, "durationMs":J
    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/AmbientDisplayPowerCalculator;->calculateTotalPower(ILandroid/os/BatteryStats;JJ)D

    move-result-wide v11

    .line 61
    .local v11, "powerMah":D
    invoke-virtual {p1, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    .line 63
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    .line 64
    invoke-virtual {v0, v2, v11, v12, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 66
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 36
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
