.class Lcom/android/server/wm/WindowManagerFlags;
.super Ljava/lang/Object;
.source "WindowManagerFlags.java"


# instance fields
.field final mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

.field final mAodTransition:Z

.field final mEnsureWallpaperInTransitions:Z

.field final mInsetsDecoupledConfiguration:Z

.field final mRespectNonTopVisibleFixedOrientation:Z

.field final mWallpaperOffsetAsync:Z


# direct methods
.method constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 51
    nop

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    .line 56
    nop

    .line 57
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v1, "isWatch":Z
    goto :goto_0

    .line 70
    .end local v1    # "isWatch":Z
    :catchall_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    move v1, v2

    .line 80
    .local v1, "isWatch":Z
    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    nop

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    .line 82
    return-void
.end method
