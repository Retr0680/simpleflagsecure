.class final Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisteredAttribution"
.end annotation


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$WO-ed5PKRX8IsXitr7ssfCstW60(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->lambda$new$0(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "source"    # Landroid/content/AttributionSource;
    .param p4, "fromDatasource"    # Z

    .line 1776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1777
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1778
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "op":I
    .end local p3    # "source":Landroid/content/AttributionSource;
    .end local p4    # "fromDatasource":Z
    .local v4, "context":Landroid/content/Context;
    .local v5, "op":I
    .local v6, "source":Landroid/content/AttributionSource;
    .local v7, "fromDatasource":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    iput-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1784
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    .line 1785
    iget-object p1, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    .line 1787
    :try_start_0
    iget-object p1, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    iget-object p2, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    goto :goto_0

    .line 1788
    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1789
    .local p1, "e":Landroid/os/RemoteException;
    iget-object p2, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    .line 1792
    .end local p1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "source"    # Landroid/content/AttributionSource;
    .param p4, "fromDatasource"    # Z

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1780
    nop

    .line 1781
    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->-$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    .line 1783
    :cond_0
    return-void
.end method


# virtual methods
.method public unregister()Z
    .locals 4

    .line 1795
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1797
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1802
    :cond_0
    :goto_0
    nop

    .line 1803
    :goto_1
    return v2

    .line 1805
    :cond_1
    return v1
.end method
