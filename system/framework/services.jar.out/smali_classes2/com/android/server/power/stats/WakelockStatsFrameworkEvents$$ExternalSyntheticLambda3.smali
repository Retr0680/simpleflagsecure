.class public final synthetic Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$$ExternalSyntheticLambda3;->f$0:J

    check-cast p1, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;

    invoke-static {v0, v1, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->$r8$lambda$AtV_1LGVyaohwoFf9kkapV7I5IY(JLcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockKey;)Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$WakeLockData;

    move-result-object p1

    return-object p1
.end method
