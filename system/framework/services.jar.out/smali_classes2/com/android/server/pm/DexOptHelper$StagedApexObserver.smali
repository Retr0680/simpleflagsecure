.class Lcom/android/server/pm/DexOptHelper$StagedApexObserver;
.super Landroid/content/pm/IStagedApexObserver$Stub;
.source "DexOptHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DexOptHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StagedApexObserver"
.end annotation


# instance fields
.field private final mArtManager:Lcom/android/server/art/ArtManagerLocal;


# direct methods
.method public static synthetic $r8$lambda$55crVKefZOQZZBXm7sxbxA0uhOs(I)[Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->lambda$onApexStaged$1(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rIDkxthGd_RrWXNoIn67o_0lSDo(Landroid/content/pm/StagedApexInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->lambda$onApexStaged$0(Landroid/content/pm/StagedApexInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/art/ArtManagerLocal;)V
    .locals 0
    .param p1, "artManager"    # Lcom/android/server/art/ArtManagerLocal;

    .line 1010
    invoke-direct {p0}, Landroid/content/pm/IStagedApexObserver$Stub;-><init>()V

    .line 1011
    iput-object p1, p0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    .line 1012
    return-void
.end method

.method private static synthetic lambda$onApexStaged$0(Landroid/content/pm/StagedApexInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/StagedApexInfo;

    .line 1017
    iget-object v0, p0, Landroid/content/pm/StagedApexInfo;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic lambda$onApexStaged$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 1017
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static registerForStagedApexUpdates(Lcom/android/server/art/ArtManagerLocal;)V
    .locals 4
    .param p0, "artManager"    # Lcom/android/server/art/ArtManagerLocal;

    .line 996
    nop

    .line 997
    const-string/jumbo v0, "package_native"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 996
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    .line 998
    .local v0, "packageNative":Landroid/content/pm/IPackageManagerNative;
    const-string v1, "PackageManager"

    if-nez v0, :cond_0

    .line 999
    const-string v2, "No IPackageManagerNative"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-void

    .line 1004
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;

    invoke-direct {v2, p0}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;-><init>(Lcom/android/server/art/ArtManagerLocal;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    goto :goto_0

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to register staged apex observer"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public onApexStaged(Landroid/content/pm/ApexStagedEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/content/pm/ApexStagedEvent;

    .line 1016
    iget-object v0, p0, Lcom/android/server/pm/DexOptHelper$StagedApexObserver;->mArtManager:Lcom/android/server/art/ArtManagerLocal;

    iget-object v1, p1, Landroid/content/pm/ApexStagedEvent;->stagedApexInfos:[Landroid/content/pm/StagedApexInfo;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda0;-><init>()V

    .line 1017
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/pm/DexOptHelper$StagedApexObserver$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1016
    invoke-virtual {v0, v1}, Lcom/android/server/art/ArtManagerLocal;->onApexStaged([Ljava/lang/String;)V

    .line 1018
    return-void
.end method
