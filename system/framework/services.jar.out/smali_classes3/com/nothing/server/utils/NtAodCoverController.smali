.class public Lcom/nothing/server/utils/NtAodCoverController;
.super Ljava/lang/Object;
.source "NtAodCoverController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NtAodCoverController"

.field private static sPowerManager:Landroid/os/IPowerManager;

.field private static sSurfaceFlinger:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    .line 32
    sput-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideAodCoverLayer(Z)V
    .locals 6
    .param p0, "hide"    # Z

    .line 35
    const/16 v0, 0x5e

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v0}, Lcom/nothing/NtFeaturesUtils;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    sget-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 37
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    .line 39
    :cond_0
    sget-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    if-nez v0, :cond_1

    .line 40
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "powerManagerBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    sput-object v1, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    .line 43
    .end local v0    # "powerManagerBinder":Landroid/os/IBinder;
    :cond_1
    sget-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    const-string v1, "NtAodCoverController"

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    if-nez v0, :cond_3

    :cond_2
    goto :goto_5

    .line 47
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 49
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v2}, Landroid/os/IPowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 50
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    if-eqz p0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    sget-object v3, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    const/16 v4, 0x7d9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 57
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 54
    :catch_0
    move-exception v2

    goto :goto_3

    .line 57
    :cond_5
    :goto_1
    nop

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    goto :goto_6

    .line 54
    :goto_3
    nop

    .line 55
    .local v2, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "Failed to set surfaceflinger transparent fail"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    nop

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_2

    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    throw v1

    .line 44
    .end local v0    # "data":Landroid/os/Parcel;
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init fail, pwr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nothing/server/utils/NtAodCoverController;->sPowerManager:Landroid/os/IPowerManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sf: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nothing/server/utils/NtAodCoverController;->sSurfaceFlinger:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 60
    :cond_6
    :goto_6
    return-void
.end method
