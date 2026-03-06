.class public interface abstract Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManagerWrapper.java"


# virtual methods
.method public abstract addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
.end method

.method public abstract getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
.end method

.method public abstract removeOnDeviceVolumeBehaviorChangedListener(Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
.end method

.method public abstract setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
.end method

.method public abstract setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V
.end method

.method public abstract setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;I)V
.end method
