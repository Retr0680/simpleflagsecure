.class Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatSizeCompatModePolicy.java"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field private final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field private mInSizeCompatModeForBounds:Z

.field private mSizeCompatBounds:Landroid/graphics/Rect;

.field private mSizeCompatScale:F


# direct methods
.method public static synthetic $r8$lambda$DB1xiXDatdealGYmVyfNK1FWtH8(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HeRz3r9TstDN3ctZMaGIi9JNjrY(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Float;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->lambda$updateSizeCompatScale$0(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V
    .locals 1
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "appCompatOverrides"    # Lcom/android/server/wm/AppCompatOverrides;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 74
    return-void
.end method

.method private calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F
    .locals 8
    .param p1, "resolvedAppBounds"    # Landroid/graphics/Rect;
    .param p2, "containerAppBounds"    # Landroid/graphics/Rect;
    .param p3, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 582
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 583
    .local v0, "contentW":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 584
    .local v1, "contentH":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 585
    .local v2, "viewportW":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 588
    .local v3, "viewportH":I
    if-gt v0, v2, :cond_1

    if-gt v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 590
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v5

    .line 589
    invoke-static {v4, v5}, Lcom/android/server/wm/AppCompatUtils;->isInDesktopMode(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    nop

    .line 591
    .local v4, "shouldAllowUpscaling":Z
    if-eqz v4, :cond_2

    int-to-float v5, v2

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, v3

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_2

    .line 592
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 591
    :goto_2
    return v5
.end method

.method private clearOverrideConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 177
    .local v0, "activityType":I
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 178
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 181
    iget-object v2, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 182
    return-object v1
.end method

.method private isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 11
    .param p1, "appBounds"    # Landroid/graphics/Rect;
    .param p2, "containerBounds"    # Landroid/graphics/Rect;

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 534
    return v1

    .line 536
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 537
    .local v0, "appWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 538
    .local v2, "appHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 539
    .local v3, "containerAppWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 541
    .local v4, "containerAppHeight":I
    if-ne v3, v0, :cond_1

    if-ne v4, v2, :cond_1

    .line 543
    return v1

    .line 545
    :cond_1
    const/4 v5, 0x1

    if-le v3, v0, :cond_2

    if-le v4, v2, :cond_2

    .line 547
    return v5

    .line 549
    :cond_2
    if-lt v3, v0, :cond_3

    if-ge v4, v2, :cond_4

    :cond_3
    goto :goto_0

    .line 556
    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v6

    .line 557
    .local v6, "maxAspectRatio":F
    const/4 v7, 0x0

    cmpl-float v8, v6, v7

    const/high16 v9, 0x3f000000    # 0.5f

    if-lez v8, :cond_5

    .line 558
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    .line 559
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 560
    .local v8, "aspectRatio":F
    cmpl-float v10, v8, v6

    if-ltz v10, :cond_5

    .line 562
    return v1

    .line 565
    .end local v8    # "aspectRatio":F
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v8

    .line 566
    .local v8, "minAspectRatio":F
    cmpl-float v7, v8, v7

    if-lez v7, :cond_6

    .line 569
    nop

    .line 570
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v9

    .line 571
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    .line 572
    .local v7, "containerAspectRatio":F
    cmpg-float v9, v7, v8

    if-gtz v9, :cond_6

    .line 574
    return v1

    .line 577
    .end local v7    # "containerAspectRatio":F
    :cond_6
    return v5

    .line 551
    .end local v6    # "maxAspectRatio":F
    .end local v8    # "minAspectRatio":F
    :goto_0
    return v5
.end method

.method private static synthetic lambda$updateSizeCompatScale$0(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Float;
    .locals 2
    .param p0, "ar"    # Lcom/android/server/wm/ActivityRecord;

    .line 155
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getCompatScale()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .locals 1
    .param p1, "resolvedAppBounds"    # Landroid/graphics/Rect;
    .param p2, "containerAppBounds"    # Landroid/graphics/Rect;
    .param p3, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method alignToTopIfNeeded(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "parentBounds"    # Landroid/graphics/Rect;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 138
    :cond_0
    return-void
.end method

.method applyOffsetIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;II)Z
    .locals 3
    .param p1, "resolvedBounds"    # Landroid/graphics/Rect;
    .param p2, "resolvedConfig"    # Landroid/content/res/Configuration;
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 127
    .local v0, "dy":I
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 128
    .local v1, "dx":I
    invoke-static {p2, v1, v0}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 129
    const/4 v2, 0x1

    return v2

    .line 131
    .end local v0    # "dy":I
    .end local v1    # "dx":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method applySizeCompatScaleIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "resolvedBounds"    # Landroid/graphics/Rect;
    .param p2, "resolvedConfig"    # Landroid/content/res/Configuration;

    .line 142
    iget v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 143
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 144
    .local v0, "screenPosX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 145
    .local v1, "screenPosY":I
    int-to-float v2, v0

    iget v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v2, v0

    .line 146
    .local v2, "dx":I
    int-to-float v4, v1

    iget v5, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    div-float/2addr v4, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v3, v1

    .line 147
    .local v3, "dy":I
    invoke-static {p2, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 149
    .end local v0    # "screenPosX":I
    .end local v1    # "screenPosY":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_0
    return-void
.end method

.method clearSizeCompatMode()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 187
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    return-void
.end method

.method clearSizeCompatModeAttributes()V
    .locals 4

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 162
    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 163
    .local v1, "lastSizeCompatScale":F
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 164
    iget v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 168
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 169
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->clearInheritedAppCompatDisplayInsets()V

    .line 172
    return-void
.end method

.method clearSizeCompatModeIfNeededOnResolveOverrideConfiguration()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 196
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    .line 197
    return-void

    .line 193
    :goto_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 200
    iget v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSizeCompatScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mSizeCompatBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void
.end method

.method getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 101
    .local v0, "transparentPolicy":Lcom/android/server/wm/TransparentPolicy;
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-object v1
.end method

.method getAppSizeCompatBoundsIfAvailable(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "boundsWhenNotAvailable"    # Landroid/graphics/Rect;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method getCompatScaleIfAvailable(Ljava/util/function/DoubleSupplier;)F
    .locals 2
    .param p1, "scaleWhenNotAvailable"    # Ljava/util/function/DoubleSupplier;

    .line 108
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 108
    :goto_0
    return v0
.end method

.method hasAppCompatDisplayInsetsWithoutInheritance()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasSizeCompatBounds()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method inSizeCompatMode()Z
    .locals 7

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 422
    return v1

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 426
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 430
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 431
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-nez v0, :cond_2

    .line 433
    return v2

    .line 435
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 436
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-nez v3, :cond_3

    .line 438
    return v2

    .line 440
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 444
    .local v4, "parentConfig":Landroid/content/res/Configuration;
    iget v5, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v6, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v6, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    .line 427
    .end local v0    # "appBounds":Landroid/graphics/Rect;
    .end local v3    # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v4    # "parentConfig":Landroid/content/res/Configuration;
    :cond_5
    :goto_1
    return v2
.end method

.method isInSizeCompatModeForBounds()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    return v0
.end method

.method replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "resolvedBounds"    # Landroid/graphics/Rect;

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/AppCompatDisplayInsets;Landroid/graphics/Rect;)V
    .locals 25
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "appCompatDisplayInsets"    # Lcom/android/server/wm/AppCompatDisplayInsets;
    .param p3, "tmpBounds"    # Landroid/graphics/Rect;

    .line 212
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 213
    .local v9, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 217
    .local v10, "resolvedBounds":Landroid/graphics/Rect;
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNtPopUpView()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v19, 0x3f800000    # 1.0f

    goto/16 :goto_12

    .line 233
    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 234
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v13

    .line 235
    .local v13, "aspectRatioPolicy":Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    invoke-virtual {v13}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isAspectRatioApplied()Z

    move-result v14

    .line 236
    .local v14, "useResolvedBounds":Z
    if-eqz v14, :cond_1

    .line 237
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    :goto_0
    move-object v15, v3

    .line 239
    .local v15, "containerBounds":Landroid/graphics/Rect;
    if-eqz v14, :cond_2

    .line 240
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 241
    :cond_2
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v3, v3, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    :goto_1
    nop

    .line 243
    .local v3, "containerAppBounds":Landroid/graphics/Rect;
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v16

    .line 244
    .local v16, "requestedOrientation":I
    const/16 v17, 0x1

    if-eqz v16, :cond_3

    move/from16 v7, v17

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 245
    .local v7, "orientationRequested":Z
    :goto_2
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v5, :cond_4

    .line 246
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget v5, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_3

    .line 247
    :cond_4
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_3
    nop

    .line 248
    .local v5, "parentOrientation":I
    if-eqz v7, :cond_5

    .line 249
    move/from16 v6, v16

    goto :goto_4

    .line 252
    :cond_5
    iget v6, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v6, :cond_6

    .line 253
    iget v6, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    goto :goto_4

    .line 254
    :cond_6
    move v6, v5

    :goto_4
    nop

    .line 255
    .local v6, "orientation":I
    iget-object v8, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    .line 256
    .local v8, "rotation":I
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    nop

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 257
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v4, v17

    :goto_6
    nop

    .line 258
    .local v4, "isFixedToUserRotation":Z
    const/high16 v19, 0x3f800000    # 1.0f

    iget-object v11, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 259
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v11

    .line 262
    .local v11, "tasksAreFloating":Z
    if-nez v4, :cond_9

    if-nez v11, :cond_9

    .line 264
    iget-object v12, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12, v8}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_7

    .line 266
    :cond_9
    iget-object v12, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 267
    .local v12, "overrideRotation":I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_a

    .line 268
    move v8, v12

    .line 276
    .end local v12    # "overrideRotation":I
    :cond_a
    :goto_7
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 277
    .local v2, "containingAppBounds":Landroid/graphics/Rect;
    move v12, v5

    move v5, v8

    move v8, v4

    .end local v4    # "isFixedToUserRotation":Z
    .local v5, "rotation":I
    .local v8, "isFixedToUserRotation":Z
    .local v12, "parentOrientation":I
    move-object/from16 v4, p3

    .line 278
    .local v4, "containingBounds":Landroid/graphics/Rect;
    move/from16 v21, v11

    move v11, v12

    move-object v12, v3

    move-object v3, v2

    move-object/from16 v2, p2

    .end local v2    # "containingAppBounds":Landroid/graphics/Rect;
    .local v3, "containingAppBounds":Landroid/graphics/Rect;
    .local v11, "parentOrientation":I
    .local v12, "containerAppBounds":Landroid/graphics/Rect;
    .local v21, "tasksAreFloating":Z
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 280
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    move/from16 v22, v5

    .end local v5    # "rotation":I
    .local v22, "rotation":I
    iget-boolean v5, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-nez v5, :cond_b

    .line 283
    invoke-virtual {v13, v10, v3, v4}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 290
    :cond_b
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iput-object v2, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 291
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v9, v1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 293
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 294
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    move-object/from16 v23, v3

    .end local v3    # "containingAppBounds":Landroid/graphics/Rect;
    .local v23, "containingAppBounds":Landroid/graphics/Rect;
    iget v3, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 293
    invoke-static {v5, v2, v3}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    move-result v2

    iput v2, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 299
    iget v2, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v2, v3, :cond_c

    .line 300
    iput v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 322
    :cond_c
    iget-object v2, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 325
    .local v2, "resolvedAppBounds":Landroid/graphics/Rect;
    iget v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 326
    .local v3, "lastSizeCompatScale":F
    invoke-virtual {v0, v2, v12, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 329
    if-eqz v21, :cond_d

    const/4 v1, 0x0

    goto :goto_8

    .line 330
    :cond_d
    iget v5, v12, Landroid/graphics/Rect;->top:I

    iget v1, v15, Landroid/graphics/Rect;->top:I

    sub-int v1, v5, v1

    :goto_8
    nop

    .line 331
    .local v1, "containerTopInset":I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    move/from16 v24, v3

    .end local v3    # "lastSizeCompatScale":F
    .local v24, "lastSizeCompatScale":F
    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v3

    if-eq v1, v5, :cond_e

    goto :goto_9

    :cond_e
    const/16 v17, 0x0

    .line 333
    .local v17, "topNotAligned":Z
    :goto_9
    iget v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v3, v3, v19

    if-nez v3, :cond_f

    if-eqz v17, :cond_10

    :cond_f
    goto :goto_a

    .line 343
    :cond_10
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_b

    .line 334
    :goto_a
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_11

    .line 335
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 337
    :cond_11
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 338
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 339
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->scale(F)V

    .line 341
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 345
    :goto_b
    iget v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v3, v3, v24

    if-eqz v3, :cond_12

    .line 346
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v5, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>()V

    move/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "containerTopInset":I
    .local v20, "containerTopInset":I
    invoke-virtual {v3, v5, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_c

    .line 345
    .end local v20    # "containerTopInset":I
    .restart local v1    # "containerTopInset":I
    :cond_12
    move/from16 v20, v1

    .line 352
    .end local v1    # "containerTopInset":I
    .restart local v20    # "containerTopInset":I
    :goto_c
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 353
    .local v1, "fillContainer":Z
    if-eqz v1, :cond_13

    iget v3, v15, Landroid/graphics/Rect;->left:I

    goto :goto_d

    :cond_13
    iget v3, v12, Landroid/graphics/Rect;->left:I

    .line 354
    .local v3, "screenPosX":I
    :goto_d
    if-eqz v1, :cond_14

    iget v5, v15, Landroid/graphics/Rect;->top:I

    goto :goto_e

    :cond_14
    iget v5, v12, Landroid/graphics/Rect;->top:I

    .line 356
    .local v5, "screenPosY":I
    :goto_e
    if-nez v3, :cond_15

    if-eqz v5, :cond_16

    :cond_15
    goto :goto_f

    :cond_16
    move/from16 v18, v1

    move/from16 v19, v3

    goto :goto_11

    .line 357
    :goto_f
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 358
    move/from16 v18, v1

    .end local v1    # "fillContainer":Z
    .local v18, "fillContainer":Z
    iget-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_10

    .line 357
    .end local v18    # "fillContainer":Z
    .restart local v1    # "fillContainer":Z
    :cond_17
    move/from16 v18, v1

    .line 361
    .end local v1    # "fillContainer":Z
    .restart local v18    # "fillContainer":Z
    :goto_10
    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v1

    .line 362
    .local v1, "dx":I
    move/from16 v19, v3

    .end local v3    # "screenPosX":I
    .local v19, "screenPosX":I
    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v3

    .line 363
    .local v3, "dy":I
    invoke-static {v9, v1, v3}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 366
    .end local v1    # "dx":I
    .end local v3    # "dy":I
    :goto_11
    invoke-direct {v0, v2, v12}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 368
    return-void

    .line 217
    .end local v2    # "resolvedAppBounds":Landroid/graphics/Rect;
    .end local v4    # "containingBounds":Landroid/graphics/Rect;
    .end local v5    # "screenPosY":I
    .end local v6    # "orientation":I
    .end local v7    # "orientationRequested":Z
    .end local v8    # "isFixedToUserRotation":Z
    .end local v11    # "parentOrientation":I
    .end local v12    # "containerAppBounds":Landroid/graphics/Rect;
    .end local v13    # "aspectRatioPolicy":Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    .end local v14    # "useResolvedBounds":Z
    .end local v15    # "containerBounds":Landroid/graphics/Rect;
    .end local v16    # "requestedOrientation":I
    .end local v17    # "topNotAligned":Z
    .end local v18    # "fillContainer":Z
    .end local v19    # "screenPosX":I
    .end local v20    # "containerTopInset":I
    .end local v21    # "tasksAreFloating":Z
    .end local v22    # "rotation":I
    .end local v23    # "containingAppBounds":Landroid/graphics/Rect;
    .end local v24    # "lastSizeCompatScale":F
    :cond_18
    const/high16 v19, 0x3f800000    # 1.0f

    .line 218
    :goto_12
    iget-boolean v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    if-eqz v1, :cond_19

    .line 219
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatMode()V

    .line 221
    :cond_19
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 222
    iput-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 223
    move/from16 v1, v19

    iput v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 224
    invoke-virtual {v9}, Landroid/content/res/Configuration;->unset()V

    .line 225
    return-void
.end method

.method setInSizeCompatModeForBounds(Z)V
    .locals 0
    .param p1, "inSizeCompatModeForBounds"    # Z

    .line 81
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 82
    return-void
.end method

.method shouldCreateAppCompatDisplayInsets()Z
    .locals 6

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 463
    return v1

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isNtPopUpView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    return v1

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 484
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 486
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 487
    .local v4, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_0
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v4, v5, :cond_4

    .line 488
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v5

    if-nez v5, :cond_4

    .line 491
    return v1

    .line 494
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 495
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v3

    .line 496
    .local v3, "aspectRatioPolicy":Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v4

    nop

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_5

    .line 497
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->hasFixedAspectRatio()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 504
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    nop

    .line 496
    :goto_1
    return v1

    .line 468
    .end local v0    # "tda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "aspectRatioPolicy":Lcom/android/server/wm/AppCompatAspectRatioPolicy;
    :pswitch_0
    return v1

    .line 470
    :pswitch_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method supportsSizeChanges()I
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    .line 513
    .local v0, "resizeOverrides":Lcom/android/server/wm/AppCompatResizeOverrides;
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceNonResizeApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    const/4 v1, 0x1

    return v1

    .line 517
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v1, :cond_1

    .line 518
    const/4 v1, 0x2

    return v1

    .line 521
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceResizeApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 522
    const/4 v1, 0x3

    return v1

    .line 525
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method updateAppCompatDisplayInsets()V
    .locals 7

    .line 372
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    nop

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 373
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 379
    .local v0, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 386
    .local v1, "fullConfig":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 387
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 388
    nop

    .line 398
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 399
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 403
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 402
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 407
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 410
    .local v2, "letterboxedContainerBounds":Landroid/graphics/Rect;
    new-instance v3, Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v6, v6, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    iput-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 414
    return-void

    .line 375
    .end local v0    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v1    # "fullConfig":Landroid/content/res/Configuration;
    .end local v2    # "letterboxedContainerBounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void
.end method

.method updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "resolvedAppBounds"    # Landroid/graphics/Rect;
    .param p2, "containerAppBounds"    # Landroid/graphics/Rect;
    .param p3, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>()V

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 158
    return-void
.end method
