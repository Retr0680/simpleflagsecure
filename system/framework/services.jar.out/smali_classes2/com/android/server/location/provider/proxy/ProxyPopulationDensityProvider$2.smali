.class Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/location/provider/IS2CellIdsCallback;

.field final synthetic val$latitudeDegrees:D

.field final synthetic val$longitudeDegrees:D

.field final synthetic val$numAdditionalCells:I


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;DDILandroid/location/provider/IS2CellIdsCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-wide p2, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$latitudeDegrees:D

    iput-wide p4, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$longitudeDegrees:D

    iput p6, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$numAdditionalCells:I

    iput-object p7, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    invoke-interface {v0}, Landroid/location/provider/IS2CellIdsCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProxyPopulationDensityProvider"

    const-string/jumbo v2, "remote exception while querying coarsened S2 cell"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$latitudeDegrees:D

    iget-wide v3, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$longitudeDegrees:D

    iget v5, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$numAdditionalCells:I

    iget-object v6, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    .line 106
    invoke-interface/range {v0 .. v6}, Landroid/location/provider/IPopulationDensityProvider;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V

    .line 108
    return-void
.end method
