.class public interface abstract Lcom/android/server/wm/INtAmService;
.super Ljava/lang/Object;
.source "INtAmService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtAmService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/server/wm/INtAmService$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtAmService$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtAmService;->DEFAULT:Lcom/android/server/wm/INtAmService;

    return-void
.end method


# virtual methods
.method public applyShowWhenLockedIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "keyguardShowing"    # Z

    .line 10
    return-void
.end method

.method public isPermissionBypassForPackage(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public notifyStartActivityAsUser(Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/wm/SafeActivityOptions;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/wm/SafeActivityOptions;

    .line 14
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .line 8
    return-void
.end method

.method public setLockScreenShown(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 9
    return-void
.end method
