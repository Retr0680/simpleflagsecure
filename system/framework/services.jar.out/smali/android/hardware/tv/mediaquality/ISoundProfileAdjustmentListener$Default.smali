.class public Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener$Default;
.super Ljava/lang/Object;
.source "ISoundProfileAdjustmentListener.java"

# interfaces
.implements Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/mediaquality/ISoundProfileAdjustmentListener;
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

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/ParamCapability;)V
    .locals 0
    .param p1, "soundProfileId"    # J
    .param p3, "caps"    # [Landroid/hardware/tv/mediaquality/ParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onSoundProfileAdjusted(Landroid/hardware/tv/mediaquality/SoundProfile;)V
    .locals 0
    .param p1, "soundProfile"    # Landroid/hardware/tv/mediaquality/SoundProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onVendorParamCapabilityChanged(J[Landroid/hardware/tv/mediaquality/VendorParamCapability;)V
    .locals 0
    .param p1, "soundProfileId"    # J
    .param p3, "caps"    # [Landroid/hardware/tv/mediaquality/VendorParamCapability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public requestSoundParameters(J)V
    .locals 0
    .param p1, "SoundProfileId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
