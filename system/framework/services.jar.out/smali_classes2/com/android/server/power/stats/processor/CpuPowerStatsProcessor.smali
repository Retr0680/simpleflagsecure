.class Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "CpuPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;,
        Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    }
.end annotation


# static fields
.field private static final HOUR_IN_MILLIS:D

.field private static final TAG:Ljava/lang/String; = "CpuPowerStatsProcessor"

.field private static final UNKNOWN:I = -0x1


# instance fields
.field private mCombinedEnergyConsumerToPowerBracketMap:[[I

.field private final mCpuClusterCount:I

.field private final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field private final mCpuScalingStepCount:I

.field private mEnergyConsumerToCombinedEnergyConsumerMap:[I

.field private mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mPowerMultiplierForCpuActive:D

.field private final mPowerMultipliersByCluster:[D

.field private final mPowerMultipliersByScalingStep:[D

.field private final mScalingStepToCluster:[I

.field private mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J

.field private mTmpWakelockDeviceStats:[J

.field private mTmpWakelockUidStats:[J

.field private mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V
    .locals 11
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "scalingPolicies"    # Lcom/android/internal/os/CpuScalingPolicies;

    .line 84
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    .line 86
    invoke-virtual {p2}, Lcom/android/internal/os/CpuScalingPolicies;->getScalingStepCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    .line 87
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    .line 88
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "step":I
    invoke-virtual {p2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v1

    .line 92
    .local v1, "policies":[I
    array-length v2, v1

    iput v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    .line 93
    iget v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v2, v2, [D

    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 94
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_0
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v2, v3, :cond_1

    .line 95
    aget v3, v1, v2

    .line 96
    .local v3, "policy":I
    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    .line 97
    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingPolicy(I)D

    move-result-wide v5

    sget-wide v7, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr v5, v7

    aput-wide v5, v4, v2

    .line 98
    invoke-virtual {p2, v3}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v4

    .line 99
    .local v4, "frequencies":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 100
    iget-object v6, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aput v2, v6, v0

    .line 101
    iget-object v6, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    .line 102
    invoke-virtual {p1, v3, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuScalingStep(II)D

    move-result-wide v7

    sget-wide v9, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr v7, v9

    aput-wide v7, v6, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 99
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 94
    .end local v3    # "policy":I
    .end local v4    # "frequencies":[I
    .end local v5    # "i":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 106
    .end local v2    # "cluster":I
    nop

    .line 107
    const-string v2, "cpu.active"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    sget-wide v4, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->HOUR_IN_MILLIS:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    .line 108
    return-void
.end method

.method private adjustEstimatesUsingEnergyConsumers(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;)V
    .locals 13
    .param p1, "intermediates"    # Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;
    .param p2, "deviceStatsIntermediates"    # Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 456
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    .line 457
    .local v0, "energyConsumerCount":I
    if-nez v0, :cond_0

    .line 458
    return-void

    .line 461
    :cond_0
    iget-object v1, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    if-nez v1, :cond_1

    .line 462
    new-array v1, v0, [J

    iput-object v1, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 466
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 467
    iget-object v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aget v3, v3, v1

    aget-wide v4, v2, v3

    iget-object v6, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 468
    invoke-virtual {v6, v7, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 471
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 472
    .local v1, "combinedConsumer":I
    :goto_2
    if-ltz v1, :cond_7

    .line 473
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v2, v2, v1

    .line 475
    .local v2, "combinedEnergyConsumerToPowerBracketMap":[I
    if-nez v2, :cond_3

    .line 476
    goto :goto_5

    .line 479
    :cond_3
    iget-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByEnergyConsumer:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    .line 481
    .local v3, "consumedEnergy":D
    const-wide/16 v5, 0x0

    .line 482
    .local v5, "totalModeledPower":D
    array-length v7, v2

    const/4 v8, 0x0

    move v9, v8

    :goto_3
    if-ge v9, v7, :cond_4

    aget v10, v2, v9

    .line 483
    .local v10, "bracket":I
    iget-object v11, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v11, v11, v10

    add-double/2addr v5, v11

    .line 482
    .end local v10    # "bracket":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 485
    :cond_4
    const-wide/16 v9, 0x0

    cmpl-double v7, v5, v9

    if-nez v7, :cond_5

    .line 486
    goto :goto_5

    .line 489
    :cond_5
    array-length v7, v2

    :goto_4
    nop

    if-ge v8, v7, :cond_6

    aget v9, v2, v8

    .line 490
    .local v9, "bracket":I
    iget-object v10, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    iget-object v11, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v11, v11, v9

    mul-double/2addr v11, v3

    div-double/2addr v11, v5

    aput-wide v11, v10, v9

    .line 489
    .end local v9    # "bracket":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 472
    .end local v2    # "combinedEnergyConsumerToPowerBracketMap":[I
    .end local v3    # "consumedEnergy":D
    .end local v5    # "totalModeledPower":D
    :cond_6
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    nop

    .line 495
    .end local v1    # "combinedConsumer":I
    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 14

    .line 498
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 499
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 500
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    new-instance v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    .line 501
    .local v2, "cdseIntermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 502
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v3

    .line 503
    .local v3, "bracketCount":I
    new-array v4, v3, [J

    iput-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 504
    new-array v4, v3, [D

    iput-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 505
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 506
    .local v4, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_2

    .line 507
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 508
    .local v6, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 512
    .local v7, "intermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    if-nez v7, :cond_0

    .line 513
    goto :goto_3

    .line 516
    :cond_0
    iget-wide v8, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    iget-wide v10, v7, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    add-double/2addr v8, v10

    iput-wide v8, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    .line 517
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_2
    if-ge v8, v3, :cond_1

    .line 518
    iget-object v9, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v10, v9, v8

    iget-object v12, v7, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v12, v12, v8

    add-long/2addr v10, v12

    aput-wide v10, v9, v8

    .line 519
    iget-object v9, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v10, v9, v8

    iget-object v12, v7, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v12, v12, v8

    add-double/2addr v10, v12

    aput-wide v10, v9, v8

    .line 517
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 506
    .end local v6    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v7    # "intermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    .end local v8    # "k":I
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 498
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "cdseIntermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    .end local v3    # "bracketCount":I
    .end local v4    # "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    .end local v5    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 523
    .end local v0    # "i":I
    return-void
.end method

.method private computeTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V
    .locals 10
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "intermediates"    # Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;

    .line 331
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v0, v0, [J

    iput-object v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    .line 332
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v0, v0, [J

    iput-object v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    .line 333
    iget v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v0, v0, [J

    iput-object v0, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    .line 335
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 336
    .local v0, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 338
    .local v2, "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    goto :goto_3

    .line 342
    :cond_0
    iget-wide v3, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    .line 344
    const/4 v3, 0x0

    .local v3, "cluster":I
    :goto_1
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v3, v4, :cond_1

    .line 345
    iget-object v4, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    aget-wide v5, v4, v3

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 346
    invoke-virtual {v7, v8, v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByCluster([JI)J

    move-result-wide v7

    add-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 349
    .end local v3    # "cluster":I
    const/4 v3, 0x0

    .local v3, "step":I
    :goto_2
    iget v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-ge v3, v4, :cond_2

    .line 350
    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByScalingStep([JI)J

    move-result-wide v4

    .line 351
    .local v4, "timeInStep":J
    iget-wide v6, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    add-long/2addr v6, v4

    iput-wide v6, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    .line 352
    iget-object v6, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v7, v6, v3

    add-long/2addr v7, v4

    aput-wide v7, v6, v3

    .line 353
    iget-object v6, p2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aget v7, v7, v3

    aget-wide v8, v6, v7

    add-long/2addr v8, v4

    aput-wide v8, v6, v7

    .line 349
    .end local v4    # "timeInStep":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 336
    .end local v2    # "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v3    # "step":I
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 356
    .end local v1    # "i":I
    return-void
.end method

.method private static containsAny(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 321
    .local p0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .local p1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 322
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v1, 0x1

    return v1

    .line 321
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 326
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method private estimatePowerByDeviceState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 21
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "intermediates"    # Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;
    .param p3, "wakelockStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 397
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v4

    .line 398
    .local v4, "cpuScalingStepCount":I
    iget-object v5, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v5}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v5

    .line 399
    .local v5, "powerBracketCount":I
    iget-object v6, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v6}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v6

    .line 400
    .local v6, "scalingStepToBracketMap":[I
    iget-object v7, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v7

    .line 401
    .local v7, "energyConsumerCount":I
    iget-object v8, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 402
    .local v8, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "dse":I
    :goto_0
    if-ltz v9, :cond_7

    .line 403
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 404
    .local v10, "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    new-instance v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    iput-object v11, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 405
    iget-object v11, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 407
    .local v11, "deviceStatsIntermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    new-array v12, v5, [J

    iput-object v12, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    .line 408
    new-array v12, v5, [D

    iput-object v12, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    .line 410
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v13, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v1, v12, v13}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 411
    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_4

    .line 414
    :cond_0
    const/4 v12, 0x0

    .local v12, "step":I
    :goto_1
    if-ge v12, v4, :cond_2

    .line 415
    iget-object v13, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v13, v13, v12

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    .line 416
    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_2

    .line 419
    :cond_1
    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v13, v14, v12}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getTimeByScalingStep([JI)J

    move-result-wide v13

    .line 420
    .local v13, "timeInStep":J
    iget-object v15, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    aget-wide v15, v15, v12

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "cpuScalingStepCount":I
    .end local v5    # "powerBracketCount":I
    .local v17, "cpuScalingStepCount":I
    .local v18, "powerBracketCount":I
    long-to-double v4, v13

    mul-double/2addr v15, v4

    iget-object v4, v2, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v4, v4, v12

    long-to-double v4, v4

    div-double/2addr v15, v4

    .line 423
    .local v15, "stepPower":D
    aget v4, v6, v12

    .line 424
    .local v4, "bracket":I
    iget-object v5, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v19, v5, v4

    add-long v19, v19, v13

    aput-wide v19, v5, v4

    .line 425
    iget-object v5, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v19, v5, v4

    add-double v19, v19, v15

    aput-wide v19, v5, v4

    .line 414
    .end local v4    # "bracket":I
    .end local v13    # "timeInStep":J
    .end local v15    # "stepPower":D
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v17

    move/from16 v5, v18

    goto :goto_1

    .end local v17    # "cpuScalingStepCount":I
    .end local v18    # "powerBracketCount":I
    .local v4, "cpuScalingStepCount":I
    .restart local v5    # "powerBracketCount":I
    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    .line 428
    .end local v4    # "cpuScalingStepCount":I
    .end local v5    # "powerBracketCount":I
    .end local v12    # "step":I
    .restart local v17    # "cpuScalingStepCount":I
    .restart local v18    # "powerBracketCount":I
    if-eqz v7, :cond_3

    .line 429
    invoke-direct {v0, v2, v11}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->adjustEstimatesUsingEnergyConsumers(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;)V

    .line 432
    :cond_3
    const-wide/16 v4, 0x0

    .line 433
    .local v4, "power":D
    iget-object v12, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    .local v12, "i":I
    :goto_3
    if-ltz v12, :cond_4

    .line 434
    iget-object v13, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v13, v13, v12

    add-double/2addr v4, v13

    .line 433
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_4
    nop

    .line 437
    .end local v12    # "i":I
    const-wide/16 v12, 0x0

    if-eqz v3, :cond_5

    .line 438
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    iget-object v15, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {v3, v14, v15}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 440
    iget-object v14, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    invoke-virtual {v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v14

    .line 442
    .local v14, "wakelockPowerEstimate":D
    sub-double v2, v4, v14

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 446
    .end local v14    # "wakelockPowerEstimate":D
    :cond_5
    cmpl-double v2, v4, v12

    if-eqz v2, :cond_6

    .line 447
    iput-wide v4, v11, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->power:D

    .line 448
    iget-object v2, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 449
    iget-object v2, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 402
    .end local v4    # "power":D
    .end local v10    # "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v11    # "deviceStatsIntermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    :cond_6
    :goto_4
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v17

    move/from16 v5, v18

    goto/16 :goto_0

    .end local v17    # "cpuScalingStepCount":I
    .end local v18    # "powerBracketCount":I
    .local v4, "cpuScalingStepCount":I
    .restart local v5    # "powerBracketCount":I
    :cond_7
    nop

    .line 452
    .end local v9    # "dse":I
    return-void
.end method

.method private estimatePowerByScalingStep(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V
    .locals 12
    .param p1, "intermediates"    # Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;

    .line 360
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultiplierForCpuActive:D

    iget-wide v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->uptime:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    .line 363
    .local v0, "cpuActivePower":D
    iget v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    new-array v2, v2, [D

    iput-object v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    .line 364
    const/4 v2, 0x0

    .local v2, "cluster":I
    :goto_0
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-ge v2, v3, :cond_0

    .line 365
    iget-object v3, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByCluster:[D

    aget-wide v4, v4, v2

    iget-object v6, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByCluster:[J

    aget-wide v6, v6, v2

    long-to-double v6, v6

    mul-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 370
    .end local v2    # "cluster":I
    iget v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    new-array v2, v2, [D

    iput-object v2, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    .line 371
    const/4 v2, 0x0

    .local v2, "step":I
    :goto_1
    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    if-ge v2, v3, :cond_2

    .line 372
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mScalingStepToCluster:[I

    aget v3, v3, v2

    .line 377
    .local v3, "cluster":I
    iget-object v4, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v4, v4, v2

    long-to-double v4, v4

    mul-double/2addr v4, v0

    iget-wide v6, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    long-to-double v6, v6

    div-double/2addr v4, v6

    .line 381
    .local v4, "power":D
    iget-object v6, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTimeByCluster:[J

    aget-wide v6, v6, v3

    .line 382
    .local v6, "cumulativeTimeInCluster":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_1

    .line 383
    iget-object v8, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByCluster:[D

    aget-wide v8, v8, v3

    iget-object v10, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v10, v10, v2

    long-to-double v10, v10

    mul-double/2addr v8, v10

    long-to-double v10, v6

    div-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 388
    :cond_1
    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPowerMultipliersByScalingStep:[D

    aget-wide v8, v8, v2

    iget-object v10, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->timeByScalingStep:[J

    aget-wide v10, v10, v2

    long-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 390
    iget-object v8, p1, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->powerByScalingStep:[D

    aput-wide v4, v8, v2

    .line 371
    .end local v3    # "cluster":I
    .end local v4    # "power":D
    .end local v6    # "cumulativeTimeInCluster":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 392
    .end local v2    # "step":I
    return-void
.end method

.method private estimateUidPowerConsumption(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 18
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .param p4, "wakelockStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 530
    .local v5, "combinedDeviceStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;

    .line 534
    .local v6, "cdsIntermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;
    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    if-nez v7, :cond_1

    :cond_0
    goto/16 :goto_5

    .line 539
    :cond_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 540
    iget-object v8, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 541
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 542
    .local v8, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v10, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 543
    goto :goto_4

    .line 546
    :cond_2
    const-wide/16 v9, 0x0

    .line 547
    .local v9, "power":D
    const/4 v11, 0x0

    .local v11, "bracket":I
    :goto_1
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v12}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 548
    iget-object v12, v6, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v12, v12, v11

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 549
    goto :goto_2

    .line 552
    :cond_3
    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v13, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v12, v13, v11}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getUidTimeByPowerBracket([JI)J

    move-result-wide v12

    .line 554
    .local v12, "timeInBracket":J
    cmp-long v14, v12, v14

    if-nez v14, :cond_4

    .line 555
    goto :goto_2

    .line 558
    :cond_4
    iget-object v14, v6, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->powerByBracket:[D

    aget-wide v14, v14, v11

    move-wide/from16 v16, v9

    .end local v9    # "power":D
    .local v16, "power":D
    long-to-double v9, v12

    mul-double/2addr v14, v9

    iget-object v9, v6, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$DeviceStatsIntermediates;->timeByBracket:[J

    aget-wide v9, v9, v11

    long-to-double v9, v9

    div-double/2addr v14, v9

    add-double v9, v16, v14

    .line 547
    .end local v12    # "timeInBracket":J
    .end local v16    # "power":D
    .restart local v9    # "power":D
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    move-wide/from16 v16, v9

    .line 562
    .end local v9    # "power":D
    .end local v11    # "bracket":I
    .restart local v16    # "power":D
    const-wide/16 v9, 0x0

    if-eqz v4, :cond_6

    .line 563
    iget-object v11, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    iget-object v12, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v4, v11, v2, v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 565
    iget-object v11, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v12, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    invoke-virtual {v11, v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidPowerEstimate([J)D

    move-result-wide v11

    .line 567
    .local v11, "wakelockPowerEstimate":D
    sub-double v13, v16, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    .end local v16    # "power":D
    .local v13, "power":D
    goto :goto_3

    .line 571
    .end local v11    # "wakelockPowerEstimate":D
    .end local v13    # "power":D
    .restart local v16    # "power":D
    :cond_6
    move-wide/from16 v13, v16

    .end local v16    # "power":D
    .restart local v13    # "power":D
    :goto_3
    cmpl-double v9, v13, v9

    if-eqz v9, :cond_7

    .line 572
    iget-object v9, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10, v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 573
    iget-object v9, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v10, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 539
    .end local v8    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v13    # "power":D
    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    nop

    .line 576
    .end local v7    # "i":I
    return-void

    .line 535
    :goto_5
    const-string v7, "CpuPowerStatsProcessor"

    const-string v8, "cdsIntermediates or timeByBracket is null, skipping power estimation."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method private getWakelockStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .locals 4
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 209
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    return-object v1

    .line 213
    :cond_0
    nop

    .line 214
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v0

    .line 216
    .local v0, "wakelockStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-nez v0, :cond_1

    .line 217
    return-object v1

    .line 220
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v2

    .line 221
    .local v2, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    if-nez v2, :cond_2

    .line 222
    return-object v1

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 226
    :cond_3
    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 227
    new-instance v1, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v1, v3}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockPowerStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 228
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockDeviceStats:[J

    .line 229
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpWakelockUidStats:[J

    .line 232
    :cond_4
    return-object v0
.end method

.method private initEnergyConsumerToPowerBracketMaps()V
    .locals 13

    .line 256
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    .line 257
    .local v0, "energyConsumerCount":I
    if-nez v0, :cond_0

    .line 258
    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuPowerBracketCount()I

    move-result v1

    .line 263
    .local v1, "powerBracketCount":I
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    .line 264
    new-array v2, v0, [[I

    iput-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    .line 266
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v2}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v2

    .line 267
    .local v2, "policies":[I
    array-length v3, v2

    if-ne v0, v3, :cond_9

    .line 268
    iget-object v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getScalingStepToPowerBracketMap()[I

    move-result-object v3

    .line 269
    .local v3, "scalingStepToPowerBracketMap":[I
    array-length v4, v2

    new-array v4, v4, [Landroid/util/ArraySet;

    .line 270
    .local v4, "clusterToBrackets":[Landroid/util/ArraySet;, "[Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 271
    .local v5, "step":I
    const/4 v6, 0x0

    .local v6, "cluster":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 272
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    aget v8, v2, v6

    invoke-virtual {v7, v8}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v7

    .line 273
    .local v7, "freqs":[I
    new-instance v8, Landroid/util/ArraySet;

    array-length v9, v7

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(I)V

    aput-object v8, v4, v6

    .line 274
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 275
    aget-object v9, v4, v6

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "step":I
    .local v10, "step":I
    aget v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v8, v8, 0x1

    move v5, v10

    goto :goto_1

    .end local v10    # "step":I
    .restart local v5    # "step":I
    :cond_1
    nop

    .line 271
    .end local v7    # "freqs":[I
    .end local v8    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 279
    .end local v6    # "cluster":I
    array-length v6, v2

    new-array v6, v6, [Landroid/util/ArraySet;

    .line 280
    .local v6, "combinedEnergyConsumers":[Landroid/util/ArraySet;, "[Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 282
    .local v7, "combinedEnergyConsumersCount":I
    const/4 v8, 0x0

    .local v8, "cluster":I
    :goto_2
    array-length v9, v4

    if-ge v8, v9, :cond_6

    .line 283
    const/4 v9, -0x1

    .line 284
    .local v9, "combineWith":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    if-ge v10, v7, :cond_4

    .line 285
    aget-object v11, v6, v10

    aget-object v12, v4, v8

    invoke-static {v11, v12}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->containsAny(Landroid/util/ArraySet;Landroid/util/ArraySet;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 286
    move v9, v10

    .line 287
    goto :goto_4

    .line 284
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 290
    .end local v10    # "i":I
    :cond_4
    :goto_4
    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    .line 291
    iget-object v10, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v9, v10, v8

    .line 292
    aget-object v10, v6, v9

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_5

    .line 294
    :cond_5
    iget-object v10, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mEnergyConsumerToCombinedEnergyConsumerMap:[I

    aput v7, v10, v8

    .line 296
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "combinedEnergyConsumersCount":I
    .local v10, "combinedEnergyConsumersCount":I
    aget-object v11, v4, v8

    aput-object v11, v6, v7

    move v7, v10

    .line 282
    .end local v9    # "combineWith":I
    .end local v10    # "combinedEnergyConsumersCount":I
    .restart local v7    # "combinedEnergyConsumersCount":I
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    nop

    .line 301
    .end local v8    # "cluster":I
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_6
    if-ltz v8, :cond_8

    .line 302
    iget-object v9, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v10, v6, v8

    .line 303
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v10

    new-array v10, v10, [I

    aput-object v10, v9, v8

    .line 304
    aget-object v9, v6, v8

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "j":I
    :goto_7
    if-ltz v9, :cond_7

    .line 305
    iget-object v10, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    aget-object v10, v10, v8

    aget-object v11, v6, v8

    .line 306
    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v9

    .line 304
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_7
    nop

    .line 301
    .end local v9    # "j":I
    add-int/lit8 v8, v8, -0x1

    goto :goto_6

    :cond_8
    nop

    .line 309
    .end local v3    # "scalingStepToPowerBracketMap":[I
    .end local v4    # "clusterToBrackets":[Landroid/util/ArraySet;, "[Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v5    # "step":I
    .end local v6    # "combinedEnergyConsumers":[Landroid/util/ArraySet;, "[Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v7    # "combinedEnergyConsumersCount":I
    .end local v8    # "i":I
    goto :goto_9

    .line 312
    :cond_9
    new-array v3, v1, [I

    .line 313
    .local v3, "map":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    array-length v5, v3

    if-ge v4, v5, :cond_a

    .line 314
    aput v4, v3, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    nop

    .line 316
    .end local v4    # "i":I
    iget-object v4, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCombinedEnergyConsumerToPowerBracketMap:[[I

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 318
    .end local v3    # "map":[I
    :goto_9
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 116
    new-instance v0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    .line 118
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 119
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mWakelockDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 123
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->initEnergyConsumerToPowerBracketMaps()V

    .line 124
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 154
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 164
    :cond_1
    new-instance v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor-IA;)V

    .line 166
    .local v0, "intermediates":Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuScalingStepCount()I

    move-result v1

    .line 167
    .local v1, "cpuScalingStepCount":I
    iget v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    const-string v3, ", expected: "

    const-string v4, "CpuPowerStatsProcessor"

    if-eq v1, v2, :cond_2

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched CPU scaling step count in PowerStats: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuScalingStepCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/CpuPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->getCpuClusterCount()I

    move-result v2

    .line 174
    .local v2, "clusterCount":I
    iget v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    if-eq v2, v5, :cond_3

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatched CPU cluster count in PowerStats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mCpuClusterCount:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 180
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->computeTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V

    .line 181
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;->cumulativeTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 182
    return-void

    .line 185
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimatePowerByScalingStep(Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->getWakelockStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v3

    .line 188
    .local v3, "wakelockStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimatePowerByDeviceState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor$Intermediates;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 189
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 191
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v4

    .line 192
    .local v4, "uids":Landroid/util/IntArray;
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v5

    if-eqz v5, :cond_6

    .line 193
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_6

    .line 194
    invoke-virtual {v4, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 195
    .local v6, "uid":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 196
    iget-object v8, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, p1, v6, v8, v3}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->estimateUidPowerConsumption(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    nop

    .line 193
    .end local v6    # "uid":I
    .end local v7    # "j":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 201
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 202
    return-void
.end method
