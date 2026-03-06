.class final Lcom/android/server/vibrator/PerformPrebakedVibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "PerformPrebakedVibratorStep.java"


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "pendingVibratorOffDeadline"    # J

    .line 42
    move-wide/from16 v7, p7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 44
    return-void
.end method

.method private replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;
    .locals 4
    .param p1, "fallback"    # Landroid/os/VibrationEffect$Composed;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 102
    .local v0, "newSegments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    .line 103
    .local v1, "newRepeatIndex":I
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 105
    iget v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    .line 108
    :cond_0
    new-instance v2, Landroid/os/VibrationEffect$Composed;

    invoke-direct {v2, v0, v1}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    return-object v2
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 49
    move-object/from16 v1, p0

    const-string v0, "PerformPrebakedVibratorStep"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 51
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    iget v4, v1, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/VibrationEffectSegment;

    .line 52
    .local v0, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v4, v0, Landroid/os/vibrator/PrebakedSegment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const-string v6, "VibrationThread"

    if-nez v4, :cond_0

    .line 53
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring wrong segment for a PerformPrebakedVibratorStep: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v1, v5}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    return-object v4

    .line 91
    .end local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v2

    goto/16 :goto_0

    .line 59
    .restart local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :cond_0
    :try_start_2
    move-object v4, v0

    check-cast v4, Landroid/os/vibrator/PrebakedSegment;

    move-object v8, v4

    .line 60
    .local v8, "prebaked":Landroid/os/vibrator/PrebakedSegment;
    sget-boolean v4, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Perform "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v8}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    .line 61
    invoke-static {v7}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " on vibrator "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 63
    invoke-virtual {v7}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/VibratorInfo;->getId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/server/vibrator/HalVibration;->getFallback(I)Landroid/os/VibrationEffect;

    move-result-object v4

    .line 67
    .local v4, "fallback":Landroid/os/VibrationEffect;
    iget-object v7, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v7

    move v13, v7

    .line 68
    .local v13, "stepId":I
    iget-object v7, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v11, v13

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/vibrator/VibratorController;->on(Landroid/os/vibrator/PrebakedSegment;JJ)J

    move-result-wide v9

    .line 69
    .local v9, "vibratorOnResult":J
    invoke-virtual {v1, v9, v10}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 70
    invoke-virtual {v1}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v7, v9, v10, v8}, Lcom/android/server/vibrator/VibrationStats;->reportPerformEffect(JLandroid/os/vibrator/PrebakedSegment;)V

    .line 72
    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-nez v7, :cond_3

    invoke-virtual {v8}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v7

    if-eqz v7, :cond_3

    instance-of v7, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v7, :cond_3

    .line 74
    sget-boolean v5, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playing fallback for effect "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v8}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v7

    invoke-static {v7}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v14, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v5, v1, Lcom/android/server/vibrator/Step;->startTime:J

    iget-object v7, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object v11, v4

    check-cast v11, Landroid/os/VibrationEffect$Composed;

    .line 79
    invoke-direct {v1, v11}, Lcom/android/server/vibrator/PerformPrebakedVibratorStep;->replaceCurrentSegment(Landroid/os/VibrationEffect$Composed;)Landroid/os/VibrationEffect$Composed;

    move-result-object v18

    iget v11, v1, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v22, v2

    :try_start_3
    iget-wide v2, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    .line 78
    move-wide/from16 v20, v2

    move-wide v15, v5

    move-object/from16 v17, v7

    move/from16 v19, v11

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v2

    .line 81
    .local v2, "fallbackStep":Lcom/android/server/vibrator/AbstractVibratorStep;
    invoke-virtual {v2}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v3

    .line 84
    .local v3, "fallbackResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    invoke-virtual {v2}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    nop

    .line 91
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    return-object v3

    .line 91
    .end local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v2    # "fallbackStep":Lcom/android/server/vibrator/AbstractVibratorStep;
    .end local v3    # "fallbackResult":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    .end local v4    # "fallback":Landroid/os/VibrationEffect;
    .end local v8    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v9    # "vibratorOnResult":J
    .end local v13    # "stepId":I
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 72
    .restart local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .restart local v4    # "fallback":Landroid/os/VibrationEffect;
    .restart local v8    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .restart local v9    # "vibratorOnResult":J
    .restart local v13    # "stepId":I
    :cond_3
    move-wide/from16 v22, v2

    .line 89
    :try_start_4
    invoke-virtual {v1, v5}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 89
    return-object v2

    .line 91
    .end local v0    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v4    # "fallback":Landroid/os/VibrationEffect;
    .end local v8    # "prebaked":Landroid/os/vibrator/PrebakedSegment;
    .end local v9    # "vibratorOnResult":J
    .end local v13    # "stepId":I
    :goto_0
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 92
    throw v0
.end method
