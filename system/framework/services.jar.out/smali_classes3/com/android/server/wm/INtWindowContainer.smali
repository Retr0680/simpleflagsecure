.class public interface abstract Lcom/android/server/wm/INtWindowContainer;
.super Ljava/lang/Object;
.source "INtWindowContainer.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtWindowContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/android/server/wm/INtWindowContainer$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtWindowContainer$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtWindowContainer;->DEFAULT:Lcom/android/server/wm/INtWindowContainer;

    return-void
.end method


# virtual methods
.method public getFreezeBounds()Landroid/graphics/Rect;
    .locals 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getFreezerSkipAnim()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getNtPopUpViewInfo(I)Lcom/android/server/wm/Transition$ChangeInfo$NtPopUpViewInfo;
    .locals 1
    .param p1, "flags"    # I

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 45
    return-void
.end method

.method public getTaskWindowSurfaceInfo()Lcom/android/server/wm/INtTaskWindowSurfaceInfo;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/android/server/wm/WindowContainer;)V
    .locals 0
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 26
    return-void
.end method

.method public initTask(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 27
    return-void
.end method

.method public isFinishTopTask()Z
    .locals 1

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged()V
    .locals 0

    .line 28
    return-void
.end method

.method public onWindowAdd(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 30
    return-void
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 31
    return-void
.end method

.method public onWindowingModeChanged(I)V
    .locals 0
    .param p1, "preWindowMode"    # I

    .line 29
    return-void
.end method

.method public prepareTransition()V
    .locals 0

    .line 50
    return-void
.end method

.method public scheduleTransition()V
    .locals 0

    .line 52
    return-void
.end method

.method public scheduleTransition(Landroid/app/ActivityOptions;)V
    .locals 0
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .line 53
    return-void
.end method

.method public setFinishTopTask(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .line 49
    return-void
.end method

.method public setFreezerSkipAnim(Z)V
    .locals 0
    .param p1, "skipAnim"    # Z

    .line 38
    return-void
.end method

.method public setOrientation(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/server/wm/WindowContainer;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public setPreFreezedWindowingMode(I)Z
    .locals 1
    .param p1, "windowingMode"    # I

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public transitionFreeze(Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 51
    return-void
.end method
