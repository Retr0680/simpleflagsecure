.class Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;
.super Ljava/lang/Object;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigOverrideHint"
.end annotation


# instance fields
.field mParentAppBoundsOverride:Landroid/graphics/Rect;

.field mParentBoundsOverride:Landroid/graphics/Rect;

.field mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field mTmpOverrideConfigOrientation:I

.field mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field mUseOverrideInsetsForConfig:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetTmpOverrides()V
    .locals 1

    .line 2598
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 2599
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 2600
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2601
    return-void
.end method

.method resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;)V
    .locals 11
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "parentConfig"    # Landroid/content/res/Configuration;
    .param p3, "isFixedRotationTransforming"    # Z
    .param p4, "safeRegionBounds"    # Landroid/graphics/Rect;

    .line 2564
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2565
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 2566
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2567
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 2568
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2569
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 2570
    .local v0, "insets":Landroid/graphics/Insets;
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p4, :cond_3

    .line 2572
    nop

    .line 2573
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 2574
    move v1, v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_8

    .line 2575
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2576
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2580
    iget-object v3, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 2581
    .local v3, "rotation":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    if-nez p3, :cond_4

    .line 2582
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    .line 2584
    :cond_4
    if-eq v3, v2, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    :goto_3
    move v4, v2

    .line 2585
    .local v4, "rotated":Z
    :goto_4
    if-eqz v4, :cond_7

    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_5

    :cond_7
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 2586
    .local v5, "dw":I
    :goto_5
    if-eqz v4, :cond_8

    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_6

    :cond_8
    iget v6, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 2587
    .local v6, "dh":I
    :goto_6
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v7

    .line 2588
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/server/wm/DisplayPolicy;->getDecorInsetsInfo(III)Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;

    move-result-object v7

    .line 2589
    .local v7, "decorInsets":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    iget-object v8, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideConfigFrame:Landroid/graphics/Rect;

    .line 2590
    .local v8, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-le v9, v10, :cond_9

    .line 2591
    goto :goto_7

    :cond_9
    move v1, v2

    :goto_7
    iput v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    .line 2592
    iget-object v1, v7, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;->mOverrideNonDecorInsets:Landroid/graphics/Rect;

    invoke-static {v1}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    .line 2594
    .end local v3    # "rotation":I
    .end local v4    # "rotated":Z
    .end local v5    # "dw":I
    .end local v6    # "dh":I
    .end local v7    # "decorInsets":Lcom/android/server/wm/DisplayPolicy$DecorInsets$Info;
    .end local v8    # "stableBounds":Landroid/graphics/Rect;
    :cond_a
    :goto_8
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2595
    return-void
.end method
