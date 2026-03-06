.class Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;
    }
.end annotation


# static fields
.field private static final ASPECT_RATIO_ROUNDING_TOLERANCE:F = 0.005f


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

.field private final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 2
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transparentPolicy"    # Lcom/android/server/wm/TransparentPolicy;
    .param p3, "appCompatOverrides"    # Lcom/android/server/wm/AppCompatOverrides;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 75
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 76
    iput-object p3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 77
    new-instance v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    .line 78
    return-void
.end method

.method private applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .locals 20
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "containingAppBounds"    # Landroid/graphics/Rect;
    .param p3, "containingBounds"    # Landroid/graphics/Rect;
    .param p4, "desiredAspectRatio"    # F

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v4

    .line 308
    .local v4, "maxAspectRatio":F
    iget-object v5, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 309
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    iget-object v6, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 310
    .local v6, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v7

    .line 311
    .local v7, "minAspectRatio":F
    iget-object v8, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    .line 312
    .local v8, "organizedTf":Lcom/android/server/wm/TaskFragment;
    move/from16 v9, p4

    .line 313
    .local v9, "aspectRatioToApply":F
    if-eqz v6, :cond_13

    if-eqz v5, :cond_13

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v12, v4, v11

    if-gez v12, :cond_0

    cmpg-float v12, v7, v11

    if-gez v12, :cond_0

    cmpg-float v12, v9, v11

    if-ltz v12, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x0

    goto/16 :goto_6

    :goto_0
    iget-object v12, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 316
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v12

    if-nez v12, :cond_12

    if-eqz v8, :cond_3

    .line 319
    invoke-virtual {v8}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_3
    :goto_1
    sget-object v12, Landroid/window/DesktopModeFlags;->IGNORE_ASPECT_RATIO_RESTRICTIONS_FOR_RESIZEABLE_FREEFORM_ACTIVITIES:Landroid/window/DesktopModeFlags;

    .line 328
    invoke-virtual {v12}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 329
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    const/4 v13, 0x5

    nop

    if-ne v12, v13, :cond_4

    iget-object v12, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 330
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v12

    nop

    if-nez v12, :cond_4

    iget-object v12, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 331
    invoke-static {v12}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    if-nez v12, :cond_4

    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x0

    goto/16 :goto_6

    .line 336
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 337
    .local v12, "containingAppWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 338
    .local v13, "containingAppHeight":I
    invoke-static {v2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v14

    .line 340
    .local v14, "containingRatio":F
    cmpg-float v15, v9, v11

    if-gez v15, :cond_5

    .line 341
    move v9, v14

    .line 344
    :cond_5
    cmpl-float v15, v4, v11

    if-ltz v15, :cond_6

    cmpl-float v15, v9, v4

    if-lez v15, :cond_6

    .line 345
    move v9, v4

    goto :goto_2

    .line 346
    :cond_6
    cmpl-float v11, v7, v11

    if-ltz v11, :cond_7

    cmpg-float v11, v9, v7

    if-gez v11, :cond_7

    .line 347
    move v9, v7

    .line 350
    :cond_7
    :goto_2
    move v11, v12

    .line 351
    .local v11, "activityWidth":I
    move v15, v13

    .line 353
    .local v15, "activityHeight":I
    sub-float v16, v14, v9

    const v17, 0x3ba3d70a    # 0.005f

    cmpl-float v16, v16, v17

    const/high16 v18, 0x3f000000    # 0.5f

    if-lez v16, :cond_9

    .line 354
    if-ge v12, v13, :cond_8

    .line 357
    const/16 v16, 0x0

    int-to-float v10, v11

    mul-float/2addr v10, v9

    add-float v10, v10, v18

    float-to-int v15, v10

    move/from16 v17, v4

    goto :goto_4

    .line 361
    :cond_8
    const/16 v16, 0x0

    int-to-float v10, v15

    mul-float/2addr v10, v9

    add-float v10, v10, v18

    float-to-int v11, v10

    move/from16 v17, v4

    goto :goto_4

    .line 363
    :cond_9
    const/16 v16, 0x0

    sub-float v10, v9, v14

    cmpl-float v10, v10, v17

    if-lez v10, :cond_c

    .line 365
    iget-object v10, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 379
    if-ge v12, v13, :cond_a

    .line 382
    const/4 v10, 0x1

    .local v10, "adjustWidth":Z
    goto :goto_3

    .line 386
    .end local v10    # "adjustWidth":Z
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "adjustWidth":Z
    goto :goto_3

    .line 369
    .end local v10    # "adjustWidth":Z
    :pswitch_0
    const/4 v10, 0x0

    .line 370
    .restart local v10    # "adjustWidth":Z
    goto :goto_3

    .line 374
    .end local v10    # "adjustWidth":Z
    :pswitch_1
    const/4 v10, 0x1

    .line 375
    .restart local v10    # "adjustWidth":Z
    nop

    .line 390
    :goto_3
    if-eqz v10, :cond_b

    .line 391
    move/from16 v17, v4

    .end local v4    # "maxAspectRatio":F
    .local v17, "maxAspectRatio":F
    int-to-float v4, v15

    div-float/2addr v4, v9

    add-float v4, v4, v18

    float-to-int v11, v4

    goto :goto_4

    .line 393
    .end local v17    # "maxAspectRatio":F
    .restart local v4    # "maxAspectRatio":F
    :cond_b
    move/from16 v17, v4

    .end local v4    # "maxAspectRatio":F
    .restart local v17    # "maxAspectRatio":F
    int-to-float v4, v11

    div-float/2addr v4, v9

    add-float v4, v4, v18

    float-to-int v15, v4

    goto :goto_4

    .line 363
    .end local v10    # "adjustWidth":Z
    .end local v17    # "maxAspectRatio":F
    .restart local v4    # "maxAspectRatio":F
    :cond_c
    move/from16 v17, v4

    .line 397
    .end local v4    # "maxAspectRatio":F
    .restart local v17    # "maxAspectRatio":F
    :goto_4
    if-gt v12, v11, :cond_d

    if-gt v13, v15, :cond_d

    .line 399
    return v16

    .line 409
    :cond_d
    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v11

    .line 410
    .local v4, "right":I
    iget v10, v2, Landroid/graphics/Rect;->left:I

    .line 411
    .local v10, "left":I
    move-object/from16 v18, v5

    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    .local v18, "rootTask":Lcom/android/server/wm/Task;
    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_e

    .line 412
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 413
    iget v10, v3, Landroid/graphics/Rect;->left:I

    .line 415
    :cond_e
    iget v5, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v15

    .line 416
    .local v5, "bottom":I
    move-object/from16 v19, v6

    .end local v6    # "task":Lcom/android/server/wm/Task;
    .local v19, "task":Lcom/android/server/wm/Task;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 417
    .local v6, "top":I
    move/from16 v16, v6

    .end local v6    # "top":I
    .local v16, "top":I
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_f

    .line 418
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 419
    iget v6, v3, Landroid/graphics/Rect;->top:I

    .end local v16    # "top":I
    .restart local v6    # "top":I
    goto :goto_5

    .line 417
    .end local v6    # "top":I
    .restart local v16    # "top":I
    :cond_f
    move/from16 v6, v16

    .line 421
    .end local v16    # "top":I
    .restart local v6    # "top":I
    :goto_5
    invoke-virtual {v1, v10, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    iget-object v2, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isForceFull()Z

    move-result v2

    nop

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 426
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 427
    :cond_10
    iget-object v2, v0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 430
    :cond_11
    const/4 v2, 0x1

    return v2

    .line 316
    .end local v10    # "left":I
    .end local v11    # "activityWidth":I
    .end local v12    # "containingAppWidth":I
    .end local v13    # "containingAppHeight":I
    .end local v14    # "containingRatio":F
    .end local v15    # "activityHeight":I
    .end local v17    # "maxAspectRatio":F
    .end local v18    # "rootTask":Lcom/android/server/wm/Task;
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .local v4, "maxAspectRatio":F
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    .local v6, "task":Lcom/android/server/wm/Task;
    :cond_12
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x0

    .end local v4    # "maxAspectRatio":F
    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "maxAspectRatio":F
    .restart local v18    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    goto :goto_6

    .line 313
    .end local v17    # "maxAspectRatio":F
    .end local v18    # "rootTask":Lcom/android/server/wm/Task;
    .end local v19    # "task":Lcom/android/server/wm/Task;
    .restart local v4    # "maxAspectRatio":F
    .restart local v5    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    :cond_13
    move/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    const/16 v16, 0x0

    .line 333
    .end local v4    # "maxAspectRatio":F
    .end local v5    # "rootTask":Lcom/android/server/wm/Task;
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .restart local v17    # "maxAspectRatio":F
    .restart local v18    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v19    # "task":Lcom/android/server/wm/Task;
    :goto_6
    return v16

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F
    .locals 2
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentBounds"    # Landroid/graphics/Rect;

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 91
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result v0

    .line 95
    .local v0, "letterboxAspectRatioOverride":F
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const v1, 0x3f8147ae    # 1.01f

    return v1

    .line 97
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 98
    return v0

    .line 100
    :cond_1
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v1

    return v1
.end method

.method private getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    return-object v0
.end method

.method private isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z
    .locals 4
    .param p1, "parentConfig"    # Landroid/content/res/Configuration;

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 440
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 441
    return v1

    .line 443
    :cond_0
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    .line 444
    .local v2, "windowingMode":I
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 444
    :goto_0
    return v1
.end method

.method private isParentFullscreenPortrait()Z
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 294
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 294
    :goto_0
    return v2
.end method


# virtual methods
.method applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "containingAppBounds"    # Landroid/graphics/Rect;
    .param p3, "containingBounds"    # Landroid/graphics/Rect;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    .line 115
    return-void
.end method

.method applyDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;
    .param p2, "parentBounds"    # Landroid/graphics/Rect;
    .param p3, "resolvedBounds"    # Landroid/graphics/Rect;
    .param p4, "containingBoundsWithInsets"    # Landroid/graphics/Rect;
    .param p5, "containingBounds"    # Landroid/graphics/Rect;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F

    move-result v0

    .line 107
    .local v0, "desiredAspectRatio":F
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-direct {p0, p3, p4, p5, v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    .line 109
    return-void
.end method

.method getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getMaxAspectRatio()F
    .locals 4

    .line 191
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMaxAspectRatio()F

    move-result v0

    return v0

    .line 196
    :cond_0
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_FORCE_FULL:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/INtForceFull;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 197
    invoke-interface {v0, v1}, Lcom/android/server/pm/INtForceFull;->overrideMaxAspectRatio(Landroid/content/pm/ActivityInfo;)F

    move-result v0

    .line 198
    .local v0, "overrideValue":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 199
    return v0

    .line 205
    :cond_1
    sget-object v1, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_NM_SERVICE:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v1}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/INtNotificationManagerService;

    .line 206
    invoke-interface {v1}, Lcom/android/server/notification/INtNotificationManagerService;->isHideNavBarInGestureMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 207
    return v2

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v1

    .line 211
    .local v1, "maxAspectRatio":F
    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    goto :goto_0

    .line 214
    :cond_4
    return v1

    .line 212
    :goto_0
    return v2
.end method

.method getMinAspectRatio()F
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMinAspectRatio()F

    move-result v0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 136
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/AppCompatCameraPolicy;->getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v1

    .line 138
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 137
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v1

    .line 143
    .local v1, "aspectRatioOverrides":Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result v2

    return v2

    .line 146
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    nop

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 147
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 148
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 149
    .local v2, "minAspectRatio":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    goto :goto_0

    .line 152
    :cond_4
    return v2

    .line 150
    :goto_0
    return v3

    .line 155
    .end local v2    # "minAspectRatio":F
    :cond_5
    const-wide/32 v2, 0xc2368d6

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    nop

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 157
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    .line 156
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 158
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2

    .line 161
    :cond_6
    const-wide/32 v2, 0xd0d1070

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 162
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isParentFullscreenPortrait()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2

    .line 168
    :cond_7
    const-wide/32 v2, 0xc6fb886

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 169
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result v2

    .line 170
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v3

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 173
    :cond_8
    const-wide/32 v2, 0xabf9183

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 174
    nop

    .line 175
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 174
    const v3, 0x3fe38e39

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 178
    :cond_9
    const-wide/32 v2, 0xabf91bd

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 179
    nop

    .line 180
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 179
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 183
    :cond_a
    const-wide/32 v2, 0x14ce0124

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 184
    nop

    .line 185
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 184
    const v3, 0x3faaaaab

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 187
    :cond_b
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2
.end method

.method hasFixedAspectRatio()Z
    .locals 2

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isAspectRatioApplied()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z

    move-result v0

    return v0
.end method

.method isLetterboxedForAspectRatioOnly()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForAspectRatioOnly()Z

    move-result v0

    return v0
.end method

.method isLetterboxedForFixedOrientationAndAspectRatio()Z
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    return v0
.end method

.method reset()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->reset()V

    .line 86
    return-void
.end method

.method resolveAspectRatioRestrictionIfNeeded(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 268
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v1, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 270
    .local v1, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v2, v2, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 271
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 274
    .local v3, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 275
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 281
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 285
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v5, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 286
    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 287
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 288
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V

    .line 290
    :cond_2
    return-void

    .line 265
    .end local v0    # "resolvedConfig":Landroid/content/res/Configuration;
    .end local v1    # "parentAppBounds":Landroid/graphics/Rect;
    .end local v2    # "parentBounds":Landroid/graphics/Rect;
    .end local v3    # "resolvedBounds":Landroid/graphics/Rect;
    :cond_3
    :goto_0
    return-void
.end method

.method setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    .line 244
    return-void
.end method

.method setLetterboxBoundsForFixedOrientationAndAspectRatio(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    .line 240
    return-void
.end method
