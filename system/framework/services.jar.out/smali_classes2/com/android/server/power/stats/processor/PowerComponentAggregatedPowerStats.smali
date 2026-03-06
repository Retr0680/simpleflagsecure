.class Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
.super Ljava/lang/Object;
.source "PowerComponentAggregatedPowerStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AggregatePowerStats"

.field private static final UNKNOWN:J = -0x1L

.field static final XML_ATTR_ID:Ljava/lang/String; = "id"

.field private static final XML_ATTR_KEY:Ljava/lang/String; = "key"

.field private static final XML_ATTR_UID:Ljava/lang/String; = "uid"

.field private static final XML_TAG_DEVICE_STATS:Ljava/lang/String; = "device-stats"

.field static final XML_TAG_POWER_COMPONENT:Ljava/lang/String; = "power_component"

.field private static final XML_TAG_STATE_STATS:Ljava/lang/String; = "state-stats"

.field private static final XML_TAG_UID_STATS:Ljava/lang/String; = "uid-stats"


# instance fields
.field private final mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

.field private final mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field private final mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field private final mDeviceStates:[I

.field private mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

.field private mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

.field private mPowerStatsTimestamp:J

.field private mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field private final mStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/processor/MultiStateStats;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field private mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field private final mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

.field private final mUidStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

.field public final powerComponentId:I


# direct methods
.method public static synthetic $r8$lambda$7vmA-6OlmvfK7cBqd4VhMaSVnDY(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;[I)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p8}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->lambda$dumpMultiStateStats$0(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;[I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)V
    .locals 2
    .param p1, "aggregatedPowerStats"    # Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .param p2, "config"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    .line 86
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 87
    iput-object p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 88
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    .line 89
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 90
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 91
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 93
    return-void
.end method

.method private createDeviceStats(J)V
    .locals 4
    .param p1, "timestampMs"    # J

    .line 376
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->statsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 385
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 386
    iget-wide p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 388
    :cond_2
    cmp-long v0, p1, v2

    if-eqz v0, :cond_4

    .line 389
    const/4 v0, 0x0

    .local v0, "stateId":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 390
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v1, v1, v0

    .line 391
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 392
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 393
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 394
    .local v3, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    invoke-virtual {v3, v0, v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 392
    .end local v3    # "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 389
    .end local v1    # "state":I
    .end local v2    # "i":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v0    # "stateId":I
    :cond_4
    return-void
.end method

.method private createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;
    .locals 3
    .param p1, "key"    # I
    .param p2, "timestampMs"    # J

    .line 401
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->stateStatsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    .line 410
    .local v0, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    .line 415
    :cond_2
    return-object v0
.end method

.method private createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V
    .locals 4
    .param p1, "uidStats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .param p2, "timestampMs"    # J

    .line 419
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget v1, v1, Lcom/android/internal/os/PowerStats$Descriptor;->uidStatsArrayLength:I

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;-><init>(I[Lcom/android/server/power/stats/processor/MultiStateStats$States;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$Factory;->create()Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 429
    iget-wide v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 430
    iget-wide p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 432
    :cond_2
    cmp-long v0, p2, v2

    if-eqz v0, :cond_3

    .line 433
    const/4 v0, 0x0

    .local v0, "stateId":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 434
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aget v2, v2, v0

    invoke-virtual {v1, v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    .end local v0    # "stateId":I
    :cond_3
    return-void
.end method

.method private dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V
    .locals 12
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/power/stats/processor/MultiStateStats;
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "additionalLabel"    # Ljava/lang/String;
    .param p5, "statsFormatter"    # Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    .line 590
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v6, v1

    .line 591
    .local v6, "firstLine":[Z
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getDimensionCount()I

    move-result v0

    new-array v5, v0, [J

    .line 592
    .local v5, "values":[J
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStates()[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object v9

    .line 593
    .local v9, "stateInfo":[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    new-instance v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;

    move-object v7, p1

    move-object v4, p2

    move-object v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v11}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    invoke-static {v9, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 621
    aget-boolean v0, v6, v2

    if-nez v0, :cond_0

    .line 622
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 624
    :cond_0
    return-void
.end method

.method private getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .locals 5
    .param p1, "uid"    # I

    .line 275
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 276
    .local v0, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    if-nez v0, :cond_2

    .line 277
    new-instance v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    move-object v0, v1

    .line 278
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 279
    const/4 v1, 0x0

    .local v1, "stateId":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v1

    .line 282
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v2

    .line 283
    .local v2, "deviceStateId":I
    const/4 v3, -0x1

    nop

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v3, v3, v2

    .line 284
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aget v4, v4, v2

    aput v4, v3, v1

    .line 279
    .end local v2    # "deviceStateId":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 289
    .end local v1    # "stateId":I
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    :cond_2
    return-object v0
.end method

.method private static synthetic lambda$dumpMultiStateStats$0(Lcom/android/server/power/stats/processor/MultiStateStats;[J[ZLandroid/util/IndentingPrintWriter;Ljava/lang/String;[Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;[I)V
    .locals 5
    .param p0, "stats"    # Lcom/android/server/power/stats/processor/MultiStateStats;
    .param p1, "values"    # [J
    .param p2, "firstLine"    # [Z
    .param p3, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p4, "header"    # Ljava/lang/String;
    .param p5, "stateInfo"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p6, "additionalLabel"    # Ljava/lang/String;
    .param p7, "statsFormatter"    # Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    .param p8, "states"    # [I

    .line 594
    invoke-virtual {p0, p1, p8}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    return-void

    .line 598
    :cond_0
    const/4 v0, 0x0

    aget-boolean v1, p2, v0

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {p3, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 602
    :cond_1
    aput-boolean v0, p2, v0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    const/4 v1, 0x1

    .line 606
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p8

    const-string v4, " "

    if-ge v2, v3, :cond_4

    .line 607
    aget-object v3, p5, v2

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    if-nez v1, :cond_2

    .line 609
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_2
    const/4 v1, 0x0

    .line 612
    aget-object v3, p5, v2

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object v3

    aget v4, p8, v2

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 615
    .end local v2    # "i":I
    if-eqz p6, :cond_5

    .line 616
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_5
    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Lcom/android/internal/os/PowerStats$PowerStatsFormatter;->format([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 620
    return-void
.end method


# virtual methods
.method addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 1
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "timestampMs"    # J

    .line 214
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    .line 215
    return-void
.end method

.method addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V
    .locals 6
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p2, "timestampMs"    # J

    .line 221
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 223
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 224
    invoke-direct {p0, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 227
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 228
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 229
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 230
    .local v3, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    if-nez v3, :cond_1

    .line 231
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v3

    .line 233
    :cond_1
    iget-object v4, p1, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 227
    .end local v2    # "key":I
    .end local v3    # "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 235
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 237
    iget-object v0, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 238
    iget-object v2, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 239
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v3

    .line 240
    .local v3, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v4, :cond_3

    .line 241
    invoke-direct {p0, v3, p2, p3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 243
    :cond_3
    iget-object v4, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v5, p1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    invoke-virtual {v4, v5, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 244
    iput-boolean v1, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 245
    iput-boolean v1, v3, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 237
    .end local v2    # "uid":I
    .end local v3    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 251
    .end local v0    # "i":I
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 252
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 253
    .local v1, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-boolean v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_5

    .line 255
    iget-object v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->increment([JJ)V

    .line 257
    :cond_5
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->updated:Z

    .line 251
    .end local v1    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    nop

    .line 260
    .end local v0    # "i":I
    iput-wide p2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    .line 261
    return-void
.end method

.method copyStatesFrom(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 8
    .param p1, "source"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    .line 440
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 441
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 444
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    goto :goto_0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State configurations have different lengths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AggregatePowerStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 453
    iget-object v1, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 454
    .local v1, "uid":I
    iget-object v4, p1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 455
    .local v4, "sourceUidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    if-nez v5, :cond_2

    .line 456
    goto :goto_2

    .line 458
    :cond_2
    new-instance v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;-><init>(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats-IA;)V

    .line 459
    .local v5, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    array-length v7, v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    .line 460
    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_3

    .line 461
    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 462
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v6, :cond_3

    .line 463
    iget-object v6, v5, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v7, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v6, v7}, Lcom/android/server/power/stats/processor/MultiStateStats;->copyStatesFrom(Lcom/android/server/power/stats/processor/MultiStateStats;)V

    .line 466
    :cond_3
    iget-object v6, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    .end local v1    # "uid":I
    .end local v4    # "sourceUidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    .end local v5    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 468
    .end local v0    # "i":I
    return-void
.end method

.method dumpDevice(Landroid/util/IndentingPrintWriter;)V
    .locals 13
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 559
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_0

    .line 560
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v4, v0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 561
    invoke-virtual {v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getDeviceStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v6

    .line 560
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .local v2, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    goto :goto_0

    .line 559
    .end local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    .restart local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    :cond_0
    move-object v1, p0

    move-object v2, p1

    .line 564
    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .restart local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    :goto_0
    iget-object p1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 565
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " states"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 567
    .local v10, "header":Ljava/lang/String;
    iget-object p1, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 568
    invoke-virtual {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v12

    .line 569
    .local v12, "formatter":Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_1
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 570
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 571
    .local v0, "key":I
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v3, v0}, Lcom/android/internal/os/PowerStats$Descriptor;->getStateLabel(I)Ljava/lang/String;

    move-result-object v11

    .line 572
    .local v11, "stateLabel":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 573
    .local v9, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    move-object v7, v1

    move-object v8, v2

    .end local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    .local v8, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct/range {v7 .. v12}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    .line 569
    .end local v0    # "key":I
    .end local v8    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local v9    # "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    .end local v11    # "stateLabel":Ljava/lang/String;
    .restart local v2    # "ipw":Landroid/util/IndentingPrintWriter;
    add-int/lit8 p1, p1, 0x1

    move-object v1, p0

    goto :goto_1

    :cond_1
    nop

    .line 575
    .end local p1    # "i":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 577
    .end local v10    # "header":Ljava/lang/String;
    .end local v12    # "formatter":Lcom/android/internal/os/PowerStats$PowerStatsFormatter;
    :cond_2
    return-void
.end method

.method dumpUid(Landroid/util/IndentingPrintWriter;I)V
    .locals 8
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "uid"    # I

    .line 580
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 581
    .local v0, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_0

    .line 582
    iget-object v4, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v5, v1, Lcom/android/internal/os/PowerStats$Descriptor;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 583
    invoke-virtual {v1}, Lcom/android/internal/os/PowerStats$Descriptor;->getUidStatsFormatter()Lcom/android/internal/os/PowerStats$PowerStatsFormatter;

    move-result-object v7

    .line 582
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .local v3, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpMultiStateStats(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/MultiStateStats;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/PowerStats$PowerStatsFormatter;)V

    goto :goto_0

    .line 581
    .end local v3    # "ipw":Landroid/util/IndentingPrintWriter;
    .restart local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    :cond_0
    move-object v3, p1

    .line 585
    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .restart local v3    # "ipw":Landroid/util/IndentingPrintWriter;
    :goto_0
    return-void
.end method

.method finish(J)V
    .locals 1
    .param p1, "timestampMs"    # J

    .line 122
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 123
    return-void
.end method

.method forEachStateStatsKey(Ljava/util/function/IntConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 352
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 355
    .end local v0    # "i":I
    return-void
.end method

.method getActiveUids()Landroid/util/IntArray;
    .locals 4

    .line 306
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 307
    .local v0, "uids":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 309
    .local v2, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-boolean v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 307
    .end local v2    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 313
    .end local v1    # "i":I
    return-object v0
.end method

.method getAggregatedPowerStats()Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mAggregatedPowerStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    return-object v0
.end method

.method public getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object v0
.end method

.method getDeviceStats([J[I)Z
    .locals 3
    .param p1, "outValues"    # [J
    .param p2, "deviceStates"    # [I

    .line 322
    array-length v0, p2

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result v0

    return v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of tracked states: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPowerStatsDescriptor()Lcom/android/internal/os/PowerStats$Descriptor;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    return-object v0
.end method

.method getStateStats([JI[I)Z
    .locals 3
    .param p1, "outValues"    # [J
    .param p2, "key"    # I
    .param p3, "deviceStates"    # [I

    .line 339
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 345
    .local v0, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result v1

    return v1

    .line 348
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 340
    .end local v0    # "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of tracked states: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUidStats([JI[I)Z
    .locals 3
    .param p1, "outValues"    # [J
    .param p2, "uid"    # I
    .param p3, "uidStates"    # [I

    .line 363
    array-length v0, p3

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 369
    .local v0, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->getStats([J[I)Z

    move-result v1

    return v1

    .line 372
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 364
    .end local v0    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of tracked states: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getUids()Landroid/util/IntArray;
    .locals 4

    .line 295
    new-instance v0, Landroid/util/IntArray;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 296
    .local v0, "uids":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 297
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 298
    .local v2, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 296
    .end local v2    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 302
    .end local v1    # "i":I
    return-object v0
.end method

.method isCompatible(Lcom/android/internal/os/PowerStats;)Z
    .locals 2
    .param p1, "powerStats"    # Lcom/android/internal/os/PowerStats;

    .line 209
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v1, p1, Lcom/android/internal/os/PowerStats;->descriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerStats$Descriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 1
    .param p1, "batteryLevel"    # I
    .param p2, "batteryChargeUah"    # I
    .param p3, "timestampMs"    # J

    .line 130
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteBatteryLevel(IIJ)V

    .line 131
    return-void
.end method

.method noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V
    .locals 1
    .param p1, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V

    .line 127
    return-void
.end method

.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 9
    .param p1, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "outerTag":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v1

    .line 512
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    nop

    if-eq v1, v2, :cond_6

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 513
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 514
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 515
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v4, "uid-stats"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "state-stats"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_2

    :sswitch_2
    const-string v3, "descriptor"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_2

    :sswitch_3
    const-string v3, "device-stats"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_2

    :goto_1
    const/4 v3, -0x1

    :goto_2
    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 541
    :pswitch_0
    const-string/jumbo v3, "uid"

    invoke-interface {p1, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 542
    .local v3, "uid":I
    invoke-direct {p0, v3}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v4

    .line 543
    .local v4, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v8, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v8, :cond_2

    .line 544
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 546
    :cond_2
    iput-boolean v2, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 547
    iget-object v2, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 548
    return v7

    .line 531
    .end local v3    # "uid":I
    .end local v4    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :pswitch_1
    const-string/jumbo v2, "key"

    invoke-interface {p1, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 532
    .local v2, "key":I
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 533
    .local v3, "stats":Lcom/android/server/power/stats/processor/MultiStateStats;
    if-nez v3, :cond_3

    .line 534
    invoke-direct {p0, v2, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createStateStats(IJ)Lcom/android/server/power/stats/processor/MultiStateStats;

    move-result-object v3

    .line 536
    :cond_3
    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 537
    return v7

    .line 523
    .end local v2    # "key":I
    .end local v3    # "stats":Lcom/android/server/power/stats/processor/MultiStateStats;
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v2, :cond_4

    .line 524
    invoke-direct {p0, v5, v6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 526
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v2, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 527
    return v7

    .line 517
    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/os/PowerStats$Descriptor;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/internal/os/PowerStats$Descriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 518
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v2, :cond_5

    .line 519
    return v7

    .line 553
    :cond_5
    :goto_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    goto/16 :goto_0

    .line 555
    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7836a198 -> :sswitch_3
        -0x2c9b2c91 -> :sswitch_2
        0x6242c63 -> :sswitch_1
        0x5be620e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 4

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 265
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStatsFactory:Lcom/android/server/power/stats/processor/MultiStateStats$Factory;

    .line 266
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 267
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 268
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 269
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    iput-object v0, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 270
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 268
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 272
    .end local v1    # "i":I
    return-void
.end method

.method setDeviceStats([I[J)V
    .locals 2
    .param p1, "states"    # [I
    .param p2, "values"    # [J

    .line 193
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 194
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    .line 197
    return-void
.end method

.method public setPowerStatsDescriptor(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .locals 0
    .param p1, "powerStatsDescriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 111
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    .line 112
    return-void
.end method

.method setProcessedUidState(IIIJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "stateId"    # I
    .param p3, "state"    # I
    .param p4, "timestampMs"    # J

    .line 176
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v0

    .line 181
    .local v0, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v1, :cond_1

    .line 182
    invoke-direct {p0, v0, p4, p5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 185
    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p3, v1, p2

    .line 187
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 190
    :cond_2
    return-void
.end method

.method setState(IIJ)V
    .locals 4
    .param p1, "stateId"    # I
    .param p2, "state"    # I
    .param p3, "timestampMs"    # J

    .line 135
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createDeviceStats(J)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStates:[I

    aput p2, v0, p1

    .line 141
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/MultiStateStats;

    .line 147
    .local v1, "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 145
    .end local v1    # "stateStats":Lcom/android/server/power/stats/processor/MultiStateStats;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v1, v1, p1

    .line 152
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->findTrackedStateByName([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "uidStateId":I
    const/4 v1, -0x1

    nop

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStateConfig:[Lcom/android/server/power/stats/processor/MultiStateStats$States;

    aget-object v1, v1, v0

    .line 154
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 156
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 157
    .local v2, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v3, :cond_3

    .line 158
    invoke-direct {p0, v2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 161
    :cond_3
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->states:[I

    aput p2, v3, v0

    .line 162
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v3, :cond_4

    .line 163
    iget-object v3, v2, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, v0, p2, p3, p4}, Lcom/android/server/power/stats/processor/MultiStateStats;->setState(IIJ)V

    .line 155
    .end local v2    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 167
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method setUidState(IIIJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "stateId"    # I
    .param p3, "state"    # I
    .param p4, "timestampMs"    # J

    .line 171
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .end local p1    # "uid":I
    .end local p2    # "stateId":I
    .end local p3    # "state":I
    .end local p4    # "timestampMs":J
    .local v2, "uid":I
    .local v3, "stateId":I
    .local v4, "state":I
    .local v5, "timestampMs":J
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->setUidState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;IIIJ)V

    .line 172
    return-void
.end method

.method setUidStats(I[I[J)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "states"    # [I
    .param p3, "values"    # [J

    .line 200
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->getUidStats(I)Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    move-result-object v0

    .line 201
    .local v0, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-nez v1, :cond_0

    .line 202
    iget-wide v1, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsTimestamp:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->createUidStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;J)V

    .line 204
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->hasPowerStats:Z

    .line 205
    iget-object v1, v0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/power/stats/processor/MultiStateStats;->setStats([I[J)V

    .line 206
    return-void
.end method

.method start(J)V
    .locals 1
    .param p1, "timestampMs"    # J

    .line 115
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->createProcessor()Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mProcessor:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V

    .line 119
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 628
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 629
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 630
    .local v1, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpDevice(Landroid/util/IndentingPrintWriter;)V

    .line 632
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 634
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 635
    .local v2, "uids":[I
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 636
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 635
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 638
    .end local v3    # "i":I
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 639
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 640
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 642
    invoke-virtual {p0, v1, v5}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->dumpUid(Landroid/util/IndentingPrintWriter;I)V

    .line 643
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 639
    .end local v5    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 7
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    if-nez v0, :cond_0

    .line 473
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "power_component"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 477
    const-string/jumbo v2, "id"

    iget v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->powerComponentId:I

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 478
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mPowerStatsDescriptor:Lcom/android/internal/os/PowerStats$Descriptor;

    invoke-virtual {v2, p1}, Lcom/android/internal/os/PowerStats$Descriptor;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 480
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v2, :cond_1

    .line 481
    const-string v2, "device-stats"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 482
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mDeviceStats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 483
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 487
    const-string/jumbo v3, "state-stats"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 488
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    const-string/jumbo v5, "key"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 489
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mStateStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v4, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 490
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    nop

    .line 493
    .end local v2    # "i":I
    iget-object v2, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 494
    iget-object v3, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 495
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;

    .line 496
    .local v4, "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    iget-object v5, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    if-eqz v5, :cond_3

    .line 497
    const-string/jumbo v5, "uid-stats"

    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 498
    const-string/jumbo v6, "uid"

    invoke-interface {p1, v0, v6, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 499
    iget-object v6, v4, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;->stats:Lcom/android/server/power/stats/processor/MultiStateStats;

    invoke-virtual {v6, p1}, Lcom/android/server/power/stats/processor/MultiStateStats;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 500
    invoke-interface {p1, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 493
    .end local v3    # "uid":I
    .end local v4    # "uidStats":Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats$UidStats;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    nop

    .line 504
    .end local v2    # "i":I
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 505
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 506
    return-void
.end method
