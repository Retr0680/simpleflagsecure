.class public final Lcom/android/server/wm/DesktopModeBoundsCalculator;
.super Ljava/lang/Object;
.source "DesktopModeBoundsCalculator.java"


# static fields
.field public static final DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

.field public static final DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

.field public static final WINDOW_HEIGHT_PROPORTION:F = 0.375f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    nop

    .line 51
    const-string v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 52
    nop

    .line 53
    const-string v0, "persist.wm.debug.desktop_mode_landscape_app_padding"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;
    .locals 3
    .param p0, "screenBounds"    # Landroid/graphics/Rect;
    .param p1, "scale"    # F

    .line 315
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 316
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 317
    .local v1, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method private static calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;
    .locals 18
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "stableBounds"    # Landroid/graphics/Rect;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "shouldRespectOptionPosition"    # Z
    .param p5, "captionHeight"    # I

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 140
    .local v3, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 141
    .local v4, "screenBounds":Landroid/graphics/Rect;
    sget v5, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-static {v4, v5}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object v5

    .line 142
    .local v5, "idealSize":Landroid/util/Size;
    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_WINDOWING_DYNAMIC_INITIAL_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 143
    invoke-static {v5, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 145
    :cond_0
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-static {v5, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    .line 152
    :cond_1
    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 153
    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object v6

    .line 154
    .local v6, "desktopAppCompatAspectRatioPolicy":Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lt v7, v8, :cond_2

    .line 155
    move v7, v10

    goto :goto_0

    :cond_2
    move v7, v9

    .line 156
    .local v7, "stableBoundsOrientation":I
    :goto_0
    invoke-static {v1, v0, v7}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v8

    .line 160
    .local v8, "activityOrientation":I
    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    .line 161
    .local v10, "hasOrientationMismatch":Z
    :goto_1
    invoke-virtual {v6, v0, v10}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->calculateAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result v11

    .line 163
    .local v11, "appAspectRatio":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    .line 164
    .local v12, "tdaWidth":F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    .line 165
    .local v13, "tdaHeight":F
    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    packed-switch v7, :pswitch_data_0

    .line 219
    goto :goto_2

    .line 168
    :pswitch_0
    cmpl-float v9, v11, v15

    if-nez v9, :cond_4

    .line 169
    const/high16 v11, 0x3f800000    # 1.0f

    .line 171
    :cond_4
    invoke-static {v6, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 172
    if-eqz v10, :cond_5

    .line 175
    new-instance v9, Landroid/util/Size;

    div-float v15, v13, v11

    add-float/2addr v15, v14

    float-to-int v14, v15

    .line 176
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v9, v14, v15}, Landroid/util/Size;-><init>(II)V

    goto :goto_3

    .line 179
    :cond_5
    move-object v9, v5

    goto :goto_3

    .line 183
    :cond_6
    invoke-static {v8, v5, v11, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v9

    goto :goto_3

    .line 188
    :pswitch_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v16

    sget v17, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    mul-int/lit8 v17, v17, 0x2

    sub-int v9, v16, v17

    .line 190
    .local v9, "customPortraitWidthForLandscapeApp":I
    invoke-static {v6, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 191
    if-eqz v10, :cond_8

    .line 192
    cmpl-float v15, v11, v15

    if-nez v15, :cond_7

    .line 193
    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v15, v12, v15

    div-float v11, v12, v15

    .line 197
    :cond_7
    new-instance v15, Landroid/util/Size;

    div-float v16, v12, v11

    add-float v14, v16, v14

    float-to-int v14, v14

    invoke-direct {v15, v9, v14}, Landroid/util/Size;-><init>(II)V

    move-object v9, v15

    goto :goto_3

    .line 201
    :cond_8
    nop

    .line 219
    .end local v9    # "customPortraitWidthForLandscapeApp":I
    :goto_2
    move-object v9, v5

    goto :goto_3

    .line 203
    .restart local v9    # "customPortraitWidthForLandscapeApp":I
    :cond_9
    cmpl-float v14, v11, v15

    if-nez v14, :cond_a

    .line 204
    const/high16 v11, 0x3f800000    # 1.0f

    .line 206
    :cond_a
    if-eqz v10, :cond_b

    .line 210
    new-instance v14, Landroid/util/Size;

    .line 211
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v15

    invoke-direct {v14, v9, v15}, Landroid/util/Size;-><init>(II)V

    .line 210
    invoke-static {v8, v14, v11, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v14

    move-object v9, v14

    goto :goto_3

    .line 216
    :cond_b
    invoke-static {v8, v5, v11, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v14

    move-object v9, v14

    .line 219
    .end local v9    # "customPortraitWidthForLandscapeApp":I
    :goto_3
    nop

    .line 221
    .local v9, "initialSize":Landroid/util/Size;
    if-eqz p4, :cond_c

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v14

    move-object/from16 v15, p2

    invoke-static {v9, v15, v14}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    return-object v14

    .line 224
    :cond_c
    move-object/from16 v15, p2

    invoke-static {v9, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v14

    return-object v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p0, "desktopAppCompatAspectRatioPolicy"    # Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 234
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 234
    :goto_0
    return v0
.end method

.method static centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "desiredSize"    # Landroid/util/Size;
    .param p1, "screenBounds"    # Landroid/graphics/Rect;

    .line 326
    nop

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 328
    .local v0, "heightOffset":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 329
    .local v1, "widthOffset":I
    new-instance v2, Landroid/graphics/Rect;

    .line 330
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 331
    .local v2, "resultBounds":Landroid/graphics/Rect;
    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 332
    return-object v2
.end method

.method private static getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .locals 3
    .param p0, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "stableBoundsOrientation"    # I

    .line 241
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    .line 242
    .local v0, "activityOrientation":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 243
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object v1

    .line 244
    .local v1, "desktopAppCompatAspectRatioPolicy":Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_1

    .line 247
    :cond_0
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 253
    :cond_2
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, p2

    .line 253
    :goto_0
    return v2
.end method

.method private static maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;
    .locals 6
    .param p0, "orientation"    # I
    .param p1, "targetArea"    # Landroid/util/Size;
    .param p2, "aspectRatio"    # F
    .param p3, "captionHeight"    # I

    .line 269
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    .line 270
    .local v0, "targetHeight":I
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 273
    .local v1, "targetWidth":I
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 276
    int-to-float v2, v0

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 277
    .local v2, "tempWidth":I
    if-gt v2, v1, :cond_0

    .line 280
    move v3, v0

    .line 281
    .local v3, "finalHeight":I
    move v4, v2

    .local v4, "finalWidth":I
    goto :goto_0

    .line 286
    .end local v3    # "finalHeight":I
    .end local v4    # "finalWidth":I
    :cond_0
    move v4, v1

    .line 287
    .restart local v4    # "finalWidth":I
    int-to-float v3, v4

    mul-float/2addr v3, p2

    float-to-int v3, v3

    .line 289
    .end local v2    # "tempWidth":I
    .restart local v3    # "finalHeight":I
    :goto_0
    goto :goto_1

    .line 292
    .end local v3    # "finalHeight":I
    .end local v4    # "finalWidth":I
    :cond_1
    int-to-float v2, v0

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 293
    .restart local v2    # "tempWidth":I
    if-gt v2, v1, :cond_2

    .line 296
    move v3, v0

    .line 297
    .restart local v3    # "finalHeight":I
    move v4, v2

    .restart local v4    # "finalWidth":I
    goto :goto_1

    .line 302
    .end local v3    # "finalHeight":I
    .end local v4    # "finalWidth":I
    :cond_2
    move v4, v1

    .line 303
    .restart local v4    # "finalWidth":I
    int-to-float v3, v4

    div-float/2addr v3, p2

    float-to-int v3, v3

    .line 306
    .end local v2    # "tempWidth":I
    .restart local v3    # "finalHeight":I
    :goto_1
    new-instance v2, Landroid/util/Size;

    add-int v5, v3, p3

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method private static respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 10
    .param p0, "desiredSize"    # Landroid/util/Size;
    .param p1, "stableBounds"    # Landroid/graphics/Rect;
    .param p2, "optionBounds"    # Landroid/graphics/Rect;

    .line 343
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 344
    .local v0, "leftAligned":Z
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 345
    .local v1, "rightAligned":Z
    :goto_1
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 346
    .local v4, "topAligned":Z
    :goto_2
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 347
    .local v2, "bottomAligned":Z
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 349
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->left:I

    .line 352
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->top:I

    .line 353
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 349
    return-object v3

    .line 356
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 358
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 360
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->left:I

    .line 361
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 358
    return-object v3

    .line 365
    :cond_5
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    .line 367
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 368
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    .line 371
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 367
    return-object v3

    .line 374
    :cond_6
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 376
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->right:I

    .line 377
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    .line 378
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 376
    return-object v3

    .line 383
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3
.end method

.method static updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V
    .locals 16
    .param p0, "task"    # Lcom/android/server/wm/Task;
    .param p1, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Landroid/app/ActivityOptions;",
            "Lcom/android/server/wm/LaunchParamsController$LaunchParams;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p5, "logger":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .local v3, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 75
    const/4 v1, 0x1

    const/4 v4, 0x0

    nop

    if-eqz v2, :cond_0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 76
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    move v9, v5

    .line 79
    .local v9, "hasFullscreenOverride":Z
    if-eqz p3, :cond_1

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v9, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    move v10, v5

    .line 83
    .local v10, "updateOptionBoundsSize":Z
    nop

    nop

    if-eqz v10, :cond_2

    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_CASCADING_WINDOWS:Landroid/window/DesktopModeFlags;

    .line 84
    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    nop

    .line 85
    .local v5, "shouldRespectOptionPosition":Z
    if-eqz v2, :cond_3

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    iget-boolean v11, v2, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    .line 85
    invoke-static {v1, v6, v11}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I

    move-result v4

    :goto_3
    move v6, v4

    goto :goto_4

    :cond_3
    goto :goto_3

    :goto_4
    nop

    .line 89
    .local v6, "captionHeight":I
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v10, :cond_4

    .line 91
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inherit-from-options="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 93
    :cond_4
    const-string v11, "respecting option bounds cascaded position="

    if-eqz v0, :cond_8

    .line 94
    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v12, v1, 0x70

    .line 95
    .local v12, "verticalGravity":I
    iget v1, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v13, v1, 0x7

    .line 96
    .local v13, "horizontalGravity":I
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget v4, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 98
    invoke-static {v3, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object v4

    .line 97
    invoke-static {v3, v0, v1, v4}, Lcom/android/server/wm/LaunchParamsUtil;->calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V

    .line 99
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v12, v13, v1, v3}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 101
    const-string v1, "layout specifies sizes, inheriting size and applying gravity"

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_5

    .line 102
    :cond_5
    if-gtz v12, :cond_6

    if-lez v13, :cond_7

    .line 103
    :cond_6
    iget-object v14, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 105
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v12, v13, v1, v3}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 107
    const-string v1, "layout specifies gravity, applying desired bounds and gravity"

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 111
    .end local v12    # "verticalGravity":I
    .end local v13    # "horizontalGravity":I
    :cond_7
    :goto_5
    goto :goto_6

    .line 112
    :cond_8
    iget-object v12, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;ZI)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    const-string v1, "layout not specified, applying desired bounds"

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 118
    :goto_6
    if-eqz v10, :cond_9

    if-eqz v6, :cond_9

    .line 119
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 120
    iget-object v1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 121
    const-string v1, "excluding caption height from app bounds"

    invoke-interface {v8, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    :cond_9
    return-void
.end method
