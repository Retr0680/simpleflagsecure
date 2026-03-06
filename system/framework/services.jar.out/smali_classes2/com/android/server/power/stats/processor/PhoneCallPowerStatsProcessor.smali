.class Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "PhoneCallPowerStatsProcessor.java"


# instance fields
.field private final mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mMobileRadioStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field private final mStatsLayout:Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

.field private final mTmpDeviceStats:[J

.field private mTmpMobileRadioDeviceStats:[J


# direct methods
.method public static synthetic $r8$lambda$ud8eQ1V0t_QmX6ROLeagntpmWa8(Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .line 33
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 34
    new-instance v0, Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

    .line 35
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v7, v0

    .line 36
    .local v7, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 37
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 39
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpDeviceStats:[J

    .line 40
    return-void
.end method

.method private synthetic lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 4
    .param p1, "mobileRadioStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "states"    # [I

    .line 79
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    invoke-virtual {p1, v0, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getDeviceCallPowerEstimate([J)D

    move-result-wide v0

    .line 84
    .local v0, "callPowerEstimate":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/PhoneCallPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 86
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {p2, p3, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 88
    :cond_1
    return-void
.end method

.method private unpackMobileRadioStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z
    .locals 3
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 43
    if-nez p1, :cond_0

    .line 44
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 48
    return v1

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 52
    new-instance v0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v0, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 53
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mMobileRadioStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mTmpMobileRadioDeviceStats:[J

    .line 54
    return v1
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 3
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 59
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 61
    nop

    .line 62
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v0

    .line 64
    .local v0, "mobileRadioStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-nez v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->unpackMobileRadioStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    return-void

    .line 72
    :cond_1
    nop

    .line 73
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v1

    .line 77
    .local v1, "deviceStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    new-instance v2, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    invoke-static {v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 89
    return-void
.end method
