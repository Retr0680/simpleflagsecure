.class Lcom/android/server/location/contexthub/HubInfoRegistry;
.super Ljava/lang/Object;
.source "HubInfoRegistry.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HubInfoRegistry"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private final mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mEndpointDiscoveryCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHubEndpointInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHubsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$7-F02yP-nYvSK3Y5lp-W2N5HyHY(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$acquireWakeLock$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$QBoBT60ZQptf3kjxWZuPTaT2sc8(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$onEndpointStopped$1(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qrk1k42BYvbl0zwgh5utalM0iRo(Lcom/android/server/location/contexthub/HubInfoRegistry;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$releaseWakeLock$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$j4LJXTw6edBTK-za5okcRmvtqwc(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->lambda$onEndpointStarted$0(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubWrapper"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 148
    const-string v0, "HubInfoRegistry"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    .line 142
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    .line 149
    iput-object p2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 152
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 159
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 160
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-eqz v1, :cond_0

    .line 165
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 166
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 167
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 168
    return-void

    .line 161
    :cond_0
    const-string v2, "PowerManager was null"

    .line 162
    .local v2, "error":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Ljava/lang/InstantiationError;

    invoke-direct {v0, v2}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "error":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const-string v2, "Failed to update hub and endpoint cache"

    .line 155
    .restart local v2    # "error":Ljava/lang/String;
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    new-instance v0, Ljava/lang/InstantiationException;

    invoke-direct {v0, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acquireWakeLock()V
    .locals 1

    .line 387
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 391
    return-void
.end method

.method private checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 347
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 349
    .local v2, "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    invoke-static {v2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->-$$Nest$fgetmCallback(Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;)Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 352
    .end local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    goto :goto_0

    .line 350
    .restart local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback is already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/contexthub/HubInfoRegistry;
    .end local p1    # "callback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    throw v1

    .line 353
    .end local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    .restart local p0    # "this":Lcom/android/server/location/contexthub/HubInfoRegistry;
    .restart local p1    # "callback":Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpLocked(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 414
    const-string v0, "HubInfoRegistry"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 417
    const-string v0, "Hubs"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/HubInfo;

    .line 419
    .local v1, "hubInfo":Landroid/hardware/location/HubInfo;
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 420
    .end local v1    # "hubInfo":Landroid/hardware/location/HubInfo;
    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 423
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 425
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 426
    const-string v0, "Endpoints"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 428
    .local v1, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 429
    .end local v1    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    goto :goto_1

    .line 430
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 432
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 433
    return-void
.end method

.method private invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V
    .locals 8
    .param p1, "endpointInfos"    # [Landroid/hardware/contexthub/HubEndpointInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;",
            "[",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;)V"
        }
    .end annotation

    .line 367
    .local p2, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 369
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    .line 371
    .local v2, "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v3, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    .line 373
    .local v6, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {v2, v6}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->isMatch(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 374
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 383
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    .end local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    .end local v3    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    .end local v6    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 372
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    .restart local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    .restart local v3    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->acquireWakeLock()V

    .line 379
    nop

    .line 380
    invoke-virtual {v2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v4

    .line 381
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 379
    invoke-interface {p2, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    .end local v2    # "discoveryCallback":Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;
    .end local v3    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    goto :goto_0

    .line 369
    :cond_2
    nop

    .line 383
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$acquireWakeLock$2()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 390
    return-void
.end method

.method private static synthetic lambda$onEndpointStarted$0(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 3
    .param p0, "cb"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .param p1, "infoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 235
    :try_start_0
    invoke-interface {p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubInfoRegistry"

    const-string v2, "Exception while calling onEndpointsStarted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onEndpointStopped$1(BLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;[Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 3
    .param p0, "reason"    # B
    .param p1, "cb"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;
    .param p2, "infoList"    # [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 259
    nop

    .line 260
    :try_start_0
    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result v0

    .line 259
    invoke-interface {p1, p2, v0}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->onEndpointsStopped([Landroid/hardware/contexthub/HubEndpointInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubInfoRegistry"

    const-string v2, "Exception while calling onEndpointsStopped"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$releaseWakeLock$3()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HubInfoRegistry"

    const-string v2, "Releasing the wakelock fails - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private refreshCachedEndpoints()V
    .locals 6

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getEndpoints()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .local v0, "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    goto :goto_0

    .line 195
    .end local v0    # "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubInfoRegistry"

    const-string v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 200
    .local v0, "endpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 203
    .local v3, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    nop

    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_0
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private refreshCachedHubs()V
    .locals 3

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mContextHubWrapper:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->getHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .local v0, "hubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    goto :goto_0

    .line 181
    .end local v0    # "hubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "HubInfoRegistry"

    const-string v2, "RemoteException while getting Hub info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 186
    .local v0, "hubInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    :try_start_1
    iput-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    .line 188
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 394
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 404
    return-void
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;

    .line 407
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 409
    monitor-exit v0

    .line 410
    return-void

    .line 409
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findEndpoints(J)Ljava/util/List;
    .locals 6
    .param p1, "endpointIdQuery"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v0, "searchResult":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 272
    .local v3, "endpointId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 273
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 276
    .end local v3    # "endpointId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 275
    :cond_0
    :goto_1
    goto :goto_0

    .line 276
    :cond_1
    monitor-exit v1

    .line 277
    return-object v0

    .line 276
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public findEndpointsWithService(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "searchResult":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 287
    .local v3, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getServiceInfoCollection()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubServiceInfo;

    .line 288
    .local v5, "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    invoke-virtual {v5}, Landroid/hardware/contexthub/HubServiceInfo;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 289
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 293
    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v5    # "serviceInfo":Landroid/hardware/contexthub/HubServiceInfo;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 291
    .restart local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    :cond_0
    :goto_2
    goto :goto_1

    .line 287
    :cond_1
    nop

    .line 292
    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    goto :goto_0

    .line 293
    :cond_2
    monitor-exit v1

    .line 294
    return-object v0

    .line 293
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 2
    .param p1, "id"    # Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    .line 209
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubEndpointInfo;

    monitor-exit v0

    return-object v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHubs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubsInfo:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDiscoveryCallbackFinished()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->releaseWakeLock()V

    .line 343
    return-void
.end method

.method public onEndpointStarted([Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 6
    .param p1, "endpointInfos"    # [Landroid/hardware/contexthub/HubEndpointInfo;

    .line 224
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 226
    .local v3, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v4, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    nop

    .end local v3    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    new-instance v0, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    .line 240
    return-void

    .line 229
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onEndpointStopped([Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;B)V
    .locals 6
    .param p1, "endpointIds"    # [Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .param p2, "reason"    # B

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v0, "removedInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 248
    .local v4, "endpointId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    iget-object v5, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mHubEndpointInfos:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/contexthub/HubEndpointInfo;

    .line 249
    .local v5, "info":Landroid/hardware/contexthub/HubEndpointInfo;
    if-eqz v5, :cond_0

    .line 250
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    .end local v4    # "endpointId":Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .end local v5    # "info":Landroid/hardware/contexthub/HubEndpointInfo;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 247
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    nop

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/contexthub/HubEndpointInfo;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$$ExternalSyntheticLambda0;-><init>(B)V

    .line 255
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->invokeForMatchingEndpoints([Landroid/hardware/contexthub/HubEndpointInfo;Ljava/util/function/BiConsumer;)V

    .line 265
    return-void

    .line 253
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onHalRestart()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedHubs()V

    .line 218
    invoke-direct {p0}, Lcom/android/server/location/contexthub/HubInfoRegistry;->refreshCachedEndpoints()V

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerEndpointDiscoveryCallback(JLandroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 4
    .param p1, "endpointId"    # J
    .param p3, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 300
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p3, p1, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    goto :goto_0

    .line 308
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 305
    :catch_0
    move-exception v1

    nop

    .line 306
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "HubInfoRegistry"

    const-string v3, "RemoteException while adding discovery callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method registerEndpointDiscoveryCallback(Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 4
    .param p1, "serviceDescriptor"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 314
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/location/contexthub/HubInfoRegistry;->checkCallbackAlreadyRegistered(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    new-instance v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;-><init>(Lcom/android/server/location/contexthub/HubInfoRegistry;Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    goto :goto_0

    .line 323
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 320
    :catch_0
    move-exception v1

    nop

    .line 321
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "HubInfoRegistry"

    const-string v3, "RemoteException while adding discovery callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 324
    return-void

    .line 323
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unregisterEndpointDiscoveryCallback(Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    iget-object v0, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/HubInfoRegistry;->mEndpointDiscoveryCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;->getCallback()Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/contexthub/IContextHubEndpointDiscoveryCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 334
    goto :goto_0

    .line 337
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/HubInfoRegistry$DiscoveryCallback;>;"
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
