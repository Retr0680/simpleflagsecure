.class abstract Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.super Ljava/lang/Object;
.source "PowerStatsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateProportionalEstimate;,
        Lcom/android/server/power/stats/processor/PowerStatsProcessor$UidStateEstimate;,
        Lcom/android/server/power/stats/processor/PowerStatsProcessor$CombinedDeviceStateEstimate;,
        Lcom/android/server/power/stats/processor/PowerStatsProcessor$DeviceStateEstimation;,
        Lcom/android/server/power/stats/processor/PowerStatsProcessor$PowerEstimationPlan;
    }
.end annotation


# static fields
.field private static final MILLIAMPHOUR_PER_MICROCOULOMB:D = 2.777777777777778E-7

.field private static final TAG:Ljava/lang/String; = "PowerStatsProcessor"


# direct methods
.method public static synthetic $r8$lambda$i372F_C3eS3_IAG4Sadr6UR4rVY(Ljava/util/List;[I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->lambda$getAllTrackedStateCombinations$0(Ljava/util/List;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smconcatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->concatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->getAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static concatLabels([Lcom/android/server/power/stats/processor/MultiStateStats$States;[I)Ljava/lang/String;
    .locals 5
    .param p0, "config"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .param p1, "stateValues"    # [I

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v0, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "state":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 330
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->isTracked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    .line 332
    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->getLabels()[Ljava/lang/String;

    move-result-object v3

    aget v4, p1, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 335
    .end local v1    # "state":I
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 336
    invoke-interface {v0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAllTrackedStateCombinations([Lcom/android/server/power/stats/processor/MultiStateStats$States;)[[I
    .locals 5
    .param p0, "states"    # [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "combinations":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {p0, v1}, Lcom/android/server/power/stats/processor/MultiStateStats$States;->forEachTrackedStateCombination([Lcom/android/server/power/stats/processor/MultiStateStats$States;Ljava/util/function/Consumer;)V

    .line 344
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    aput v1, v2, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    return-object v1
.end method

.method private static synthetic lambda$getAllTrackedStateCombinations$0(Ljava/util/List;[I)V
    .locals 1
    .param p0, "combinations"    # Ljava/util/List;
    .param p1, "stateValues"    # [I

    .line 342
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method public static uCtoMah(J)D
    .locals 4
    .param p0, "chargeUC"    # J

    .line 348
    long-to-double v0, p0

    const-wide v2, 0x3e92a42f961f79baL    # 2.777777777777778E-7

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 0
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p3, "timestampMs"    # J

    .line 68
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->addProcessedPowerStats(Lcom/android/internal/os/PowerStats;J)V

    .line 69
    return-void
.end method

.method abstract finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
.end method

.method public noteBatteryLevel(IIJ)V
    .locals 0
    .param p1, "batteryLevel"    # I
    .param p2, "batteryChargeUah"    # I
    .param p3, "timestampMs"    # J

    .line 59
    return-void
.end method

.method noteStateChange(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Landroid/os/BatteryStats$HistoryItem;)V
    .locals 0
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 56
    return-void
.end method

.method public setUidState(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;IIIJ)V
    .locals 0
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "uid"    # I
    .param p3, "stateId"    # I
    .param p4, "state"    # I
    .param p5, "timestampMs"    # J

    .line 63
    invoke-virtual/range {p1 .. p6}, Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;->setProcessedUidState(IIIJ)V

    .line 64
    return-void
.end method

.method start(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 52
    return-void
.end method
