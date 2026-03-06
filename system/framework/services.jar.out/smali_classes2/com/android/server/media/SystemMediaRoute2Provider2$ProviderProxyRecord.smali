.class final Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
.super Ljava/lang/Record;
.source "SystemMediaRoute2Provider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/SystemMediaRoute2Provider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderProxyRecord"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "mProxy",
        "mSystemMediaRoutes",
        "mNewOriginalIdToSourceOriginalIdMap"
    }
    componentSignatures = {
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Map<",
                "Ljava/lang/String;",
                "Landroid/media/MediaRoute2Info;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Map<",
                "Ljava/lang/String;",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Lcom/android/server/media/MediaRoute2ProviderServiceProxy;,
        Ljava/util/Map;,
        Ljava/util/Map;
    }
.end annotation


# instance fields
.field private final mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

.field private final mSystemMediaRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method static bridge synthetic -$$Nest$fgetmNewOriginalIdToSourceOriginalIdMap(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxy(Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;)Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "mProxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mProxy",
            "mSystemMediaRoutes",
            "mNewOriginalIdToSourceOriginalIdMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 521
    .local p2, "mSystemMediaRoutes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    .local p3, "mNewOriginalIdToSourceOriginalIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iput-object p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    return-void
.end method

.method public static createFor(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;
    .locals 8
    .param p0, "serviceProxy"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 584
    invoke-virtual {p0}, Lcom/android/server/media/MediaRoute2Provider;->getProviderInfo()Landroid/media/MediaRoute2ProviderInfo;

    move-result-object v0

    .line 585
    .local v0, "providerInfo":Landroid/media/MediaRoute2ProviderInfo;
    if-nez v0, :cond_0

    .line 586
    const/4 v1, 0x0

    return-object v1

    .line 588
    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 589
    .local v1, "routesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/media/MediaRoute2Info;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 590
    .local v2, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaRoute2Info;

    .line 591
    .local v4, "sourceRoute":Landroid/media/MediaRoute2Info;
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->supportsSystemMediaRouting()Z

    move-result v5

    if-nez v5, :cond_1

    .line 592
    goto :goto_0

    .line 594
    :cond_1
    nop

    .line 595
    invoke-virtual {v0}, Landroid/media/MediaRoute2ProviderInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/media/SystemMediaRoute2Provider2;->-$$Nest$smasUniqueSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "id":Ljava/lang/String;
    new-instance v6, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v6, v5, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 597
    .local v6, "newRouteBuilder":Landroid/media/MediaRoute2Info$Builder;
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 600
    const-string v7, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v6, v7}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 602
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getSupportedRoutingTypes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 605
    const-string v7, "android.media.route.feature.LIVE_VIDEO"

    invoke-virtual {v6, v7}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 607
    :cond_3
    invoke-virtual {v6}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getOriginalId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    .end local v4    # "sourceRoute":Landroid/media/MediaRoute2Info;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "newRouteBuilder":Landroid/media/MediaRoute2Info$Builder;
    goto :goto_0

    .line 610
    :cond_4
    new-instance v3, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    .line 612
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 613
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;-><init>(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;Ljava/util/Map;Ljava/util/Map;)V

    .line 610
    return-object v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 521
    invoke-direct {p0, p1}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->$record$equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getRouteByOriginalId(Ljava/lang/String;)Landroid/media/MediaRoute2Info;
    .locals 1
    .param p1, "routeOriginalId"    # Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRoute2Info;

    return-object v0
.end method

.method public getRoutesStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public mNewOriginalIdToSourceOriginalIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    return-object v0
.end method

.method public mProxy()Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    return-object v0
.end method

.method public mSystemMediaRoutes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mSystemMediaRoutes:Ljava/util/Map;

    return-object v0
.end method

.method public releaseSession(JLjava/lang/String;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "originalSessionId"    # Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->releaseSession(JLjava/lang/String;)V

    .line 576
    return-void
.end method

.method public requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;)V
    .locals 9
    .param p1, "requestId"    # J
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "originalRouteId"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;

    .line 555
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mNewOriginalIdToSourceOriginalIdMap:Ljava/util/Map;

    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 556
    .local v6, "targetRouteId":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed system media session creation due to lack of mapping for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MR2SystemProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v0, 0x3

    invoke-interface {p6, p1, p2, v0}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;->onRequestFailed(JI)V

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v8, p6

    goto :goto_0

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->mProxy:Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v8, p6

    .end local p1    # "requestId":J
    .end local p3    # "uid":I
    .end local p4    # "packageName":Ljava/lang/String;
    .end local p6    # "callback":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;
    .local v2, "requestId":J
    .local v4, "uid":I
    .local v5, "packageName":Ljava/lang/String;
    .local v8, "callback":Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->requestCreateSystemMediaSession(JILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/media/MediaRoute2ProviderServiceProxy$SystemMediaSessionCallback;)V

    .line 572
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 521
    invoke-direct {p0}, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lcom/android/server/media/SystemMediaRoute2Provider2$ProviderProxyRecord;

    const-string/jumbo v2, "mProxy;mSystemMediaRoutes;mNewOriginalIdToSourceOriginalIdMap"

    invoke-static {v0, v1, v2}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
