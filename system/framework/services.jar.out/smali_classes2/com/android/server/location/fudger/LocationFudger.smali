.class public Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "LocationFudger.java"


# static fields
.field private static final APPROXIMATE_METERS_PER_DEGREE_AT_EQUATOR:I = 0x1b198

.field private static final CHANGE_PER_INTERVAL:D = 0.03

.field private static final MAX_LATITUDE:D = 89.999990990991

.field private static final MIN_ACCURACY_M:F = 200.0f

.field private static final NEW_WEIGHT:D = 0.03

.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field private static final OLD_WEIGHT:D

.field private static final S2_CELL_AVG_EDGE_PER_LEVEL:[F


# instance fields
.field private final mAccuracyM:F

.field private mCachedCoarseLocation:Landroid/location/Location;

.field private mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field private mCachedFineLocation:Landroid/location/Location;

.field private mCachedFineLocationResult:Landroid/location/LocationResult;

.field private final mClock:Ljava/time/Clock;

.field private mLatitudeOffsetM:D

.field private mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

.field private mLongitudeOffsetM:D

.field private mNextUpdateRealtimeMs:J

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    .line 78
    const/16 v0, 0xf

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x4610108f
        0x4590108f
        0x451010a4
        0x449010a4
        0x441010a4    # 576.26f
        0x439010a4    # 288.13f
        0x43100f5c    # 144.06f
        0x42900f5c    # 72.03f
        0x4210147b    # 36.02f
        0x41a651ec    # 20.79f
        0x41100000    # 9.0f
        0x40a1999a    # 5.05f
        0x40100000    # 2.25f
        0x3f90a3d7    # 1.13f
        0x3f11eb85    # 0.57f
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "accuracyM"    # F

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    move-result-object v0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(FLjava/time/Clock;Ljava/util/Random;)V

    .line 108
    return-void
.end method

.method constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 1
    .param p1, "accuracyM"    # F
    .param p2, "clock"    # Ljava/time/Clock;
    .param p3, "random"    # Ljava/util/Random;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 112
    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 113
    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    .line 114
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    .line 117
    return-void
.end method

.method private static metersToDegreesLatitude(D)D
    .locals 2
    .param p0, "distance"    # D

    .line 326
    const-wide v0, 0x40fb198000000000L    # 111000.0

    div-double v0, p0, v0

    return-wide v0
.end method

.method private static metersToDegreesLongitude(DD)D
    .locals 4
    .param p0, "distance"    # D
    .param p2, "lat"    # D

    .line 333
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 337
    .local v0, "cosLat":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 338
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    return-wide v2

    .line 340
    :cond_0
    const-wide v2, 0x40fb198000000000L    # 111000.0

    div-double v2, p0, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method private nextRandomOffset()D
    .locals 6

    .line 301
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    iget v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private snapToGrid(DD)[D
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 260
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 261
    .local v0, "center":[D
    iget v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v1

    .line 262
    .local v1, "latGranularity":D
    div-double v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 263
    iget v3, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    float-to-double v3, v3

    invoke-static {v3, v4, p1, p2}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v3

    .line 264
    .local v3, "lonGranularity":D
    div-double v5, p3, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    mul-double/2addr v5, v3

    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v5

    const/4 v7, 0x1

    aput-wide v5, v0, v7

    .line 265
    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private declared-synchronized updateOffsets()V
    .locals 8

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 291
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 292
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 296
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    mul-double/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 297
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    .line 289
    .end local v0    # "now":J
    .end local p0    # "this":Lcom/android/server/location/fudger/LocationFudger;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private static wrapLatitude(D)D
    .locals 2
    .param p0, "lat"    # D

    .line 305
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 306
    const-wide p0, 0x40567fffda36a676L    # 89.999990990991

    .line 308
    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 309
    const-wide p0, -0x3fa9800025c9598aL    # -89.999990990991

    .line 311
    :cond_1
    return-wide p0
.end method

.method private static wrapLongitude(D)D
    .locals 4
    .param p0, "lon"    # D

    .line 315
    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    .line 316
    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p0, v2

    if-ltz v2, :cond_0

    .line 317
    sub-double/2addr p0, v0

    .line 319
    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    .line 320
    add-double/2addr p0, v0

    .line 322
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 14
    .param p1, "fine"    # Landroid/location/Location;

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    if-ne p1, v0, :cond_0

    move-object v8, p0

    goto/16 :goto_2

    .line 175
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 178
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->updateOffsets()V

    .line 180
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v1, v0

    .line 183
    .local v1, "coarse":Landroid/location/Location;
    invoke-virtual {v1}, Landroid/location/Location;->removeBearing()V

    .line 184
    invoke-virtual {v1}, Landroid/location/Location;->removeSpeed()V

    .line 185
    invoke-virtual {v1}, Landroid/location/Location;->removeAltitude()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 188
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v2

    .line 189
    .local v2, "latitude":D
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v4

    .line 192
    .local v4, "longitude":D
    iget-wide v6, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    invoke-static {v6, v7, v2, v3}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLongitude(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    move-result-wide v6

    add-double v11, v4, v6

    .line 193
    .end local v4    # "longitude":D
    .local v11, "longitude":D
    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    invoke-static {v4, v5}, Lcom/android/server/location/fudger/LocationFudger;->metersToDegreesLatitude(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    move-result-wide v4

    add-double v9, v2, v4

    .line 197
    .end local v2    # "latitude":D
    .local v9, "latitude":D
    const/4 v2, 0x0

    .line 198
    .local v2, "cacheCopy":Lcom/android/server/location/fudger/LocationFudgerCache;
    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    move-object v2, v0

    .line 200
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 208
    .local v0, "coarsened":[D
    iget v3, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 209
    .local v3, "accuracy":F
    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/android/server/location/fudger/LocationFudgerCache;->hasDefaultValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/server/location/fudger/LocationFudgerCache;->getCoarseningLevel(DD)I

    move-result v13

    .line 214
    .local v13, "level":I
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/location/fudger/LocationFudger;->snapToCenterOfS2Cell(DDI)[D

    move-result-object v0

    .line 215
    invoke-virtual {p0, v13}, Lcom/android/server/location/fudger/LocationFudger;->getS2CellApproximateEdge(I)F

    move-result v3

    .line 216
    .end local v13    # "level":I
    move v4, v3

    move-object v3, v0

    goto :goto_0

    .line 219
    :cond_1
    move-object v8, p0

    invoke-virtual {v2}, Lcom/android/server/location/fudger/LocationFudgerCache;->onDefaultCoarseningLevelNotSet()V

    .line 221
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object v0

    move v4, v3

    move-object v3, v0

    goto :goto_0

    .line 209
    :cond_2
    move-object v8, p0

    .line 225
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/server/location/fudger/LocationFudger;->snapToGrid(DD)[D

    move-result-object v0

    move v4, v3

    move-object v3, v0

    .line 228
    .end local v0    # "coarsened":[D
    .local v3, "coarsened":[D
    .local v4, "accuracy":F
    :goto_0
    const/4 v0, 0x0

    aget-wide v5, v3, v0

    invoke-virtual {v1, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 229
    const/4 v0, 0x1

    aget-wide v5, v3, v0

    invoke-virtual {v1, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 230
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 232
    monitor-enter p0

    .line 233
    :try_start_2
    iput-object p1, v8, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 234
    iput-object v1, v8, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 235
    monitor-exit p0

    .line 237
    return-object v1

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 200
    .end local v3    # "coarsened":[D
    .end local v4    # "accuracy":F
    :catchall_1
    move-exception v0

    move-object v8, p0

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 175
    .end local v1    # "coarse":Landroid/location/Location;
    .end local v2    # "cacheCopy":Lcom/android/server/location/fudger/LocationFudgerCache;
    .end local v9    # "latitude":D
    .end local v11    # "longitude":D
    :catchall_3
    move-exception v0

    move-object v8, p0

    goto :goto_3

    .line 172
    :cond_3
    move-object v8, p0

    .line 173
    :goto_2
    :try_start_4
    iget-object v0, v8, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    monitor-exit p0

    return-object v0

    .line 175
    :catchall_4
    move-exception v0

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .locals 2
    .param p1, "fineLocationResult"    # Landroid/location/LocationResult;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    if-ne p1, v0, :cond_1

    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    new-instance v0, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/fudger/LocationFudger$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/fudger/LocationFudger;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object v0

    .line 152
    .local v0, "coarseLocationResult":Landroid/location/LocationResult;
    monitor-enter p0

    .line 153
    :try_start_1
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocationResult:Landroid/location/LocationResult;

    .line 154
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    .line 155
    monitor-exit p0

    .line 157
    return-object v0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 148
    .end local v0    # "coarseLocationResult":Landroid/location/LocationResult;
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 146
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocationResult:Landroid/location/LocationResult;

    monitor-exit p0

    return-object v0

    .line 148
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected getS2CellApproximateEdge(I)F
    .locals 2
    .param p1, "level"    # I

    .line 245
    if-gez p1, :cond_0

    .line 246
    const/4 p1, 0x0

    goto :goto_0

    .line 247
    :cond_0
    sget-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 248
    sget-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 250
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/location/fudger/LocationFudger;->S2_CELL_AVG_EDGE_PER_LEVEL:[F

    aget v0, v0, p1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public resetOffsets()V
    .locals 4

    .line 133
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 134
    invoke-direct {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 135
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    .line 136
    return-void
.end method

.method public setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .locals 1
    .param p1, "cache"    # Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mLocationFudgerCache:Lcom/android/server/location/fudger/LocationFudgerCache;

    .line 126
    monitor-exit p0

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected snapToCenterOfS2Cell(DDI)[D
    .locals 5
    .param p1, "latDegrees"    # D
    .param p3, "lngDegrees"    # D
    .param p5, "level"    # I

    .line 270
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->fromLatLngDegrees(DD)J

    move-result-wide v0

    .line 271
    .local v0, "leafCell":J
    invoke-static {v0, v1, p5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v2

    .line 272
    .local v2, "coarsenedCell":J
    const/4 v4, 0x2

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    .line 273
    .local v4, "center":[D
    invoke-static {v2, v3, v4}, Lcom/android/internal/location/geometry/S2CellIdUtils;->toLatLngDegrees(J[D)[D

    .line 274
    return-object v4

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
