.class public interface abstract Lcom/android/server/wm/INtStartingWindowManager;
.super Ljava/lang/Object;
.source "INtStartingWindowManager.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtStartingWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/android/server/wm/INtStartingWindowManager$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtStartingWindowManager$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtStartingWindowManager;->DEFAULT:Lcom/android/server/wm/INtStartingWindowManager;

    return-void
.end method


# virtual methods
.method public addStartingWindow(Lcom/android/server/wm/ActivityRecord;IIILandroid/window/TaskSnapshot;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "type"    # I
    .param p3, "theme"    # I
    .param p4, "typeParameter"    # I
    .param p5, "snapshot"    # Landroid/window/TaskSnapshot;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public applyRotation(II)V
    .locals 0
    .param p1, "oldRotation"    # I
    .param p2, "rotation"    # I

    .line 51
    return-void
.end method

.method public hideStartingWindowIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 35
    return-void
.end method

.method public isLauncherComponentNonFinished(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isNtStartingWindowShowing(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteOpenedFromLauncher(Lcom/android/server/wm/Transition;)Z
    .locals 1
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onFirstWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 39
    return-void
.end method

.method public onPackageUninstalled(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 29
    return-void
.end method

.method public onPrepareSurfaces(Lcom/android/server/wm/Task;Z)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "show"    # Z

    .line 55
    return-void
.end method

.method public onResumeTopActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 59
    return-void
.end method

.method public onStartingWindowDrawn(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 40
    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;)V
    .locals 0
    .param p1, "transition"    # Lcom/android/server/wm/Transition;

    .line 52
    return-void
.end method

.method public onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/window/TransitionInfo;)V
    .locals 0
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

    .line 54
    .local p2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Transition$ChangeInfo;>;"
    return-void
.end method

.method public prepareWinSurfaceShown(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 41
    return-void
.end method

.method public shouldPauseImmediately(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSetReady(ZLcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "ready"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipOnFirstWindowDrawn(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 34
    return-void
.end method

.method public startActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 37
    return-void
.end method

.method public startActivityFromRecents(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "callingUid"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 38
    return-void
.end method
