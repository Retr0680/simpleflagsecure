.class public Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "DefaultAudioDeviceVolumeManagerWrapper.java"

# interfaces
.implements Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioDeviceVolumeManagerWrapper"


# instance fields
.field private final mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {v0, p1}, Landroid/media/AudioDeviceVolumeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    .line 48
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 49
    return-void
.end method


# virtual methods
.method public addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioDeviceVolumeManager;->addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    .line 57
    return-void
.end method

.method public getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 1
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;

    .line 90
    nop

    .line 91
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I

    move-result v0

    .line 92
    .local v0, "deviceBehavior":I
    return v0
.end method

.method public removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;

    .line 62
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioDeviceVolumeManager;->removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V

    .line 63
    return-void
.end method

.method public setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .locals 6
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    .line 83
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volume":Landroid/media/VolumeInfo;
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volume":Landroid/media/VolumeInfo;
    .local v3, "handlesVolumeAdjustment":Z
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 85
    return-void
.end method

.method public setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
    .locals 6
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "volume"    # Landroid/media/VolumeInfo;
    .param p3, "handlesVolumeAdjustment"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "vclistener"    # Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    .line 72
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "device":Landroid/media/AudioDeviceAttributes;
    .end local p2    # "volume":Landroid/media/VolumeInfo;
    .end local p3    # "handlesVolumeAdjustment":Z
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    .local v1, "device":Landroid/media/AudioDeviceAttributes;
    .local v2, "volume":Landroid/media/VolumeInfo;
    .local v3, "handlesVolumeAdjustment":Z
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "vclistener":Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;
    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    .line 74
    return-void
.end method

.method public setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
    .locals 2
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I

    .line 100
    nop

    .line 101
    move v0, p2

    .line 102
    .local v0, "deviceBehavior":I
    iget-object v1, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0}, Landroid/media/AudioManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 104
    .end local v0    # "deviceBehavior":I
    iget-object v0, p0, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioDeviceVolumeManager;->setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V

    .line 105
    return-void
.end method
