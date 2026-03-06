.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VibratorManagerRecords"
.end annotation


# instance fields
.field private final mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

.field private final mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;


# direct methods
.method constructor <init>(III)V
    .locals 2
    .param p1, "recentVibrationSizeLimit"    # I
    .param p2, "aggregationSizeLimit"    # I
    .param p3, "aggregationTimeLimit"    # I

    .line 2378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2379
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 2382
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    .line 2384
    return-void
.end method


# virtual methods
.method declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    monitor-enter p0

    .line 2396
    :try_start_0
    const-string v0, "Recent vibrations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2398
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2399
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2401
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2402
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2403
    const-string v0, "Aggregated vibration history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2405
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2406
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2407
    monitor-exit p0

    return-void

    .line 2395
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    .end local p1    # "pw":Landroid/util/IndentingPrintWriter;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    monitor-enter p0

    .line 2410
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dump(Landroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    monitor-exit p0

    return-void

    .line 2409
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized record(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    monitor-enter p0

    .line 2387
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mRecentVibrations:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    new-instance v1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-direct {v1, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;-><init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V

    .line 2388
    invoke-virtual {v0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    move-result-object v0

    .line 2389
    .local v0, "droppedRecord":Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;, "Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord<Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;>;"
    if-eqz v0, :cond_0

    .line 2391
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mAggregatedVibrationHistory:Lcom/android/server/vibrator/VibratorManagerService$VibrationRecords;

    invoke-virtual {v0}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->getLatest()Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2386
    .end local v0    # "droppedRecord":Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;, "Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord<Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;>;"
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    .end local p1    # "info":Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2393
    .restart local v0    # "droppedRecord":Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;, "Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord<Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;>;"
    .restart local p1    # "info":Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2386
    .end local v0    # "droppedRecord":Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;, "Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord<Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;>;"
    .end local p1    # "info":Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
