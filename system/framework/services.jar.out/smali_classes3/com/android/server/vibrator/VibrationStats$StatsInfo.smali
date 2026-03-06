.class public final Lcom/android/server/vibrator/VibrationStats$StatsInfo;
.super Ljava/lang/Object;
.source "VibrationStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatsInfo"
.end annotation


# instance fields
.field public final adaptiveScale:F

.field public final endLatencyMillis:I

.field public final endedBySameUid:Z

.field public final endedByUsage:I

.field public final halComposeCount:I

.field public final halComposePwleCount:I

.field public final halCompositionSize:I

.field public final halOffCount:I

.field public final halOnCount:I

.field public final halPerformCount:I

.field public final halPerformVendorCount:I

.field public final halPwleSize:I

.field public final halSetAmplitudeCount:I

.field public final halSetExternalControlCount:I

.field public final halSupportedCompositionPrimitivesUsed:[I

.field public final halSupportedEffectsUsed:[I

.field public final halUnsupportedCompositionPrimitivesUsed:[I

.field public final halUnsupportedEffectsUsed:[I

.field public final interruptedUsage:I

.field private mIsWritten:Z

.field public final repeatCount:I

.field public final startLatencyMillis:I

.field public final status:I

.field public final totalDurationMillis:I

.field public final uid:I

.field public final usage:I

.field public final vibrationType:I

.field public final vibratorOnMillis:I


# direct methods
.method constructor <init>(IIILcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationStats;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "vibrationType"    # I
    .param p3, "usage"    # I
    .param p4, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;
    .param p5, "stats"    # Lcom/android/server/vibrator/VibrationStats;

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    .line 365
    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    .line 366
    move v0, p3

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    .line 367
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/vibrator/VibrationSession$Status;->getProtoEnumValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    .line 368
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmAdaptiveScale(Lcom/android/server/vibrator/VibrationStats;)F

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    .line 369
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUid(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    .line 370
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndedByUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    .line 371
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmInterruptedUsage(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    .line 372
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmRepeatCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 380
    .local v4, "completionUptimeMillis":J
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 381
    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    .line 382
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnTotalDurationMillis(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    .line 384
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmStartUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v6

    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    .line 387
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 388
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmEndUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J

    move-result-wide v6

    sub-long v6, v4, v6

    .line 389
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v1, v6

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    goto :goto_1

    .line 391
    :cond_1
    iput v3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    iput v3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    .line 394
    :goto_1
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    .line 395
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorComposePwleCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    .line 396
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOnCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    .line 397
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorOffCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    .line 398
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPerformCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    .line 399
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPerformVendorCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    .line 400
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetAmplitudeCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    .line 401
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorSetExternalControlCount(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    .line 402
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationCompositionTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    .line 403
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibrationPwleTotalSize(Lcom/android/server/vibrator/VibrationStats;)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    .line 404
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 405
    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    .line 406
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 407
    invoke-static {v1, v2}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    .line 408
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 409
    invoke-static {v1, v3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    .line 410
    invoke-static/range {p5 .. p5}, Lcom/android/server/vibrator/VibrationStats;->-$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 411
    invoke-static {v1, v3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    .line 412
    return-void
.end method

.method private static filteredKeys(Landroid/util/SparseBooleanArray;Z)[I
    .locals 6
    .param p0, "supportArray"    # Landroid/util/SparseBooleanArray;
    .param p1, "supported"    # Z

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 440
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 439
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 442
    .end local v1    # "i":I
    if-nez v0, :cond_2

    .line 443
    const/4 v1, 0x0

    return-object v1

    .line 445
    :cond_2
    const/4 v1, 0x0

    .line 446
    .local v1, "pos":I
    new-array v2, v0, [I

    .line 447
    .local v2, "res":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 448
    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-ne v4, p1, :cond_3

    .line 449
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "pos":I
    .local v4, "pos":I
    invoke-virtual {p0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v1

    move v1, v4

    .line 447
    .end local v4    # "pos":I
    .restart local v1    # "pos":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    nop

    .line 452
    .end local v3    # "i":I
    return-object v2
.end method

.method public static findVibrationType(Landroid/os/CombinedVibration;)I
    .locals 5
    .param p0, "effect"    # Landroid/os/CombinedVibration;

    .line 463
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 464
    return v0

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    const/4 v0, 0x4

    return v0

    .line 469
    :cond_1
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 470
    const/4 v0, 0x2

    return v0

    .line 472
    :cond_2
    return v0
.end method


# virtual methods
.method isWritten()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    return v0
.end method

.method writeVibrationReported()V
    .locals 35

    .line 420
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    if-eqz v1, :cond_0

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing same vibration stats multiple times for uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibrationStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    .line 425
    iget v3, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    iget v5, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    iget v6, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    iget v7, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    iget-boolean v8, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    iget v9, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    iget v10, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    iget v11, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    int-to-long v12, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    int-to-long v14, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    int-to-long v1, v1

    iget v4, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    move-wide/from16 v16, v1

    int-to-long v1, v4

    iget v4, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    iget v2, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    move/from16 v24, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    move/from16 v25, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    move/from16 v26, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    move-object/from16 v30, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    move/from16 v32, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    move/from16 v33, v1

    iget v1, v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    move/from16 v22, v2

    const/16 v2, 0x1e7

    move/from16 v20, v4

    const/4 v4, 0x0

    move/from16 v34, v1

    invoke-static/range {v2 .. v34}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IIIZIIIJJJJIIIIIII[I[I[I[IIIFI)V

    .line 435
    return-void
.end method
