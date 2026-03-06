.class Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "WifiPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerStatsProcessor"


# instance fields
.field private final mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mHasWifiPowerController:Z

.field private final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J

.field private final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 51
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 53
    const-string/jumbo v1, "wifi.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 54
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 55
    const-string/jumbo v1, "wifi.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 56
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 57
    const-string/jumbo v1, "wifi.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 58
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    const-string/jumbo v1, "wifi.active"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 60
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    const-string/jumbo v1, "wifi.scan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 62
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 63
    const-string/jumbo v1, "wifi.batchedscan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 64
    return-void
.end method

.method private adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;D)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    .param p4, "ratio"    # D

    .line 262
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v0, :cond_0

    .line 263
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 264
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 265
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 266
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 267
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v0, v2

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v0, v2

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v0, v2

    .local v0, "adjutedPower":D
    goto :goto_0

    .line 270
    .end local v0    # "adjutedPower":D
    :cond_0
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 271
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 272
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 273
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v0, v2

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v0, v2

    .line 277
    .restart local v0    # "adjutedPower":D
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v2, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    return-void

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 282
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 283
    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 11

    .line 289
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 292
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    new-instance v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor-IA;)V

    .line 293
    .local v2, "cdseIntermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 294
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 295
    .local v3, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 296
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 297
    .local v5, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 298
    .local v6, "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iget-boolean v7, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v7, :cond_0

    .line 299
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 300
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 301
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 302
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    goto :goto_2

    .line 304
    :cond_0
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 305
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 306
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 308
    :goto_2
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 309
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 310
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 295
    .end local v5    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v6    # "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 289
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "cdseIntermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    .end local v3    # "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 313
    .end local v0    # "i":I
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 187
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 192
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 191
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 195
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceBasicScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 197
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceBatchedScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 199
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 201
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceRxTime([J)J

    move-result-wide v1

    .line 200
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    .line 202
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 203
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceTxTime([J)J

    move-result-wide v1

    .line 202
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    .line 204
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 205
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v1

    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 207
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v1

    .line 206
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    .line 208
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mActivePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 213
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getDeviceActiveTime([J)J

    move-result-wide v1

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    .line 214
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    .line 215
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    .line 216
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mBatchedScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v1, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    .line 218
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 224
    return-void
.end method

.method private computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 10

    .line 231
    const-wide/16 v0, 0x0

    .line 232
    .local v0, "totalConsumedEnergy":J
    const-wide/16 v2, 0x0

    .line 234
    .local v2, "totalPower":D
    iget-object v4, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 235
    iget-object v5, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 236
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 237
    .local v5, "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iget-boolean v6, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    if-eqz v6, :cond_0

    .line 238
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_1

    .line 241
    :cond_0
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    add-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 244
    :goto_1
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v0, v6

    .line 234
    .end local v5    # "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 247
    .end local v4    # "i":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_2

    .line 248
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    return-wide v4

    .line 251
    :cond_2
    invoke-static {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4
.end method

.method private computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 317
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 320
    .local v0, "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iget-object v1, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 321
    .local v2, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    goto :goto_0

    .line 325
    :cond_0
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 326
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    .line 327
    .end local v2    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    goto :goto_0

    .line 328
    :cond_1
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 20
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    .line 335
    .local v4, "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iget-object v5, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 336
    .local v6, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v7, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v8, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v7, v2, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 337
    goto :goto_0

    .line 340
    :cond_0
    const-wide/16 v7, 0x0

    .line 341
    .local v7, "power":D
    iget-boolean v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_4

    .line 342
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    cmp-long v9, v12, v10

    if-eqz v9, :cond_1

    .line 343
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v12, v14

    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    long-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v7, v12

    .line 346
    :cond_1
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v9, v12, v10

    if-eqz v9, :cond_2

    .line 347
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v12, v14

    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    long-to-double v14, v14

    div-double/2addr v12, v14

    add-double/2addr v7, v12

    .line 350
    :cond_2
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    add-long/2addr v12, v14

    .line 352
    .local v12, "totalScanDuration":J
    cmp-long v9, v12, v10

    if-eqz v9, :cond_3

    .line 353
    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v9

    iget-object v11, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 354
    invoke-virtual {v11, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v14

    add-long/2addr v9, v14

    .line 355
    .local v9, "scanDuration":J
    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->scanPower:D

    move-wide/from16 v16, v7

    .end local v7    # "power":D
    .local v16, "power":D
    long-to-double v7, v9

    mul-double/2addr v14, v7

    long-to-double v7, v12

    div-double/2addr v14, v7

    add-double v7, v16, v14

    .end local v16    # "power":D
    .restart local v7    # "power":D
    goto :goto_1

    .line 352
    .end local v9    # "scanDuration":J
    :cond_3
    move-wide/from16 v16, v7

    .line 357
    .end local v12    # "totalScanDuration":J
    :goto_1
    goto :goto_4

    .line 358
    :cond_4
    iget-wide v12, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->txPackets:J

    add-long/2addr v12, v14

    .line 359
    .local v12, "totalPackets":J
    cmp-long v9, v12, v10

    if-eqz v9, :cond_5

    .line 360
    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v14

    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    move-wide/from16 v16, v10

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 361
    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v9

    add-long/2addr v14, v9

    .line 362
    .local v14, "packets":J
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->activePower:D

    move-wide/from16 v18, v7

    .end local v7    # "power":D
    .local v18, "power":D
    long-to-double v7, v14

    mul-double/2addr v9, v7

    long-to-double v7, v12

    div-double/2addr v9, v7

    add-double v7, v18, v9

    .end local v18    # "power":D
    .restart local v7    # "power":D
    goto :goto_2

    .line 359
    .end local v14    # "packets":J
    :cond_5
    move-wide/from16 v18, v7

    move-wide/from16 v16, v10

    .line 365
    :goto_2
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    cmp-long v9, v9, v16

    if-eqz v9, :cond_6

    .line 366
    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v9

    .line 367
    .restart local v9    # "scanDuration":J
    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanPower:D

    move-wide/from16 v18, v7

    .end local v7    # "power":D
    .restart local v18    # "power":D
    long-to-double v7, v9

    mul-double/2addr v14, v7

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->basicScanDuration:J

    long-to-double v7, v7

    div-double/2addr v14, v7

    add-double v7, v18, v14

    .end local v18    # "power":D
    .restart local v7    # "power":D
    goto :goto_3

    .line 365
    .end local v9    # "scanDuration":J
    :cond_6
    move-wide/from16 v18, v7

    .line 371
    :goto_3
    iget-wide v9, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    cmp-long v9, v9, v16

    if-eqz v9, :cond_7

    .line 372
    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v9

    .line 374
    .local v9, "batchedScanDuration":J
    iget-wide v14, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanPower:D

    move-wide/from16 v16, v7

    .end local v7    # "power":D
    .restart local v16    # "power":D
    long-to-double v7, v9

    mul-double/2addr v14, v7

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;->batchedScanDuration:J

    long-to-double v7, v7

    div-double/2addr v14, v7

    add-double v7, v16, v14

    .end local v16    # "power":D
    .restart local v7    # "power":D
    goto :goto_4

    .line 371
    .end local v9    # "batchedScanDuration":J
    :cond_7
    move-wide/from16 v16, v7

    .line 378
    .end local v12    # "totalPackets":J
    :goto_4
    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_8

    .line 379
    iget-object v9, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 380
    iget-object v9, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v10, v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 395
    .end local v6    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v7    # "power":D
    :cond_8
    goto/16 :goto_0

    .line 396
    :cond_9
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 176
    new-instance v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 177
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 178
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 179
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->isPowerReportingSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mHasWifiPowerController:Z

    .line 180
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 120
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 132
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    new-instance v2, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor-IA;)V

    .line 133
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 134
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;)V

    .line 130
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 137
    .end local v0    # "i":I
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 138
    .local v0, "ratio":D
    iget-object v2, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v7

    .line 140
    .end local v0    # "ratio":D
    .local v7, "ratio":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v7, v0

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 142
    iget-object v1, p0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 143
    .restart local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .local v4, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/WifiPowerStatsProcessor$Intermediates;D)V

    .line 141
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_3
    move-object v3, p0

    move-object v4, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    goto :goto_2

    .line 140
    .end local v0    # "i":I
    .end local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_4
    move-object v3, p0

    move-object v4, p1

    .line 149
    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_2
    move-wide v0, v7

    goto :goto_3

    .line 138
    .end local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local v7    # "ratio":D
    .local v0, "ratio":D
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_5
    move-object v3, p0

    move-object v4, p1

    .line 149
    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_3
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 151
    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p1

    .line 152
    .local p1, "uids":Landroid/util/IntArray;
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 153
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_7

    .line 154
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 155
    .local v5, "uid":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    iget-object v7, v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 156
    iget-object v7, v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 155
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 153
    .end local v5    # "uid":I
    .end local v6    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    nop

    .line 160
    .end local v2    # "i":I
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_6
    if-ltz v2, :cond_9

    .line 161
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 162
    .restart local v5    # "uid":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_7
    iget-object v7, v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 163
    iget-object v7, v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    nop

    .line 160
    .end local v5    # "uid":I
    .end local v6    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 167
    .end local v2    # "i":I
    :cond_9
    iget-object v2, v3, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 168
    return-void
.end method
