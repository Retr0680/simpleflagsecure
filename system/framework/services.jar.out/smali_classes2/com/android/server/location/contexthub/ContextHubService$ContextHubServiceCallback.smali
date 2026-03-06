.class Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;
.super Ljava/lang/Object;
.source "ContextHubService.java"

# interfaces
.implements Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextHubServiceCallback"
.end annotation


# instance fields
.field private final mContextHubId:I

.field final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public static synthetic $r8$lambda$ZZDPhxMtDLA-yjsYmjJcmGd2XOM(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->lambda$handleNanoappMessage$0(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0
    .param p2, "contextHubId"    # I
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

    .line 213
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    .line 215
    return-void
.end method

.method private synthetic lambda$handleNanoappMessage$0(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p1, "hostEndpointId"    # S
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p3, "nanoappPermissions"    # Ljava/util/List;
    .param p4, "messagePermissions"    # Ljava/util/List;

    .line 247
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "hostEndpointId":S
    .end local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local p3    # "nanoappPermissions":Ljava/util/List;
    .end local p4    # "messagePermissions":Ljava/util/List;
    .local v2, "hostEndpointId":S
    .local v3, "message":Landroid/hardware/location/NanoAppMessage;
    .local v4, "nanoappPermissions":Ljava/util/List;
    .local v5, "messagePermissions":Ljava/util/List;
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 249
    return-void
.end method


# virtual methods
.method public handleContextHubEvent(I)V
    .locals 2
    .param p1, "eventType"    # I

    .line 224
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V

    .line 225
    return-void
.end method

.method public handleMessageDeliveryStatus(Landroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 1
    .param p1, "messageDeliveryStatus"    # Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 275
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleMessageDeliveryStatusCallback(Lcom/android/server/location/contexthub/ContextHubService;Landroid/hardware/contexthub/MessageDeliveryStatus;)V

    .line 276
    return-void
.end method

.method public handleNanoappAbort(JI)V
    .locals 2
    .param p1, "nanoappId"    # J
    .param p3, "abortCode"    # I

    .line 229
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V

    .line 230
    return-void
.end method

.method public handleNanoappInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p1, "nanoappStateList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/NanoAppState;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V

    .line 235
    return-void
.end method

.method public handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "hostEndpointId"    # S
    .param p2, "message"    # Landroid/hardware/location/NanoAppMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p3, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "useTestModeManager":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmTestModeManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "hostEndpointId":S
    .end local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local p3    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "hostEndpointId":S
    .local v5, "message":Landroid/hardware/location/NanoAppMessage;
    .local v6, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    .line 246
    invoke-virtual {v1, v2, v5}, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->handleNanoappMessage(Ljava/lang/Runnable;Landroid/hardware/location/NanoAppMessage;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 245
    .end local v4    # "hostEndpointId":S
    .end local v5    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local v6    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "hostEndpointId":S
    .restart local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .restart local p3    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p4    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 250
    .end local p1    # "hostEndpointId":S
    .end local p2    # "message":Landroid/hardware/location/NanoAppMessage;
    .end local p3    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p4    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "hostEndpointId":S
    .restart local v5    # "message":Landroid/hardware/location/NanoAppMessage;
    .restart local v6    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    move-object v8, v6

    move v6, v4

    .end local v4    # "hostEndpointId":S
    .local v6, "hostEndpointId":S
    .local v8, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    move-object v9, v7

    move-object v7, v5

    .end local v5    # "message":Landroid/hardware/location/NanoAppMessage;
    .local v7, "message":Landroid/hardware/location/NanoAppMessage;
    .local v9, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v5, v3, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static/range {v4 .. v9}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    .line 253
    .end local v8    # "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "hostEndpointId":S
    .restart local v5    # "message":Landroid/hardware/location/NanoAppMessage;
    .local v6, "nanoappPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "messagePermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public handleServiceRestart()V
    .locals 4

    .line 257
    const-string v0, "Recovering from Context Hub HAL restart..."

    const-string v1, "ContextHubService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$minitExistingCallbacks(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmHubInfoRegistry(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/HubInfoRegistry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmHubInfoRegistry(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/HubInfoRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->onHalRestart()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmEndpointManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmEndpointManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->onHalRestart()V

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mresetSettings(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 266
    nop

    .line 267
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$fgetmClientManager(Lcom/android/server/location/contexthub/ContextHubService;)Lcom/android/server/location/contexthub/ContextHubClientManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    new-instance v3, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 270
    const-string v0, "Finished recovering from Context Hub HAL restart"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public handleTransactionResult(IZ)V
    .locals 2
    .param p1, "transactionId"    # I
    .param p2, "success"    # Z

    .line 219
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V

    .line 220
    return-void
.end method
