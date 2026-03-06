.class final Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;
.super Landroid/hardware/tv/mediaquality/IMediaQualityCallback$Stub;
.source "MediaQualityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/quality/MediaQualityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HalAmbientBacklightCallback"
.end annotation


# instance fields
.field private mAmbientBacklightClientPackageName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/media/quality/MediaQualityService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/quality/MediaQualityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2002
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-direct {p0}, Landroid/hardware/tv/mediaquality/IMediaQualityCallback$Stub;-><init>()V

    .line 2004
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/quality/MediaQualityService;Lcom/android/server/media/quality/MediaQualityService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;-><init>(Lcom/android/server/media/quality/MediaQualityService;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 2125
    :try_start_0
    const-string v0, "ac19fd80413145bec55462874afb34c24a47a12b"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2130
    const/4 v0, 0x1

    return v0
.end method

.method handleAmbientBacklightEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .line 2041
    new-instance v0, Landroid/media/quality/AmbientBacklightEvent;

    .line 2043
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 2044
    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    .line 2045
    .local v0, "event":Landroid/media/quality/AmbientBacklightEvent;
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 2046
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v2}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    .local v3, "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :try_start_1
    iget-object v4, v3, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v4, v0}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    goto :goto_2

    .line 2053
    .end local v3    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 2049
    .restart local v3    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :catch_0
    move-exception v4

    nop

    .line 2050
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "MediaQualityService"

    const-string v6, "Deliver ambient backlight enabled event failed"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    .end local v3    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_1

    .line 2053
    :cond_1
    monitor-exit v1

    .line 2054
    return-void

    .line 2053
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method handleAmbientBacklightInterrupted()V
    .locals 6

    .line 2018
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 2019
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2020
    const-string v1, "MediaQualityService"

    const-string v2, "Invalid package name in interrupted event"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    monitor-exit v0

    return-void

    .line 2037
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2023
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v1}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    .line 2025
    .local v1, "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    if-nez v1, :cond_1

    .line 2026
    const-string v2, "MediaQualityService"

    const-string v3, "Callback record not found for ambient backlight"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    monitor-exit v0

    return-void

    .line 2029
    :cond_1
    new-instance v2, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    .local v2, "event":Landroid/media/quality/AmbientBacklightEvent;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v3, v2}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2036
    goto :goto_0

    .line 2034
    :catch_0
    move-exception v3

    nop

    .line 2035
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "MediaQualityService"

    const-string v5, "Deliver ambient backlight interrupted event failed"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2037
    .end local v1    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    .end local v2    # "event":Landroid/media/quality/AmbientBacklightEvent;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 2038
    return-void

    .line 2037
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V
    .locals 10
    .param p1, "halMetadata"    # Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    .line 2059
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmContext(Lcom/android/server/media/quality/MediaQualityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v1, v1, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->uid:I

    .line 2060
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 2061
    .local v3, "halPackageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    const-string v0, "MediaQualityService"

    const-string v1, "Invalid package name in metadata event"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    return-void

    .line 2066
    :cond_0
    iget-object v1, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->zonesColors:[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;

    .line 2067
    .local v1, "zonesColorsUnion":[Landroid/hardware/tv/mediaquality/AmbientBacklightColorFormat;
    array-length v0, v1

    new-array v9, v0, [I

    .line 2069
    .local v9, "zonesColorsInt":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2070
    aget-object v2, v1, v0

    const/4 v2, 0x0

    aput v2, v9, v0

    .line 2069
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2073
    .end local v0    # "i":I
    new-instance v2, Landroid/media/quality/AmbientBacklightMetadata;

    iget-byte v4, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->compressAlgorithm:B

    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget-byte v5, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->source:B

    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v6, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->colorFormat:I

    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v7, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->hZonesNumber:I

    iget-object v0, p1, Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;->settings:Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;

    iget v8, v0, Landroid/hardware/tv/mediaquality/AmbientBacklightSettings;->vZonesNumber:I

    invoke-direct/range {v2 .. v9}, Landroid/media/quality/AmbientBacklightMetadata;-><init>(Ljava/lang/String;IIIII[I)V

    .line 2082
    .local v2, "metadata":Landroid/media/quality/AmbientBacklightMetadata;
    new-instance v0, Landroid/media/quality/AmbientBacklightEvent;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2}, Landroid/media/quality/AmbientBacklightEvent;-><init>(ILandroid/media/quality/AmbientBacklightMetadata;)V

    move-object v4, v0

    .line 2086
    .local v4, "event":Landroid/media/quality/AmbientBacklightEvent;
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v5

    monitor-enter v5

    .line 2087
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->this$0:Lcom/android/server/media/quality/MediaQualityService;

    invoke-static {v0}, Lcom/android/server/media/quality/MediaQualityService;->-$$Nest$fgetmCallbackRecords(Lcom/android/server/media/quality/MediaQualityService;)Ljava/util/Map;

    move-result-object v0

    .line 2088
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;

    move-object v6, v0

    .line 2089
    .local v6, "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    if-nez v6, :cond_2

    .line 2090
    const-string v0, "MediaQualityService"

    const-string v7, "Callback record not found for ambient backlight metadata"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2099
    .end local v6    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2095
    .restart local v6    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :cond_2
    :try_start_1
    iget-object v0, v6, Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;->mCallback:Landroid/media/quality/IAmbientBacklightCallback;

    invoke-interface {v0, v4}, Landroid/media/quality/IAmbientBacklightCallback;->onAmbientBacklightEvent(Landroid/media/quality/AmbientBacklightEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2098
    goto :goto_1

    .line 2096
    :catch_0
    move-exception v0

    nop

    .line 2097
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v7, "MediaQualityService"

    const-string v8, "Deliver ambient backlight metadata event failed"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2099
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "record":Lcom/android/server/media/quality/MediaQualityService$AmbientBacklightCallbackRecord;
    :goto_1
    monitor-exit v5

    .line 2100
    return-void

    .line 2099
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public notifyAmbientBacklightEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;)V
    .locals 3
    .param p1, "halEvent"    # Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;

    .line 2105
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2106
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2108
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getEnabled()Z

    move-result v1

    .line 2109
    .local v1, "enabled":Z
    if-eqz v1, :cond_0

    .line 2110
    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    goto :goto_0

    .line 2120
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 2112
    .restart local v1    # "enabled":Z
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightEnabled(Z)V

    .line 2114
    .end local v1    # "enabled":Z
    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getTag()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 2116
    invoke-virtual {p1}, Landroid/hardware/tv/mediaquality/AmbientBacklightEvent;->getMetadata()Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightMetadataEvent(Landroid/hardware/tv/mediaquality/AmbientBacklightMetadata;)V

    goto :goto_1

    .line 2118
    :cond_2
    const-string v1, "MediaQualityService"

    const-string v2, "Invalid event type in ambient backlight event"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :goto_1
    monitor-exit v0

    .line 2121
    return-void

    .line 2120
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAmbientBacklightClientPackageName(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2008
    iget-object v0, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2009
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2010
    monitor-exit v0

    return-void

    .line 2014
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->handleAmbientBacklightInterrupted()V

    .line 2013
    iput-object p1, p0, Lcom/android/server/media/quality/MediaQualityService$HalAmbientBacklightCallback;->mAmbientBacklightClientPackageName:Ljava/lang/String;

    .line 2014
    monitor-exit v0

    .line 2015
    return-void

    .line 2014
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
