.class public Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Default;
.super Ljava/lang/Object;
.source "IRichtapVibrator.java"

# interfaces
.implements Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;
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

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public off(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public on(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "timeoutMs"    # I
    .param p2, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public perform(IBLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)I
    .locals 1
    .param p1, "effect_id"    # I
    .param p2, "strength"    # B
    .param p3, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public performEnvelope([IZLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "envInfo"    # [I
    .param p2, "fastFlag"    # Z
    .param p3, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public performHe(IIII[ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "looper"    # I
    .param p2, "interval"    # I
    .param p3, "amplitude"    # I
    .param p4, "freq"    # I
    .param p5, "he"    # [I
    .param p6, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public performHeParam(IIILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "amplitude"    # I
    .param p3, "freq"    # I
    .param p4, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public performRtp(Landroid/os/ParcelFileDescriptor;Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "hdl"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public setAmplitude(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "amplitude"    # I
    .param p2, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public setDynamicScale(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "scale"    # I
    .param p2, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setF0(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "f0"    # I
    .param p2, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public stop(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .locals 0
    .param p1, "callback"    # Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
