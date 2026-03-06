.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mAdaptiveBatterySaverEnabledCount:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I

.field private mCurrentState:I

.field private mLastAdaptiveBatterySaverDisabledTime:J

.field private mLastAdaptiveBatterySaverEnabledTime:J

.field private mLastBatterySaverDisabledTime:J

.field private mLastBatterySaverEnabledTime:J

.field private mLastNtAutomaticBatterySaverDisabledTime:J

.field private mLastNtAutomaticBatterySaverEnabledTime:J

.field private final mLock:Ljava/lang/Object;

.field private mNtAutomaticBatterySaverEnabledCount:I

.field final mStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 171
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 178
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 181
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 184
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 189
    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mNtAutomaticBatterySaverEnabledCount:I

    .line 191
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverEnabledTime:J

    .line 193
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverDisabledTime:J

    .line 197
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 200
    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 206
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 207
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 208
    return-void
.end method

.method private dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V
    .locals 20
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "interactiveState"    # I
    .param p3, "interactiveLabel"    # Ljava/lang/String;
    .param p4, "dozeState"    # I
    .param p5, "dozeLabel"    # Ljava/lang/String;

    .line 535
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 536
    const-string v5, " "

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 537
    move-object/from16 v5, p3

    invoke-virtual {v1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 538
    const-string v6, ": "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 540
    const/4 v6, 0x0

    invoke-direct {v0, v6, v2, v3, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v7

    .line 542
    .local v7, "offStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    const/4 v8, 0x1

    invoke-direct {v0, v8, v2, v3, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v6

    .line 545
    .local v6, "onStat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    nop

    .line 546
    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v8, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v8, v8, 0x3e8

    .line 547
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v8, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 548
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 549
    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v8

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 550
    invoke-virtual {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v15, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v15, v15, 0x3e8

    .line 551
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-wide/from16 v16, v13

    iget v13, v6, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 552
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 553
    invoke-virtual {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v18

    div-double v18, v18, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object v14, v9

    move-object/from16 v16, v13

    move-object v13, v8

    filled-new-array/range {v10 .. v17}, [Ljava/lang/Object;

    move-result-object v8

    .line 545
    const-string v9, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private endLastStateLocked(JII)V
    .locals 21
    .param p1, "now"    # J
    .param p3, "batteryLevel"    # I
    .param p4, "batteryPercent"    # I

    .line 362
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_0

    .line 363
    return-void

    .line 365
    :cond_0
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 367
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 368
    move/from16 v3, p4

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 369
    move-wide/from16 v4, p1

    iput-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 371
    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long v13, v6, v8

    .line 372
    .local v13, "deltaTime":J
    iget v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v7, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int v15, v6, v7

    .line 373
    .local v15, "deltaDrain":I
    iget v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v7, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int v16, v6, v7

    .line 375
    .local v16, "deltaPercent":I
    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v6, v13

    iput-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 376
    iget v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v6, v15

    iput v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 377
    iget v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int v6, v6, v16

    iput v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 388
    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 389
    invoke-static {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v10

    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 390
    invoke-static {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v11

    iget v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 391
    invoke-static {v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v12

    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 388
    move-wide/from16 v17, v6

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-static/range {v10 .. v20}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    .line 399
    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 212
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 213
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(IIII)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 1
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I
    .param p4, "plugState"    # I

    .line 268
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    return-object v0
.end method

.method private startNewStateLocked(IJII)V
    .locals 3
    .param p1, "newState"    # I
    .param p2, "now"    # J
    .param p4, "batteryLevel"    # I
    .param p5, "batteryPercent"    # I

    .line 406
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 408
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v0, :cond_0

    .line 409
    return-void

    .line 412
    :cond_0
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    .line 413
    .local v0, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    iput p4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 414
    iput p5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 415
    iput-wide p2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 416
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 417
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .line 238
    packed-switch p0, :pswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$PlugState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0

    .line 240
    :pswitch_0
    const-string v0, "NotInitialized"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method static statesToIndex(IIII)I
    .locals 2
    .param p0, "batterySaverState"    # I
    .param p1, "interactiveState"    # I
    .param p2, "dozeState"    # I
    .param p3, "plugState"    # I

    .line 226
    and-int/lit8 v0, p0, 0x3

    .line 227
    .local v0, "ret":I
    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 228
    and-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    .line 229
    and-int/lit8 v1, p3, 0x1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    .line 230
    return v0
.end method

.method private transitionStateLocked(I)V
    .locals 9
    .param p1, "newState"    # I

    .line 308
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_0

    .line 309
    return-void

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v3

    .line 312
    .local v3, "now":J
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v5

    .line 313
    .local v5, "batteryLevel":I
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v6

    .line 315
    .local v6, "batteryPercent":I
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 316
    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v0

    .line 317
    .local v0, "oldBatterySaverState":I
    :goto_0
    if-gez p1, :cond_2

    .line 318
    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    :goto_1
    move v7, v1

    .line 319
    .local v7, "newBatterySaverState":I
    if-eq v0, v7, :cond_5

    .line 320
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 345
    :pswitch_0
    iget v8, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mNtAutomaticBatterySaverEnabledCount:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mNtAutomaticBatterySaverEnabledCount:I

    .line 346
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverEnabledTime:J

    .line 347
    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_5

    .line 349
    :cond_3
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverDisabledTime:J

    goto :goto_2

    .line 336
    :pswitch_1
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    .line 337
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    .line 338
    if-ne v0, v2, :cond_5

    .line 339
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_2

    .line 322
    :pswitch_2
    iget v8, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v8, v2

    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 323
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 324
    if-ne v0, v1, :cond_5

    .line 325
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    goto :goto_2

    .line 329
    :pswitch_3
    if-ne v0, v2, :cond_4

    .line 330
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    goto :goto_2

    .line 332
    :cond_4
    iput-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    .line 334
    nop

    .line 356
    :cond_5
    :goto_2
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    .line 357
    move-object v1, p0

    move v2, p1

    .end local p1    # "newState":I
    .local v2, "newState":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    .line 358
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 16
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 420
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Battery saving stats:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 423
    iget-object v7, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 424
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v8, v3

    .line 425
    .local v8, "now":J
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v3

    move-wide v10, v3

    .line 426
    .local v10, "nowElapsed":J
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "Battery Saver is currently: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v3}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    const-string v3, "NT_AUTOMATIC"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v8    # "now":J
    .end local v10    # "nowElapsed":J
    :catchall_0
    move-exception v0

    goto/16 :goto_1

    .line 437
    .restart local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v8    # "now":J
    .restart local v10    # "nowElapsed":J
    :pswitch_1
    const-string v3, "ADAPTIVE"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    goto :goto_0

    .line 434
    :pswitch_2
    const-string v3, "ON"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 435
    goto :goto_0

    .line 431
    :pswitch_3
    const-string v3, "OFF"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 432
    nop

    .line 447
    :goto_0
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 448
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 449
    const-string v3, "Last ON time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 450
    new-instance v3, Ljava/util/Date;

    sub-long v12, v8, v10

    iget-wide v14, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 451
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 452
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 453
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 456
    :cond_0
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 457
    const-string v3, "Last OFF time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 458
    new-instance v3, Ljava/util/Date;

    sub-long v12, v8, v10

    iget-wide v14, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 459
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 460
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 461
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 464
    :cond_1
    const-string v3, "Times full enabled: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 467
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 468
    const-string v3, "Last ADAPTIVE ON time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 469
    new-instance v3, Ljava/util/Date;

    sub-long v12, v8, v10

    iget-wide v14, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 471
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverEnabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 473
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 475
    :cond_2
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 476
    const-string v3, "Last ADAPTIVE OFF time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 477
    new-instance v3, Ljava/util/Date;

    sub-long v12, v8, v10

    iget-wide v14, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 479
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 480
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastAdaptiveBatterySaverDisabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 481
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 483
    :cond_3
    const-string v3, "Times adaptive enabled: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 484
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mAdaptiveBatterySaverEnabledCount:I

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 488
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverEnabledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 489
    const-string v3, "Last NtAutomatic ON time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 490
    new-instance v3, Ljava/util/Date;

    sub-long v12, v8, v10

    iget-wide v14, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverEnabledTime:J

    add-long/2addr v12, v14

    invoke-direct {v3, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 492
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 493
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverEnabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 494
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 496
    :cond_4
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverDisabledTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 497
    const-string v3, "Last NtAutomatic OFF time: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 498
    new-instance v3, Ljava/util/Date;

    sub-long v4, v8, v10

    iget-wide v12, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverDisabledTime:J

    add-long/2addr v4, v12

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget-wide v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastNtAutomaticBatterySaverDisabledTime:J

    invoke-static {v3, v4, v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 502
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 504
    :cond_5
    const-string v3, "Times NtAutomatic enabled: "

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 505
    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats;->mNtAutomaticBatterySaverEnabledCount:I

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 508
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 509
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 511
    const-string v3, "Drain stats:"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    const-string v3, "                   Battery saver OFF                          ON"

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 514
    const-string v4, "NonIntr"

    const-string v6, "NonDoze"

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 516
    const-string v4, "   Intr"

    const-string v6, "       "

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 519
    const-string v4, "NonIntr"

    const-string v6, "Deep   "

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 521
    const-string v4, "   Intr"

    const-string v6, "       "

    const/4 v3, 0x1

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 524
    const-string v4, "NonIntr"

    const-string v6, "Light  "

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 526
    const-string v4, "   Intr"

    const-string v6, "       "

    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Landroid/util/IndentingPrintWriter;ILjava/lang/String;ILjava/lang/String;)V

    .line 528
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v8    # "now":J
    .end local v10    # "nowElapsed":J
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 530
    return-void

    .line 528
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 3
    .param p1, "stateIndex"    # I

    .line 253
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 255
    .local v1, "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    if-nez v1, :cond_0

    .line 256
    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    move-object v1, v2

    .line 257
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 260
    .end local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 259
    .restart local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 260
    .end local v1    # "stat":Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectBatteryLevel()I
    .locals 2

    .line 278
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 279
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_0

    .line 280
    const/4 v1, 0x0

    return v1

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v1

    return v1
.end method

.method injectBatteryPercent()I
    .locals 2

    .line 287
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 288
    .local v0, "bmi":Landroid/os/BatteryManagerInternal;
    if-nez v0, :cond_0

    .line 289
    const/4 v1, 0x0

    return v1

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    return v1
.end method

.method injectCurrentTime()J
    .locals 2

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method transitionState(IIII)V
    .locals 2
    .param p1, "batterySaverState"    # I
    .param p2, "interactiveState"    # I
    .param p3, "dozeState"    # I
    .param p4, "plugState"    # I

    .line 299
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(IIII)I

    move-result v1

    .line 302
    .local v1, "newState":I
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 303
    .end local v1    # "newState":I
    monitor-exit v0

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
