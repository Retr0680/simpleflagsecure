.class Lcom/android/server/wm/RefreshRatePolicy;
.super Ljava/lang/Object;
.source "RefreshRatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;,
        Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;
    }
.end annotation


# static fields
.field static final LAYER_PRIORITY_FOCUSED_WITHOUT_MODE:I = 0x1

.field static final LAYER_PRIORITY_FOCUSED_WITH_MODE:I = 0x0

.field static final LAYER_PRIORITY_NOT_FOCUSED_WITH_MODE:I = 0x2

.field static final LAYER_PRIORITY_UNSET:I = -0x1


# instance fields
.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

.field private final mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

.field private final mLowRefreshRateMode:Landroid/view/Display$Mode;

.field private mMaxSupportedRefreshRate:F

.field private mMinSupportedRefreshRate:F

.field private final mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

.field private final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMaxSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinSupportedRefreshRate(Lcom/android/server/wm/RefreshRatePolicy;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;Lcom/android/server/wm/HighRefreshRateDenylist;)V
    .locals 2
    .param p1, "wmService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayInfo"    # Landroid/view/DisplayInfo;
    .param p3, "denylist"    # Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;-><init>(Lcom/android/server/wm/RefreshRatePolicy;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 95
    invoke-direct {p0, p2}, Lcom/android/server/wm/RefreshRatePolicy;->findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    .line 96
    iput-object p3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    new-instance v0, Lcom/android/server/wm/ForceRefreshRatePackageList;

    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/ForceRefreshRatePackageList;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    .line 101
    return-void
.end method

.method private findLowRefreshRateMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .locals 6
    .param p1, "displayInfo"    # Landroid/view/DisplayInfo;

    .line 108
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    .line 109
    .local v0, "defaultMode":Landroid/view/Display$Mode;
    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getDefaultRefreshRates()[F

    move-result-object v1

    .line 110
    .local v1, "refreshRates":[F
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v2

    .line 111
    .local v2, "bestRefreshRate":F
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 112
    iput v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 113
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 114
    iget v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    aget v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMinSupportedRefreshRate:F

    .line 115
    iget v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    aget v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/RefreshRatePolicy;->mMaxSupportedRefreshRate:F

    .line 117
    aget v4, v1, v3

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    aget v4, v1, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_0

    .line 118
    aget v2, v1, v3

    .line 113
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 121
    .end local v3    # "i":I
    invoke-virtual {p1, v2}, Landroid/view/DisplayInfo;->findDefaultModeByRefreshRate(F)Landroid/view/Display$Mode;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method addRefreshRateRangeForPackage(Ljava/lang/String;FF)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "minRefreshRate"    # F
    .param p3, "maxRefreshRate"    # F

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->add(Ljava/lang/String;FF)V

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 128
    return-void
.end method

.method calculatePriority(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 166
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    .line 167
    .local v0, "isFocused":Z
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RefreshRatePolicy;->getPreferredModeId(Lcom/android/server/wm/WindowState;)I

    move-result v1

    .line 169
    .local v1, "preferredModeId":I
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 170
    const/4 v2, 0x2

    return v2

    .line 172
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 173
    const/4 v2, 0x1

    return v2

    .line 175
    :cond_1
    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 176
    const/4 v2, 0x0

    return v2

    .line 178
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method getPreferredMaxRefreshRate(Lcom/android/server/wm/WindowState;)F
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 335
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 340
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMaxDisplayRefreshRate:F

    return v0

    .line 343
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v2

    .line 346
    .local v2, "range":Landroid/view/SurfaceControl$RefreshRateRange;
    if-eqz v2, :cond_3

    .line 347
    iget v1, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    return v1

    .line 350
    :cond_3
    return v1

    .line 336
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "range":Landroid/view/SurfaceControl$RefreshRateRange;
    :goto_0
    return v1
.end method

.method getPreferredMinRefreshRate(Lcom/android/server/wm/WindowState;)F
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 312
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimationRunningSelfOrParent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 317
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredMinDisplayRefreshRate:F

    return v0

    .line 320
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->get(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v2

    .line 325
    .local v2, "range":Landroid/view/SurfaceControl$RefreshRateRange;
    if-eqz v2, :cond_3

    .line 326
    iget v1, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    return v1

    .line 329
    :cond_3
    return v1

    .line 313
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "range":Landroid/view/SurfaceControl$RefreshRateRange;
    :goto_0
    return v1
.end method

.method getPreferredModeId(Lcom/android/server/wm/WindowState;)I
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 136
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 137
    .local v0, "preferredDisplayModeId":I
    if-gtz v0, :cond_0

    .line 139
    const/4 v1, 0x0

    return v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRateId(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "forceRefreshRateId":I
    if-lez v1, :cond_1

    .line 150
    return v1

    .line 154
    :cond_1
    return v0
.end method

.method removeRefreshRateRangeForPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mNonHighRefreshRatePackages:Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RefreshRatePolicy$PackageRefreshRate;->remove(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 133
    return-void
.end method

.method updateFrameRateVote(Lcom/android/server/wm/WindowState;)Z
    .locals 13
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/RefreshRatePolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 247
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateSwitchingType()I

    move-result v0

    .line 252
    .local v0, "refreshRateSwitchingType":I
    if-nez v0, :cond_0

    .line 253
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v1}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result v1

    return v1

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RefreshRatePolicy;->mForceList:Lcom/android/server/wm/ForceRefreshRatePackageList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ForceRefreshRatePackageList;->getForceRefreshRate(Ljava/lang/String;)F

    move-result v1

    .line 259
    .local v1, "forceRefreshRate":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/16 v4, 0x64

    const/4 v5, 0x1

    if-lez v3, :cond_1

    .line 261
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result v2

    return v2

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInsetsAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result v2

    return v2

    .line 276
    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    .line 277
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 278
    .local v7, "preferredModeId":I
    if-lez v7, :cond_4

    .line 279
    iget-object v8, p0, Lcom/android/server/wm/RefreshRatePolicy;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v8, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    array-length v9, v8

    move v10, v3

    :goto_0
    nop

    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 280
    .local v11, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v11}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    if-ne v7, v12, :cond_3

    .line 281
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v11}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result v2

    return v2

    .line 280
    :cond_3
    nop

    .line 279
    .end local v11    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 289
    .end local v7    # "preferredModeId":I
    :cond_4
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v2, v7, v2

    if-lez v2, :cond_5

    .line 290
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result v2

    return v2

    .line 297
    :cond_5
    if-eq v0, v6, :cond_6

    .line 298
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wm/RefreshRatePolicy;->mHighRefreshRateDenylist:Lcom/android/server/wm/HighRefreshRateDenylist;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/HighRefreshRateDenylist;->isDenylisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 300
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    iget-object v6, p0, Lcom/android/server/wm/RefreshRatePolicy;->mLowRefreshRateMode:Landroid/view/Display$Mode;

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->update(FII)Z

    move-result v3

    return v3

    .line 306
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_6
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrameRateVote:Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;

    invoke-virtual {v2}, Lcom/android/server/wm/RefreshRatePolicy$FrameRateVote;->reset()Z

    move-result v2

    return v2
.end method
