.class public interface abstract Lcom/android/server/wm/INtWindowManagerService;
.super Ljava/lang/Object;
.source "INtWindowManagerService.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtWindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/android/server/wm/INtWindowManagerService$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtWindowManagerService$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtWindowManagerService;->DEFAULT:Lcom/android/server/wm/INtWindowManagerService;

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wms"    # Lcom/android/server/wm/WindowManagerService;

    .line 24
    return-void
.end method

.method public isAppLocked(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public setMutedTask(IZ)Z
    .locals 1
    .param p1, "taskId"    # I
    .param p2, "isMute"    # Z

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public updateRotation(I)V
    .locals 0
    .param p1, "newRotation"    # I

    .line 27
    return-void
.end method
