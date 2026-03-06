.class public final synthetic Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/NetworkTemplate;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/NetworkTemplate;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$0:Landroid/net/NetworkTemplate;

    iput-boolean p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$1:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$0:Landroid/net/NetworkTemplate;

    iget-boolean v1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$$ExternalSyntheticLambda10;->f$1:Z

    check-cast p1, Lcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;

    invoke-static {v0, v1, p1}, Lcom/android/server/stats/pull/StatsPullAtomService;->$r8$lambda$fUFk8IGjCPUN5Z1_tSVHSh_nW2M(Landroid/net/NetworkTemplate;ZLcom/android/server/stats/pull/netstats/NetworkStatsAccumulator;)Z

    move-result p1

    return p1
.end method
