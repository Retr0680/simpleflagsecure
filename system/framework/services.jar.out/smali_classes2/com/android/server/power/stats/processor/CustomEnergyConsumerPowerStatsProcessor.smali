.class Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "CustomEnergyConsumerPowerStatsProcessor.java"


# static fields
.field private static final sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;


# instance fields
.field private mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

.field private mTmpDeviceStatsArray:[J

.field private mTmpUidStatsArray:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    return-void
.end method

.method private computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 51
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 53
    .local v1, "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v2, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    goto :goto_1

    .line 57
    :cond_0
    sget-object v2, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    sget-object v4, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v5, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 58
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getConsumedEnergy([JI)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v4

    .line 57
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 59
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->stateValues:[I

    iget-object v3, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    invoke-virtual {p1, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 51
    .end local v1    # "estimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 61
    .end local v0    # "i":I
    return-void
.end method

.method private computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V
    .locals 11
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uids"    # Landroid/util/IntArray;

    .line 65
    iget-object v0, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v0, v0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 66
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    iget-object v1, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 67
    .local v1, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 69
    .local v2, "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_2

    .line 70
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 71
    .local v4, "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "k":I
    :goto_2
    if-ltz v5, :cond_1

    .line 72
    invoke-virtual {p2, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    .line 73
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-virtual {p1, v7, v6, v8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats([JI[I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    sget-object v7, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidConsumedEnergy([JI)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->uCtoMah(J)D

    move-result-wide v7

    .line 76
    .local v7, "power":D
    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_0

    .line 77
    sget-object v9, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->sLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    iget-object v10, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {v9, v10, v7, v8}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 78
    iget-object v9, v4, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    iget-object v10, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    invoke-virtual {p1, v6, v9, v10}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setUidStats(I[I[J)V

    .line 71
    .end local v6    # "uid":I
    .end local v7    # "power":D
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    nop

    .line 69
    .end local v4    # "proportionalEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    .end local v5    # "k":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    nop

    .line 65
    .end local v1    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v2    # "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    .end local v3    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    nop

    .line 85
    .end local v0    # "i":I
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 35
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v0

    .line 36
    .local v0, "descriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpDeviceStatsArray:[J

    .line 37
    iget v1, v0, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mTmpUidStatsArray:[J

    .line 38
    iget-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->mPlan:Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->computeDevicePowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getActiveUids()Landroid/util/IntArray;

    move-result-object v1

    .line 45
    .local v1, "uids":Landroid/util/IntArray;
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    invoke-direct {p0, p1, v1}, Lcom/android/server/power/stats/processor/CustomEnergyConsumerPowerStatsProcessor;->computeUidPowerEstimates(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/util/IntArray;)V

    .line 48
    :cond_1
    return-void
.end method
