.class Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/location/provider/IS2LevelCallback;


# direct methods
.method constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;Landroid/location/provider/IS2LevelCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    invoke-interface {v0}, Landroid/location/provider/IS2LevelCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ProxyPopulationDensityProvider"

    const-string/jumbo v2, "remote exception while querying default coarsening level"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    .line 83
    invoke-interface {v0, v1}, Landroid/location/provider/IPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    .line 84
    return-void
.end method
