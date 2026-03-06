.class final Lcom/android/server/vibrator/StartSequentialEffectStep;
.super Lcom/android/server/vibrator/Step;
.source "StartSequentialEffectStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    }
.end annotation


# instance fields
.field public final currentIndex:I

.field private mVibratorsOnMaxDuration:J

.field public final sequentialEffect:Landroid/os/CombinedVibration$Sequential;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V
    .locals 0
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "effect"    # Landroid/os/CombinedVibration$Sequential;
    .param p5, "index"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vibrator/Step;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;J)V

    .line 69
    iput-object p4, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    .line 70
    iput p5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    .line 71
    return-void
.end method

.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;Landroid/os/CombinedVibration$Sequential;)V
    .locals 10
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "effect"    # Landroid/os/CombinedVibration$Sequential;

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long v6, v0, v2

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, p2

    .end local p1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .end local p2    # "effect":Landroid/os/CombinedVibration$Sequential;
    .local v5, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .local v8, "effect":Landroid/os/CombinedVibration$Sequential;
    invoke-direct/range {v4 .. v9}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    .line 63
    return-void
.end method

.method private createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .locals 2
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 146
    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Mono;)V

    return-object v0

    .line 149
    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    if-eqz v0, :cond_1

    .line 150
    new-instance v0, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-object v1, p1

    check-cast v1, Landroid/os/CombinedVibration$Stereo;

    invoke-direct {v0, p0, v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;Landroid/os/CombinedVibration$Stereo;)V

    return-object v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J
    .locals 4
    .param p1, "step"    # Lcom/android/server/vibrator/AbstractVibratorStep;
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/AbstractVibratorStep;",
            "Landroid/os/VibrationEffect;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    .line 238
    .local p3, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    if-nez p1, :cond_0

    .line 240
    const-wide/16 v0, -0x1

    return-wide v0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/Step;->play()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {p1}, Lcom/android/server/vibrator/AbstractVibratorStep;->getVibratorOnDuration()J

    move-result-wide v0

    .line 244
    .local v0, "stepDuration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 246
    return-wide v0

    .line 249
    :cond_1
    invoke-virtual {p2}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J
    .locals 19
    .param p1, "effectMapping"    # Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;)J"
        }
    .end annotation

    .line 168
    .local p2, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->size()I

    move-result v3

    .line 169
    .local v3, "vibratorCount":I
    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 171
    return-wide v4

    .line 174
    :cond_0
    new-array v6, v3, [Lcom/android/server/vibrator/AbstractVibratorStep;

    .line 175
    .local v6, "steps":[Lcom/android/server/vibrator/AbstractVibratorStep;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 176
    .local v7, "vibrationStartTime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_1

    .line 177
    iget-object v10, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v11, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 178
    invoke-virtual {v11}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibrators()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v1, v9}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->vibratorIdAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/vibrator/VibratorController;

    .line 179
    invoke-virtual {v1, v9}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object v12

    .line 177
    invoke-virtual {v10, v7, v8, v11, v12}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect;)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v10

    aput-object v10, v6, v9

    .line 176
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 182
    .end local v9    # "i":I
    array-length v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 184
    const/4 v4, 0x0

    aget-object v5, v6, v4

    invoke-virtual {v1, v4}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-direct {v0, v5, v4, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J

    move-result-wide v4

    return-wide v4

    .line 193
    :cond_2
    const/4 v9, 0x0

    .line 194
    .local v9, "hasPrepared":Z
    const/4 v11, 0x0

    .line 195
    .local v11, "hasTriggered":Z
    const/4 v12, 0x0

    .line 196
    .local v12, "hasFailed":Z
    const-wide/16 v13, 0x0

    .line 197
    .local v13, "maxDuration":J
    iget-object v15, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v15, v15, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 198
    move-wide/from16 v16, v4

    invoke-virtual {v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getRequiredSyncCapabilities()J

    move-result-wide v4

    .line 199
    move/from16 v18, v10

    invoke-virtual {v1}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->getVibratorIds()[I

    move-result-object v10

    .line 197
    invoke-interface {v15, v4, v5, v10}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->prepareSyncedVibration(J[I)Z

    move-result v4

    .line 201
    .end local v9    # "hasPrepared":Z
    .local v4, "hasPrepared":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_4

    .line 202
    aget-object v9, v6, v5

    invoke-virtual {v1, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;->effectAt(I)Landroid/os/VibrationEffect;

    move-result-object v10

    invoke-direct {v0, v9, v10, v2}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/AbstractVibratorStep;Landroid/os/VibrationEffect;Ljava/util/List;)J

    move-result-wide v9

    .line 203
    .local v9, "duration":J
    cmp-long v15, v9, v16

    if-gez v15, :cond_3

    .line 205
    const/4 v12, 0x1

    .line 206
    goto :goto_2

    .line 208
    :cond_3
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 201
    .end local v9    # "duration":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 213
    .end local v5    # "i":I
    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    if-nez v12, :cond_5

    cmp-long v5, v13, v16

    if-lez v5, :cond_5

    .line 214
    iget-object v5, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    .line 215
    invoke-virtual {v0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v9

    iget-wide v9, v9, Lcom/android/server/vibrator/Vibration;->id:J

    .line 214
    invoke-interface {v5, v9, v10}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->triggerSyncedVibration(J)Z

    move-result v11

    .line 216
    and-int/2addr v12, v11

    .line 219
    :cond_5
    if-eqz v12, :cond_6

    .line 222
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .restart local v5    # "i":I
    :goto_3
    if-ltz v5, :cond_6

    .line 223
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/vibrator/Step;

    invoke-virtual {v9}, Lcom/android/server/vibrator/Step;->cancelImmediately()V

    .line 222
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 228
    .end local v5    # "i":I
    :cond_6
    if-eqz v4, :cond_7

    if-nez v11, :cond_7

    .line 230
    iget-object v5, v0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    invoke-interface {v5}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->cancelSyncedVibration()V

    .line 233
    :cond_7
    if-eqz v12, :cond_8

    const-wide/16 v9, -0x1

    goto :goto_4

    :cond_8
    move-wide v9, v13

    :goto_4
    return-wide v9
.end method


# virtual methods
.method public cancel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/android/server/vibrator/VibrationStepConductor;->EMPTY_STEP_LIST:Ljava/util/List;

    return-object v0
.end method

.method public cancelImmediately()V
    .locals 0

    .line 124
    return-void
.end method

.method public getVibratorOnDuration()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    return-wide v0
.end method

.method nextStep()Lcom/android/server/vibrator/Step;
    .locals 9

    .line 132
    iget v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    add-int/lit8 v6, v0, 0x1

    .line 133
    .local v6, "nextIndex":I
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 134
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 137
    .local v7, "nextEffectDelay":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long v3, v0, v7

    .line 138
    .local v3, "nextStartTime":J
    new-instance v1, Lcom/android/server/vibrator/StartSequentialEffectStep;

    iget-object v2, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/StartSequentialEffectStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLandroid/os/CombinedVibration$Sequential;I)V

    return-object v1
.end method

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

    .line 81
    const-string v0, "StartSequentialEffectStep"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "nextSteps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/vibrator/Step;>;"
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 85
    const-wide/16 v3, 0x0

    :try_start_0
    sget-boolean v5, Lcom/android/server/vibrator/VibrationThread;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 86
    const-string v5, "VibrationThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartSequentialEffectStep for effect #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 89
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->sequentialEffect:Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {v5}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v5

    iget v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->currentIndex:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/CombinedVibration;

    .line 90
    .local v5, "effect":Landroid/os/CombinedVibration;
    invoke-direct {p0, v5}, Lcom/android/server/vibrator/StartSequentialEffectStep;->createEffectToVibratorMapping(Landroid/os/CombinedVibration;)Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v6, "effectMapping":Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    if-nez v6, :cond_3

    .line 93
    nop

    .line 100
    iget-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v7, v7, v3

    if-ltz v7, :cond_2

    .line 105
    iget-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v3, v7, v3

    if-lez v3, :cond_1

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_1

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_1
    nop

    .line 107
    .local v3, "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_2

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 93
    return-object v0

    .line 96
    :cond_3
    :try_start_1
    invoke-direct {p0, v6, v0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->startVibrating(Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;Ljava/util/List;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 97
    iget-object v7, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v7, v7, Lcom/android/server/vibrator/VibrationStepConductor;->vibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v8, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 98
    invoke-virtual {v8}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v8, v8, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-wide v9, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    .line 97
    invoke-interface {v7, v8, v9, v10}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->noteVibratorOn(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v5    # "effect":Landroid/os/CombinedVibration;
    .end local v6    # "effectMapping":Lcom/android/server/vibrator/StartSequentialEffectStep$DeviceEffectMap;
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v5, v5, v3

    if-ltz v5, :cond_5

    .line 105
    iget-wide v5, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v3, v5, v3

    if-lez v3, :cond_4

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_2
    nop

    .line 107
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_5

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    nop

    .line 113
    return-object v0

    .line 100
    :goto_3
    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v6, v6, v3

    if-ltz v6, :cond_7

    .line 105
    iget-wide v6, p0, Lcom/android/server/vibrator/StartSequentialEffectStep;->mVibratorsOnMaxDuration:J

    cmp-long v3, v6, v3

    if-lez v3, :cond_6

    new-instance v3, Lcom/android/server/vibrator/FinishSequentialEffectStep;

    invoke-direct {v3, p0}, Lcom/android/server/vibrator/FinishSequentialEffectStep;-><init>(Lcom/android/server/vibrator/StartSequentialEffectStep;)V

    goto :goto_4

    .line 106
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/vibrator/StartSequentialEffectStep;->nextStep()Lcom/android/server/vibrator/Step;

    move-result-object v3

    :goto_4
    nop

    .line 107
    .restart local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    if-eqz v3, :cond_7

    .line 108
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "nextStep":Lcom/android/server/vibrator/Step;
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw v5
.end method
