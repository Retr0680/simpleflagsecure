.class public Lcom/android/server/input/debug/TouchpadVisualizationView;
.super Landroid/view/View;
.source "TouchpadVisualizationView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final DEFAULT_RES_X:F = 47.0f

.field private static final DEFAULT_RES_Y:F = 45.0f

.field private static final MAX_TRACE_HISTORY_DURATION_SECONDS:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "TouchpadVizMain"


# instance fields
.field private final mCenterPointPaint:Landroid/graphics/Paint;

.field private final mHardwareStateHistory:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/input/TouchpadHardwareState;",
            ">;"
        }
    .end annotation
.end field

.field private final mOvalFillPaint:Landroid/graphics/Paint;

.field private final mOvalStrokePaint:Landroid/graphics/Paint;

.field private final mPressureTextPaint:Landroid/graphics/Paint;

.field private mScaleFactor:F

.field private final mTempFingerStatesByTrackingId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/input/TouchpadFingerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempOvalRect:Landroid/graphics/RectF;

.field private final mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

.field private final mTracePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/TouchpadHardwareProperties;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "touchpadHardwareProperties"    # Lcom/android/server/input/TouchpadHardwareProperties;

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    .line 60
    iput-object p2, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    .line 63
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    .line 68
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v0, v3, v2, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 75
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 96
    invoke-virtual {p1, p6, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 97
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 98
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 99
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 100
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 101
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempOvalRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 104
    return-void
.end method

.method private logFingerTrace()V
    .locals 7

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchpadVizMain"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 267
    .local v4, "tfs":Lcom/android/server/input/TouchpadFingerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v4    # "tfs":Lcom/android/server/input/TouchpadFingerState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method private logHardwareState(Lcom/android/server/input/TouchpadHardwareState;)V
    .locals 7
    .param p1, "schs"    # Lcom/android/server/input/TouchpadHardwareState;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyTouchpadHardwareState: Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", No. Buttons: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getButtonsDown()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", No. Fingers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", No. Touch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getTouchCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v1, "TouchpadVizMain"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 252
    .local v4, "finger":Lcom/android/server/input/TouchpadFingerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finger #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": touchMajor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", touchMinor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", widthMajor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getWidthMajor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", widthMinor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getWidthMinor()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", pressure= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", orientation= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", positionX= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", positionY= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v4    # "finger":Lcom/android/server/input/TouchpadFingerState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method private removeOldPoints()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v0

    .line 83
    .local v0, "latestTimestamp":F
    :goto_0
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/TouchpadHardwareState;

    .line 85
    .local v1, "oldestPoint":Lcom/android/server/input/TouchpadHardwareState;
    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareState;->getTimestamp()F

    move-result v2

    sub-float v2, v0, v2

    .line 86
    .local v2, "onScreenTime":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 91
    .end local v1    # "oldestPoint":Lcom/android/server/input/TouchpadHardwareState;
    .end local v2    # "onScreenTime":F
    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private translateRange(FFFFF)F
    .locals 2
    .param p1, "rangeBeforeMin"    # F
    .param p2, "rangeBeforeMax"    # F
    .param p3, "rangeAfterMin"    # F
    .param p4, "rangeAfterMax"    # F
    .param p5, "value"    # F

    .line 240
    sub-float v0, p5, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method private translateX(F)F
    .locals 7
    .param p1, "x"    # F

    .line 229
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getLeft()F

    move-result v2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 230
    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getRight()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 229
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    .end local p1    # "x":F
    .local v6, "x":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result p1

    return p1
.end method

.method private translateY(F)F
    .locals 7
    .param p1, "y"    # F

    .line 234
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getTop()F

    move-result v2

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    .line 235
    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareProperties;->getBottom()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 234
    const/4 v4, 0x0

    move-object v1, p0

    move v6, p1

    .end local p1    # "y":F
    .local v6, "y":F
    invoke-direct/range {v1 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/input/TouchpadHardwareState;

    .line 114
    .local v7, "latestHardwareState":Lcom/android/server/input/TouchpadHardwareState;
    const/4 v1, 0x0

    .line 115
    .local v1, "maximumPressure":F
    invoke-virtual {v7}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v2

    array-length v3, v2

    move v6, v1

    const/4 v1, 0x0

    .end local v1    # "maximumPressure":F
    .local v6, "maximumPressure":F
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 116
    .local v4, "touchpadFingerState":Lcom/android/server/input/TouchpadFingerState;
    invoke-virtual {v4}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 115
    .end local v4    # "touchpadFingerState":Lcom/android/server/input/TouchpadFingerState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v7}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    .line 121
    .local v12, "touchpadFingerState":Lcom/android/server/input/TouchpadFingerState;
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v13

    .line 123
    .local v13, "newX":F
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v14

    .line 125
    .local v14, "newY":F
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getOrientationMaximum()F

    move-result v2

    .line 126
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getOrientation()F

    move-result v5

    .line 125
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result v15

    .line 128
    .local v15, "newAngle":F
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/high16 v1, 0x423c0000    # 47.0f

    goto :goto_2

    .line 129
    :cond_2
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResX()F

    move-result v1

    :goto_2
    move/from16 v16, v1

    .line 130
    .local v16, "resX":F
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    const/high16 v1, 0x42340000    # 45.0f

    goto :goto_3

    .line 131
    :cond_3
    iget-object v1, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTouchpadHardwareProperties:Lcom/android/server/input/TouchpadHardwareProperties;

    invoke-virtual {v1}, Lcom/android/server/input/TouchpadHardwareProperties;->getResY()F

    move-result v1

    :goto_3
    move/from16 v17, v1

    .line 133
    .local v17, "resY":F
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getTouchMajor()F

    move-result v1

    iget v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float v18, v1, v17

    .line 134
    .local v18, "newTouchMajor":F
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getTouchMinor()F

    move-result v1

    iget v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    mul-float/2addr v1, v2

    div-float v19, v1, v16

    .line 136
    .local v19, "newTouchMinor":F
    nop

    .line 137
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v5

    .line 136
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    move v2, v6

    .end local v6    # "maximumPressure":F
    .local v2, "maximumPressure":F
    invoke-direct/range {v0 .. v5}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateRange(FFFFF)F

    move-result v1

    .line 138
    move/from16 v20, v2

    .end local v2    # "maximumPressure":F
    .local v1, "pressureToOpacity":F
    .local v20, "maximumPressure":F
    iget-object v2, v0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    float-to-int v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    move v2, v13

    move v3, v14

    move v6, v15

    move/from16 v4, v18

    move/from16 v5, v19

    move v13, v1

    move-object/from16 v1, p1

    .end local v1    # "pressureToOpacity":F
    .end local v14    # "newY":F
    .end local v15    # "newAngle":F
    .end local v18    # "newTouchMajor":F
    .end local v19    # "newTouchMinor":F
    .local v2, "newX":F
    .local v3, "newY":F
    .local v4, "newTouchMajor":F
    .local v5, "newTouchMinor":F
    .local v6, "newAngle":F
    .local v13, "pressureToOpacity":F
    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/debug/TouchpadVisualizationView;->drawOval(Landroid/graphics/Canvas;FFFFF)V

    .line 142
    move/from16 v22, v6

    move-object v6, v0

    move-object v0, v1

    move/from16 v1, v22

    .end local v6    # "newAngle":F
    .local v1, "newAngle":F
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    .line 143
    invoke-virtual {v12}, Lcom/android/server/input/TouchpadFingerState;->getPressure()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    .line 142
    const-string v8, "Ps: %.2f"

    invoke-static {v14, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "formattedPressure":Ljava/lang/String;
    iget-object v14, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 146
    .local v14, "textWidth":F
    const/high16 v15, 0x40000000    # 2.0f

    div-float v19, v14, v15

    move/from16 v21, v15

    sub-float v15, v2, v19

    div-float v19, v4, v21

    move/from16 v21, v1

    .end local v1    # "newAngle":F
    .local v21, "newAngle":F
    sub-float v1, v3, v19

    move/from16 v19, v2

    .end local v2    # "newX":F
    .local v19, "newX":F
    iget-object v2, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    .end local v3    # "newY":F
    .end local v4    # "newTouchMajor":F
    .end local v5    # "newTouchMinor":F
    .end local v8    # "formattedPressure":Ljava/lang/String;
    .end local v12    # "touchpadFingerState":Lcom/android/server/input/TouchpadFingerState;
    .end local v13    # "pressureToOpacity":F
    .end local v14    # "textWidth":F
    .end local v16    # "resX":F
    .end local v17    # "resY":F
    .end local v19    # "newX":F
    .end local v21    # "newAngle":F
    add-int/lit8 v11, v11, 0x1

    move-object v0, v6

    move/from16 v6, v20

    goto/16 :goto_1

    .line 150
    .end local v20    # "maximumPressure":F
    .local v6, "maximumPressure":F
    :cond_4
    move/from16 v20, v6

    move-object v6, v0

    move-object/from16 v0, p1

    .end local v6    # "maximumPressure":F
    .restart local v20    # "maximumPressure":F
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 153
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/input/TouchpadHardwareState;

    .line 154
    .local v9, "currentHardwareState":Lcom/android/server/input/TouchpadHardwareState;
    invoke-virtual {v9}, Lcom/android/server/input/TouchpadHardwareState;->getFingerStates()[Lcom/android/server/input/TouchpadFingerState;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    :goto_5
    nop

    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 155
    .local v13, "currentFingerState":Lcom/android/server/input/TouchpadFingerState;
    iget-object v1, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTempFingerStatesByTrackingId:Ljava/util/Map;

    .line 156
    invoke-virtual {v13}, Lcom/android/server/input/TouchpadFingerState;->getTrackingId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/input/TouchpadFingerState;

    .line 158
    .local v14, "prevFingerState":Lcom/android/server/input/TouchpadFingerState;
    if-nez v14, :cond_5

    .line 159
    goto :goto_6

    .line 162
    :cond_5
    invoke-virtual {v13}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v1

    invoke-direct {v6, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v3

    .line 163
    .local v3, "currentX":F
    invoke-virtual {v13}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v1

    invoke-direct {v6, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v4

    .line 164
    .local v4, "currentY":F
    invoke-virtual {v14}, Lcom/android/server/input/TouchpadFingerState;->getPositionX()F

    move-result v1

    invoke-direct {v6, v1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateX(F)F

    move-result v1

    .line 165
    .local v1, "prevX":F
    invoke-virtual {v14}, Lcom/android/server/input/TouchpadFingerState;->getPositionY()F

    move-result v2

    invoke-direct {v6, v2}, Lcom/android/server/input/debug/TouchpadVisualizationView;->translateY(F)F

    move-result v2

    .line 167
    .local v2, "prevY":F
    iget-object v5, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mTracePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget-object v5, v6, Lcom/android/server/input/debug/TouchpadVisualizationView;->mCenterPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 154
    .end local v1    # "prevX":F
    .end local v2    # "prevY":F
    .end local v3    # "currentX":F
    .end local v4    # "currentY":F
    .end local v13    # "currentFingerState":Lcom/android/server/input/TouchpadFingerState;
    .end local v14    # "prevFingerState":Lcom/android/server/input/TouchpadFingerState;
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 170
    .end local v9    # "currentHardwareState":Lcom/android/server/input/TouchpadHardwareState;
    :cond_6
    goto :goto_4

    .line 171
    :cond_7
    return-void
.end method

.method public onTouchpadHardwareStateNotified(Lcom/android/server/input/TouchpadHardwareState;)V
    .locals 1
    .param p1, "schs"    # Lcom/android/server/input/TouchpadHardwareState;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/input/debug/TouchpadVisualizationView;->logHardwareState(Lcom/android/server/input/TouchpadHardwareState;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/TouchpadHardwareState;

    invoke-virtual {v0}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Lcom/android/server/input/TouchpadHardwareState;->getFingerCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mHardwareStateHistory:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->removeOldPoints()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/input/debug/TouchpadVisualizationView;->logFingerTrace()V

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 197
    return-void
.end method

.method public setLightModeTheme()V
    .locals 2

    .line 212
    const/16 v0, 0x14

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 214
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 215
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 216
    return-void
.end method

.method public setNightModeTheme()V
    .locals 3

    .line 222
    const/16 v0, 0xf0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 223
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mPressureTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 224
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 225
    iget-object v0, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mOvalStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 226
    return-void
.end method

.method public updateScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .line 205
    iput p1, p0, Lcom/android/server/input/debug/TouchpadVisualizationView;->mScaleFactor:F

    .line 206
    return-void
.end method
