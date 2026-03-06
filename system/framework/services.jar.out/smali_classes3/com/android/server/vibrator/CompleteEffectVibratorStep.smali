.class final Lcom/android/server/vibrator/CompleteEffectVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "CompleteEffectVibratorStep.java"


# instance fields
.field private final mCancelled:Z


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JZLcom/android/server/vibrator/VibratorController;J)V
    .locals 7
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "cancelled"    # Z
    .param p5, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p6, "pendingVibratorOffDeadline"    # J

    .line 39
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    move-wide v5, p6

    .end local p1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .end local p2    # "startTime":J
    .end local p5    # "controller":Lcom/android/server/vibrator/VibratorController;
    .end local p6    # "pendingVibratorOffDeadline":J
    .local v1, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .local v2, "startTime":J
    .local v4, "controller":Lcom/android/server/vibrator/VibratorController;
    .local v5, "pendingVibratorOffDeadline":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    .line 40
    iput-boolean p4, v0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    .line 41
    return-void
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v1}, [Lcom/android/server/vibrator/Step;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/android/server/vibrator/AbstractVibratorStep;->cancel()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCleanUp()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    return v0
.end method

.method public play()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    const-string v0, "CompleteEffectVibratorStep"

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 66
    :try_start_0
    sget-boolean v0, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "VibrationThread"

    if-eqz v0, :cond_1

    .line 67
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-boolean v5, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    nop

    if-eqz v5, :cond_0

    const-string v5, "cancel"

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    move-wide/from16 v24, v2

    goto/16 :goto_3

    .line 68
    :cond_0
    const-string v5, "complete"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " vibration step on vibrator "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 69
    invoke-virtual {v5}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    iget-boolean v0, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorCompleteCallbackReceived:Z

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 75
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    return-object v0

    .line 78
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 79
    .local v5, "now":J
    iget-object v0, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorController;->getCurrentAmplitude()F

    move-result v0

    .line 80
    .local v0, "currentAmplitude":F
    iget-wide v7, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x64

    sub-long/2addr v7, v9

    .line 83
    .local v7, "remainingOnDuration":J
    iget-object v9, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v9, v9, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 85
    invoke-virtual {v9}, Lcom/android/server/vibrator/VibrationSettings;->getRampDownDuration()I

    move-result v9

    int-to-long v9, v9

    .line 84
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 86
    .local v9, "rampDownDuration":J
    iget-object v11, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v11, v11, Lcom/android/server/vibrator/VibrationStepConductor;->vibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    invoke-virtual {v11}, Lcom/android/server/vibrator/VibrationSettings;->getRampStepDuration()I

    move-result v11

    int-to-long v11, v11

    .line 87
    .local v11, "stepDownDuration":J
    const v13, 0x3a83126f    # 0.001f

    cmpg-float v13, v0, v13

    if-ltz v13, :cond_6

    cmp-long v13, v9, v11

    if-gtz v13, :cond_3

    move-wide/from16 v24, v2

    goto :goto_2

    .line 102
    :cond_3
    sget-boolean v13, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v13, :cond_4

    .line 103
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ramping down vibrator "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    .line 104
    invoke-virtual {v14}, Lcom/android/server/vibrator/VibratorController;->getVibratorInfo()Landroid/os/VibratorInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/VibratorInfo;->getId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " from amplitude "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "ms"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 103
    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_4
    iget-boolean v4, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v4, :cond_5

    add-long v13, v5, v9

    goto :goto_1

    :cond_5
    iget-wide v13, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    :goto_1
    move-wide/from16 v22, v13

    .line 115
    .local v22, "rampOffVibratorOffDeadline":J
    div-long v13, v9, v11

    long-to-float v4, v13

    div-float v20, v0, v4

    .line 116
    .local v20, "amplitudeDelta":F
    sub-float v19, v0, v20

    .line 117
    .local v19, "amplitudeTarget":F
    new-instance v15, Lcom/android/server/vibrator/RampOffVibratorStep;

    iget-object v4, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v13, v1, Lcom/android/server/vibrator/Step;->startTime:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v24, v2

    :try_start_3
    iget-object v2, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    move-object/from16 v21, v2

    move-object/from16 v16, v4

    move-wide/from16 v17, v13

    invoke-direct/range {v15 .. v23}, Lcom/android/server/vibrator/RampOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JFFLcom/android/server/vibrator/VibratorController;J)V

    filled-new-array {v15}, [Lcom/android/server/vibrator/Step;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    return-object v2

    .line 121
    .end local v0    # "currentAmplitude":F
    .end local v5    # "now":J
    .end local v7    # "remainingOnDuration":J
    .end local v9    # "rampDownDuration":J
    .end local v11    # "stepDownDuration":J
    .end local v19    # "amplitudeTarget":F
    .end local v20    # "amplitudeDelta":F
    .end local v22    # "rampOffVibratorOffDeadline":J
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 87
    .restart local v0    # "currentAmplitude":F
    .restart local v5    # "now":J
    .restart local v7    # "remainingOnDuration":J
    .restart local v9    # "rampDownDuration":J
    .restart local v11    # "stepDownDuration":J
    :cond_6
    move-wide/from16 v24, v2

    .line 90
    :goto_2
    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/vibrator/CompleteEffectVibratorStep;->mCancelled:Z

    if-eqz v2, :cond_7

    .line 92
    invoke-virtual {v1}, Lcom/android/server/vibrator/AbstractVibratorStep;->stopVibrating()V

    .line 93
    sget-object v2, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 121
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    return-object v2

    .line 97
    :cond_7
    :try_start_5
    new-instance v13, Lcom/android/server/vibrator/TurnOffVibratorStep;

    iget-object v14, v1, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-wide v2, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    iget-object v4, v1, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    const/16 v18, 0x0

    move-wide v15, v2

    move-object/from16 v17, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/server/vibrator/TurnOffVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Z)V

    filled-new-array {v13}, [Lcom/android/server/vibrator/Step;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 97
    return-object v2

    .line 121
    .end local v0    # "currentAmplitude":F
    .end local v5    # "now":J
    .end local v7    # "remainingOnDuration":J
    .end local v9    # "rampDownDuration":J
    .end local v11    # "stepDownDuration":J
    :goto_3
    invoke-static/range {v24 .. v25}, Landroid/os/Trace;->traceEnd(J)V

    .line 122
    throw v0
.end method
