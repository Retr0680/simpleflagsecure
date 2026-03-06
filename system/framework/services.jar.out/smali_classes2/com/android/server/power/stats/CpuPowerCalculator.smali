.class public Lcom/android/server/power/stats/CpuPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "CpuPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/CpuPowerCalculator$Result;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field private final mNumCpuClusters:I

.field private final mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V
    .locals 9
    .param p1, "cpuScalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;
    .param p2, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 65
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 67
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v0

    .line 68
    .local v0, "policies":[I
    array-length v1, v0

    iput v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    .line 70
    new-instance v1, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 71
    const-string v2, "cpu.active"

    invoke-virtual {p2, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 73
    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget v4, v0, v1

    .line 76
    invoke-virtual {p2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 79
    .end local v1    # "i":I
    nop

    .line 80
    invoke-virtual {p1}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 81
    iget v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    new-array v1, v1, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 84
    aget v3, v0, v2

    .line 85
    .local v3, "policy":I
    invoke-virtual {p1, v3}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v4

    .line 86
    .local v4, "freqs":[I
    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v6, v4

    new-array v6, v6, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v6, v5, v2

    .line 88
    const/4 v5, 0x0

    .local v5, "step":I
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 89
    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 90
    invoke-virtual {p2, v3, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    .line 91
    .local v6, "estimator":Lcom/android/server/power/stats/UsageBasedPowerEstimator;
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v7, v7, v2

    aput-object v6, v7, v5

    .line 92
    iget-object v7, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "index":I
    .local v8, "index":I
    aput-object v6, v7, v1

    .line 88
    .end local v6    # "estimator":Lcom/android/server/power/stats/UsageBasedPowerEstimator;
    add-int/lit8 v5, v5, 0x1

    move v1, v8

    goto :goto_2

    .end local v8    # "index":I
    .restart local v1    # "index":I
    :cond_1
    nop

    .line 83
    .end local v3    # "policy":I
    .end local v4    # "freqs":[I
    .end local v5    # "step":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 95
    .end local v2    # "cluster":I
    return-void
.end method

.method private calculateActiveCpuPowerMah(J)D
    .locals 2
    .param p1, "durationsMs"    # J

    .line 339
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/server/power/stats/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V
    .locals 9
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "query"    # Landroid/os/BatteryUsageStatsQuery;
    .param p4, "result"    # Lcom/android/server/power/stats/CpuPowerCalculator$Result;
    .param p5, "keys"    # [Landroid/os/BatteryConsumer$Key;

    .line 144
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC()J

    move-result-wide v3

    .line 145
    .local v3, "consumptionUC":J
    invoke-static {v3, v4, p3}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v2

    .line 146
    .local v2, "powerModel":I
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v6, p4

    .end local p2    # "u":Landroid/os/BatteryStats$Uid;
    .end local p4    # "result":Lcom/android/server/power/stats/CpuPowerCalculator$Result;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    .local v6, "result":Lcom/android/server/power/stats/CpuPowerCalculator$Result;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/server/power/stats/CpuPowerCalculator$Result;)V

    .line 149
    iget-wide v7, v6, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v7, v8, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p4

    check-cast p4, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v7, v6, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationMs:J

    .line 150
    invoke-virtual {p4, p2, v7, v8}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object p2

    check-cast p2, Landroid/os/UidBatteryConsumer$Builder;

    iget-object p4, v6, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    .line 151
    invoke-virtual {p2, p4}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    .line 153
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    .line 154
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    invoke-direct {p0, p1, v1, p5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateEnergyConsumptionPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    invoke-direct {p0, p1, v1, p5, v6}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/server/power/stats/CpuPowerCalculator$Result;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateEnergyConsumptionPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V
    .locals 8
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "keys"    # [Landroid/os/BatteryConsumer$Key;

    .line 167
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 172
    .local v2, "key":Landroid/os/BatteryConsumer$Key;
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_0

    .line 173
    goto :goto_1

    .line 176
    :cond_0
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid;->getCpuEnergyConsumptionUC(I)J

    move-result-wide v3

    .line 177
    .local v3, "consumptionUC":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 178
    invoke-static {v3, v4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 167
    .end local v2    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v3    # "consumptionUC":J
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method private calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/server/power/stats/CpuPowerCalculator$Result;)V
    .locals 14
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "keys"    # [Landroid/os/BatteryConsumer$Key;
    .param p4, "result"    # Lcom/android/server/power/stats/CpuPowerCalculator$Result;

    .line 186
    move-object/from16 v1, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    iget-object v0, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 192
    :goto_0
    const/4 v0, 0x0

    move v8, v0

    .local v8, "uidProcState":I
    :goto_1
    const/4 v0, 0x7

    if-ge v8, v0, :cond_4

    .line 194
    nop

    .line 195
    invoke-static {v8}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v9

    .line 196
    .local v9, "procState":I
    if-nez v9, :cond_1

    .line 197
    goto :goto_2

    .line 201
    :cond_1
    const/4 v4, 0x0

    .line 203
    .local v4, "cpuClusterTimes":[J
    iget-object v0, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    invoke-virtual {v1, v0, v8}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v10

    .line 204
    .local v10, "hasCpuFreqTimes":Z
    if-nez v4, :cond_2

    if-eqz v10, :cond_3

    .line 205
    :cond_2
    iget-object v11, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    aget-wide v12, v11, v9

    const-wide/16 v2, 0x0

    iget-object v5, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v2

    add-double/2addr v12, v2

    aput-wide v12, v11, v9

    .line 193
    .end local v4    # "cpuClusterTimes":[J
    .end local v9    # "procState":I
    .end local v10    # "hasCpuFreqTimes":Z
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 192
    :cond_4
    nop

    .line 210
    .end local v8    # "uidProcState":I
    array-length v2, v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, v6, v3

    .line 211
    .local v4, "key":Landroid/os/BatteryConsumer$Key;
    iget v5, v4, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v5, :cond_5

    .line 212
    goto :goto_4

    .line 215
    :cond_5
    iget v5, v4, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    move-result-wide v8

    .line 217
    .local v8, "cpuActiveTime":J
    iget-object v5, v7, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    iget v10, v4, Landroid/os/BatteryConsumer$Key;->processState:I

    aget-wide v10, v5, v10

    .line 218
    .local v10, "powerMah":D
    iget-object v5, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 219
    const/4 v5, 0x1

    invoke-virtual {p1, v4, v10, v11, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 220
    invoke-virtual {v5, v4, v8, v9}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 210
    .end local v4    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v8    # "cpuActiveTime":J
    .end local v10    # "powerMah":D
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 222
    :cond_6
    return-void
.end method

.method private calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/server/power/stats/CpuPowerCalculator$Result;)V
    .locals 23
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerModel"    # I
    .param p3, "consumptionUC"    # J
    .param p5, "statsType"    # I
    .param p6, "result"    # Lcom/android/server/power/stats/CpuPowerCalculator$Result;

    .line 227
    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 230
    .local v3, "durationMs":J
    packed-switch p2, :pswitch_data_0

    .line 236
    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v1}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v6

    .local v6, "powerMah":D
    goto :goto_0

    .line 232
    .end local v6    # "powerMah":D
    :pswitch_0
    move-object/from16 v5, p0

    invoke-static/range {p3 .. p4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v6

    .line 233
    .restart local v6    # "powerMah":D
    nop

    .line 246
    :goto_0
    const-wide/16 v8, 0x0

    .line 247
    .local v8, "highestDrain":D
    const/4 v10, 0x0

    .line 248
    .local v10, "packageWithHighestDrain":Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 249
    .local v11, "durationFgMs":J
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 250
    .local v13, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 251
    .local v14, "processStatsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v14, :cond_3

    .line 252
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc;

    .line 253
    .local v0, "ps":Landroid/os/BatteryStats$Uid$Proc;
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v3

    .end local v3    # "durationMs":J
    .local v17, "durationMs":J
    move-object/from16 v3, v16

    check-cast v3, Ljava/lang/String;

    .line 254
    .local v3, "processName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v19

    add-long v11, v11, v19

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v19

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v21

    add-long v19, v19, v21

    .line 257
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v21

    move-object v4, v0

    .end local v0    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Proc;
    add-long v0, v19, v21

    .line 261
    .local v0, "costValue":J
    if-eqz v10, :cond_2

    move-object/from16 v16, v4

    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .local v16, "ps":Landroid/os/BatteryStats$Uid$Proc;
    const-string v4, "*"

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-wide/from16 v19, v8

    goto :goto_2

    .line 264
    :cond_0
    move-wide/from16 v19, v8

    .end local v8    # "highestDrain":D
    .local v19, "highestDrain":D
    long-to-double v8, v0

    cmpg-double v8, v19, v8

    if-gez v8, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    long-to-double v8, v0

    .line 266
    .end local v19    # "highestDrain":D
    .restart local v8    # "highestDrain":D
    move-object v4, v3

    move-object v10, v4

    .end local v10    # "packageWithHighestDrain":Ljava/lang/String;
    .local v4, "packageWithHighestDrain":Ljava/lang/String;
    goto :goto_3

    .line 251
    .end local v0    # "costValue":J
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v8    # "highestDrain":D
    .end local v16    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v10    # "packageWithHighestDrain":Ljava/lang/String;
    .restart local v19    # "highestDrain":D
    :cond_1
    move-wide/from16 v8, v19

    goto :goto_3

    .line 261
    .end local v19    # "highestDrain":D
    .restart local v0    # "costValue":J
    .restart local v3    # "processName":Ljava/lang/String;
    .local v4, "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v8    # "highestDrain":D
    :cond_2
    move-object/from16 v16, v4

    move-wide/from16 v19, v8

    .line 262
    .end local v4    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v8    # "highestDrain":D
    .restart local v16    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .restart local v19    # "highestDrain":D
    :goto_2
    long-to-double v8, v0

    .line 263
    .end local v19    # "highestDrain":D
    .restart local v8    # "highestDrain":D
    move-object v4, v3

    move-object v10, v4

    .line 251
    .end local v0    # "costValue":J
    .end local v3    # "processName":Ljava/lang/String;
    .end local v16    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-wide/from16 v3, v17

    goto :goto_1

    .end local v17    # "durationMs":J
    .local v3, "durationMs":J
    :cond_3
    move-wide/from16 v17, v3

    move-wide/from16 v19, v8

    .line 271
    .end local v3    # "durationMs":J
    .end local v8    # "highestDrain":D
    .end local v15    # "i":I
    .restart local v17    # "durationMs":J
    .restart local v19    # "highestDrain":D
    cmp-long v0, v11, v17

    if-lez v0, :cond_4

    .line 277
    move-wide v3, v11

    .end local v17    # "durationMs":J
    .restart local v3    # "durationMs":J
    goto :goto_4

    .line 271
    .end local v3    # "durationMs":J
    .restart local v17    # "durationMs":J
    :cond_4
    move-wide/from16 v3, v17

    .line 280
    .end local v17    # "durationMs":J
    .restart local v3    # "durationMs":J
    :goto_4
    iput-wide v3, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationMs:J

    .line 281
    iput-wide v11, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->durationFgMs:J

    .line 282
    iput-wide v6, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    .line 283
    iput-object v10, v2, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    .line 284
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .locals 9
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "cpuActiveTime"    # J
    .param p4, "cpuClusterTimes"    # [J
    .param p5, "cpuFreqTimes"    # [J

    .line 297
    invoke-direct {p0, p2, p3}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateActiveCpuPowerMah(J)D

    move-result-wide v0

    .line 300
    .local v0, "powerMah":D
    const-string v2, " actual # "

    const-string v3, "UID "

    const-string v4, "CpuPowerCalculator"

    if-eqz p4, :cond_2

    .line 301
    array-length v5, p4

    iget v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ne v5, v6, :cond_1

    .line 302
    const/4 v5, 0x0

    .local v5, "cluster":I
    :goto_0
    iget v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v5, v6, :cond_0

    .line 303
    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v6, v6, v5

    aget-wide v7, p4, v5

    .line 304
    invoke-virtual {v6, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    .line 305
    .local v6, "power":D
    add-double/2addr v0, v6

    .line 302
    .end local v6    # "power":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    nop

    .end local v5    # "cluster":I
    goto :goto_1

    .line 313
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mNumCpuClusters:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2
    :goto_1
    if-eqz p5, :cond_5

    .line 319
    array-length v5, p5

    iget-object v6, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v6, v6

    if-ne v5, v6, :cond_4

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p5

    if-ge v2, v3, :cond_3

    .line 321
    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, v2

    aget-wide v4, p5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    nop

    .end local v2    # "i":I
    goto :goto_3

    .line 324
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " CPU freq # mismatch: Power Profile # "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    array-length v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_5
    :goto_3
    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 15
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 105
    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    .line 107
    .local v1, "totalPowerMah":D
    sget-object v3, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 108
    .local v3, "keys":[Landroid/os/BatteryConsumer$Key;
    new-instance v4, Lcom/android/server/power/stats/CpuPowerCalculator$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/power/stats/CpuPowerCalculator$Result;-><init>(Lcom/android/server/power/stats/CpuPowerCalculator-IA;)V

    move-object v10, v4

    .line 109
    .local v10, "result":Lcom/android/server/power/stats/CpuPowerCalculator$Result;
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v4}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, v10, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    .line 112
    :cond_0
    nop

    .line 113
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    .line 114
    .local v4, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 115
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/os/UidBatteryConsumer$Builder;

    .line 116
    .local v7, "app":Landroid/os/UidBatteryConsumer$Builder;
    sget-object v6, Lcom/android/server/power/stats/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v3, v6, :cond_2

    .line 117
    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v7, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    move-object v11, v3

    goto :goto_1

    .line 120
    :cond_1
    const/4 v3, 0x0

    move-object v11, v3

    goto :goto_1

    .line 116
    :cond_2
    move-object v11, v3

    .line 123
    .end local v3    # "keys":[Landroid/os/BatteryConsumer$Key;
    .local v11, "keys":[Landroid/os/BatteryConsumer$Key;
    :goto_1
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    move-object v6, p0

    move-object/from16 v9, p7

    invoke-direct/range {v6 .. v11}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/server/power/stats/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V

    .line 124
    invoke-virtual {v7}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    iget-wide v8, v10, Lcom/android/server/power/stats/CpuPowerCalculator$Result;->powerMah:D

    add-double/2addr v1, v8

    .line 114
    .end local v7    # "app":Landroid/os/UidBatteryConsumer$Builder;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    move-object v3, v11

    goto :goto_0

    .end local v11    # "keys":[Landroid/os/BatteryConsumer$Key;
    .restart local v3    # "keys":[Landroid/os/BatteryConsumer$Key;
    :cond_4
    nop

    .line 129
    .end local v5    # "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuEnergyConsumptionUC()J

    move-result-wide v5

    .line 130
    .local v5, "consumptionUC":J
    move-object/from16 v9, p7

    invoke-static {v5, v6, v9}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    .line 132
    .local v7, "powerModel":I
    invoke-virtual {v0, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v8

    .line 134
    invoke-virtual {v8, v12, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 135
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v8

    .line 138
    const/4 v11, 0x2

    if-ne v7, v11, :cond_5

    .line 139
    invoke-static {v5, v6}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v13

    goto :goto_2

    :cond_5
    move-wide v13, v1

    .line 137
    :goto_2
    invoke-virtual {v8, v12, v13, v14, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 140
    return-void
.end method

.method public calculatePerCpuClusterPowerMah(IJ)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "clusterDurationMs"    # J

    .line 350
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePerCpuFreqPowerMah(IIJ)D
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "speedStep"    # I
    .param p3, "clusterSpeedDurationsMs"    # J

    .line 363
    iget-object v0, p0, Lcom/android/server/power/stats/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3, p4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D
    .locals 6
    .param p1, "u"    # Landroid/os/BatteryStats$Uid;
    .param p2, "statsType"    # I

    .line 290
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v4

    .line 291
    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    .line 290
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "u":Landroid/os/BatteryStats$Uid;
    .local v1, "u":Landroid/os/BatteryStats$Uid;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v2

    return-wide v2
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
