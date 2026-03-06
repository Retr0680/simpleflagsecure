.class public Lcom/android/server/power/stats/processor/PowerStatsAggregator;
.super Ljava/lang/Object;
.source "PowerStatsAggregator.java"


# static fields
.field private static final UNINITIALIZED:J = -0x1L


# instance fields
.field private final mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

.field private mCurrentBatteryState:I

.field private mCurrentScreenState:I

.field private final mEnabledComponents:Landroid/util/SparseBooleanArray;

.field private mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V
    .locals 2
    .param p1, "aggregatedPowerStatsConfig"    # Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseBooleanArray;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I

    .line 50
    iput-object p1, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    .line 51
    return-void
.end method


# virtual methods
.method public aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V
    .locals 29
    .param p1, "history"    # Lcom/android/internal/os/BatteryStatsHistory;
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsHistory;",
            "JJ",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/power/stats/processor/AggregatedPowerStats;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p6, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/power/stats/processor/AggregatedPowerStats;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;Landroid/util/SparseBooleanArray;)V

    iput-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 89
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 90
    .local v0, "startedSession":Z
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-lez v3, :cond_1

    move-wide/from16 v6, p2

    goto :goto_1

    :cond_1
    const-wide/16 v6, -0x1

    .line 91
    .local v6, "baseTime":J
    :goto_1
    const-wide/16 v8, 0x0

    .line 92
    .local v8, "lastTime":J
    const/4 v3, -0x1

    .line 93
    .local v3, "lastStates":I
    const/4 v10, -0x1

    .line 94
    .local v10, "lastStates2":I
    const/4 v11, 0x0

    .line 95
    .local v11, "lastBatteryLevel":I
    invoke-virtual/range {p1 .. p5}, Lcom/android/internal/os/BatteryStatsHistory;->iterate(JJ)Lcom/android/internal/os/BatteryStatsHistoryIterator;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v11

    move v11, v10

    move-wide v9, v8

    move-wide v7, v6

    move v6, v3

    move v3, v0

    .line 96
    .end local v0    # "startedSession":Z
    .end local v8    # "lastTime":J
    .end local v10    # "lastStates2":I
    .local v3, "startedSession":Z
    .local v6, "lastStates":I
    .local v7, "baseTime":J
    .local v9, "lastTime":J
    .local v11, "lastStates2":I
    .local v12, "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .local v13, "lastBatteryLevel":I
    :goto_2
    :try_start_1
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->next()Landroid/os/BatteryStats$HistoryItem;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    .line 99
    .local v0, "item":Landroid/os/BatteryStats$HistoryItem;
    if-nez v3, :cond_4

    .line 100
    :try_start_2
    iget-object v14, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    const-wide/16 v15, -0x1

    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v14, v4, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->start(J)V

    .line 101
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v17, v7

    .end local v7    # "baseTime":J
    .local v17, "baseTime":J
    :try_start_3
    iget-wide v7, v0, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-wide/from16 v19, v9

    .end local v9    # "lastTime":J
    .local v19, "lastTime":J
    :try_start_4
    iget-wide v9, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    move v14, v6

    move-wide/from16 v21, v15

    goto/16 :goto_e

    .line 104
    :cond_2
    cmp-long v4, v17, v15

    if-nez v4, :cond_3

    .line 105
    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-wide v7, v4

    .end local v17    # "baseTime":J
    .restart local v7    # "baseTime":J
    goto :goto_3

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v7    # "baseTime":J
    .restart local v17    # "baseTime":J
    :catchall_1
    move-exception v0

    move v15, v3

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-object v3, v0

    goto/16 :goto_10

    .line 104
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    :cond_3
    move-wide/from16 v7, v17

    .line 107
    .end local v17    # "baseTime":J
    .restart local v7    # "baseTime":J
    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v7    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v9    # "lastTime":J
    .restart local v17    # "baseTime":J
    :catchall_2
    move-exception v0

    move-wide/from16 v19, v9

    move v15, v3

    move-wide/from16 v7, v17

    move-object v3, v0

    .end local v9    # "lastTime":J
    .restart local v19    # "lastTime":J
    goto/16 :goto_10

    .end local v17    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    :catchall_3
    move-exception v0

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move v15, v3

    move-object v3, v0

    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .restart local v17    # "baseTime":J
    .restart local v19    # "lastTime":J
    goto/16 :goto_10

    .line 108
    .end local v17    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    :cond_4
    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    const-wide/16 v15, -0x1

    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .restart local v17    # "baseTime":J
    .restart local v19    # "lastTime":J
    :try_start_5
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_11

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    :try_start_6
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    .line 110
    :cond_5
    :try_start_7
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v7, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v9, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    if-nez v4, :cond_6

    .line 111
    move v14, v6

    move-wide/from16 v21, v15

    goto/16 :goto_e

    .line 115
    :cond_6
    move-wide/from16 v7, v17

    .end local v17    # "baseTime":J
    .restart local v7    # "baseTime":J
    :goto_4
    :try_start_8
    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    move-wide v9, v4

    .line 117
    .end local v19    # "lastTime":J
    .restart local v9    # "lastTime":J
    :try_start_9
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    if-nez v4, :cond_7

    :try_start_a
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v4, v13, :cond_7

    .line 119
    iget-object v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-byte v5, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUah:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-wide/from16 v17, v7

    .end local v7    # "baseTime":J
    .restart local v17    # "baseTime":J
    :try_start_b
    iget-wide v7, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v4, v5, v14, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteBatteryLevel(IIJ)V

    .line 121
    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move v13, v4

    .end local v13    # "lastBatteryLevel":I
    .local v4, "lastBatteryLevel":I
    goto :goto_5

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v4    # "lastBatteryLevel":I
    .restart local v13    # "lastBatteryLevel":I
    :catchall_4
    move-exception v0

    move v15, v3

    move-wide/from16 v7, v17

    move-object v3, v0

    goto/16 :goto_10

    .end local v17    # "baseTime":J
    .restart local v7    # "baseTime":J
    :catchall_5
    move-exception v0

    move-wide/from16 v17, v7

    move v15, v3

    move-object v3, v0

    .end local v7    # "baseTime":J
    .restart local v17    # "baseTime":J
    goto/16 :goto_10

    .line 117
    .end local v17    # "baseTime":J
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .restart local v7    # "baseTime":J
    :cond_7
    move-wide/from16 v17, v7

    .line 125
    .end local v7    # "baseTime":J
    .restart local v17    # "baseTime":J
    :goto_5
    :try_start_c
    iget v4, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    .line 126
    const/4 v4, 0x1

    goto :goto_6

    .line 127
    :cond_8
    const/4 v4, 0x0

    :goto_6
    nop

    .line 128
    .local v4, "batteryState":I
    iget v8, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    if-eq v4, v8, :cond_9

    .line 129
    :try_start_d
    iget-object v8, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move v14, v6

    .end local v6    # "lastStates":I
    .local v14, "lastStates":I
    :try_start_e
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v21, v15

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 131
    iput v4, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentBatteryState:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_7

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v4    # "batteryState":I
    :catchall_6
    move-exception v0

    move v15, v3

    move v6, v14

    move-wide/from16 v7, v17

    move-object v3, v0

    goto/16 :goto_10

    .end local v14    # "lastStates":I
    .restart local v6    # "lastStates":I
    :catchall_7
    move-exception v0

    move v14, v6

    move v15, v3

    move-wide/from16 v7, v17

    move-object v3, v0

    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    goto/16 :goto_10

    .line 128
    .end local v14    # "lastStates":I
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .restart local v4    # "batteryState":I
    .restart local v6    # "lastStates":I
    :cond_9
    move v14, v6

    move-wide/from16 v21, v15

    const/4 v15, 0x0

    .line 135
    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    :goto_7
    :try_start_f
    iget v5, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    .line 136
    move v5, v15

    goto :goto_8

    .line 137
    :cond_a
    const/4 v5, 0x1

    :goto_8
    nop

    .line 138
    .local v5, "screenState":I
    iget v6, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    if-eq v5, v6, :cond_b

    .line 139
    :try_start_10
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v7, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/4 v15, 0x1

    invoke-virtual {v6, v15, v5, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDeviceState(IIJ)V

    .line 141
    iput v5, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mCurrentScreenState:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 144
    :cond_b
    :try_start_11
    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_e

    const/high16 v7, 0x60c00000

    and-int/2addr v6, v7

    const v8, 0x48200180    # 163846.0f

    if-ne v6, v14, :cond_c

    :try_start_12
    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    and-int/2addr v6, v8

    if-eq v6, v11, :cond_d

    :cond_c
    goto :goto_9

    :cond_d
    move v6, v14

    goto :goto_a

    .line 150
    :goto_9
    :try_start_13
    iget-object v6, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v6, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->noteStateChange(Landroid/os/BatteryStats$HistoryItem;)V

    .line 151
    iget v6, v0, Landroid/os/BatteryStats$HistoryItem;->states:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    and-int/2addr v6, v7

    .line 153
    .end local v14    # "lastStates":I
    .restart local v6    # "lastStates":I
    :try_start_14
    iget v7, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    and-int/2addr v7, v8

    move v11, v7

    .line 157
    :goto_a
    :try_start_15
    iget-object v7, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-eqz v7, :cond_e

    .line 158
    :try_start_16
    iget-object v7, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v8, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget v8, v8, Landroid/os/BatteryStats$ProcessStateChange;->uid:I

    iget-object v14, v0, Landroid/os/BatteryStats$HistoryItem;->processStateChange:Landroid/os/BatteryStats$ProcessStateChange;

    iget v14, v14, Landroid/os/BatteryStats$ProcessStateChange;->processState:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move v15, v3

    move/from16 v16, v4

    .end local v3    # "startedSession":Z
    .end local v4    # "batteryState":I
    .local v15, "startedSession":Z
    .local v16, "batteryState":I
    :try_start_17
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    const/16 v25, 0x2

    move-wide/from16 v27, v3

    move-object/from16 v23, v7

    move/from16 v24, v8

    move/from16 v26, v14

    invoke-virtual/range {v23 .. v28}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setUidState(IIIJ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    goto :goto_b

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v5    # "screenState":I
    .end local v16    # "batteryState":I
    :catchall_8
    move-exception v0

    move-object v3, v0

    move-wide/from16 v7, v17

    goto/16 :goto_10

    .end local v15    # "startedSession":Z
    .restart local v3    # "startedSession":Z
    :catchall_9
    move-exception v0

    move v15, v3

    move-object v3, v0

    move-wide/from16 v7, v17

    .end local v3    # "startedSession":Z
    .restart local v15    # "startedSession":Z
    goto/16 :goto_10

    .line 157
    .end local v15    # "startedSession":Z
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .restart local v3    # "startedSession":Z
    .restart local v4    # "batteryState":I
    .restart local v5    # "screenState":I
    :cond_e
    move v15, v3

    move/from16 v16, v4

    .line 163
    .end local v3    # "startedSession":Z
    .end local v4    # "batteryState":I
    .restart local v15    # "startedSession":Z
    .restart local v16    # "batteryState":I
    :goto_b
    :try_start_18
    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    if-eqz v3, :cond_12

    .line 164
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->isCompatible(Lcom/android/internal/os/PowerStats;)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    if-nez v3, :cond_11

    .line 165
    cmp-long v3, v9, v17

    if-lez v3, :cond_f

    .line 166
    :try_start_19
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v7, v9, v17

    invoke-virtual {v3, v7, v8}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 167
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v3, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 168
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 170
    :cond_f
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    .line 171
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-wide v7, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v19, v5

    .end local v5    # "screenState":I
    .local v19, "screenState":I
    iget-wide v4, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v3, v7, v8, v4, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addClockUpdate(JJ)Z

    move-result v3

    if-nez v3, :cond_10

    .line 172
    move v3, v15

    move-wide/from16 v7, v17

    goto/16 :goto_f

    .line 174
    :cond_10
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->time:J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-wide v7, v3

    .end local v9    # "lastTime":J
    .local v7, "lastTime":J
    move-wide v9, v7

    .end local v17    # "baseTime":J
    .local v3, "baseTime":J
    goto :goto_c

    .line 164
    .end local v3    # "baseTime":J
    .end local v7    # "lastTime":J
    .end local v19    # "screenState":I
    .restart local v5    # "screenState":I
    .restart local v9    # "lastTime":J
    .restart local v17    # "baseTime":J
    :cond_11
    move/from16 v19, v5

    .end local v5    # "screenState":I
    .restart local v19    # "screenState":I
    move-wide/from16 v7, v17

    .line 176
    .end local v17    # "baseTime":J
    .local v7, "baseTime":J
    :goto_c
    :try_start_1a
    iget-object v3, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    iget-object v4, v0, Landroid/os/BatteryStats$HistoryItem;->powerStats:Lcom/android/internal/os/PowerStats;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    move v14, v6

    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    :try_start_1b
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->addPowerStats(Lcom/android/internal/os/PowerStats;J)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_d

    .line 95
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v16    # "batteryState":I
    .end local v19    # "screenState":I
    :catchall_a
    move-exception v0

    move-object v3, v0

    move v6, v14

    goto/16 :goto_10

    .end local v14    # "lastStates":I
    .restart local v6    # "lastStates":I
    :catchall_b
    move-exception v0

    move v14, v6

    move-object v3, v0

    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    goto/16 :goto_10

    .end local v7    # "baseTime":J
    .end local v14    # "lastStates":I
    .restart local v6    # "lastStates":I
    .restart local v17    # "baseTime":J
    :catchall_c
    move-exception v0

    move v14, v6

    move-object v3, v0

    move-wide/from16 v7, v17

    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    goto/16 :goto_10

    .line 163
    .end local v14    # "lastStates":I
    .restart local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .restart local v5    # "screenState":I
    .restart local v6    # "lastStates":I
    .restart local v16    # "batteryState":I
    :cond_12
    move/from16 v19, v5

    move v14, v6

    .end local v5    # "screenState":I
    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    .restart local v19    # "screenState":I
    move-wide/from16 v7, v17

    .line 178
    .end local v0    # "item":Landroid/os/BatteryStats$HistoryItem;
    .end local v16    # "batteryState":I
    .end local v17    # "baseTime":J
    .end local v19    # "screenState":I
    .restart local v7    # "baseTime":J
    :goto_d
    move v6, v14

    move v3, v15

    goto/16 :goto_2

    .line 95
    .end local v7    # "baseTime":J
    .end local v14    # "lastStates":I
    .end local v15    # "startedSession":Z
    .local v3, "startedSession":Z
    .restart local v6    # "lastStates":I
    .restart local v17    # "baseTime":J
    :catchall_d
    move-exception v0

    move v15, v3

    move v14, v6

    move-object v3, v0

    move-wide/from16 v7, v17

    .end local v3    # "startedSession":Z
    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    .restart local v15    # "startedSession":Z
    goto/16 :goto_10

    .end local v15    # "startedSession":Z
    .restart local v3    # "startedSession":Z
    :catchall_e
    move-exception v0

    move v15, v3

    move-object v3, v0

    move v6, v14

    move-wide/from16 v7, v17

    .end local v3    # "startedSession":Z
    .restart local v15    # "startedSession":Z
    goto/16 :goto_10

    .end local v14    # "lastStates":I
    .end local v15    # "startedSession":Z
    .end local v17    # "baseTime":J
    .restart local v3    # "startedSession":Z
    .restart local v6    # "lastStates":I
    .restart local v7    # "baseTime":J
    :catchall_f
    move-exception v0

    move v15, v3

    move v14, v6

    move-wide/from16 v17, v7

    move-object v3, v0

    .end local v3    # "startedSession":Z
    .end local v6    # "lastStates":I
    .end local v7    # "baseTime":J
    .restart local v14    # "lastStates":I
    .restart local v15    # "startedSession":Z
    .restart local v17    # "baseTime":J
    goto :goto_10

    .end local v9    # "lastTime":J
    .end local v14    # "lastStates":I
    .end local v15    # "startedSession":Z
    .end local v17    # "baseTime":J
    .restart local v3    # "startedSession":Z
    .restart local v6    # "lastStates":I
    .restart local v7    # "baseTime":J
    .local v19, "lastTime":J
    :catchall_10
    move-exception v0

    move v15, v3

    move v14, v6

    move-wide/from16 v17, v7

    move-object v3, v0

    move-wide/from16 v9, v19

    .end local v3    # "startedSession":Z
    .end local v6    # "lastStates":I
    .end local v7    # "baseTime":J
    .restart local v14    # "lastStates":I
    .restart local v15    # "startedSession":Z
    .restart local v17    # "baseTime":J
    goto :goto_10

    .end local v14    # "lastStates":I
    .end local v15    # "startedSession":Z
    .restart local v3    # "startedSession":Z
    .restart local v6    # "lastStates":I
    :catchall_11
    move-exception v0

    move v14, v6

    move v15, v3

    move-wide/from16 v7, v17

    move-wide/from16 v9, v19

    move-object v3, v0

    .end local v6    # "lastStates":I
    .restart local v14    # "lastStates":I
    goto :goto_10

    .end local v14    # "lastStates":I
    .end local v17    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v6    # "lastStates":I
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    :catchall_12
    move-exception v0

    move v14, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move v15, v3

    move-object v3, v0

    .end local v6    # "lastStates":I
    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .restart local v14    # "lastStates":I
    .restart local v17    # "baseTime":J
    .restart local v19    # "lastTime":J
    goto :goto_10

    .line 96
    .end local v14    # "lastStates":I
    .end local v17    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v6    # "lastStates":I
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    :cond_13
    move v14, v6

    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    const-wide/16 v21, -0x1

    .line 179
    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .restart local v17    # "baseTime":J
    .restart local v19    # "lastTime":J
    :goto_e
    move v6, v14

    move-wide/from16 v9, v19

    move-wide/from16 v7, v17

    .end local v17    # "baseTime":J
    .end local v19    # "lastTime":J
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    :goto_f
    :try_start_1c
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V

    .line 180
    .end local v12    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    if-eqz v3, :cond_15

    .line 181
    cmp-long v0, p4, v21

    if-eqz v0, :cond_14

    .line 182
    move-wide/from16 v9, p4

    .line 184
    :cond_14
    cmp-long v0, v9, v7

    if-lez v0, :cond_15

    .line 185
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    sub-long v4, v9, v7

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->setDuration(J)V

    .line 186
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0, v9, v10}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->finish(J)V

    .line 187
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 191
    :cond_15
    iget-object v0, v1, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    invoke-virtual {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->reset()V

    .line 192
    .end local v3    # "startedSession":Z
    .end local v6    # "lastStates":I
    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .end local v11    # "lastStates2":I
    .end local v13    # "lastBatteryLevel":I
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 193
    return-void

    .line 95
    .restart local v6    # "lastStates":I
    .restart local v7    # "baseTime":J
    .restart local v9    # "lastTime":J
    .restart local v11    # "lastStates2":I
    .restart local v12    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .restart local v13    # "lastBatteryLevel":I
    .restart local v15    # "startedSession":Z
    :goto_10
    if-eqz v12, :cond_16

    :try_start_1d
    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHistoryIterator;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    goto :goto_11

    :catchall_13
    move-exception v0

    :try_start_1e
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_16
    :goto_11
    nop

    .end local p0    # "this":Lcom/android/server/power/stats/processor/PowerStatsAggregator;
    .end local p1    # "history":Lcom/android/internal/os/BatteryStatsHistory;
    .end local p2    # "startTimeMs":J
    .end local p4    # "endTimeMs":J
    .end local p6    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/power/stats/processor/AggregatedPowerStats;>;"
    throw v3

    .line 192
    .end local v6    # "lastStates":I
    .end local v7    # "baseTime":J
    .end local v9    # "lastTime":J
    .end local v11    # "lastStates2":I
    .end local v12    # "iterator":Lcom/android/internal/os/BatteryStatsHistoryIterator;
    .end local v13    # "lastBatteryLevel":I
    .end local v15    # "startedSession":Z
    .restart local p0    # "this":Lcom/android/server/power/stats/processor/PowerStatsAggregator;
    .restart local p1    # "history":Lcom/android/internal/os/BatteryStatsHistory;
    .restart local p2    # "startTimeMs":J
    .restart local p4    # "endTimeMs":J
    .restart local p6    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/power/stats/processor/AggregatedPowerStats;>;"
    :goto_12
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    throw v0
.end method

.method getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mAggregatedPowerStatsConfig:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 199
    monitor-enter p0

    .line 200
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    .line 201
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerComponentEnabled(IZ)V
    .locals 1
    .param p1, "powerComponentId"    # I
    .param p2, "enabled"    # Z

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mStats:Lcom/android/server/power/stats/processor/AggregatedPowerStats;

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->mEnabledComponents:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 67
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
