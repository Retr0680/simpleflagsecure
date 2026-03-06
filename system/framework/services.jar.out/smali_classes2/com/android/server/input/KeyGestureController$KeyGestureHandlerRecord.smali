.class Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;
.super Ljava/lang/Object;
.source "KeyGestureController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/KeyGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyGestureHandlerRecord"
.end annotation


# instance fields
.field public final mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

.field public final mPid:I

.field final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureHandler;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "keyGestureHandler"    # Landroid/hardware/input/IKeyGestureHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1396
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput p2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    .line 1398
    iput-object p3, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    .line 1399
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1403
    invoke-static {}, Lcom/android/server/input/KeyGestureController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture event handler for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$monKeyGestureHandlerRemoved(Lcom/android/server/input/KeyGestureController;I)V

    .line 1407
    return-void
.end method

.method public handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;
    .param p2, "focusedToken"    # Landroid/os/IBinder;

    .line 1411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mKeyGestureHandler:Landroid/hardware/input/IKeyGestureHandler;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IKeyGestureHandler;->handleKeyGesture(Landroid/hardware/input/AidlKeyGestureEvent;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    goto :goto_0

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send key gesture to process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyGestureController"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$KeyGestureHandlerRecord;->binderDied()V

    .line 1417
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
