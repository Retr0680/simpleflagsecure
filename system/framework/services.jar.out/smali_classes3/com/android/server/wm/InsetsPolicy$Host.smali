.class Lcom/android/server/wm/InsetsPolicy$Host;
.super Ljava/lang/Object;
.source "InsetsPolicy.java"

# interfaces
.implements Landroid/view/InsetsController$Host;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Host"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mName:Ljava/lang/String;

.field private final mTmpFloat9:[F


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    .line 851
    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    .line 852
    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    .line 853
    return-void
.end method


# virtual methods
.method public addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 932
    return-void
.end method

.method public varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4
    .param p1, "p"    # [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    .line 890
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 891
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 892
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    .line 891
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 894
    .end local v1    # "i":I
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 895
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 896
    return-void
.end method

.method public dipToPx(I)I
    .locals 1
    .param p1, "dips"    # I

    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 886
    return-void
.end method

.method public dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;

    .line 867
    return-void
.end method

.method public dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    .line 880
    .local p2, "runningAnimations":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInsetsAnimation;>;"
    return-object p1
.end method

.method public dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0
    .param p1, "animation"    # Landroid/view/WindowInsetsAnimation;
    .param p2, "bounds"    # Landroid/view/WindowInsetsAnimation$Bounds;

    .line 873
    return-object p2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 940
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRootViewTitle()Ljava/lang/String;
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemBarsAppearance()I
    .locals 1

    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemBarsBehavior()I
    .locals 1

    .line 922
    const/4 v0, 0x2

    return v0
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 957
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnimationCallbacks()Z
    .locals 1

    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public notifyInsetsChanged()V
    .locals 0

    .line 862
    return-void
.end method

.method public postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 936
    return-void
.end method

.method public releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 927
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    .line 928
    return-void
.end method

.method public setSystemBarsAppearance(II)V
    .locals 0
    .param p1, "appearance"    # I
    .param p2, "mask"    # I

    .line 909
    return-void
.end method

.method public setSystemBarsBehavior(I)V
    .locals 0
    .param p1, "behavior"    # I

    .line 918
    return-void
.end method

.method public updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0
    .param p1, "types"    # I
    .param p2, "statsToken"    # Landroid/view/inputmethod/ImeTracker$Token;

    .line 900
    return-void
.end method
