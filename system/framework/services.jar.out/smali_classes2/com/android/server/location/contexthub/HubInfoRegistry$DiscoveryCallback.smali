.class Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
.super Ljava/lang/Object;
.source "HubInfoRegistry.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/HubInfoRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoveryCallback"
.end annotation


# instance fields
.field private final mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

.field private final mEndpointId:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field private final mServiceDescriptor:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V
    .locals 2
    .param p1, "registry"    # Lcom/android/server/location/contexthub/HubInfoRegistry;
    .param p2, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .param p3, "endpointId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 82
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 83
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    .line 84
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    .line 85
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->attachDeathRecipient()V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V
    .locals 2
    .param p1, "registry"    # Lcom/android/server/location/contexthub/HubInfoRegistry;
    .param p2, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-object p1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 94
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    .line 96
    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    .line 97
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->attachDeathRecipient()V

    .line 98
    return-void
.end method

.method private attachDeathRecipient()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 128
    const-string v0, "HubInfoRegistry"

    const-string v1, "Binder died for discovery callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V

    .line 131
    return-void
.end method

.method public getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mCallback:Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    return-object v0
.end method

.method public isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 7
    .param p1, "info"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 109
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mBinderDied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "HubInfoRegistry"

    const-string v2, "Callback died, isMatch returning false"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return v1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mEndpointId:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubServiceInfo;

    .line 118
    .local v3, "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->mServiceDescriptor:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    return v2

    .line 118
    :cond_3
    nop

    .line 121
    .end local v3    # "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    goto :goto_0

    .line 123
    :cond_4
    return v1
.end method
