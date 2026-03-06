.class abstract Lcom/android/server/vibrator/AbstractComposedVibratorStep;
.super Lcom/android/server/vibrator/AbstractVibratorStep;
.source "AbstractComposedVibratorStep.java"


# instance fields
.field public final effect:Landroid/os/VibrationEffect$Composed;

.field public final segmentIndex:I


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)V
    .locals 7
    .param p1, "conductor"    # Lcom/android/server/vibrator/VibrationStepConductor;
    .param p2, "startTime"    # J
    .param p4, "controller"    # Lcom/android/server/vibrator/VibratorController;
    .param p5, "effect"    # Landroid/os/VibrationEffect$Composed;
    .param p6, "index"    # I
    .param p7, "pendingVibratorOffDeadline"    # J

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p7

    .end local p1    # "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .end local p2    # "startTime":J
    .end local p4    # "controller":Lcom/android/server/vibrator/VibratorController;
    .end local p7    # "pendingVibratorOffDeadline":J
    .local v1, "conductor":Lcom/android/server/vibrator/VibrationStepConductor;
    .local v2, "startTime":J
    .local v4, "controller":Lcom/android/server/vibrator/VibratorController;
    .local v5, "pendingVibratorOffDeadline":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/vibrator/AbstractVibratorStep;-><init>(Lcom/android/server/vibrator/VibrationStepConductor;JLcom/android/server/vibrator/VibratorController;J)V

    .line 47
    iput-object p5, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    .line 48
    iput p6, v0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method protected nextSteps(I)Ljava/util/List;
    .locals 6
    .param p1, "segmentsPlayed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, "nextStartTime":J
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 62
    iget-wide v2, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mVibratorOnResult:J

    add-long/2addr v0, v2

    .line 64
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->nextSteps(JI)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method protected nextSteps(JI)Ljava/util/List;
    .locals 13
    .param p1, "nextStartTime"    # J
    .param p3, "segmentsPlayed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Lcom/android/server/vibrator/Step;",
            ">;"
        }
    .end annotation

    .line 75
    iget v0, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->segmentIndex:I

    add-int v0, v0, p3

    .line 76
    .local v0, "nextSegmentIndex":I
    iget-object v1, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 77
    .local v1, "effectSize":I
    iget-object v2, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    .line 78
    .local v2, "repeatIndex":I
    if-lt v0, v1, :cond_0

    if-ltz v2, :cond_0

    .line 80
    sub-int v3, v1, v2

    .line 81
    .local v3, "loopSize":I
    sub-int v4, v0, v2

    .line 82
    .local v4, "loopSegmentsPlayed":I
    invoke-virtual {p0}, Lcom/android/server/vibrator/Step;->getVibration()Lcom/android/server/vibrator/HalVibration;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    div-int v6, v4, v3

    invoke-virtual {v5, v6}, Lcom/android/server/vibrator/VibrationStats;->reportRepetition(I)V

    .line 83
    sub-int v5, v0, v1

    rem-int/2addr v5, v3

    add-int v0, v2, v5

    move v10, v0

    goto :goto_0

    .line 85
    .end local v3    # "loopSize":I
    .end local v4    # "loopSegmentsPlayed":I
    :cond_0
    move v10, v0

    .end local v0    # "nextSegmentIndex":I
    .local v10, "nextSegmentIndex":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/vibrator/Step;->conductor:Lcom/android/server/vibrator/VibrationStepConductor;

    iget-object v8, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->controller:Lcom/android/server/vibrator/VibratorController;

    iget-object v9, p0, Lcom/android/server/vibrator/AbstractComposedVibratorStep;->effect:Landroid/os/VibrationEffect$Composed;

    iget-wide v11, p0, Lcom/android/server/vibrator/AbstractVibratorStep;->mPendingVibratorOffDeadline:J

    move-wide v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/vibrator/VibrationStepConductor;->nextVibrateStep(JLcom/android/server/vibrator/VibratorController;Landroid/os/VibrationEffect$Composed;IJ)Lcom/android/server/vibrator/AbstractVibratorStep;

    move-result-object v0

    .line 87
    .local v0, "nextStep":Lcom/android/server/vibrator/Step;
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
