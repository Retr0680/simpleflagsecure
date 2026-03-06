.class Lcom/android/server/location/contexthub/ContextHubEndpointManager;
.super Ljava/lang/Object;
.source "ContextHubEndpointManager.java"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;,
        Lcom/android/server/location/contexthub/ContextHubEndpointManager$Action;
    }
.end annotation


# static fields
.field public static final ACTION_REGISTERED:I = 0x0

.field public static final ACTION_UNREGISTERED:I = 0x1

.field private static final NUM_CLIENT_RECORDS:I = 0x14

.field private static final SERVICE_HUB_ID:J = 0x416e64726f696400L

.field public static final SERVICE_SESSION_RANGE:I = 0x400

.field private static final SERVICE_SESSION_RANGE_LENGTH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ContextHubEndpointManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field private final mEndpointLock:Ljava/lang/Object;

.field private final mEndpointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/location/contexthub/ContextHubEndpointBroker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

.field private mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field private mMaxSessionId:I

.field private mMinSessionId:I

.field private mNextEndpointId:J

.field private mNextSessionId:I

.field private final mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque<",
            "Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedSessionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionIdLock:Ljava/lang/Object;

.field private mSessionIdsValid:Z

.field private final mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;


# direct methods
.method public static synthetic $r8$lambda$OWRa1Jn5HYJRDs5lF1mTT5O2FIg(IIBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onMessageDeliveryStatusReceived$4(IIBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YzNH-jeYrQeazVxITaZzjFNUp8U(IBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onCloseEndpointSession$1(IBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJGOhns4Ixacuy38h8vf778rRUE(Lcom/android/server/location/contexthub/ContextHubEndpointManager;ILjava/lang/Byte;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzVmXdCoL_V7elGjwTC8L0QiIMY(ILcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onEndpointSessionOpenComplete$2(ILcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xkdvg5qEIF2gVUNpPPsZavfkKmc(ILandroid/hardware/contexthub/HubMessage;Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->lambda$onMessageReceived$3(ILandroid/hardware/contexthub/HubMessage;Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p3, "hubInfoRegistry"    # Lcom/android/server/location/contexthub/HubInfoRegistry;
    .param p4, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 181
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "contextHubProxy":Lcom/android/server/location/contexthub/IContextHubWrapper;
    .end local p3    # "hubInfoRegistry":Lcom/android/server/location/contexthub/HubInfoRegistry;
    .end local p4    # "transactionManager":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .local v1, "context":Landroid/content/Context;
    .local v2, "contextHubProxy":Lcom/android/server/location/contexthub/IContextHubWrapper;
    .local v3, "hubInfoRegistry":Lcom/android/server/location/contexthub/HubInfoRegistry;
    .local v4, "transactionManager":Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 187
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/HubInfoRegistry;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contextHubProxy"    # Lcom/android/server/location/contexthub/IContextHubWrapper;
    .param p3, "hubInfoRegistry"    # Lcom/android/server/location/contexthub/HubInfoRegistry;
    .param p4, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p5, "scheduledExecutorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    .line 91
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    .line 98
    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 112
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 124
    new-instance v0, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    .line 169
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 171
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    .line 172
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 173
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 174
    return-void
.end method

.method private getNewEndpointId()J
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 550
    iget-wide v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    const-wide/16 v3, 0x1

    sub-long v3, v1, v3

    iput-wide v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextEndpointId:J

    monitor-exit v0

    return-wide v1

    .line 551
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 548
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too many endpoints connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    throw v1

    .line 551
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z
    .locals 4
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/contexthub/ContextHubEndpointBroker;",
            ">;)Z"
        }
    .end annotation

    .line 522
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/location/contexthub/ContextHubEndpointBroker;>;"
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 523
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    invoke-virtual {v1, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    goto :goto_1

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ContextHubEndpointManager"

    const-string v3, "Exception while invoking callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 523
    :cond_0
    nop

    .line 531
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    goto :goto_0

    .line 532
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSessionIdAllocatedForService(I)Z
    .locals 1
    .param p1, "sessionId"    # I

    .line 345
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    if-ge p1, v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSessionIdRangeValid(II)Z
    .locals 1
    .param p1, "minId"    # I
    .param p2, "maxId"    # I

    .line 558
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$onCloseEndpointSession$1(IBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "reason"    # B
    .param p2, "broker"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 424
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    return-void
.end method

.method private static synthetic lambda$onEndpointSessionOpenComplete$2(ILcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "broker"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 434
    invoke-virtual {p1, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenComplete(I)V

    return-void
.end method

.method private synthetic lambda$onEndpointSessionOpenRequest$0(ILjava/lang/Byte;)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "error"    # Ljava/lang/Byte;

    .line 417
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    return-void
.end method

.method private static synthetic lambda$onMessageDeliveryStatusReceived$4(IIBLcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "sequenceNumber"    # I
    .param p2, "errorCode"    # B
    .param p3, "broker"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 462
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageDeliveryStatusReceived(IIB)V

    return-void
.end method

.method private static synthetic lambda$onMessageReceived$3(ILandroid/hardware/contexthub/HubMessage;Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p2, "broker"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 444
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method private onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;
    .locals 7
    .param p1, "sessionId"    # I
    .param p2, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .param p3, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .param p4, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;",
            "Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 374
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v0

    const-wide v2, 0x416e64726f696400L    # 1.5934355481615067E7

    cmp-long v0, v0, v2

    const/4 v1, 0x5

    .line 379
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 374
    const-string v2, "ContextHubEndpointManager"

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEndpointSessionOpenRequest: invalid destination hub ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 382
    .local v0, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    if-nez v0, :cond_1

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEndpointSessionOpenRequest: unknown destination endpoint ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 389
    :cond_1
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-virtual {v3, p3}, Lcom/android/server/location/contexthub/HubInfoRegistry;->getEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;)Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v3

    .line 390
    .local v3, "initiatorInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    if-nez v3, :cond_2

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEndpointSessionOpenRequest: unknown initiator endpoint ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {p3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 391
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 397
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdAllocatedForService(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEndpointSessionOpenRequest: invalid session ID, rejected: sessionId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 405
    :cond_3
    invoke-virtual {v0, p1, v3, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private sendMessageDeliveryStatus(IIB)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "messageSequenceNumber"    # I
    .param p3, "errorCode"    # B

    .line 563
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 564
    .local v0, "status":Landroid/hardware/contexthub/MessageDeliveryStatus;
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 565
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v1, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending message delivery status on session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubEndpointManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private unregisterHub()V
    .locals 3

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v0}, Landroid/hardware/contexthub/IEndpointCommunication;->unregister()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContextHubEndpointManager"

    const-string v2, "Failed to unregister from HAL on init failure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method getNumAvailableSessions()I
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    sub-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNumRegisteredClients()I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method halCloseEndpointSession(IB)V
    .locals 1
    .param p1, "sessionId"    # I
    .param p2, "halReason"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->closeEndpointSession(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    nop

    .line 482
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method halCloseEndpointSessionNoThrow(IB)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "halReason"    # B

    .line 487
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContextHubEndpointManager"

    const-string v2, "Exception while calling HAL closeEndpointSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-nez v0, :cond_4

    .line 203
    :try_start_0
    new-instance v0, Landroid/hardware/contexthub/HubInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubInfo;-><init>()V

    .line 204
    .local v0, "info":Landroid/hardware/contexthub/HubInfo;
    const-wide v1, 0x416e64726f696400L    # 1.5934355481615067E7

    iput-wide v1, v0, Landroid/hardware/contexthub/HubInfo;->hubId:J

    .line 206
    new-instance v1, Landroid/hardware/contexthub/ContextHubInfo;

    invoke-direct {v1}, Landroid/hardware/contexthub/ContextHubInfo;-><init>()V

    .line 207
    .local v1, "contextHubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->name:Ljava/lang/String;

    .line 208
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->vendor:Ljava/lang/String;

    .line 209
    const-string v2, ""

    iput-object v2, v1, Landroid/hardware/contexthub/ContextHubInfo;->toolchain:Ljava/lang/String;

    .line 210
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v1, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    .line 211
    invoke-static {v1}, Landroid/hardware/contexthub/HubInfo$HubDetails;->contextHubInfo(Landroid/hardware/contexthub/ContextHubInfo;)Landroid/hardware/contexthub/HubInfo$HubDetails;

    move-result-object v3

    iput-object v3, v0, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 212
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInfoRegistry:Lcom/android/server/location/contexthub/HubInfoRegistry;

    invoke-direct {v4, v5, p0}, Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback;-><init>(Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointLifecycleCallback;Lcom/android/server/location/contexthub/ContextHubHalEndpointCallback$IEndpointSessionCallback;)V

    invoke-virtual {v3, v4, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 215
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 222
    .end local v0    # "info":Landroid/hardware/contexthub/HubInfo;
    .end local v1    # "contextHubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    nop

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "range":[I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    const/16 v3, 0x400

    invoke-interface {v1, v3}, Landroid/hardware/contexthub/IEndpointCommunication;->requestSessionIdRange(I)[I

    move-result-object v1

    move-object v0, v1

    .line 227
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    :cond_0
    goto :goto_0

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID range: range array size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "error":Ljava/lang/String;
    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 231
    new-instance v2, Ljava/lang/InstantiationException;

    invoke-direct {v2, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "range":[I
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    .end local v1    # "error":Ljava/lang/String;
    .restart local v0    # "range":[I
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 238
    :goto_0
    nop

    .line 240
    aget v1, v0, v2

    iput v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    .line 241
    const/4 v1, 0x1

    aget v2, v0, v1

    iput v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    .line 242
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->isSessionIdRangeValid(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_2
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    iput v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 252
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 243
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid session ID range: max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .restart local v1    # "error":Ljava/lang/String;
    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 247
    new-instance v2, Ljava/lang/InstantiationException;

    invoke-direct {v2, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    .end local v1    # "error":Ljava/lang/String;
    :goto_1
    nop

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Exception while calling HAL requestSessionIdRange"

    .line 235
    .local v2, "error":Ljava/lang/String;
    const-string v3, "ContextHubEndpointManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterHub()V

    .line 237
    new-instance v3, Ljava/lang/InstantiationException;

    invoke-direct {v3, v2}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 216
    .end local v2    # "error":Ljava/lang/String;
    .local v0, "info":Landroid/hardware/contexthub/HubInfo;
    .local v1, "contextHubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    :cond_3
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Received null IEndpointCommunication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1

    .line 218
    .end local v0    # "info":Landroid/hardware/contexthub/HubInfo;
    .end local v1    # "contextHubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to register ContextHubService as message hub"

    .line 220
    .local v1, "error":Ljava/lang/String;
    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v2, Ljava/lang/InstantiationException;

    invoke-direct {v2, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "error":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCloseEndpointSession(IB)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # B

    .line 422
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda4;-><init>(IB)V

    .line 423
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    .line 425
    .local v0, "callbackInvoked":Z
    if-nez v0, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCloseEndpointSession: unknown session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    return-void
.end method

.method public onEndpointSessionOpenComplete(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 432
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 433
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    .line 435
    .local v0, "callbackInvoked":Z
    if-nez v0, :cond_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndpointSessionOpenComplete: unknown session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void
.end method

.method public onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .param p3, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .param p4, "serviceDescriptor"    # Ljava/lang/String;

    .line 414
    nop

    .line 415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->onEndpointSessionOpenRequestInternal(ILandroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 417
    .local v0, "errorOptional":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Byte;>;"
    new-instance v1, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 418
    return-void
.end method

.method onHalRestart()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 365
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onHalRestart()V

    .line 366
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method public onMessageDeliveryStatusReceived(IIB)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "sequenceNumber"    # I
    .param p3, "errorCode"    # B

    .line 458
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda3;-><init>(IIB)V

    .line 459
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    .line 464
    .local v0, "callbackInvoked":Z
    if-nez v0, :cond_0

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessageDeliveryStatusReceived: unknown session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    return-void
.end method

.method public onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;

    .line 442
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$$ExternalSyntheticLambda0;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 443
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->invokeCallbackForMatchingSession(ILjava/util/function/Consumer;)Z

    move-result v0

    .line 445
    .local v0, "callbackInvoked":Z
    if-nez v0, :cond_0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessageReceived: unknown session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    nop

    .line 450
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    .line 448
    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->sendMessageDeliveryStatus(IIB)V

    .line 454
    :cond_0
    return-void
.end method

.method registerEndpoint(Landroid/hardware/contexthub/HubEndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/contexthub/IContextHubEndpoint;
    .locals 13
    .param p1, "pendingEndpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    const-string v10, "ContextHubEndpointManager"

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdsValid:Z

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->getNewEndpointId()J

    move-result-wide v11

    .line 276
    .local v11, "endpointId":J
    nop

    .line 277
    const-wide v0, 0x416e64726f696400L    # 1.5934355481615067E7

    invoke-static {p1, v11, v12, v0, v1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;JJ)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v4

    .line 279
    .local v4, "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v8, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v3, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    move-object v1, v0

    .line 290
    .local v1, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V

    .line 291
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->attachDeathRecipient()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    nop

    .line 302
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, p0, v5, v6}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered endpoint with ID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {v1}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contexthub/IContextHubEndpoint;

    move-result-object v0

    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to attach death recipient to client"

    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    .line 299
    const/4 v2, 0x0

    return-object v2

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .end local v4    # "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    .end local v11    # "endpointId":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ContextHubEndpointManager failed to initialize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reserveSessionId()I
    .locals 6

    .line 314
    const/4 v0, -0x1

    .line 315
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 317
    .local v2, "maxCapacity":I
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v3, v2, :cond_4

    .line 321
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    move v0, v3

    .line 322
    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-gt v3, v4, :cond_3

    .line 323
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 324
    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_1

    .line 332
    .end local v2    # "maxCapacity":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 324
    .restart local v2    # "maxCapacity":I
    .restart local v3    # "i":I
    :cond_0
    add-int/lit8 v4, v0, 0x1

    :goto_1
    iput v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mNextSessionId:I

    .line 325
    goto :goto_3

    .line 328
    :cond_1
    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMaxSessionId:I

    if-ne v0, v4, :cond_2

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mMinSessionId:I

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x1

    :goto_2
    move v0, v4

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    .end local v3    # "i":I
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    nop

    .end local v2    # "maxCapacity":I
    monitor-exit v1

    .line 333
    return v0

    .line 318
    .restart local v2    # "maxCapacity":I
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Too many sessions reserved"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "id":I
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    throw v3

    .line 332
    .end local v2    # "maxCapacity":I
    .restart local v0    # "id":I
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method returnSessionId(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .line 338
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mSessionIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mReservedSessionIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 497
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 498
    .local v3, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    nop

    .end local v3    # "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    add-int/lit8 v1, v1, 0x1

    .line 501
    goto :goto_0

    .line 503
    :cond_0
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v2, "Registration History:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 507
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 508
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method unregisterEndpoint(J)V
    .locals 5
    .param p1, "endpointId"    # J

    .line 354
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mEndpointMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    .line 355
    .local v0, "broker":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->mRegistrationRecordDeque:Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;

    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;

    .line 357
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager$RegistrationRecord;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointManager;Ljava/lang/String;I)V

    .line 356
    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ConcurrentLinkedEvictingDeque;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    return-void
.end method
