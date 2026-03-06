.class Lcom/android/server/power/stats/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;


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

    .line 504
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWakelockDurationMillis()J
    .locals 10

    .line 508
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryUptime(J)J

    move-result-wide v1

    .line 510
    .local v1, "batteryUptimeUs":J
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v6}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    mul-long/2addr v6, v4

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v6

    .line 512
    .local v6, "screenOnTimeUs":J
    sub-long v8, v1, v6

    div-long/2addr v8, v4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    monitor-exit v0

    return-wide v3

    .line 513
    .end local v1    # "batteryUptimeUs":J
    .end local v6    # "screenOnTimeUs":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public retrieveUidWakelockDuration(Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;)V
    .locals 18
    .param p1, "callback"    # Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;

    .line 518
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    .line 519
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 520
    .local v3, "rawRealtimeUs":J
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 521
    iget-object v7, v1, Lcom/android/server/power/stats/BatteryStatsImpl$4;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmUidStats(Lcom/android/server/power/stats/BatteryStatsImpl;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 522
    .local v7, "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    const-wide/16 v8, 0x0

    .line 523
    .local v8, "wakeLockTimeUs":J
    nop

    .line 524
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 525
    .local v10, "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 526
    .local v11, "wakelockStatsCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 527
    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 528
    .local v13, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 530
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v15, :cond_0

    .line 531
    invoke-virtual {v15, v3, v4, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    add-long v8, v8, v16

    goto :goto_2

    .line 541
    .end local v0    # "i":I
    .end local v3    # "rawRealtimeUs":J
    .end local v7    # "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v8    # "wakeLockTimeUs":J
    .end local v10    # "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v11    # "wakelockStatsCount":I
    .end local v12    # "j":I
    .end local v13    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    goto :goto_4

    .line 526
    .restart local v0    # "i":I
    .restart local v3    # "rawRealtimeUs":J
    .restart local v7    # "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .restart local v8    # "wakeLockTimeUs":J
    .restart local v10    # "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v11    # "wakelockStatsCount":I
    .restart local v12    # "j":I
    :cond_0
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 536
    .end local v12    # "j":I
    div-long v12, v8, v5

    .line 537
    .local v12, "wakelockTimeMs":J
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-eqz v14, :cond_2

    .line 538
    invoke-virtual {v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getUid()I

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v15, p1

    :try_start_1
    invoke-interface {v15, v14, v12, v13}, Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever$Callback;->onUidWakelockDuration(IJ)V

    goto :goto_3

    .line 541
    .end local v0    # "i":I
    .end local v3    # "rawRealtimeUs":J
    .end local v7    # "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v8    # "wakeLockTimeUs":J
    .end local v10    # "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v11    # "wakelockStatsCount":I
    .end local v12    # "wakelockTimeMs":J
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 537
    .restart local v0    # "i":I
    .restart local v3    # "rawRealtimeUs":J
    .restart local v7    # "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .restart local v8    # "wakeLockTimeUs":J
    .restart local v10    # "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v11    # "wakelockStatsCount":I
    .restart local v12    # "wakelockTimeMs":J
    :cond_2
    move-object/from16 v15, p1

    .line 520
    .end local v7    # "u":Lcom/android/server/power/stats/BatteryStatsImpl$Uid;
    .end local v8    # "wakeLockTimeUs":J
    .end local v10    # "wakelockStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v11    # "wakelockStatsCount":I
    .end local v12    # "wakelockTimeMs":J
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v15, p1

    .line 541
    .end local v0    # "i":I
    .end local v3    # "rawRealtimeUs":J
    monitor-exit v2

    .line 542
    return-void

    .line 541
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
