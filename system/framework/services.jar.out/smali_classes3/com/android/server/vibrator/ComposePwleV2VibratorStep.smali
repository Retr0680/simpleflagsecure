.class final Lcom/android/server/vibrator/ComposePwleV2VibratorStep;
.super Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.source "ComposePwleV2VibratorStep.java"


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 9
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "pendingVibratorOffDeadline"    # J

    .line 44
    move-wide/from16 v7, p7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V

    .line 46
    return-void
.end method

.method private isBetterBreakPosition(Ljava/util/List;FI)Z
    .locals 6
    .param p2, "currentBestBreakAmplitude"    # F
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/vibrator/PwlePoint;",
            ">;FI)Z"
        }
    .end annotation

    .line 143
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/PwlePoint;

    .line 144
    .local v0, "lastSegment":Landroid/os/vibrator/PwlePoint;
    invoke-virtual {v0}, Landroid/os/vibrator/PwlePoint;->getAmplitude()F

    move-result v2

    .line 145
    .local v2, "breakAmplitudeCandidate":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 147
    .local v3, "breakPositionCandidate":I
    const/4 v4, 0x0

    if-le v3, p3, :cond_0

    .line 149
    return v4

    .line 151
    :cond_0
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-nez v5, :cond_1

    .line 153
    return v1

    .line 155
    :cond_1
    div-int/lit8 v5, p3, 0x2

    if-ge v3, v5, :cond_2

    .line 158
    return v4

    .line 161
    :cond_2
    cmpg-float v5, v2, p2

    if-gtz v5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    return v1
.end method

.method private unrollPwleSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;
    .locals 14
    .param p1, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect$Composed;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/vibrator/PwlePoint;",
            ">;"
        }
    .end annotation

    .line 89
    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    .local v1, "pwlePoints":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    const/high16 v2, 0x3f800000    # 1.0f

    .line 91
    .local v2, "bestBreakAmplitude":F
    move/from16 v3, p3

    .line 93
    .local v3, "bestBreakPosition":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 94
    .local v4, "segmentCount":I
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v5

    .line 98
    .local v5, "repeatIndex":I
    move/from16 v6, p2

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    if-gt v7, v0, :cond_3

    .line 99
    if-ne v6, v4, :cond_0

    .line 100
    if-ltz v5, :cond_3

    .line 101
    move v6, v5

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/vibrator/VibrationEffectSegment;

    .line 108
    .local v7, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v9, v7, Landroid/os/vibrator/PwleSegment;

    nop

    if-eqz v9, :cond_3

    move-object v9, v7

    check-cast v9, Landroid/os/vibrator/PwleSegment;

    .line 109
    .local v9, "pwleSegment":Landroid/os/vibrator/PwleSegment;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 113
    new-instance v10, Landroid/os/vibrator/PwlePoint;

    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getStartAmplitude()F

    move-result v11

    .line 114
    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v12

    invoke-direct {v10, v11, v12, v8}, Landroid/os/vibrator/PwlePoint;-><init>(FFI)V

    .line 113
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    new-instance v8, Landroid/os/vibrator/PwlePoint;

    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v10

    .line 117
    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v11

    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getDuration()J

    move-result-wide v12

    long-to-int v12, v12

    invoke-direct {v8, v10, v11, v12}, Landroid/os/vibrator/PwlePoint;-><init>(FFI)V

    .line 116
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;->isBetterBreakPosition(Ljava/util/List;FI)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 121
    invoke-virtual {v9}, Landroid/os/vibrator/PwleSegment;->getEndAmplitude()F

    move-result v2

    .line 122
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .end local v7    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v9    # "pwleSegment":Landroid/os/vibrator/PwleSegment;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 130
    .end local v6    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_4

    .line 132
    invoke-interface {v1, v8, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    .line 134
    :cond_4
    move-object v6, v1

    .line 130
    :goto_1
    return-object v6
.end method


# virtual methods
.method public play()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 51
    nop

    .line 56
    const-string v0, "ComposePwleV2Step"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectSize()I

    move-result v0

    .line 61
    .local v0, "limit":I
    iget-object v3, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget v4, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/vibrator/ComposePwleV2VibratorStep;->unrollPwleSegments(Landroid/os/VibrationEffect$Composed;II)Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "VibrationThread"

    if-eqz v4, :cond_0

    .line 64
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring wrong segment for a ComposeEnvelopeStep: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 65
    invoke-virtual {v6}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v6

    iget v7, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    return-object v4

    .line 83
    .end local v0    # "limit":I
    .end local v3    # "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 70
    .restart local v0    # "limit":I
    .restart local v3    # "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    :cond_0
    :try_start_2
    sget-boolean v4, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compose "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " PWLEs on vibrator "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 72
    invoke-virtual {v6}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/VibratorInfo;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/vibrator/PwlePoint;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/vibrator/PwlePoint;

    move-object v6, v4

    .line 75
    .local v6, "pwlesArray":[Landroid/os/vibrator/PwlePoint;
    iget-object v4, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibratorCallbackStepId(I)I

    move-result v4

    .line 76
    .local v4, "stepId":I
    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    int-to-long v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/vibrator/VibratorController;->on([Landroid/os/vibrator/PwlePoint;JJ)J

    move-result-wide v7

    .line 77
    .local v7, "vibratorOnResult":J
    invoke-virtual {p0, v7, v8}, Lcom/android/server/vibrator/AbstractVibratorStep;->handleVibratorOnResult(J)J

    .line 78
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v5, v7, v8, v6}, Lcom/android/server/vibrator/VibrationStats;->reportComposePwle(J[Landroid/os/vibrator/PwlePoint;)V

    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(I)Ljava/util/List;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 81
    return-object v5

    .line 83
    .end local v0    # "limit":I
    .end local v3    # "pwles":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/PwlePoint;>;"
    .end local v4    # "stepId":I
    .end local v6    # "pwlesArray":[Landroid/os/vibrator/PwlePoint;
    .end local v7    # "vibratorOnResult":J
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    throw v0
.end method
