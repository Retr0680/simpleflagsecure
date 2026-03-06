.class public interface abstract Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;
.super Ljava/lang/Object;
.source "ContextHubHalEndpointCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEndpointSessionCallback"
.end annotation


# virtual methods
.method public abstract onCloseEndpointSession(IB)V
.end method

.method public abstract onEndpointSessionOpenComplete(I)V
.end method

.method public abstract onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V
.end method

.method public abstract onMessageDeliveryStatusReceived(IIB)V
.end method

.method public abstract onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
.end method
