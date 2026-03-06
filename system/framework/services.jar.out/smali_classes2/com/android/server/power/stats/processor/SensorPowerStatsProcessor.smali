.class Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "SensorPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;,
        Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;
    }
.end annotation


# static fields
.field private static final ANDROID_SENSOR_TYPE_PREFIX:Ljava/lang/String; = "android.sensor."

.field private static final INITIAL_TIMESTAMP:J = -0x1L

.field private static final MILLIS_IN_HOUR:D = 3600000.0

.field private static final SENSOR_EVENT_TAG_PREFIX:Ljava/lang/String; = "sensor:0x"

.field private static final TAG:Ljava/lang/String; = "SensorPowerStatsProcessor"


# instance fields
.field private mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mIsInitialized:Z

.field private mLastUpdateTimestamp:J

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/SensorManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J


# direct methods
.method public static synthetic $r8$lambda$eEoAms27NfR9dYafFcEqohrO0c0(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->lambda$ensureInitialized$0(Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/SensorManager;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p1, "sensorManagerSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/SensorManager;>;"
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Ljava/util/function/Supplier;

    .line 71
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 294
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 295
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 296
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 297
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 298
    goto :goto_1

    .line 301
    :cond_0
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    iget-wide v2, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    .line 302
    .local v2, "power":D
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 303
    goto :goto_1

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    invoke-virtual {p1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    .line 310
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 311
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    iget-object v5, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v4, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 294
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "power":D
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 313
    .end local v0    # "i":I
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 23
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uids"    # Landroid/util/IntArray;

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 244
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 245
    .local v4, "uidSensorDurationPositions":[I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [D

    .line 246
    .local v5, "sensorPower":[D
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    .line 247
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Sensor;

    .line 248
    .local v7, "sensor":Landroid/hardware/Sensor;
    iget-object v8, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 249
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getHandle()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->getUidSensorDurationPosition(I)I

    move-result v8

    aput v8, v4, v6

    .line 250
    invoke-virtual {v7}, Landroid/hardware/Sensor;->getPower()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v10

    aput-wide v8, v5, v6

    .line 246
    .end local v7    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 253
    .end local v6    # "i":I
    iget-object v6, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .restart local v6    # "i":I
    :goto_1
    if-ltz v6, :cond_9

    .line 254
    iget-object v7, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 255
    .local v7, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 257
    .local v8, "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "j":I
    :goto_2
    if-ltz v9, :cond_8

    .line 258
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 259
    .local v10, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    invoke-virtual/range {p2 .. p2}, Landroid/util/IntArray;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    .local v11, "k":I
    :goto_3
    if-ltz v11, :cond_7

    .line 260
    move-object/from16 v12, p2

    invoke-virtual {v12, v11}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 261
    .local v13, "uid":I
    iget-object v14, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v15, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {v1, v14, v13, v15}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v14

    if-nez v14, :cond_1

    .line 263
    move-object/from16 v17, v2

    goto :goto_6

    .line 265
    :cond_1
    const-wide/16 v14, 0x0

    .line 266
    .local v14, "power":D
    const/16 v16, 0x0

    move/from16 v3, v16

    .local v3, "m":I
    :goto_4
    move-object/from16 v17, v2

    .end local v2    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local v17, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    array-length v2, v4

    if-ge v3, v2, :cond_4

    .line 267
    aget v2, v4, v3

    .line 268
    .local v2, "position":I
    move/from16 v18, v3

    const/4 v3, -0x1

    .end local v3    # "m":I
    .local v18, "m":I
    if-eq v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    aget-wide v19, v3, v2

    const-wide/16 v21, 0x0

    cmp-long v3, v19, v21

    if-nez v3, :cond_2

    .line 270
    goto :goto_5

    .line 272
    :cond_2
    aget-wide v19, v5, v18

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    move/from16 v21, v2

    .end local v2    # "position":I
    .local v21, "position":I
    aget-wide v2, v3, v21

    long-to-double v2, v2

    mul-double v19, v19, v2

    add-double v14, v14, v19

    goto :goto_5

    .line 268
    .end local v21    # "position":I
    .restart local v2    # "position":I
    :cond_3
    move/from16 v21, v2

    .line 266
    .end local v2    # "position":I
    :goto_5
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v2, v17

    .end local v18    # "m":I
    .restart local v3    # "m":I
    goto :goto_4

    :cond_4
    move/from16 v18, v3

    .line 274
    .end local v3    # "m":I
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-nez v2, :cond_5

    .line 275
    goto :goto_6

    .line 278
    :cond_5
    iget-object v2, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v2, v3, v14, v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 279
    iget-object v2, v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v3, v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v13, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 281
    iget-object v2, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    .line 283
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;
    if-nez v2, :cond_6

    .line 284
    new-instance v3, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor-IA;)V

    move-object v2, v3

    .line 285
    iget-object v0, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object v2, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 287
    :cond_6
    iget-wide v0, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    add-double/2addr v0, v14

    iput-wide v0, v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;->power:D

    .line 259
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$Intermediates;
    .end local v13    # "uid":I
    .end local v14    # "power":D
    :goto_6
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    const/4 v3, -0x1

    goto :goto_3

    .end local v17    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .local v2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_7
    move-object/from16 v12, p2

    move-object/from16 v17, v2

    .line 257
    .end local v2    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v10    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v11    # "k":I
    .restart local v17    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, -0x1

    goto/16 :goto_2

    .end local v17    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v2    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_8
    move-object/from16 v12, p2

    move-object/from16 v17, v2

    .line 253
    .end local v2    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v8    # "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    .end local v9    # "j":I
    .restart local v17    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v3, -0x1

    goto/16 :goto_1

    .end local v17    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .restart local v2    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_9
    nop

    .line 291
    .end local v6    # "i":I
    return-void
.end method

.method private ensureInitialized()Z
    .locals 10

    .line 74
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 75
    return v1

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 79
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    new-instance v2, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>()V

    new-instance v5, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;Ljava/util/List;)V

    .line 85
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 84
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 87
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    move-object v9, v2

    .line 88
    .local v9, "extras":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    invoke-virtual {v2, v9}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 89
    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 90
    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    .line 91
    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    const/16 v4, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 94
    new-instance v2, Lcom/android/internal/os/PowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 95
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 96
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 98
    iput-boolean v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    .line 99
    return v1
.end method

.method private flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestamp"    # J

    .line 234
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    sub-long v1, p2, v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 235
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 237
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 238
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 239
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 240
    return-void
.end method

.method private synthetic lambda$ensureInitialized$0(Ljava/util/List;Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 1
    .param p1, "sensorList"    # Ljava/util/List;
    .param p2, "sensor"    # Landroid/hardware/Sensor;

    .line 85
    invoke-direct {p0, p2, p1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->makeLabel(Landroid/hardware/Sensor;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeLabel(Landroid/hardware/Sensor;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Sensor;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 103
    .local p2, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 104
    .local v0, "type":I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "label":Ljava/lang/String;
    const/4 v2, 0x1

    .line 107
    .local v2, "isSingleton":Z
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 108
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 109
    .local v4, "s":Landroid/hardware/Sensor;
    if-ne v4, p1, :cond_0

    .line 110
    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, v0, :cond_1

    .line 113
    const/4 v2, 0x0

    .line 114
    goto :goto_2

    .line 107
    .end local v4    # "s":Landroid/hardware/Sensor;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 117
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-nez v2, :cond_4

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 119
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v4

    if-lez v4, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    const-string v3, "android.sensor."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_5
    const/16 v3, 0x20

    const/16 v4, 0x5f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 194
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 199
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    .line 200
    .local v1, "sensor":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
    iget-boolean v2, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    .line 198
    .end local v1    # "sensor":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 204
    .end local v0    # "i":I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 206
    iget-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_3

    .line 207
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 210
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v0

    .line 211
    .local v0, "uids":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 216
    :cond_4
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 217
    return-void
.end method

.method noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 145
    iget-boolean v0, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    iget v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v1, -0xc001

    and-int/2addr v0, v1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 153
    const-string/jumbo v1, "sensor:0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 159
    :cond_1
    :try_start_0
    iget-object v0, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v0, v0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 160
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 159
    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/CharSequence;III)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .local v0, "sensorHandle":I
    nop

    .line 166
    iget-object v1, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    .line 167
    .local v1, "sensor":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
    if-nez v1, :cond_2

    .line 168
    new-instance v2, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;-><init>(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor-IA;)V

    move-object v1, v2

    .line 169
    iput v0, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    .line 170
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mSensorStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    :cond_2
    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v2, v2, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 174
    .local v2, "uid":I
    iget v3, p2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 175
    .local v3, "sensorOn":Z
    :goto_0
    if-eqz v3, :cond_5

    .line 176
    iget-boolean v4, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-nez v4, :cond_4

    .line 177
    iput-boolean v5, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    .line 178
    iput v2, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    .line 179
    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v4, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    goto :goto_1

    .line 180
    :cond_4
    iget v4, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    if-eq v4, v2, :cond_6

    .line 181
    iget-wide v4, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    .line 182
    iput v2, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    goto :goto_1

    .line 185
    :cond_5
    iget-boolean v5, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    if-eqz v5, :cond_6

    .line 186
    iget-wide v5, p2, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V

    .line 187
    iput-boolean v4, v1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->stateOn:Z

    .line 190
    :cond_6
    :goto_1
    return-void

    .line 161
    .end local v0    # "sensorHandle":I
    .end local v1    # "sensor":Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
    .end local v2    # "uid":I
    .end local v3    # "sensorOn":Z
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad format of event tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v2, v2, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SensorPowerStatsProcessor"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 154
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_2
    return-void
.end method

.method protected recordUsageDuration(Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;J)V
    .locals 5
    .param p1, "sensorState"    # Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;
    .param p2, "time"    # J

    .line 220
    iget-wide v0, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 221
    .local v0, "durationMs":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v2, v2, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 223
    .local v2, "uidStats":[J
    if-nez v2, :cond_0

    .line 224
    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, v3, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v2, v3, [J

    .line 225
    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->uid:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/SensorPowerStatsLayout;

    iget v4, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->sensorHandle:I

    invoke-virtual {v3, v2, v4, v0, v1}, Lcom/android/server/power/stats/format/SensorPowerStatsLayout;->addUidSensorDuration([JIJ)V

    .line 229
    .end local v2    # "uidStats":[J
    :cond_1
    iput-wide p2, p1, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor$SensorState;->startTime:J

    .line 230
    return-void
.end method

.method start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 1
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 134
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    return-void

    .line 139
    :cond_0
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->mLastUpdateTimestamp:J

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;->flushPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 141
    return-void
.end method
