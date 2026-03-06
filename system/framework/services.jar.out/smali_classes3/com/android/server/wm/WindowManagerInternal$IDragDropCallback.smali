.class public interface abstract Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDragDropCallback"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6yNQikD5pZ5UQHacgGeb_pDSRTc(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->lambda$registerInputChannel$0(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$registerInputChannel$0(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "service"    # Lcom/android/server/input/InputManagerService;
    .param p1, "sourceInputChannelToken"    # Landroid/os/IBinder;
    .param p2, "state"    # Lcom/android/server/wm/DragState;
    .param p3, "unused"    # Ljava/lang/Void;

    .line 386
    invoke-virtual {p2}, Lcom/android/server/wm/DragState;->getInputToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/InputManagerService;->startDragAndDrop(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 426
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 431
    return-void
.end method

.method public postCancelDragAndDrop()V
    .locals 0

    .line 421
    return-void
.end method

.method public postPerformDrag()V
    .locals 0

    .line 401
    return-void
.end method

.method public postReportDropResult()V
    .locals 0

    .line 411
    return-void
.end method

.method public preCancelDragAndDrop(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "dragToken"    # Landroid/os/IBinder;

    .line 416
    return-void
.end method

.method public prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z
    .locals 1
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchSource"    # I
    .param p4, "touchX"    # F
    .param p5, "touchY"    # F
    .param p6, "thumbCenterX"    # F
    .param p7, "thumbCenterY"    # F
    .param p8, "data"    # Landroid/content/ClipData;

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public preReportDropResult(Landroid/view/IWindow;Z)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 406
    return-void
.end method

.method public registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "state"    # Lcom/android/server/wm/DragState;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "service"    # Lcom/android/server/input/InputManagerService;
    .param p4, "sourceInputChannelToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DragState;",
            "Landroid/view/Display;",
            "Lcom/android/server/input/InputManagerService;",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p4, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;Lcom/android/server/wm/DragState;)V

    .line 385
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 384
    return-object v0
.end method
