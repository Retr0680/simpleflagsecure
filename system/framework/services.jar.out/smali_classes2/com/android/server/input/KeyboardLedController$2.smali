.class Lcom/android/server/input/KeyboardLedController$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardLedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/KeyboardLedController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/input/KeyboardLedController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    .local v0, "streamType":I
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {v1}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 77
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/input/KeyboardLedController$2;->this$0:Lcom/android/server/input/KeyboardLedController;

    invoke-static {v2}, Lcom/android/server/input/KeyboardLedController;->-$$Nest$fgetmHandler(Lcom/android/server/input/KeyboardLedController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
