.class public final synthetic Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/PowerStatsStore;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/os/BatteryUsageStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iput-wide p2, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$2:Landroid/os/BatteryUsageStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/stats/PowerStatsStore;

    iget-wide v1, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsStore$$ExternalSyntheticLambda3;->f$2:Landroid/os/BatteryUsageStats;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/power/stats/PowerStatsStore;->$r8$lambda$55fOWVXVllJ2LR3V-23W75q3gH0(Lcom/android/server/power/stats/PowerStatsStore;JLandroid/os/BatteryUsageStats;)V

    return-void
.end method
