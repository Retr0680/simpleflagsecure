.class public final synthetic Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

.field public final synthetic f$1:[J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;->f$1:[J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;->f$0:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;->f$1:[J

    check-cast p1, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->$r8$lambda$70DTmGBx9LG3owXrv6hrK5RNa54(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method
