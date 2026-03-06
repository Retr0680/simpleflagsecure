.class Lcom/android/server/media/SystemMediaRoute2Provider2;
.super Lcom/android/server/media/SystemMediaRoute2Provider;
.source "SystemMediaRoute2Provider2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;,
        Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;,
        Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final FORCE_GLOBAL_ROUTING_SESSION:Z = true

.field private static final PACKAGE_NAME_FOR_GLOBAL_SESSION:Ljava/lang/String; = ""

.field private static final UNIQUE_SYSTEM_ID_PREFIX:Ljava/lang/String; = "SYSTEM"

.field private static final UNIQUE_SYSTEM_ID_SEPARATOR:Ljava/lang/String; = "-"


# instance fields
.field private mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

.field private final mOriginalRouteIdToProviderId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageNameToSessionRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSessionCreations:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionOriginalIdToSessionRecord:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lw79SEdqVwBQKy9kaI56s6o5cFc(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2;->lambda$updateProviderInfo$0(Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPackageNameToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingSessionCreations(Lcom/android/server/media/SystemMediaRoute2Provider2;)Landroid/util/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPendingSessionCreations:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxyRecords(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionOriginalIdToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSessionOverrideUpdated(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->onSessionOverrideUpdated(Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smasUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smuniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->uniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    .line 98
    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 96
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 110
    sget-object v0, Lcom/android/server/media/SystemMediaRoute2Provider2;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/media/SystemMediaRoute2Provider;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/os/Looper;)V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    .line 72
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mSessionOriginalIdToSessionRecord:Ljava/util/Map;

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPendingSessionCreations:Landroid/util/LongSparseArray;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 112
    return-void
.end method

.method private static asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "providerId"    # Ljava/lang/String;
    .param p1, "originalId"    # Ljava/lang/String;

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SYSTEM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)Lcom/android/server/media/SystemMediaRoute2Provider2;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 103
    new-instance v0, Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/media/SystemMediaRoute2Provider2;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Looper;)V

    .line 104
    .local v0, "instance":Lcom/android/server/media/SystemMediaRoute2Provider2;
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 105
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateSessionInfosIfNeeded()Z

    .line 106
    return-object v0
.end method

.method private fetchUid(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 4
    .param p1, "clientPackageName"    # Ljava/lang/String;
    .param p2, "clientUserHandle"    # Landroid/os/UserHandle;

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    return v2

    .line 347
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 344
    :catch_0
    move-exception v2

    goto :goto_1

    .line 347
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw v2

    .line 344
    :goto_1
    nop

    .line 345
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    const/4 v3, -0x1

    return v3
.end method

.method private getSessionRecordByOriginalId(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .locals 1
    .param p1, "sessionOriginalId"    # Ljava/lang/String;

    .line 317
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByPackageName(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v0

    return-object v0
.end method

.method private getSessionRecordByPackageName(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .locals 1
    .param p1, "clientPackageName"    # Ljava/lang/String;

    .line 326
    const-string p1, ""

    .line 328
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    return-object v0
.end method

.method private synthetic lambda$updateProviderInfo$0(Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 2
    .param p1, "builder"    # Landroid/media/MediaRoute2ProviderInfo$Builder;
    .param p2, "proxyId"    # Ljava/lang/String;
    .param p3, "route"    # Landroid/media/MediaRoute2Info;

    .line 440
    invoke-virtual {p1, p3}, Landroid/media/MediaRoute2ProviderInfo$Builder;->addRoute(Landroid/media/MediaRoute2Info;)Landroid/media/MediaRoute2ProviderInfo$Builder;

    .line 441
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method private onSessionOverrideUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 4
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 474
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v0, p1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 475
    .local v0, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>()V

    .line 476
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 477
    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 478
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    .line 480
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v2

    .line 481
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v3

    .line 478
    invoke-interface {v1, p0, v2, v3}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;)V

    .line 482
    return-void
.end method

.method private static uniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "providerId"    # Ljava/lang/String;
    .param p1, "uniqueRouteId"    # Ljava/lang/String;

    .line 489
    invoke-static {p1}, Landroid/media/MediaRouter2Utils;->getOriginalId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->asUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateProviderInfo()V
    .locals 6

    .line 431
    new-instance v0, Landroid/media/MediaRoute2ProviderInfo$Builder;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2ProviderInfo$Builder;-><init>(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 433
    .local v0, "builder":Landroid/media/MediaRoute2ProviderInfo$Builder;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 434
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    .line 435
    .local v2, "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 436
    .local v3, "proxyId":Ljava/lang/String;
    nop

    .line 437
    invoke-virtual {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->getRoutesStream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0, v0, v3}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/MediaRoute2ProviderInfo$Builder;Ljava/lang/String;)V

    .line 438
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 443
    .end local v2    # "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v3    # "proxyId":Ljava/lang/String;
    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo$Builder;->build()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRoute2Provider;->setProviderState(Landroid/media/MediaRoute2ProviderInfo;)V

    .line 445
    return-void
.end method

.method private updateSessionInfo()V
    .locals 8

    .line 387
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_0
    const-string v1, ""

    .line 389
    invoke-direct {p0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByPackageName(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v1

    .line 391
    .local v1, "globalSessionInfoRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v1, :cond_0

    .line 392
    invoke-static {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmTranslatedSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    goto :goto_0

    .line 421
    .end local v1    # "globalSessionInfoRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 393
    .restart local v1    # "globalSessionInfoRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    .line 394
    .local v2, "globalSessionInfo":Landroid/media/RoutingSessionInfo;
    if-nez v2, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    move-object v2, v3

    .line 397
    :cond_1
    if-nez v2, :cond_2

    .line 399
    monitor-exit v0

    return-void

    .line 401
    :cond_2
    new-instance v3, Landroid/media/RoutingSessionInfo$Builder;

    invoke-direct {v3, v2}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 402
    .local v3, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mSystemSessionInfo:Landroid/media/RoutingSessionInfo;

    if-ne v2, v4, :cond_3

    .line 405
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda2;

    invoke-direct {v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda2;-><init>()V

    .line 406
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>()V

    .line 407
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 408
    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 412
    :cond_3
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v4}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda0;-><init>()V

    .line 413
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 414
    new-instance v5, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 416
    :goto_1
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 417
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    .line 419
    .local v5, "sessionRecords":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    iget-object v6, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-static {v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmTranslatedSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    nop

    .end local v5    # "sessionRecords":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    goto :goto_2

    .line 421
    .end local v1    # "globalSessionInfoRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v2    # "globalSessionInfo":Landroid/media/RoutingSessionInfo;
    .end local v3    # "builder":Landroid/media/RoutingSessionInfo$Builder;
    :cond_4
    monitor-exit v0

    .line 422
    return-void

    .line 421
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public deselectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 294
    const-string v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByOriginalId(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v1

    .line 300
    .local v1, "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v2

    goto :goto_0

    .line 310
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 300
    .restart local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :cond_1
    const/4 v2, 0x0

    .line 301
    .local v2, "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    :goto_0
    if-eqz v2, :cond_3

    .line 302
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmNewOriginalIdToSourceOriginalIdMap(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Ljava/util/Map;

    move-result-object v3

    .line 303
    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    .local v3, "targetSourceRouteId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 305
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v4

    .line 306
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getServiceSessionId()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-virtual {v4, p1, p2, v5, v3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->deselectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_2
    monitor-exit v0

    return-void

    .line 301
    .end local v3    # "targetSourceRouteId":Ljava/lang/String;
    :cond_3
    nop

    .line 310
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v2    # "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 312
    return-void

    .line 310
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider;->getSessionForPackage(Ljava/lang/String;)Landroid/media/RoutingSessionInfo;

    move-result-object v1

    .line 211
    .local v1, "systemSession":Landroid/media/RoutingSessionInfo;
    if-nez v1, :cond_0

    .line 212
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 227
    .end local v1    # "systemSession":Landroid/media/RoutingSessionInfo;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 214
    .restart local v1    # "systemSession":Landroid/media/RoutingSessionInfo;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByPackageName(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v2

    .line 215
    .local v2, "overridingSession":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v2, :cond_2

    .line 216
    new-instance v3, Landroid/media/RoutingSessionInfo$Builder;

    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmTranslatedSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;)V

    iget-object v4, p0, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    .line 219
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v3

    .line 220
    .local v3, "builder":Landroid/media/RoutingSessionInfo$Builder;
    iget-object v4, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    invoke-virtual {v4}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRoute2Info;

    .line 221
    .local v5, "systemRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/media/RoutingSessionInfo$Builder;->addTransferableRoute(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    .line 222
    nop

    .end local v5    # "systemRoute":Landroid/media/MediaRoute2Info;
    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 225
    .end local v3    # "builder":Landroid/media/RoutingSessionInfo$Builder;
    :cond_2
    monitor-exit v0

    return-object v1

    .line 227
    .end local v1    # "systemSession":Landroid/media/RoutingSessionInfo;
    .end local v2    # "overridingSession":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyGlobalSessionInfoUpdated()V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    if-nez v0, :cond_0

    .line 450
    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    monitor-exit v0

    return-void

    .line 461
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPackageNameToSessionRecord:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 460
    .local v1, "packageNamesWithRoutingSessionOverrides":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2Provider;->mSessionInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RoutingSessionInfo;

    .line 461
    .local v2, "sessionInfo":Landroid/media/RoutingSessionInfo;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mCallback:Lcom/android/server/media/MediaRoute2Provider$Callback;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/server/media/MediaRoute2Provider$Callback;->onSessionUpdated(Lcom/android/server/media/MediaRoute2Provider;Landroid/media/RoutingSessionInfo;Ljava/util/Set;)V

    .line 464
    return-void

    .line 461
    .end local v1    # "packageNamesWithRoutingSessionOverrides":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "sessionInfo":Landroid/media/RoutingSessionInfo;
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSystemProviderRoutesChanged(Landroid/media/MediaRoute2ProviderInfo;)V
    .locals 2
    .param p1, "providerInfo"    # Landroid/media/MediaRoute2ProviderInfo;

    .line 374
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mLastSystemProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 376
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateProviderInfo()V

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    .line 379
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->notifyGlobalSessionInfoUpdated()V

    .line 380
    return-void

    .line 377
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onSystemSessionInfoUpdated()V
    .locals 0

    .line 353
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    .line 354
    return-void
.end method

.method public selectRoute(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "requestId"    # J
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "routeId"    # Ljava/lang/String;

    .line 272
    const-string v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByOriginalId(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v1

    .line 278
    .local v1, "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v2

    goto :goto_0

    .line 288
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 278
    .restart local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :cond_1
    const/4 v2, 0x0

    .line 279
    .local v2, "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    :goto_0
    if-eqz v2, :cond_3

    .line 280
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmNewOriginalIdToSourceOriginalIdMap(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Ljava/util/Map;

    move-result-object v3

    .line 281
    invoke-interface {v3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, "targetSourceRouteId":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 283
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v4

    .line 284
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getServiceSessionId()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {v4, p1, p2, v5, v3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->selectRoute(JLjava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    monitor-exit v0

    return-void

    .line 279
    .end local v3    # "targetSourceRouteId":Ljava/lang/String;
    :cond_3
    nop

    .line 288
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v2    # "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 290
    return-void

    .line 288
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRouteVolume(JLjava/lang/String;I)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "routeOriginalId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 232
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 234
    .local v1, "targetProviderProxyId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    .line 236
    .local v2, "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    if-eqz v2, :cond_1

    .line 237
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmNewOriginalIdToSourceOriginalIdMap(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Ljava/util/Map;

    move-result-object v3

    .line 238
    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 240
    .local v3, "serviceTargetRoute":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 241
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v3, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setRouteVolume(JLjava/lang/String;I)V

    goto :goto_0

    .line 248
    .end local v1    # "targetProviderProxyId":Ljava/lang/String;
    .end local v2    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v3    # "serviceTargetRoute":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 244
    .restart local v1    # "targetProviderProxyId":Ljava/lang/String;
    .restart local v2    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local v3    # "serviceTargetRoute":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {p0, p1, p2, v4}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 248
    .end local v1    # "targetProviderProxyId":Ljava/lang/String;
    .end local v2    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v3    # "serviceTargetRoute":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->setRouteVolume(JLjava/lang/String;I)V

    .line 250
    return-void

    .line 248
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSessionVolume(JLjava/lang/String;I)V
    .locals 5
    .param p1, "requestId"    # J
    .param p3, "sessionOriginalId"    # Ljava/lang/String;
    .param p4, "volume"    # I

    .line 254
    const-string v0, "SYSTEM_SESSION"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/media/SystemMediaRoute2Provider;->setSessionVolume(JLjava/lang/String;I)V

    .line 256
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByOriginalId(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v1

    .line 260
    .local v1, "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v2

    goto :goto_0

    .line 266
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 260
    .restart local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :cond_1
    const/4 v2, 0x0

    .line 261
    .local v2, "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    :goto_0
    if-eqz v2, :cond_2

    .line 262
    invoke-static {v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v3

    .line 263
    invoke-virtual {v1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getServiceSessionId()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v3, p1, p2, v4, p4}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->setSessionVolume(JLjava/lang/String;I)V

    .line 264
    monitor-exit v0

    return-void

    .line 261
    :cond_2
    nop

    .line 266
    .end local v1    # "sessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v2    # "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 268
    return-void

    .line 266
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p1, "requestId"    # J
    .param p3, "clientUserHandle"    # Landroid/os/UserHandle;
    .param p4, "clientPackageName"    # Ljava/lang/String;
    .param p5, "sessionOriginalId"    # Ljava/lang/String;
    .param p6, "routeOriginalId"    # Ljava/lang/String;
    .param p7, "transferReason"    # I

    .line 122
    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-object/from16 v10, p6

    iget-object v11, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 124
    :try_start_0
    const-string v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 126
    .end local p4    # "clientPackageName":Ljava/lang/String;
    .local v5, "clientPackageName":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/SystemMediaRoute2Provider2;->mOriginalRouteIdToProviderId:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 127
    .local v0, "targetProviderProxyId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-object v12, v2

    .line 130
    .local v12, "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    if-eqz v12, :cond_0

    .line 131
    invoke-virtual {v12, v10}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->getRouteByOriginalId(Ljava/lang/String;)Landroid/media/MediaRoute2Info;

    move-result-object v2

    goto :goto_0

    .line 203
    .end local v0    # "targetProviderProxyId":Ljava/lang/String;
    .end local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 132
    .restart local v0    # "targetProviderProxyId":Ljava/lang/String;
    .restart local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v13, v2

    .line 133
    .local v13, "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    invoke-direct {v1, v5}, Lcom/android/server/media/SystemMediaRoute2Provider2;->getSessionRecordByPackageName(Ljava/lang/String;)Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v2

    .line 134
    .local v14, "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    if-eqz v14, :cond_4

    .line 135
    :try_start_2
    invoke-static {v14}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$fgetmSourceSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;

    move-result-object v2

    move-object v15, v2

    .line 136
    .local v15, "existingSession":Landroid/media/RoutingSessionInfo;
    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v15}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_2

    .line 141
    if-nez v13, :cond_1

    .line 142
    const/4 v2, 0x3

    :try_start_3
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v7, p3

    goto :goto_1

    .line 145
    :cond_1
    :try_start_4
    invoke-static {v12}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    move-result-object v2

    .line 149
    invoke-virtual {v15}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->-$$Nest$fgetmNewOriginalIdToSourceOriginalIdMap(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Ljava/util/Map;

    move-result-object v6

    .line 150
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    move/from16 v9, p7

    move-object v6, v5

    move-object/from16 v5, p3

    .end local v5    # "clientPackageName":Ljava/lang/String;
    .local v6, "clientPackageName":Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v7, v5

    move-object v5, v6

    .line 154
    .end local v6    # "clientPackageName":Ljava/lang/String;
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    :goto_1
    :try_start_6
    monitor-exit v11

    return-void

    .line 203
    .end local v0    # "targetProviderProxyId":Ljava/lang/String;
    .end local v5    # "clientPackageName":Ljava/lang/String;
    .end local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v13    # "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    .end local v14    # "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v15    # "existingSession":Landroid/media/RoutingSessionInfo;
    .restart local v6    # "clientPackageName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v7, v5

    move-object v5, v6

    .end local v6    # "clientPackageName":Ljava/lang/String;
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_6

    .line 137
    .restart local v0    # "targetProviderProxyId":Ljava/lang/String;
    .restart local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local v13    # "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    .restart local v14    # "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .restart local v15    # "existingSession":Landroid/media/RoutingSessionInfo;
    :cond_2
    move-object/from16 v7, p3

    goto :goto_2

    .line 136
    :cond_3
    move-object/from16 v7, p3

    .line 158
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v2

    .line 159
    .local v2, "currentProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    if-eqz v2, :cond_5

    .line 160
    nop

    .line 161
    invoke-virtual {v15}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->releaseSession(JLjava/lang/String;)V

    .line 162
    invoke-static {v14}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->-$$Nest$mremoveSelfFromSessionMaps(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 134
    .end local v2    # "currentProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v15    # "existingSession":Landroid/media/RoutingSessionInfo;
    :cond_4
    move-object/from16 v7, p3

    .line 167
    :cond_5
    :goto_3
    if-eqz v13, :cond_8

    .line 168
    :try_start_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    move v8, v2

    .line 170
    .local v8, "isGlobalSession":Z
    if-eqz v8, :cond_6

    .line 171
    const/4 v2, -0x1

    move v9, v2

    .local v2, "uid":I
    goto :goto_4

    .line 173
    .end local v2    # "uid":I
    :cond_6
    invoke-direct {v1, v5, v7}, Lcom/android/server/media/SystemMediaRoute2Provider2;->fetchUid(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 174
    .restart local v2    # "uid":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_7

    move v9, v2

    .line 182
    .end local v2    # "uid":I
    .local v9, "uid":I
    :goto_4
    new-instance v6, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;

    move-object v2, v0

    move-object v0, v6

    .end local v0    # "targetProviderProxyId":Ljava/lang/String;
    .local v2, "targetProviderProxyId":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;-><init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;JLjava/lang/String;Lcom/android/server/media/SystemMediaRoute2Provider2-IA;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object v15, v1

    move-object/from16 v16, v2

    .end local v2    # "targetProviderProxyId":Ljava/lang/String;
    .local v16, "targetProviderProxyId":Ljava/lang/String;
    move-object v6, v0

    .line 185
    .local v6, "pendingCreationCallback":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;
    :try_start_8
    iget-object v0, v15, Lcom/android/server/media/SystemMediaRoute2Provider2;->mPendingSessionCreations:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 186
    move-wide v1, v3

    move-object v4, v5

    move v3, v9

    move-object v5, v10

    move-object v0, v12

    .end local v5    # "clientPackageName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .local v0, "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .local v3, "uid":I
    .local v4, "clientPackageName":Ljava/lang/String;
    :try_start_9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object v5, v4

    .line 192
    .end local v3    # "uid":I
    .end local v4    # "clientPackageName":Ljava/lang/String;
    .end local v6    # "pendingCreationCallback":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionCallbackImpl;
    .end local v8    # "isGlobalSession":Z
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    goto :goto_5

    .line 203
    .end local v0    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v5    # "clientPackageName":Ljava/lang/String;
    .end local v13    # "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    .end local v14    # "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v16    # "targetProviderProxyId":Ljava/lang/String;
    .restart local v4    # "clientPackageName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v5, v4

    .end local v4    # "clientPackageName":Ljava/lang/String;
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v15, v1

    goto :goto_6

    .line 175
    .local v0, "targetProviderProxyId":Ljava/lang/String;
    .local v2, "uid":I
    .restart local v8    # "isGlobalSession":Z
    .restart local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local v13    # "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    .restart local v14    # "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    :cond_7
    move-object/from16 v16, v0

    move-object v15, v1

    move-object v0, v12

    .end local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .local v0, "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local v16    # "targetProviderProxyId":Ljava/lang/String;
    :try_start_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot resolve transfer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5    # "clientPackageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider2;
    .end local p1    # "requestId":J
    .end local p3    # "clientUserHandle":Landroid/os/UserHandle;
    .end local p5    # "sessionOriginalId":Ljava/lang/String;
    .end local p6    # "routeOriginalId":Ljava/lang/String;
    .end local p7    # "transferReason":I
    throw v1

    .line 195
    .end local v2    # "uid":I
    .end local v8    # "isGlobalSession":Z
    .end local v16    # "targetProviderProxyId":Ljava/lang/String;
    .local v0, "targetProviderProxyId":Ljava/lang/String;
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    .restart local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local p0    # "this":Lcom/android/server/media/SystemMediaRoute2Provider2;
    .restart local p1    # "requestId":J
    .restart local p3    # "clientUserHandle":Landroid/os/UserHandle;
    .restart local p5    # "sessionOriginalId":Ljava/lang/String;
    .restart local p6    # "routeOriginalId":Ljava/lang/String;
    .restart local p7    # "transferReason":I
    :cond_8
    move-object/from16 v16, v0

    move-object v15, v1

    move-object v0, v12

    .end local v12    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .local v0, "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .restart local v16    # "targetProviderProxyId":Ljava/lang/String;
    move-wide/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v8, p7

    move-object v4, v7

    move-object/from16 v7, p6

    invoke-super/range {v1 .. v8}, Lcom/android/server/media/SystemMediaRoute2Provider;->transferToRoute(JLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    .end local v0    # "targetProviderProxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .end local v13    # "serviceTargetRoute":Landroid/media/MediaRoute2Info;
    .end local v14    # "existingSessionRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
    .end local v16    # "targetProviderProxyId":Ljava/lang/String;
    :goto_5
    monitor-exit v11

    .line 204
    return-void

    .line 203
    .end local v5    # "clientPackageName":Ljava/lang/String;
    .restart local p4    # "clientPackageName":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v5, p4

    .end local p4    # "clientPackageName":Ljava/lang/String;
    .restart local v5    # "clientPackageName":Ljava/lang/String;
    :goto_6
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public updateSystemMediaRoutesFromProxy(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V
    .locals 4
    .param p1, "serviceProxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 358
    invoke-static {p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->createFor(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    move-result-object v0

    .line 359
    .local v0, "proxyRecord":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    if-nez v0, :cond_0

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2;->mProxyRecords:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    :goto_0
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateProviderInfo()V

    .line 366
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->updateSessionInfo()V

    .line 368
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->notifyGlobalSessionInfoUpdated()V

    .line 370
    return-void

    .line 366
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
