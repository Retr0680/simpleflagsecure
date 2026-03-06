.class public Landroid/frameworks/devicestate/IDeviceStateListener$Default;
.super Ljava/lang/Object;
.source "IDeviceStateListener.java"

# interfaces
.implements Landroid/frameworks/devicestate/IDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/frameworks/devicestate/IDeviceStateListener;
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

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 32
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onDeviceStateChanged(Landroid/frameworks/devicestate/DeviceStateConfiguration;)V
    .locals 0
    .param p1, "deviceState"    # Landroid/frameworks/devicestate/DeviceStateConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
