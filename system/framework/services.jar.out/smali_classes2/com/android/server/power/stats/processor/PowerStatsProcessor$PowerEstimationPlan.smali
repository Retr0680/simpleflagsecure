.class public Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PowerEstimationPlan"
.end annotation


# instance fields
.field public combinedDeviceStateEstimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;",
            ">;"
        }
    .end annotation
.end field

.field public deviceStateEstimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public uidStateEstimates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 1
    .param p1, "config"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 81
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->addDeviceStateEstimations()V

    .line 82
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimations()V

    .line 83
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->addUidStateEstimations()V

    .line 84
    return-void
.end method

.method private addDeviceStateEstimations()V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 88
    .local v0, "config":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    invoke-static {v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object v1

    .line 89
    .local v1, "deviceStateCombinations":[[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 90
    .local v4, "deviceStateCombination":[I
    iget-object v5, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    invoke-direct {v6, v0, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v4    # "deviceStateCombination":[I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private addUidStateEstimations()V
    .locals 12

    .line 146
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 147
    .local v0, "deviceStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v1

    .line 148
    .local v1, "uidStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    array-length v2, v1

    new-array v2, v2, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 150
    .local v2, "uidStatesTrackedForDevice":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    array-length v3, v1

    new-array v3, v3, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 153
    .local v3, "uidStatesNotTrackedForDevice":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 154
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v5

    if-nez v5, :cond_0

    .line 155
    goto :goto_1

    .line 158
    :cond_0
    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v5

    .line 159
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 160
    aget-object v6, v1, v4

    aput-object v6, v2, v4

    goto :goto_1

    .line 162
    :cond_1
    aget-object v6, v1, v4

    aput-object v6, v3, v4

    .line 153
    .end local v5    # "index":I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 167
    .end local v4    # "i":I
    invoke-static {v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object v4

    .line 168
    .local v4, "uidStateCombinations":[[I
    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 169
    .local v7, "stateValues":[I
    nop

    .line 170
    invoke-virtual {p0, v2, v7}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object v8

    .line 171
    .local v8, "combined":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    if-nez v8, :cond_3

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mismatch in UID and combined device states: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-static {v2, v7}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 173
    const-string v10, "PowerStatsProcessor"

    invoke-static {v10, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    goto :goto_3

    .line 177
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getUidStateEstimate(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;)Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    move-result-object v9

    .line 178
    .local v9, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    if-nez v9, :cond_4

    .line 179
    new-instance v10, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    invoke-direct {v10, v8, v3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;-><init>(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    move-object v9, v10

    .line 180
    iget-object v10, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_4
    iget-object v10, v9, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    new-instance v11, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    invoke-direct {v11, v7}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;-><init>([I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v7    # "stateValues":[I
    .end local v8    # "combined":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .end local v9    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 185
    :cond_5
    return-void
.end method

.method private combineDeviceStateEstimations()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    .line 97
    .local v0, "deviceStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v1

    .line 98
    .local v1, "uidStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    array-length v2, v0

    new-array v2, v2, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 101
    .local v2, "deviceStatesTrackedPerUid":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 102
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    goto :goto_1

    .line 106
    :cond_0
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v4

    .line 107
    .local v4, "index":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    aget-object v5, v0, v3

    aput-object v5, v2, v3

    .line 101
    .end local v4    # "index":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 112
    .end local v3    # "i":I
    array-length v3, v0

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 114
    return-void
.end method

.method private combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V
    .locals 3
    .param p1, "deviceStateConfig"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p2, "deviceStatesTrackedPerUid"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p3, "stateValues"    # [I
    .param p4, "state"    # I

    .line 119
    array-length v0, p1

    if-lt p4, v0, :cond_1

    .line 120
    invoke-virtual {p0, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getDeviceStateEstimate([I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    move-result-object v0

    .line 121
    .local v0, "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    invoke-virtual {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    move-result-object v1

    .line 123
    .local v1, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    if-nez v1, :cond_0

    .line 124
    new-instance v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    invoke-direct {v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;-><init>([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)V

    move-object v1, v2

    .line 125
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_0
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void

    .line 131
    .end local v0    # "dse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .end local v1    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    :cond_1
    aget-object v0, p1, p4

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "stateValue":I
    :goto_0
    aget-object v1, p1, p4

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    aput v0, p3, p4

    .line 136
    add-int/lit8 v1, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_2
    nop

    .line 134
    .end local v0    # "stateValue":I
    goto :goto_1

    .line 140
    :cond_3
    add-int/lit8 v0, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combineDeviceStateEstimationsRecursively([Lcom/android/server/power/stats/processor/MultiStateStats$States;[Lcom/android/server/power/stats/processor/MultiStateStats$States;[II)V

    .line 143
    :goto_1
    return-void
.end method


# virtual methods
.method public getCombinedDeviceStateEstimate([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    .locals 4
    .param p1, "deviceStates"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p2, "stateValues"    # [I

    .line 244
    invoke-static {p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 247
    .local v2, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    return-object v2

    .line 247
    :cond_0
    nop

    .line 245
    .end local v2    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 251
    .end local v1    # "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDeviceStateEstimate([I)Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    .locals 4
    .param p1, "stateValues"    # [I

    .line 232
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 235
    .local v2, "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    return-object v2

    .line 235
    :cond_0
    nop

    .line 233
    .end local v2    # "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 239
    .end local v1    # "i":I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getUidStateEstimate(Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;)Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .locals 3
    .param p1, "combined"    # Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 257
    .local v1, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    if-ne v2, p1, :cond_0

    .line 258
    return-object v1

    .line 257
    :cond_0
    nop

    .line 255
    .end local v1    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 261
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetIntermediates()V
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 266
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->intermediates:Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 268
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 269
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iput-object v1, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->intermediates:Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 271
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 273
    .local v2, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 275
    .local v3, "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_3
    if-ltz v4, :cond_2

    .line 276
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    iput-object v1, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->intermediates:Ljava/lang/Object;

    .line 275
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    nop

    .line 271
    .end local v2    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    .end local v3    # "proportionalEstimates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;>;"
    .end local v4    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    nop

    .line 279
    .end local v0    # "i":I
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Step 1. Compute device-wide power estimates for state combinations:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    const-string v4, "    "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    .line 192
    .local v2, "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .end local v2    # "deviceStateEstimation":Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;
    goto :goto_0

    .line 194
    :cond_0
    const-string v1, "Step 2. Combine device-wide estimates that are untracked per UID:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "any":Z
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->combinedDeviceStateEstimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    .line 197
    .local v5, "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 198
    goto :goto_1

    .line 200
    :cond_1
    const/4 v1, 0x1

    .line 201
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v7, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 203
    if-eqz v6, :cond_2

    .line 204
    const-string v7, " + "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    iget-object v7, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->deviceStateEstimations:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;

    iget-object v7, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;->id:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 208
    .end local v6    # "i":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .end local v5    # "cdse":Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;
    goto :goto_1

    .line 210
    :cond_4
    if-nez v1, :cond_5

    .line 211
    const-string v2, "    N/A\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_5
    const-string v2, "Step 3. Proportionally distribute power estimates to UIDs:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;->uidStateEstimates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;

    .line 215
    .local v5, "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->combinedDeviceStateEstimate:Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;

    iget-object v6, v6, Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v6, "\n        among: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    iget-object v7, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 218
    iget-object v7, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->proportionalEstimates:Ljava/util/List;

    .line 219
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;

    .line 220
    .local v7, "uspe":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    if-eqz v6, :cond_6

    .line 221
    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_6
    iget-object v8, v5, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;->states:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v9, v7, Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;->stateValues:[I

    invoke-static {v8, v9}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->-$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .end local v7    # "uspe":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_7
    nop

    .line 225
    .end local v6    # "i":I
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .end local v5    # "uidStateEstimate":Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;
    goto :goto_3

    .line 227
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
