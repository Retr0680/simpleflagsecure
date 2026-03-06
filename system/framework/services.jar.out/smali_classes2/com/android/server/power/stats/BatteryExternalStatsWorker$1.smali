.class Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/stats/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/stats/BatteryExternalStatsWorker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 388
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I

    move-result v0

    move v4, v0

    .line 390
    .local v4, "updateFlags":I
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "reason":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBattery(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 392
    .local v5, "onBattery":Z
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmOnBatteryScreenOff(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 393
    .local v6, "onBatteryScreenOff":Z
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmScreenState(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)I

    move-result v7

    .line 394
    .local v7, "screenState":I
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmPerDisplayScreenStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)[I

    move-result-object v8

    .line 395
    .local v8, "displayScreenStates":[I
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Z

    move-result v9

    .line 396
    .local v9, "useLatestStates":Z
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmUpdateFlags(Lcom/android/server/power/stats/BatteryExternalStatsWorker;I)V

    .line 397
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmCurrentReason(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmUseLatestStates(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Z)V

    .line 399
    and-int/lit8 v0, v4, 0x7f

    const/16 v10, 0x7f

    if-ne v0, v10, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mcancelSyncDueToBatteryLevelChangeLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V

    goto :goto_0

    .line 408
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 402
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "updateFlags":I
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "screenState":I
    .restart local v8    # "displayScreenStates":[I
    .restart local v9    # "useLatestStates":Z
    :cond_0
    :goto_0
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 405
    :cond_1
    and-int/lit8 v0, v4, 0xe

    const/16 v2, 0xe

    if-ne v0, v2, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->cancelSyncDueToProcessStateChange()V

    .line 408
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmWorkerLock(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    :try_start_2
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$mupdateExternalStatsLocked(Lcom/android/server/power/stats/BatteryExternalStatsWorker;Ljava/lang/String;IZZI[IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 420
    and-int/lit8 v0, v4, 0x7f

    if-ne v0, v10, :cond_3

    .line 421
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 423
    :try_start_4
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 424
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :goto_1
    :try_start_5
    throw v0

    .line 430
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "updateFlags":I
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "screenState":I
    .restart local v8    # "displayScreenStates":[I
    .restart local v9    # "useLatestStates":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 432
    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_4

    .line 433
    :try_start_6
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateCpuTimesForAllUids()V

    goto :goto_3

    .line 440
    :catch_0
    move-exception v0

    goto :goto_6

    .line 437
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v1

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 438
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    .line 439
    monitor-exit v1

    .line 442
    goto :goto_7

    .line 439
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 420
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "updateFlags":I
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "screenState":I
    .restart local v8    # "displayScreenStates":[I
    .restart local v9    # "useLatestStates":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :catchall_4
    move-exception v0

    and-int/lit8 v2, v4, 0x7f

    if-ne v2, v10, :cond_5

    .line 421
    :try_start_9
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v2

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 423
    :try_start_a
    iget-object v11, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fgetmStats(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)Lcom/android/server/power/stats/BatteryStatsImpl;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/power/stats/BatteryStatsImpl;->informThatAllExternalStatsAreFlushed()V

    .line 424
    monitor-exit v2

    goto :goto_4

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_1

    .line 429
    :cond_5
    :goto_4
    nop

    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :try_start_b
    throw v0

    .line 430
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "updateFlags":I
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "screenState":I
    .restart local v8    # "displayScreenStates":[I
    .restart local v9    # "useLatestStates":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :goto_5
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    .end local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 440
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v4    # "updateFlags":I
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "screenState":I
    .restart local v8    # "displayScreenStates":[I
    .restart local v9    # "useLatestStates":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;
    :goto_6
    nop

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BatteryExternalStatsWorker"

    const-string v2, "Error updating external stats: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_6

    .line 445
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    .line 446
    :try_start_d
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V

    .line 447
    monitor-exit v1

    goto :goto_8

    :catchall_6
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v0

    .line 448
    :cond_6
    and-int/lit8 v0, v4, 0x7f

    if-ne v0, v10, :cond_7

    .line 449
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v1

    .line 450
    :try_start_e
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->-$$Nest$fputmLastCollectionTimeStamp(Lcom/android/server/power/stats/BatteryExternalStatsWorker;J)V

    .line 451
    monitor-exit v1

    goto :goto_8

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    .line 453
    :cond_7
    :goto_8
    return-void

    .line 408
    .end local v3    # "reason":Ljava/lang/String;
    .end local v4    # "updateFlags":I
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "screenState":I
    .end local v8    # "displayScreenStates":[I
    .end local v9    # "useLatestStates":Z
    :goto_9
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method
