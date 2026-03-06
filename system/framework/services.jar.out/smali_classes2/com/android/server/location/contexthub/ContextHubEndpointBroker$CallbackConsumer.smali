.class interface abstract Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;
.super Ljava/lang/Object;
.source "ContextHubEndpointBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CallbackConsumer"
.end annotation


# virtual methods
.method public abstract accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
