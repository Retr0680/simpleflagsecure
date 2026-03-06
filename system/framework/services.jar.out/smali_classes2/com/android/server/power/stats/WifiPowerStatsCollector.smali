.class public Lcom/android/server/power/stats/WifiPowerStatsCollector;
.super Lcom/android/server/power/stats/PowerStatsCollector;
.source "WifiPowerStatsCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;,
        Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;,
        Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;,
        Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiPowerStatsCollector"

.field private static final WIFI_ACTIVITY_REQUEST_TIMEOUT:J = 0x4e20L


# instance fields
.field private mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

.field private mDeviceStats:[J

.field private final mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

.field private mIsInitialized:Z

.field private mLastNetworkStats:Landroid/net/NetworkStats;

.field private final mLastScanTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWifiActiveDuration:J

.field private mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

.field private volatile mNetworkStatsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

.field private mPowerReportingSupported:Z

.field private mPowerStats:Lcom/android/internal/os/PowerStats;

.field private final mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

.field private volatile mWifiManager:Landroid/net/wifi/WifiManager;

.field private volatile mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;


# direct methods
.method public static synthetic $r8$lambda$wa61-wcxIfhXx-hiP5ddUIUF1Vk(Lcom/android/server/power/stats/WifiPowerStatsCollector;IJJ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->lambda$collectWifiScanTime$0(IJJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;)V
    .locals 6
    .param p1, "injector"    # Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;
    .param p2, "observer"    # Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    .line 97
    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 98
    const/16 v0, 0xb

    invoke-static {v0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getClock()Lcom/android/internal/os/Clock;

    move-result-object v5

    .line 97
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/stats/PowerStatsCollector;-><init>(Landroid/os/Handler;JLcom/android/server/power/stats/PowerStatsUidResolver;Lcom/android/internal/os/Clock;)V

    .line 92
    new-instance v1, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector-IA;)V

    iput-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 93
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    .line 101
    iput-object p1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    .line 102
    iput-object p2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    .line 103
    return-void
.end method

.method private collectNetworkStats()Landroid/net/NetworkStats;
    .locals 20

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStats;

    .line 233
    .local v1, "networkStats":Landroid/net/NetworkStats;
    if-nez v1, :cond_0

    .line 234
    const/4 v2, 0x0

    return-object v2

    .line 237
    :cond_0
    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    iget-object v3, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    invoke-interface {v2, v1, v3}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v2

    .line 238
    .local v2, "delta":Landroid/net/NetworkStats;
    iput-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastNetworkStats:Landroid/net/NetworkStats;

    .line 239
    invoke-virtual {v2}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStats$Entry;

    .line 240
    .local v4, "uidDelta":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v5

    .line 241
    .local v5, "rxBytes":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v7

    .line 242
    .local v7, "txBytes":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getRxPackets()J

    move-result-wide v9

    .line 243
    .local v9, "rxPackets":J
    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getTxPackets()J

    move-result-wide v11

    .line 244
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

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    iget-object v13, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v4}, Landroid/net/NetworkStats$Entry;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v13

    .line 249
    .local v13, "uid":I
    iget-object v14, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v14, v14, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [J

    .line 250
    .local v14, "stats":[J
    if-nez v14, :cond_2

    .line 251
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v15}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v15

    new-array v14, v15, [J

    .line 252
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v15, v15, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v15, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v15, v14, v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 254
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v15, v14, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 255
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v15, v14, v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 256
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v15, v14, v11, v12}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxPackets([JJ)V

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object v15, v3

    goto :goto_1

    .line 258
    :cond_2
    iget-object v15, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    move-object/from16 v16, v1

    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    .local v16, "networkStats":Landroid/net/NetworkStats;
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v1, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxBytes([J)J

    move-result-wide v17

    move-object/from16 v19, v2

    .end local v2    # "delta":Landroid/net/NetworkStats;
    .local v19, "delta":Landroid/net/NetworkStats;
    add-long v1, v17, v5

    invoke-virtual {v15, v14, v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxBytes([JJ)V

    .line 259
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxBytes([J)J

    move-result-wide v17

    move-object v15, v3

    add-long v2, v17, v7

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxBytes([JJ)V

    .line 260
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidRxPackets([J)J

    move-result-wide v2

    add-long/2addr v2, v9

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidRxPackets([JJ)V

    .line 261
    iget-object v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v2, v14}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidTxPackets([J)J

    move-result-wide v2

    add-long/2addr v2, v11

    invoke-virtual {v1, v14, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidTxPackets([JJ)V

    .line 263
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

    .line 264
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

.method private collectWifiActivityInfo()Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 23

    .line 178
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    move-object v2, v0

    .line 179
    .local v2, "immediateFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/os/connectivity/WifiActivityEnergyInfo;>;"
    iget-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v3, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    .line 180
    new-instance v4, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 179
    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 184
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v0, "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    goto :goto_0

    .line 186
    .end local v0    # "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiPowerStatsCollector"

    const-string v4, "Cannot acquire WifiActivityEnergyInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    const/4 v3, 0x0

    move-object v0, v3

    .line 191
    .local v0, "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :goto_0
    if-nez v0, :cond_0

    .line 192
    const/4 v3, 0x0

    return-object v3

    .line 195
    :cond_0
    const-wide/16 v3, 0x0

    .line 196
    .local v3, "rxDuration":J
    const-wide/16 v5, 0x0

    .line 197
    .local v5, "txDuration":J
    const-wide/16 v7, 0x0

    .line 198
    .local v7, "scanDuration":J
    const-wide/16 v9, 0x0

    .line 200
    .local v9, "idleDuration":J
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    if-eqz v11, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 202
    invoke-virtual {v13}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    sub-long v3, v11, v13

    .line 203
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 204
    invoke-virtual {v13}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v13

    sub-long v5, v11, v13

    .line 205
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 206
    invoke-virtual {v13}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v13

    sub-long v7, v11, v13

    .line 207
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v11

    iget-object v13, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 208
    invoke-virtual {v13}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    sub-long v9, v11, v13

    .line 211
    :cond_1
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v12, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v11, v12, v3, v4}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceRxTime([JJ)V

    .line 212
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v12, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v11, v12, v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceTxTime([JJ)V

    .line 213
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v12, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v11, v12, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceScanTime([JJ)V

    .line 214
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v12, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    invoke-virtual {v11, v12, v9, v10}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceIdleTime([JJ)V

    .line 216
    iget-object v11, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    add-long v12, v3, v5

    add-long/2addr v12, v7

    add-long/2addr v12, v9

    iput-wide v12, v11, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 218
    iput-object v0, v1, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActivityInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 220
    new-instance v11, Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v12

    .line 221
    invoke-virtual {v0}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v14

    move-wide/from16 v17, v3

    move-wide v15, v5

    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    .end local v3    # "rxDuration":J
    .end local v5    # "txDuration":J
    .end local v7    # "scanDuration":J
    .end local v9    # "idleDuration":J
    .local v15, "txDuration":J
    .local v17, "rxDuration":J
    .local v19, "scanDuration":J
    .local v21, "idleDuration":J
    invoke-direct/range {v11 .. v22}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    .line 220
    return-object v11
.end method

.method private collectWifiActivityStats()V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;->getWifiActiveDuration()J

    move-result-wide v0

    .line 226
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-wide v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceActiveTime([JJ)V

    .line 227
    iput-wide v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastWifiActiveDuration:J

    .line 228
    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iput-wide v0, v2, Lcom/android/internal/os/PowerStats;->durationMs:J

    .line 229
    return-void
.end method

.method private collectWifiScanTime()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 269
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iput-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 270
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    new-instance v1, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector;)V

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;->retrieveWifiScanTimes(Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever$Callback;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v2, v2, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceBasicScanTime([JJ)V

    .line 301
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v2, v2, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setDeviceBatchedScanTime([JJ)V

    .line 302
    return-void
.end method

.method private ensureInitialized()Z
    .locals 9

    .line 117
    iget-boolean v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    return v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 122
    return v2

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiNetworkStatsSupplier()Ljava/util/function/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mNetworkStatsSupplier:Ljava/util/function/Supplier;

    .line 127
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v0}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getWifiStatsRetriever()Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiStatsRetriever:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    .line 128
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    nop

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 129
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    .line 131
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;-><init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    .line 134
    new-instance v0, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v2, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->getEnergyConsumerCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    invoke-direct {v0, v2, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 137
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    move-object v8, v0

    .line 138
    .local v8, "extras":Landroid/os/PersistableBundle;
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->toExtras(Landroid/os/PersistableBundle;)V

    .line 139
    new-instance v2, Lcom/android/internal/os/PowerStats$Descriptor;

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 140
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getDeviceStatsArrayLength()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 141
    invoke-virtual {v0}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v7

    const/16 v3, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/PowerStats$Descriptor;-><init>(IILandroid/util/SparseArray;IILandroid/os/PersistableBundle;)V

    .line 143
    .local v2, "powerStatsDescriptor":Lcom/android/internal/os/PowerStats$Descriptor;
    new-instance v0, Lcom/android/internal/os/PowerStats;

    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerStats;-><init>(Lcom/android/internal/os/PowerStats$Descriptor;)V

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    .line 144
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->stats:[J

    iput-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    .line 146
    iput-boolean v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mIsInitialized:Z

    .line 147
    return v1
.end method

.method private synthetic lambda$collectWifiScanTime$0(IJJ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "scanTimeMs"    # J
    .param p4, "batchScanTimeMs"    # J

    .line 271
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    .line 272
    .local v0, "lastScanTimes":Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;
    if-nez v0, :cond_0

    .line 273
    new-instance v1, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;-><init>(Lcom/android/server/power/stats/WifiPowerStatsCollector-IA;)V

    move-object v0, v1

    .line 274
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_0
    iget-wide v1, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 278
    .local v1, "scanTimeDelta":J
    iget-wide v5, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    sub-long v5, p4, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 280
    .local v5, "batchScanTimeDelta":J
    cmp-long v7, v1, v3

    if-nez v7, :cond_1

    cmp-long v3, v5, v3

    if-eqz v3, :cond_3

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    add-long/2addr v7, v1

    iput-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 282
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mScanTimes:Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;

    iget-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    add-long/2addr v7, v5

    iput-wide v7, v3, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 283
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p1

    .line 284
    iget-object v3, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v3, v3, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 285
    .local v3, "stats":[J
    if-nez v3, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v4}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v4

    new-array v3, v4, [J

    .line 287
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, v4, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v4, v3, v1, v2}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidScanTime([JJ)V

    .line 289
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidBatchScanTime([JJ)V

    goto :goto_0

    .line 291
    :cond_2
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidScanTime([J)J

    move-result-wide v7

    add-long/2addr v7, v1

    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidScanTime([JJ)V

    .line 292
    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    iget-object v7, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    .line 293
    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->getUidBatchedScanTime([J)J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 292
    invoke-virtual {v4, v3, v7, v8}, Lcom/android/server/power/stats/format/WifiPowerStatsLayout;->setUidBatchScanTime([JJ)V

    .line 296
    .end local v3    # "stats":[J
    :cond_3
    :goto_0
    iput-wide p2, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->basicScanTimeMs:J

    .line 297
    iput-wide p4, v0, Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiScanTimes;->batchedScanTimeMs:J

    .line 298
    return-void
.end method


# virtual methods
.method public collectStats()Lcom/android/internal/os/PowerStats;
    .locals 8

    .line 152
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->ensureInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mDeviceStats:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 157
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v0, v0, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    iget-boolean v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerReportingSupported:Z

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiActivityInfo()Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiActivityStats()V

    move-object v2, v0

    .line 165
    .end local v0    # "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    .local v2, "activityInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :goto_0
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectNetworkStats()Landroid/net/NetworkStats;

    move-result-object v3

    .line 166
    .local v3, "networkStatsDeltas":Landroid/net/NetworkStats;
    invoke-direct {p0}, Lcom/android/server/power/stats/WifiPowerStatsCollector;->collectWifiScanTime()V

    .line 168
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mConsumedEnergyHelper:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;

    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    iget-object v4, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLayout:Lcom/android/server/power/stats/format/WifiPowerStatsLayout;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z

    .line 170
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    if-eqz v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mObserver:Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    .line 172
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v6

    .line 171
    invoke-interface/range {v1 .. v7}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Observer;->onWifiPowerStatsRetrieved(Landroid/os/connectivity/WifiActivityEnergyInfo;Landroid/net/NetworkStats;JJ)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mPowerStats:Lcom/android/internal/os/PowerStats;

    return-object v0
.end method

.method protected onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 306
    invoke-super {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    .line 307
    iget-object v0, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mLastScanTimes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 308
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 107
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/server/power/stats/WifiPowerStatsCollector;->mInjector:Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;

    invoke-interface {v1}, Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 109
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    nop

    nop

    if-eqz v1, :cond_0

    .line 110
    const-string v2, "android.hardware.wifi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 109
    :goto_0
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 111
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_1

    .line 112
    :cond_1
    invoke-super {p0, v0}, Lcom/android/server/power/stats/PowerStatsCollector;->setEnabled(Z)V

    .line 114
    :goto_1
    return-void
.end method
