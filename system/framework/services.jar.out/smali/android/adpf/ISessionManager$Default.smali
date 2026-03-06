.class public Landroid/adpf/ISessionManager$Default;
.super Ljava/lang/Object;
.source "ISessionManager.java"

# interfaces
.implements Landroid/adpf/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adpf/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public associateSessionToLayers(II[Landroid/os/IBinder;)V
    .locals 0
    .param p1, "sessionId"    # I
    .param p2, "ownerUid"    # I
    .param p3, "layers"    # [Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public trackedSessionsDied([I)V
    .locals 0
    .param p1, "sessionId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
