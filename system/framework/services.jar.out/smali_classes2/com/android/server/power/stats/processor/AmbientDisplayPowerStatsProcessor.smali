.class Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "AmbientDisplayPowerStatsProcessor.java"


# instance fields
.field private final mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field private final mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

.field private final mTmpDeviceStats:[J

.field private mTmpScreenStats:[J


# direct methods
.method public static synthetic $r8$lambda$__RZ2zU9M1rjNylkdjITQyRqVSs(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V

    return-void
.end method

.method constructor <init>()V
    .locals 8

    .line 33
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 34
    new-instance v0, Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    .line 35
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v7, v0

    .line 36
    .local v7, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 37
    new-instance v1, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    .line 38
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    iput-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 39
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    .line 40
    return-void
.end method

.method private synthetic lambda$finish$0(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V
    .locals 4
    .param p1, "screenStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p3, "states"    # [I

    .line 71
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    invoke-virtual {p1, v0, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getDeviceStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getScreenDozePowerEstimate([J)D

    move-result-wide v0

    .line 76
    .local v0, "power":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mStatsLayout:Lcom/android/server/power/stats/format/AmbientDisplayPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 78
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpDeviceStats:[J

    invoke-virtual {p2, p3, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setDeviceStats([I[J)V

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 4
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 44
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getPowerComponentStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    move-result-object v0

    .line 49
    .local v0, "screenStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    if-nez v0, :cond_0

    .line 50
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v1

    .line 54
    .local v1, "screenDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    if-nez v1, :cond_1

    .line 55
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    nop

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 59
    invoke-virtual {v2, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    :cond_2
    iput-object v1, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 61
    new-instance v2, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-direct {v2, v3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 62
    iget-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mScreenPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v2, v2, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;->mTmpScreenStats:[J

    .line 65
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v2

    .line 69
    .local v2, "deviceStateConfig":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    new-instance v3, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/AmbientDisplayPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V

    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 81
    return-void
.end method
