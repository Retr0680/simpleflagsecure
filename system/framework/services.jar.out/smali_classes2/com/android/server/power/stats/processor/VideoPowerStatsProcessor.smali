.class Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;
.super Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;
.source "VideoPowerStatsProcessor.java"


# direct methods
.method constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 3
    .param p1, "powerProfile"    # Lcom/android/internal/os/PowerProfile;

    .line 26
    nop

    .line 27
    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 26
    const/4 v2, 0x5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/power/stats/processor/BinaryStatePowerStatsProcessor;-><init>(ID)V

    .line 28
    return-void
.end method


# virtual methods
.method protected getBinaryState(Landroid/os/BatteryStats$HistoryItem;)I
    .locals 2
    .param p1, "item"    # Landroid/os/BatteryStats$HistoryItem;

    .line 32
    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method
