.class Lcom/android/server/am/BroadcastQueueImpl$1;
.super Landroid/app/UidObserver;
.source "BroadcastQueueImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BroadcastQueueImpl;->start(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueueImpl;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueueImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1824
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChanged(IIJI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I

    .line 1828
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueueImpl;->-$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1829
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueImpl;

    invoke-static {v0}, Lcom/android/server/am/BroadcastQueueImpl;->-$$Nest$fgetmLocalHandler(Lcom/android/server/am/BroadcastQueueImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1830
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1831
    return-void
.end method
