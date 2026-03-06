.class Lcom/android/server/wm/AppCompatDisplayInsets;
.super Ljava/lang/Object;
.source "AppCompatDisplayInsets.java"


# instance fields
.field private final mHeight:I

.field final mIsFloating:Z

.field final mIsInFixedOrientationOrAspectRatioLetterbox:Z

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mOriginalRequestedOrientation:I

.field final mOriginalRotation:I

.field final mStableInsets:[Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V
    .locals 16
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "container"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "letterboxedContainerBounds"    # Landroid/graphics/Rect;
    .param p4, "useOverrideInsets"    # Z

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v2, 0x4

    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 62
    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 67
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRotation:I

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    .line 70
    iget-boolean v3, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 72
    .local v3, "containerBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 73
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 76
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v5, "emptyRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, "rotation":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 78
    iget-object v7, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    .line 79
    iget-object v7, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 81
    .end local v6    # "rotation":I
    iput-boolean v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    .line 82
    return-void

    .line 85
    .end local v3    # "containerBounds":Landroid/graphics/Rect;
    .end local v5    # "emptyRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 87
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x1

    if-eqz p3, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    iput-boolean v6, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    .line 95
    iget-boolean v6, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v6, :cond_3

    .line 96
    move-object/from16 v6, p3

    goto :goto_2

    .line 97
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :goto_2
    nop

    .line 98
    .local v6, "filledContainerBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-eqz v7, :cond_5

    move v7, v5

    goto :goto_3

    :cond_5
    move v7, v4

    .line 100
    .local v7, "useActivityRotation":Z
    :goto_3
    if-eqz v7, :cond_6

    .line 101
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    goto :goto_4

    .line 102
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    :goto_4
    nop

    .line 103
    .local v8, "filledContainerRotation":I
    invoke-static {v6, v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v9

    .line 105
    .local v9, "dimensions":Landroid/graphics/Point;
    iget v10, v9, Landroid/graphics/Point;->x:I

    iput v10, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 106
    iget v10, v9, Landroid/graphics/Point;->y:I

    iput v10, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 110
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 111
    .local v10, "unfilledContainerBounds":Landroid/graphics/Rect;
    :goto_5
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v11

    .line 112
    .local v11, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v12, 0x0

    .local v12, "rotation":I
    :goto_6
    if-ge v12, v2, :cond_e

    .line 113
    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aput-object v14, v13, v12

    .line 114
    iget-object v13, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    aput-object v14, v13, v12

    .line 115
    if-eq v12, v5, :cond_8

    const/4 v13, 0x3

    if-ne v12, v13, :cond_9

    :cond_8
    goto :goto_7

    :cond_9
    move v13, v4

    goto :goto_8

    :goto_7
    move v13, v5

    .line 116
    .local v13, "rotated":Z
    :goto_8
    if-eqz v13, :cond_a

    iget v14, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_9

    :cond_a
    iget v14, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 117
    .local v14, "dw":I
    :goto_9
    if-eqz v13, :cond_b

    iget v15, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_a

    :cond_b
    iget v15, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 118
    .local v15, "dh":I
    :goto_a
    nop

    .line 119
    invoke-virtual {v11, v12, v14, v15}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v2

    .line 120
    .local v2, "decorInfo":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    if-eqz p4, :cond_c

    .line 121
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 122
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    .line 124
    :cond_c
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mConfigInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 125
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    iget-object v5, v2, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mNonDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 128
    :goto_b
    if-nez v10, :cond_d

    .line 129
    goto :goto_c

    .line 134
    :cond_d
    invoke-virtual {v10, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v1, v8, v12, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 139
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    invoke-static {v10, v14, v15, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 140
    iget-object v4, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v12

    invoke-static {v10, v14, v15, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 112
    .end local v2    # "decorInfo":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .end local v13    # "rotated":Z
    .end local v14    # "dw":I
    .end local v15    # "dh":I
    :goto_c
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    nop

    .line 142
    .end local v12    # "rotation":I
    return-void
.end method

.method private static getCenterOffset(II)I
    .locals 2
    .param p0, "viewportDim"    # I
    .param p1, "contentDim"    # I

    .line 232
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 152
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, "rotated":Z
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 154
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 155
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Point;

    if-eqz v0, :cond_2

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    return-object v3
.end method

.method private static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .locals 3
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "inset"    # Landroid/graphics/Rect;

    .line 164
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 165
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 166
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 167
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 168
    return-void
.end method


# virtual methods
.method getBoundsByRotation(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 171
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v1, v0

    .line 172
    .local v1, "rotated":Z
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    .line 173
    .local v2, "dw":I
    :goto_1
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    .line 174
    .local v3, "dh":I
    :goto_2
    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    return-void
.end method

.method getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 6
    .param p1, "outAppBounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "orientation"    # I
    .param p5, "orientationRequested"    # Z
    .param p6, "isFixedToUserRotation"    # Z

    .line 190
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/AppCompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 191
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 197
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 198
    .local v0, "dW":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 199
    .local v1, "dH":I
    nop

    .line 200
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    if-le v0, v1, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    .line 202
    .local v4, "isOrientationMismatched":Z
    :goto_2
    if-eqz v4, :cond_5

    if-eqz p6, :cond_5

    if-eqz p5, :cond_5

    .line 205
    const/4 v2, 0x2

    if-ne p4, v2, :cond_4

    .line 206
    int-to-float v2, v0

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    .line 207
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 209
    :cond_4
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 210
    int-to-float v2, v1

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p2, Landroid/graphics/Rect;->right:I

    .line 212
    :goto_3
    iget v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/AppCompatDisplayInsets;->getCenterOffset(II)I

    move-result v2

    invoke-virtual {p2, v2, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 214
    :cond_5
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 216
    if-eqz v4, :cond_7

    .line 220
    iget-object v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, p3

    .line 221
    .local v2, "insets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 222
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 223
    .end local v2    # "insets":Landroid/graphics/Rect;
    :cond_6
    goto :goto_4

    :cond_7
    const/4 v2, -0x1

    if-eq p3, v2, :cond_6

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, p3

    invoke-static {p1, p2, v2}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 228
    :goto_4
    return-void
.end method

.method getFrameByOrientation(Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 179
    iget v0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 180
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 181
    .local v1, "shortSide":I
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 182
    .local v2, "isLandscape":Z
    :goto_0
    if-eqz v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    .line 183
    :goto_1
    if-eqz v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v0

    .line 182
    :goto_2
    invoke-virtual {p1, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    return-void
.end method
