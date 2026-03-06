.class final Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;
.super Landroid/os/Handler;
.source "StorageStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nothing/server/StorageStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageStatusHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nothing/server/StorageStatusTracker;


# direct methods
.method public constructor <init>(Lcom/nothing/server/StorageStatusTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;->this$0:Lcom/nothing/server/StorageStatusTracker;

    .line 79
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/nothing/server/StorageStatusTracker$StorageStatusHandler;->this$0:Lcom/nothing/server/StorageStatusTracker;

    invoke-virtual {v0}, Lcom/nothing/server/StorageStatusTracker;->getAllStorageStatus()V

    .line 87
    nop

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
