.class public final synthetic Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final synthetic f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

.field public final synthetic f$2:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iput-object p2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    iput-object p3, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$2:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryUsageStatsProvider$$ExternalSyntheticLambda0;->f$2:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->$r8$lambda$rlWqUVwnllBfJlxnTRJ-GZmZAb0(Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/Handler;)V

    return-void
.end method
