.class Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/PowerStatsProcessor;
.source "WakelockPowerStatsProcessor.java"


# static fields
.field private static final sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;


# instance fields
.field private final mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    invoke-direct {v0}, Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 27
    invoke-direct {p0}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;-><init>()V

    .line 28
    new-instance v0, Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 29
    const-string v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    .line 30
    return-void
.end method


# virtual methods
.method addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V
    .locals 14
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "powerStats"    # Lcom/android/internal/os/PowerStats;
    .param p3, "timestampMs"    # J

    .line 35
    move-object/from16 v0, p2

    sget-object v1, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v2, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v1, v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUsageDuration([J)J

    move-result-wide v1

    .line 36
    .local v1, "durationMs":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    iget-object v5, p0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->mPowerEstimator:Lcom/android/server/power/stats/UsageBasedPowerEstimator;

    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/stats/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    .line 41
    .local v5, "power":D
    sget-object v7, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v8, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setDevicePowerEstimate([JD)V

    .line 43
    const-wide/16 v7, 0x0

    .line 44
    .local v7, "totalDuration":J
    iget-object v9, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_1

    .line 45
    sget-object v10, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    iget-object v11, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    invoke-virtual {v10, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v10

    add-long/2addr v7, v10

    .line 44
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 48
    .end local v9    # "i":I
    cmp-long v3, v7, v3

    if-eqz v3, :cond_2

    .line 49
    iget-object v3, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 50
    iget-object v4, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 51
    .local v4, "uidStats":[J
    sget-object v9, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    sget-object v10, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;->sStatsLayout:Lcom/android/server/power/stats/format/WakelockPowerStatsLayout;

    .line 52
    invoke-virtual {v10, v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidUsageDuration([J)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, v5

    long-to-double v12, v7

    div-double/2addr v10, v12

    .line 51
    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidPowerEstimate([JD)V

    .line 49
    .end local v4    # "uidStats":[J
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 56
    .end local v3    # "i":I
    :cond_2
    invoke-super/range {p0 .. p4}, Lcom/android/server/power/stats/processor/PowerStatsProcessor;->addPowerStats(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/internal/os/PowerStats;J)V

    .line 57
    return-void
.end method

.method finish(Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;J)V
    .locals 0
    .param p1, "stats"    # Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;
    .param p2, "timestampMs"    # J

    .line 62
    return-void
.end method
