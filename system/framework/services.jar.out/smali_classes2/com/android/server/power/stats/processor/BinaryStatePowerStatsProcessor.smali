.class abstract Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "BinaryStatePowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;,
        Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$BinaryState;
    }
.end annotation


# static fields
.field static final STATE_OFF:I = 0x0

.field static final STATE_ON:I = 0x1


# instance fields
.field private mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mEnergyConsumerSupported:Z

.field private mInitiatingUid:I

.field private mLastState:I

.field private mLastStateTimestamp:J

.field private mLastUpdateTimestamp:J

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mPowerComponentId:I

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private final mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J

.field private final mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method constructor <init>(ID)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "averagePowerMilliAmp"    # D

    .line 62
    new-instance v0, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V

    .line 63
    return-void
.end method

.method constructor <init>(IDLcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "averagePowerMilliAmp"    # D
    .param p4, "statsLayout"    # Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 67
    iput p1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    .line 68
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v0, p2, p3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 69
    iput-object p4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 70
    return-void
.end method

.method private combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 236
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 239
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    new-instance v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor-IA;)V

    .line 240
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 241
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_1

    .line 242
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 243
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 244
    .local v4, "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 246
    goto :goto_2

    .line 248
    :cond_0
    iget-wide v5, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDevicePowerEstimate([J)D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    .line 241
    .end local v4    # "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 236
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    .end local v3    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 251
    .end local v0    # "i":I
    return-void
.end method

.method private computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 11
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uids"    # Landroid/util/IntArray;

    .line 254
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 255
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 256
    .local v1, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 258
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 259
    invoke-virtual {p2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 261
    .local v4, "uid":I
    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 262
    .local v6, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v8, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v7, v4, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 264
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    iget-object v9, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 265
    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    .line 267
    .end local v6    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    :cond_0
    goto :goto_2

    .line 258
    .end local v4    # "uid":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 254
    .end local v1    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    .end local v3    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 270
    .end local v0    # "i":I
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 18
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uids"    # Landroid/util/IntArray;

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_5

    .line 274
    iget-object v3, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v3, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 275
    .local v3, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;

    .line 277
    .local v4, "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    iget-wide v5, v4, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 278
    move-object/from16 v11, p2

    move/from16 v16, v2

    goto/16 :goto_4

    .line 280
    :cond_0
    iget-object v5, v3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 282
    .local v5, "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_4

    .line 283
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 284
    .local v9, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "k":I
    :goto_2
    if-ltz v10, :cond_3

    .line 285
    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Landroid/util/IntArray;->get(I)I

    move-result v12

    .line 286
    .local v12, "uid":I
    iget-object v13, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v14, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v13, v12, v14}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 288
    iget-object v13, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v14, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v13

    .line 289
    .local v13, "duration":J
    cmp-long v15, v13, v7

    if-eqz v15, :cond_1

    .line 290
    iget-wide v7, v4, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->power:D

    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "i":I
    .end local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .local v16, "i":I
    .local v17, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    long-to-double v2, v13

    mul-double/2addr v7, v2

    iget-wide v2, v4, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;->duration:J

    long-to-double v2, v2

    div-double/2addr v7, v2

    .line 291
    .local v7, "power":D
    iget-object v2, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v2, v3, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 292
    iget-object v2, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v12, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto :goto_3

    .line 289
    .end local v7    # "power":D
    .end local v16    # "i":I
    .end local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v2    # "i":I
    .restart local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_1
    move/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "i":I
    .end local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v16    # "i":I
    .restart local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    goto :goto_3

    .line 286
    .end local v13    # "duration":J
    .end local v16    # "i":I
    .end local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v2    # "i":I
    .restart local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_2
    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 284
    .end local v2    # "i":I
    .end local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v12    # "uid":I
    .restart local v16    # "i":I
    .restart local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :goto_3
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    const-wide/16 v7, 0x0

    goto :goto_2

    .end local v16    # "i":I
    .end local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v2    # "i":I
    .restart local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_3
    move-object/from16 v11, p2

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 282
    .end local v2    # "i":I
    .end local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v9    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v10    # "k":I
    .restart local v16    # "i":I
    .restart local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    add-int/lit8 v6, v6, -0x1

    const-wide/16 v7, 0x0

    goto :goto_1

    .end local v16    # "i":I
    .end local v17    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v2    # "i":I
    .restart local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_4
    move-object/from16 v11, p2

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 273
    .end local v2    # "i":I
    .end local v3    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v4    # "intermediates":Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor$Intermediates;
    .end local v5    # "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    .end local v6    # "j":I
    .restart local v16    # "i":I
    :goto_4
    add-int/lit8 v2, v16, -0x1

    .end local v16    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_0

    :cond_5
    nop

    .line 299
    .end local v2    # "i":I
    return-void
.end method

.method private ensureInitialized()V
    .locals 8

    .line 75
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v7, v0

    .line 80
    .local v7, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 81
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerComponentId:I

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    .line 83
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 84
    new-instance v0, Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 85
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 86
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 87
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 88
    return-void
.end method

.method private flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestamp"    # J

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 183
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 184
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 185
    return-void
.end method


# virtual methods
.method addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p3, "timestampMs"    # J

    .line 152
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 154
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v2, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v2, p2, Lcom/android/internal/os/PowerStats;->stats:[J

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v4

    .line 159
    .local v4, "consumedEnergy":J
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 160
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    .line 161
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v1, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 164
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 165
    return-void
.end method

.method protected computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "plan"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
    .param p3, "energyConsumerSupported"    # Z

    .line 215
    iget-object v0, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 216
    iget-object v1, p2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 217
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    goto :goto_2

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v2

    .line 222
    .local v2, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 224
    if-eqz p3, :cond_1

    .line 225
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v4

    .local v4, "power":D
    goto :goto_1

    .line 227
    .end local v4    # "power":D
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mUsageBasedPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    .line 229
    .restart local v4    # "power":D
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 230
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v7, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v6, v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 215
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v2    # "duration":J
    .end local v4    # "power":D
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 233
    .end local v0    # "i":I
    return-void
.end method

.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 2
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 194
    iget v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 197
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 199
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;Z)V

    .line 205
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v0

    .line 206
    .local v0, "uids":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->combineDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 208
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidActivityTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 209
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 211
    :cond_2
    return-void
.end method

.method protected abstract getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
.end method

.method noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I

    move-result v0

    .line 105
    .local v0, "state":I
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    if-ne v0, v1, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v2, 0x8015

    if-ne v1, v2, :cond_3

    .line 112
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    goto :goto_0

    .line 115
    :cond_1
    iget v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 116
    iget v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const/16 v3, 0x4015

    if-ne v1, v3, :cond_2

    .line 118
    iget-object v1, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V

    .line 122
    iput v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 123
    iget-boolean v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mEnergyConsumerSupported:Z

    if-nez v1, :cond_3

    .line 124
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 127
    :cond_3
    :goto_0
    iget-wide v1, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v1, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 128
    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 129
    return-void
.end method

.method protected recordUsageDuration(Lcom/android/internal/os/PowerStats;IJ)V
    .locals 7
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "uid"    # I
    .param p3, "time"    # J

    .line 132
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    sub-long v0, p3, v0

    .line 133
    .local v0, "durationMs":J
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 134
    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 133
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 136
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 138
    .local v2, "uidStats":[J
    if-nez v2, :cond_0

    .line 139
    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v3, [J

    .line 140
    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidUsageDuration([JJ)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/BinaryStatePowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, v6, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 144
    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v5

    add-long/2addr v5, v0

    .line 143
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUsageDuration([JJ)V

    .line 147
    .end local v2    # "uidStats":[J
    :cond_1
    :goto_0
    iput-wide p3, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 148
    return-void
.end method

.method start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 2
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 92
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->ensureInitialized()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastState:I

    .line 96
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mInitiatingUid:I

    .line 98
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->mLastStateTimestamp:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 99
    return-void
.end method
