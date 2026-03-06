.class Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BasePowerStatsProcessor.java"


# static fields
.field private static final UNSPECIFIED:I = -0x1

.field private static final sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;


# instance fields
.field private final mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

.field private mBatteryCapacityUah:D

.field private mBatteryChargeUah:I

.field private mBatteryLevel:I

.field private mBatteryLevelTimestampMs:J

.field private mCumulativeDischargeDurationMs:J

.field private mCumulativeDischargePct:I

.field private mCumulativeDischargeUah:J

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mPowerStats:Lcom/android/internal/os/PowerStats;

.field private final mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mStartTimestamp:J

.field private final mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    return-void
.end method

.method constructor <init>(Ljava/util/function/DoubleSupplier;)V
    .locals 8
    .param p1, "batteryCapacitySupplier"    # Ljava/util/function/DoubleSupplier;

    .line 53
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

    .line 55
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v7, v0

    .line 56
    .local v7, "extras":Landroid/os/PersistableBundle;
    sget-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 57
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    sget-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 58
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    sget-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    .line 59
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v6

    const/16 v2, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 60
    sget-object v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 61
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 62
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 18
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v4, :cond_0

    .line 108
    new-instance v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 111
    :cond_0
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v6, v2, v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 113
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargePercent([JI)V

    .line 114
    iget-wide v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 115
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v8, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeUah([JJ)V

    goto :goto_0

    .line 118
    :cond_1
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget v8, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    int-to-double v8, v8

    iget-wide v10, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-long v8, v8

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeUah([JJ)V

    .line 121
    :goto_0
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-wide v8, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    invoke-virtual {v4, v5, v8, v9}, Lcom/android/server/power/stats/format/BasePowerStatsLayout;->addBatteryDischargeDuration([JJ)V

    .line 123
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    .line 124
    iput-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    .line 125
    iput-wide v6, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 130
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUids()Landroid/util/IntArray;

    move-result-object v5

    .line 131
    .local v5, "uids":Landroid/util/IntArray;
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    .line 132
    iget-wide v10, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    sub-long v10, v2, v10

    .line 133
    .local v10, "durationMs":J
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v8

    sub-int/2addr v8, v9

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_2

    .line 134
    sget-object v12, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {v12}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v12

    new-array v12, v12, [J

    .line 135
    .local v12, "uidStats":[J
    sget-object v13, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    invoke-virtual {v13, v12, v10, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    .line 136
    iget-object v13, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v13, v13, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/IntArray;->get(I)I

    move-result v14

    invoke-virtual {v13, v14, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    .end local v12    # "uidStats":[J
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 140
    .end local v8    # "i":I
    .end local v10    # "durationMs":J
    :cond_2
    iget-object v8, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 142
    iget-object v8, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    .restart local v8    # "i":I
    :goto_2
    if-ltz v8, :cond_5

    .line 143
    iget-object v10, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v10, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 144
    .local v10, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    .line 145
    .local v11, "uidStateValues":[I
    const/4 v12, 0x2

    aput v4, v11, v12

    .line 147
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v12

    sub-int/2addr v12, v9

    .local v12, "j":I
    :goto_3
    if-ltz v12, :cond_4

    .line 148
    invoke-virtual {v5, v12}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 149
    .local v13, "uid":I
    iget-object v14, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v14, v14, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    .line 150
    .local v14, "stateValues":[I
    aget v15, v14, v9

    aput v15, v11, v9

    .line 151
    aget v15, v14, v4

    aput v15, v11, v4

    .line 153
    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v15, v13, v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 154
    sget-object v15, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v15, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v16

    cmp-long v4, v16, v6

    if-eqz v4, :cond_3

    .line 155
    sget-object v4, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/BasePowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v15, v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    .line 156
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v11, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 147
    .end local v13    # "uid":I
    .end local v14    # "stateValues":[I
    :cond_3
    add-int/lit8 v12, v12, -0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    nop

    .line 142
    .end local v10    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v11    # "uidStateValues":[I
    .end local v12    # "j":I
    add-int/lit8 v8, v8, -0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    nop

    .line 162
    .end local v8    # "i":I
    iput-wide v2, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    .line 163
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->fill([JJ)V

    .line 164
    iget-object v4, v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 165
    return-void
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 5
    .param p1, "batteryLevel"    # I
    .param p2, "batteryChargeUah"    # I
    .param p3, "timestampMs"    # J

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "discharging":Z
    iget v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    if-ge p1, v1, :cond_0

    .line 84
    iget v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    sub-int/2addr v3, p1

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    .line 85
    const/4 v0, 0x1

    .line 88
    :cond_0
    iget v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    if-eq v1, v2, :cond_1

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    if-ge p2, v1, :cond_1

    .line 90
    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    iget v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    sub-int/2addr v3, p2

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    .line 91
    const/4 v0, 0x1

    .line 94
    :cond_1
    if-eqz v0, :cond_2

    .line 95
    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 96
    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    iget-wide v3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    sub-long v3, p3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 100
    :cond_2
    iput p1, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    .line 101
    iput p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    .line 102
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    .line 103
    return-void
.end method

.method start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 66
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mStartTimestamp:J

    .line 67
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 68
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacitySupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {v0}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryCapacityUah:D

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevel:I

    .line 70
    iput v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryChargeUah:I

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mBatteryLevelTimestampMs:J

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeUah:J

    .line 73
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargePct:I

    .line 74
    iput-wide v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mCumulativeDischargeDurationMs:J

    .line 77
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 78
    return-void
.end method
