.class Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Clock;,
        Lcom/android/server/display/RampAnimator$DualRampAnimator;,
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private mAnimationDecreaseMaxTimeSecs:F

.field private mAnimationIncreaseMaxTimeSecs:F

.field private final mClock:Lcom/android/server/display/RampAnimator$Clock;

.field private mCurrentValue:F

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mTargetHlgValue:F

.field private mTargetLinearValue:F


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    new-instance v0, Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/RampAnimator$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/server/display/RampAnimator$Clock;)V

    .line 56
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Lcom/android/server/display/RampAnimator$Clock;)V
    .locals 1
    .param p3, "clock"    # Lcom/android/server/display/RampAnimator$Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;",
            "Lcom/android/server/display/RampAnimator$Clock;",
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 60
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    .line 61
    iput-object p3, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/display/RampAnimator$Clock;

    .line 62
    return-void
.end method

.method private setAnimationTarget(FFFF)Z
    .locals 5
    .param p1, "targetLinear"    # F
    .param p2, "rate"    # F
    .param p3, "maxIncreaseTimeSecs"    # F
    .param p4, "maxDecreaseTimeSecs"    # F

    .line 100
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    move v0, p1

    .line 104
    .local v0, "target":F
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    cmpg-float v1, p2, v4

    if-gtz v1, :cond_1

    :cond_0
    goto/16 :goto_1

    .line 120
    :cond_1
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    cmpl-float v1, p3, v4

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    sub-float v1, v0, v1

    div-float/2addr v1, p2

    cmpl-float v1, v1, p3

    if-lez v1, :cond_2

    .line 122
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    sub-float v1, v0, v1

    div-float p2, v1, p3

    goto :goto_0

    .line 123
    :cond_2
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    cmpl-float v1, p4, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    sub-float/2addr v1, v0

    div-float/2addr v1, p2

    cmpl-float v1, v1, p4

    if-lez v1, :cond_3

    .line 125
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    sub-float/2addr v1, v0

    div-float p2, v1, p4

    .line 135
    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    cmpl-float v1, p2, v1

    if-gtz v1, :cond_5

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpg-float v1, v1, v4

    if-lez v1, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_6

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_6

    .line 139
    :cond_5
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 142
    :cond_6
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    move v3, v2

    .line 143
    .local v3, "changed":Z
    :cond_7
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 144
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetLinearValue:F

    .line 147
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    .line 148
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 149
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 150
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mClock:Lcom/android/server/display/RampAnimator$Clock;

    invoke-interface {v1}, Lcom/android/server/display/RampAnimator$Clock;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 153
    :cond_8
    return v3

    .line 105
    .end local v3    # "changed":Z
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_a

    :cond_9
    goto :goto_2

    .line 116
    :cond_a
    return v3

    .line 106
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 107
    iput v4, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    .line 108
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    .line 109
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetLinearValue:F

    .line 110
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 111
    iput v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 112
    invoke-direct {p0, v0}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 113
    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 114
    return v2
.end method

.method private setPropertyValue(F)V
    .locals 3
    .param p1, "val"    # F

    .line 176
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    move v0, p1

    .line 178
    .local v0, "linearVal":F
    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/FloatProperty;

    iget-object v2, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 179
    return-void
.end method


# virtual methods
.method isAnimating()Z
    .locals 1

    .line 160
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method performNextAnimationStep(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .line 182
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const v1, 0x3089705f    # 1.0E-9f

    mul-float/2addr v0, v1

    .line 183
    .local v0, "timeDelta":F
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 189
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    .line 190
    .local v1, "scale":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 192
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto :goto_0

    .line 194
    :cond_0
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mRate:F

    mul-float/2addr v2, v0

    div-float/2addr v2, v1

    .line 195
    .local v2, "amount":F
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 196
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    goto :goto_0

    .line 198
    :cond_1
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    sub-float/2addr v3, v2

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 201
    .end local v2    # "amount":F
    :goto_0
    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 202
    .local v2, "oldCurrentValue":F
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    iput v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    .line 203
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 204
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    invoke-direct {p0, v3}, Lcom/android/server/display/RampAnimator;->setPropertyValue(F)V

    .line 206
    :cond_2
    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetHlgValue:F

    iget v4, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 207
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 209
    :cond_3
    return-void
.end method

.method setAnimationTarget(FFZ)Z
    .locals 3
    .param p1, "targetLinear"    # F
    .param p2, "rate"    # F
    .param p3, "ignoreAnimationLimits"    # Z

    .line 89
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    .line 90
    .local v1, "maxIncreaseTimeSecs":F
    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 91
    .local v0, "maxDecreaseTimeSecs":F
    :goto_1
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFF)Z

    move-result v2

    return v2
.end method

.method setAnimationTimeLimits(JJ)V
    .locals 5
    .param p1, "animationRampIncreaseMaxTimeMillis"    # J
    .param p3, "animationRampDecreaseMaxTimeMillis"    # J

    .line 69
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x447a0000    # 1000.0f

    if-lez v2, :cond_0

    .line 70
    long-to-float v2, p1

    div-float/2addr v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mAnimationIncreaseMaxTimeSecs:F

    .line 71
    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 72
    long-to-float v0, p3

    div-float v3, v0, v4

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput v3, p0, Lcom/android/server/display/RampAnimator;->mAnimationDecreaseMaxTimeSecs:F

    .line 73
    return-void
.end method
