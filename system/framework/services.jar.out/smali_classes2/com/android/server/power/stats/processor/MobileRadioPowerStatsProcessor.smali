.class Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "MobileRadioPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;,
        Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IGNORE:I = -0x1

.field private static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerStats"


# instance fields
.field private final mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mRxTxPowerEstimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpStateStatsArray:[J

.field private mTmpUidStatsArray:[J


# direct methods
.method public static synthetic $r8$lambda$gPkk12Bu4BvFaxvJ-CjPOs0s1BE(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->lambda$computeDevicePowerEstimates$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 13
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 66
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 67
    const-wide v0, 0x100000000L

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v0

    .line 70
    .local v0, "sleepDrainRateMa":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 71
    iput-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_0

    .line 73
    :cond_0
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 76
    :goto_0
    const-wide v6, 0x110000000L

    invoke-virtual {p1, v6, v7, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v6

    .line 79
    .local v6, "idleDrainRateMa":D
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    iput-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    goto :goto_1

    .line 82
    :cond_1
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 86
    :goto_1
    nop

    .line 87
    const-string/jumbo v4, "radio.active"

    invoke-virtual {p1, v4, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v2

    .line 88
    .local v2, "powerRadioActiveMa":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 89
    const-wide/16 v8, 0x0

    .line 90
    .local v8, "sum":D
    const-string/jumbo v4, "modem.controller.rx"

    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 91
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    sget v10, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v4, v10, :cond_2

    .line 92
    const-string/jumbo v10, "modem.controller.tx"

    invoke-virtual {p1, v10, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 91
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 94
    .end local v4    # "i":I
    sget v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->NUM_SIGNAL_STRENGTH_LEVELS:I

    add-int/2addr v4, v5

    int-to-double v10, v4

    div-double v2, v8, v10

    .line 96
    .end local v8    # "sum":D
    :cond_3
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v4, v2, v3}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 98
    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 99
    const-string/jumbo v8, "radio.scanning"

    const-wide/16 v9, 0x0

    invoke-virtual {p1, v8, v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 101
    const/4 v4, 0x0

    .local v4, "rat":I
    :goto_3
    const/4 v8, 0x3

    if-ge v4, v8, :cond_6

    .line 102
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 103
    const/4 v8, 0x5

    goto :goto_4

    :cond_4
    move v8, v5

    .line 104
    .local v8, "freqCount":I
    :goto_4
    const/4 v9, 0x0

    .local v9, "freqRange":I
    :goto_5
    if-ge v9, v8, :cond_5

    .line 105
    iget-object v10, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    .line 106
    invoke-static {v4, v9}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result v11

    .line 107
    invoke-static {p1, v4, v9}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->buildRxTxPowerEstimators(Lcom/android/internal/os/PowerProfile;II)Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    move-result-object v12

    .line 105
    invoke-virtual {v10, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 101
    .end local v8    # "freqCount":I
    .end local v9    # "freqRange":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    nop

    .line 110
    .end local v4    # "rat":I
    return-void
.end method

.method private adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;D)V
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    .param p4, "ratio"    # D

    .line 315
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 316
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 317
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 318
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    mul-double/2addr v0, p4

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 320
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 326
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallPowerEstimate([JD)V

    .line 327
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 328
    return-void
.end method

.method private static buildRxTxPowerEstimators(Lcom/android/internal/os/PowerProfile;II)Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;
    .locals 18
    .param p0, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p1, "rat"    # I
    .param p2, "freqRange"    # I

    .line 114
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    .line 115
    .local v3, "estimators":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;
    const/high16 v4, 0x20000000

    const/4 v5, -0x1

    invoke-static {v4, v1, v2, v5}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v4

    .line 117
    .local v4, "rxKey":J
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v8

    .line 118
    .local v8, "rxDrainRateMa":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    const-string v11, "Unavailable Power Profile constant for key 0x"

    const-string v12, "MobileRadioPowerStats"

    if-eqz v10, :cond_0

    .line 119
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-wide/16 v8, 0x0

    .line 122
    :cond_0
    new-instance v10, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v10, v8, v9}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v10, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 123
    const/4 v10, 0x0

    .local v10, "txLevel":I
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v13

    if-ge v10, v13, :cond_2

    .line 124
    const/high16 v13, 0x30000000

    invoke-static {v13, v1, v2, v10}, Lcom/android/internal/power/ModemPowerProfile;->getAverageBatteryDrainKey(IIII)J

    move-result-wide v13

    .line 126
    .local v13, "txKey":J
    invoke-virtual {v0, v13, v14, v6, v7}, Lcom/android/internal/os/PowerProfile;->getAverageBatteryDrainOrDefaultMa(JD)D

    move-result-wide v15

    .line 128
    .local v15, "txDrainRateMa":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->isNaN(D)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-static {v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-wide/16 v15, 0x0

    move-wide v6, v15

    goto :goto_1

    .line 128
    :cond_1
    move-wide v6, v15

    .line 133
    .end local v15    # "txDrainRateMa":D
    .local v6, "txDrainRateMa":D
    :goto_1
    iget-object v15, v3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v0, v6, v7}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v0, v15, v10

    .line 123
    .end local v6    # "txDrainRateMa":D
    .end local v13    # "txKey":J
    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, p0

    goto :goto_0

    :cond_2
    nop

    .line 135
    .end local v10    # "txLevel":I
    return-object v3
.end method

.method private combineDeviceStateEstimates()V
    .locals 11

    .line 337
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 339
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    new-instance v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    .line 340
    .local v2, "cdseIntermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 341
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 342
    .local v3, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 343
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 344
    .local v5, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 345
    .local v6, "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 346
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 347
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 348
    iget-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-wide v9, v6, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v7, v9

    iput-wide v7, v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 342
    .end local v5    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v6    # "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    nop

    .line 337
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "cdseIntermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    .end local v3    # "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 351
    .end local v0    # "i":I
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V
    .locals 6
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 237
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v0, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 242
    iget-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v4, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    .line 241
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 245
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_2

    .line 246
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mSleepPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 247
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceSleepTime([J)J

    move-result-wide v3

    .line 246
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_3

    .line 251
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mIdlePowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 252
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceIdleTime([J)J

    move-result-wide v3

    .line 251
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_4

    .line 256
    iget-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mScanPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 257
    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceScanTime([J)J

    move-result-wide v3

    .line 256
    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    .line 260
    :cond_4
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->forEachStateStatsKey(Ljava/util/function/IntConsumer;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    if-eqz v0, :cond_5

    .line 275
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mCallPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 276
    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceCallTime([J)J

    move-result-wide v1

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iput-wide v0, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v2, v4

    iget-wide v4, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 281
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-wide v2, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallPowerEstimate([JD)V

    .line 282
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, p2, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 283
    return-void
.end method

.method private computeEstimateAdjustmentRatioUsingConsumedEnergy()D
    .locals 10

    .line 290
    const-wide/16 v0, 0x0

    .line 291
    .local v0, "totalConsumedEnergy":J
    const-wide/16 v2, 0x0

    .line 293
    .local v2, "totalPower":D
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v4, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 294
    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 295
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 296
    .local v5, "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->inactivePower:D

    add-double/2addr v6, v8

    iget-wide v8, v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->callPower:D

    add-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 298
    iget-wide v6, v5, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->consumedEnergy:J

    add-long/2addr v0, v6

    .line 293
    .end local v5    # "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 301
    .end local v4    # "i":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 302
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    return-wide v4

    .line 305
    :cond_1
    invoke-static {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 11
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 370
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 373
    .local v0, "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    iget-object v1, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 374
    .local v2, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    goto :goto_0

    .line 378
    :cond_0
    const-wide/16 v3, 0x0

    .line 379
    .local v3, "power":D
    iget-wide v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 380
    iget-wide v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v9, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v9

    long-to-double v9, v9

    mul-double/2addr v5, v9

    iget-wide v9, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    long-to-double v9, v9

    div-double/2addr v5, v9

    add-double/2addr v3, v5

    .line 383
    :cond_1
    iget-wide v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 384
    iget-wide v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v7, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v7, v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    iget-wide v7, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    long-to-double v7, v7

    div-double/2addr v5, v7

    add-double/2addr v3, v5

    .line 388
    :cond_2
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_3

    .line 389
    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 390
    iget-object v5, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, p2, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 405
    .end local v2    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v3    # "power":D
    :cond_3
    goto :goto_0

    .line 406
    :cond_4
    return-void
.end method

.method private computeUidRxTxTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "uidStateEstimate"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 355
    iget-object v0, p3, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    .line 358
    .local v0, "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
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

    .line 359
    .local v2, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v3, p2, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    goto :goto_0

    .line 363
    :cond_0
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPackets:J

    .line 364
    iget-wide v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPackets:J

    .line 365
    .end local v2    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    goto :goto_0

    .line 366
    :cond_1
    return-void
.end method

.method private synthetic lambda$computeDevicePowerEstimates$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;I)V
    .locals 10
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "deviceStates"    # [I
    .param p3, "intermediates"    # Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    .param p4, "key"    # I

    .line 261
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mRxTxPowerEstimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;

    .line 262
    .local v0, "estimators":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {p1, v1, p4, p2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getStateStats([JI[I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getStateRxTime([J)J

    move-result-wide v1

    .line 266
    .local v1, "rxTime":J
    iget-wide v3, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    iget-object v5, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mRxPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    add-double/2addr v3, v5

    iput-wide v3, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->rxPower:D

    .line 267
    const/4 v3, 0x0

    .local v3, "txLevel":I
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 268
    iget-object v4, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    invoke-virtual {v4, v5, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getStateTxTime([JI)J

    move-result-wide v4

    .line 269
    .local v4, "txTime":J
    iget-wide v6, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    iget-object v8, v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$RxTxPowerEstimators;->mTxPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v8, v8, v3

    .line 270
    invoke-virtual {v8, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, p3, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;->txPower:D

    .line 267
    .end local v4    # "txTime":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 272
    .end local v3    # "txLevel":I
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 1
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 221
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 226
    new-instance v0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 227
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 228
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpStateStatsArray:[J

    .line 229
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 230
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 8
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 171
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 175
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 177
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 182
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 183
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    new-instance v2, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor-IA;)V

    .line 184
    .local v2, "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    iput-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 185
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-direct {p0, p1, v3, v2}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;)V

    .line 181
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v2    # "intermediates":Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 188
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeEstimateAdjustmentRatioUsingConsumedEnergy()D

    move-result-wide v5

    .line 190
    .local v5, "ratio":D
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v5, v0

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 192
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 193
    .local v7, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v3, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v1, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .local v2, "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->adjustDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[ILcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor$Intermediates;D)V

    .line 191
    .end local v7    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_3
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    goto :goto_2

    .line 190
    .end local v0    # "i":I
    .end local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_4
    move-object v1, p0

    move-object v2, p1

    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    goto :goto_2

    .line 188
    .end local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .end local v5    # "ratio":D
    .restart local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :cond_5
    move-object v1, p0

    move-object v2, p1

    .line 199
    .end local p1    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .restart local v2    # "stats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    :goto_2
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 201
    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object p1

    .line 202
    .local p1, "uids":Landroid/util/IntArray;
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_7

    .line 204
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 205
    .local v3, "uid":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 206
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeUidRxTxTotals(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    nop

    .line 203
    .end local v3    # "uid":I
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    nop

    .line 210
    .end local v0    # "i":I
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_5
    if-ltz v0, :cond_9

    .line 211
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 212
    .restart local v3    # "uid":I
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 213
    iget-object v5, v1, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v5, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;ILcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;)V

    .line 212
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    nop

    .line 210
    .end local v3    # "uid":I
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 217
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v1, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 218
    return-void
.end method
