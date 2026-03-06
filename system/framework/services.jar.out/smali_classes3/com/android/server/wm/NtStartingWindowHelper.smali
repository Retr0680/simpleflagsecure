.class public Lcom/android/server/wm/NtStartingWindowHelper;
.super Ljava/lang/Object;
.source "NtStartingWindowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/NtStartingWindowHelper$LazyHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "NtStartingWindowHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/NtStartingWindowHelper;
    .locals 1

    .line 41
    invoke-static {}, Lcom/android/server/wm/NtStartingWindowHelper$LazyHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/wm/NtStartingWindowHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addStartingWindow(Lcom/android/server/wm/ActivityRecord;IIILandroid/window/TaskSnapshot;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "type"    # I
    .param p3, "theme"    # I
    .param p4, "typeParameter"    # I
    .param p5, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 51
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/INtStartingWindowManager;

    .line 52
    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2    # "type":I
    .end local p3    # "theme":I
    .end local p4    # "typeParameter":I
    .end local p5    # "snapshot":Landroid/window/TaskSnapshot;
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    .local v3, "type":I
    .local v4, "theme":I
    .local v5, "typeParameter":I
    .local v6, "snapshot":Landroid/window/TaskSnapshot;
    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/INtStartingWindowManager;->addStartingWindow(Lcom/android/server/wm/ActivityRecord;IIILandroid/window/TaskSnapshot;)Z

    move-result p1

    .line 51
    return p1
.end method

.method public applyRotation(II)V
    .locals 1
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I

    .line 107
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 108
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtStartingWindowManager;->applyRotation(II)V

    .line 109
    return-void
.end method

.method public hideStartingWindowIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 61
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 62
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->hideStartingWindowIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 63
    return-void
.end method

.method public isLauncherComponentNonFinished(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 143
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 144
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->isLauncherComponentNonFinished(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 143
    return v0
.end method

.method public isNtStartingWindowShowing(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 97
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 98
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->isNtStartingWindowShowing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 97
    return v0
.end method

.method public isRemoteOpenedFromLauncher(Lcom/android/server/wm/Transition;)Z
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 102
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 103
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->isRemoteOpenedFromLauncher(Lcom/android/server/wm/Transition;)Z

    move-result v0

    .line 102
    return v0
.end method

.method public onFirstWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 77
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 78
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->onFirstWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 79
    return-void
.end method

.method public onPackageUninstalled(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 46
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->onPackageUninstalled(Landroid/net/Uri;)V

    .line 47
    return-void
.end method

.method public onPrepareSurfaces(Lcom/android/server/wm/Task;Z)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "show"    # Z

    .line 123
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtStartingWindowManager;->onPrepareSurfaces(Lcom/android/server/wm/Task;Z)V

    .line 125
    return-void
.end method

.method public onResumeTopActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 133
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 134
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->onResumeTopActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 135
    return-void
.end method

.method public onStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 82
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 83
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->onStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V

    .line 84
    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 112
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 113
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->onTransactionReady(Lcom/android/server/wm/Transition;)V

    .line 114
    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;
    .param p3, "info"    # Landroid/window/TransitionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Transition;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/window/TransitionInfo;",
            ")V"
        }
    .end annotation

    .line 118
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 119
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtStartingWindowManager;->onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V

    .line 120
    return-void
.end method

.method public prepareWinSurfaceShown(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 87
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 88
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->prepareWinSurfaceShown(Lcom/android/server/wm/WindowState;)V

    .line 89
    return-void
.end method

.method public shouldPauseImmediately(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 138
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 139
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtStartingWindowManager;->shouldPauseImmediately(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 138
    return v0
.end method

.method public shouldSetReady(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "ready"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 92
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtStartingWindowManager;->shouldSetReady(ZLcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    .line 92
    return v0
.end method

.method public shouldSkipOnFirstWindowDrawn(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 128
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 129
    invoke-interface {v0, p1}, Lcom/android/server/wm/INtStartingWindowManager;->shouldSkipOnFirstWindowDrawn(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 128
    return v0
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl$Transaction;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 56
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 57
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/INtStartingWindowManager;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl$Transaction;)V

    .line 58
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 67
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtStartingWindowManager;->startActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;)V

    .line 69
    return-void
.end method

.method public startActivityFromRecents(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "callingUid"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 72
    sget-object v0, Lcom/nothing/server/INtExtServiceFactory$ExtType;->NT_STARTING_WINDOW_MANAGER:Lcom/nothing/server/INtExtServiceFactory$ExtType;

    invoke-static {v0}, Lcom/nothing/server/NtExtServiceFactory;->getOrCreate(Lcom/nothing/server/INtExtServiceFactory$ExtType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/INtStartingWindowManager;

    .line 73
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/INtStartingWindowManager;->startActivityFromRecents(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;)V

    .line 74
    return-void
.end method
