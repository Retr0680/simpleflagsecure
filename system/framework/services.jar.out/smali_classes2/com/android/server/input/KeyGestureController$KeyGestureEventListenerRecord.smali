.class Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;
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
    name = "KeyGestureEventListenerRecord"
.end annotation


# instance fields
.field public final mListener:Landroid/hardware/input/IKeyGestureEventListener;

.field public final mPid:I

.field final synthetic this$0:Lcom/android/server/input/KeyGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/input/KeyGestureController;ILandroid/hardware/input/IKeyGestureEventListener;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "listener"    # Landroid/hardware/input/IKeyGestureEventListener;
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

    .line 1277
    iput-object p1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1278
    iput p2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    .line 1279
    iput-object p3, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    .line 1280
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1284
    invoke-static {}, Lcom/android/server/input/KeyGestureController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key gesture event listener for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyGestureController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->this$0:Lcom/android/server/input/KeyGestureController;

    iget v1, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/KeyGestureController;->-$$Nest$monKeyGestureEventListenerDied(Lcom/android/server/input/KeyGestureController;I)V

    .line 1288
    return-void
.end method

.method public onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/input/AidlKeyGestureEvent;

    .line 1292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mListener:Landroid/hardware/input/IKeyGestureEventListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IKeyGestureEventListener;->onKeyGestureEvent(Landroid/hardware/input/AidlKeyGestureEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to notify process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that key gesture event occurred, assuming it died."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyGestureController"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/input/KeyGestureController$KeyGestureEventListenerRecord;->binderDied()V

    .line 1298
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
