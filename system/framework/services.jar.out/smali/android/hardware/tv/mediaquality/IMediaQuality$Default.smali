.class public Landroid/hardware/tv/mediaquality/IMediaQuality$Default;
.super Ljava/lang/Object;
.source "IMediaQuality.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/IMediaQuality;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/IMediaQuality;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmbientBacklightDetectionEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoAqEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoPqEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoSrEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getParamCaps([B[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 0
    .param p1, "paramNames"    # [B
    .param p2, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    return-void
.end method

.method public getPictureProfileListener()Landroid/hardware/tv/mediaquality/IPictureProfileChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSoundProfileListener()Landroid/hardware/tv/mediaquality/ISoundProfileChangedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVendorParamCaps([Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
    .locals 0
    .param p1, "names"    # [Landroid/hardware/tv/mediaquality/VendorParameterIdentifier;
    .param p2, "caps"    # [Landroid/hardware/tv/mediaquality/VendorParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public isAutoAqSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoPqSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoSrSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public sendDefaultPictureParameters(Landroid/hardware/tv/mediaquality/PictureParameters;)V
    .locals 0
    .param p1, "pictureParameters"    # Landroid/hardware/tv/mediaquality/PictureParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public sendDefaultSoundParameters(Landroid/hardware/tv/mediaquality/SoundParameters;)V
    .locals 0
    .param p1, "soundParameters"    # Landroid/hardware/tv/mediaquality/SoundParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    return-void
.end method

.method public setAmbientBacklightCallback(Landroid/hardware/tv/mediaquality/IMediaQualityCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/tv/mediaquality/IMediaQualityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public setAmbientBacklightDetectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public setAmbientBacklightDetector(Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;)V
    .locals 0
    .param p1, "settings"    # Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setAutoAqEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public setAutoPqEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public setAutoSrEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public setPictureProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/tv/mediaquality/IPictureProfileAdjustmentListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public setSoundProfileAdjustmentListener(Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method
