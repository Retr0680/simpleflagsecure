.class public interface abstract Lcom/android/server/hdmi/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# virtual methods
.method public abstract adjustStreamVolume(III)V
.end method

.method public abstract getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamMinVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract setHdmiSystemAudioSupported(Z)I
.end method

.method public abstract setStreamMute(IZ)V
.end method

.method public abstract setStreamVolume(III)V
.end method

.method public abstract setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V
.end method
