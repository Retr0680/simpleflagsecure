.class interface abstract Lcom/android/server/media/BluetoothRouteController;
.super Ljava/lang/Object;
.source "BluetoothRouteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;,
        Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;
    }
.end annotation


# direct methods
.method public static createInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 50
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    nop

    .line 51
    new-instance v1, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;

    invoke-direct {v1}, Lcom/android/server/media/BluetoothRouteController$NoOpBluetoothRouteController;-><init>()V

    return-object v1
.end method


# virtual methods
.method public abstract getAllBluetoothRoutes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedRoute()Landroid/media/MediaRoute2Info;
.end method

.method public abstract getTransferableRoutes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start(Landroid/os/UserHandle;)V
.end method

.method public abstract stop()V
.end method

.method public abstract transferTo(Ljava/lang/String;)V
.end method

.method public abstract updateVolumeForDevices(II)Z
.end method
