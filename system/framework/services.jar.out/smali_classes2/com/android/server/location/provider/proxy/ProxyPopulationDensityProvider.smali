.class public Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProxyPopulationDensityProvider"


# instance fields
.field final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    nop

    .line 60
    const-string v0, "com.android.location.service.PopulationDensityProvider"

    const v1, 0x1110186

    const v2, 0x10402b4

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    .line 57
    const-string v1, "PopulationDensityProxy"

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    .line 66
    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "proxy":Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
    invoke-direct {v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->register()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    return-object v0

    .line 52
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private register()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    .line 70
    .local v0, "resolves":Z
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    .line 73
    :cond_0
    return v0
.end method


# virtual methods
.method public getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .locals 9
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D
    .param p5, "numAdditionalCells"    # I
    .param p6, "callback"    # Landroid/location/provider/IS2CellIdsCallback;

    .line 101
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    .end local p1    # "latitudeDegrees":D
    .end local p3    # "longitudeDegrees":D
    .end local p5    # "numAdditionalCells":I
    .end local p6    # "callback":Landroid/location/provider/IS2CellIdsCallback;
    .local v3, "latitudeDegrees":D
    .local v5, "longitudeDegrees":D
    .local v7, "numAdditionalCells":I
    .local v8, "callback":Landroid/location/provider/IS2CellIdsCallback;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;DDILandroid/location/provider/IS2CellIdsCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 119
    return-void
.end method

.method public getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/location/provider/IS2LevelCallback;

    .line 78
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;Landroid/location/provider/IS2LevelCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 95
    return-void
.end method
