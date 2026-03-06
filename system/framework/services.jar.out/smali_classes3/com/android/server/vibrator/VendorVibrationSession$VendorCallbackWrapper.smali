.class final Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VendorVibrationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VendorCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsFinished:Z

.field private mIsFinishing:Z

.field private mIsStarted:Z


# direct methods
.method public static synthetic $r8$lambda$DzFVzhnn9_Dg1V8XR9BzA5RP8LY(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyStarted$0(Landroid/os/vibrator/IVibrationSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OCz4DcuEH-TvDslMxr5ilStYYs4(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyFinishing$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X_vfAw8b320msHKFfyL3-r3ZSgw(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->lambda$notifyFinished$2(Lcom/android/server/vibrator/VibrationSession$Status;)V

    return-void
.end method

.method constructor <init>(Landroid/os/vibrator/IVibrationSessionCallback;Landroid/os/Handler;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/vibrator/IVibrationSessionCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    .line 439
    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 440
    return-void
.end method

.method private synthetic lambda$notifyFinished$2(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 3
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-static {p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->toSessionStatus(Lcom/android/server/vibrator/VibrationSession$Status;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Error notifying vendor session finished"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyFinishing$1()V
    .locals 3

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->onFinishing()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Error notifying vendor session is finishing"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private synthetic lambda$notifyStarted$0(Landroid/os/vibrator/IVibrationSession;)V
    .locals 3
    .param p1, "session"    # Landroid/os/vibrator/IVibrationSession;

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0, p1}, Landroid/os/vibrator/IVibrationSessionCallback;->onStarted(Landroid/os/vibrator/IVibrationSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Error notifying vendor session started"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static toSessionStatus(Lcom/android/server/vibrator/VibrationSession$Status;)I
    .locals 2
    .param p0, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    .line 510
    sget-object v0, Lcom/android/server/vibrator/VendorVibrationSession$1;->$SwitchMap$com$android$server$vibrator$VibrationSession$Status:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 527
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 523
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 518
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 514
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 512
    :pswitch_4
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method declared-synchronized getBinderToken()Landroid/os/IBinder;
    .locals 1

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized linkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .locals 4
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    monitor-enter p0

    .line 448
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v1}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    nop

    .line 453
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 447
    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    .end local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 449
    .restart local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v1

    nop

    .line 450
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "VendorVibrationSession"

    const-string v3, "Error linking session to token death"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    monitor-exit p0

    return v0

    .line 447
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized notifyFinished(Lcom/android/server/vibrator/VibrationSession$Status;)V
    .locals 2
    .param p1, "status"    # Lcom/android/server/vibrator/VibrationSession$Status;

    monitor-enter p0

    .line 494
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 495
    monitor-exit p0

    return-void

    .line 497
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    .line 498
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Lcom/android/server/vibrator/VibrationSession$Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    .line 493
    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    .end local p1    # "status":Lcom/android/server/vibrator/VibrationSession$Status;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized notifyFinishing()V
    .locals 2

    monitor-enter p0

    .line 479
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsFinishing:Z

    .line 484
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 478
    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 481
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 478
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized notifyStarted(Landroid/os/vibrator/IVibrationSession;)V
    .locals 2
    .param p1, "session"    # Landroid/os/vibrator/IVibrationSession;

    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 466
    monitor-exit p0

    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mIsStarted:Z

    .line 469
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;Landroid/os/vibrator/IVibrationSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 464
    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    .end local p1    # "session":Landroid/os/vibrator/IVibrationSession;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 3
    .param p1, "recipient"    # Landroid/os/IBinder$DeathRecipient;

    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;->mCallback:Landroid/os/vibrator/IVibrationSessionCallback;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    goto :goto_0

    .line 457
    .end local p0    # "this":Lcom/android/server/vibrator/VendorVibrationSession$VendorCallbackWrapper;
    .end local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 459
    .restart local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :catch_0
    move-exception v0

    nop

    .line 460
    .local v0, "e":Ljava/util/NoSuchElementException;
    :try_start_1
    const-string v1, "VendorVibrationSession"

    const-string v2, "Failed to unlink session to token death"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    monitor-exit p0

    return-void

    .line 457
    .end local p1    # "recipient":Landroid/os/IBinder$DeathRecipient;
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
