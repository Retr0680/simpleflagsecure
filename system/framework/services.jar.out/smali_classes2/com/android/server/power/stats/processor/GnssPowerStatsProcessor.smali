.class Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "GnssPowerStatsProcessor.java"


# static fields
.field private static final sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;


# instance fields
.field private final mGnssSignalDurations:[J

.field private mGnssSignalLevel:I

.field private mGnssSignalLevelTimestamp:J

.field private final mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mTmpDeviceStatsArray:[J

.field private final mUseSignalLevelEstimators:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 7
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 43
    nop

    .line 44
    const-string/jumbo v0, "gps.on"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    sget-object v2, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    .line 43
    const/16 v3, 0xa

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    .line 33
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 39
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "useSignalLevelEstimators":Z
    const/4 v2, 0x0

    .local v2, "level":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    const-string/jumbo v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    .line 50
    .local v3, "power":D
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v6, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v6, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v5, v2

    .line 47
    .end local v3    # "power":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 55
    .end local v2    # "level":I
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "plan"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
    .param p3, "energyConsumerSupported"    # Z

    .line 133
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    goto :goto_3

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    if-nez v0, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 142
    :cond_2
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 143
    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 144
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    goto :goto_2

    .line 148
    :cond_3
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "power":D
    const/4 v4, 0x0

    .local v4, "level":I
    :goto_1
    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    .line 150
    sget-object v5, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6, v4}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->getDeviceSignalLevelTime([JI)J

    move-result-wide v5

    .line 151
    .local v5, "duration":J
    iget-object v7, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mSignalLevelEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v7, v7, v4

    invoke-virtual {v7, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v2, v7

    .line 149
    .end local v5    # "duration":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 153
    .end local v4    # "level":I
    sget-object v4, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 154
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 142
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v2    # "power":D
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    nop

    .line 156
    .end local v0    # "i":I
    return-void

    .line 134
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 135
    return-void
.end method

.method protected getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 2
    .param p1, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 69
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0
.end method

.method noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    .line 78
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 79
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit16 v0, v0, 0x180

    shr-int/lit8 v0, v0, 0x7

    .line 81
    .local v0, "signalLevel":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "signalLevel":I
    :cond_0
    const/4 v0, -0x1

    .line 88
    .restart local v0    # "signalLevel":I
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    if-ne v0, v1, :cond_2

    .line 89
    return-void

    .line 92
    :cond_2
    iget v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 93
    iget-object v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    iget v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    aget-wide v3, v1, v2

    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v7, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 95
    :cond_3
    iput v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 96
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v1, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 97
    return-void
.end method

.method protected recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 8
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "uid"    # I
    .param p3, "time"    # J

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 103
    iget v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    iget v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    aget-wide v3, v0, v2

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    goto :goto_0

    .line 105
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mUseSignalLevelEstimators:Z

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    iget-wide v5, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    .line 111
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "level":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_4

    .line 112
    iget-object v2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    aget-wide v2, v2, v0

    .line 113
    .local v2, "duration":J
    sget-object v4, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v4, v5, v0, v2, v3}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setDeviceSignalLevelTime([JIJ)V

    .line 114
    if-eq p2, v1, :cond_3

    .line 115
    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 116
    .local v4, "uidStats":[J
    if-nez v4, :cond_2

    .line 117
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v5, v5, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v4, v5, [J

    .line 118
    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v5, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    invoke-virtual {v5, v4, v0, v2, v3}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setUidSignalLevelTime([JIJ)V

    goto :goto_2

    .line 121
    :cond_2
    sget-object v5, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    sget-object v6, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/GnssPowerStatsLayout;

    .line 122
    invoke-virtual {v6, v4, v0}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->getUidSignalLevelTime([JI)J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 121
    invoke-virtual {v5, v4, v0, v6, v7}, Lcom/android/server/power/stats/format/GnssPowerStatsLayout;->setUidSignalLevelTime([JIJ)V

    .line 111
    .end local v2    # "duration":J
    .end local v4    # "uidStats":[J
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 127
    .end local v0    # "level":I
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 129
    return-void
.end method

.method start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 62
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevelTimestamp:J

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalLevel:I

    .line 64
    iget-object v0, p0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;->mGnssSignalDurations:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 65
    return-void
.end method
