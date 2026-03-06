.class public interface abstract Lcom/android/server/wm/INtPopUpView;
.super Ljava/lang/Object;
.source "INtPopUpView.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtPopUpView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/server/wm/INtPopUpView$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtPopUpView$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtPopUpView;->DEFAULT:Lcom/android/server/wm/INtPopUpView;

    return-void
.end method


# virtual methods
.method public binderDied(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 72
    return-void
.end method

.method public calculateTransitionInfo(Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V
    .locals 0
    .param p2, "transitionInfo"    # Landroid/window/TransitionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/window/TransitionInfo;",
            ")V"
        }
    .end annotation

    .line 101
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    return-void
.end method

.method public canEnterPinnedWindowWindowingMode()Z
    .locals 1

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public checkStartDualAppsFormHomeTask(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resultTo"    # Landroid/os/IBinder;

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public computeLaunchParams(Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 41
    return-void
.end method

.method public dragPopUpView(IFFZ)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "resize"    # Z

    .line 121
    return-void
.end method

.method public ensureActivityConfiguration(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 40
    return-void
.end method

.method public enterPinnedWindowWindowingMode()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public enterWindowMode(IIILandroid/graphics/Rect;F)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "defaultWindowMode"    # I
    .param p3, "targetWindowMode"    # I
    .param p4, "startBounds"    # Landroid/graphics/Rect;
    .param p5, "startConerRadius"    # F

    .line 113
    return-void
.end method

.method public getChangeFlags(Lcom/android/server/wm/Transition$ChangeInfo;I)I
    .locals 0
    .param p1, "info"    # Lcom/android/server/wm/Transition$ChangeInfo;
    .param p2, "oriFlags"    # I

    .line 99
    return p2
.end method

.method public getForceConsumingStatusBarWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "windowingMode"    # I
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getPopUpViewTouchOffset(Lcom/android/server/wm/Session;Landroid/view/IWindow;[F)V
    .locals 0
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "offsets"    # [F

    .line 34
    return-void
.end method

.method public getPopUpViewWindowName()Ljava/lang/String;
    .locals 1

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSavedActivityOptions(Landroid/app/ActivityOptions;IILandroid/content/Intent;)Lcom/android/server/wm/SafeActivityOptions;
    .locals 1
    .param p1, "checkedOptions"    # Landroid/app/ActivityOptions;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskWindowSurfaceBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public isFloatingIcon(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchPopUpViewFromFloatingWindow()Z
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchPopUpViewFromNotification()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isLaunchPopUpViewFromRecents()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isTryEnterWindowingMode()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public isTryExitWindowingMode()Z
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public maximizePopUpView(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 122
    return-void
.end method

.method public minimizePopUpView(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 123
    return-void
.end method

.method public moveActivityTaskToBack(IZILandroid/graphics/Point;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "nonRoot"    # Z
    .param p3, "leaveInfo"    # I
    .param p4, "position"    # Landroid/graphics/Point;

    .line 39
    return-void
.end method

.method public moveActivityTaskToBack(Lcom/android/server/wm/Task;ZI)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "nonRoot"    # Z
    .param p3, "leaveInfo"    # I

    .line 38
    return-void
.end method

.method public notifyEnterPinnedWindow()V
    .locals 0

    .line 114
    return-void
.end method

.method public notifyFinishTransition(Lcom/android/server/wm/Transition;)V
    .locals 0
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 102
    return-void
.end method

.method public onPrepareSurfaces(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 78
    return-void
.end method

.method public onRotationChanged(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 77
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    .line 79
    return-void
.end method

.method public onWindowAdd(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 70
    return-void
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 71
    return-void
.end method

.method public onWindowTokenAssignLayer(Lcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl$Transaction;I)Z
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "layer"    # I

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public removeChild(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 73
    return-void
.end method

.method public resetBounds(Lcom/android/server/wm/Task;II)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "currentMode"    # I
    .param p3, "preferredWindowingMode"    # I

    .line 87
    return-void
.end method

.method public saveActivityOptions(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 106
    return-void
.end method

.method public setTryExitWindowingMode(Z)V
    .locals 0
    .param p1, "isExit"    # Z

    .line 60
    return-void
.end method

.method public shouldInitializeChangeTransition(Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prevWinMode"    # I

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSkipAcquireWakeLock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipAppFocusChanged(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "newTask"    # Lcom/android/server/wm/Task;

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartChangeTransition(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I
    .param p3, "prevBounds"    # Landroid/graphics/Rect;
    .param p4, "newBounds"    # Landroid/graphics/Rect;

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public skipChangeFocusOnPointerDownOutside(Lcom/android/server/wm/WindowState;FF)Z
    .locals 1
    .param p1, "focusWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public skipMoveHomeTaskForward(Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityFromRecents(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public startLockTaskMode(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 94
    return-void
.end method

.method public supportGestureEnterWindowMode()Z
    .locals 1

    .line 116
    const/4 v0, 0x0

    return v0
.end method
