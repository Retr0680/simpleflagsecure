.class public Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;
.super Ljava/lang/Object;
.source "NetworkStatsAccumulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStatsAccumulator"


# instance fields
.field private final mBucketDurationMillis:J

.field private mSnapshot:Landroid/net/NetworkStats;

.field private mSnapshotEndTimeMillis:J

.field private final mTemplate:Landroid/net/NetworkTemplate;

.field private final mWithTags:Z


# direct methods
.method public constructor <init>(Landroid/net/NetworkTemplate;ZJJ)V
    .locals 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "withTags"    # Z
    .param p3, "bucketDurationMillis"    # J
    .param p5, "snapshotEndTimeMillis"    # J

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    .line 47
    iput-boolean p2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    .line 48
    iput-wide p3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    .line 49
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    .line 50
    iput-wide p5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    .line 51
    return-void
.end method

.method private maybeExpandSnapshot(JLandroid/net/NetworkStats;Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)V
    .locals 9
    .param p1, "currentTimeMillis"    # J
    .param p3, "completeStatsUntilCurrentTime"    # Landroid/net/NetworkStats;
    .param p4, "queryFunction"    # Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;

    .line 82
    iget-wide v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    sub-long v7, p1, v0

    .line 83
    .local v7, "newEndTimeMillis":J
    iget-wide v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    sub-long v0, v7, v0

    iget-wide v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expanding snapshot (mTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWithTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsAccumulator"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iget-boolean v4, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iget-wide v5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    move-object v2, p4

    .end local p4    # "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    .local v2, "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    invoke-interface/range {v2 .. v8}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;->queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p4

    .line 90
    .local p4, "extraStats":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, p4}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    .line 91
    iput-wide v7, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    .line 97
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 98
    .local v0, "newStats":Landroid/net/NetworkStats;
    invoke-virtual {p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    .line 99
    .local v1, "interpolationLoss":Landroid/net/NetworkStats;
    iget-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v3, v1}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    goto :goto_0

    .line 83
    .end local v0    # "newStats":Landroid/net/NetworkStats;
    .end local v1    # "interpolationLoss":Landroid/net/NetworkStats;
    .end local v2    # "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    .local p4, "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    :cond_0
    move-object v2, p4

    .line 101
    .end local p4    # "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    .restart local v2    # "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    :goto_0
    return-void
.end method

.method private snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "currentTimeMillis"    # J
    .param p3, "queryFunction"    # Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;

    .line 110
    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    iget-boolean v2, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    iget-wide v3, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshotEndTimeMillis:J

    iget-wide v5, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mBucketDurationMillis:J

    add-long/2addr v5, p1

    move-object v0, p3

    .end local p3    # "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    .local v0, "queryFunction":Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;
    invoke-interface/range {v0 .. v6}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;->queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p3

    .line 112
    .local p3, "extraStats":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, p3}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public hasEqualParameters(Landroid/net/NetworkTemplate;Z)Z
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "withTags"    # Z

    .line 71
    iget-object v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->mWithTags:Z

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "currentTimeMillis"    # J
    .param p3, "queryFunction"    # Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->snapshotPlusFollowingStats(JLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 63
    .local v0, "completeStats":Landroid/net/NetworkStats;
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;->maybeExpandSnapshot(JLandroid/net/NetworkStats;Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;)V

    .line 64
    return-object v0
.end method
