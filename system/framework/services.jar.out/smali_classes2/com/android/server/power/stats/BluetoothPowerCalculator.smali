.class public Lcom/android/server/power/stats/BluetoothPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "BluetoothPowerCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalc"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mHasBluetoothPowerController:Z

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .line 58
    invoke-direct {p0}, Lcom/android/server/power/stats/PowerCalculator;-><init>()V

    .line 59
    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    .line 60
    const-string v0, "bluetooth.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    .line 61
    const-string v0, "bluetooth.controller.tx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    .line 62
    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    .line 63
    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V
    .locals 11
    .param p1, "app"    # Landroid/os/UidBatteryConsumer$Builder;
    .param p2, "powerAndDuration"    # Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
    .param p3, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v4

    .line 132
    .local v4, "consumedEnergyUC":J
    invoke-static {v4, v5, p3}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v3

    .line 133
    .local v3, "powerModel":I
    nop

    .line 134
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    .line 135
    .local v6, "activityCounter":Landroid/os/BatteryStats$ControllerActivityCounter;
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    .line 136
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v7

    .line 135
    move-object v1, p0

    move-object v8, p2

    .end local p2    # "powerAndDuration":Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
    .local v8, "powerAndDuration":Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 138
    iget-wide v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v1, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 140
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 144
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 145
    iget-wide v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v9, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v0, v9

    iput-wide v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 146
    iget-wide v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    iget-wide v9, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v0, v9

    iput-wide v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 149
    :cond_0
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz p2, :cond_2

    .line 150
    const/4 p2, 0x0

    .local p2, "j":I
    :goto_0
    iget-object v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v0, v0

    if-ge p2, v0, :cond_2

    .line 151
    iget-object v0, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v0, v0, p2

    .line 152
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    iget v1, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 153
    .local v1, "processState":I
    if-nez v1, :cond_1

    .line 155
    goto :goto_1

    .line 158
    :cond_1
    iget-object v2, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    aget-wide v9, v2, p2

    invoke-virtual {p1, v0, v9, v10, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 150
    .end local v0    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v1    # "processState":I
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 161
    .end local p2    # "j":I
    :cond_2
    return-void
.end method

.method private calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V
    .locals 24
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerModel"    # I
    .param p3, "consumedEnergyUC"    # J
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "ignoreReportedPower"    # Z
    .param p7, "powerAndDuration"    # Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;

    .line 168
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez p5, :cond_1

    .line 169
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 170
    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 171
    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 174
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    .line 178
    .local v4, "idleTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    .line 179
    .local v5, "rxTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 180
    .local v6, "txTimeCounter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    .line 181
    .local v13, "idleTimeMs":J
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 182
    .local v9, "rxTimeMs":J
    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    .line 184
    .local v11, "txTimeMs":J
    add-long v15, v13, v9

    move-wide/from16 v17, v2

    add-long v2, v15, v11

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 186
    const/4 v2, 0x2

    move/from16 v3, p2

    if-ne v3, v2, :cond_4

    .line 187
    invoke-static/range {p3 .. p4}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 188
    if-eqz v0, :cond_b

    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_b

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 190
    iget-object v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v7, v7, v2

    .line 191
    .local v7, "key":Landroid/os/BatteryConsumer$Key;
    iget v8, v7, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 192
    .local v8, "processState":I
    if-nez v8, :cond_2

    .line 194
    goto :goto_1

    .line 197
    :cond_2
    iget-object v15, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 198
    invoke-virtual {v0, v8}, Landroid/os/BatteryStats$Uid;->getBluetoothEnergyConsumptionUC(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/stats/PowerCalculator;->uCtoMah(J)D

    move-result-wide v16

    aput-wide v16, v15, v2

    .line 189
    .end local v7    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v8    # "processState":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    nop

    .end local v2    # "i":I
    goto/16 :goto_5

    .line 202
    :cond_4
    if-nez p6, :cond_7

    .line 203
    nop

    .line 204
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v15, 0x414b774000000000L    # 3600000.0

    div-double/2addr v7, v15

    .line 206
    .local v7, "powerMah":D
    cmpl-double v2, v7, v17

    if-eqz v2, :cond_6

    .line 207
    iput-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 208
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v2, :cond_5

    .line 211
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    move-wide v15, v7

    move-wide/from16 v7, v17

    .end local v7    # "powerMah":D
    .local v15, "powerMah":D
    invoke-static {v2, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_2

    .line 208
    .end local v15    # "powerMah":D
    .restart local v7    # "powerMah":D
    :cond_5
    move-wide v15, v7

    .line 213
    .end local v7    # "powerMah":D
    .restart local v15    # "powerMah":D
    :goto_2
    return-void

    .line 206
    .end local v15    # "powerMah":D
    .restart local v7    # "powerMah":D
    :cond_6
    move-wide v15, v7

    .line 217
    .end local v7    # "powerMah":D
    :cond_7
    move-object/from16 v8, p0

    iget-boolean v2, v8, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    if-eqz v2, :cond_a

    .line 218
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 220
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_b

    .line 221
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 222
    iget-object v3, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v3, v3, v2

    .line 223
    .local v3, "key":Landroid/os/BatteryConsumer$Key;
    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    .line 224
    .local v7, "processState":I
    if-nez v7, :cond_8

    .line 226
    goto :goto_4

    .line 229
    :cond_8
    iget-object v8, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    .line 231
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v18

    .line 232
    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v20

    .line 233
    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v22

    .line 230
    move-object/from16 v17, p0

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v15

    aput-wide v15, v8, v2

    .line 221
    .end local v3    # "key":Landroid/os/BatteryConsumer$Key;
    .end local v7    # "processState":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    nop

    .end local v2    # "i":I
    goto :goto_5

    .line 237
    :cond_a
    const-wide/16 v7, 0x0

    iput-wide v7, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    .line 238
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v2, :cond_b

    .line 239
    iget-object v2, v1, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v2, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 243
    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 17
    .param p1, "builder"    # Landroid/os/BatteryUsageStats$Builder;
    .param p2, "batteryStats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "query"    # Landroid/os/BatteryUsageStatsQuery;

    .line 73
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    sget-object v2, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    .line 78
    .local v2, "keys":[Landroid/os/BatteryConsumer$Key;
    new-instance v3, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;-><init>(Lcom/android/server/power/stats/BluetoothPowerCalculator-IA;)V

    move-object v12, v3

    .line 80
    .local v12, "powerAndDuration":Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;
    nop

    .line 81
    invoke-virtual {v0}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    .line 82
    .local v3, "uidBatteryConsumerBuilders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UidBatteryConsumer$Builder;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v13, 0x1

    sub-int/2addr v4, v13

    .local v4, "i":I
    :goto_0
    const/4 v14, 0x2

    if-ltz v4, :cond_3

    .line 83
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    .line 84
    .local v5, "app":Landroid/os/UidBatteryConsumer$Builder;
    sget-object v6, Lcom/android/server/power/stats/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v6, :cond_2

    .line 85
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    invoke-virtual {v5, v14}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    .line 87
    iput-object v2, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 88
    array-length v6, v2

    new-array v6, v6, [D

    iput-object v6, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    goto :goto_1

    .line 90
    :cond_1
    const/4 v2, 0x0

    .line 93
    :cond_2
    :goto_1
    move-object/from16 v6, p0

    invoke-direct {v6, v5, v12, v1}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V

    .line 82
    .end local v5    # "app":Landroid/os/UidBatteryConsumer$Builder;
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    move-object/from16 v6, p0

    .line 96
    .end local v4    # "i":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothEnergyConsumptionUC()J

    move-result-wide v8

    .line 97
    .local v8, "consumedEnergyUC":J
    invoke-static {v8, v9, v1}, Lcom/android/server/power/stats/PowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    .line 98
    .local v7, "powerModel":I
    nop

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v10

    .line 100
    .local v10, "activityCounter":Landroid/os/BatteryStats$ControllerActivityCounter;
    nop

    .line 101
    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v11

    .line 100
    const/4 v6, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/power/stats/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;)V

    .line 104
    iget-wide v4, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v13, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    sub-long/2addr v4, v13

    const-wide/16 v13, 0x0

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 111
    .local v4, "systemComponentDurationMs":J
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v13

    iget-wide v14, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    .line 113
    const/4 v11, 0x2

    invoke-virtual {v13, v11, v14, v15}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v13

    check-cast v13, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v14, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    move/from16 v16, v7

    .end local v7    # "powerModel":I
    .local v16, "powerModel":I
    iget-wide v6, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 116
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 115
    move/from16 v14, v16

    .end local v16    # "powerModel":I
    .local v14, "powerModel":I
    invoke-virtual {v13, v11, v6, v7, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 119
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v6

    iget-wide v0, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    .line 121
    invoke-virtual {v6, v11, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v6, v12, Lcom/android/server/power/stats/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    .line 123
    invoke-virtual {v0, v11, v6, v7, v14}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    .line 126
    return-void
.end method

.method public calculatePowerMah(JJJ)D
    .locals 6
    .param p1, "rxTimeMs"    # J
    .param p3, "txTimeMs"    # J
    .param p5, "idleTimeMs"    # J

    .line 247
    long-to-double v0, p5

    iget-wide v2, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v0, v2

    long-to-double v2, p1

    iget-wide v4, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    long-to-double v2, p3

    iget-wide v4, p0, Lcom/android/server/power/stats/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 1
    .param p1, "powerComponent"    # I

    .line 67
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
