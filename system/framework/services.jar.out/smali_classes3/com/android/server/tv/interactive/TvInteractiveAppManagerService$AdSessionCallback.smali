.class final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;
.super Landroid/media/tv/ad/ITvAdSessionCallback$Stub;
.source "TvInteractiveAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdSessionCallback"
.end annotation


# instance fields
.field private final mInputChannels:[Landroid/view/InputChannel;

.field private final mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

.field final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V
    .locals 0
    .param p2, "sessionState"    # Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;
    .param p3, "channels"    # [Landroid/view/InputChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4380
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdSessionCallback$Stub;-><init>()V

    .line 4381
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 4382
    iput-object p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    .line 4383
    return-void
.end method

.method private addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z
    .locals 8
    .param p1, "session"    # Landroid/media/tv/ad/ITvAdSession;

    .line 4535
    const-string v0, "TvInteractiveAppManagerService"

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4539
    nop

    .line 4541
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4542
    .local v2, "clientToken":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    move-result-object v3

    .line 4543
    .local v3, "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 4544
    .local v4, "clientState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
    if-nez v4, :cond_0

    .line 4545
    new-instance v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    iget-object v6, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7

    invoke-direct {v5, v6, v2, v7}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    move-object v4, v5

    .line 4547
    :try_start_1
    invoke-interface {v2, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4551
    nop

    .line 4552
    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->-$$Nest$fgetmClientStateMap(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4548
    :catch_0
    move-exception v5

    .line 4549
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "client process has already died"

    invoke-static {v0, v6, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4550
    return v1

    .line 4554
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->-$$Nest$fgetmSessionTokens(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4555
    const/4 v0, 0x1

    return v0

    .line 4536
    .end local v2    # "clientToken":Landroid/os/IBinder;
    .end local v3    # "userState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .end local v4    # "clientState":Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;
    :catch_1
    move-exception v2

    .line 4537
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "session process has already died"

    invoke-static {v0, v3, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4538
    return v1
.end method


# virtual methods
.method public onLayoutSurface(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 4411
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4416
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    goto :goto_2

    .line 4420
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "right":I
    .local v6, "bottom":I
    :try_start_2
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onLayoutSurface(IIIII)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4424
    goto :goto_1

    .line 4425
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 4422
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4425
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .restart local p1    # "left":I
    .restart local p2    # "top":I
    .restart local p3    # "right":I
    .restart local p4    # "bottom":I
    :catchall_1
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "right":I
    .restart local v6    # "bottom":I
    goto :goto_3

    .line 4422
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .restart local p1    # "left":I
    .restart local p2    # "top":I
    .restart local p3    # "right":I
    .restart local p4    # "bottom":I
    :catch_1
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object p1, v0

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "right":I
    .restart local v6    # "bottom":I
    :goto_0
    nop

    .line 4423
    .local p1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string p2, "TvInteractiveAppManagerService"

    const-string p3, "error in onLayoutSurface"

    invoke-static {p2, p3, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4425
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 4426
    return-void

    .line 4416
    .end local v3    # "left":I
    .end local v4    # "top":I
    .end local v5    # "right":I
    .end local v6    # "bottom":I
    .local p1, "left":I
    .restart local p2    # "top":I
    .restart local p3    # "right":I
    .restart local p4    # "bottom":I
    :cond_1
    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 4417
    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .restart local v3    # "left":I
    .restart local v4    # "top":I
    .restart local v5    # "right":I
    .restart local v6    # "bottom":I
    :goto_2
    monitor-exit v1

    return-void

    .line 4425
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onRequestCurrentChannelUri()V
    .locals 4

    .line 4447
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4451
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 4455
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentChannelUri(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4458
    goto :goto_0

    .line 4459
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4456
    :catch_0
    move-exception v1

    nop

    .line 4457
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onRequestCurrentChannelUri"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4459
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4460
    return-void

    .line 4452
    :goto_1
    monitor-exit v0

    return-void

    .line 4459
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onRequestCurrentTvInputId()V
    .locals 4

    .line 4481
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 4489
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentTvInputId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4492
    goto :goto_0

    .line 4493
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4490
    :catch_0
    move-exception v1

    nop

    .line 4491
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onRequestCurrentTvInputId"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4493
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4494
    return-void

    .line 4486
    :goto_1
    monitor-exit v0

    return-void

    .line 4493
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onRequestCurrentVideoBounds()V
    .locals 4

    .line 4430
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4434
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 4438
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ad/ITvAdClient;->onRequestCurrentVideoBounds(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4441
    goto :goto_0

    .line 4442
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4439
    :catch_0
    move-exception v1

    nop

    .line 4440
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onRequestCurrentVideoBounds"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4442
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4443
    return-void

    .line 4435
    :goto_1
    monitor-exit v0

    return-void

    .line 4442
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "data"    # [B

    .line 4499
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    goto :goto_2

    .line 4507
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .local v3, "id":Ljava/lang/String;
    .local v4, "algorithm":Ljava/lang/String;
    .local v5, "alias":Ljava/lang/String;
    .local v6, "data":[B
    :try_start_2
    invoke-interface/range {v2 .. v7}, Landroid/media/tv/ad/ITvAdClient;->onRequestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4511
    goto :goto_1

    .line 4512
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 4509
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .line 4512
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "data":[B
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "alias":Ljava/lang/String;
    .restart local p4    # "data":[B
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "algorithm":Ljava/lang/String;
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v6    # "data":[B
    goto :goto_3

    .line 4509
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "data":[B
    .restart local p1    # "id":Ljava/lang/String;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "alias":Ljava/lang/String;
    .restart local p4    # "data":[B
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object p1, v0

    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "algorithm":Ljava/lang/String;
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v6    # "data":[B
    :goto_0
    nop

    .line 4510
    .local p1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string p2, "TvInteractiveAppManagerService"

    const-string p3, "error in onRequestSigning"

    invoke-static {p2, p3, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4512
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v1

    .line 4513
    return-void

    .line 4503
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "algorithm":Ljava/lang/String;
    .end local v5    # "alias":Ljava/lang/String;
    .end local v6    # "data":[B
    .local p1, "id":Ljava/lang/String;
    .restart local p2    # "algorithm":Ljava/lang/String;
    .restart local p3    # "alias":Ljava/lang/String;
    .restart local p4    # "data":[B
    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 4504
    .end local p1    # "id":Ljava/lang/String;
    .end local p2    # "algorithm":Ljava/lang/String;
    .end local p3    # "alias":Ljava/lang/String;
    .end local p4    # "data":[B
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "algorithm":Ljava/lang/String;
    .restart local v5    # "alias":Ljava/lang/String;
    .restart local v6    # "data":[B
    :goto_2
    monitor-exit v1

    return-void

    .line 4512
    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public onRequestTrackInfoList()V
    .locals 4

    .line 4464
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 4472
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/tv/ad/ITvAdClient;->onRequestTrackInfoList(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4475
    goto :goto_0

    .line 4476
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4473
    :catch_0
    move-exception v1

    nop

    .line 4474
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onRequestTrackInfoList"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4476
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4477
    return-void

    .line 4469
    :goto_1
    monitor-exit v0

    return-void

    .line 4476
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onSessionCreated(Landroid/media/tv/ad/ITvAdSession;)V
    .locals 11
    .param p1, "session"    # Landroid/media/tv/ad/ITvAdSession;

    .line 4391
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4392
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fputmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;Landroid/media/tv/ad/ITvAdSession;)V

    .line 4393
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->addAdSessionTokenToClientStateLocked(Landroid/media/tv/ad/ITvAdSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4394
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmAdServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v7, v2, v0

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    goto :goto_0

    .line 4406
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 4401
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSessionToken(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mremoveAdSessionStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;I)V

    .line 4402
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmAdServiceId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$msendAdSessionTokenToClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 4405
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mInputChannels:[Landroid/view/InputChannel;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 4406
    monitor-exit v1

    .line 4407
    return-void

    .line 4406
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .line 4517
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-static {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4521
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSession(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    goto :goto_1

    .line 4525
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmClient(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;->mSessionState:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    invoke-static {v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->-$$Nest$fgetmSeq(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/media/tv/ad/ITvAdClient;->onTvAdSessionData(Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4528
    goto :goto_0

    .line 4529
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 4526
    :catch_0
    move-exception v1

    nop

    .line 4527
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    const-string v3, "error in onTvAdSessionData"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4529
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 4530
    return-void

    .line 4522
    :goto_1
    monitor-exit v0

    return-void

    .line 4529
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
