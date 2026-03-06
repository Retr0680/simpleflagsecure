.class public Lcom/android/server/power/stats/format/CpuPowerStatsLayout;
.super Lcom/android/server/power/stats/format/PowerStatsLayout;
.source "CpuPowerStatsLayout.java"


# static fields
.field private static final EXTRA_DEVICE_TIME_BY_CLUSTER_COUNT:Ljava/lang/String; = "dcc"

.field private static final EXTRA_DEVICE_TIME_BY_CLUSTER_POSITION:Ljava/lang/String; = "dc"

.field private static final EXTRA_DEVICE_TIME_BY_SCALING_STEP_COUNT:Ljava/lang/String; = "dtc"

.field private static final EXTRA_DEVICE_TIME_BY_SCALING_STEP_POSITION:Ljava/lang/String; = "dt"

.field private static final EXTRA_UID_BRACKETS_POSITION:Ljava/lang/String; = "ub"

.field private static final EXTRA_UID_STATS_SCALING_STEP_TO_POWER_BRACKET:Ljava/lang/String; = "us"


# instance fields
.field private mDeviceCpuTimeByClusterCount:I

.field private mDeviceCpuTimeByClusterPosition:I

.field private mDeviceCpuTimeByScalingStepCount:I

.field private mDeviceCpuTimeByScalingStepPosition:I

.field private mScalingStepToPowerBracketMap:[I

.field private mUidPowerBracketCount:I

.field private mUidPowerBracketsPosition:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 1
    .param p1, "energyConsumerCount"    # I
    .param p2, "cpuScalingPolicyCount"    # I
    .param p3, "scalingStepToPowerBracketMap"    # [I

    .line 47
    invoke-direct {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>()V

    .line 48
    array-length v0, p3

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addDeviceSectionCpuTimeByScalingStep(I)V

    .line 49
    invoke-direct {p0, p2}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addDeviceSectionCpuTimeByCluster(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionUsageDuration()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionEnergyConsumers(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSectionPowerEstimate()V

    .line 53
    invoke-direct {p0, p3}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->addUidSectionCpuTimeByPowerBracket([I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSectionPowerEstimate()V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 2
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 59
    iget-object v0, p1, Lcom/android/internal/os/PowerStats$Descriptor;->extras:Landroid/os/PersistableBundle;

    .line 60
    .local v0, "extras":Landroid/os/PersistableBundle;
    nop

    .line 61
    const-string v1, "dt"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 62
    nop

    .line 63
    const-string v1, "dtc"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 64
    nop

    .line 65
    const-string v1, "dc"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 66
    nop

    .line 67
    const-string v1, "dcc"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 68
    const-string/jumbo v1, "ub"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 69
    nop

    .line 70
    const-string/jumbo v1, "us"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 71
    iget-object v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    if-nez v1, :cond_0

    .line 72
    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->updatePowerBracketCount()V

    .line 75
    return-void
.end method

.method private addDeviceSectionCpuTimeByCluster(I)V
    .locals 1
    .param p1, "clusterCount"    # I

    .line 127
    const-string v0, "clusters"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    .line 128
    iput p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    .line 129
    return-void
.end method

.method private addDeviceSectionCpuTimeByScalingStep(I)V
    .locals 1
    .param p1, "scalingStepCount"    # I

    .line 99
    const-string/jumbo v0, "steps"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addDeviceSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    .line 100
    iput p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    .line 101
    return-void
.end method

.method private addUidSectionCpuTimeByPowerBracket([I)V
    .locals 2
    .param p1, "scalingStepToPowerBracketMap"    # [I

    .line 155
    iput-object p1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    .line 156
    invoke-direct {p0}, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->updatePowerBracketCount()V

    .line 157
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->addUidSection(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    .line 158
    return-void
.end method

.method private updatePowerBracketCount()V
    .locals 5

    .line 161
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 162
    iget-object v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 163
    .local v3, "bracket":I
    iget v4, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    if-lt v3, v4, :cond_0

    .line 164
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    .line 162
    .end local v3    # "bracket":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_1
    return-void
.end method


# virtual methods
.method public getCpuClusterCount()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    return v0
.end method

.method public getCpuPowerBracketCount()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketCount:I

    return v0
.end method

.method public getCpuScalingStepCount()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    return v0
.end method

.method public getScalingStepToPowerBracketMap()[I
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    return-object v0
.end method

.method public getTimeByCluster([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "cluster"    # I

    .line 148
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getTimeByScalingStep([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "step"    # I

    .line 120
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public getUidTimeByPowerBracket([JI)J
    .locals 2
    .param p1, "stats"    # [J
    .param p2, "bracket"    # I

    .line 188
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr v0, p2

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method public setTimeByCluster([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "cluster"    # I
    .param p3, "value"    # J

    .line 140
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 141
    return-void
.end method

.method public setTimeByScalingStep([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "step"    # I
    .param p3, "value"    # J

    .line 112
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 113
    return-void
.end method

.method public setUidTimeByPowerBracket([JIJ)V
    .locals 1
    .param p1, "stats"    # [J
    .param p2, "bracket"    # I
    .param p3, "value"    # J

    .line 181
    iget v0, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    add-int/2addr v0, p2

    aput-wide p3, p1, v0

    .line 182
    return-void
.end method

.method public toExtras(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    .line 81
    invoke-super {p0, p1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 82
    const-string v0, "dt"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v0, "dtc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByScalingStepCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v0, "dc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "dcc"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mDeviceCpuTimeByClusterCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string/jumbo v0, "ub"

    iget v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mUidPowerBracketsPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string/jumbo v0, "us"

    iget-object v1, p0, Lcom/android/server/power/stats/format/CpuPowerStatsLayout;->mScalingStepToPowerBracketMap:[I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->putIntArray(Landroid/os/PersistableBundle;Ljava/lang/String;[I)V

    .line 93
    return-void
.end method
