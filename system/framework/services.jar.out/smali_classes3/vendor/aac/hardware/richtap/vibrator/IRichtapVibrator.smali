.class public interface abstract Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;
.super Ljava/lang/Object;
.source "IRichtapVibrator.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Stub;,
        Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "91cb4bbb88c1b67a487d70aa20da36a0163fbd55"

.field public static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 619
    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$aac$hardware$richtap$vibrator$IRichtapVibrator"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/aac/hardware/richtap/vibrator/IRichtapVibrator;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method public abstract init(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract off(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract on(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract perform(IBLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performEnvelope([IZLvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performHe(IIII[ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performHeParam(IIILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract performRtp(Landroid/os/ParcelFileDescriptor;Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setAmplitude(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDynamicScale(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setF0(ILvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop(Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
