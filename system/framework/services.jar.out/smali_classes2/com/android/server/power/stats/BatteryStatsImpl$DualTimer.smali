.class public Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
.super Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualTimer"
.end annotation


# instance fields
.field private final mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V
    .locals 6
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .param p6, "subTimeBase"    # Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .line 4009
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 4010
    move-object v1, p1

    move-object p1, p0

    .end local p1    # "clock":Lcom/android/internal/os/Clock;
    .local v1, "clock":Lcom/android/internal/os/Clock;
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    move-object v5, p6

    .end local p2    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local p3    # "type":I
    .end local p6    # "subTimeBase":Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .local v2, "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .local v3, "type":I
    .local v5, "subTimeBase":Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .end local v2    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v3    # "type":I
    .restart local p2    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .restart local p3    # "type":I
    iput-object v0, p1, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 4011
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 7
    .param p1, "clock"    # Lcom/android/internal/os/Clock;
    .param p2, "uid"    # Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .param p6, "subTimeBase"    # Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .param p7, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/Clock;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;",
            "Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .line 3997
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .end local p1    # "clock":Lcom/android/internal/os/Clock;
    .end local p2    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local p3    # "type":I
    .end local p4    # "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;>;"
    .end local p5    # "timeBase":Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .end local p7    # "in":Landroid/os/Parcel;
    .local v1, "clock":Lcom/android/internal/os/Clock;
    .local v2, "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .local v3, "type":I
    .local v4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;>;"
    .local v5, "timeBase":Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;
    .local v6, "in":Landroid/os/Parcel;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 3998
    move-object p2, v1

    move-object p3, v2

    move p4, v3

    .end local v1    # "clock":Lcom/android/internal/os/Clock;
    .end local v2    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v3    # "type":I
    .end local v6    # "in":Landroid/os/Parcel;
    .local p2, "clock":Lcom/android/internal/os/Clock;
    .local p3, "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .local p4, "type":I
    .restart local p7    # "in":Landroid/os/Parcel;
    new-instance p1, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 p5, 0x0

    invoke-direct/range {p1 .. p7}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object p1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    .line 3999
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 4048
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4049
    invoke-super {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 4050
    return-void
.end method

.method public bridge synthetic getSubTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .line 3980
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public getSubTimer()Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;
    .locals 1

    .line 4016
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    return-object v0
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 4066
    invoke-super {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4067
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 4068
    return-void
.end method

.method public reset(ZJ)Z
    .locals 3
    .param p1, "detachIfReset"    # Z
    .param p2, "elapsedRealtimeUs"    # J

    .line 4039
    const/4 v0, 0x0

    .line 4041
    .local v0, "active":Z
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 4042
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->reset(ZJ)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    .line 4043
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public startRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 4021
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 4022
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->startRunningLocked(J)V

    .line 4023
    return-void
.end method

.method public stopAllRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 4033
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4034
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 4035
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .line 4027
    invoke-super {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 4028
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->stopRunningLocked(J)V

    .line 4029
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 4060
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 4061
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 4062
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .line 4054
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4055
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->mSubTimer:Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$DurationTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 4056
    return-void
.end method
