.class public abstract Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppTransitionListener"
.end annotation


# instance fields
.field public final mTargetDisplayId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 257
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>(I)V

    .line 258
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    .line 263
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(Z)V
    .locals 0
    .param p1, "keyguardGoingAwayCancelled"    # Z

    .line 276
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .line 306
    return-void
.end method

.method public onAppTransitionPendingLocked()V
    .locals 0

    .line 268
    return-void
.end method

.method public onAppTransitionStartingLocked(JJ)I
    .locals 1
    .param p1, "statusBarAnimationStartTime"    # J
    .param p3, "statusBarAnimationDuration"    # J

    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public onAppTransitionTimeoutLocked()V
    .locals 0

    .line 281
    return-void
.end method
