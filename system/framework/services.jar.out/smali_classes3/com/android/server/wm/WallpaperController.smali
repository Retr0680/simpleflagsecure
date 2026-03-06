.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLargestDisplaySize:Landroid/graphics/Point;

.field private mLastFrozen:Z

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperZoomOut:F

.field private mMaxWallpaperScale:F

.field private mMinWallpaperScale:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mShouldOffsetWallpaperCenter:Z

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Foys_2tpRO31MIGZTpXv0yRJ2NM(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$1(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hx8XkBssStE3IyUBABr4kxamAjk(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mGgSC2tR8xiTbib_tZYb3IIU2Ig(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$new$0(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 90
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 95
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 116
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 120
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 128
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 131
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 203
    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    .line 211
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 212
    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 213
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    .local v0, "resources":Landroid/content/res/Resources;
    nop

    .line 215
    const v1, 0x1050121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 216
    const v1, 0x1050120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 217
    const v1, 0x1110205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 219
    return-void
.end method

.method private canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "wallpaperWindowState"    # Lcom/android/server/wm/WindowState;

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WindowManager"

    if-nez v0, :cond_1

    .line 1016
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 1017
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    return v1

    .line 1022
    :cond_1
    if-nez p1, :cond_3

    .line 1023
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_2

    .line 1024
    const-string v0, "No visible wallpaper to screenshot"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_2
    return v1

    .line 1028
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private computeLastWallpaperZoomOut()V
    .locals 3

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1096
    return-void
.end method

.method private dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "valueName"    # Ljava/lang/String;
    .param p4, "value"    # F

    .line 1124
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NA"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1126
    return-void
.end method

.method private findLargestDisplaySize()Landroid/graphics/Point;
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method private findWallpaperTarget()V
    .locals 3

    .line 702
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 703
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    const/4 v1, 0x1

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 704
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 705
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->isRootTaskVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 711
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpapers()V

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_3

    .line 719
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 720
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v2, :cond_2

    .line 721
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    goto :goto_0

    .line 722
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    .line 720
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 719
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 724
    :cond_3
    return-void
.end method

.method private findWallpapers()V
    .locals 6

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 728
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 729
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->canShowWhenLocked()Z

    move-result v2

    .line 730
    .local v2, "canShowWhenLocked":Z
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_1
    if-ltz v3, :cond_3

    .line 731
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 732
    .local v4, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v5, v4, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v5, :cond_0

    goto :goto_2

    .line 733
    :cond_0
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_1

    .line 734
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopShowWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    goto :goto_2

    .line 735
    :cond_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v5

    if-nez v5, :cond_2

    .line 736
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopHideWhenLockedWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 730
    .end local v4    # "w":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 727
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v2    # "canShowWhenLocked":Z
    .end local v3    # "j":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 740
    .end local v0    # "i":I
    return-void
.end method

.method private getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I
    .locals 1
    .param p1, "availWidth"    # I
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "isRtl"    # Z

    .line 541
    iget-boolean v0, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method private getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-object v0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 520
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 521
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    .line 522
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-object v2
.end method

.method private getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .locals 3
    .param p1, "target"    # Lcom/android/server/wm/WindowState;

    .line 674
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 676
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    nop

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 677
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 675
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 678
    .local v1, "window":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BackNavigationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 761
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 132
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 136
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    const-string v3, "Win "

    const-string v4, "WindowManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": isOnScreen="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDrawState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_7

    .line 144
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v6}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    nop

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 148
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v6, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v6, v5

    :goto_1
    iput-boolean v6, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    goto/16 :goto_2

    .line 150
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v6}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    invoke-virtual {v2, v6}, Lcom/android/server/wm/TransitionController;->hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 154
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found keyguard as wallpaper target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 156
    return v1

    .line 158
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    nop

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 159
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 160
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v6}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    nop

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 161
    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->isInAodAppearTransition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 162
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found aod transition wallpaper target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 164
    return v5

    .line 168
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->isBackNavigationTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 169
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found back animation wallpaper target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 171
    return v5

    .line 172
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v2

    nop

    if-eqz v2, :cond_10

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_c

    .line 173
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_3
    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_3

    .line 174
    :goto_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found wallpaper target: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasWallpaperForLetterboxBackground()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setIsWallpaperTargetForLetterbox(Z)V

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_e

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 180
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": token animating, looking behind."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_e
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 188
    return v1

    .line 190
    :cond_f
    return v5

    .line 192
    :cond_10
    return v1
.end method

.method private synthetic lambda$new$1(Lcom/android/server/wm/WindowState;)V
    .locals 2
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 204
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    nop

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    .line 208
    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateWallpaperWindowsTarget$2(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "prevWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 825
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .line 616
    move/from16 v0, p6

    .line 617
    .local v0, "doWait":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 618
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/WallpaperWindowToken;

    .line 619
    .local v3, "token":Lcom/android/server/wm/WallpaperWindowToken;
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 617
    .end local v3    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 622
    .end local v1    # "curTokenNdx":I
    nop

    .line 625
    return-void
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 628
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 629
    .local v0, "target":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 630
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    move-object v0, p1

    .line 637
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v1

    .line 638
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    if-nez v1, :cond_1

    return-void

    .line 640
    :cond_1
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 641
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_0

    .line 642
    :cond_2
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 643
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 645
    :cond_3
    :goto_0
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_4

    .line 646
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_1

    .line 647
    :cond_4
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 648
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 650
    :cond_5
    :goto_1
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_6

    .line 651
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 652
    :cond_6
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v2, v4, :cond_7

    .line 653
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 655
    :cond_7
    :goto_2
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v2, v4, :cond_8

    .line 656
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 657
    :cond_8
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v2, v4, :cond_9

    .line 658
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 660
    :cond_9
    :goto_3
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    .line 661
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_4

    .line 662
    :cond_a
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    .line 663
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 665
    :cond_b
    :goto_4
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    .line 666
    iget v2, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    goto :goto_5

    .line 667
    :cond_c
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_d

    .line 668
    iget v2, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 670
    :cond_d
    :goto_5
    invoke-virtual {v1, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 671
    return-void
.end method

.method private updateWallpaperTokens(ZZ)V
    .locals 8
    .param p1, "visibility"    # Z
    .param p2, "keyguardLocked"    # Z

    .line 854
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    move v0, p1

    .local v0, "protoLogParam0":Z
    move v2, p2

    .local v2, "protoLogParam1":Z
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x39249a0d81e31e2L

    const/16 v7, 0xf

    invoke-static {v3, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 856
    .end local v0    # "protoLogParam0":Z
    .end local v2    # "protoLogParam1":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->getTopWallpaper(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 858
    .local v0, "topWallpaper":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    .line 859
    .local v2, "topWallpaperToken":Lcom/android/server/wm/WallpaperWindowToken;
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "curTokenNdx":I
    :goto_1
    if-ltz v3, :cond_3

    .line 860
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 861
    .local v4, "token":Lcom/android/server/wm/WallpaperWindowToken;
    if-eqz p1, :cond_2

    if-ne v4, v2, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    .line 859
    .end local v4    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    nop

    .line 863
    .end local v3    # "curTokenNdx":I
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 18
    .param p1, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 770
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v2, :cond_f

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v3, v2, :cond_0

    move/from16 v16, v6

    goto/16 :goto_6

    .line 793
    :cond_0
    sget-boolean v3, Landroid/os/Build;->DEBUG_NOTHING:Z

    const/4 v7, 0x5

    if-eqz v3, :cond_1

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New wallpaper target: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " prevTarget: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " caller="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    const-string v7, "WindowManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 797
    :cond_1
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam2":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    filled-new-array {v3, v8, v7}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v10, v11, v5, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 802
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v7    # "protoLogParam2":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_2
    :goto_0
    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 804
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 805
    .local v3, "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 807
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 808
    iget-object v7, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {v0, v7, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 810
    :cond_3
    if-eqz v2, :cond_4

    if-nez v3, :cond_5

    :cond_4
    goto/16 :goto_5

    .line 816
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v7

    .line 817
    .local v7, "oldAnim":Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    .line 818
    .local v8, "foundAnim":Z
    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    .local v10, "protoLogParam1":Ljava/lang/String;
    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v11, v12, v13, v5, v14}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 821
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    .end local v10    # "protoLogParam1":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_e

    if-nez v7, :cond_7

    move/from16 v17, v7

    goto/16 :goto_4

    .line 825
    :cond_7
    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v10, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v10, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-nez v9, :cond_8

    .line 826
    return-void

    .line 829
    :cond_8
    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v9, :cond_9

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 830
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v9

    if-nez v9, :cond_9

    move v9, v6

    goto :goto_1

    :cond_9
    move v9, v5

    :goto_1
    nop

    .line 831
    .local v9, "newTargetHidden":Z
    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    nop

    if-eqz v10, :cond_a

    iget-object v10, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 832
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_a

    move v10, v6

    goto :goto_2

    :cond_a
    move v10, v5

    :goto_2
    nop

    .line 834
    .local v10, "oldTargetHidden":Z
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v11, v11, v6

    if-eqz v11, :cond_b

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    move v12, v10

    .local v12, "protoLogParam1":Z
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam2":Ljava/lang/String;
    move v14, v9

    .local v14, "protoLogParam3":Z
    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 v16, v6

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v11, v6, v13, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    move/from16 v17, v7

    .end local v7    # "oldAnim":Z
    .local v17, "oldAnim":Z
    const/16 v7, 0xcc

    invoke-static {v15, v5, v6, v7, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3

    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":Z
    .end local v13    # "protoLogParam2":Ljava/lang/String;
    .end local v14    # "protoLogParam3":Z
    .end local v17    # "oldAnim":Z
    .restart local v7    # "oldAnim":Z
    :cond_b
    move/from16 v16, v6

    move/from16 v17, v7

    .line 838
    .end local v7    # "oldAnim":Z
    .restart local v17    # "oldAnim":Z
    :goto_3
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 840
    if-eqz v9, :cond_d

    if-nez v10, :cond_d

    .line 841
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v4, v4, v16

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x3c4cd0cffd3dc73cL    # -1.3823763990325996E18

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v5, v6, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 844
    :cond_c
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 847
    :cond_d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 848
    return-void

    .line 821
    .end local v9    # "newTargetHidden":Z
    .end local v10    # "oldTargetHidden":Z
    .end local v17    # "oldAnim":Z
    .restart local v7    # "oldAnim":Z
    :cond_e
    move/from16 v17, v7

    .line 822
    .end local v7    # "oldAnim":Z
    .restart local v17    # "oldAnim":Z
    :goto_4
    return-void

    .line 811
    .end local v8    # "foundAnim":Z
    .end local v17    # "oldAnim":Z
    :goto_5
    return-void

    .line 770
    .end local v3    # "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_f
    move/from16 v16, v6

    .line 773
    :goto_6
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_10

    .line 774
    return-void

    .line 778
    :cond_10
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_12

    .line 779
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v3, v3, v16

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    const/4 v7, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v4, v5, v11, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_7

    :cond_11
    const/4 v7, 0x0

    .line 780
    :goto_7
    iput-object v7, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 781
    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 783
    :cond_12
    return-void
.end method

.method private zoomOutToScale(F)F
    .locals 3
    .param p1, "zoomOut"    # F

    .line 1100
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 996
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 997
    return-void
.end method

.method adjustWallpaperWindows()V
    .locals 13

    .line 866
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 870
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget()V

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    .line 876
    .local v0, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 878
    .local v3, "visible":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 879
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 880
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    .line 881
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    .line 883
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 884
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    .line 885
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    .line 887
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_3

    .line 888
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    .line 890
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v4, v5, :cond_4

    .line 891
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v4, v0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    .line 895
    :cond_4
    move v4, v3

    .line 896
    .local v4, "visibleRequested":Z
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v5, :cond_6

    .line 897
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    move v4, v5

    .line 899
    :cond_6
    nop

    .line 900
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v5, :cond_7

    .line 901
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v5

    goto :goto_2

    .line 902
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v5

    .line 899
    :goto_2
    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(ZZ)V

    .line 904
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    int-to-long v5, v2

    .local v5, "protoLogParam0":J
    move v2, v3

    .local v2, "protoLogParam1":Z
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v7

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v7

    .local v7, "protoLogParam2":Z
    :goto_3
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, 0x66cfee6d654a358fL    # 1.736699569115551E187

    const/16 v12, 0x3d

    invoke-static {v8, v10, v11, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 911
    .end local v2    # "protoLogParam1":Z
    .end local v5    # "protoLogParam0":J
    .end local v7    # "protoLogParam2":Z
    :cond_9
    if-eqz v3, :cond_b

    iget-boolean v2, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v5, v5, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v2, v5, :cond_b

    .line 912
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    .line 913
    nop

    .line 914
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eqz v2, :cond_a

    const-string v2, "android.wallpaper.freeze"

    :goto_4
    move-object v6, v2

    goto :goto_5

    :cond_a
    const-string v2, "android.wallpaper.unfreeze"

    goto :goto_4

    .line 913
    :goto_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    goto :goto_6

    .line 911
    :cond_b
    move-object v5, p0

    .line 918
    :goto_6
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_c

    iget-object v2, v5, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v6, v5, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x775400407b09c9a8L    # -6.783856069054106E-267

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v8, v9, v1, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 920
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 977
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 978
    .local v0, "adjust":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 979
    const/4 v0, 0x1

    goto :goto_1

    .line 981
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 982
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 983
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 984
    const/4 v0, 0x1

    .line 985
    goto :goto_1

    .line 983
    :cond_1
    nop

    .line 981
    .end local v2    # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 990
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 991
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    .line 993
    :cond_3
    return-void
.end method

.method canScreenshotWallpaper()Z
    .locals 1

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .line 682
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 683
    return-void
.end method

.method collectTopWallpapers(Lcom/android/server/wm/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopShowWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 751
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->hasTopHideWhenLockedWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_1

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 758
    :cond_3
    :goto_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1104
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLastWallpaperZoomOut="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1112
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 1113
    .local v1, "t":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    const-string v3, "mWallpaperX"

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1115
    const-string v2, "mWallpaperY"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1116
    const-string v2, "mWallpaperXStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1117
    const-string v2, "mWallpaperYStep"

    iget v3, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1118
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    int-to-float v2, v2

    const-string v3, "mWallpaperDisplayOffsetX"

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1119
    iget v2, v1, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    int-to-float v2, v2

    const-string v3, "mWallpaperDisplayOffsetY"

    invoke-direct {p0, p1, p2, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;F)V

    .line 1111
    .end local v1    # "t":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 1121
    .end local v0    # "i":I
    return-void
.end method

.method getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1074
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 1075
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 1076
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1077
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1078
    return-object v3

    .line 1075
    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    nop

    .line 1073
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v2    # "i":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 1082
    .end local v0    # "curTokenNdx":I
    const/4 v0, 0x0

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeededLegacy()V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 287
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    .line 285
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 291
    .end local v0    # "i":I
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 12
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_2

    .line 301
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 304
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 305
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 306
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam3":Ljava/lang/String;
    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam4":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9, v10, v3, v11}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 311
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    .end local v5    # "protoLogParam2":Ljava/lang/String;
    .end local v6    # "protoLogParam3":Ljava/lang/String;
    .end local v7    # "protoLogParam4":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    .line 303
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    nop

    .line 313
    .end local v0    # "i":I
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperVisible()Z
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 279
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 278
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    nop

    .line 281
    .end local v0    # "i":I
    const/4 v0, 0x0

    return v0
.end method

.method mirrorWallpaperSurface()Landroid/view/SurfaceControl;
    .locals 2

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1067
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 1068
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl;->mirrorSurface(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    .line 1069
    :cond_0
    const/4 v1, 0x0

    .line 1067
    :goto_0
    return-object v1
.end method

.method onWallpaperTokenReordered()V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1007
    :cond_0
    return-void
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 3

    .line 923
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 924
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 925
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "WindowManager"

    const-string v2, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0}, Lcom/android/server/wm/BackNavigationController;->startAnimation()V

    .line 932
    return v1

    .line 934
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 1000
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1001
    return-void
.end method

.method resetLargestDisplay(Landroid/view/Display;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .line 222
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLargestDisplaySize:Landroid/graphics/Point;

    .line 225
    :cond_0
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 6

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1038
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1039
    return-object v2

    .line 1042
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1043
    .local v1, "bounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1045
    nop

    .line 1046
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1045
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v1, v4}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 1048
    .local v3, "wallpaperBuffer":Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    if-nez v3, :cond_1

    .line 1049
    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-object v2

    .line 1052
    :cond_1
    nop

    .line 1053
    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 1052
    invoke-static {v2, v4}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method sendWindowWallpaperCommandUnchecked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 7
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 611
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "extras":Landroid/os/Bundle;
    .end local p7    # "sync":Z
    .local v1, "action":Ljava/lang/String;
    .local v2, "x":I
    .local v3, "y":I
    .local v4, "z":I
    .local v5, "extras":Landroid/os/Bundle;
    .local v6, "sync":Z
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 612
    return-void
.end method

.method setMaxWallpaperScale(F)V
    .locals 0
    .param p1, "maxScale"    # F

    .line 234
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    .line 235
    return-void
.end method

.method setMinWallpaperScale(F)V
    .locals 0
    .param p1, "minScale"    # F

    .line 229
    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    .line 230
    return-void
.end method

.method setShouldOffsetWallpaperCenter(Z)V
    .locals 0
    .param p1, "shouldOffset"    # Z

    .line 238
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController;->mShouldOffsetWallpaperCenter:Z

    .line 239
    return-void
.end method

.method setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "shouldZoom"    # Z

    .line 594
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eq p2, v0, :cond_0

    .line 595
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    .line 596
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 598
    :cond_0
    return-void
.end method

.method setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V
    .locals 3
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "zoom"    # F

    .line 583
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 585
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->computeLastWallpaperZoomOut()V

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 588
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(Z)V

    .line 586
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 591
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 601
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 602
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 603
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 606
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 573
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 574
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 575
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 576
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 577
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 580
    :cond_1
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;Z)Z
    .locals 39
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 317
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 318
    .local v3, "lastWallpaperBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 319
    .local v4, "screenWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 320
    .local v5, "screenHeight":I
    int-to-float v0, v4

    int-to-float v6, v5

    div-float v6, v0, v6

    .line 321
    .local v6, "screenRatio":F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v7, v0

    .line 323
    .local v7, "screenSize":Landroid/graphics/Point;
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v8

    .line 362
    .local v8, "token":Lcom/android/server/wm/WallpaperWindowToken;
    nop

    .line 363
    new-instance v0, Landroid/graphics/Point;

    iget v9, v2, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v10, v2, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-direct {v0, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 365
    .local v0, "bitmapSize":Landroid/graphics/Point;
    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperWindowToken;->getCropHints()Landroid/util/SparseArray;

    move-result-object v9

    .line 366
    .local v9, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    iget v10, v0, Landroid/graphics/Point;->x:I

    if-lez v10, :cond_0

    iget v10, v0, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_1

    :cond_0
    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {v1}, Lcom/android/server/wm/WallpaperController;->getOrCreateDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-result-object v10

    .line 368
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v11

    .line 367
    invoke-static {v7, v10, v0, v9, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_1

    .line 366
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v10

    .line 367
    :goto_1
    nop

    .line 369
    .local v10, "wallpaperFrame":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 370
    .local v11, "frameWidth":I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 371
    .local v12, "frameHeight":I
    int-to-float v13, v11

    int-to-float v14, v12

    div-float/2addr v13, v14

    .line 376
    .local v13, "frameRatio":F
    cmpl-float v14, v13, v6

    const/16 v16, 0x1

    if-ltz v14, :cond_2

    move/from16 v14, v16

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    .line 377
    .local v14, "scaleHeight":Z
    :goto_2
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    if-eqz v17, :cond_3

    move-object/from16 v19, v0

    move/from16 v15, v18

    goto :goto_3

    :cond_3
    if-eqz v14, :cond_4

    .line 378
    int-to-float v15, v5

    move-object/from16 v19, v0

    .end local v0    # "bitmapSize":Landroid/graphics/Point;
    .local v19, "bitmapSize":Landroid/graphics/Point;
    int-to-float v0, v12

    div-float/2addr v15, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v15, v0

    goto :goto_3

    .line 379
    .end local v19    # "bitmapSize":Landroid/graphics/Point;
    .restart local v0    # "bitmapSize":Landroid/graphics/Point;
    :cond_4
    move-object/from16 v19, v0

    .end local v0    # "bitmapSize":Landroid/graphics/Point;
    .restart local v19    # "bitmapSize":Landroid/graphics/Point;
    int-to-float v0, v4

    int-to-float v15, v11

    div-float/2addr v0, v15

    iget v15, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float v15, v0, v15

    :goto_3
    nop

    .line 382
    .local v15, "cropZoom":F
    if-eqz v14, :cond_5

    int-to-float v0, v12

    mul-float/2addr v0, v6

    goto :goto_4

    :cond_5
    int-to-float v0, v11

    .line 383
    .local v0, "w":F
    :goto_4
    if-eqz v14, :cond_6

    move/from16 v20, v0

    .end local v0    # "w":F
    .local v20, "w":F
    int-to-float v0, v12

    goto :goto_5

    .end local v20    # "w":F
    .restart local v0    # "w":F
    :cond_6
    move/from16 v20, v0

    .end local v0    # "w":F
    .restart local v20    # "w":F
    int-to-float v0, v11

    div-float/2addr v0, v6

    .line 386
    .local v0, "h":F
    :goto_5
    move/from16 v21, v0

    .end local v0    # "h":F
    .local v21, "h":F
    iget v0, v10, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    sub-float v22, v15, v18

    mul-float v22, v22, v20

    const/high16 v23, 0x40000000    # 2.0f

    move/from16 v24, v0

    div-float v0, v22, v23

    float-to-int v0, v0

    move/from16 v22, v4

    .end local v4    # "screenWidth":I
    .local v22, "screenWidth":I
    add-int v4, v24, v0

    .line 387
    .local v4, "cropOffsetX":I
    iget v0, v10, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    sub-float v24, v15, v18

    mul-float v24, v24, v21

    move/from16 v25, v0

    div-float v0, v24, v23

    float-to-int v0, v0

    move/from16 v23, v5

    .end local v5    # "screenHeight":I
    .local v23, "screenHeight":I
    add-int v5, v25, v0

    .line 390
    .local v5, "cropOffsetY":I
    int-to-float v0, v11

    sub-float v0, v0, v20

    move/from16 v24, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v0, v0, v24

    move/from16 v24, v6

    .end local v6    # "screenRatio":F
    .local v24, "screenRatio":F
    float-to-int v6, v0

    .line 391
    .local v6, "diffWidth":I
    int-to-float v0, v12

    sub-float v0, v0, v21

    move/from16 v25, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v0, v0, v25

    float-to-int v9, v0

    .line 392
    .end local v11    # "frameWidth":I
    .end local v12    # "frameHeight":I
    .end local v13    # "frameRatio":F
    .end local v14    # "scaleHeight":Z
    .end local v19    # "bitmapSize":Landroid/graphics/Point;
    .end local v20    # "w":F
    .end local v21    # "h":F
    .local v9, "diffHeight":I
    nop

    .line 412
    const/4 v0, 0x0

    .line 415
    .local v0, "rawChanged":Z
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_7

    move/from16 v11, v18

    goto :goto_6

    :cond_7
    move v11, v12

    .line 420
    .local v11, "defaultWallpaperX":F
    :goto_6
    iget v13, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    cmpl-float v13, v13, v12

    if-ltz v13, :cond_8

    iget v13, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_7

    :cond_8
    move v13, v11

    .line 423
    .local v13, "wpx":F
    :goto_7
    iget v14, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    cmpl-float v14, v14, v12

    const/high16 v19, -0x40800000    # -1.0f

    if-ltz v14, :cond_9

    iget v14, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_8

    :cond_9
    move/from16 v14, v19

    .line 426
    .local v14, "wpxs":F
    :goto_8
    move/from16 v20, v6

    .line 428
    .local v20, "availw":I
    nop

    .line 429
    move/from16 v21, v12

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v12

    .line 428
    move/from16 v25, v0

    move/from16 v0, v20

    .end local v20    # "availw":I
    .local v0, "availw":I
    .local v25, "rawChanged":Z
    invoke-direct {v1, v0, v3, v12}, Lcom/android/server/wm/WallpaperController;->getDisplayWidthOffset(ILandroid/graphics/Rect;Z)I

    move-result v12

    .line 430
    .local v12, "displayOffset":I
    move-object/from16 v20, v3

    .end local v3    # "lastWallpaperBounds":Landroid/graphics/Rect;
    .local v20, "lastWallpaperBounds":Landroid/graphics/Rect;
    sub-int v3, v0, v12

    .line 431
    .end local v0    # "availw":I
    .local v3, "availw":I
    if-lez v3, :cond_a

    const/high16 v26, 0x3f000000    # 0.5f

    int-to-float v0, v3

    mul-float/2addr v0, v13

    add-float v0, v0, v26

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_9

    :cond_a
    const/high16 v26, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 432
    .local v0, "offsetX":I
    :goto_9
    move/from16 v27, v0

    .end local v0    # "offsetX":I
    .local v27, "offsetX":I
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    move/from16 v28, v3

    .end local v3    # "availw":I
    .local v28, "availw":I
    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_b

    .line 435
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    add-int v0, v27, v0

    .end local v27    # "offsetX":I
    .restart local v0    # "offsetX":I
    goto :goto_a

    .line 436
    .end local v0    # "offsetX":I
    .restart local v27    # "offsetX":I
    :cond_b
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v0

    if-nez v0, :cond_c

    .line 439
    sub-int v0, v27, v12

    .end local v27    # "offsetX":I
    .restart local v0    # "offsetX":I
    goto :goto_a

    .line 436
    .end local v0    # "offsetX":I
    .restart local v27    # "offsetX":I
    :cond_c
    move/from16 v0, v27

    .line 441
    .end local v27    # "offsetX":I
    .restart local v0    # "offsetX":I
    :goto_a
    int-to-float v3, v0

    move/from16 v29, v0

    .end local v0    # "offsetX":I
    .local v29, "offsetX":I
    int-to-float v0, v4

    move/from16 v30, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float v0, v0, v30

    add-float/2addr v3, v0

    float-to-int v3, v3

    .line 443
    .end local v29    # "offsetX":I
    .local v3, "offsetX":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v13

    if-nez v0, :cond_d

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v14

    if-eqz v0, :cond_e

    :cond_d
    goto :goto_b

    :cond_e
    move/from16 v0, v25

    goto :goto_c

    .line 444
    :goto_b
    iput v13, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 445
    iput v14, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 446
    const/4 v0, 0x1

    .line 449
    .end local v25    # "rawChanged":Z
    .local v0, "rawChanged":Z
    :goto_c
    move/from16 v25, v0

    .end local v0    # "rawChanged":Z
    .restart local v25    # "rawChanged":Z
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    cmpl-float v0, v0, v21

    if-ltz v0, :cond_f

    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_d

    :cond_f
    move/from16 v0, v26

    :goto_d
    move/from16 v29, v0

    .line 450
    .local v29, "wpy":F
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    cmpl-float v0, v0, v21

    if-ltz v0, :cond_10

    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    move/from16 v19, v0

    :cond_10
    move/from16 v21, v19

    .line 451
    .local v21, "wpys":F
    if-lez v9, :cond_11

    int-to-float v0, v9

    mul-float v0, v0, v29

    add-float v0, v0, v26

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    .line 452
    .local v0, "offsetY":I
    :goto_e
    move/from16 v19, v0

    .end local v0    # "offsetY":I
    .local v19, "offsetY":I
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    move/from16 v26, v4

    const/high16 v4, -0x80000000

    .end local v4    # "cropOffsetX":I
    .local v26, "cropOffsetX":I
    if-eq v0, v4, :cond_12

    .line 453
    iget v0, v8, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    add-int v0, v19, v0

    .end local v19    # "offsetY":I
    .restart local v0    # "offsetY":I
    goto :goto_f

    .line 452
    .end local v0    # "offsetY":I
    .restart local v19    # "offsetY":I
    :cond_12
    move/from16 v0, v19

    .line 455
    .end local v19    # "offsetY":I
    .restart local v0    # "offsetY":I
    :goto_f
    int-to-float v4, v0

    move/from16 v19, v0

    .end local v0    # "offsetY":I
    .restart local v19    # "offsetY":I
    int-to-float v0, v5

    move/from16 v27, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float v0, v0, v27

    add-float/2addr v4, v0

    float-to-int v4, v4

    .line 457
    .end local v19    # "offsetY":I
    .local v4, "offsetY":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v29

    if-nez v0, :cond_13

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v21

    if-eqz v0, :cond_14

    :cond_13
    goto :goto_10

    :cond_14
    move/from16 v19, v5

    move/from16 v5, v21

    move/from16 v0, v25

    move/from16 v27, v29

    goto :goto_11

    .line 458
    :goto_10
    move/from16 v19, v5

    move/from16 v5, v29

    .end local v29    # "wpy":F
    .local v5, "wpy":F
    .local v19, "cropOffsetY":I
    iput v5, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 459
    move/from16 v27, v5

    move/from16 v5, v21

    .end local v21    # "wpys":F
    .local v5, "wpys":F
    .local v27, "wpy":F
    iput v5, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 460
    const/4 v0, 0x1

    .line 463
    .end local v25    # "rawChanged":Z
    .local v0, "rawChanged":Z
    :goto_11
    move/from16 v21, v0

    .end local v0    # "rawChanged":Z
    .local v21, "rawChanged":Z
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move/from16 v25, v5

    .end local v5    # "wpys":F
    .local v25, "wpys":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_15

    .line 464
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    .line 465
    const/4 v0, 0x1

    move/from16 v21, v0

    .line 467
    :cond_15
    iget-boolean v0, v2, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v0, :cond_16

    .line 468
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController;->zoomOutToScale(F)F

    move-result v18

    goto :goto_12

    :cond_16
    nop

    .line 469
    .local v18, "zoom":F
    :goto_12
    mul-float v5, v18, v15

    .line 470
    .local v5, "totalZoom":F
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowState;->setWallpaperOffset(IIF)Z

    move-result v29

    .line 472
    .local v29, "changed":Z
    if-eqz v21, :cond_20

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_20

    .line 475
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_b

    if-eqz v0, :cond_17

    :try_start_1
    const-string v0, "WindowManager"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move/from16 v30, v3

    .end local v3    # "offsetX":I
    .local v30, "offsetX":I
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v31, v4

    .end local v4    # "offsetY":I
    .local v31, "offsetY":I
    :try_start_3
    const-string v4, "Report new wp offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " zoom="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 508
    :catch_0
    move-exception v0

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    goto/16 :goto_19

    .end local v31    # "offsetY":I
    .restart local v4    # "offsetY":I
    :catch_1
    move-exception v0

    move/from16 v31, v4

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v4    # "offsetY":I
    .restart local v31    # "offsetY":I
    goto/16 :goto_19

    .end local v30    # "offsetX":I
    .end local v31    # "offsetY":I
    .restart local v3    # "offsetX":I
    .restart local v4    # "offsetY":I
    :catch_2
    move-exception v0

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .restart local v30    # "offsetX":I
    .restart local v31    # "offsetY":I
    goto/16 :goto_19

    .line 475
    .end local v30    # "offsetX":I
    .end local v31    # "offsetY":I
    .restart local v3    # "offsetX":I
    .restart local v4    # "offsetY":I
    :cond_17
    move/from16 v30, v3

    move/from16 v31, v4

    .line 479
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .restart local v30    # "offsetX":I
    .restart local v31    # "offsetY":I
    :goto_13
    if-eqz p2, :cond_18

    .line 480
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 482
    :cond_18
    :try_start_4
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v3, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    move-object/from16 v32, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move/from16 v35, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v36, v0

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move/from16 v38, p2

    move/from16 v37, v0

    move/from16 v33, v3

    move/from16 v34, v4

    invoke-interface/range {v32 .. v38}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V

    .line 487
    if-eqz p2, :cond_1f

    .line 488
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1e

    .line 489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a

    .line 490
    .local v3, "start":J
    move/from16 v33, v5

    move/from16 v32, v6

    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .local v32, "diffWidth":I
    .local v33, "totalZoom":F
    :try_start_5
    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_9

    const-wide/16 v34, 0x2710

    add-long v5, v5, v34

    cmp-long v0, v5, v3

    if-gez v0, :cond_1d

    .line 493
    :try_start_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v16

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    const-wide v5, -0x5f25f808633bc7f4L    # -1.988085530651E-150

    move-object/from16 v37, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    .end local v7    # "screenSize":Landroid/graphics/Point;
    .local v37, "screenSize":Landroid/graphics/Point;
    :try_start_7
    invoke-static {v0, v5, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_14

    .line 508
    .end local v3    # "start":J
    :catch_3
    move-exception v0

    move-object/from16 v16, v8

    goto/16 :goto_19

    .line 495
    .restart local v3    # "start":J
    :catch_4
    move-exception v0

    goto :goto_15

    .line 508
    .end local v3    # "start":J
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    :catch_5
    move-exception v0

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto/16 :goto_19

    .line 495
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v3    # "start":J
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    :catch_6
    move-exception v0

    move-object/from16 v37, v7

    .end local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto :goto_15

    .line 493
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    :cond_19
    move-object/from16 v37, v7

    .line 494
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    :goto_14
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 496
    nop

    .line 497
    :goto_15
    :try_start_8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v16
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v0, :cond_1a

    :try_start_9
    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x52cdf6d55098c638L    # -5.533716568926851E-91

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v5, v6, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 498
    :cond_1a
    const-wide/16 v35, 0x96

    add-long v5, v3, v35

    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    cmp-long v0, v5, v35

    if-gez v0, :cond_1c

    .line 499
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v0, v0, v16

    if-eqz v0, :cond_1b

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    const-wide v6, 0x3a45415bfc1334bdL    # 5.365594543687691E-28

    move-object/from16 v16, v8

    const/4 v8, 0x0

    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .local v16, "token":Lcom/android/server/wm/WallpaperWindowToken;
    :try_start_b
    invoke-static {v2, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_16

    .line 508
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "start":J
    :catch_7
    move-exception v0

    goto/16 :goto_19

    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :catch_8
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    goto :goto_19

    .line 499
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v3    # "start":J
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1b
    move-object/from16 v16, v8

    .line 502
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :goto_16
    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    goto :goto_17

    .line 498
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1c
    move-object/from16 v16, v8

    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    goto :goto_17

    .line 490
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1d
    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .line 505
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    :goto_17
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_18

    .line 508
    .end local v3    # "start":J
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :catch_9
    move-exception v0

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto :goto_19

    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v32    # "diffWidth":I
    .end local v33    # "totalZoom":F
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "totalZoom":F
    .restart local v6    # "diffWidth":I
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :catch_a
    move-exception v0

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v32    # "diffWidth":I
    .restart local v33    # "totalZoom":F
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto :goto_19

    .line 488
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v32    # "diffWidth":I
    .end local v33    # "totalZoom":F
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "totalZoom":F
    .restart local v6    # "diffWidth":I
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1e
    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v32    # "diffWidth":I
    .restart local v33    # "totalZoom":F
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto :goto_18

    .line 487
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v32    # "diffWidth":I
    .end local v33    # "totalZoom":F
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v5    # "totalZoom":F
    .restart local v6    # "diffWidth":I
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_1f
    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .line 509
    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v32    # "diffWidth":I
    .restart local v33    # "totalZoom":F
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    :goto_18
    goto :goto_19

    .line 508
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v30    # "offsetX":I
    .end local v31    # "offsetY":I
    .end local v32    # "diffWidth":I
    .end local v33    # "totalZoom":F
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .local v3, "offsetX":I
    .restart local v4    # "offsetY":I
    .restart local v5    # "totalZoom":F
    .restart local v6    # "diffWidth":I
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :catch_b
    move-exception v0

    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v30    # "offsetX":I
    .restart local v31    # "offsetY":I
    .restart local v32    # "diffWidth":I
    .restart local v33    # "totalZoom":F
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    goto :goto_19

    .line 472
    .end local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .end local v30    # "offsetX":I
    .end local v31    # "offsetY":I
    .end local v32    # "diffWidth":I
    .end local v33    # "totalZoom":F
    .end local v37    # "screenSize":Landroid/graphics/Point;
    .restart local v3    # "offsetX":I
    .restart local v4    # "offsetY":I
    .restart local v5    # "totalZoom":F
    .restart local v6    # "diffWidth":I
    .restart local v7    # "screenSize":Landroid/graphics/Point;
    .restart local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_20
    move/from16 v30, v3

    move/from16 v31, v4

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v37, v7

    move-object/from16 v16, v8

    .line 512
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v5    # "totalZoom":F
    .end local v6    # "diffWidth":I
    .end local v7    # "screenSize":Landroid/graphics/Point;
    .end local v8    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v16    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    .restart local v30    # "offsetX":I
    .restart local v31    # "offsetY":I
    .restart local v32    # "diffWidth":I
    .restart local v33    # "totalZoom":F
    .restart local v37    # "screenSize":Landroid/graphics/Point;
    :goto_19
    return v29
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 686
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 687
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 688
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 691
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    nop

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 695
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 696
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 699
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 12

    .line 938
    const/4 v0, 0x1

    .line 939
    .local v0, "transitionReady":Z
    const/4 v1, 0x1

    .line 940
    .local v1, "wallpaperReady":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 941
    .local v2, "curTokenIndex":I
    :goto_0
    const/16 v4, 0x27

    if-ltz v2, :cond_3

    if-eqz v1, :cond_3

    .line 942
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 943
    .local v5, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 945
    const/4 v1, 0x0

    .line 946
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 948
    const/4 v0, 0x0

    .line 950
    :cond_0
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_1

    .line 951
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 952
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v4, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 953
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 954
    invoke-virtual {v7, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 953
    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 958
    :cond_1
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_1767190652$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v6, v6, v3

    nop

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    int-to-long v6, v6

    .local v6, "protoLogParam0":J
    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v10, -0x4af7cbdd60b2c42bL    # -3.158724139617855E-53

    invoke-static {v8, v10, v11, v3, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1767190652;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 960
    .end local v6    # "protoLogParam0":J
    goto :goto_1

    .line 943
    :cond_2
    nop

    .line 941
    .end local v5    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 964
    .end local v2    # "curTokenIndex":I
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 965
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 966
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 969
    :cond_4
    return v0
.end method
