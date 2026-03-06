.class public Lcom/android/server/wm/NtServicePopUpViewHelper;
.super Ljava/lang/Object;
.source "NtServicePopUpViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NtServicePopUpViewHelper$LazyHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "NtServicePopUpViewHelper"


# instance fields
.field private mEnterPinnedWindowRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Ixsz11R8PiJIV5T-l2bdJCK5W9A(Lcom/android/server/wm/NtServicePopUpViewHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/NtServicePopUpViewHelper;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/server/wm/NtServicePopUpViewHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/NtServicePopUpViewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/NtServicePopUpViewHelper;)V

    iput-object v0, p0, Lcom/android/server/wm/NtServicePopUpViewHelper;->mEnterPinnedWindowRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/NtServicePopUpViewHelper;
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/server/wm/NtServicePopUpViewHelper$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/wm/NtServicePopUpViewHelper;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/NtServicePopUpViewHelper;->enterPinnedWindowWindowingMode()Z

    .line 50
    return-void
.end method


# virtual methods
.method public binderDied(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 144
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->binderDied(Lcom/android/server/wm/WindowState;)V

    .line 145
    return-void
.end method

.method public calculateTransitionInfo(Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V
    .locals 1
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

    .line 212
    .local p1, "sortedTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 213
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->calculateTransitionInfo(Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V

    .line 214
    return-void
.end method

.method public canEnterPinnedWindowWindowingMode()Z
    .locals 1

    .line 185
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 186
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->canEnterPinnedWindowWindowingMode()Z

    move-result v0

    .line 185
    return v0
.end method

.method public checkStartDualAppsFormHomeTask(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/os/IBinder;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resultTo"    # Landroid/os/IBinder;

    .line 201
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 202
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->checkStartDualAppsFormHomeTask(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method public computeLaunchParams(Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "targetTask"    # Lcom/android/server/wm/Task;

    .line 78
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 79
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->computeLaunchParams(Lcom/android/server/wm/LaunchParamsController$LaunchParams;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)V

    .line 80
    return-void
.end method

.method public ensureActivityConfiguration(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 72
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 73
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->ensureActivityConfiguration(Lcom/android/server/wm/ActivityRecord;)V

    .line 74
    return-void
.end method

.method public enterPinnedWindowWindowingMode()Z
    .locals 1

    .line 190
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 191
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->enterPinnedWindowWindowingMode()Z

    move-result v0

    .line 190
    return v0
.end method

.method public getChangeFlags(Lcom/android/server/wm/Transition$ChangeInfo;I)I
    .locals 1
    .param p1, "info"    # Lcom/android/server/wm/Transition$ChangeInfo;
    .param p2, "oriFlags"    # I

    .line 206
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 207
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->getChangeFlags(Lcom/android/server/wm/Transition$ChangeInfo;I)I

    move-result v0

    .line 206
    return v0
.end method

.method public getEnterPinnedWindowRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/NtServicePopUpViewHelper;->mEnterPinnedWindowRunnable:Ljava/lang/Runnable;

    return-object v0
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

    .line 62
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 63
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->getForceConsumingStatusBarWhiteList()Ljava/util/List;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public getOrCreateRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "windowingMode"    # I
    .param p4, "options"    # Landroid/app/ActivityOptions;

    .line 124
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 125
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/wm/INtPopUpView;->getOrCreateRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;ILandroid/app/ActivityOptions;)Z

    move-result v0

    .line 124
    return v0
.end method

.method public getPopUpViewTouchOffset(Lcom/android/server/wm/Session;Landroid/view/IWindow;[F)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/wm/Session;
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "offsets"    # [F

    .line 57
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 58
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->getPopUpViewTouchOffset(Lcom/android/server/wm/Session;Landroid/view/IWindow;[F)V

    .line 59
    return-void
.end method

.method public getSavedActivityOptions(Landroid/app/ActivityOptions;IILandroid/content/Intent;)Lcom/android/server/wm/SafeActivityOptions;
    .locals 1
    .param p1, "checkedOptions"    # Landroid/app/ActivityOptions;
    .param p2, "callingPid"    # I
    .param p3, "callingUid"    # I
    .param p4, "intent"    # Landroid/content/Intent;

    .line 232
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 233
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/wm/INtPopUpView;->getSavedActivityOptions(Landroid/app/ActivityOptions;IILandroid/content/Intent;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 232
    return-object v0
.end method

.method public getTaskWindowSurfaceBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 237
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 238
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->getTaskWindowSurfaceBounds(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v0

    .line 237
    return-object v0
.end method

.method public isFloatingIcon(I)Z
    .locals 1
    .param p1, "taskId"    # I

    .line 252
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 253
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->isFloatingIcon(I)Z

    move-result v0

    .line 252
    return v0
.end method

.method public isLaunchPopUpViewFromFloatingWindow()Z
    .locals 1

    .line 98
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 99
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->isLaunchPopUpViewFromFloatingWindow()Z

    move-result v0

    .line 98
    return v0
.end method

.method public isLaunchPopUpViewFromNotification()Z
    .locals 1

    .line 93
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 94
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->isLaunchPopUpViewFromNotification()Z

    move-result v0

    .line 93
    return v0
.end method

.method public isLaunchPopUpViewFromRecents()Z
    .locals 1

    .line 88
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 89
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->isLaunchPopUpViewFromRecents()Z

    move-result v0

    .line 88
    return v0
.end method

.method public isTryEnterWindowingMode()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 104
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->isTryEnterWindowingMode()Z

    move-result v0

    .line 103
    return v0
.end method

.method public isTryExitWindowingMode()Z
    .locals 1

    .line 108
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 109
    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->isTryExitWindowingMode()Z

    move-result v0

    .line 108
    return v0
.end method

.method public moveActivityTaskToBack(Lcom/android/server/wm/Task;ZI)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "nonRoot"    # Z
    .param p3, "leaveInfo"    # I

    .line 67
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->moveActivityTaskToBack(Lcom/android/server/wm/Task;ZI)V

    .line 69
    return-void
.end method

.method public notifyFinishTransition(Lcom/android/server/wm/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 217
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 218
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->notifyFinishTransition(Lcom/android/server/wm/Transition;)V

    .line 219
    return-void
.end method

.method public onPrepareSurfaces(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 161
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->onPrepareSurfaces(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V

    .line 162
    return-void
.end method

.method public onRotationChanged(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 157
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->onRotationChanged(Lcom/android/server/wm/Task;)V

    .line 158
    return-void
.end method

.method public onUserSwitched()V
    .locals 1

    .line 165
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0}, Lcom/android/server/wm/INtPopUpView;->onUserSwitched()V

    .line 166
    return-void
.end method

.method public onWindowAdd(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;

    .line 135
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 136
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->onWindowAdd(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowState;)V

    .line 137
    return-void
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 140
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->onWindowRemove(Lcom/android/server/wm/WindowState;)V

    .line 141
    return-void
.end method

.method public onWindowTokenAssignLayer(Lcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl$Transaction;I)Z
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "layer"    # I

    .line 130
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 131
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->onWindowTokenAssignLayer(Lcom/android/server/wm/WindowToken;Landroid/view/SurfaceControl$Transaction;I)Z

    move-result v0

    .line 130
    return v0
.end method

.method public removeChild(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 148
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->removeChild(Lcom/android/server/wm/Task;)V

    .line 149
    return-void
.end method

.method public resetBounds(Lcom/android/server/wm/Task;II)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "currentMode"    # I
    .param p3, "preferredWindowingMode"    # I

    .line 180
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 181
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->resetBounds(Lcom/android/server/wm/Task;II)V

    .line 182
    return-void
.end method

.method public saveActivityOptions(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 227
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 228
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->saveActivityOptions(Landroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/SafeActivityOptions;)V

    .line 229
    return-void
.end method

.method public setTryExitWindowingMode(Z)V
    .locals 1
    .param p1, "isExit"    # Z

    .line 113
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 114
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->setTryExitWindowingMode(Z)V

    .line 115
    return-void
.end method

.method public shouldInitializeChangeTransition(Lcom/android/server/wm/Task;I)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prevWinMode"    # I

    .line 152
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 153
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->shouldInitializeChangeTransition(Lcom/android/server/wm/Task;I)Z

    move-result v0

    .line 152
    return v0
.end method

.method public shouldSkipAcquireWakeLock(ILjava/lang/String;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 222
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 223
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->shouldSkipAcquireWakeLock(ILjava/lang/String;)Z

    move-result v0

    .line 222
    return v0
.end method

.method public shouldSkipAppFocusChanged(Lcom/android/server/wm/Task;)Z
    .locals 1
    .param p1, "newTask"    # Lcom/android/server/wm/Task;

    .line 118
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 119
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->shouldSkipAppFocusChanged(Lcom/android/server/wm/Task;)Z

    move-result v0

    .line 118
    return v0
.end method

.method public shouldStartChangeTransition(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "prevWinMode"    # I
    .param p2, "newWinMode"    # I
    .param p3, "prevBounds"    # Landroid/graphics/Rect;
    .param p4, "newBounds"    # Landroid/graphics/Rect;

    .line 169
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 170
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/wm/INtPopUpView;->shouldStartChangeTransition(IILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 169
    return v0
.end method

.method public skipChangeFocusOnPointerDownOutside(Lcom/android/server/wm/WindowState;FF)Z
    .locals 1
    .param p1, "focusWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 247
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 248
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtPopUpView;->skipChangeFocusOnPointerDownOutside(Lcom/android/server/wm/WindowState;FF)Z

    move-result v0

    .line 247
    return v0
.end method

.method public skipMoveHomeTaskForward(Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 242
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 243
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->skipMoveHomeTaskForward(Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 242
    return v0
.end method

.method public startActivityFromRecents(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 83
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 84
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtPopUpView;->startActivityFromRecents(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)Z

    move-result v0

    .line 83
    return v0
.end method

.method public startLockTaskMode(Lcom/android/server/wm/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 195
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_POP_UP_VIEW:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtPopUpView;

    .line 196
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtPopUpView;->startLockTaskMode(Lcom/android/server/wm/Task;)V

    .line 197
    return-void
.end method
