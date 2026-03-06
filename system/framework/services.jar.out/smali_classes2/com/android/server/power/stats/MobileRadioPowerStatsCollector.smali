.class public Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "MobileRadioPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;,
        Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;
    }
.end annotation


# static fields
.field protected static final MOBILE_RADIO_POWER_STATE_UPDATE_FREQ_MS:J = 0x927c0L

.field private static final MODEM_ACTIVITY_REQUEST_TIMEOUT:J = 0x4e20L

.field static final NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerStatsCollector"


# instance fields
.field private mCallDurationSupplier:Ljava/util/function/LongSupplier;

.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private mDeviceStats:[J

.field private final mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mLastCallDuration:J

.field private mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

.field private mLastNetworkStats:Landroid/net/NetworkStats;

.field private mLastScanDuration:J

.field private mLastUpdateTimestampMillis:J

.field private mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

.field private volatile mNetworkStatsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private mScanDurationSupplier:Ljava/util/function/LongSupplier;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;
    .param p2, "observer"    # Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    .line 112
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 113
    const/16 v0, 0x8

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 115
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    .line 116
    invoke-interface {p1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 112
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 117
    iput-object p1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    .line 118
    iput-object p2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    .line 119
    return-void
.end method

.method private collectModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 15

    .line 210
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 211
    return-object v1

    .line 214
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v2, v0

    .line 215
    .local v2, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/telephony/ModemActivityInfo;>;"
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v4, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;

    invoke-direct {v4, p0, v2}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$1;-><init>(Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, v3, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 231
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v0, "activityInfo":Landroid/telephony/ModemActivityInfo;
    goto :goto_0

    .line 233
    .end local v0    # "activityInfo":Landroid/telephony/ModemActivityInfo;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MobileRadioPowerStatsCollector"

    const-string v4, "Cannot acquire ModemActivityInfo"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v3, 0x0

    move-object v0, v3

    .line 238
    .local v0, "activityInfo":Landroid/telephony/ModemActivityInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 239
    return-object v1

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    if-nez v1, :cond_2

    .line 243
    invoke-virtual {v0, v0}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v1

    goto :goto_1

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    invoke-virtual {v1, v0}, Landroid/telephony/ModemActivityInfo;->getDelta(Landroid/telephony/ModemActivityInfo;)Landroid/telephony/ModemActivityInfo;

    move-result-object v1

    :goto_1
    nop

    .line 246
    .local v1, "deltaInfo":Landroid/telephony/ModemActivityInfo;
    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastModemActivityInfo:Landroid/telephony/ModemActivityInfo;

    .line 248
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTimestampMillis()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->setTimestamp(J)V

    .line 249
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSleepTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceSleepTime([JJ)V

    .line 250
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v4, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getIdleTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 252
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v3}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v3

    .line 253
    .local v3, "callDuration":J
    iget-wide v5, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3

    .line 254
    iget-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    iget-wide v7, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    sub-long v7, v3, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceCallTime([JJ)V

    .line 256
    :cond_3
    iput-wide v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastCallDuration:J

    .line 258
    iget-object v5, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v5}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v5

    .line 259
    .local v5, "scanDuration":J
    iget-wide v7, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    cmp-long v7, v5, v7

    if-ltz v7, :cond_4

    .line 260
    iget-object v7, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v8, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    iget-wide v9, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    sub-long v9, v5, v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setDeviceScanTime([JJ)V

    .line 262
    :cond_4
    iput-wide v5, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastScanDuration:J

    .line 264
    iget-object v7, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v9, v7, Lcom/android/internal/os/PowerStats;->stateStats:Landroid/util/SparseArray;

    .line 265
    .local v9, "stateStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 267
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getSpecificInfoLength()I

    move-result v7

    if-nez v7, :cond_5

    .line 268
    iget-object v8, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 271
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis()J

    move-result-wide v12

    .line 272
    invoke-virtual {v1}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis()[I

    move-result-object v14

    .line 268
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    goto :goto_5

    .line 274
    :cond_5
    const/4 v7, 0x0

    move v10, v7

    .local v10, "rat":I
    :goto_2
    sget-object v7, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->NETWORK_TYPES:[I

    array-length v7, v7

    if-ge v10, v7, :cond_8

    .line 275
    const/4 v7, 0x6

    if-ne v10, v7, :cond_7

    .line 276
    const/4 v7, 0x0

    move v11, v7

    .local v11, "freq":I
    :goto_3
    const/4 v7, 0x5

    if-ge v11, v7, :cond_6

    .line 277
    iget-object v8, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 278
    invoke-virtual {v1, v10, v11}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(II)J

    move-result-wide v12

    .line 279
    invoke-virtual {v1, v10, v11}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(II)[I

    move-result-object v14

    .line 277
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    .line 276
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    nop

    .end local v11    # "freq":I
    goto :goto_4

    .line 282
    :cond_7
    iget-object v8, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 284
    invoke-virtual {v1, v10}, Landroid/telephony/ModemActivityInfo;->getReceiveTimeMillis(I)J

    move-result-wide v12

    .line 285
    invoke-virtual {v1, v10}, Landroid/telephony/ModemActivityInfo;->getTransmitTimeMillis(I)[I

    move-result-object v14

    .line 282
    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->addRxTxTimesForRat(Landroid/util/SparseArray;IIJ[I)V

    .line 274
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 289
    .end local v10    # "rat":I
    :cond_8
    :goto_5
    return-object v1
.end method

.method private collectNetworkStats()Landroid/net/NetworkStats;
    .locals 20

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    .line 294
    .local v1, "networkStats":Landroid/net/NetworkStats;
    if-nez v1, :cond_0

    .line 295
    const/4 v2, 0x0

    return-object v2

    .line 298
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    iget-object v3, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v2, v1, v3}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 299
    .local v2, "delta":Landroid/net/NetworkStats;
    iput-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 300
    invoke-virtual {v2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    .line 301
    .local v4, "uidDelta":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    .line 302
    .local v5, "rxBytes":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v7

    .line 303
    .local v7, "txBytes":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    .line 304
    .local v9, "rxPackets":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v11

    .line 305
    .local v11, "txPackets":J
    const-wide/16 v13, 0x0

    cmp-long v15, v5, v13

    if-nez v15, :cond_1

    cmp-long v15, v7, v13

    if-nez v15, :cond_1

    cmp-long v15, v9, v13

    if-nez v15, :cond_1

    cmp-long v13, v11, v13

    if-nez v13, :cond_1

    .line 306
    goto :goto_0

    .line 309
    :cond_1
    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v13

    .line 310
    .local v13, "uid":I
    iget-object v14, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v14, v14, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 311
    .local v14, "stats":[J
    if-nez v14, :cond_2

    .line 312
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v15

    new-array v14, v15, [J

    .line 313
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v15, v14, v5, v6}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 315
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v15, v14, v7, v8}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 316
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v15, v14, v9, v10}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 317
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v15, v14, v11, v12}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxPackets([JJ)V

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object v15, v3

    goto :goto_1

    .line 319
    :cond_2
    iget-object v15, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    move-object/from16 v16, v1

    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .local v16, "networkStats":Landroid/net/NetworkStats;
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v1, v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v17

    move-object/from16 v19, v2

    .end local v2    # "delta":Landroid/net/NetworkStats;
    .local v19, "delta":Landroid/net/NetworkStats;
    add-long v1, v17, v5

    invoke-virtual {v15, v14, v1, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 320
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v17

    move-object v15, v3

    add-long v2, v17, v7

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 321
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 322
    iget-object v1, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v2

    add-long/2addr v2, v11

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->setUidTxPackets([JJ)V

    .line 324
    .end local v4    # "uidDelta":Landroid/net/NetworkStats$Entry;
    .end local v5    # "rxBytes":J
    .end local v7    # "txBytes":J
    .end local v9    # "rxPackets":J
    .end local v11    # "txPackets":J
    .end local v13    # "uid":I
    .end local v14    # "stats":[J
    :goto_1
    move-object v3, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 325
    .end local v16    # "networkStats":Landroid/net/NetworkStats;
    .end local v19    # "delta":Landroid/net/NetworkStats;
    .restart local v1    # "networkStats":Landroid/net/NetworkStats;
    .restart local v2    # "delta":Landroid/net/NetworkStats;
    :cond_3
    move-object/from16 v19, v2

    .end local v2    # "delta":Landroid/net/NetworkStats;
    .restart local v19    # "delta":Landroid/net/NetworkStats;
    return-object v19
.end method

.method private ensureInitialized()Z
    .locals 11

    .line 133
    iget-boolean v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 134
    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 142
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getMobileNetworkStatsSupplier()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    .line 143
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getCallDurationSupplier()Ljava/util/function/LongSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mCallDurationSupplier:Ljava/util/function/LongSupplier;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPhoneSignalScanDurationSupplier()Ljava/util/function/LongSupplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mScanDurationSupplier:Ljava/util/function/LongSupplier;

    .line 146
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 149
    new-instance v0, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v7, v0

    .line 152
    .local v7, "stateLabels":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "rat":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_8

    .line 153
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 154
    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v1

    .line 155
    .local v2, "freqCount":I
    :goto_1
    const/4 v4, 0x0

    .local v4, "freq":I
    :goto_2
    if-ge v4, v2, :cond_7

    .line 156
    invoke-static {v0, v4}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->makeStateKey(II)I

    move-result v5

    .line 157
    .local v5, "stateKey":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_3

    .line 159
    sget-object v8, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_3
    if-eqz v4, :cond_5

    .line 162
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 163
    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_4
    invoke-static {v4}, Landroid/telephony/ServiceState;->frequencyRangeToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    const-string/jumbo v8, "other"

    :goto_3
    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    .end local v5    # "stateKey":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    nop

    .line 152
    .end local v2    # "freqCount":I
    .end local v4    # "freq":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    nop

    .line 171
    .end local v0    # "rat":I
    new-instance v10, Landroid/os/PersistableBundle;

    invoke-direct {v10}, Landroid/os/PersistableBundle;-><init>()V

    .line 172
    .local v10, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0, v10}, Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 173
    new-instance v4, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 174
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    .line 175
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getStateStatsArrayLength()I

    move-result v8

    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v9

    const/16 v5, 0x8

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 177
    .local v4, "powerStatsDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v4}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 178
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mDeviceStats:[J

    .line 180
    iput-boolean v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mIsInitialized:Z

    .line 181
    return v1
.end method

.method private setTimestamp(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .line 329
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    sub-long v1, p1, v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 330
    iput-wide p1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLastUpdateTimestampMillis:J

    .line 331
    return-void
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 10

    .line 186
    invoke-direct {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 191
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 193
    invoke-direct {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->collectModemActivityInfo()Landroid/telephony/ModemActivityInfo;

    move-result-object v4

    .line 194
    .local v4, "modemActivityDelta":Landroid/telephony/ModemActivityInfo;
    invoke-direct {p0}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->collectNetworkStats()Landroid/net/NetworkStats;

    move-result-object v5

    .line 196
    .local v5, "networkStatsDeltas":Landroid/net/NetworkStats;
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v6, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/MobileRadioPowerStatsLayout;

    invoke-virtual {v0, v3, v6}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 198
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-wide v6, v0, Lcom/android/internal/os/PowerStats;->durationMs:J

    cmp-long v0, v6, v1

    if-nez v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->setTimestamp(J)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    if-eqz v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v8

    .line 203
    invoke-interface/range {v3 .. v9}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Observer;->onMobileRadioPowerStatsRetrieved(Landroid/telephony/ModemActivityInfo;Landroid/net/NetworkStats;JJ)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 123
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;

    invoke-interface {v1}, Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    nop

    if-eqz v1, :cond_0

    .line 126
    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 125
    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 127
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 128
    :cond_1
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 130
    :goto_1
    return-void
.end method
