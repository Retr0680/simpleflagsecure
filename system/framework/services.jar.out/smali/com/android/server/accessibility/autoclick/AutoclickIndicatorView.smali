.class public Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;
.super Landroid/view/View;
.source "AutoclickIndicatorView.java"


# static fields
.field static final MINIMAL_ANIMATION_DURATION:I = 0x32

.field static final SHOW_INDICATOR_DELAY_TIME:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDuration:I

.field private final mAnimator:Landroid/animation/ValueAnimator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mRadius:I

.field private final mRingRect:Landroid/graphics/RectF;

.field private mSweepAngle:F

.field private mX:F

.field private mY:F

.field private showIndicator:Z


# direct methods
.method public static synthetic $r8$lambda$XCCBzXrVTtNEH0J0yQGwsCL9wM0(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    .line 63
    const/16 v0, 0x258

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x10602c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 77
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 78
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    .line 87
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 81
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSweepAngle:F

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 84
    return-void
.end method


# virtual methods
.method public clearIndicator()V
    .locals 1

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 158
    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .line 94
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 95
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 96
    const/16 v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 100
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 101
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 102
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 103
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    const-class v1, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 106
    return-object v0
.end method

.method getRadiusForTesting()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mX:F

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mY:F

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mX:F

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mY:F

    iget v5, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    iget-object v6, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRingRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mSweepAngle:F

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x3d4c0000    # -90.0f

    move-object v5, p1

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 113
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    move-object v5, p1

    .line 121
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 128
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 129
    .local v1, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 131
    .local v2, "screenHeight":I
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 132
    return-void
.end method

.method public redrawIndicator()V
    .locals 1

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->showIndicator:Z

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 151
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 152
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 161
    const/16 v0, 0x32

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    .line 162
    iget-object v0, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 163
    return-void
.end method

.method public setCoordination(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 135
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mX:F

    .line 136
    iput p2, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mY:F

    .line 137
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .line 140
    iput p1, p0, Lcom/android/server/accessibility/autoclick/AutoclickIndicatorView;->mRadius:I

    .line 141
    return-void
.end method
