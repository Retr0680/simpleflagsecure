.class final Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;
.super Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;
.source "StatsPullAtomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StatsPullAtomServiceInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method private constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public noteUidProcessState(II)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 538
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 541
    .local v4, "elapsedRealtime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 542
    .local v6, "uptime":J
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v1

    move v2, p1

    move v3, p2

    .end local p1    # "uid":I
    .end local p2    # "state":I
    .local v2, "uid":I
    .local v3, "state":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->noteUidProcessState(IIJJ)V

    goto :goto_0

    .line 538
    .end local v2    # "uid":I
    .end local v3    # "state":I
    .end local v4    # "elapsedRealtime":J
    .end local v6    # "uptime":J
    .restart local p1    # "uid":I
    .restart local p2    # "state":I
    :cond_0
    move v2, p1

    move v3, p2

    .line 545
    .end local p1    # "uid":I
    .end local p2    # "state":I
    .restart local v2    # "uid":I
    .restart local v3    # "state":I
    :goto_0
    return-void
.end method
