.class public Lcom/android/server/input/debug/RotaryInputGraphView;
.super Landroid/view/View;
.source "RotaryInputGraphView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;,
        Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    }
.end annotation


# static fields
.field private static final DEFAULT_FRAME_CENTER_POSITION:F = 0.0f

.field private static final FRAME_BORDER_GAP_SP:I = 0xa

.field private static final FRAME_COLOR:I = -0x408be4b9

.field private static final FRAME_TEXT_OFFSET_SP:I = 0x2

.field private static final FRAME_TEXT_SIZE_SP:I = 0xa

.field private static final FRAME_WIDTH_SP:I = 0x2

.field private static final GRAPH_COLOR:I = -0xff01

.field private static final GRAPH_LINE_WIDTH_SP:I = 0x1

.field private static final GRAPH_POINT_RADIUS_SP:I = 0x4

.field private static final MAX_GESTURE_TIME:J

.field private static final MAX_GRAPH_VALUES_SIZE:I = 0x190

.field private static final MAX_SHOWN_TIME_INTERVAL:J


# instance fields
.field private final mDefaultLocale:Ljava/util/Locale;

.field private final mDm:Landroid/util/DisplayMetrics;

.field private mFrameCenterPosition:F

.field private final mFrameCenterToBorderDistance:F

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mFrameTextPaint:Landroid/graphics/Paint;

.field private final mGraphLinePaint:Landroid/graphics/Paint;

.field private final mGraphPointPaint:Landroid/graphics/Paint;

.field private final mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

.field private final mScaledVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "c"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 73
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    .line 76
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 77
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    .line 79
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    const v1, -0x408be4b9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 93
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 94
    return-void
.end method

.method private static applyDimensionSp(ILandroid/util/DisplayMetrics;)I
    .locals 2
    .param p0, "dimensionSp"    # I
    .param p1, "dm"    # Landroid/util/DisplayMetrics;

    .line 242
    const/4 v0, 0x2

    int-to-float v1, p0

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public addValue(FJ)V
    .locals 7
    .param p1, "scrollAxisValue"    # F
    .param p2, "eventTime"    # J

    .line 104
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v0

    nop

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getFirst()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v0, p2, v0

    sget-wide v2, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->removeFirst()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 111
    iput v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 117
    :cond_1
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v0, p1

    .line 118
    .local v0, "displacement":F
    iget-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getLast()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v2

    iget v2, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 119
    .local v2, "prevPos":F
    :goto_1
    add-float v3, v2, v0

    .line 121
    .local v3, "pos":F
    iget-object v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->add(FJ)V

    .line 126
    iget v4, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr v4, v5

    .line 129
    .local v4, "verticalDiff":F
    cmpl-float v5, v4, v1

    if-lez v5, :cond_4

    .line 130
    iget v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v5, v3, v5

    cmpg-float v1, v5, v1

    if-gez v1, :cond_3

    const/4 v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    .line 133
    .local v1, "sign":I
    :goto_2
    iget v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    int-to-float v6, v1

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 137
    .end local v1    # "sign":I
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 138
    return-void
.end method

.method public getFrameCenterPosition()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 142
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    const/16 v1, 0xa

    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v1, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v7

    .line 147
    .local v7, "verticalMargin":I
    move v8, v7

    .line 148
    .local v8, "topY":I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v9, v1, v7

    .line 149
    .local v9, "bottomY":I
    add-int v1, v8, v9

    const/4 v10, 0x2

    div-int/lit8 v11, v1, 0x2

    .line 153
    .local v11, "middleY":I
    const/4 v12, 0x0

    .line 154
    .local v12, "leftX":I
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v13

    .line 158
    .local v13, "rightX":I
    int-to-float v3, v8

    int-to-float v4, v13

    int-to-float v5, v8

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    int-to-float v3, v11

    int-to-float v4, v13

    int-to-float v5, v11

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    int-to-float v3, v9

    int-to-float v4, v13

    int-to-float v5, v9

    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDm:Landroid/util/DisplayMetrics;

    invoke-static {v10, v2}, Lcom/android/server/input/debug/RotaryInputGraphView;->applyDimensionSp(ILandroid/util/DisplayMetrics;)I

    move-result v10

    .line 164
    .local v10, "frameTextOffset":I
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    add-float/2addr v3, v4

    .line 166
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 165
    const-string v4, "%.1f"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sub-int v3, v8, v10

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 164
    const/4 v14, 0x0

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 170
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 171
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sub-int v3, v11, v10

    int-to-float v3, v3

    iget-object v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mDefaultLocale:Ljava/util/Locale;

    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    iget v5, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    sub-float/2addr v3, v5

    .line 177
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sub-int v3, v9, v10

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameTextPaint:Landroid/graphics/Paint;

    .line 175
    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 183
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 184
    return-void

    .line 191
    :cond_0
    iget-object v2, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v2}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->getLast()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 192
    .local v2, "mostRecentTime":J
    const/4 v4, 0x0

    .line 193
    .local v4, "prevCoordX":F
    const/4 v5, 0x0

    .line 194
    .local v5, "prevCoordY":F
    const/4 v6, 0x0

    .line 195
    .local v6, "prevAge":F
    iget-object v15, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-virtual {v15}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->reverseIterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v6

    .end local v6    # "prevAge":F
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    .local v16, "prevAge":F
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 196
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 198
    .local v6, "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    move/from16 v17, v14

    move-object/from16 v18, v15

    .end local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    .local v18, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    iget-wide v14, v6, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    sub-long v14, v2, v14

    long-to-int v14, v14

    .line 199
    .local v14, "age":I
    iget v15, v6, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 206
    .local v15, "pos":F
    sget-wide v19, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    move-wide/from16 v21, v2

    .end local v2    # "mostRecentTime":J
    .local v21, "mostRecentTime":J
    int-to-long v2, v14

    sub-long v2, v19, v2

    long-to-float v2, v2

    move/from16 v19, v2

    sget-wide v2, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    long-to-float v2, v2

    div-float v2, v19, v2

    add-int/lit8 v3, v13, 0x0

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v2, v2, v17

    .line 216
    .local v2, "coordX":F
    int-to-float v3, v11

    move/from16 v19, v3

    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    sub-float v3, v15, v3

    move/from16 v20, v3

    iget v3, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    div-float v3, v20, v3

    move/from16 v20, v3

    sub-int v3, v11, v8

    int-to-float v3, v3

    mul-float v3, v3, v20

    sub-float v3, v19, v3

    .line 220
    .local v3, "coordY":F
    move/from16 v19, v4

    .end local v4    # "prevCoordX":F
    .local v19, "prevCoordX":F
    iget-object v4, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 224
    if-eqz v14, :cond_2

    int-to-float v4, v14

    sub-float v4, v4, v16

    move/from16 v20, v2

    .end local v2    # "coordX":F
    .local v20, "coordX":F
    sget-wide v1, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_GESTURE_TIME:J

    long-to-float v1, v1

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_1

    .line 225
    move-object v1, v6

    .end local v6    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .local v1, "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    iget-object v6, v0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphLinePaint:Landroid/graphics/Paint;

    move v2, v5

    move v5, v3

    move v3, v2

    move/from16 v2, v19

    move/from16 v4, v20

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .end local v1    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .end local v20    # "coordX":F
    .local v2, "prevCoordX":F
    .local v3, "prevCoordY":F
    .local v4, "coordX":F
    .local v5, "coordY":F
    .local v19, "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 224
    .end local v2    # "prevCoordX":F
    .end local v4    # "coordX":F
    .local v3, "coordY":F
    .local v5, "prevCoordY":F
    .restart local v6    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .local v19, "prevCoordX":F
    .restart local v20    # "coordX":F
    :cond_1
    move v2, v5

    move v5, v3

    move v3, v2

    move/from16 v2, v19

    move/from16 v4, v20

    move-object/from16 v19, v6

    .end local v6    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .end local v20    # "coordX":F
    .restart local v2    # "prevCoordX":F
    .local v3, "prevCoordY":F
    .restart local v4    # "coordX":F
    .local v5, "coordY":F
    .local v19, "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    goto :goto_1

    .end local v4    # "coordX":F
    .local v2, "coordX":F
    .local v3, "coordY":F
    .local v5, "prevCoordY":F
    .restart local v6    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .local v19, "prevCoordX":F
    :cond_2
    move v4, v5

    move v5, v3

    move v3, v4

    move v4, v2

    move/from16 v2, v19

    move-object/from16 v19, v6

    .line 228
    .end local v6    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .local v2, "prevCoordX":F
    .local v3, "prevCoordY":F
    .restart local v4    # "coordX":F
    .local v5, "coordY":F
    .local v19, "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    :goto_1
    move v1, v4

    .line 229
    .end local v2    # "prevCoordX":F
    .local v1, "prevCoordX":F
    move v2, v5

    .line 230
    .end local v3    # "prevCoordY":F
    .local v2, "prevCoordY":F
    int-to-float v3, v14

    .line 231
    .end local v4    # "coordX":F
    .end local v5    # "coordY":F
    .end local v14    # "age":I
    .end local v15    # "pos":F
    .end local v16    # "prevAge":F
    .end local v19    # "value":Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .local v3, "prevAge":F
    move/from16 v16, v3

    move/from16 v14, v17

    move-object/from16 v15, v18

    move-wide/from16 v2, v21

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 195
    .end local v1    # "prevCoordX":F
    .end local v3    # "prevAge":F
    .end local v18    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    .end local v21    # "mostRecentTime":J
    .local v2, "mostRecentTime":J
    .local v4, "prevCoordX":F
    .local v5, "prevCoordY":F
    .local v15, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    .restart local v16    # "prevAge":F
    :cond_3
    nop

    .line 232
    .end local v15    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;>;"
    return-void
.end method
