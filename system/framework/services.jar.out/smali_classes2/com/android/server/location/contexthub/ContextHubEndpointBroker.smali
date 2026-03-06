.class public Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
.super Landroid/hardware/contexthub/IContextHubEndpoint$Stub;
.source "ContextHubEndpointBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;,
        Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;
    }
.end annotation


# static fields
.field static final OPEN_SESSION_REQUEST_TIMEOUT_SECONDS:J = 0xaL

.field private static final RECEIVE_MSG_NOTE:Ljava/lang/String; = "ContextHubEndpointMessageDelivery"

.field private static final TAG:Ljava/lang/String; = "ContextHubEndpointBroker"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x1388L


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttributionTag:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

.field private final mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

.field private final mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

.field private final mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

.field private final mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

.field private mIsRegistered:Z

.field private final mOpenSessionLock:Ljava/lang/Object;

.field private final mPackageName:Ljava/lang/String;

.field private final mPid:I

.field private final mRegistrationLock:Ljava/lang/Object;

.field private final mSessionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field private final mUid:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$0MnjOblYAsLSXxetld0kGl6KqD4(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onCloseEndpointSession$0(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1_Sq13Ax0iPDidth5a-st16Jipc(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLockOnExit$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$7jQ2OuD3AqF04vtbBmMuuxwpJzk(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onEndpointSessionOpenRequest$3(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FdieIogE4BxLJhZ3eM5ccTTj9EE(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onMessageReceivedInternal$4(Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HWcxAELH4hGbJZpFXLx8FYELM3Q(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$releaseWakeLock$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$TeYeitRpnVnL937nMEKSkrgZI9k(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onMessageReceivedInternal$5(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gd_1mLftwue2U8OmWWZr7GtiZ-g(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$cleanupSessionResources$6(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qD2YtMhpFVreMM0IbmGZFywGCTM(ILandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onEndpointSessionOpenComplete$1(ILandroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uRha1yE4ml5y8xm29Co7CNs2W3g(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$acquireWakeLock$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$uZ6Y8HfPFXazSN-7Ce-TtTUzIB0(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->lambda$onEndpointSessionOpenRequest$2(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifySessionClosedToBoth(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;IB)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/IEndpointCommunication;Lcom/android/server/location/contexthub/ContextHubEndpointManager;Landroid/hardware/contexthub/EndpointInfo;Landroid/hardware/contexthub/IContextHubEndpointCallback;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hubInterface"    # Landroid/hardware/contexthub/IEndpointCommunication;
    .param p3, "endpointManager"    # Lcom/android/server/location/contexthub/ContextHubEndpointManager;
    .param p4, "halEndpointInfo"    # Landroid/hardware/contexthub/EndpointInfo;
    .param p5, "callback"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "transactionManager"    # Lcom/android/server/location/contexthub/ContextHubTransactionManager;
    .param p9, "sessionTimeoutExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 267
    invoke-direct {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 268
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    .line 270
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 271
    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {v0, p4}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    .line 272
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    .line 273
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    .line 274
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    .line 275
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 276
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 277
    iput-object p9, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 279
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    .line 280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    .line 282
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 283
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 285
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 286
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "ContextHubEndpointBroker"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 288
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 289
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .line 814
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 820
    return-void
.end method

.method private cleanupSessionResources(I)Z
    .locals 3
    .param p1, "sessionId"    # I

    .line 777
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    .line 779
    .local v1, "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    if-eqz v1, :cond_1

    .line 780
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isRemoteInitiated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->returnSessionId(I)V

    goto :goto_0

    .line 791
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 783
    .restart local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->forEachPendingReliableMessage(Ljava/util/function/Consumer;)V

    .line 788
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 790
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    monitor-exit v0

    return v2

    .line 791
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 4
    .param p1, "targetEndpointInfo"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 809
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v0

    .line 810
    .local v0, "requiredPermissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPid:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->hasPermissions(Landroid/content/Context;IILjava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method private invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z
    .locals 3
    .param p1, "consumer"    # Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;

    .line 856
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->acquireWakeLock()V

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;->accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    nop

    .line 864
    const/4 v0, 0x1

    return v0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ContextHubEndpointBroker"

    const-string v2, "RemoteException while calling endpoint callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    .line 862
    const/4 v1, 0x0

    return v1
.end method

.method private isRegistered()Z
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    monitor-exit v0

    return v1

    .line 870
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSessionActive(I)Z
    .locals 2
    .param p1, "sessionId"    # I

    .line 799
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 800
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 801
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$acquireWakeLock$7()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 816
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 819
    :cond_0
    return-void
.end method

.method private synthetic lambda$cleanupSessionResources$6(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "sequenceNumber"    # Ljava/lang/Integer;

    .line 785
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 786
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 785
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    .line 787
    return-void
.end method

.method private static synthetic lambda$onCloseEndpointSession$0(IBLandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 1
    .param p0, "sessionId"    # I
    .param p1, "reason"    # B
    .param p2, "consumer"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    nop

    .line 579
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toAppHubEndpointReason(B)I

    move-result v0

    .line 578
    invoke-interface {p2, p0, v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionClosed(II)V

    return-void
.end method

.method private static synthetic lambda$onEndpointSessionOpenComplete$1(ILandroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "consumer"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-interface {p1, p0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenComplete(I)V

    return-void
.end method

.method private synthetic lambda$onEndpointSessionOpenRequest$2(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onEndpointSessionOpenRequestTimeout(I)V

    return-void
.end method

.method private static synthetic lambda$onEndpointSessionOpenRequest$3(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .param p3, "consumer"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onMessageReceivedInternal$4(Landroid/hardware/contexthub/HubEndpointInfo;)V
    .locals 3
    .param p1, "remote"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping message from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic lambda$onMessageReceivedInternal$5(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .locals 0
    .param p0, "sessionId"    # I
    .param p1, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p2, "consumer"    # Landroid/hardware/contexthub/IContextHubEndpointCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 762
    invoke-interface {p2, p0, p1}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V

    return-void
.end method

.method private synthetic lambda$releaseWakeLock$8()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ContextHubEndpointBroker"

    const-string v2, "Releasing the wakelock fails - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 832
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$releaseWakeLockOnExit$9()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    goto :goto_0

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ContextHubEndpointBroker"

    const-string v2, "Releasing the wakelock for all acquisitions fails - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 843
    nop

    .line 846
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

.method private notePermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z
    .locals 8
    .param p1, "endpoint"    # Landroid/hardware/contexthub/HubEndpointInfo;

    .line 880
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mUid:I

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mAttributionTag:Ljava/lang/String;

    .line 885
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getRequiredPermissions()Ljava/util/Collection;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ContextHubEndpointMessageDelivery-0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    invoke-virtual {p1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 880
    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->notePermissions(Landroid/app/AppOpsManager;ILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private notifySessionClosedToBoth(IB)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "halReason"    # B

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifySessionClosedToBoth: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 903
    return-void
.end method

.method private onEndpointSessionOpenRequestTimeout(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 714
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    .line 716
    .local v1, "s":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    .line 719
    :cond_1
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEndpointSessionOpenRequestTimeout: clean up session, id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 723
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 724
    .end local v1    # "s":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 717
    .restart local v1    # "s":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_0
    monitor-exit v0

    return-void

    .line 724
    .end local v1    # "s":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B
    .locals 6
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;

    .line 728
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isSessionActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const-string v1, "ContextHubEndpointBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping message for inactive session (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    monitor-exit v0

    const/4 v0, 0x2

    return v0

    .line 767
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v1

    .line 739
    .local v1, "remote":Landroid/hardware/contexthub/HubEndpointInfo;
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v2, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isInReliableMessageHistory(Landroid/hardware/contexthub/HubMessage;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 740
    const-string v2, "ContextHubEndpointBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping duplicate message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    .line 745
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    nop

    .line 761
    :try_start_2
    new-instance v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda6;-><init>(ILandroid/hardware/contexthub/HubMessage;)V

    .line 762
    invoke-direct {p0, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result v2

    .line 763
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 764
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v4, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->addReliableMessageToHistory(Landroid/hardware/contexthub/HubMessage;)V

    .line 766
    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :cond_3
    monitor-exit v0

    return v3

    .line 756
    .end local v2    # "success":Z
    :catch_0
    move-exception v2

    nop

    .line 757
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "ContextHubEndpointBroker"

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    monitor-exit v0

    const/4 v0, 0x3

    return v0

    .line 767
    .end local v1    # "remote":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 823
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 833
    return-void
.end method

.method private releaseWakeLockOnExit()V
    .locals 1

    .line 836
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 847
    return-void
.end method


# virtual methods
.method attachDeathRecipient()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mContextHubEndpointCallback:Landroid/hardware/contexthub/IContextHubEndpointCallback;

    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHubEndpointCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 567
    return-void
.end method

.method public binderDied()V
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->unregister()V

    .line 494
    :cond_0
    return-void
.end method

.method public closeSession(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->closeSession_enforcePermission()V

    .line 330
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSession: sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    .line 337
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->toHalReason(I)B

    move-result v1

    .line 336
    invoke-virtual {v0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSession(IB)V

    .line 338
    return-void

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown session ID in closeSession: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Endpoint is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAssignedHubEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    return-object v0
.end method

.method hasSessionId(I)Z
    .locals 2
    .param p1, "sessionId"    # I

    .line 628
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCallbackFinished()V
    .locals 0

    .line 484
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->onCallbackFinished_enforcePermission()V

    .line 485
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLock()V

    .line 486
    return-void
.end method

.method onCloseEndpointSession(IB)V
    .locals 2
    .param p1, "sessionId"    # I
    .param p2, "reason"    # B

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown session ID in onCloseEndpointSession: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextHubEndpointBroker"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void

    .line 576
    :cond_0
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda4;-><init>(IB)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    .line 580
    return-void
.end method

.method onEndpointSessionOpenComplete(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 583
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    const-string v1, "ContextHubEndpointBroker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown session ID in onEndpointSessionOpenComplete: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    monitor-exit v0

    return-void

    .line 589
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    sget-object v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V

    .line 589
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    .line 592
    return-void

    .line 589
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onEndpointSessionOpenRequest(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)Ljava/util/Optional;
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p3, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 652
    invoke-direct {p0, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    const-string v0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEndpointSessionOpenRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have permission for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/16 v0, 0x9

    .line 660
    .local v0, "reason":B
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 661
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 665
    .end local v0    # "reason":B
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasSessionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    const/4 v1, 0x1

    .line 671
    .local v1, "existingSession":Z
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    .line 672
    .local v2, "existingSessionActive":Z
    const-string v3, "ContextHubEndpointBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEndpointSessionOpenRequest: Existing session ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    .end local v1    # "existingSession":Z
    .end local v2    # "existingSessionActive":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 680
    :cond_1
    const/4 v1, 0x0

    .line 681
    .restart local v1    # "existingSession":Z
    const/4 v2, 0x0

    .line 682
    .restart local v2    # "existingSessionActive":Z
    new-instance v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    const/4 v4, 0x1

    invoke-direct {v3, p2, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    .line 683
    .local v3, "pendingSession":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 684
    const-wide/16 v7, 0xa

    invoke-interface {v4, v5, v7, v8, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    .line 683
    invoke-virtual {v3, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionOpenTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    .line 688
    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    .end local v3    # "pendingSession":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_0
    if-eqz v1, :cond_3

    .line 692
    if-eqz v2, :cond_2

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->openSessionRequestComplete(I)V

    .line 697
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 691
    :cond_3
    nop

    .line 699
    .end local v1    # "existingSession":Z
    .end local v2    # "existingSessionActive":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda1;-><init>(ILandroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)V

    .line 702
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;)Z

    move-result v0

    .line 706
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 707
    .local v1, "reason":B
    if-nez v0, :cond_4

    .line 708
    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 710
    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    :goto_1
    return-object v2

    .line 699
    .end local v0    # "success":Z
    .end local v1    # "reason":B
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onHalRestart()V
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->register()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 640
    goto :goto_0

    .line 641
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 638
    :catch_0
    move-exception v1

    .line 639
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "ContextHubEndpointBroker"

    const-string v3, "RemoteException while calling HAL registerEndpoint"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 643
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 645
    .local v2, "id":I
    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onCloseEndpointSession(IB)V

    .line 643
    .end local v2    # "id":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 647
    .end local v0    # "i":I
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 643
    .restart local v0    # "i":I
    :cond_0
    nop

    .line 647
    .end local v0    # "i":I
    monitor-exit v1

    .line 648
    return-void

    .line 647
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 641
    :goto_3
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method onMessageDeliveryStatusReceived(IIB)V
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "sequenceNumber"    # I
    .param p3, "errorCode"    # B

    .line 612
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    .line 614
    .local v1, "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    goto :goto_1

    .line 618
    :cond_1
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isReliableMessagePending(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 619
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received delivery status for unknown seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    monitor-exit v0

    return-void

    .line 623
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 622
    .restart local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessageCompleted(I)V

    .line 623
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    if-nez p3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->onMessageDeliveryResponse(IZ)V

    .line 625
    return-void

    .line 615
    .restart local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_1
    :try_start_1
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received delivery status for invalid session: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    monitor-exit v0

    return-void

    .line 623
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onMessageReceived(ILandroid/hardware/contexthub/HubMessage;)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->onMessageReceivedInternal(ILandroid/hardware/contexthub/HubMessage;)B

    move-result v0

    .line 596
    .local v0, "errorCode":B
    if-eqz v0, :cond_2

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send message to endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", closing session"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextHubEndpointBroker"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->isResponseRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {p2}, Landroid/hardware/contexthub/HubMessage;->getMessageSequenceNumber()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->sendMessageDeliveryStatus(IIB)V

    goto :goto_1

    .line 601
    :cond_0
    nop

    .line 603
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 604
    const/16 v1, 0x9

    goto :goto_0

    .line 605
    :cond_1
    const/4 v1, 0x0

    .line 601
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    .line 608
    :cond_2
    :goto_1
    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 499
    const-string v0, "ContextHubEndpointBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOpChanged called with invalid package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 509
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 510
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v3

    .line 511
    .local v3, "target":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-direct {p0, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 512
    const/16 v4, 0x9

    invoke-direct {p0, v2, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V

    goto :goto_1

    .line 515
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v3    # "target":Landroid/hardware/contexthub/HubEndpointInfo;
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 508
    .restart local v1    # "i":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    nop

    .line 515
    .end local v1    # "i":I
    monitor-exit v0

    .line 517
    :goto_2
    return-void

    .line 515
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession(Landroid/hardware/contexthub/HubEndpointInfo;Ljava/lang/String;)I
    .locals 6
    .param p1, "destination"    # Landroid/hardware/contexthub/HubEndpointInfo;
    .param p2, "serviceDescriptor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSession_enforcePermission()V

    .line 301
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->hasEndpointPermissions(Landroid/hardware/contexthub/HubEndpointInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->reserveSessionId()I

    move-result v0

    .line 308
    .local v0, "sessionId":I
    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->convertHalEndpointInfo(Landroid/hardware/contexthub/HubEndpointInfo;)Landroid/hardware/contexthub/EndpointInfo;

    move-result-object v1

    .line 309
    .local v1, "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    const-string v2, "ContextHubEndpointBroker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openSession: sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;-><init>(Landroid/hardware/contexthub/HubEndpointInfo;Z)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v4, v1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    iget-object v5, v5, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    invoke-interface {v3, v0, v4, v5, p2}, Landroid/hardware/contexthub/IEndpointCommunication;->openEndpointSession(ILandroid/hardware/contexthub/EndpointId;Landroid/hardware/contexthub/EndpointId;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    nop

    .line 322
    :try_start_1
    monitor-exit v2

    return v0

    .line 323
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 316
    :catch_0
    move-exception v3

    nop

    .line 317
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ContextHubEndpointBroker"

    const-string v5, "Exception while calling HAL openEndpointSession"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 319
    nop

    .end local v0    # "sessionId":I
    .end local v1    # "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .end local p1    # "destination":Landroid/hardware/contexthub/HubEndpointInfo;
    .end local p2    # "serviceDescriptor":Ljava/lang/String;
    throw v3

    .line 323
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "sessionId":I
    .restart local v1    # "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .restart local p1    # "destination":Landroid/hardware/contexthub/HubEndpointInfo;
    .restart local p2    # "serviceDescriptor":Ljava/lang/String;
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 303
    .end local v0    # "sessionId":I
    .end local v1    # "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient permission to open a session with endpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Endpoint is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSessionRequestComplete(I)V
    .locals 5
    .param p1, "sessionId"    # I

    .line 371
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->openSessionRequestComplete_enforcePermission()V

    .line 372
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    .local v1, "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    if-eqz v1, :cond_0

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v2, p1}, Landroid/hardware/contexthub/IEndpointCommunication;->endpointSessionOpenComplete(I)V

    .line 380
    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->cancelSessionOpenTimeoutFuture()V

    .line 381
    sget-object v2, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;->ACTIVE:Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;

    invoke-virtual {v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setSessionState(Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session$SessionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    goto :goto_0

    .line 385
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 382
    .restart local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :catch_0
    move-exception v2

    nop

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ContextHubEndpointBroker"

    const-string v4, "Exception while calling endpointSessionOpenComplete"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 386
    return-void

    .line 375
    .restart local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openSessionRequestComplete for invalid session id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .end local p1    # "sessionId":I
    throw v2

    .line 385
    .end local v1    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .restart local p1    # "sessionId":I
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method register()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    const-string v1, "ContextHubEndpointBroker"

    const-string v2, "Attempting to register when already registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v1, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->registerEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V

    .line 560
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z

    .line 562
    :goto_0
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendMessage(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/location/IContextHubTransactionCallback;)V
    .locals 9
    .param p1, "sessionId"    # I
    .param p2, "message"    # Landroid/hardware/contexthub/HubMessage;
    .param p3, "callback"    # Landroid/hardware/location/IContextHubTransactionCallback;

    .line 392
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessage_enforcePermission()V

    .line 393
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    move-object v2, v0

    .line 395
    .local v2, "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createHalMessage(Landroid/hardware/contexthub/HubMessage;)Landroid/hardware/contexthub/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v0

    .line 405
    .local v6, "halMessage":Landroid/hardware/contexthub/Message;
    if-nez p3, :cond_0

    .line 407
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v0, p1, v6}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageToEndpoint(ILandroid/hardware/contexthub/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :goto_0
    move v5, p1

    goto :goto_1

    .line 461
    .end local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .end local v6    # "halMessage":Landroid/hardware/contexthub/Message;
    :catchall_0
    move-exception v0

    move v5, p1

    goto/16 :goto_2

    .line 408
    .restart local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .restart local v6    # "halMessage":Landroid/hardware/contexthub/Message;
    :catch_0
    move-exception v0

    nop

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "ContextHubEndpointBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while sending message on session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", closing session"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->notifySessionClosedToBoth(IB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 418
    :cond_0
    :try_start_3
    new-instance v8, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;

    invoke-direct {v8, p0, p3, p2, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/contexthub/HubMessage;I)V

    .line 439
    .local v8, "wrappedCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v7, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 440
    move v5, p1

    .end local p1    # "sessionId":I
    .local v5, "sessionId":I
    :try_start_4
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createSessionMessageTransaction(Landroid/hardware/contexthub/IEndpointCommunication;ILandroid/hardware/contexthub/Message;Ljava/lang/String;Landroid/hardware/location/IContextHubTransactionCallback;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 447
    .local p1, "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    .line 448
    invoke-virtual {p1}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->getMessageSequenceNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->setReliableMessagePending(I)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 459
    goto :goto_1

    .line 461
    .end local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .end local v6    # "halMessage":Landroid/hardware/contexthub/Message;
    .end local v8    # "wrappedCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 449
    .restart local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .restart local v6    # "halMessage":Landroid/hardware/contexthub/Message;
    .restart local v8    # "wrappedCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .restart local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :catch_1
    move-exception v0

    nop

    .line 450
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v3, "ContextHubEndpointBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to add a transaction in sendMessageToEndpoint (session ID = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->onTransactionComplete(I)V

    .line 461
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .end local v6    # "halMessage":Landroid/hardware/contexthub/Message;
    .end local v8    # "wrappedCallback":Landroid/hardware/location/IContextHubTransactionCallback;
    .end local p1    # "transaction":Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
    :goto_1
    monitor-exit v1

    .line 462
    return-void

    .line 461
    .end local v5    # "sessionId":I
    .local p1, "sessionId":I
    :catchall_2
    move-exception v0

    move v5, p1

    .end local p1    # "sessionId":I
    .restart local v5    # "sessionId":I
    goto :goto_2

    .line 400
    .end local v5    # "sessionId":I
    .restart local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .restart local p1    # "sessionId":I
    :cond_1
    move v5, p1

    .end local p1    # "sessionId":I
    .restart local v5    # "sessionId":I
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage called on inactive session (id= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v5    # "sessionId":I
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .end local p2    # "message":Landroid/hardware/contexthub/HubMessage;
    .end local p3    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    throw p1

    .line 396
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .restart local p1    # "sessionId":I
    .restart local p2    # "message":Landroid/hardware/contexthub/HubMessage;
    .restart local p3    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :cond_2
    move v5, p1

    .end local p1    # "sessionId":I
    .restart local v5    # "sessionId":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendMessage for invalid session id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "sessionId":I
    .end local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .end local p2    # "message":Landroid/hardware/contexthub/HubMessage;
    .end local p3    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    throw p1

    .line 461
    .end local v2    # "info":Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;
    .restart local v5    # "sessionId":I
    .restart local p0    # "this":Lcom/android/server/location/contexthub/ContextHubEndpointBroker;
    .restart local p2    # "message":Landroid/hardware/contexthub/HubMessage;
    .restart local p3    # "callback":Landroid/hardware/location/IContextHubTransactionCallback;
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public sendMessageDeliveryStatus(IIB)V
    .locals 4
    .param p1, "sessionId"    # I
    .param p2, "messageSeqNumber"    # I
    .param p3, "errorCode"    # B

    .line 467
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->sendMessageDeliveryStatus_enforcePermission()V

    .line 468
    new-instance v0, Landroid/hardware/contexthub/MessageDeliveryStatus;

    invoke-direct {v0}, Landroid/hardware/contexthub/MessageDeliveryStatus;-><init>()V

    .line 469
    .local v0, "status":Landroid/hardware/contexthub/MessageDeliveryStatus;
    iput p2, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->messageSequenceNumber:I

    .line 470
    iput-byte p3, v0, Landroid/hardware/contexthub/MessageDeliveryStatus;->errorCode:B

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    invoke-interface {v1, p1, v0}, Landroid/hardware/contexthub/IEndpointCommunication;->sendMessageDeliveryStatusToEndpoint(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    goto :goto_0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending message delivery status on session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubEndpointBroker"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 479
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 522
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 525
    :try_start_0
    const-string/jumbo v2, "wakelock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 527
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 528
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v1, " sessions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 533
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 535
    .local v3, "id":I
    add-int/lit8 v4, v1, 0x1

    .line 536
    .local v4, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", remote:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    .line 542
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;

    invoke-virtual {v6}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$Session;->getRemoteEndpointInfo()Landroid/hardware/contexthub/HubEndpointInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 536
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    nop

    .end local v3    # "id":I
    .end local v4    # "count":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 545
    .end local v1    # "i":I
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 545
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 526
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public unregister()V
    .locals 5

    .line 343
    invoke-super {p0}, Landroid/hardware/contexthub/IContextHubEndpoint$Stub;->unregister_enforcePermission()V

    .line 344
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mOpenSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mSessionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 348
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v2, v4}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->halCloseEndpointSessionNoThrow(IB)V

    .line 349
    invoke-direct {p0, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->cleanupSessionResources(I)Z

    .line 346
    nop

    .end local v2    # "id":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 351
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 346
    .restart local v1    # "i":I
    :cond_0
    nop

    .line 351
    .end local v1    # "i":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mRegistrationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    const-string v0, "ContextHubEndpointBroker"

    const-string v2, "Attempting to unregister when already unregistered"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v1

    return-void

    .line 363
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 357
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mIsRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 359
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHubInterface:Landroid/hardware/contexthub/IEndpointCommunication;

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mHalEndpointInfo:Landroid/hardware/contexthub/EndpointInfo;

    invoke-interface {v0, v2}, Landroid/hardware/contexthub/IEndpointCommunication;->unregisterEndpoint(Landroid/hardware/contexthub/EndpointInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    nop

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "ContextHubEndpointBroker"

    const-string v3, "RemoteException while calling HAL unregisterEndpoint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointManager:Lcom/android/server/location/contexthub/ContextHubEndpointManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->mEndpointInfo:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo;->getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/contexthub/ContextHubEndpointManager;->unregisterEndpoint(J)V

    .line 365
    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->releaseWakeLockOnExit()V

    .line 366
    return-void

    .line 363
    :goto_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 351
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
