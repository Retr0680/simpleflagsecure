.class public Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio1Srv"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mNativeContext:J

.field private final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .locals 2
    .param p1, "userController"    # Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeInit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 56
    return-void
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit()J
.end method

.method private native nativeLoadModules(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeFinalize(J)V

    .line 45
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 46
    return-void
.end method

.method public loadModules()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeLoadModules(J)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 9
    .param p1, "moduleId"    # I
    .param p2, "bandConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;

    .line 66
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-wide v3, p0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->mNativeContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    .end local p1    # "moduleId":I
    .end local p2    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local p3    # "withAudio":Z
    .end local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    .local v5, "moduleId":I
    .local v6, "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .local v7, "withAudio":Z
    .local v8, "callback":Landroid/hardware/radio/ITunerCallback;
    :try_start_1
    invoke-direct/range {v2 .. v8}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->nativeOpenTuner(JILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal1/Tuner;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 72
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v5    # "moduleId":I
    .end local v6    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local v7    # "withAudio":Z
    .end local v8    # "callback":Landroid/hardware/radio/ITunerCallback;
    .restart local p1    # "moduleId":I
    .restart local p2    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local p3    # "withAudio":Z
    .restart local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    :catchall_1
    move-exception v0

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object p1, v0

    .end local p1    # "moduleId":I
    .end local p2    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local p3    # "withAudio":Z
    .end local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    .restart local v5    # "moduleId":I
    .restart local v6    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local v7    # "withAudio":Z
    .restart local v8    # "callback":Landroid/hardware/radio/ITunerCallback;
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 67
    .end local v5    # "moduleId":I
    .end local v6    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local v7    # "withAudio":Z
    .end local v8    # "callback":Landroid/hardware/radio/ITunerCallback;
    .restart local p1    # "moduleId":I
    .restart local p2    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local p3    # "withAudio":Z
    .restart local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    :cond_0
    move v5, p1

    move-object v6, p2

    .end local p1    # "moduleId":I
    .end local p2    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local v5    # "moduleId":I
    .restart local v6    # "bandConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    const-string p1, "BcRadio1Srv"

    const-string p2, "Cannot open tuner on HAL 1.x client for non-current user"

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot open tuner for non-current user"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
