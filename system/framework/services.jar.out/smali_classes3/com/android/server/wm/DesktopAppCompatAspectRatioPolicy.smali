.class public Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "DesktopAppCompatAspectRatioPolicy.java"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field private final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field private final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V
    .locals 0
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "appCompatOverrides"    # Lcom/android/server/wm/AppCompatOverrides;
    .param p3, "transparentPolicy"    # Lcom/android/server/wm/TransparentPolicy;
    .param p4, "appCompatConfiguration"    # Lcom/android/server/wm/AppCompatConfiguration;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 63
    iput-object p2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 64
    iput-object p3, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 65
    iput-object p4, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 66
    return-void
.end method

.method private getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v0

    return v0

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDisplayAreaMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    return v0
.end method

.method private getDefaultMinAspectRatioForUnresizableApps(Lcom/android/server/wm/Task;)F
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 144
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v0

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    .line 144
    :goto_0
    return v0

    .line 150
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getSplitScreenAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    return v0
.end method

.method private getDisplayAreaMinAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 167
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 168
    .local v0, "displayArea":Lcom/android/server/wm/DisplayArea;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 169
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v2

    return v2
.end method

.method private getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatioForUnresizableApps(Lcom/android/server/wm/Task;)F

    move-result v0

    goto :goto_0

    .line 110
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    .line 108
    :goto_0
    return v0
.end method

.method private getMaxAspectRatio()F
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMaxAspectRatio()F

    move-result v0

    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    .line 248
    .local v0, "maxAspectRatio":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    goto :goto_0

    .line 251
    :cond_2
    return v0

    .line 249
    :goto_0
    return v1
.end method

.method private getMinAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMinAspectRatio()F

    move-result v0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 192
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 193
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v1

    .line 194
    .local v1, "aspectRatioOverrides":Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result v2

    return v2

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    nop

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 199
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 200
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 201
    .local v2, "minAspectRatio":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    goto :goto_0

    .line 204
    :cond_3
    return v2

    .line 202
    :goto_0
    return v3

    .line 207
    .end local v2    # "minAspectRatio":F
    :cond_4
    const-wide/32 v2, 0xc2368d6

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    nop

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 209
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    .line 208
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 210
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2

    .line 213
    :cond_5
    const-wide/32 v2, 0xd0d1070

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 214
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->isFullscreenPortrait(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 215
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2

    .line 218
    :cond_6
    const-wide/32 v2, 0xc6fb886

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result v2

    .line 220
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v3

    .line 219
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 223
    :cond_7
    const-wide/32 v2, 0xabf9183

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 224
    nop

    .line 225
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 224
    const v3, 0x3fe38e39

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 228
    :cond_8
    const-wide/32 v2, 0xabf91bd

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    nop

    .line 230
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 229
    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 233
    :cond_9
    const-wide/32 v2, 0x14ce0124

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 234
    nop

    .line 235
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    .line 234
    const v3, 0x3faaaaab

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 237
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v2

    return v2
.end method

.method private getSplitScreenAspectRatio(Lcom/android/server/wm/Task;)F
    .locals 8
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 119
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 120
    .local v0, "displayArea":Lcom/android/server/wm/DisplayArea;
    iget-object v1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105017e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 123
    .local v1, "dividerWindowWidth":I
    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105017d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 126
    .local v2, "dividerInsets":I
    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    .line 127
    .local v3, "dividerSize":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 128
    .local v4, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    if-lt v5, v6, :cond_0

    .line 129
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 130
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 132
    :cond_0
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 133
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 135
    :goto_0
    invoke-static {v4}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v5

    return v5
.end method

.method private isDefaultMultiWindowLetterboxAspectRatioDesired(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 177
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 178
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    .line 179
    .local v1, "windowingMode":I
    invoke-static {v1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 179
    :goto_0
    return v2
.end method

.method private isFullscreenPortrait(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 295
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 295
    :goto_0
    return v1
.end method

.method private shouldEnableUserAspectRatioSettings(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getAllowUserAspectRatioOverridePropertyValue()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 287
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 288
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    :goto_0
    return v0
.end method


# virtual methods
.method calculateAspectRatio(Lcom/android/server/wm/Task;Z)F
    .locals 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "hasOrientationMismatch"    # Z

    .line 73
    invoke-direct {p0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    .line 74
    .local v0, "maxAspectRatio":F
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v1

    .line 75
    .local v1, "minAspectRatio":F
    const/4 v2, 0x0

    .line 76
    .local v2, "desiredAspectRatio":F
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDesiredAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result v2

    .line 77
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_0

    cmpl-float v4, v2, v0

    if-lez v4, :cond_0

    .line 78
    move v2, v0

    goto :goto_0

    .line 79
    :cond_0
    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    .line 80
    move v2, v1

    .line 82
    :cond_1
    :goto_0
    return v2
.end method

.method getDesiredAspectRatio(Lcom/android/server/wm/Task;Z)F
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "hasOrientationMismatch"    # Z

    .line 91
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    .line 94
    .local v0, "letterboxAspectRatioOverride":F
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->isDefaultMultiWindowLetterboxAspectRatioDesired(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const v1, 0x3f8147ae    # 1.01f

    return v1

    .line 96
    :cond_0
    if-eqz p2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 98
    return v0

    .line 100
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v1

    return v1
.end method

.method hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldEnableUserAspectRatioSettings(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 267
    return v1

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v0

    .line 273
    .local v0, "userAspectRatioCode":I
    if-eqz v0, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
