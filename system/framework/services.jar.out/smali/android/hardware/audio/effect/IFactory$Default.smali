.class public Landroid/hardware/audio/effect/IFactory$Default;
.super Ljava/lang/Object;
.source "IFactory.java"

# interfaces
.implements Landroid/hardware/audio/effect/IFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/audio/effect/IFactory;
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

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEffect(Landroid/media/audio/common/AudioUuid;)Landroid/hardware/audio/effect/IEffect;
    .locals 1
    .param p1, "implUuid"    # Landroid/media/audio/common/AudioUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyEffect(Landroid/hardware/audio/effect/IEffect;)V
    .locals 0
    .param p1, "handle"    # Landroid/hardware/audio/effect/IEffect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public queryEffects(Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;)[Landroid/hardware/audio/effect/Descriptor;
    .locals 1
    .param p1, "type"    # Landroid/media/audio/common/AudioUuid;
    .param p2, "implementation"    # Landroid/media/audio/common/AudioUuid;
    .param p3, "proxy"    # Landroid/media/audio/common/AudioUuid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryProcessing(Landroid/hardware/audio/effect/Processing$Type;)[Landroid/hardware/audio/effect/Processing;
    .locals 1
    .param p1, "type"    # Landroid/hardware/audio/effect/Processing$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method
