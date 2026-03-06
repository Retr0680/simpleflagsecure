.class public Landroid/hardware/audio/effect/IEffect$Default;
.super Ljava/lang/Object;
.source "IEffect.java"

# interfaces
.implements Landroid/hardware/audio/effect/IEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/IEffect;
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

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public command(I)V
    .locals 0
    .param p1, "commandId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public getDescriptor()Landroid/hardware/audio/effect/Descriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getParameter(Landroid/hardware/audio/effect/Parameter$Id;)Landroid/hardware/audio/effect/Parameter;
    .locals 1
    .param p1, "paramId"    # Landroid/hardware/audio/effect/Parameter$Id;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/hardware/audio/effect/Parameter$Common;Landroid/hardware/audio/effect/Parameter$Specific;)Landroid/hardware/audio/effect/IEffect$OpenEffectReturn;
    .locals 1
    .param p1, "common"    # Landroid/hardware/audio/effect/Parameter$Common;
    .param p2, "specific"    # Landroid/hardware/audio/effect/Parameter$Specific;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public setParameter(Landroid/hardware/audio/effect/Parameter;)V
    .locals 0
    .param p1, "param"    # Landroid/hardware/audio/effect/Parameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method
