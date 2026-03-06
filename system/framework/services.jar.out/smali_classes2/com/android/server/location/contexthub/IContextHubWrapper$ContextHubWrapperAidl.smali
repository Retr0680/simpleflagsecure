.class Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
.super Lcom/android/server/location/contexthub/IContextHubWrapper;
.source "IContextHubWrapper.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/contexthub/IContextHubWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextHubWrapperAidl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
    }
.end annotation


# instance fields
.field private final mAidlCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleServiceRestartCallback:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mHub:Landroid/hardware/contexthub/IContextHub;

.field private final mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;


# direct methods
.method public static synthetic $r8$lambda$h6pTAwG0BsRGY9ERgLU9iNq6cc4(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->lambda$sendMessageToContextHub$0(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method constructor <init>(Landroid/hardware/contexthub/IContextHub;)V
    .locals 3
    .param p1, "hub"    # Landroid/hardware/contexthub/IContextHub;

    .line 544
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper;-><init>()V

    .line 451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Context Hub AIDL callback"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 463
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 466
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubTestModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->setHub(Landroid/hardware/contexthub/IContextHub;)V

    .line 546
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 547
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandler:Landroid/os/Handler;

    .line 548
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->linkWrapperToHubDeath()V

    .line 549
    return-void
.end method

.method private declared-synchronized getHub()Landroid/hardware/contexthub/IContextHub;
    .locals 1

    monitor-enter p0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static synthetic lambda$sendMessageToContextHub$0(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)Ljava/lang/Integer;
    .locals 2
    .param p0, "hostEndpointId"    # S
    .param p1, "message"    # Landroid/hardware/location/NanoAppMessage;
    .param p2, "hub"    # Landroid/hardware/contexthub/IContextHub;
    .param p3, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 769
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;

    move-result-object v0

    .line 771
    .local v0, "msg":Landroid/hardware/contexthub/ContextHubMessage;
    invoke-interface {p2, p3, v0}, Landroid/hardware/contexthub/IContextHub;->sendMessageToHub(ILandroid/hardware/contexthub/ContextHubMessage;)V

    .line 772
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 775
    .end local v0    # "msg":Landroid/hardware/contexthub/ContextHubMessage;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 773
    :catch_1
    move-exception v0

    goto :goto_1

    .line 775
    :goto_0
    nop

    .line 776
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 773
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    nop

    .line 774
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private linkWrapperToHubDeath()V
    .locals 4

    .line 984
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 985
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 986
    return-void

    .line 990
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    goto :goto_0

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v2, "IContextHubWrapper"

    const-string v3, "Context Hub AIDL service death receipt could not be linked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v1    # "exception":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onSettingChanged(BZ)V
    .locals 4
    .param p1, "setting"    # B
    .param p2, "enabled"    # Z

    .line 968
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 969
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 970
    return-void

    .line 974
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->onSettingChanged(BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    goto :goto_0

    .line 975
    :catch_0
    move-exception v1

    .line 976
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while sending setting update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IContextHubWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private declared-synchronized setHub(Landroid/hardware/contexthub/IContextHub;)V
    .locals 0
    .param p1, "hub"    # Landroid/hardware/contexthub/IContextHub;

    monitor-enter p0

    .line 556
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHub:Landroid/hardware/contexthub/IContextHub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 555
    .end local p0    # "this":Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;
    .end local p1    # "hub":Landroid/hardware/contexthub/IContextHub;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 561
    const-string v0, "Context Hub AIDL HAL died"

    const-string v1, "IContextHubWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Lcom/android/server/location/contexthub/IContextHubWrapper;->maybeConnectToAidlGetProxy()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->setHub(Landroid/hardware/contexthub/IContextHub;)V

    .line 564
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 566
    const-string v0, "Could not reconnect to Context Hub AIDL HAL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void

    .line 569
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->linkWrapperToHubDeath()V

    .line 571
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 574
    :cond_1
    const-string/jumbo v0, "mHandleServiceRestartCallback is not set"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 578
    return-void
.end method

.method public disableNanoapp(IJI)I
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 873
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 874
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 875
    return v1

    .line 879
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->disableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/4 v1, 0x0

    return v1

    .line 883
    :catch_0
    move-exception v2

    .line 884
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 881
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 882
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method

.method public enableNanoapp(IJI)I
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 856
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 857
    return v1

    .line 861
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->enableNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    const/4 v1, 0x0

    return v1

    .line 865
    :catch_0
    move-exception v2

    .line 866
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 863
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 864
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method

.method public getContextHubs()Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 582
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 583
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 587
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 588
    .local v1, "supportedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 589
    .local v2, "hubInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/location/ContextHubInfo;>;"
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->getContextHubs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/ContextHubInfo;

    .line 590
    .local v4, "hubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    new-instance v5, Landroid/hardware/location/ContextHubInfo;

    invoke-direct {v5, v4}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v5, v4, Landroid/hardware/contexthub/ContextHubInfo;->supportedPermissions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    nop

    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 592
    .local v8, "permission":Ljava/lang/String;
    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v8    # "permission":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 594
    .end local v4    # "hubInfo":Landroid/hardware/contexthub/ContextHubInfo;
    :cond_1
    goto :goto_0

    .line 595
    :cond_2
    new-instance v3, Landroid/util/Pair;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public getEndpoints()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 641
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 642
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 643
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 646
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubEndpointInfo;>;"
    nop

    .line 648
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->getEndpoints()Ljava/util/List;

    move-result-object v2

    .line 649
    .local v2, "halEndpointInfos":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/EndpointInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/EndpointInfo;

    .line 651
    .local v4, "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    new-instance v5, Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-direct {v5, v4}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/hardware/contexthub/EndpointInfo;)V

    .line 655
    .local v5, "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v4    # "halEndpointInfo":Landroid/hardware/contexthub/EndpointInfo;
    .end local v5    # "endpointInfo":Landroid/hardware/contexthub/HubEndpointInfo;
    goto :goto_0

    .line 661
    :cond_1
    return-object v1
.end method

.method public getHubs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/HubInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 600
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 604
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v1, "retVal":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/location/HubInfo;>;"
    invoke-interface {v0}, Landroid/hardware/contexthub/IContextHub;->getHubs()Ljava/util/List;

    move-result-object v2

    .line 607
    .local v2, "halHubs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/contexthub/HubInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contexthub/HubInfo;

    .line 610
    .local v4, "halHub":Landroid/hardware/contexthub/HubInfo;
    iget-object v5, v4, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    invoke-virtual {v5}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getTag()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHubs: invalid hub: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IContextHubWrapper"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    goto :goto_0

    .line 617
    :pswitch_0
    new-instance v5, Landroid/hardware/location/VendorHubInfo;

    iget-object v6, v4, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 618
    invoke-virtual {v6}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getVendorHubInfo()Landroid/hardware/contexthub/VendorHubInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/hardware/location/VendorHubInfo;-><init>(Landroid/hardware/contexthub/VendorHubInfo;)V

    .line 619
    .local v5, "vendorHubInfo":Landroid/hardware/location/VendorHubInfo;
    new-instance v6, Landroid/hardware/location/HubInfo;

    iget-wide v7, v4, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v6, v7, v8, v5}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/VendorHubInfo;)V

    .line 620
    .local v6, "hubInfo":Landroid/hardware/location/HubInfo;
    goto :goto_1

    .line 612
    .end local v5    # "vendorHubInfo":Landroid/hardware/location/VendorHubInfo;
    .end local v6    # "hubInfo":Landroid/hardware/location/HubInfo;
    :pswitch_1
    new-instance v5, Landroid/hardware/location/ContextHubInfo;

    iget-object v6, v4, Landroid/hardware/contexthub/HubInfo;->hubDetails:Landroid/hardware/contexthub/HubInfo$HubDetails;

    .line 613
    invoke-virtual {v6}, Landroid/hardware/contexthub/HubInfo$HubDetails;->getContextHubInfo()Landroid/hardware/contexthub/ContextHubInfo;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/hardware/contexthub/ContextHubInfo;)V

    .line 614
    .local v5, "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    new-instance v6, Landroid/hardware/location/HubInfo;

    iget-wide v7, v4, Landroid/hardware/contexthub/HubInfo;->hubId:J

    invoke-direct {v6, v7, v8, v5}, Landroid/hardware/location/HubInfo;-><init>(JLandroid/hardware/location/ContextHubInfo;)V

    .line 615
    .restart local v6    # "hubInfo":Landroid/hardware/location/HubInfo;
    nop

    .line 630
    .end local v5    # "contextHubInfo":Landroid/hardware/location/ContextHubInfo;
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v4    # "halHub":Landroid/hardware/contexthub/HubInfo;
    .end local v6    # "hubInfo":Landroid/hardware/location/HubInfo;
    goto :goto_0

    .line 636
    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPreloadedNanoappIds(I)[J
    .locals 5
    .param p1, "contextHubId"    # I

    .line 906
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 907
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 908
    return-object v1

    .line 912
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->getPreloadedNanoappIds(I)[J

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 913
    :catch_0
    move-exception v2

    .line 914
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getting preloaded nanoapp IDs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IContextHubWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-object v1
.end method

.method public loadNanoapp(ILandroid/hardware/location/NanoAppBinary;I)I
    .locals 4
    .param p1, "contextHubId"    # I
    .param p2, "binary"    # Landroid/hardware/location/NanoAppBinary;
    .param p3, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 818
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 819
    return v1

    .line 822
    :cond_0
    nop

    .line 823
    invoke-static {p2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;

    move-result-object v2

    .line 825
    .local v2, "aidlNanoAppBinary":Landroid/hardware/contexthub/NanoappBinary;
    :try_start_0
    invoke-interface {v0, p1, v2, p3}, Landroid/hardware/contexthub/IContextHub;->loadNanoapp(ILandroid/hardware/contexthub/NanoappBinary;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    const/4 v1, 0x0

    return v1

    .line 829
    :catch_0
    move-exception v3

    .line 830
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 827
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 828
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    return v3
.end method

.method public onAirplaneModeSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 708
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 709
    return-void
.end method

.method public onBtMainSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 724
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 725
    return-void
.end method

.method public onBtScanningSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 728
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 729
    return-void
.end method

.method public onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/hardware/contexthub/HostEndpointInfo;

    .line 733
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 734
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 735
    return-void

    .line 739
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    goto :goto_0

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onHostEndpointConnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IContextHubWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onHostEndpointDisconnected(S)V
    .locals 4
    .param p1, "hostEndpointId"    # S

    .line 747
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 748
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 749
    return-void

    .line 753
    :cond_0
    int-to-char v1, p1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/contexthub/IContextHub;->onHostEndpointDisconnected(C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    goto :goto_0

    .line 754
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onHostEndpointDisconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IContextHubWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onLocationSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 702
    return-void
.end method

.method public onMicrophoneSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 712
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 713
    return-void
.end method

.method public onWifiMainSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 716
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 717
    return-void
.end method

.method public onWifiScanningSettingChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 720
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->onSettingChanged(BZ)V

    .line 721
    return-void
.end method

.method public onWifiSettingChanged(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 705
    return-void
.end method

.method public queryNanoapps(I)I
    .locals 3
    .param p1, "contextHubId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 890
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 891
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 892
    return v1

    .line 896
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->queryNanoapps(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    const/4 v1, 0x0

    return v1

    .line 900
    :catch_0
    move-exception v2

    .line 901
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 898
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 899
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method

.method public registerCallback(ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V
    .locals 4
    .param p1, "contextHubId"    # I
    .param p2, "callback"    # Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;

    .line 940
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 941
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 942
    return-void

    .line 945
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    iput-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mHandleServiceRestartCallback:Ljava/lang/Runnable;

    .line 946
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;-><init>(Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;ILcom/android/server/location/contexthub/IContextHubWrapper$ICallback;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->registerExistingCallback(I)V

    .line 948
    return-void
.end method

.method public registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;
    .locals 2
    .param p1, "cb"    # Landroid/hardware/contexthub/IEndpointCallback;
    .param p2, "hubInfo"    # Landroid/hardware/contexthub/HubInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 670
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 671
    const/4 v1, 0x0

    return-object v1

    .line 677
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->registerEndpointHub(Landroid/hardware/contexthub/IEndpointCallback;Landroid/hardware/contexthub/HubInfo;)Landroid/hardware/contexthub/IEndpointCommunication;

    move-result-object v1

    return-object v1
.end method

.method public registerExistingCallback(I)V
    .locals 6
    .param p1, "contextHubId"    # I

    .line 920
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 921
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 922
    return-void

    .line 925
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mAidlCallbackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;

    .line 926
    .local v1, "callback":Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$ContextHubAidlCallback;
    const-string v2, "IContextHubWrapper"

    if-nez v1, :cond_1

    .line 927
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find existing callback to register for context hub ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void

    .line 933
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/hardware/contexthub/IContextHub;->registerCallback(ILandroid/hardware/contexthub/IContextHubCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    goto :goto_0

    .line 934
    :catch_0
    move-exception v3

    .line 935
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while registering callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public sendMessageDeliveryStatusToContextHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)I
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "status"    # Landroid/hardware/contexthub/MessageDeliveryStatus;

    .line 799
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 800
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 801
    return v1

    .line 805
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/hardware/contexthub/IContextHub;->sendMessageDeliveryStatusToHub(ILandroid/hardware/contexthub/MessageDeliveryStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    const/4 v1, 0x0

    return v1

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 807
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 808
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method

.method public sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I
    .locals 5
    .param p1, "hostEndpointId"    # S
    .param p2, "contextHubId"    # I
    .param p3, "message"    # Landroid/hardware/location/NanoAppMessage;

    .line 762
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 763
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    if-nez v0, :cond_0

    .line 764
    const/4 v1, 0x2

    return v1

    .line 767
    :cond_0
    new-instance v1, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p3, v0, p2}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl$$ExternalSyntheticLambda0;-><init>(SLandroid/hardware/location/NanoAppMessage;Landroid/hardware/contexthub/IContextHub;I)V

    .line 784
    .local v1, "sendMessage":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    move v3, v2

    .line 785
    .local v3, "useTestModeManager":Z
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mTestModeManager:Lcom/android/server/location/contexthub/ContextHubTestModeManager;

    invoke-virtual {v4, v1, p3}, Lcom/android/server/location/contexthub/ContextHubTestModeManager;->sendMessageToContextHub(Ljava/util/concurrent/Callable;Landroid/hardware/location/NanoAppMessage;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    goto :goto_0

    .line 793
    :cond_2
    return v2

    .line 788
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 789
    :catch_0
    move-exception v2

    .line 790
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    return v4
.end method

.method public setTestMode(Z)Z
    .locals 5
    .param p1, "enable"    # Z

    .line 951
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 952
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 953
    return v1

    .line 956
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->mIsTestModeEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 958
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/contexthub/IContextHub;->setTestMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    const/4 v1, 0x1

    return v1

    .line 960
    :catch_0
    move-exception v2

    .line 961
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while setting test mode (enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    if-eqz p1, :cond_1

    const-string/jumbo v4, "true"

    goto :goto_0

    :cond_1
    const-string v4, "false"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    const-string v4, "IContextHubWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    return v1
.end method

.method public supportsAirplaneModeSettingNotifications()Z
    .locals 1

    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBtSettingNotifications()Z
    .locals 1

    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLocationSettingNotifications()Z
    .locals 1

    .line 681
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMicrophoneSettingNotifications()Z
    .locals 1

    .line 693
    const/4 v0, 0x1

    return v0
.end method

.method public supportsWifiSettingNotifications()Z
    .locals 1

    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public unloadNanoapp(IJI)I
    .locals 3
    .param p1, "contextHubId"    # I
    .param p2, "nanoappId"    # J
    .param p4, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Lcom/android/server/location/contexthub/IContextHubWrapper$ContextHubWrapperAidl;->getHub()Landroid/hardware/contexthub/IContextHub;

    move-result-object v0

    .line 838
    .local v0, "hub":Landroid/hardware/contexthub/IContextHub;
    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 839
    return v1

    .line 843
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/hardware/contexthub/IContextHub;->unloadNanoapp(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    const/4 v1, 0x0

    return v1

    .line 847
    :catch_0
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 845
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    return v2
.end method
