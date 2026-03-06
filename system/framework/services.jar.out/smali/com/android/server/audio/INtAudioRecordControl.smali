.class public interface abstract Lcom/android/server/audio/INtAudioRecordControl;
.super Ljava/lang/Object;
.source "INtAudioRecordControl.java"


# static fields
.field public static final DEFAULT:Lcom/android/server/audio/INtAudioRecordControl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/android/server/audio/INtAudioRecordControl$1;

    invoke-direct {v0}, Lcom/android/server/audio/INtAudioRecordControl$1;-><init>()V

    sput-object v0, Lcom/android/server/audio/INtAudioRecordControl;->DEFAULT:Lcom/android/server/audio/INtAudioRecordControl;

    return-void
.end method


# virtual methods
.method public checkUpdateMicMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 27
    return-void
.end method

.method public notifyAudioServerRestart()V
    .locals 0

    .line 34
    return-void
.end method

.method public notifyCommunicationDeviceChanged(I)V
    .locals 0
    .param p1, "device"    # I

    .line 33
    return-void
.end method

.method public notifyNtAudioRecordControlCurrentBtAddress(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "adress"    # Ljava/lang/String;
    .param p2, "connect"    # Z

    .line 32
    return-void
.end method

.method public notifyNtAudioRecordControlRecordEvent(ILandroid/media/AudioRecordingConfiguration;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "config"    # Landroid/media/AudioRecordingConfiguration;

    .line 30
    return-void
.end method

.method public notifyNtAudioRecordControlScoChanged(IZ)V
    .locals 0
    .param p1, "device"    # I
    .param p2, "connect"    # Z

    .line 31
    return-void
.end method

.method public notifyUserSwitch()V
    .locals 0

    .line 35
    return-void
.end method

.method public onTrackStateChange(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "state"    # I

    .line 25
    return-void
.end method

.method public setAudioDeviceBroker(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0
    .param p1, "deviceBroker"    # Lcom/android/server/audio/AudioDeviceBroker;

    .line 29
    return-void
.end method

.method public setAudioService(Lcom/android/server/audio/AudioService;)V
    .locals 0
    .param p1, "audioService"    # Lcom/android/server/audio/AudioService;

    .line 28
    return-void
.end method

.method public setForceScoRecordList(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p2, "isAppList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 36
    .local p1, "supportlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public setModeOwnerPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .line 24
    return-void
.end method

.method public updateMicModeDB(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 26
    return-void
.end method
