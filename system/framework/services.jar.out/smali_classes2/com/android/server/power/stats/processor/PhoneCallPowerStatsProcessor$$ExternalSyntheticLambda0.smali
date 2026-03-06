.class public final synthetic Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;

.field public final synthetic f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

.field public final synthetic f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iput-object p3, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;

    check-cast p1, [I

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;->$r8$lambda$ud8eQ1V0t_QmX6ROLeagntpmWa8(Lcom/android/server/power/stats/processor/PhoneCallPowerStatsProcessor;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;Lcom/android/server/power/stats/processor/PowerComponentAggregatedPowerStats;[I)V

    return-void
.end method
