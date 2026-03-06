.class public Lcom/android/server/power/stats/ScreenPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "ScreenPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;,
        Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenPowerStatsCollector"


# instance fields
.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private mDisplayCount:I

.field private mFirstSample:Z

.field private final mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mLastBrightnessLevelTime:[[J

.field private mLastCollectionTime:J

.field private mLastDozeTime:[J

.field private mLastScreenOnTime:[J

.field private final mLastTopActivityTime:Landroid/util/SparseLongArray;

.field private mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;


# direct methods
.method public static synthetic $r8$lambda$0HnneE1S37oMrEUeOB2Kv1WtWBY(Lcom/android/server/power/stats/ScreenPowerStatsCollector;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->lambda$collectStats$0(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    .line 72
    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 74
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 76
    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 72
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    .line 68
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    .line 77
    iput-object p1, v0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    .line 78
    return-void
.end method

.method private ensureInitialized()Z
    .locals 10

    .line 81
    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 82
    return v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 86
    return v2

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getDisplayCount()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    .line 90
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getScreenUsageTimeRetriever()Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    .line 92
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    invoke-interface {v3}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 94
    new-instance v0, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;

    .line 95
    invoke-interface {v4}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;->getDisplayCount()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 97
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v9, v0

    .line 98
    .local v9, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0, v9}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 99
    new-instance v3, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 104
    .local v3, "powerStatsDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    .line 105
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x5

    aput v5, v4, v1

    aput v0, v4, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    .line 106
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    .line 108
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v3}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 110
    iput-boolean v1, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mIsInitialized:Z

    .line 111
    return v1
.end method

.method private synthetic lambda$collectStats$0(IJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "topActivityTimeMs"    # J

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    sub-long v0, p2, v0

    .line 169
    .local v0, "topActivityDuration":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 174
    iget-object v4, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v4

    .line 175
    .local v4, "mappedUid":I
    iget-object v5, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v5, v5, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 176
    .local v5, "uidStats":[J
    if-nez v5, :cond_1

    .line 177
    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v6

    new-array v5, v6, [J

    .line 178
    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, v6, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :cond_1
    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    .line 182
    invoke-virtual {v7, v5}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->getUidTopActivityDuration([J)J

    move-result-wide v7

    add-long/2addr v7, v0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 181
    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setUidTopActivityDuration([JJ)V

    .line 183
    return-void
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 13

    .line 132
    invoke-direct {p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 137
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 141
    const/4 v0, 0x0

    move v5, v0

    .local v5, "display":I
    :goto_0
    iget v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mDisplayCount:I

    if-ge v5, v0, :cond_5

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    invoke-interface {v0, v5}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getScreenOnTimeMs(I)J

    move-result-wide v9

    .line 143
    .local v9, "screenOnTimeMs":J
    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v4, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aget-wide v6, v4, v5

    sub-long v6, v9, v6

    .line 145
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 144
    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenOnDuration([JIJ)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastScreenOnTime:[J

    aput-wide v9, v0, v5

    .line 149
    const/4 v0, 0x0

    move v6, v0

    .local v6, "level":I
    :goto_1
    const/4 v0, 0x5

    if-ge v6, v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    .line 151
    invoke-interface {v0, v5, v6}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getBrightnessLevelTimeMs(II)J

    move-result-wide v11

    .line 152
    .local v11, "brightnessLevelTimeMs":J
    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v0, :cond_2

    .line 153
    iget-object v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object v0, v0, v5

    aget-wide v7, v0, v6

    sub-long v7, v11, v7

    .line 154
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 153
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setBrightnessLevelDuration([JIIJ)V

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastBrightnessLevelTime:[[J

    aget-object v0, v0, v5

    aput-wide v11, v0, v6

    .line 149
    .end local v11    # "brightnessLevelTimeMs":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    nop

    .line 159
    .end local v6    # "level":I
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    invoke-interface {v0, v5}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->getScreenDozeTimeMs(I)J

    move-result-wide v3

    .line 160
    .local v3, "screenDozeTimeMs":J
    iget-boolean v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    if-nez v0, :cond_4

    .line 161
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, v6, Lcom/android/internal/os/PowerStats;->stats:[J

    iget-object v7, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aget-wide v7, v7, v5

    sub-long v7, v3, v7

    .line 162
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 161
    invoke-virtual {v0, v6, v5, v7, v8}, Lcom/android/server/power/stats/format/ScreenPowerStatsLayout;->setScreenDozeDuration([JIJ)V

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastDozeTime:[J

    aput-wide v3, v0, v5

    .line 141
    .end local v3    # "screenDozeTimeMs":J
    .end local v9    # "screenOnTimeMs":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    nop

    .line 167
    .end local v5    # "display":I
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mScreenUsageTimeRetriever:Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    new-instance v1, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/ScreenPowerStatsCollector;)V

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;->retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 186
    .local v0, "elapsedRealtime":J
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v3, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 187
    iput-wide v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastCollectionTime:J

    .line 189
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mFirstSample:Z

    .line 191
    iget-object v2, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v2
.end method

.method public onScreenStateChange()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->forceSchedule()Z

    .line 124
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    .line 128
    return-void
.end method

.method protected onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/power/stats/ScreenPowerStatsCollector;->mLastTopActivityTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 197
    return-void
.end method
