.class final Lcom/android/server/vibrator/VibrationStats;
.super Ljava/lang/Object;
.source "VibrationStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VibrationStats"


# instance fields
.field private mAdaptiveScale:F

.field private mCreateTimeDebug:J

.field private mCreateUptimeMillis:J

.field private mEndTimeDebug:J

.field private mEndUptimeMillis:J

.field private mEndedByUid:I

.field private mEndedByUsage:I

.field private mInterruptedUsage:I

.field private mRepeatCount:I

.field private mStartTimeDebug:J

.field private mStartUptimeMillis:J

.field private mVibrationCompositionTotalSize:I

.field private mVibrationPwleTotalSize:I

.field private mVibratorComposeCount:I

.field private mVibratorComposePwleCount:I

.field private mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

.field private mVibratorOffCount:I

.field private mVibratorOnCount:I

.field private mVibratorOnTotalDurationMillis:I

.field private mVibratorPerformCount:I

.field private mVibratorPerformVendorCount:I

.field private mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

.field private mVibratorSetAmplitudeCount:I

.field private mVibratorSetExternalControlCount:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdaptiveScale(Lcom/android/server/vibrator/VibrationStats;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCreateUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEndUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEndedByUid(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEndedByUsage(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterruptedUsage(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRepeatCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartUptimeMillis(Lcom/android/server/vibrator/VibrationStats;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationCompositionTotalSize(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibrationPwleTotalSize(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorComposeCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorComposePwleCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorEffectsUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorOffCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorOnCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorOnTotalDurationMillis(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorPerformCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorPerformVendorCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformVendorCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorPrimitivesUsed(Lcom/android/server/vibrator/VibrationStats;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorSetAmplitudeCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVibratorSetExternalControlCount(Lcom/android/server/vibrator/VibrationStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    return p0
.end method

.method constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    .line 91
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    .line 98
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    .line 99
    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 100
    return-void
.end method


# virtual methods
.method getCreateTimeDebug()J
    .locals 2

    .line 119
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    return-wide v0
.end method

.method getCreateUptimeMillis()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    return-wide v0
.end method

.method getDurationDebug()J
    .locals 4

    .line 135
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    iget-wide v2, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getEndTimeDebug()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    return-wide v0
.end method

.method getEndUptimeMillis()J
    .locals 2

    .line 115
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    return-wide v0
.end method

.method getStartTimeDebug()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    return-wide v0
.end method

.method getStartUptimeMillis()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    return-wide v0
.end method

.method hasEnded()Z
    .locals 4

    .line 140
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasStarted()Z
    .locals 4

    .line 145
    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reportAdaptiveScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput p1, p0, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    .line 208
    :cond_0
    return-void
.end method

.method reportComposePrimitives(J[Landroid/os/vibrator/PrimitiveSegment;)V
    .locals 8
    .param p1, "halResult"    # J
    .param p3, "primitives"    # [Landroid/os/vibrator/PrimitiveSegment;

    .line 256
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    .line 257
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    array-length v2, p3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    .line 259
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    const/4 v4, 0x0

    if-lez v0, :cond_1

    .line 262
    array-length v0, p3

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, p3, v4

    .line 263
    .local v5, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr p1, v6

    .line 264
    iget-object v6, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v7

    invoke-virtual {v6, v7, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 262
    .end local v5    # "primitive":Landroid/os/vibrator/PrimitiveSegment;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 267
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    goto :goto_2

    .line 271
    :cond_1
    array-length v0, p3

    move v1, v4

    :goto_1
    nop

    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 272
    .local v2, "primitive":Landroid/os/vibrator/PrimitiveSegment;
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 271
    .end local v2    # "primitive":Landroid/os/vibrator/PrimitiveSegment;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_2
    :goto_2
    return-void
.end method

.method reportComposePwle(J[Landroid/os/vibrator/PwlePoint;)V
    .locals 7
    .param p1, "halResult"    # J
    .param p3, "pwlePoints"    # [Landroid/os/vibrator/PwlePoint;

    .line 298
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    .line 299
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    array-length v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    .line 301
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 304
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 305
    aget-object v3, p3, v2

    .line 306
    .local v3, "current":Landroid/os/vibrator/PwlePoint;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p3, v4

    .line 308
    .local v4, "next":Landroid/os/vibrator/PwlePoint;
    invoke-virtual {v3}, Landroid/os/vibrator/PwlePoint;->getAmplitude()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/os/vibrator/PwlePoint;->getAmplitude()F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 309
    invoke-virtual {v4}, Landroid/os/vibrator/PwlePoint;->getTimeMillis()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr p1, v5

    .line 304
    .end local v3    # "current":Landroid/os/vibrator/PwlePoint;
    .end local v4    # "next":Landroid/os/vibrator/PwlePoint;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 313
    .end local v2    # "i":I
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 314
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 317
    :cond_2
    return-void
.end method

.method reportComposePwle(J[Landroid/os/vibrator/RampSegment;)V
    .locals 7
    .param p1, "halResult"    # J
    .param p3, "segments"    # [Landroid/os/vibrator/RampSegment;

    .line 279
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    .line 280
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    array-length v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    .line 282
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 285
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 286
    .local v4, "ramp":Landroid/os/vibrator/RampSegment;
    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v5

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 287
    invoke-virtual {v4}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v5

    sub-long/2addr p1, v5

    .line 285
    .end local v4    # "ramp":Landroid/os/vibrator/RampSegment;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 290
    :cond_1
    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 291
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 294
    :cond_2
    return-void
.end method

.method reportEnded(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)Z
    .locals 2
    .param p1, "endedBy"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 176
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    if-eqz p1, :cond_1

    .line 181
    iget v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    .line 182
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    .line 184
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method reportInterruptedAnotherVibration(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V
    .locals 1
    .param p1, "callerInfo"    # Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    .line 197
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    if-gez v0, :cond_0

    .line 198
    iget-object v0, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    .line 200
    :cond_0
    return-void
.end method

.method reportPerformEffect(JLandroid/os/vibrator/PrebakedSegment;)V
    .locals 4
    .param p1, "halResult"    # J
    .param p3, "prebaked"    # Landroid/os/vibrator/PrebakedSegment;

    .line 237
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    .line 239
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 242
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 247
    :goto_0
    return-void
.end method

.method reportPerformVendorEffect(J)V
    .locals 1
    .param p1, "halResult"    # J

    .line 251
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformVendorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformVendorCount:I

    .line 252
    return-void
.end method

.method reportRepetition(I)V
    .locals 1
    .param p1, "loops"    # I

    .line 212
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    .line 213
    return-void
.end method

.method reportSetAmplitude()V
    .locals 1

    .line 232
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    .line 233
    return-void
.end method

.method reportSetExternalControl()V
    .locals 1

    .line 324
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    .line 325
    return-void
.end method

.method reportStarted()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStats;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    .line 163
    return-void

    .line 159
    :goto_0
    return-void
.end method

.method reportVibratorOff()V
    .locals 1

    .line 227
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    .line 228
    return-void
.end method

.method reportVibratorOn(J)V
    .locals 2
    .param p1, "halResult"    # J

    .line 217
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 221
    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    .line 223
    :cond_0
    return-void
.end method

.method toStatsInfo(IIILcom/android/server/vibrator/VibrationSession$Status;)Lcom/android/server/vibrator/VibrationStats$StatsInfo;
    .locals 6
    .param p1, "uid"    # I
    .param p2, "vibrationType"    # I
    .param p3, "usage"    # I
    .param p4, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 103
    new-instance v0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    move-object v5, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .end local p1    # "uid":I
    .end local p2    # "vibrationType":I
    .end local p3    # "usage":I
    .end local p4    # "status":Lcom/android/server/vibrator/VibrationSession$Status;
    .local v1, "uid":I
    .local v2, "vibrationType":I
    .local v3, "usage":I
    .local v4, "status":Lcom/android/server/vibrator/VibrationSession$Status;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationStats;)V

    return-object v0
.end method
