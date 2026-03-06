.class Lcom/android/server/wm/AppCompatRoundedCorners;
.super Ljava/lang/Object;
.source "AppCompatRoundedCorners.java"


# instance fields
.field private final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mRoundedCornersWindowCondition:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityRecord;Ljava/util/function/Predicate;)V
    .locals 0
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 41
    .local p2, "roundedCornersWindowCondition":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    .line 44
    return-void
.end method

.method private static getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I
    .locals 2
    .param p0, "insetsState"    # Landroid/view/InsetsState;
    .param p1, "position"    # I

    .line 132
    invoke-virtual {p0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    .line 133
    .local v0, "corner":Landroid/view/RoundedCorner;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v1

    :goto_0
    return v1
.end method

.method private requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 139
    .local v0, "letterboxOverrides":Lcom/android/server/wm/AppCompatLetterboxOverrides;
    iget-object v1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mRoundedCornersWindowCondition:Ljava/util/function/Predicate;

    invoke-interface {v1, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxActivityCornersRounded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 139
    :goto_0
    return v1
.end method


# virtual methods
.method getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 70
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .local v0, "cropBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 78
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v2

    .line 79
    .local v2, "transparentPolicy":Lcom/android/server/wm/TransparentPolicy;
    invoke-virtual {v2}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v3, v4, :cond_1

    .line 80
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, p1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v3, v4, :cond_2

    .line 81
    :cond_1
    return-object v1

    .line 87
    :cond_2
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatUtils;->adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 89
    iget v1, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 90
    .local v1, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 91
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 97
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 98
    return-object v0
.end method

.method getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I
    .locals 4
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->requiresRoundedCorners(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 115
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 117
    .local v0, "letterboxOverrides":Lcom/android/server/wm/AppCompatLetterboxOverrides;
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result v1

    if-ltz v1, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxActivityCornersRadius()I

    move-result v1

    .local v1, "radius":I
    goto :goto_0

    .line 120
    .end local v1    # "radius":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object v1

    .line 121
    .local v1, "insetsState":Landroid/view/InsetsState;
    nop

    .line 122
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v2

    .line 123
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/wm/AppCompatRoundedCorners;->getInsetsStateCornerRadius(Landroid/view/InsetsState;I)I

    move-result v3

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v1, v2

    .line 126
    .local v1, "radius":I
    :goto_0
    iget v2, p1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 127
    .local v2, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    return v3
.end method

.method updateRoundedCornersIfNeeded(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p1, "mainWindow"    # Lcom/android/server/wm/WindowState;

    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 48
    .local v0, "windowSurface":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AppCompatRoundedCorners;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getCropBoundsIfNeeded(Lcom/android/server/wm/WindowState;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatRoundedCorners;->getRoundedCornersRadius(Lcom/android/server/wm/WindowState;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 56
    return-void

    .line 49
    :goto_0
    return-void
.end method
