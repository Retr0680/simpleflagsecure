.class public interface abstract Lcom/android/server/wm/INtAppLocker;
.super Ljava/lang/Object;
.source "INtAppLocker.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtAppLocker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/server/wm/INtAppLocker$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtAppLocker$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtAppLocker;->DEFAULT:Lcom/android/server/wm/INtAppLocker;

    return-void
.end method


# virtual methods
.method public checkLockApp(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "next"    # Lcom/android/server/wm/ActivityRecord;

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public checkUnlockApp(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public clearUnlockedApp()V
    .locals 0

    .line 36
    return-void
.end method

.method public clearUnlockedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 37
    return-void
.end method

.method public getRecentTasksCheck(II)V
    .locals 0
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 35
    return-void
.end method

.method public init(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0
    .param p1, "atmService"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 24
    return-void
.end method

.method public isAppLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public isAppLocked(Ljava/lang/String;ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isAppLockerActivity(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isTopAppLocked(Landroid/app/ActivityManager$RecentTaskInfo;I)Z
    .locals 1
    .param p1, "rti"    # Landroid/app/ActivityManager$RecentTaskInfo;
    .param p2, "topUserId"    # I

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public lockTopApp(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 30
    return-void
.end method

.method public onAppFocusChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .locals 0
    .param p1, "newFocus"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"    # Lcom/android/server/wm/Task;

    .line 26
    return-void
.end method

.method public onWindowingModeChanged(Lcom/android/server/wm/Task;I)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "prevWindowingMode"    # I

    .line 27
    return-void
.end method

.method public removeTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "reason"    # Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setKeyguardDoneLocked(Z)V
    .locals 0
    .param p1, "done"    # Z

    .line 25
    return-void
.end method
