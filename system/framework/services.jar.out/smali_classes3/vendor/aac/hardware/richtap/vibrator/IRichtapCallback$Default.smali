.class public Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback$Default;
.super Ljava/lang/Object;
.source "IRichtapCallback.java"

# interfaces
.implements Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/aac/hardware/richtap/vibrator/IRichtapCallback;
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

.method public onCallback(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
