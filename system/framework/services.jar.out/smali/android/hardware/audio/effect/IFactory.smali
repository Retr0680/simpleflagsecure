.class public interface abstract Landroid/hardware/audio/effect/IFactory;
.super Ljava/lang/Object;
.source "IFactory.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/audio/effect/IFactory$Stub;,
        Landroid/hardware/audio/effect/IFactory$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "34b618a587cb9977ee0cd13b173e699d2dcdb320"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 295
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "android$hardware$audio$effect$IFactory"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/audio/effect/IFactory;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createEffect(Landroid/media/audio/common/AudioUuid;)Landroid/hardware/audio/effect/IEffect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract destroyEffect(Landroid/hardware/audio/effect/IEffect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryEffects(Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;Landroid/media/audio/common/AudioUuid;)[Landroid/hardware/audio/effect/Descriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryProcessing(Landroid/hardware/audio/effect/Processing$Type;)[Landroid/hardware/audio/effect/Processing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
