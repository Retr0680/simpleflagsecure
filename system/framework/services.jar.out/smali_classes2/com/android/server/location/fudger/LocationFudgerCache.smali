.class public Lcom/android/server/location/fudger/LocationFudgerCache;
.super Ljava/lang/Object;
.source "LocationFudgerCache.java"


# static fields
.field protected static final LOG_DENSITY_BASED_LOCS_USED_RATE_LIMIT_MS:I = 0x927c0

.field protected static final MAX_CACHE_SIZE:I = 0x14

.field private static sTAG:Ljava/lang/String;


# instance fields
.field private final mCache:[J

.field private mCacheSize:I

.field private mDefaultCoarseningLevel:Ljava/lang/Integer;

.field private mLastQueryToLogDensityBasedLocsUsedMs:J

.field private final mLock:Ljava/lang/Object;

.field private final mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

.field private mPosInCache:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/location/fudger/LocationFudgerCache;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDefaultCoarseningLevel(Lcom/android/server/location/fudger/LocationFudgerCache;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/location/fudger/LocationFudgerCache;->sTAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-string v0, "LocationFudgerCache"

    sput-object v0, Lcom/android/server/location/fudger/LocationFudgerCache;->sTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    .line 55
    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    .line 61
    iput v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    .line 79
    const-wide/32 v0, -0x927c0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    .line 86
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    .line 87
    return-void
.end method

.method private asyncFetchDefaultCoarseningLevel()V
    .locals 2

    .line 204
    new-instance v0, Lcom/android/server/location/fudger/LocationFudgerCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudgerCache$1;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    .line 217
    .local v0, "callback":Landroid/location/provider/IS2LevelCallback;
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-virtual {v1, v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    .line 218
    return-void
.end method

.method private getDefaultCoarseningLevel()I
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 258
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 261
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 261
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private readCacheForLatLng(DD)Ljava/lang/Long;
    .locals 9
    .param p1, "latDegrees"    # D
    .param p3, "lngDegrees"    # D

    .line 165
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    if-ge v0, v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v5, p1

    move-wide v7, p3

    .end local p1    # "latDegrees":D
    .end local p3    # "lngDegrees":D
    .local v5, "latDegrees":D
    .local v7, "lngDegrees":D
    :try_start_1
    invoke-static/range {v3 .. v8}, Lcom/android/internal/location/geometry/S2CellIdUtils;->containsLatLngDegrees(JDD)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    aget-wide p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 171
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 166
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide p1, v5

    move-wide p3, v7

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    .end local v5    # "latDegrees":D
    .end local v7    # "lngDegrees":D
    .restart local p1    # "latDegrees":D
    .restart local p3    # "lngDegrees":D
    :catchall_1
    move-exception v0

    move-wide v5, p1

    move-wide v7, p3

    move-object p1, v0

    .end local p1    # "latDegrees":D
    .end local p3    # "lngDegrees":D
    .restart local v5    # "latDegrees":D
    .restart local v7    # "lngDegrees":D
    goto :goto_1

    .line 166
    .end local v5    # "latDegrees":D
    .end local v7    # "lngDegrees":D
    .restart local v0    # "i":I
    .restart local p1    # "latDegrees":D
    .restart local p3    # "lngDegrees":D
    :cond_1
    move-wide v5, p1

    move-wide v7, p3

    .line 171
    .end local v0    # "i":I
    .end local p1    # "latDegrees":D
    .end local p3    # "lngDegrees":D
    .restart local v5    # "latDegrees":D
    .restart local v7    # "lngDegrees":D
    monitor-exit v1

    .line 172
    const/4 p1, 0x0

    return-object p1

    .line 171
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private refreshCache(DD)V
    .locals 10
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    .local v0, "startTime":J
    new-instance v2, Lcom/android/server/location/fudger/LocationFudgerCache$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/location/fudger/LocationFudgerCache$2;-><init>(Lcom/android/server/location/fudger/LocationFudgerCache;J)V

    move-object v9, v2

    .line 246
    .local v9, "callback":Landroid/location/provider/IS2CellIdsCallback;
    iget-object v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPopulationDensityProvider:Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    const/16 v8, 0x13

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "latitude":D
    .end local p3    # "longitude":D
    .local v4, "latitude":D
    .local v6, "longitude":D
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V

    .line 248
    return-void
.end method


# virtual methods
.method public addToCache(J)V
    .locals 2
    .param p1, "s2CellId"    # J

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/fudger/LocationFudgerCache;->addToCache([J)V

    .line 178
    return-void
.end method

.method public addToCache([J)V
    .locals 8
    .param p1, "s2CellIds"    # [J

    .line 186
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    array-length v1, p1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 189
    .local v1, "end":I
    iget v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    add-int/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCacheSize:I

    .line 192
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mCache:[J

    iget v5, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    aget-wide v6, p1, v3

    aput-wide v6, v4, v5

    .line 194
    iget v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    add-int/lit8 v4, v4, 0x1

    rem-int/2addr v4, v2

    iput v4, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mPosInCache:I

    .line 192
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 196
    .end local v1    # "end":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 192
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    :cond_0
    nop

    .line 196
    .end local v1    # "end":I
    .end local v3    # "i":I
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCoarseningLevel(DD)I
    .locals 7
    .param p1, "latitudeDegrees"    # D
    .param p3, "longitudeDegrees"    # D

    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/fudger/LocationFudgerCache;->readCacheForLatLng(DD)Ljava/lang/Long;

    move-result-object v0

    .line 120
    .local v0, "s2CellId":Ljava/lang/Long;
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->getDefaultCoarseningLevel()I

    move-result v6

    .line 121
    .local v6, "defaultLevel":I
    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/fudger/LocationFudgerCache;->refreshCache(DD)V

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    .line 130
    return v6

    .line 132
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    .line 136
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result v1

    return v1
.end method

.method public hasDefaultValue()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mDefaultCoarseningLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected logDensityBasedLocsUsed(JZZI)Z
    .locals 4
    .param p1, "nowMs"    # J
    .param p3, "skippedNoDefault"    # Z
    .param p4, "isCacheHit"    # Z
    .param p5, "defaultCoarseningLevel"    # I

    .line 146
    iget-wide v0, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    iput-wide p1, p0, Lcom/android/server/location/fudger/LocationFudgerCache;->mLastQueryToLogDensityBasedLocsUsedMs:J

    .line 152
    const/16 v0, 0x3eb

    invoke-static {v0, p3, p4, p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public onDefaultCoarseningLevelNotSet()V
    .locals 7

    .line 93
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudgerCache;->asyncFetchDefaultCoarseningLevel()V

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/fudger/LocationFudgerCache;->logDensityBasedLocsUsed(JZZI)Z

    .line 100
    return-void
.end method
