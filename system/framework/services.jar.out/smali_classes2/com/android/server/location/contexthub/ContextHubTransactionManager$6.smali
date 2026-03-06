.class Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;
.super Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.source "ContextHubTransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field final synthetic val$message:Landroid/hardware/contexthub/Message;

.field final synthetic val$sessionId:I

.field final synthetic val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubTransactionManager;IILjava/lang/String;IILandroid/hardware/contexthub/Message;Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p2, "id"    # I
    .param p3, "type"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "messageSequenceNumber"    # I
    .param p6, "ownerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 454
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iput p9, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$sessionId:I

    iput-object p10, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    move p7, p6

    move p6, p5

    move-object p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p0

    .end local p2    # "id":I
    .local p3, "id":I
    .local p4, "type":I
    .local p5, "packageName":Ljava/lang/String;
    .local p6, "messageSequenceNumber":I
    .local p7, "ownerId":I
    invoke-direct/range {p2 .. p7}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;-><init>(IILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method onTransact()I
    .locals 3

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v1

    iput v1, v0, Landroid/hardware/contexthub/Message;->sequenceNumber:I

    .line 459
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$hubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$sessionId:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$message:Landroid/hardware/contexthub/Message;

    invoke-interface {v0, v1, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    const/4 v0, 0x0

    return v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while trying to send a session message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    const/4 v1, 0x1

    return v1
.end method

.method onTransactionComplete(I)V
    .locals 3
    .param p1, "result"    # I

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubTransactionManager$6;->val$transactionCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubTransactionCallback;->onTransactionComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubTransactionManager"

    const-string v2, "RemoteException while calling client onTransactionComplete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
