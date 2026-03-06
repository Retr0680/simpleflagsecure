.class public interface abstract Lcom/nothing/server/ext/INtEventNotifier;
.super Ljava/lang/Object;
.source "INtEventNotifier.java"


# static fields
.field public static final DEFAULT:Lcom/nothing/server/ext/INtEventNotifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/nothing/server/ext/INtEventNotifier$1;

    invoke-direct {v0}, Lcom/nothing/server/ext/INtEventNotifier$1;-><init>()V

    sput-object v0, Lcom/nothing/server/ext/INtEventNotifier;->DEFAULT:Lcom/nothing/server/ext/INtEventNotifier;

    return-void
.end method


# virtual methods
.method public adjustInsetsForWindow(Lcom/android/server/wm/NtWmWrapper;Landroid/view/InsetsState;Landroid/content/pm/ActivityInfo;)Landroid/view/InsetsState;
    .locals 0
    .param p1, "window"    # Lcom/android/server/wm/NtWmWrapper;
    .param p2, "originalState"    # Landroid/view/InsetsState;
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;

    .line 32
    return-object p2
.end method

.method public logAbnormalResettEvents(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    return-void
.end method

.method public logBootEvents(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    return-void
.end method

.method public logSSREvents(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    return-void
.end method

.method public notifyAppFocusChanged(ZLcom/android/server/wm/NtWmWrapper;Lcom/android/server/wm/NtWmWrapper;)V
    .locals 0
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "focusedApp"    # Lcom/android/server/wm/NtWmWrapper;
    .param p3, "newTask"    # Lcom/android/server/wm/NtWmWrapper;

    .line 27
    return-void
.end method

.method public notifyFgsChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "started"    # Z

    .line 40
    return-void
.end method

.method public notifyKeyguardCrash()V
    .locals 0

    .line 39
    return-void
.end method

.method public notifyLockScreenUnlocked(Z)V
    .locals 0
    .param p1, "unlocked"    # Z

    .line 42
    return-void
.end method

.method public notifyOccludedChanged(Z)V
    .locals 0
    .param p1, "occluded"    # Z

    .line 29
    return-void
.end method

.method public notifyOnTaskMovedToFront(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 38
    return-void
.end method

.method public notifyOnTaskRemoved(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 37
    return-void
.end method

.method public notifyPopupWinChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "started"    # Z

    .line 41
    return-void
.end method

.method public notifyWindowingModeChanged(Lcom/android/server/wm/NtWmWrapper;I)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/NtWmWrapper;
    .param p2, "prevWindowingMode"    # I

    .line 30
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 36
    return-void
.end method

.method public setLockScreenShown(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 28
    return-void
.end method
