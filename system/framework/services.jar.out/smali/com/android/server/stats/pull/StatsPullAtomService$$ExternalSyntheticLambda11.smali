.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator$StatsQueryFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    return-void
.end method


# virtual methods
.method public final queryNetworkStats(Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    move-object p0, v0

    invoke-static/range {p0 .. p6}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$8VLDv9gQV9cbYLHktnmAvgf2y4s(Lcom/android/server/stats/pull/StatsPullAtomService;Landroid/net/NetworkTemplate;ZJJ)Landroid/net/NetworkStats;

    move-result-object p1

    return-object p1
.end method
