.class public final synthetic Lcom/android/server/power/stats/WakelockPowerStatsCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/stats/WakelockPowerStatsCollector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/stats/WakelockPowerStatsCollector;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/WakelockPowerStatsCollector;

    return-void
.end method


# virtual methods
.method public final onUidWakelockDuration(IJ)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/power/stats/WakelockPowerStatsCollector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/power/stats/WakelockPowerStatsCollector;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/power/stats/WakelockPowerStatsCollector;->$r8$lambda$6beLFR_C40phG_UeVqzNOydosp8(Lcom/android/server/power/stats/WakelockPowerStatsCollector;IJ)V

    return-void
.end method
