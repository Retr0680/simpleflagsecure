.class Lcom/android/server/power/stats/BatteryStatsImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/stats/BatteryStatsImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 406
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrightnessLevelTimeMs(II)J
    .locals 6
    .param p1, "display"    # I
    .param p2, "brightnessLevel"    # I

    .line 418
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 420
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 419
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v1

    div-long/2addr v1, v4

    monitor-exit v0

    return-wide v1

    .line 421
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getScreenDozeTimeMs(I)J
    .locals 6
    .param p1, "display"    # I

    .line 426
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 428
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 427
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v1

    div-long/2addr v1, v4

    monitor-exit v0

    return-wide v1

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getScreenOnTimeMs(I)J
    .locals 6
    .param p1, "display"    # I

    .line 410
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 411
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayScreenOnTime(IJ)J

    move-result-wide v1

    div-long/2addr v1, v4

    monitor-exit v0

    return-wide v1

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retrieveTopActivityTimes(Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;)V
    .locals 14
    .param p1, "callback"    # Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;

    .line 434
    move-object v1, p1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 436
    .local v3, "elapsedTimeUs":J
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 437
    iget-object v7, p0, Lcom/android/server/power/stats/BatteryStatsImpl$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 438
    .local v7, "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v3, v4, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStateTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v5

    .line 440
    .local v9, "topStateTime":J
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object v11

    .line 441
    .local v11, "timer":Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    if-nez v11, :cond_0

    .line 442
    iget v8, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-interface {p1, v8, v9, v10}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    goto :goto_1

    .line 450
    .end local v0    # "i":I
    .end local v3    # "elapsedTimeUs":J
    .end local v7    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v9    # "topStateTime":J
    .end local v11    # "timer":Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 444
    .restart local v0    # "i":I
    .restart local v3    # "elapsedTimeUs":J
    .restart local v7    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .restart local v9    # "topStateTime":J
    .restart local v11    # "timer":Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    :cond_0
    invoke-virtual {v11, v3, v4, v8}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    div-long/2addr v12, v5

    .line 446
    .local v12, "topActivityTime":J
    iget v8, v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mUid:I

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-interface {p1, v8, v5, v6}, Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever$Callback;->onUidTopActivityTime(IJ)V

    .line 436
    .end local v7    # "uid":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v9    # "topStateTime":J
    .end local v11    # "timer":Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .end local v12    # "topActivityTime":J
    :goto_1
    add-int/lit8 v0, v0, -0x1

    const-wide/16 v5, 0x3e8

    goto :goto_0

    :cond_1
    nop

    .line 450
    .end local v0    # "i":I
    .end local v3    # "elapsedTimeUs":J
    monitor-exit v2

    .line 451
    return-void

    .line 450
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
