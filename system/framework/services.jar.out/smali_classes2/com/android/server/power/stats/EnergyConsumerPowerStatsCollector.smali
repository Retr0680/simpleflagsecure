.class public Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "EnergyConsumerPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    }
.end annotation


# static fields
.field private static final UNSPECIFIED:I = -0x1


# instance fields
.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private final mEnergyConsumerId:I

.field private final mEnergyConsumerType:I

.field private final mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mLastUpdateTimestamp:J

.field private final mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

.field private final mPowerComponentId:I

.field private final mPowerComponentName:Ljava/lang/String;

.field private mPowerStats:Lcom/android/internal/os/PowerStats;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    .param p2, "powerComponentId"    # I
    .param p3, "powerComponentName"    # Ljava/lang/String;
    .param p4, "energyConsumerType"    # I
    .param p5, "energyConsumerId"    # I
    .param p6, "statsLayout"    # Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 64
    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 65
    invoke-interface {p1, p3}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 66
    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 64
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 67
    iput-object p1, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    .line 68
    iput p2, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    .line 69
    iput-object p3, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    .line 70
    iput p5, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    .line 71
    iput p4, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    .line 72
    iput-object p6, v0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 73
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;ILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V
    .locals 7
    .param p1, "injector"    # Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    .param p2, "powerComponentId"    # I
    .param p3, "powerComponentName"    # Ljava/lang/String;
    .param p4, "energyConsumerType"    # I
    .param p5, "statsLayout"    # Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 57
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .end local p1    # "injector":Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    .end local p2    # "powerComponentId":I
    .end local p3    # "powerComponentName":Ljava/lang/String;
    .end local p4    # "energyConsumerType":I
    .end local p5    # "statsLayout":Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;
    .local v1, "injector":Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
    .local v2, "powerComponentId":I
    .local v3, "powerComponentName":Ljava/lang/String;
    .local v4, "energyConsumerType":I
    .local v6, "statsLayout":Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;-><init>(Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;ILjava/lang/String;IILcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;)V

    .line 59
    return-void
.end method

.method private ensureInitialized()Z
    .locals 10

    .line 76
    iget-boolean v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    return v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_1
    iget v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 85
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerId:I

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;IZ)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mEnergyConsumerType:I

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 92
    :goto_0
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v9, v0

    .line 93
    .local v9, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/format/PowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 94
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    iget v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentId:I

    iget-object v4, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerComponentName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 95
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    .line 96
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(ILjava/lang/String;ILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 98
    .local v2, "powerStatsDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 100
    iput-boolean v1, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mIsInitialized:Z

    .line 101
    return v1
.end method


# virtual methods
.method protected collectStats()Lcom/android/internal/os/PowerStats;
    .locals 5

    .line 106
    invoke-direct {p0}, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return-object v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 111
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 113
    iget-object v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/EnergyConsumerPowerStatsLayout;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    return-object v1

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 118
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 119
    iput-wide v0, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mLastUpdateTimestamp:J

    .line 120
    iget-object v2, p0, Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v2
.end method
