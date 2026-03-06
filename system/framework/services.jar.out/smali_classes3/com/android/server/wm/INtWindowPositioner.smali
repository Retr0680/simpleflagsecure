.class public interface abstract Lcom/android/server/wm/INtWindowPositioner;
.super Ljava/lang/Object;
.source "INtWindowPositioner.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/wm/INtWindowPositioner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/android/server/wm/INtWindowPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/INtWindowPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/INtWindowPositioner;->DEFAULT:Lcom/android/server/wm/INtWindowPositioner;

    return-void
.end method


# virtual methods
.method public cancelInputEvent()V
    .locals 0

    .line 42
    return-void
.end method

.method public getClientCallback()Landroid/os/IBinder;
    .locals 1

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientChannel()Landroid/view/InputChannel;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputWindowHandle()Landroid/view/InputWindowHandle;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastDragScaleType()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public register(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/WindowState;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public startDrag(ZZFF)V
    .locals 0
    .param p1, "resize"    # Z
    .param p2, "preserveOrientation"    # Z
    .param p3, "startX"    # F
    .param p4, "startY"    # F

    .line 41
    return-void
.end method

.method public unregister()V
    .locals 0

    .line 40
    return-void
.end method

.method public updateTransferFocus(IZ)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "windowingMode"    # I
    .param p2, "resize"    # Z

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
