.class Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;
.super Landroid/hardware/location/IContextHubTransactionCallback$Stub;
.source "ContextHubEndpointBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

.field final synthetic val$callback:Landroid/hardware/location/IContextHubTransactionCallback;

.field final synthetic val$message:Landroid/hardware/contexthub/HubMessage;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/contexthub/HubMessage;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$callback:Landroid/hardware/location/IContextHubTransactionCallback;

    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$message:Landroid/hardware/contexthub/HubMessage;

    iput p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$sessionId:I

    invoke-direct {p0}, Landroid/hardware/location/IContextHubTransactionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryResponse(ILjava/util/List;)V
    .locals 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    .local p2, "appStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    const-string v0, "ContextHubEndpointBroker"

    const-string v1, "Unexpected onQueryResponse callback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method public onTransactionComplete(I)V
    .locals 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$callback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V

    .line 429
    if-eqz p1, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send reliable message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$message:Landroid/hardware/contexthub/HubMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", closing session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->this$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;->val$sessionId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->-$$Nest$mnotifySessionClosedToBoth(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;IB)V

    .line 437
    :cond_0
    return-void
.end method
