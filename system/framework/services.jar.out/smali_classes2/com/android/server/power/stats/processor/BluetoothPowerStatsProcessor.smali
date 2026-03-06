.class Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BluetoothPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    }
.end annotation


# instance fields
.field private final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J

.field private final mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 41
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 43
    const-string v1, "bluetooth.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 44
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 45
    const-string v1, "bluetooth.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 46
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 47
    const-string v1, "bluetooth.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 48
    return-void
.end method

.method private adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;D)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    .param p4, "ratio"    # D

    .line 208
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 209
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 210
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 211
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v0, v2

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v0, v2

    .line 213
    .local v0, "adjutedPower":D
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v2, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    return-void

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 218
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 219
    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 11

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 227
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    new-instance v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor-IA;)V

    .line 228
    .local v2, "cdseIntermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 229
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 230
    .local v3, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 231
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 232
    .local v5, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 233
    .local v6, "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 234
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 235
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 236
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 237
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 238
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 239
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 240
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 241
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 230
    .end local v5    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v6    # "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    nop

    .line 225
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "cdseIntermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    .end local v3    # "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 244
    .end local v0    # "i":I
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 157
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 162
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 161
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 165
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceRxTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    .line 166
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceTxTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    .line 167
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v0

    .line 170
    .local v0, "idleTime":J
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    .line 171
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-wide v3, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    .line 172
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    .line 173
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v4, v6

    iget-wide v6, p3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 175
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 176
    return-void
.end method

.method private computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 10

    .line 183
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "totalConsumedEnergy":J
    const-wide/16 v2, 0x0

    .line 186
    .local v2, "totalPower":D
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 187
    iget-object v5, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 188
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 189
    .local v5, "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->idlePower:D

    add-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 190
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v0, v6

    .line 186
    .end local v5    # "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 193
    .end local v4    # "i":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 194
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    return-wide v4

    .line 197
    :cond_1
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

    .line 248
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 251
    .local v0, "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
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

    .line 252
    .local v2, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    goto :goto_0

    .line 256
    :cond_0
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    .line 257
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    .line 258
    .end local v2    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    goto :goto_0

    .line 259
    :cond_1
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 18
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    .line 270
    .local v4, "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    iget-wide v5, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxTime:J

    cmp-long v5, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    .line 271
    .local v5, "normalizeRxByScanTime":Z
    :goto_0
    iget-wide v8, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    iget-wide v10, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txTime:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    move v6, v7

    .line 274
    .local v6, "normalizeTxByScanTime":Z
    :cond_1
    iget-object v7, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 275
    .local v8, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v9, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v10, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 276
    goto :goto_1

    .line 279
    :cond_2
    const-wide/16 v9, 0x0

    .line 280
    .local v9, "power":D
    const-wide/16 v11, 0x0

    if-eqz v5, :cond_4

    .line 281
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v13, v13, v11

    if-eqz v13, :cond_3

    .line 282
    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    move-wide/from16 v16, v11

    iget-object v11, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v15, v11}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v11

    long-to-double v11, v11

    mul-double/2addr v13, v11

    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    long-to-double v11, v11

    div-double/2addr v13, v11

    add-double/2addr v9, v13

    goto :goto_2

    .line 281
    :cond_3
    move-wide/from16 v16, v11

    goto :goto_2

    .line 286
    :cond_4
    move-wide/from16 v16, v11

    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    cmp-long v11, v11, v16

    if-eqz v11, :cond_5

    .line 287
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v11, v13

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->rxBytes:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 291
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    .line 292
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    cmp-long v11, v11, v16

    if-eqz v11, :cond_7

    .line 293
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v11, v13

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->scanTime:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    goto :goto_3

    .line 297
    :cond_6
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    cmp-long v11, v11, v16

    if-eqz v11, :cond_7

    .line 298
    iget-wide v11, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v13, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v13

    long-to-double v13, v13

    mul-double/2addr v11, v13

    iget-wide v13, v4, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;->txBytes:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 302
    :cond_7
    :goto_3
    const-wide/16 v11, 0x0

    cmpl-double v11, v9, v11

    if-eqz v11, :cond_8

    .line 303
    iget-object v11, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    iget-object v12, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v11, v12, v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 304
    iget-object v11, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v12, v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v2, v11, v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 306
    .end local v8    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v9    # "power":D
    :cond_8
    goto/16 :goto_1

    .line 307
    :cond_9
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 147
    new-instance v0, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    .line 148
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 149
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 150
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 91
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 98
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 102
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 103
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    new-instance v2, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor-IA;)V

    .line 104
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 105
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;)V

    .line 101
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 108
    .end local v0    # "i":I
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 109
    .local v0, "ratio":D
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BluetoothPowerStatsLayout;

    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v7

    .line 111
    .end local v0    # "ratio":D
    .local v7, "ratio":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v7, v0

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 113
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 114
    .restart local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;

    move-object v3, p0

    move-object v4, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .local v4, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor$Intermediates;D)V

    .line 112
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

    .line 111
    .end local v0    # "i":I
    .end local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_4
    move-object v3, p0

    move-object v4, p1

    .line 120
    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_2
    move-wide v0, v7

    goto :goto_3

    .line 109
    .end local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local v7    # "ratio":D
    .local v0, "ratio":D
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_5
    move-object v3, p0

    move-object v4, p1

    .line 120
    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v4    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_3
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 122
    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p1

    .line 123
    .local p1, "uids":Landroid/util/IntArray;
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_4
    if-ltz v2, :cond_7

    .line 125
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 126
    .local v5, "uid":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    iget-object v7, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 127
    iget-object v7, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 124
    .end local v5    # "uid":I
    .end local v6    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_7
    nop

    .line 131
    .end local v2    # "i":I
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_6
    if-ltz v2, :cond_9

    .line 132
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v5

    .line 133
    .restart local v5    # "uid":I
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_7
    iget-object v7, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 134
    iget-object v7, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 133
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    nop

    .line 131
    .end local v5    # "uid":I
    .end local v6    # "j":I
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 138
    .end local v2    # "i":I
    :cond_9
    iget-object v2, v3, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 139
    return-void
.end method
