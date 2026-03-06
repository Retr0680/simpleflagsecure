.class Lcom/android/server/wm/Watermark;
.super Ljava/lang/Object;
.source "Watermark.java"


# static fields
.field private static final TITLE:Ljava/lang/String; = "WatermarkSurface"


# instance fields
.field private final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field private final mDeltaX:I

.field private final mDeltaY:I

.field protected mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mText:Ljava/lang/String;

.field private final mTextHeight:I

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;[Ljava/lang/String;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "tokens"    # [Ljava/lang/String;
    .param p4, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 71
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "WatermarkSurface"

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v0

    .line 80
    .local v6, "builder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    aget-object v7, v3, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 81
    .local v7, "len":I
    and-int/lit8 v7, v7, -0x2

    .line 82
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_4

    .line 83
    aget-object v9, v3, v0

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 84
    .local v9, "c1":I
    aget-object v10, v3, v0

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 85
    .local v10, "c2":I
    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x41

    const/16 v14, 0x61

    if-lt v9, v14, :cond_0

    if-gt v9, v12, :cond_0

    add-int/lit8 v15, v9, -0x61

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .local v15, "c1":I
    goto :goto_1

    .line 86
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_0
    if-lt v9, v13, :cond_1

    if-gt v9, v11, :cond_1

    add-int/lit8 v15, v9, -0x41

    add-int/lit8 v15, v15, 0xa

    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    goto :goto_1

    .line 87
    .end local v15    # "c1":I
    .restart local v9    # "c1":I
    :cond_1
    add-int/lit8 v15, v9, -0x30

    .line 88
    .end local v9    # "c1":I
    .restart local v15    # "c1":I
    :goto_1
    if-lt v10, v14, :cond_2

    if-gt v10, v12, :cond_2

    add-int/lit8 v9, v10, -0x61

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .local v9, "c2":I
    goto :goto_2

    .line 89
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_2
    if-lt v10, v13, :cond_3

    if-gt v10, v11, :cond_3

    add-int/lit8 v9, v10, -0x41

    add-int/lit8 v9, v9, 0xa

    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    goto :goto_2

    .line 90
    .end local v9    # "c2":I
    .restart local v10    # "c2":I
    :cond_3
    add-int/lit8 v9, v10, -0x30

    .line 91
    .end local v10    # "c2":I
    .restart local v9    # "c2":I
    :goto_2
    mul-int/lit8 v10, v15, 0x10

    add-int/2addr v10, v9

    rsub-int v10, v10, 0xff

    int-to-char v10, v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    .end local v9    # "c2":I
    .end local v15    # "c1":I
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_4
    nop

    .line 93
    .end local v8    # "i":I
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    .line 98
    const/16 v8, 0x14

    const/4 v9, 0x1

    invoke-static {v3, v9, v9, v8, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v8

    .line 101
    .local v8, "fontSize":I
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v11, v8

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v11, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 105
    iget-object v10, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v10

    .line 106
    .local v10, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget-object v11, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    iget-object v12, v1, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    .line 107
    iget v11, v10, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v12, v10, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v11, v12

    iput v11, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    .line 109
    iget v11, v1, Lcom/android/server/wm/Watermark;->mTextWidth:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    invoke-static {v3, v12, v0, v11, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 111
    iget v11, v1, Lcom/android/server/wm/Watermark;->mTextHeight:I

    const/4 v12, 0x3

    mul-int/2addr v11, v12

    invoke-static {v3, v12, v0, v11, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    iput v11, v1, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 113
    const/4 v11, 0x4

    const/high16 v12, -0x50000000

    invoke-static {v3, v11, v0, v12, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v11

    .line 115
    .local v11, "shadowColor":I
    const/4 v12, 0x5

    const v13, 0x60ffffff

    invoke-static {v3, v12, v0, v13, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v12

    .line 117
    .local v12, "color":I
    const/4 v13, 0x6

    const/4 v14, 0x7

    invoke-static {v3, v13, v0, v14, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v13

    .line 119
    .local v13, "shadowRadius":I
    const/16 v14, 0x8

    invoke-static {v3, v14, v0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v14

    .line 121
    .local v14, "shadowDx":I
    const/16 v15, 0x9

    invoke-static {v3, v15, v0, v0, v2}, Lcom/android/server/wm/WindowManagerService;->getPropertyInt([Ljava/lang/String;IIILandroid/util/DisplayMetrics;)I

    move-result v15

    .line 124
    .local v15, "shadowDy":I
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v9, v13

    int-to-float v2, v14

    int-to-float v3, v15

    invoke-virtual {v0, v9, v2, v3, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 132
    const/4 v3, -0x3

    invoke-virtual {v0, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v5}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    move-object v2, v0

    .line 135
    const v0, 0xf4240

    invoke-virtual {v4, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v2, v4, v0, v5}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_3

    .line 140
    :catch_0
    move-exception v0

    .line 142
    :goto_3
    iput-object v2, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 143
    new-instance v0, Landroid/graphics/BLASTBufferQueue;

    const/4 v3, 0x1

    invoke-direct {v0, v5, v3}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 144
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v5, v1, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 146
    iget-object v0, v1, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    invoke-virtual {v0}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    .line 147
    return-void
.end method


# virtual methods
.method drawIfNeeded()V
    .locals 14

    .line 159
    iget-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 164
    .local v0, "dw":I
    iget v1, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 166
    .local v1, "dh":I
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 167
    iget-object v3, p0, Lcom/android/server/wm/Watermark;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 168
    const/4 v3, 0x0

    .line 170
    .local v3, "c":Landroid/graphics/Canvas;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 172
    goto :goto_0

    .line 171
    :catch_0
    move-exception v4

    .line 173
    :goto_0
    if-eqz v3, :cond_6

    .line 177
    iget-object v4, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/android/server/wm/Watermark;->overrideDrawContent(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 179
    return-void

    .line 183
    :cond_1
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 185
    iget v2, p0, Lcom/android/server/wm/Watermark;->mDeltaX:I

    .line 186
    .local v2, "deltaX":I
    iget v4, p0, Lcom/android/server/wm/Watermark;->mDeltaY:I

    .line 190
    .local v4, "deltaY":I
    iget v5, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v5, v0

    div-int/2addr v5, v2

    .line 191
    .local v5, "div":I
    iget v6, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v6, v0

    mul-int v7, v5, v2

    sub-int/2addr v6, v7

    .line 192
    .local v6, "rem":I
    div-int/lit8 v7, v2, 0x4

    .line 193
    .local v7, "qdelta":I
    if-lt v6, v7, :cond_2

    sub-int v8, v2, v7

    if-le v6, v8, :cond_3

    .line 194
    :cond_2
    div-int/lit8 v8, v2, 0x3

    add-int/2addr v2, v8

    .line 197
    :cond_3
    iget v8, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    neg-int v8, v8

    .line 198
    .local v8, "y":I
    iget v9, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    neg-int v9, v9

    .line 199
    .local v9, "x":I
    :cond_4
    :goto_1
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextHeight:I

    add-int/2addr v10, v1

    if-ge v8, v10, :cond_5

    .line 200
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mText:Ljava/lang/String;

    int-to-float v11, v9

    int-to-float v12, v8

    iget-object v13, p0, Lcom/android/server/wm/Watermark;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 201
    add-int/2addr v9, v2

    .line 202
    if-lt v9, v0, :cond_4

    .line 203
    iget v10, p0, Lcom/android/server/wm/Watermark;->mTextWidth:I

    add-int/2addr v10, v0

    sub-int/2addr v9, v10

    .line 204
    add-int/2addr v8, v4

    goto :goto_1

    .line 207
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/Watermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v10, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 209
    .end local v2    # "deltaX":I
    .end local v4    # "deltaY":I
    .end local v5    # "div":I
    .end local v6    # "rem":I
    .end local v7    # "qdelta":I
    .end local v8    # "y":I
    .end local v9    # "x":I
    :cond_6
    return-void
.end method

.method protected overrideDrawContent(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)Z
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "textPaint"    # Landroid/graphics/Paint;

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "dw"    # I
    .param p2, "dh"    # I
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 150
    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    if-eq v0, p2, :cond_1

    .line 151
    :cond_0
    iput p1, p0, Lcom/android/server/wm/Watermark;->mLastDW:I

    .line 152
    iput p2, p0, Lcom/android/server/wm/Watermark;->mLastDH:I

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/Watermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Watermark;->mDrawNeeded:Z

    .line 156
    :cond_1
    return-void
.end method
