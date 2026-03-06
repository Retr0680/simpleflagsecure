.class Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;
.super Ljava/lang/Object;
.source "SystemMediaRoute2Provider2.java"

# interfaces
.implements Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemMediaSessionRecord"
.end annotation


# instance fields
.field private final mOriginalId:Ljava/lang/String;

.field private final mProviderId:Ljava/lang/String;

.field private mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

.field private mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

.field final synthetic this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;


# direct methods
.method public static synthetic $r8$lambda$B-46izx6eQNj7SJmuwQQVpnsPiY(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->lambda$asSystemProviderSession$2(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KyKSxB0Ku4M1_q4Ry-XouAnbgMU(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->lambda$asSystemProviderSession$3(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W2dIP_AAv4iOZEbvOq9jwi3B_7M(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->lambda$asSystemProviderSession$0(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wHZ2qQbxsBrXSSmnjmOdA3-tDKI(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->lambda$asSystemProviderSession$1(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginalId(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSourceSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTranslatedSessionInfo(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)Landroid/media/RoutingSessionInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveSelfFromSessionMaps(Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider2;Ljava/lang/String;Landroid/media/RoutingSessionInfo;)V
    .locals 1
    .param p2, "providerId"    # Ljava/lang/String;
    .param p3, "sessionInfo"    # Landroid/media/RoutingSessionInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 708
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mProviderId:Ljava/lang/String;

    .line 710
    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 711
    nop

    .line 712
    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smasUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    .line 713
    invoke-direct {p0, p3}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 714
    return-void
.end method

.method private asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;
    .locals 3
    .param p1, "session"    # Landroid/media/RoutingSessionInfo;

    .line 763
    new-instance v0, Landroid/media/RoutingSessionInfo$Builder;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/media/RoutingSessionInfo$Builder;-><init>(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mUniqueId:Ljava/lang/String;

    .line 765
    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setProviderId(Ljava/lang/String;)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 766
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/RoutingSessionInfo$Builder;->setSystemSession(Z)Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->clearSelectedRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->clearSelectableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->clearDeselectableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 770
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->clearTransferableRoutes()Landroid/media/RoutingSessionInfo$Builder;

    move-result-object v0

    .line 771
    .local v0, "builder":Landroid/media/RoutingSessionInfo$Builder;
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda0;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 772
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 773
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 774
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda2;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 775
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 776
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda3;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 777
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getDeselectableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda4;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 778
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 779
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda5;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 780
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getTransferableRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord$$ExternalSyntheticLambda6;-><init>(Landroid/media/RoutingSessionInfo;)V

    .line 781
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 782
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2$$ExternalSyntheticLambda1;-><init>(Landroid/media/RoutingSessionInfo$Builder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 783
    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo$Builder;->build()Landroid/media/RoutingSessionInfo;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$asSystemProviderSession$0(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "session"    # Landroid/media/RoutingSessionInfo;
    .param p1, "it"    # Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smuniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$asSystemProviderSession$1(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "session"    # Landroid/media/RoutingSessionInfo;
    .param p1, "it"    # Ljava/lang/String;

    .line 775
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smuniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$asSystemProviderSession$2(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "session"    # Landroid/media/RoutingSessionInfo;
    .param p1, "it"    # Ljava/lang/String;

    .line 778
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smuniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$asSystemProviderSession$3(Landroid/media/RoutingSessionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "session"    # Landroid/media/RoutingSessionInfo;
    .param p1, "it"    # Ljava/lang/String;

    .line 781
    invoke-virtual {p0}, Landroid/media/RoutingSessionInfo;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smuniqueIdAsSystemRouteId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSelfFromSessionMaps()V
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmSessionOriginalIdToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mOriginalId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmPackageNameToSessionRecord(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    return-void
.end method


# virtual methods
.method public getProxyRecord()Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .locals 2

    .line 747
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$fgetmProxyRecords(Lcom/android/server/media/SystemMediaRoute2Provider2;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mProviderId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    .line 748
    .local v0, "provider":Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    .line 753
    :cond_0
    return-object v0
.end method

.method public getServiceSessionId()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    invoke-virtual {v0}, Landroid/media/RoutingSessionInfo;->getOriginalId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRequestFailed(JI)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "reason"    # I

    .line 733
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2Provider;->notifyRequestFailed(JI)V

    .line 734
    return-void
.end method

.method public onSessionReleased()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v0, v0, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 739
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->removeSelfFromSessionMaps()V

    .line 740
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->notifyGlobalSessionInfoUpdated()V

    .line 742
    return-void

    .line 740
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSessionUpdate(Landroid/media/RoutingSessionInfo;)V
    .locals 3
    .param p1, "sessionInfo"    # Landroid/media/RoutingSessionInfo;

    .line 723
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->asSystemProviderSession(Landroid/media/RoutingSessionInfo;)Landroid/media/RoutingSessionInfo;

    move-result-object v0

    .line 724
    .local v0, "translatedSessionInfo":Landroid/media/RoutingSessionInfo;
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 725
    :try_start_0
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mSourceSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 726
    iput-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->mTranslatedSessionInfo:Landroid/media/RoutingSessionInfo;

    .line 727
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$SystemMediaSessionRecord;->this$0:Lcom/android/server/media/SystemMediaRoute2Provider2;

    invoke-static {v1, v0}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$monSessionOverrideUpdated(Lcom/android/server/media/SystemMediaRoute2Provider2;Landroid/media/RoutingSessionInfo;)V

    .line 729
    return-void

    .line 727
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
