.class public interface abstract Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;
.super Ljava/lang/Object;
.source "ContextHubHalEndpointCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IEndpointLifecycleCallback"
.end annotation


# virtual methods
.method public abstract onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
.end method

.method public abstract onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V
.end method
