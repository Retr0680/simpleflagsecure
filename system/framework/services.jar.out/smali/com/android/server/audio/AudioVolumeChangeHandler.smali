.class Lcom/android/server/audio/AudioVolumeChangeHandler;
.super Ljava/lang/Object;
.source "AudioVolumeChangeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioVolumeChangeHandler"


# instance fields
.field private final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field private mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$msendAudioVolumeGroupChangedToClients(Lcom/android/server/audio/AudioVolumeChangeHandler;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioVolumeChangeHandler;->sendAudioVolumeGroupChangedToClients(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 1
    .param p1, "asa"    # Lcom/android/server/audio/AudioSystemAdapter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 46
    iput-object p1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 47
    return-void
.end method

.method private lazyInitLocked()V
    .locals 2

    .line 51
    new-instance v0, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;-><init>(Lcom/android/server/audio/AudioVolumeChangeHandler;Lcom/android/server/audio/AudioVolumeChangeHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioSystemAdapter;->registerAudioVolumeGroupCallback(Landroid/media/INativeAudioVolumeGroupCallback;)I

    .line 53
    return-void
.end method

.method private sendAudioVolumeGroupChangedToClients(II)V
    .locals 6
    .param p1, "groupId"    # I
    .param p2, "index"    # I

    .line 58
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    .line 60
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;>;"
    iget-object v2, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 61
    .local v2, "nbDispatchers":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 64
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    invoke-interface {v3, p1, p2}, Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;->onAudioVolumeGroupChanged(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    goto :goto_1

    .line 65
    :catch_0
    move-exception v3

    .line 66
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioVolumeChangeHandler"

    const-string v5, "Failed to broadcast Volume Changed event"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 69
    .end local v0    # "i":I
    iget-object v3, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 70
    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    monitor-exit v3

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 61
    .end local v1    # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;>;"
    .end local v2    # "nbDispatchers":I
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public registerListener(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    .locals 2
    .param p1, "cb"    # Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    .line 78
    const-string v0, "Volume group callback must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mAudioVolumeGroupCallback:Lcom/android/server/audio/AudioVolumeChangeHandler$AudioVolumeGroupCallback;

    if-nez v1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/server/audio/AudioVolumeChangeHandler;->lazyInitLocked()V

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterListener(Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;)V
    .locals 2
    .param p1, "cb"    # Landroid/media/audiopolicy/IAudioVolumeChangeDispatcher;

    .line 91
    const-string v0, "Volume group callback must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioVolumeChangeHandler;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
