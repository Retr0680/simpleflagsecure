.class public final synthetic Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-static {p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->$r8$lambda$_eI9M4itj9AElL0QLHvCcZ6S53I(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockStats;

    move-result-object p1

    return-object p1
.end method
