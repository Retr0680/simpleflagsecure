.class public Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;
.super Landroid/hardware/contexthub/IEndpointCallback$Stub;
.source "ContextHubHalEndpointCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;,
        Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;
    }
.end annotation


# instance fields
.field private final mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

.field private final mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;)V
    .locals 0
    .param p1, "endpointLifecycleCallback"    # Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;
    .param p2, "endpointSessionCallback"    # Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    .line 65
    invoke-direct {p0}, Landroid/hardware/contexthub/IEndpointCallback$Stub;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    .line 67
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    .line 68
    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    const-string v0, "df80fdbb6f95a8a2988bc72b7f08f891847b80eb"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    const/4 v0, 0x4

    return v0
.end method

.method public onCloseEndpointSession(IB)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "reason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onCloseEndpointSession(IB)V

    .line 108
    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .locals 1
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {v0, p1}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onEndpointSessionOpenComplete(I)V

    .line 113
    return-void
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "destination"    # Landroid/hardware/contexthub/EndpointId;
    .param p3, "initiator"    # Landroid/hardware/contexthub/EndpointId;
    .param p4, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v1, p2, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v3, p2, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    .line 99
    .local v0, "destinationId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    new-instance v1, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-wide v2, p3, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-wide v4, p3, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    .line 101
    .local v1, "initiatorId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {v2, p1, v0, v1, p4}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onEndpointStarted([Landroid/hardware/contexthub/EndpointInfo;)V
    .locals 4
    .param p1, "halEndpointInfos"    # [Landroid/hardware/contexthub/EndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 77
    .local v0, "endpointInfos":[Landroid/hardware/contexthub/HubEndpointInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 78
    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    aput-object v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 80
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    invoke-interface {v1, v0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;->onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V

    .line 81
    return-void
.end method

.method public onEndpointStopped([Landroid/hardware/contexthub/EndpointId;B)V
    .locals 4
    .param p1, "halEndpointIds"    # [Landroid/hardware/contexthub/EndpointId;
    .param p2, "reason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    array-length v0, p1

    new-array v0, v0, [Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 87
    .local v0, "endpointIds":[Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 88
    new-instance v2, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(Landroid/hardware/contexthub/EndpointId;)V

    aput-object v2, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 90
    .end local v1    # "i":I
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointLifecycleCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;

    invoke-interface {v1, v0, p2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;->onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V

    .line 91
    return-void
.end method

.method public onMessageDeliveryStatusReceived(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "messageDeliveryStatus"    # Landroid/hardware/contexthub/MessageDeliveryStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    iget v1, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    iget-byte v2, p2, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onMessageDeliveryStatusReceived(IIB)V

    .line 128
    return-void
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/Message;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHubMessage(Landroid/hardware/contexthub/Message;)Landroid/hardware/contexthub/HubMessage;

    move-result-object v0

    .line 118
    .local v0, "hubMessage":Landroid/hardware/contexthub/HubMessage;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;->mEndpointSessionCallback:Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;

    invoke-interface {v1, p1, v0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    .line 119
    return-void
.end method
