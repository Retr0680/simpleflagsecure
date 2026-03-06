.class Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "ScreenPowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenPowerStatsProcessor"


# instance fields
.field private final mDisplayCount:I

.field private mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private final mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private final mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

.field private mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J


# direct methods
.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 9
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 56
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 57
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    .line 58
    iget v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 59
    iget v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    new-array v0, v0, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 60
    iget v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    new-array v0, v0, [[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 61
    const/4 v0, 0x0

    .local v0, "display":I
    :goto_0
    iget v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 63
    const-string/jumbo v3, "screen.on.display"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v2, v1, v0

    .line 65
    const-string/jumbo v1, "screen.full.display"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v1

    .line 67
    .local v1, "averagePowerFullBrightness":D
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    const/4 v4, 0x5

    new-array v5, v4, [Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aput-object v5, v3, v0

    .line 69
    const/4 v3, 0x0

    .local v3, "bin":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 72
    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    div-double/2addr v5, v7

    .line 74
    .local v5, "binPowerMah":D
    iget-object v7, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v7, v7, v0

    new-instance v8, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-direct {v8, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v8, v7, v3

    .line 69
    .end local v5    # "binPowerMah":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    nop

    .line 78
    .end local v3    # "bin":I
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 79
    const-string v5, "ambient.on.display"

    invoke-virtual {p1, v5, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v0

    .line 61
    .end local v1    # "averagePowerFullBrightness":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 81
    .end local v0    # "display":I
    return-void
.end method

.method private combineDeviceStateEstimates()V
    .locals 10

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 180
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    .line 181
    .local v2, "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    const-wide/16 v3, 0x0

    .line 182
    .local v3, "power":D
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_1
    if-ltz v5, :cond_1

    .line 183
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 184
    .local v6, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v7, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    .line 185
    .local v7, "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    if-eqz v7, :cond_0

    .line 186
    iget-wide v8, v7, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    add-double/2addr v3, v8

    .line 182
    .end local v6    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v7    # "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 189
    .end local v5    # "j":I
    const-wide/16 v5, 0x0

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_2

    .line 190
    new-instance v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor-IA;)V

    .line 191
    .local v5, "cdseIntermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    iput-wide v3, v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    .line 192
    iput-object v5, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 178
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v2    # "deviceStateEstimations":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;>;"
    .end local v3    # "power":D
    .end local v5    # "cdseIntermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 195
    .end local v0    # "i":I
    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 9
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_6

    .line 128
    iget-object v2, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v2, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 129
    .local v2, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 130
    goto/16 :goto_6

    .line 133
    :cond_0
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v5, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    .local v3, "power":D
    goto :goto_2

    .line 138
    .end local v3    # "power":D
    :cond_1
    const-wide/16 v3, 0x0

    .line 139
    .restart local v3    # "power":D
    const/4 v5, 0x0

    .local v5, "display":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v6}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 140
    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-direct {p0, v6, v5}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeDisplayPower([JI)D

    move-result-wide v6

    add-double/2addr v3, v6

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    .end local v5    # "display":I
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 144
    new-instance v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;-><init>(Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor-IA;)V

    .line 145
    .local v5, "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    iput-wide v3, v5, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    .line 146
    iput-object v5, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 147
    .end local v3    # "power":D
    .end local v5    # "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    goto :goto_5

    .line 148
    :cond_3
    const-wide/16 v5, 0x0

    .line 149
    .local v5, "power":D
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getEnergyConsumerCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 150
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v3, v7, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v3

    .end local v5    # "power":D
    .restart local v3    # "power":D
    goto :goto_4

    .line 152
    .end local v3    # "power":D
    .restart local v5    # "power":D
    :cond_4
    const/4 v3, 0x0

    .local v3, "display":I
    :goto_3
    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 153
    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenDozePowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v4, v4, v3

    iget-object v7, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 154
    invoke-virtual {v7, v8, v3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenDozeDuration([JI)J

    move-result-wide v7

    .line 153
    invoke-virtual {v4, v7, v8}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v3, v5

    .line 157
    .end local v5    # "power":D
    .local v3, "power":D
    :goto_4
    iget-object v5, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenDozePowerEstimate([JD)V

    .line 160
    .end local v3    # "power":D
    :goto_5
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v3, v4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 127
    .end local v2    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_6
    nop

    .line 162
    .end local v0    # "i":I
    return-void
.end method

.method private computeDisplayPower([JI)D
    .locals 6
    .param p1, "stats"    # [J
    .param p2, "display"    # I

    .line 165
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenOnPowerEstimators:[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 166
    invoke-virtual {v1, p1, p2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenOnDuration([JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    .line 167
    .local v0, "power":D
    const/4 v2, 0x0

    .local v2, "bin":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mScreenBrightnessLevelPowerEstimators:[[Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    aget-object v3, v3, p2

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 169
    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getBrightnessLevelDuration([JII)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 171
    .end local v2    # "bin":I
    return-wide v0
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 19
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uids"    # Landroid/util/IntArray;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    .line 200
    .local v3, "uidStateValues":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 201
    const/4 v6, 0x2

    aput v5, v3, v6

    .line 203
    iget-object v6, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_8

    .line 204
    iget-object v7, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 205
    .local v7, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v8, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v8, v8, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;

    .line 207
    .local v8, "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    iget-object v9, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v9, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->stateValues:[I

    .line 209
    .local v9, "deviceStateValues":[I
    aget v10, v9, v4

    if-nez v10, :cond_7

    if-nez v8, :cond_0

    .line 211
    move/from16 v17, v6

    goto/16 :goto_4

    .line 214
    :cond_0
    aget v10, v9, v5

    aput v10, v3, v5

    .line 216
    const-wide/16 v10, 0x0

    .line 217
    .local v10, "totalTopActivityDuration":J
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v12

    sub-int/2addr v12, v4

    .local v12, "j":I
    :goto_1
    if-ltz v12, :cond_2

    .line 218
    invoke-virtual {v2, v12}, Landroid/util/IntArray;->get(I)I

    move-result v13

    .line 219
    .local v13, "uid":I
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v14, v13, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 220
    iget-object v14, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v15, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 221
    invoke-virtual {v14, v15}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v14

    add-long/2addr v10, v14

    .line 217
    .end local v13    # "uid":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 225
    .end local v12    # "j":I
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    if-nez v14, :cond_3

    .line 226
    return-void

    .line 229
    :cond_3
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v14

    sub-int/2addr v14, v4

    .local v14, "j":I
    :goto_2
    if-ltz v14, :cond_6

    .line 230
    invoke-virtual {v2, v14}, Landroid/util/IntArray;->get(I)I

    move-result v15

    .line 231
    .local v15, "uid":I
    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v4, v15, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 232
    iget-object v4, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v5, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v4, v5}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v4

    .line 233
    .local v4, "duration":J
    cmp-long v16, v4, v12

    if-eqz v16, :cond_4

    .line 234
    iget-wide v12, v8, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;->power:D

    move/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .local v17, "i":I
    .local v18, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    long-to-double v6, v4

    mul-double/2addr v12, v6

    long-to-double v6, v10

    div-double/2addr v12, v6

    .line 235
    .local v12, "power":D
    iget-object v6, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v7, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v6, v7, v12, v13}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 236
    iget-object v6, v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v1, v15, v3, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    goto :goto_3

    .line 233
    .end local v12    # "power":D
    .end local v17    # "i":I
    .end local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v6    # "i":I
    .restart local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_4
    move/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v17    # "i":I
    .restart local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    goto :goto_3

    .line 231
    .end local v4    # "duration":J
    .end local v17    # "i":I
    .end local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v6    # "i":I
    .restart local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_5
    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 229
    .end local v6    # "i":I
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v15    # "uid":I
    .restart local v17    # "i":I
    .restart local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :goto_3
    add-int/lit8 v14, v14, -0x1

    move/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    goto :goto_2

    .end local v17    # "i":I
    .end local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v6    # "i":I
    .restart local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_6
    move/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "i":I
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v17    # "i":I
    .restart local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    goto :goto_4

    .line 209
    .end local v10    # "totalTopActivityDuration":J
    .end local v14    # "j":I
    .end local v17    # "i":I
    .end local v18    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .restart local v6    # "i":I
    .restart local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :cond_7
    move/from16 v17, v6

    move-object/from16 v18, v7

    .line 203
    .end local v6    # "i":I
    .end local v7    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v8    # "intermediates":Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor$Intermediates;
    .end local v9    # "deviceStateValues":[I
    .restart local v17    # "i":I
    :goto_4
    add-int/lit8 v6, v17, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .end local v17    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_0

    :cond_8
    nop

    .line 241
    .end local v6    # "i":I
    return-void
.end method

.method private unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z
    .locals 5
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 84
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 85
    return v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 89
    return v2

    .line 92
    :cond_1
    new-instance v1, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 93
    .local v1, "statsLayout":Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;
    invoke-virtual {v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v3

    iget v4, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    if-eq v3, v4, :cond_2

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible number of displays: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getDisplayCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mDisplayCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenPowerStatsProcessor"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v0

    .line 99
    :cond_2
    iput-object p1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mLastUsedDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 100
    iput-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 101
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 102
    iget v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 103
    return v2
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 2
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 108
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->unpackPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->combineDeviceStateEstimates()V

    .line 119
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v0

    .line 120
    .local v0, "uids":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->resetIntermediates()V

    .line 124
    return-void
.end method
